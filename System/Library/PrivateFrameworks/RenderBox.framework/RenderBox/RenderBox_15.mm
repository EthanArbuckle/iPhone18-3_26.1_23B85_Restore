void sub_195DC1C84(_Unwind_Exception *a1)
{
  *(v1 + 240) = 0;
  *(v1 + 244) = 0;
  _Unwind_Resume(a1);
}

void *RB::GlassHighlightEffect::encode(RB::GlassHighlightEffect *this, RB::Encoder *a2)
{
  RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::Fill::Color::encode(this, a2);
  result = RB::ProtobufEncoder::end_length_delimited(a2);
  if (COERCE_FLOAT(*(this + 2)) == 0.0)
  {
    v5 = HIDWORD(*(this + 2));
  }

  else
  {
    v14 = *(this + 2);
    RB::ProtobufEncoder::encode_varint(a2, 0x15uLL);
    result = RB::ProtobufEncoder::encode_fixed32(a2, v14);
    v5 = *(this + 5);
  }

  if (*&v5 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x1DuLL);
    result = RB::ProtobufEncoder::encode_fixed32(a2, v5);
  }

  v6 = *(this + 6);
  if (*&v6 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x25uLL);
    result = RB::ProtobufEncoder::encode_fixed32(a2, v6);
  }

  v7 = *(this + 7);
  if (*&v7 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x2DuLL);
    result = RB::ProtobufEncoder::encode_fixed32(a2, v7);
  }

  v8 = *(this + 8);
  if (*&v8 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x35uLL);
    result = RB::ProtobufEncoder::encode_fixed32(a2, v8);
  }

  v9 = *(this + 9);
  if (*&v9 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x3DuLL);
    result = RB::ProtobufEncoder::encode_fixed32(a2, v9);
  }

  v10 = *(this + 10);
  if (*&v10 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x45uLL);
    result = RB::ProtobufEncoder::encode_fixed32(a2, v10);
  }

  v11 = *(this + 11);
  if (*&v11 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x4DuLL);
    result = RB::ProtobufEncoder::encode_fixed32(a2, v11);
  }

  v12 = *(this + 48);
  if (v12 != 3)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x50uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, v12);
  }

  v13 = *(this + 49);
  if (v13)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x58uLL);

    return RB::ProtobufEncoder::encode_varint(a2, v13);
  }

  return result;
}

unint64_t RB::GlassHighlightEffect::decode(RB::GlassHighlightEffect *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) <= 5)
      {
        if (v6 <= 2)
        {
          if (v6 == 1)
          {
            if ((v5 & 7) == 2)
            {
              RB::ProtobufDecoder::begin_message(a2);
              RB::Fill::Color::decode(this, a2);
              RB::ProtobufDecoder::end_message(a2);
            }

            else
            {
              *(a2 + 56) = 1;
              *a2 = *(a2 + 1);
            }

            goto LABEL_31;
          }

          if (v6 != 2)
          {
            goto LABEL_30;
          }

          *(this + 4) = RB::ProtobufDecoder::float_field(a2, v5);
        }

        else
        {
          switch(v6)
          {
            case 3:
              *(this + 5) = RB::ProtobufDecoder::float_field(a2, v5);
              break;
            case 4:
              *(this + 6) = RB::ProtobufDecoder::float_field(a2, v5);
              break;
            case 5:
              *(this + 7) = RB::ProtobufDecoder::float_field(a2, v5);
              break;
            default:
              goto LABEL_30;
          }
        }
      }

      else if (v6 > 8)
      {
        switch(v6)
        {
          case 9:
            *(this + 11) = RB::ProtobufDecoder::float_field(a2, v5);
            break;
          case 0xA:
            *(this + 48) = RB::ProtobufDecoder::uint_field(a2, v5);
            break;
          case 0xB:
            v7 = RB::ProtobufDecoder::uint_field(a2, v5);
            if (v7 <= 4)
            {
              *(this + 49) = v7;
            }

            break;
          default:
LABEL_30:
            RB::ProtobufDecoder::skip_field(a2, v5);
            break;
        }
      }

      else
      {
        switch(v6)
        {
          case 6:
            *(this + 8) = RB::ProtobufDecoder::float_field(a2, v5);
            break;
          case 7:
            *(this + 9) = RB::ProtobufDecoder::float_field(a2, v5);
            break;
          case 8:
            *(this + 10) = RB::ProtobufDecoder::float_field(a2, v5);
            break;
          default:
            goto LABEL_30;
        }
      }

LABEL_31:
      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void RB::GlassHighlightEffect::print(RB::GlassHighlightEffect *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "glass-highlight");

  RB::SexpString::pop(a2);
}

uint64_t RB::GlassDisplacementEffect::can_mix(float32x2_t *this, float32x2_t *a2)
{
  if (this[3].u8[4] != a2[3].u8[4] || this[3].u8[5] != a2[3].u8[5])
  {
    return 0;
  }

  v2 = vmvn_s8(vceq_f32(*this, *a2));
  if ((vpmax_u32(v2, v2).u32[0] & 0x80000000) == 0 && this[1].f32[0] == a2[1].f32[0] && this[1].f32[1] == a2[1].f32[1] && this[2].f32[0] == a2[2].f32[0] && this[2].f32[1] == a2[2].f32[1] && this[3].f32[0] == a2[3].f32[0])
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

float RB::GlassDisplacementEffect::mix(RB::GlassDisplacementEffect *this, const RB::GlassDisplacementEffect *a2, double a3)
{
  *this = vmla_f32(*this, *&vdupq_lane_s32(*&a3, 0), vsub_f32(*a2, *this));
  *(this + 8) = vmlaq_n_f32(*(this + 8), vsubq_f32(*(a2 + 8), *(this + 8)), *&a3);
  result = *(this + 6) + ((*(a2 + 6) - *(this + 6)) * *&a3);
  *(this + 6) = result;
  return result;
}

int32x2_t *RB::GlassDisplacementEffect::render(int32x2_t *result, uint64_t a2, uint64_t a3, float32x2_t *a4, RB::Texture *a5, int a6, float64x2_t *a7, float32x2_t *a8, char a9, unsigned int a10)
{
  if (a5)
  {
    v16 = result;
    if (RB::may_discard_alpha(a10))
    {
      RB::Bounds::Bounds(&v53, *a4, a4[1], v17, v18);
    }

    else
    {
      v19 = *(a3 + 168);
      v20 = *(a3 + 176);
      v53 = v19;
      v54 = v20;
    }

    _D1 = vdup_lane_s32(*v16, 0);
    _D1.i32[0] = v16[1].i32[0];
    *(&v50 + 4) = vrev64_s32(vsub_f32(_D1, *v16));
    _S2 = v16[2].i32[0];
    v23 = *&v16[2].i32[1];
    v24 = v16[3].i32[0];
    HIDWORD(v50) = v16[1].i32[1];
    LODWORD(v51) = v24;
    __asm { FCVT            H1, S2 }

    WORD4(v51) = _D1.i16[0];
    _KR00_8 = __sincosf_stret(v23);
    __asm { FCVT            H1, S1 }

    *(&v51 + 2) = -_H1;
    __asm { FCVT            H0, S0 }

    *(&v51 + 3) = -_H0;
    RB::RenderFrame::alloc_buffer_region(*(*a3 + 16), 0x64, 4uLL, 0, &v55);
    v31 = v55;
    if (v55)
    {
      v32 = *(v55 + 7) + v56.i64[0];
      v33 = v49[2];
      v34 = v49[0];
      *(v32 + 16) = v49[1];
      *(v32 + 32) = v33;
      v35 = v51;
      v36 = v50;
      v37 = v49[3];
      *(v32 + 96) = v52;
      *(v32 + 64) = v36;
      *(v32 + 80) = v35;
      *(v32 + 48) = v37;
      *v32 = v34;
    }

    else
    {
      v55 = 0;
      v56 = 0uLL;
    }

    *(a3 + 192) = RB::RenderFrame::buffer_id(*(*a3 + 16), v31);
    *(a3 + 196) = vmovn_s64(v56);
    v38 = v16[3].i8[4] & 3;
    if ((*(a5 + 77) & 8) != 0)
    {
      v38 = 0;
    }

    v39 = v16[3].u8[5];
    v40 = v38 | (32 * (v16[3].i8[5] != 0));
    if (v16[3].i8[5])
    {
      v41 = v39 < 3;
      if (v39 == 4 || v39 == 2)
      {
        v43 = 128;
      }

      else
      {
        v43 = 0;
      }

      v40 |= v43 | (v41 << 6);
    }

    if (*(a3 + 132) == 2)
    {
      v44 = 131108;
    }

    else
    {
      v44 = 36;
    }

    v45 = (v40 << 6) & 0xFFFFF8FF;
    if (a9)
    {
      v46 = 66560;
    }

    else
    {
      v46 = 1024;
    }

    v47 = v46 | v44 | v45;
    if (a6)
    {
      v48 = 2;
    }

    else
    {
      v48 = MTLPixelFormatA8Unorm;
    }

    RB::RenderPass::set_texture(a3, 0, a5, v48);
    result = RB::RenderPass::draw_indexed_primitives(a3, (v47 | ((a10 & 0x3F) << 32)), 4, **(*a3 + 16) + 136, 4uLL, 1uLL, v53, v54);
    *(a3 + 240) = 0;
    *(a3 + 244) = 0;
  }

  return result;
}

void sub_195DC23EC(_Unwind_Exception *a1)
{
  *(v1 + 240) = 0;
  *(v1 + 244) = 0;
  _Unwind_Resume(a1);
}

int *RB::GlassDisplacementEffect::encode(int *this, RB::Encoder *a2)
{
  v3 = this;
  if (COERCE_FLOAT(*this) == 0.0)
  {
    v4 = HIDWORD(*this);
  }

  else
  {
    v12 = *this;
    RB::ProtobufEncoder::encode_varint(a2, 0xDuLL);
    this = RB::ProtobufEncoder::encode_fixed32(a2, v12);
    v4 = v3[1];
  }

  if (*&v4 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x15uLL);
    this = RB::ProtobufEncoder::encode_fixed32(a2, v4);
  }

  v5 = v3[2];
  if (*&v5 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x1DuLL);
    this = RB::ProtobufEncoder::encode_fixed32(a2, v5);
  }

  v6 = v3[3];
  if (*&v6 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x25uLL);
    this = RB::ProtobufEncoder::encode_fixed32(a2, v6);
  }

  v7 = v3[4];
  if (*&v7 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x2DuLL);
    this = RB::ProtobufEncoder::encode_fixed32(a2, v7);
  }

  v8 = v3[5];
  if (*&v8 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x35uLL);
    this = RB::ProtobufEncoder::encode_fixed32(a2, v8);
  }

  v9 = v3[6];
  if (*&v9 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x3DuLL);
    this = RB::ProtobufEncoder::encode_fixed32(a2, v9);
  }

  v10 = *(v3 + 28);
  if (v10 != 3)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x40uLL);
    this = RB::ProtobufEncoder::encode_varint(a2, v10);
  }

  v11 = *(v3 + 29);
  if (v11)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x48uLL);

    return RB::ProtobufEncoder::encode_varint(a2, v11);
  }

  return this;
}

unint64_t RB::GlassDisplacementEffect::decode(RB::GlassDisplacementEffect *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) <= 4)
      {
        if (v6 > 2)
        {
          if (v6 == 3)
          {
            *(this + 2) = RB::ProtobufDecoder::float_field(a2, v5);
          }

          else
          {
            if (v6 != 4)
            {
              goto LABEL_25;
            }

            *(this + 3) = RB::ProtobufDecoder::float_field(a2, v5);
          }
        }

        else if (v6 == 1)
        {
          *this = RB::ProtobufDecoder::float_field(a2, v5);
        }

        else
        {
          if (v6 != 2)
          {
            goto LABEL_25;
          }

          *(this + 1) = RB::ProtobufDecoder::float_field(a2, v5);
        }
      }

      else if (v6 <= 6)
      {
        if (v6 == 5)
        {
          *(this + 4) = RB::ProtobufDecoder::float_field(a2, v5);
        }

        else
        {
          if (v6 != 6)
          {
            goto LABEL_25;
          }

          *(this + 5) = RB::ProtobufDecoder::float_field(a2, v5);
        }
      }

      else
      {
        switch(v6)
        {
          case 7:
            *(this + 6) = RB::ProtobufDecoder::float_field(a2, v5);
            break;
          case 8:
            *(this + 28) = RB::ProtobufDecoder::uint_field(a2, v5);
            break;
          case 9:
            v7 = RB::ProtobufDecoder::uint_field(a2, v5);
            if (v7 <= 4)
            {
              *(this + 29) = v7;
            }

            break;
          default:
LABEL_25:
            RB::ProtobufDecoder::skip_field(a2, v5);
            break;
        }
      }

      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void RB::GlassDisplacementEffect::print(RB::GlassDisplacementEffect *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "glass-displacement");

  RB::SexpString::pop(a2);
}

void sub_195DC279C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::Gradient *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Gradient>,std::allocator<RB::XML::Value::Gradient>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::Gradient *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Gradient>,std::allocator<RB::XML::Value::Gradient>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

unint64_t rb_color_component(unsigned int a1)
{
  if (a1 >= 7)
  {
    return 0;
  }

  else
  {
    return (0x4050302010000uLL >> (8 * a1)) & 7 | ((0x1010101010100uLL >> (8 * a1)) << 8);
  }
}

uint64_t rb_alpha_blend_mode(unsigned int a1)
{
  if (a1 > 3)
  {
    return 12;
  }

  else
  {
    return rb_alpha_blend_mode(RBAlphaBlendMode)::table[a1];
  }
}

uint64_t rb_alpha_blend_mode(int a1)
{
  if (a1 == 11)
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 15)
  {
    v2 = 3;
  }

  else
  {
    v2 = v1;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

uint64_t cg_line_cap(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return dword_195E44F48[a1];
  }
}

uint64_t rb_transition_method(Method a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return dword_195E44FBC[a1 - 1];
  }
}

unint64_t rb_shader_type(unsigned int a1)
{
  if (a1 >= 5)
  {
    v1 = 0;
  }

  else
  {
    v1 = a1;
  }

  return v1 | ((a1 < 5) << 32);
}

uint64_t rb_shader_type(uint64_t a1)
{
  if (a1 >= 5)
  {
    v1 = -1;
  }

  else
  {
    v1 = a1;
  }

  if ((a1 & 0x100000000) != 0)
  {
    return v1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

int32x2_t *RBGetCachedIOSurfaceTexture(uint64_t a1, IOSurfaceRef buffer, uint64_t a3, float64x2_t *a4, char a5)
{
  v9 = **(a1 + 16);
  ID = IOSurfaceGetID(buffer);
  v16 = 1;
  v17 = 0;
  result = RB::UntypedTable::lookup((v9 + 848), &ID, 0);
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

uint64_t RBMakeCachedIOSurfaceTexture(const RB::RenderParams *a1, IOSurfaceRef buffer, const RB::Fill::ImageData *a3, float64x2_t *a4, char a5)
{
  v10 = **(a1 + 2);
  ID = IOSurfaceGetID(buffer);
  v15 = 1;
  v16 = 0;
  v11 = RB::UntypedTable::lookup((v10 + 848), &ID, 0);
  if (!v11)
  {
    IOSurfaceGetWidth(buffer);
    IOSurfaceGetHeight(buffer);
    operator new();
  }

  return RB::TextureCache::prepare(v11, *(a1 + 2), buffer, &v13);
}

uint64_t RBInvalidateCachedIOSurface(RB::Device *a1, IOSurfaceRef buffer)
{
  ID = IOSurfaceGetID(buffer);
  v5 = 1;
  v6 = 0;
  return RB::Device::invalidate_texture_caches(a1, &ID);
}

RB::Device *RBInvalidateCachedMTLTexture(RB::Device *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = 2;
    v4 = 0;
    return RB::Device::invalidate_texture_caches(result, &v2);
  }

  return result;
}

BOOL RBProjectVersion(int a1, int a2, int a3)
{
  if ((atomic_load_explicit(&_MergedGlobals_4, memory_order_acquire) & 1) == 0)
  {
    v7 = a3;
    v5 = a2;
    v6 = a1;
    RBProjectVersion_cold_1();
    a2 = v5;
    a1 = v6;
    a3 = v7;
  }

  if (qword_1ED6D53C8 >= a1)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  if (qword_1ED6D53C8 == a1)
  {
    v3 = SHIDWORD(qword_1ED6D53C8) >= a2 ? 1 : -1;
    if (HIDWORD(qword_1ED6D53C8) == a2)
    {
      v3 = -1;
      if (dword_1ED6D53D0 >= a3)
      {
        v3 = 1;
      }

      if (dword_1ED6D53D0 == a3)
      {
        v3 = 0;
      }
    }
  }

  return (v3 & 0x80) == 0;
}

uint64_t RBProjectVersion::$_0::operator()()
{
  __endptr = 0;
  v0 = strtol("7.1.13", &__endptr, 10);
  if (*__endptr == 46)
  {
    v1 = strtol(__endptr + 1, &__endptr, 10) << 32;
    if (*__endptr == 46)
    {
      strtol(__endptr + 1, &__endptr, 10);
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 | v0;
}

BOOL RB::Animation::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    v2 = a1;
  }

  v3 = *(a1 + 32);
  v4 = *(a2 + 24);
  if (!v4)
  {
    v4 = a2;
  }

  if (v3 != *(a2 + 32))
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v5 = v3 - 1;
  do
  {
    v7 = *v2++;
    v6 = v7;
    v9 = *v4++;
    v8 = v9;
    v11 = v5-- != 0;
    result = v6 == v8;
  }

  while (v6 == v8 && v11);
  return result;
}

uint64_t RB::Animation::hash(RB::Animation *this)
{
  result = 2166136261;
  v3 = *(this + 8);
  if (v3)
  {
    if (*(this + 3))
    {
      this = *(this + 3);
    }

    do
    {
      v4 = *this;
      this = (this + 4);
      result = (16777619 * result) ^ v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

void *RB::Animation::encode(void *this, RB::Encoder *a2)
{
  if (*(this + 8))
  {
    v3 = this;
    v4 = 0;
    do
    {
      v5 = *(v3 + 24);
      if (!v5)
      {
        v5 = v3;
      }

      v6 = (v5 + 4 * v4);
      RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
      RB::ProtobufEncoder::begin_length_delimited(a2);
      v7 = *v6;
      RB::ProtobufEncoder::encode_varint(a2, 8uLL);
      RB::ProtobufEncoder::encode_varint(a2, v7);
      v9 = v6 + 1;
      v8 = *v6;
      if (v8 == 18)
      {
        v10 = *v9;
        if (v10)
        {
          RB::ProtobufEncoder::encode_varint(a2, 0x18uLL);
          RB::ProtobufEncoder::encode_varint(a2, v10);
          v11 = (2 * *v9) | 1;
        }

        else
        {
          v11 = 1;
        }

        v12 = v6 + 2;
      }

      else
      {
        v11 = RB::Animation::_term_args[v8];
        v12 = v6 + 1;
      }

      RB::ProtobufEncoder::packed_fixed32_field(a2, 2, v12, v11);
      this = RB::ProtobufEncoder::end_length_delimited(a2);
      v13 = *v6;
      if (v13 == 18)
      {
        v14 = 2 * *v9 + 2;
      }

      else
      {
        v14 = RB::Animation::_term_args[v13];
      }

      v4 += v14 + 1;
    }

    while (v4 < *(v3 + 32));
  }

  return this;
}

uint64_t RB::Animation::decode(RB::Animation *this, RB::Decoder *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      if ((v5 & 0x7FFFFFFF8) == 8)
      {
        if ((v5 & 7) == 2)
        {
          RB::ProtobufDecoder::begin_message(a2);
          v6 = 0;
          v7 = 0u;
          v8 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 8;
          while (1)
          {
            field = RB::ProtobufDecoder::next_field(a2);
            if (!field)
            {
              break;
            }

            v10 = field >> 3;
            if ((field >> 3) == 2)
            {
              v11 = RB::ProtobufDecoder::float_field(a2, field);
              v12 = v28;
              v13 = v28 + 1;
              if (v29 < v28 + 1)
              {
                RB::vector<unsigned int,8ul,unsigned long>::reserve_slow(v26, v13);
                v12 = v28;
                v13 = v28 + 1;
              }

              v14 = v27;
              if (!v27)
              {
                v14 = v26;
              }

              *&v14[4 * v12] = v11;
              v28 = v13;
            }

            else if (v10 == 3)
            {
              v6 = RB::ProtobufDecoder::uint_field(a2, field);
            }

            else if (v10 == 1)
            {
              v15 = RB::ProtobufDecoder::uint_field(a2, field);
              v8 = v15 < 0x13;
              if (v15 >= 0x13)
              {
                v7 = 0;
              }

              else
              {
                v7 = v15;
              }
            }

            else
            {
              RB::ProtobufDecoder::skip_field(a2, field);
            }
          }

          if (v8)
          {
            if (v7 == 18)
            {
              v16 = (2 * v6) | 1;
            }

            else
            {
              v16 = RB::Animation::_term_args[v7];
            }

            if (v28 == v16)
            {
              v17 = *(this + 8);
              if (*(this + 9) < v17 + 1)
              {
                RB::vector<RB::Animation::TermOrArg,6ul,unsigned int>::reserve_slow(this, v17 + 1);
                v17 = *(this + 8);
              }

              v18 = *(this + 3);
              if (!v18)
              {
                v18 = this;
              }

              *(v18 + v17) = v7;
              v19 = *(this + 8);
              v20 = v19 + 1;
              *(this + 8) = v19 + 1;
              if (v7 == 18)
              {
                if (*(this + 9) < (v19 + 2))
                {
                  RB::vector<RB::Animation::TermOrArg,6ul,unsigned int>::reserve_slow(this, v19 + 2);
                  v20 = *(this + 8);
                }

                v21 = *(this + 3);
                if (!v21)
                {
                  v21 = this;
                }

                *(v21 + v20) = v6;
                v20 = *(this + 8) + 1;
                *(this + 8) = v20;
              }

              if (v27)
              {
                v22 = v27;
              }

              else
              {
                v22 = v26;
              }

              if (v28)
              {
                v23 = 4 * v28;
                do
                {
                  v24 = *v22;
                  if (*(this + 9) < v20 + 1)
                  {
                    RB::vector<RB::Animation::TermOrArg,6ul,unsigned int>::reserve_slow(this, v20 + 1);
                    v20 = *(this + 8);
                  }

                  v25 = *(this + 3);
                  if (!v25)
                  {
                    v25 = this;
                  }

                  *(v25 + v20) = v24;
                  v20 = *(this + 8) + 1;
                  *(this + 8) = v20;
                  ++v22;
                  v23 -= 4;
                }

                while (v23);
              }
            }

            else
            {
              *(a2 + 56) = 1;
              *a2 = *(a2 + 1);
            }
          }

          if (v27)
          {
            free(v27);
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

      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_195DC32D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::Animation::xml_elements(uint64_t this, RB::XML::Document *a2)
{
  if (*(this + 32))
  {
    v3 = 0;
    while (2)
    {
      v4 = *(this + 24);
      if (!v4)
      {
        v4 = this;
      }

      v5 = (v4 + 4 * v3);
      v6 = *v5;
      v7 = "linear";
      switch(v6)
      {
        case 0:
          goto LABEL_20;
        case 1:
          v7 = "smoothstep";
          goto LABEL_20;
        case 2:
          v7 = "ease-in";
          goto LABEL_20;
        case 3:
          v7 = "ease-out";
          goto LABEL_20;
        case 4:
          v7 = "ease-in-ease-out";
          goto LABEL_20;
        case 5:
          v7 = "spring-0";
          goto LABEL_20;
        case 6:
          v7 = "spring-1";
          goto LABEL_20;
        case 7:
          v7 = "spring-2";
          goto LABEL_20;
        case 8:
          RB::XML::Document::push(a2, "bezier");
        case 9:
        case 10:
          RB::XML::Document::push(a2, "spring");
        case 11:
          RB::XML::Document::push(a2, "speed");
        case 12:
          v8 = a2;
          v7 = "delay";
          goto LABEL_21;
        case 13:
        case 14:
          RB::XML::Document::push(a2, "repeat");
        case 15:
          v7 = "circular-ease-in";
          goto LABEL_20;
        case 16:
          v7 = "circular-ease-out";
          goto LABEL_20;
        case 17:
          v7 = "circular-ease-in-ease-out";
LABEL_20:
          v8 = a2;
LABEL_21:
          RB::XML::Document::push(v8, v7);
        case 18:
          RB::XML::Document::push(a2, "sampled-function");
        default:
          if (v6 == 18)
          {
            v9 = 2 * v5[1] + 2;
          }

          else
          {
            v9 = RB::Animation::_term_args[v6];
          }

          v3 += v9 + 1;
          if (v3 >= *(this + 32))
          {
            return this;
          }

          continue;
      }
    }
  }

  return this;
}

void sub_195DC38E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

float RB::AnimationSequencer::eval_delay(float32x2_t *a1, unsigned int a2, double a3)
{
  if (a1->i32[0] == 1)
  {
    v9 = a1[1];
    v10 = vsub_f32(*&a3, v9);
    v11 = vmul_f32(v10, v10);
    v12 = vsub_f32(a1[2], v9);
    v13 = vmul_f32(v12, v12);
    a3 = COERCE_DOUBLE(vsqrt_f32(vadd_f32(vzip1_s32(v11, v13), vzip2_s32(v11, v13))));
  }

  else
  {
    v3 = 0.0;
    if (a1->i32[0])
    {
      goto LABEL_6;
    }

    v4 = a1[1];
    v5 = vsub_f32(*&a3, v4);
    v6 = vsub_f32(a1[2], v4);
    v7 = vmul_f32(v6, v5);
    v8 = vmul_f32(v6, v6);
    a3 = COERCE_DOUBLE(vadd_f32(vzip1_s32(v7, v8), vzip2_s32(v7, v8)));
  }

  LODWORD(v3) = vdiv_f32(*&a3, vdup_lane_s32(*&a3, 1)).u32[0];
LABEL_6:
  if (a2 <= 2)
  {
    v14 = 0.0;
    if (v3 >= 0.0)
    {
      v14 = v3;
    }

    if (v14 > 1.0)
    {
      v14 = 1.0;
    }

    *&a3 = a1[a2 + 3].f32[0] + (a1[a2 + 3].f32[1] * v14);
  }

  return *&a3;
}

void *RB::AnimationSequencer::encode(RB::AnimationSequencer *this, RB::Encoder *a2)
{
  v4 = *this;
  if (v4)
  {
    RB::ProtobufEncoder::encode_varint(a2, 8uLL);
    RB::ProtobufEncoder::encode_varint(a2, v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x10uLL);
    RB::ProtobufEncoder::encode_varint(a2, v5);
  }

  RB::ProtobufEncoder::float2_field(a2, 3, *(this + 1));
  RB::ProtobufEncoder::float2_field(a2, 4, *(this + 2));
  RB::ProtobufEncoder::encode_varint(a2, 0x2AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::AnimationSequencer::Effects::encode(this + 6, a2);
  RB::ProtobufEncoder::end_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x32uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::AnimationSequencer::Effects::encode(this + 8, a2);
  RB::ProtobufEncoder::end_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x3AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::AnimationSequencer::Effects::encode(this + 10, a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

unint64_t RB::AnimationSequencer::decode(RB::AnimationSequencer *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v6 = result;
    while (1)
    {
      v7 = v6 >> 3;
      if ((v6 >> 3) > 3)
      {
        break;
      }

      if (v7 == 1)
      {
        v9 = RB::ProtobufDecoder::uint_field(a2, v6);
        if (v9 <= 1)
        {
          *this = v9;
        }

        goto LABEL_25;
      }

      if (v7 == 2)
      {
        *(this + 1) = RB::ProtobufDecoder::uint_field(a2, v6);
        goto LABEL_25;
      }

      if (v7 != 3)
      {
        goto LABEL_19;
      }

      *(this + 1) = RB::ProtobufDecoder::float2_field(a2, v6, v5).n128_u64[0];
LABEL_25:
      result = RB::ProtobufDecoder::next_field(a2);
      v6 = result;
      if (!result)
      {
        return result;
      }
    }

    if (v7 > 5)
    {
      if (v7 == 6)
      {
        if ((v6 & 7) != 2)
        {
LABEL_27:
          *(a2 + 56) = 1;
          *a2 = *(a2 + 1);
          goto LABEL_25;
        }

        RB::ProtobufDecoder::begin_message(a2);
        v8 = (this + 32);
        goto LABEL_23;
      }

      if (v7 == 7)
      {
        if ((v6 & 7) != 2)
        {
          goto LABEL_27;
        }

        RB::ProtobufDecoder::begin_message(a2);
        v8 = (this + 40);
        goto LABEL_23;
      }
    }

    else
    {
      if (v7 == 4)
      {
        *(this + 2) = RB::ProtobufDecoder::float2_field(a2, v6, v5).n128_u64[0];
        goto LABEL_25;
      }

      if (v7 == 5)
      {
        if ((v6 & 7) != 2)
        {
          goto LABEL_27;
        }

        RB::ProtobufDecoder::begin_message(a2);
        v8 = (this + 24);
LABEL_23:
        RB::AnimationSequencer::Effects::decode(v8, a2);
        RB::ProtobufDecoder::end_message(a2);
        goto LABEL_25;
      }
    }

LABEL_19:
    RB::ProtobufDecoder::skip_field(a2, v6);
    goto LABEL_25;
  }

  return result;
}

int *RB::AnimationSequencer::Effects::encode(int *this, RB::Encoder *a2)
{
  v3 = this;
  v4 = *this;
  if (*this != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0xDuLL);
    this = RB::ProtobufEncoder::encode_fixed32(a2, v4);
  }

  v5 = v3[1];
  if (*&v5 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x15uLL);

    return RB::ProtobufEncoder::encode_fixed32(a2, v5);
  }

  return this;
}

unint64_t RB::AnimationSequencer::Effects::decode(RB::AnimationSequencer::Effects *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      if ((v5 >> 3) == 2)
      {
        *(this + 1) = RB::ProtobufDecoder::float_field(a2, v5);
      }

      else if ((v5 >> 3) == 1)
      {
        *this = RB::ProtobufDecoder::float_field(a2, v5);
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

BOOL RB::ProjectionMatrix::invert(RB::ProjectionMatrix *this)
{
  v2 = *(this + 2);
  v3 = *(this + 5);
  if (v2 == 0.0 && v3 == 0.0 && *(this + 8) == 1.0)
  {
    v4 = vcvtq_f64_f32(*(this + 12));
    v5 = vcvtq_f64_f32(*(this + 24));
    v32 = vcvtq_f64_f32(*this);
    v33 = v4;
    v34 = v5;
    result = RB::AffineTransform::invert(&v32);
    if (result)
    {
      v7 = v33;
      *this = vcvt_f32_f64(v32);
      *(this + 2) = 0;
      *(this + 12) = vcvt_f32_f64(v7);
      *(this + 5) = 0;
      *(this + 3) = vcvt_f32_f64(v34);
      *(this + 8) = 1065353216;
    }
  }

  else
  {
    v8 = *(this + 4);
    v9 = v3;
    v10 = *(this + 7);
    v11 = *(this + 8);
    v12 = -(v10 * v3 - v11 * v8);
    v13 = *(this + 3);
    v14 = *(this + 6);
    v15.f64[0] = -(v14 * v3 - v13 * v11);
    v16 = -(v14 * v8 - v13 * v10);
    v17 = *(this + 1);
    v18 = v2;
    v19 = *this;
    v20 = v16 * v18 - (v15.f64[0] * v17 - v12 * v19);
    if (v20 == 0.0)
    {
      return 0;
    }

    else
    {
      v21 = -(v17 * v13 - v19 * v8);
      v22.f64[0] = -(v13 * v18 - v19 * v9);
      v23 = -(v8 * v18 - v17 * v9);
      v24 = -(v19 * v10 - v17 * v14);
      v25 = -(v14 * v18 - v19 * v11);
      v26 = -(v17 * v11 - v10 * v18);
      v27 = 1.0 / v20 * v12;
      v28.f64[0] = -(1.0 / v20);
      *&v26 = v26 * (1.0 / v20);
      *this = v27;
      *(this + 1) = LODWORD(v26);
      *&v26 = 1.0 / v20 * v23;
      v15.f64[1] = v25;
      v22.f64[1] = 1.0 / v20;
      *(this + 2) = LODWORD(v26);
      v29.f64[0] = v28.f64[0];
      v29.f64[1] = 1.0 / v20;
      v28.f64[1] = v16;
      *(this + 12) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v15, v29)), vmulq_f64(v22, v28));
      v30 = v24 * (1.0 / v20);
      v31 = 1.0 / v20 * v21;
      *(this + 7) = v30;
      *(this + 8) = v31;
      return 1;
    }
  }

  return result;
}

float RB::operator*@<S0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>, int32x4_t a4@<Q0>, int32x4_t a5@<Q2>, int32x4_t a6@<Q4>, int32x4_t a7@<Q5>, int8x16_t a8@<Q7>)
{
  v8.i64[0] = *(a1 + 4);
  a7.i64[0] = *(a1 + 16);
  a5.i32[0] = *(a1 + 12);
  a4.i64[0] = *(a1 + 28);
  v9 = *(a1 + 24);
  a6.i64[0] = a2->i64[0];
  a8.i32[0] = a2->i32[3];
  *v10.f32 = vrev64_s32(*v8.f32);
  v10.i32[3] = vdup_lane_s32(*&a7, 0).i32[1];
  v10.i32[2] = v10.i32[0];
  v8.i64[1] = __PAIR64__(a7.u32[1], v8.u32[0]);
  v11 = *a1;
  v11.i32[1] = a5.i32[0];
  v12 = vzip1q_s32(v11, v11);
  v12.i32[2] = *a1;
  v13 = a2[1];
  v14.i64[0] = vzip2q_s32(v13, vuzp1q_s32(v13, v13)).u64[0];
  v15 = vextq_s8(v13, a8, 4uLL);
  v16 = v13;
  v17 = vmulq_f32(v13, vzip1q_s32(a4, a7));
  LODWORD(v18) = HIDWORD(a2[1].i64[0]);
  v13.i32[0] = v13.i32[3];
  v19 = vmulq_f32(v8, vextq_s8(v15, v13, 0xCuLL));
  v13.i64[0] = a2->i64[0];
  v13.i32[2] = a2->i32[2];
  v13.i32[3] = a2->i64[0];
  v14.i32[2] = a2[2].i32[0];
  v14.i32[3] = a8.i32[0];
  v16.i32[1] = v14.i32[2];
  v16.i32[2] = a8.i32[0];
  a7.i64[1] = a4.i64[0];
  v20 = v17;
  v20.i32[0] = v17.i32[3];
  v20.i32[3] = v17.i32[0];
  v21 = vmlaq_f32(v20, a7, v16);
  v22 = vuzp2q_s32(a6, vzip1q_s32(a6, a6));
  v23 = v22;
  v23.i32[1] = v13.i32[2];
  v23.i32[3] = v22.i32[0];
  *&a5.i32[1] = v9;
  *a3 = vmlaq_f32(vmlaq_f32(v19, v14, v10), v13, v12);
  a3[1] = vmlaq_f32(v21, vzip1q_s32(a5, a5), v23);
  *a4.i32 = (vmuls_lane_f32(v14.f32[2], *a4.i8, 1) + (v18 * *a4.i32)) + (v13.f32[2] * v9);
  a3[2].i32[0] = a4.i32[0];
  return *a4.i32;
}

float RB::operator*@<S0>(float64x2_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v5 = *a1;
  v4 = a1[1];
  v6 = vextq_s8(v4, v4, 8uLL);
  v7 = a1[2];
  v8 = *(a2 + 4);
  v9.f64[0] = *(a2 + 7);
  DWORD1(v3) = *(a2 + 4);
  v10 = vcvtq_f64_f32(*&v3);
  v11 = vcvtq_f64_f32(*(a2 + 8));
  v12.f64[0] = vmuld_lane_f64(a1[2].f64[1], v10, 1);
  v13 = vextq_s8(*a1, v4, 8uLL);
  v14 = vdupq_lane_s64(*&v10.f64[0], 0);
  v8.i32[1] = *(a2 + 5);
  v15 = vcvtq_f64_f32(v8);
  v16 = vmlaq_f64(vmulq_f64(vextq_s8(v5, v5, 8uLL), vzip1q_s64(vdupq_laneq_s64(v11, 1), v15)), v10, *a1);
  v5.f64[1] = a1[1].f64[1];
  v14.f64[0] = v15.f64[1];
  v17 = vmulq_f64(v4, v15);
  v18 = vmulq_f64(v7, v15);
  v15.f64[1] = v11.f64[1];
  v12.f64[1] = *(a2 + 6);
  v9.f64[1] = vmuld_n_f64(v7.f64[0], v10.f64[0]);
  *a3 = vcvt_hight_f32_f64(vcvt_f32_f64(v16), vmlaq_f64(vmulq_f64(v13, v14), v11, v5));
  *(a3 + 16) = vcvt_f32_f64(vmlaq_f64(v17, vextq_s8(v10, v11, 8uLL), v6));
  *(a3 + 24) = vrev64_s32(vcvt_f32_f64(vaddq_f64(vmlaq_f64(v12, v15, v7), v9)));
  result = v18.f64[1] + v7.f64[0] * v11.f64[0] + *(a2 + 8);
  *(a3 + 32) = result;
  return result;
}

float RB::operator*@<S0>(float *a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = a1[2];
  v5 = a2[1];
  v4 = a2[2];
  v6 = *a2;
  v7 = a1[5];
  v8 = a1[4];
  v9 = a1[3];
  v10 = a1[8];
  v11 = a1[7];
  v12 = a1[6];
  *a3 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v4, result), v5, a1[1]), *a2, *a1));
  *(a3 + 12) = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v4, v7), v5, v8), v6, v9));
  *(a3 + 24) = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v4, v10), v5, v11), v6, v12));
  *(a3 + 8) = result;
  *(a3 + 20) = v7;
  *(a3 + 32) = v10;
  return result;
}

uint64_t RB::operator*=(uint64_t a1, float32x4_t *a2, int32x4_t a3, double a4, int32x4_t a5, double a6, int32x4_t a7, int32x4_t a8, double a9, int8x16_t a10)
{
  RB::operator*(a1, a2, v13, a3, a5, a7, a8, a10);
  v11 = v13[1];
  *a1 = v13[0];
  *(a1 + 16) = v11;
  *(a1 + 32) = v14;
  return a1;
}

float RB::ProjectionMatrix::translate(RB::ProjectionMatrix *this, float a2, float a3)
{
  *(this + 3) = vmla_n_f32(vmla_n_f32(*(this + 24), *(this + 12), a3), *this, a2);
  result = (*(this + 8) + (*(this + 5) * a3)) + (*(this + 2) * a2);
  *(this + 8) = result;
  return result;
}

__n64 RB::ProjectionMatrix::translate_right(RB::ProjectionMatrix *this, __n64 result, float a3)
{
  result.n64_f32[1] = a3;
  *this = vmla_n_f32(*this, result.n64_u64[0], *(this + 2));
  *(this + 12) = vmla_n_f32(*(this + 12), result.n64_u64[0], *(this + 5));
  *(this + 3) = vmla_n_f32(*(this + 24), result.n64_u64[0], *(this + 8));
  return result;
}

float32x2_t RB::operator*(uint64_t a1, double _D0, float32x2_t a3)
{
  _S4 = *(a1 + 20);
  if (*(a1 + 8) == 0.0 && (_S4 == 0.0 ? (_ZF = *(a1 + 32) == 1.0) : (_ZF = 0), _ZF))
  {
    v46 = v3;
    v47 = v4;
    v7 = vcvtq_f64_f32(*(a1 + 12));
    v8 = vcvtq_f64_f32(*(a1 + 24));
    v45[0] = vcvtq_f64_f32(*a1);
    v45[1] = v7;
    v45[2] = v8;
    return RB::operator*(v45, *&_D0, a3);
  }

  else
  {
    __asm { FMLA            S7, S4, V0.S[1] }

    v14 = 1.0;
    v15 = 1.0;
    if (_S7 != 1.0)
    {
      if (_S7 <= 0.0)
      {
        v15 = INFINITY;
      }

      else
      {
        v16 = _S7;
        v17 = vrecpe_f32(LODWORD(_S7));
        v18 = vmul_f32(vrecps_f32(LODWORD(v16), v17), v17);
        LODWORD(v15) = vmul_f32(v18, vrecps_f32(LODWORD(v16), v18)).u32[0];
      }
    }

    _D7 = vadd_f32(a3.u32[0], *&_D0);
    __asm { FMLA            S16, S4, V7.S[1] }

    if (_S16 != 1.0)
    {
      if (_S16 <= 0.0)
      {
        v14 = INFINITY;
      }

      else
      {
        v21 = _S16;
        v22 = vrecpe_f32(LODWORD(_S16));
        v23 = vmul_f32(vrecps_f32(LODWORD(v21), v22), v22);
        LODWORD(v14) = vmul_f32(v23, vrecps_f32(LODWORD(v21), v23)).u32[0];
      }
    }

    _D17 = vadd_f32(a3, *&_D0);
    __asm { FMLA            S18, S4, V17.S[1] }

    v26 = 1.0;
    v27 = 1.0;
    if (_S18 != 1.0)
    {
      if (_S18 <= 0.0)
      {
        v27 = INFINITY;
      }

      else
      {
        v28 = _S18;
        v29 = vrecpe_f32(LODWORD(_S18));
        v30 = vmul_f32(vrecps_f32(LODWORD(v28), v29), v29);
        LODWORD(v27) = vmul_f32(v30, vrecps_f32(LODWORD(v28), v30)).u32[0];
      }
    }

    v31 = *a1;
    v32 = *(a1 + 12);
    v33 = *(a1 + 24);
    a3.i32[0] = 0;
    _D1 = vadd_f32(a3, *&_D0);
    __asm { FMLA            S5, S4, V1.S[1] }

    if (_S5 != 1.0)
    {
      if (_S5 <= 0.0)
      {
        v26 = INFINITY;
      }

      else
      {
        v36 = _S5;
        v37 = vrecpe_f32(LODWORD(_S5));
        v38 = vmul_f32(vrecps_f32(LODWORD(v36), v37), v37);
        LODWORD(v26) = vmul_f32(v38, vrecps_f32(LODWORD(v36), v38)).u32[0];
      }
    }

    v39 = vmul_n_f32(vmla_lane_f32(vmla_n_f32(v33, v31, _D17.f32[0]), v32, _D17, 1), v27);
    v40 = vmul_n_f32(vmla_lane_f32(vmla_n_f32(v33, v31, _D7.f32[0]), v32, _D7, 1), v14);
    v41 = vmul_n_f32(vmla_lane_f32(vmla_n_f32(v33, v31, *&_D0), v32, *&_D0, 1), v15);
    v42 = vmul_n_f32(vmla_lane_f32(vmla_n_f32(v33, v31, _D1.f32[0]), v32, _D1, 1), v26);
    v43 = vminnm_f32(vminnm_f32(v41, v40), vminnm_f32(v39, v42));
    v44 = vmaxnm_f32(vmaxnm_f32(v41, v40), vmaxnm_f32(v39, v42));

    *&result = RB::Rect::from_bounds(v43, v44);
  }

  return result;
}

uint64_t RB::unapply(float32x2_t *a1, float *a2)
{
  _S0 = a2[2];
  v3 = a2[3];
  _D1 = *a1;
  v5 = a2[1];
  __asm { FMLA            S6, S0, V1.S[1] }

  v12 = a2[4];
  v11 = a2[5];
  v13 = vmuls_lane_f32(v11, *a1, 1);
  v14 = ((_S6 * v3) + (-((v12 * _S0) - (v11 * v5)) * COERCE_FLOAT(*a1))) + ((v12 - v13) * *a2);
  if (v14 == 0.0)
  {
    return 0;
  }

  v16 = a2[7];
  v15 = a2[8];
  v17 = a2[6];
  v18 = -((v16 * v11) - (v15 * v12));
  v19 = v17 * (v13 - v12);
  v20 = v16 - (v15 * _D1.f32[1]);
  v21 = -((v20 * *a2) - ((-((v15 * v5) - (v16 * _S0)) * _D1.f32[0]) - (v17 * _S6)));
  _D1.f32[0] = ((v19 + (v18 * _D1.f32[0])) + (v20 * v3)) / v14;
  if (((v15 + ((v21 / v14) * v11)) + (_D1.f32[0] * _S0)) <= 0.0)
  {
    return 0;
  }

  _D1.f32[1] = v21 / v14;
  *a1 = _D1;
  return 1;
}

BOOL RB::unapply(float32x2_t *this, RB::Rect *a2, const RB::ProjectionMatrix *a3)
{
  if (*(a2 + 2) == 0.0 && (*(a2 + 5) == 0.0 ? (v4 = *(a2 + 8) == 1.0) : (v4 = 0), v4))
  {
    v5 = vcvtq_f64_f32(*(a2 + 12));
    v6 = vcvtq_f64_f32(*(a2 + 24));
    *v21 = vcvtq_f64_f32(*a2);
    *&v21[16] = v5;
    *&v21[32] = v6;
    v7 = RB::AffineTransform::invert(v21);
    if (v7)
    {
      *this = RB::operator*(v21, *this, this[1]);
      this[1] = v8;
    }
  }

  else
  {
    *v21 = &v20;
    v9 = *(a2 + 1);
    *&v21[8] = *a2;
    *&v21[24] = v9;
    *&v21[40] = *(a2 + 8);
    v22 = *this;
    v10 = v22;
    v20 = (RB::unapply(&v22, &v21[8]) & 1) == 0;
    v11 = v22;
    v19 = this[1];
    v22 = vadd_f32(v19.u32[0], v10);
    if ((RB::unapply(&v22, &v21[8]) & 1) == 0)
    {
      v20 = 1;
    }

    v12 = v22;
    v22 = vadd_f32(v10, v19);
    if ((RB::unapply(&v22, &v21[8]) & 1) == 0)
    {
      v20 = 1;
    }

    v13 = v22;
    v14.i32[1] = v19.i32[1];
    v14.i32[0] = 0;
    v22 = vadd_f32(v14, v10);
    if ((RB::unapply(&v22, &v21[8]) & 1) == 0)
    {
      v20 = 1;
    }

    v15 = RB::Rect::from_bounds(vminnm_f32(vminnm_f32(v11, v12), vminnm_f32(v13, v22)), vmaxnm_f32(vmaxnm_f32(v11, v12), vmaxnm_f32(v13, v22)));
    v17 = v20;
    if (!v20)
    {
      *this = v15;
      this[1] = v16;
    }

    return !v17;
  }

  return v7;
}

float32_t RB::ProjectionMatrix::mix(float32x4_t *this, float32x4_t *a2, float a3)
{
  v3 = this[1];
  *this = vmlaq_n_f32(*this, vsubq_f32(*a2, *this), a3);
  this[1] = vmlaq_n_f32(v3, vsubq_f32(a2[1], v3), a3);
  result = this[2].f32[0] + ((a2[2].f32[0] - this[2].f32[0]) * a3);
  this[2].f32[0] = result;
  return result;
}

void *RB::ProjectionMatrix::encode(void *this, RB::Encoder *a2)
{
  v3 = this;
  v4 = 0;
  v7[0] = 1065353216;
  v5 = 13;
  do
  {
    v6 = *(v3 + v4 * 4);
    if (*&v6 != *&v7[v4])
    {
      RB::ProtobufEncoder::encode_varint(a2, v5);
      this = RB::ProtobufEncoder::encode_fixed32(a2, v6);
    }

    ++v4;
    v5 += 8;
  }

  while (v4 != 9);
  return this;
}

unint64_t RB::ProjectionMatrix::decode(RB::ProjectionMatrix *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      if ((v5 >> 3) - 1 > 8)
      {
        RB::ProtobufDecoder::skip_field(a2, v5);
      }

      else
      {
        *(this + (v5 >> 3) - 1) = RB::ProtobufDecoder::float_field(a2, v5);
      }

      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void RB::Drawable::statistics_handler(os_unfair_lock_s *this@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock(this + 5);
  v4 = *&this[12]._os_unfair_lock_opaque;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  *a2 = v4;

  os_unfair_lock_unlock(this + 5);
}

void RB::Drawable::set_statistics_handler(os_unfair_lock_s *this, atomic_uint *a2)
{
  os_unfair_lock_lock(this + 5);
  v4 = *&this[12]._os_unfair_lock_opaque;
  if (v4 != a2)
  {
    if (v4 && atomic_fetch_add_explicit(v4 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*v4 + 8))(v4);
    }

    if (a2)
    {
      atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
    }

    *&this[12]._os_unfair_lock_opaque = a2;
  }

  os_unfair_lock_unlock(this + 5);
}

void RB::Drawable::StatisticsHandler::operator()(uint64_t a1)
{
  if (*(a1 + 16))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    if (WeakRetained)
    {
      (*(*(a1 + 16) + 16))();
    }
  }
}

uint64_t RB::Drawable::statistics_mask(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 5);
  v2 = *&this[10]._os_unfair_lock_opaque;
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(this + 5);
  return v3;
}

NSObject *RB::Drawable::cancel_frame(RB::Drawable *this)
{
  result = *(this + 3);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

uint64_t RB::Drawable::statistics_dictionary(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 5);
  v2 = *&this[10]._os_unfair_lock_opaque;
  if (v2)
  {
    v3 = RB::Drawable::Statistics::dictionary(v2);
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  os_unfair_lock_unlock(this + 5);
  return v3;
}

uint64_t RB::Drawable::Statistics::dictionary(RB::Drawable::Statistics *this)
{
  v209 = *MEMORY[0x1E69E9840];
  *v207 = 0u;
  v208 = 64;
  v204 = 0u;
  v205 = 64;
  v2 = RBDrawableStatisticsFramesSubmitted;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(this + 2)];
  __dst[0] = v2;
  v207[1] = 1;
  v203[0] = v3;
  *(&v204 + 1) = 1;
  v4 = RBDrawableStatisticsFramesRendered;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(this + 3)];
  __dst[1] = v4;
  v207[1] = 2;
  v203[1] = v5;
  *(&v204 + 1) = 2;
  v6 = *this;
  if (*this)
  {
    v7 = RBDrawableStatisticsMinSubmitTime;
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 13)];
    v9 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v9 = v207[1];
    }

    v10 = v207[0];
    if (!v207[0])
    {
      v10 = __dst;
    }

    v10[v9] = v7;
    ++v207[1];
    v11 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v11 = *(&v204 + 1);
    }

    v12 = v204;
    if (!v204)
    {
      v12 = v203;
    }

    v12[v11] = v8;
    ++*(&v204 + 1);
    v13 = RBDrawableStatisticsMaxSubmitTime;
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 22)];
    v15 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v15 = v207[1];
    }

    v16 = v207[0];
    if (!v207[0])
    {
      v16 = __dst;
    }

    v16[v15] = v13;
    ++v207[1];
    v17 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v17 = *(&v204 + 1);
    }

    v18 = v204;
    if (!v204)
    {
      v18 = v203;
    }

    v18[v17] = v14;
    ++*(&v204 + 1);
    v19 = RBDrawableStatisticsTotalSubmitTime;
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 4)];
    v21 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v21 = v207[1];
    }

    v22 = v207[0];
    if (!v207[0])
    {
      v22 = __dst;
    }

    v22[v21] = v19;
    ++v207[1];
    v23 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v23 = *(&v204 + 1);
    }

    v24 = v204;
    if (!v204)
    {
      v24 = v203;
    }

    v24[v23] = v20;
    ++*(&v204 + 1);
    v25 = RBDrawableStatisticsEMASubmitTime;
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 31)];
    v27 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v27 = v207[1];
    }

    v28 = v207[0];
    if (!v207[0])
    {
      v28 = __dst;
    }

    v28[v27] = v25;
    ++v207[1];
    v29 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v29 = *(&v204 + 1);
    }

    v30 = v204;
    if (!v204)
    {
      v30 = v203;
    }

    v30[v29] = v26;
    ++*(&v204 + 1);
    v6 = *this;
  }

  if ((v6 & 2) != 0)
  {
    v31 = RBDrawableStatisticsMinRenderTime;
    v32 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 14)];
    v33 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v33 = v207[1];
    }

    v34 = v207[0];
    if (!v207[0])
    {
      v34 = __dst;
    }

    v34[v33] = v31;
    ++v207[1];
    v35 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v35 = *(&v204 + 1);
    }

    v36 = v204;
    if (!v204)
    {
      v36 = v203;
    }

    v36[v35] = v32;
    ++*(&v204 + 1);
    v37 = RBDrawableStatisticsMaxRenderTime;
    v38 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 23)];
    v39 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v39 = v207[1];
    }

    v40 = v207[0];
    if (!v207[0])
    {
      v40 = __dst;
    }

    v40[v39] = v37;
    ++v207[1];
    v41 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v41 = *(&v204 + 1);
    }

    v42 = v204;
    if (!v204)
    {
      v42 = v203;
    }

    v42[v41] = v38;
    ++*(&v204 + 1);
    v43 = RBDrawableStatisticsTotalRenderTime;
    v44 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 5)];
    v45 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v45 = v207[1];
    }

    v46 = v207[0];
    if (!v207[0])
    {
      v46 = __dst;
    }

    v46[v45] = v43;
    ++v207[1];
    v47 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v47 = *(&v204 + 1);
    }

    v48 = v204;
    if (!v204)
    {
      v48 = v203;
    }

    v48[v47] = v44;
    ++*(&v204 + 1);
    v49 = RBDrawableStatisticsEMARenderTime;
    v50 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 32)];
    v51 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v51 = v207[1];
    }

    v52 = v207[0];
    if (!v207[0])
    {
      v52 = __dst;
    }

    v52[v51] = v49;
    ++v207[1];
    v53 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v53 = *(&v204 + 1);
    }

    v54 = v204;
    if (!v204)
    {
      v54 = v203;
    }

    v54[v53] = v50;
    ++*(&v204 + 1);
    v6 = *this;
  }

  if ((v6 & 4) != 0)
  {
    v55 = RBDrawableStatisticsMinCostEstimate;
    v56 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 15)];
    v57 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v57 = v207[1];
    }

    v58 = v207[0];
    if (!v207[0])
    {
      v58 = __dst;
    }

    v58[v57] = v55;
    ++v207[1];
    v59 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v59 = *(&v204 + 1);
    }

    v60 = v204;
    if (!v204)
    {
      v60 = v203;
    }

    v60[v59] = v56;
    ++*(&v204 + 1);
    v61 = RBDrawableStatisticsMaxCostEstimate;
    v62 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 24)];
    v63 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v63 = v207[1];
    }

    v64 = v207[0];
    if (!v207[0])
    {
      v64 = __dst;
    }

    v64[v63] = v61;
    ++v207[1];
    v65 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v65 = *(&v204 + 1);
    }

    v66 = v204;
    if (!v204)
    {
      v66 = v203;
    }

    v66[v65] = v62;
    ++*(&v204 + 1);
    v67 = RBDrawableStatisticsTotalCostEstimate;
    v68 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 6)];
    v69 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v69 = v207[1];
    }

    v70 = v207[0];
    if (!v207[0])
    {
      v70 = __dst;
    }

    v70[v69] = v67;
    ++v207[1];
    v71 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v71 = *(&v204 + 1);
    }

    v72 = v204;
    if (!v204)
    {
      v72 = v203;
    }

    v72[v71] = v68;
    ++*(&v204 + 1);
    v73 = RBDrawableStatisticsEMACostEstimate;
    v74 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 33)];
    v75 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v75 = v207[1];
    }

    v76 = v207[0];
    if (!v207[0])
    {
      v76 = __dst;
    }

    v76[v75] = v73;
    ++v207[1];
    v77 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v77 = *(&v204 + 1);
    }

    v78 = v204;
    if (!v204)
    {
      v78 = v203;
    }

    v78[v77] = v74;
    ++*(&v204 + 1);
    v6 = *this;
  }

  if ((v6 & 8) != 0)
  {
    v79 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 16)];
    v80 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v80 = v207[1];
    }

    v81 = v207[0];
    if (!v207[0])
    {
      v81 = __dst;
    }

    v81[v80] = @"min_render_passes";
    ++v207[1];
    v82 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v82 = *(&v204 + 1);
    }

    v83 = v204;
    if (!v204)
    {
      v83 = v203;
    }

    v83[v82] = v79;
    ++*(&v204 + 1);
    v84 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 25)];
    v85 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v85 = v207[1];
    }

    v86 = v207[0];
    if (!v207[0])
    {
      v86 = __dst;
    }

    v86[v85] = @"max_render_passes";
    ++v207[1];
    v87 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v87 = *(&v204 + 1);
    }

    v88 = v204;
    if (!v204)
    {
      v88 = v203;
    }

    v88[v87] = v84;
    ++*(&v204 + 1);
    v89 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 7)];
    v90 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v90 = v207[1];
    }

    v91 = v207[0];
    if (!v207[0])
    {
      v91 = __dst;
    }

    v91[v90] = @"total_render_passes";
    ++v207[1];
    v92 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v92 = *(&v204 + 1);
    }

    v93 = v204;
    if (!v204)
    {
      v93 = v203;
    }

    v93[v92] = v89;
    ++*(&v204 + 1);
    v94 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 34)];
    v95 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v95 = v207[1];
    }

    v96 = v207[0];
    if (!v207[0])
    {
      v96 = __dst;
    }

    v96[v95] = @"ema_render_passes";
    ++v207[1];
    v97 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v97 = *(&v204 + 1);
    }

    v98 = v204;
    if (!v204)
    {
      v98 = v203;
    }

    v98[v97] = v94;
    ++*(&v204 + 1);
    v99 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 17)];
    v100 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v100 = v207[1];
    }

    v101 = v207[0];
    if (!v207[0])
    {
      v101 = __dst;
    }

    v101[v100] = @"min_draw_calls";
    ++v207[1];
    v102 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v102 = *(&v204 + 1);
    }

    v103 = v204;
    if (!v204)
    {
      v103 = v203;
    }

    v103[v102] = v99;
    ++*(&v204 + 1);
    v104 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 26)];
    v105 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v105 = v207[1];
    }

    v106 = v207[0];
    if (!v207[0])
    {
      v106 = __dst;
    }

    v106[v105] = @"max_draw_calls";
    ++v207[1];
    v107 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v107 = *(&v204 + 1);
    }

    v108 = v204;
    if (!v204)
    {
      v108 = v203;
    }

    v108[v107] = v104;
    ++*(&v204 + 1);
    v109 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 8)];
    v110 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v110 = v207[1];
    }

    v111 = v207[0];
    if (!v207[0])
    {
      v111 = __dst;
    }

    v111[v110] = @"total_draw_calls";
    ++v207[1];
    v112 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v112 = *(&v204 + 1);
    }

    v113 = v204;
    if (!v204)
    {
      v113 = v203;
    }

    v113[v112] = v109;
    ++*(&v204 + 1);
    v114 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 35)];
    v115 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v115 = v207[1];
    }

    v116 = v207[0];
    if (!v207[0])
    {
      v116 = __dst;
    }

    v116[v115] = @"ema_draw_calls";
    ++v207[1];
    v117 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v117 = *(&v204 + 1);
    }

    v118 = v204;
    if (!v204)
    {
      v118 = v203;
    }

    v118[v117] = v114;
    ++*(&v204 + 1);
    v119 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 18)];
    v120 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v120 = v207[1];
    }

    v121 = v207[0];
    if (!v207[0])
    {
      v121 = __dst;
    }

    v121[v120] = @"min_triangles";
    ++v207[1];
    v122 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v122 = *(&v204 + 1);
    }

    v123 = v204;
    if (!v204)
    {
      v123 = v203;
    }

    v123[v122] = v119;
    ++*(&v204 + 1);
    v124 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 27)];
    v125 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v125 = v207[1];
    }

    v126 = v207[0];
    if (!v207[0])
    {
      v126 = __dst;
    }

    v126[v125] = @"max_triangles";
    ++v207[1];
    v127 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v127 = *(&v204 + 1);
    }

    v128 = v204;
    if (!v204)
    {
      v128 = v203;
    }

    v128[v127] = v124;
    ++*(&v204 + 1);
    v129 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 9)];
    v130 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v130 = v207[1];
    }

    v131 = v207[0];
    if (!v207[0])
    {
      v131 = __dst;
    }

    v131[v130] = @"total_triangles";
    ++v207[1];
    v132 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v132 = *(&v204 + 1);
    }

    v133 = v204;
    if (!v204)
    {
      v133 = v203;
    }

    v133[v132] = v129;
    ++*(&v204 + 1);
    v134 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 36)];
    v135 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v135 = v207[1];
    }

    v136 = v207[0];
    if (!v207[0])
    {
      v136 = __dst;
    }

    v136[v135] = @"ema_triangles";
    ++v207[1];
    v137 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v137 = *(&v204 + 1);
    }

    v138 = v204;
    if (!v204)
    {
      v138 = v203;
    }

    v138[v137] = v134;
    ++*(&v204 + 1);
    v139 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 19)];
    v140 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v140 = v207[1];
    }

    v141 = v207[0];
    if (!v207[0])
    {
      v141 = __dst;
    }

    v141[v140] = @"min_texture_bytes";
    ++v207[1];
    v142 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v142 = *(&v204 + 1);
    }

    v143 = v204;
    if (!v204)
    {
      v143 = v203;
    }

    v143[v142] = v139;
    ++*(&v204 + 1);
    v144 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 28)];
    v145 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v145 = v207[1];
    }

    v146 = v207[0];
    if (!v207[0])
    {
      v146 = __dst;
    }

    v146[v145] = @"max_texture_bytes";
    ++v207[1];
    v147 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v147 = *(&v204 + 1);
    }

    v148 = v204;
    if (!v204)
    {
      v148 = v203;
    }

    v148[v147] = v144;
    ++*(&v204 + 1);
    v149 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 10)];
    v150 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v150 = v207[1];
    }

    v151 = v207[0];
    if (!v207[0])
    {
      v151 = __dst;
    }

    v151[v150] = @"total_texture_bytes";
    ++v207[1];
    v152 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v152 = *(&v204 + 1);
    }

    v153 = v204;
    if (!v204)
    {
      v153 = v203;
    }

    v153[v152] = v149;
    ++*(&v204 + 1);
    v154 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 37)];
    v155 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v155 = v207[1];
    }

    v156 = v207[0];
    if (!v207[0])
    {
      v156 = __dst;
    }

    v156[v155] = @"ema_texture_bytes";
    ++v207[1];
    v157 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v157 = *(&v204 + 1);
    }

    v158 = v204;
    if (!v204)
    {
      v158 = v203;
    }

    v158[v157] = v154;
    ++*(&v204 + 1);
    v159 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 20)];
    v160 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v160 = v207[1];
    }

    v161 = v207[0];
    if (!v207[0])
    {
      v161 = __dst;
    }

    v161[v160] = @"min_buffer_bytes";
    ++v207[1];
    v162 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v162 = *(&v204 + 1);
    }

    v163 = v204;
    if (!v204)
    {
      v163 = v203;
    }

    v163[v162] = v159;
    ++*(&v204 + 1);
    v164 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 29)];
    v165 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v165 = v207[1];
    }

    v166 = v207[0];
    if (!v207[0])
    {
      v166 = __dst;
    }

    v166[v165] = @"max_buffer_bytes";
    ++v207[1];
    v167 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v167 = *(&v204 + 1);
    }

    v168 = v204;
    if (!v204)
    {
      v168 = v203;
    }

    v168[v167] = v164;
    ++*(&v204 + 1);
    v169 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 11)];
    v170 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v170 = v207[1];
    }

    v171 = v207[0];
    if (!v207[0])
    {
      v171 = __dst;
    }

    v171[v170] = @"total_buffer_bytes";
    ++v207[1];
    v172 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v172 = *(&v204 + 1);
    }

    v173 = v204;
    if (!v204)
    {
      v173 = v203;
    }

    v173[v172] = v169;
    ++*(&v204 + 1);
    v174 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 38)];
    v175 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v175 = v207[1];
    }

    v176 = v207[0];
    if (!v207[0])
    {
      v176 = __dst;
    }

    v176[v175] = @"ema_buffer_bytes";
    ++v207[1];
    v177 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v177 = *(&v204 + 1);
    }

    v178 = v204;
    if (!v204)
    {
      v178 = v203;
    }

    v178[v177] = v174;
    ++*(&v204 + 1);
    v179 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 21)];
    v180 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v180 = v207[1];
    }

    v181 = v207[0];
    if (!v207[0])
    {
      v181 = __dst;
    }

    v181[v180] = @"min_fill_rate";
    ++v207[1];
    v182 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v182 = *(&v204 + 1);
    }

    v183 = v204;
    if (!v204)
    {
      v183 = v203;
    }

    v183[v182] = v179;
    ++*(&v204 + 1);
    v184 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 30)];
    v185 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v185 = v207[1];
    }

    v186 = v207[0];
    if (!v207[0])
    {
      v186 = __dst;
    }

    v186[v185] = @"max_fill_rate";
    ++v207[1];
    v187 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v187 = *(&v204 + 1);
    }

    v188 = v204;
    if (!v204)
    {
      v188 = v203;
    }

    v188[v187] = v184;
    ++*(&v204 + 1);
    v189 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 12)];
    v190 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v190 = v207[1];
    }

    v191 = v207[0];
    if (!v207[0])
    {
      v191 = __dst;
    }

    v191[v190] = @"total_fill_rate";
    ++v207[1];
    v192 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v192 = *(&v204 + 1);
    }

    v193 = v204;
    if (!v204)
    {
      v193 = v203;
    }

    v193[v192] = v189;
    ++*(&v204 + 1);
    v194 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 39)];
    v195 = v207[1];
    if (v208 < v207[1] + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(__dst, v207[1] + 1);
      v195 = v207[1];
    }

    v196 = v207[0];
    if (!v207[0])
    {
      v196 = __dst;
    }

    v196[v195] = @"ema_fill_rate";
    ++v207[1];
    v197 = *(&v204 + 1);
    if (v205 < *(&v204 + 1) + 1)
    {
      RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(v203, *(&v204 + 1) + 1);
      v197 = *(&v204 + 1);
    }

    v198 = v204;
    if (!v204)
    {
      v198 = v203;
    }

    v198[v197] = v194;
    ++*(&v204 + 1);
  }

  if (v204)
  {
    v199 = v204;
  }

  else
  {
    v199 = v203;
  }

  if (v207[0])
  {
    v200 = v207[0];
  }

  else
  {
    v200 = __dst;
  }

  v201 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v199 forKeys:v200 count:?];
  if (v204)
  {
    free(v204);
  }

  if (v207[0])
  {
    free(v207[0]);
  }

  return v201;
}

void sub_195DC6270(_Unwind_Exception *a1)
{
  if (STACK[0x208])
  {
    free(STACK[0x208]);
  }

  if (STACK[0x420])
  {
    free(STACK[0x420]);
  }

  _Unwind_Resume(a1);
}

uint64_t RB::Refcount<RB::Drawable,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return RB::Refcount<RB::Drawable,std::atomic<unsigned int>>::release(result);
  }

  return result;
}

void *RB::vector<objc_object *,64ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 66) + (*(__dst + 66) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 66) + (*(__dst + 66) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,8ul>(*(__dst + 64), __dst, 0x40uLL, __dst + 66, v3);
  *(__dst + 64) = result;
  return result;
}

uint64_t CG::dasher::dasher(uint64_t a1, uint64_t a2, uint64_t *a3, size_t a4, uint64_t a5, double a6)
{
  v6 = a4;
  v53 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0A3ECA0;
  *(a1 + 8) = a5;
  *(a1 + 48) = 0;
  v11 = (a1 + 48);
  v12 = (a1 + 16);
  *(a1 + 56) = 0;
  *(a1 + 64) = 4;
  v13 = 8 * a4;
  if (a4 >= 5)
  {
    RB::vector<RB::DisplayList::Clip *,4ul,unsigned long>::reserve_slow((a1 + 16), a4);
    v14 = *(a1 + 48);
    *(a1 + 56) = v6;
  }

  else
  {
    v14 = 0;
    *(a1 + 56) = a4;
    if (!a4)
    {
      v18 = 1;
      goto LABEL_10;
    }
  }

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  v16 = v13;
  do
  {
    v17 = *a3++;
    *v15++ = v17;
    v16 -= 8;
  }

  while (v16);
  v18 = 0;
LABEL_10:
  v19 = *a2;
  v20 = *(a2 + 8);
  v21 = vnegq_f64(v20);
  v20.f64[0] = *(a2 + 24);
  v22 = vmulq_f64(v20, *a2);
  v22.f64[0] = vsubq_f64(v22, vdupq_laneq_s64(v22, 1)).f64[0];
  v23 = *(a2 + 24) / v22.f64[0];
  *(a1 + 168) = 0;
  *(a1 + 72) = v23;
  *(a1 + 80) = vdivq_f64(v21, vdupq_lane_s64(*&v22.f64[0], 0));
  *(a1 + 96) = v19 / v22.f64[0];
  *(a1 + 104) = 1;
  *(a1 + 176) = 0;
  if (v14)
  {
    v24 = v14;
  }

  else
  {
    v24 = v12;
  }

  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  if ((v18 & 1) == 0)
  {
    v25 = v24;
    do
    {
      *v25 = fabs(*v25);
      ++v25;
      v13 -= 8;
    }

    while (v13);
  }

  if (v6)
  {
    v50 = 0;
    v51 = 0;
    v52 = 4;
    if (v6 >= 5)
    {
      RB::vector<RB::DisplayList::Clip *,4ul,unsigned long>::reserve_slow(v49, v6);
      v26 = v50;
      v27 = v51;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v49;
    }

    v29 = &v28[v27];
    v30 = v6;
    do
    {
      v31 = *v24++;
      *v29++ = v31;
      --v30;
    }

    while (v30);
    v32 = v27 + v6;
    v51 = v32;
    v33 = *(a1 + 56);
    v34 = v33;
    v35 = v27 + v6;
    if (*(a1 + 64) < v33 + v32)
    {
      RB::vector<RB::DisplayList::Clip *,4ul,unsigned long>::reserve_slow(v12, v33 + v32);
      v36 = *(a1 + 48);
      v45 = *(a1 + 56);
      if (!v36)
      {
        v36 = v12;
      }

      v46 = v45 > v33;
      v47 = v45 - v33;
      if (v46)
      {
        v48 = v36;
        memmove(&v36[v34 + v35], &v36[v34], 8 * v47);
        v36 = v48;
      }
    }

    else
    {
      v36 = *v11;
      if (!*v11)
      {
        v36 = v12;
      }
    }

    if (v32)
    {
      v37 = &v36[v34];
      do
      {
        v38 = *v28++;
        *v37++ = v38;
        --v35;
      }

      while (v35 * 8);
    }

    v6 = *(a1 + 56) + 1;
    *(a1 + 56) = v6;
    if (v50)
    {
      free(v50);
      v6 = *(a1 + 56);
    }

    v14 = *v11;
  }

  if (!v14)
  {
    v14 = v12;
  }

  if (!v6)
  {
    goto LABEL_39;
  }

  v39 = 0;
  v40 = 0.0;
  do
  {
    v40 = v14[v39++] + v40;
  }

  while (v6 != v39);
  if (v40 >= 2.22044605e-16)
  {
    while (a6 < 0.0)
    {
      a6 = a6 + v40;
    }

    *(a1 + 112) = 0;
    *(a1 + 104) = 1;
    v41 = *v14;
    if (a6 >= *v14)
    {
      v42 = 0;
      v43 = 1;
      do
      {
        if (a6 == 0.0 && v41 == 0.0)
        {
          break;
        }

        a6 = a6 - v41;
        v43 ^= 1u;
        *(a1 + 104) = v43 & 1;
        if (v42 < v6 - 1)
        {
          ++v42;
        }

        else
        {
          v42 = 0;
        }

        *(a1 + 112) = v42;
        v41 = v14[v42];
      }

      while (a6 >= v41);
    }

    *(a1 + 120) = v41 - a6;
  }

  else
  {
LABEL_39:
    *(a1 + 56) = 0;
  }

  *(a1 + 152) = *(a1 + 112);
  *(a1 + 144) = *(a1 + 104);
  *(a1 + 184) = 1;
  *(a1 + 160) = *(a1 + 120);
  *(a1 + 168) = *(a1 + 128);
  return a1;
}

__n128 CG::dasher::moveto(uint64_t a1, __n128 a2)
{
  *(a1 + 128) = a2;
  *(a1 + 152) = *(a1 + 112);
  *(a1 + 144) = *(a1 + 104);
  *(a1 + 184) = 1;
  *(a1 + 160) = *(a1 + 120);
  result = *(a1 + 128);
  *(a1 + 168) = result;
  return result;
}

__n128 CG::dasher::lineto(uint64_t a1, float64x2_t a2)
{
  v5[0] = *(a1 + 168);
  v5[1] = a2;
  CG::dasher::dash_path_element<CG::LineSegment>(a1, v5);
  result = a2;
  *(a1 + 168) = a2;
  return result;
}

uint64_t CG::dasher::dash_path_element<CG::LineSegment>(uint64_t result, float64x2_t *a2)
{
  v2 = vmlaq_n_f64(vmulq_n_f64(*(result + 88), a2[1].f64[1] - a2->f64[1]), *(result + 72), a2[1].f64[0] - a2->f64[0]);
  v3 = sqrt(vaddvq_f64(vmulq_f64(v2, v2)));
  if (v3 != 0.0)
  {
    v5 = result;
    v6 = *(result + 160);
    if (v3 <= v6)
    {
      if (*(result + 144) == 1)
      {
        result = CG::dasher::add_path_dash_segment<CG::LineSegment>(result, a2, 0.0, v3);
        *(v5 + 184) = 0;
        v6 = *(v5 + 160);
      }

      v15 = v6 - v3;
      goto LABEL_21;
    }

    v7 = 0.0;
    v8 = *(result + 144);
    v9 = *(result + 160);
    do
    {
      if (v8)
      {
        result = CG::dasher::add_path_dash_segment<CG::LineSegment>(v5, a2, v7, v9);
        v6 = *(v5 + 160);
        v8 = *(v5 + 144) ^ 1;
      }

      else
      {
        v8 = 1;
      }

      v10 = *(v5 + 152);
      v12 = *(v5 + 48);
      v11 = *(v5 + 56);
      v7 = v6 + v7;
      *(v5 + 144) = v8 & 1;
      if (v10 + 1 < v11)
      {
        v13 = v10 + 1;
      }

      else
      {
        v13 = 0;
      }

      *(v5 + 152) = v13;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = v5 + 16;
      }

      v6 = *(v14 + 8 * v13);
      *(v5 + 160) = v6;
      *(v5 + 184) = 1;
      v9 = v6 + v7;
    }

    while (v6 + v7 < v3);
    if (v7 < v3)
    {
      if (*(v5 + 144) == 1)
      {
        result = CG::dasher::add_path_dash_segment<CG::LineSegment>(v5, a2, v7, v3);
        *(v5 + 184) = 0;
        v6 = *(v5 + 160);
      }

      v15 = v7 - v3 + v6;
LABEL_21:
      *(v5 + 160) = v15;
    }
  }

  return result;
}

double CG::dasher::quadto(const Point *a1, __n128 a2, __n128 a3)
{
  *&v6[0].v = a3;
  *&v7[0].v = a2;
  CG::Quadratic::Quadratic(v5, a1 + 42, v7, v6);
  CG::dasher::dash_path_element<CG::Quadratic>(a1, v5);
  result = *&v6[0].v;
  *&a1[42].v = *&v6[0].v;
  return result;
}

void CG::dasher::dash_path_element<CG::Quadratic>(uint64_t a1, __int128 *a2)
{
  v4 = a2[1];
  v21 = *a2;
  v22 = v4;
  v5 = a2[3];
  v23 = a2[2];
  v24 = v5;
  v6 = a2[4];
  v7 = *(a1 + 72);
  v8 = *(a1 + 88);
  *&v28[0].v = vmlaq_n_f64(vmulq_n_f64(v7, *&v21), v8, *(&v21 + 1));
  *&v27[0].v = vmlaq_n_f64(vmulq_n_f64(v7, *&v22), v8, *(&v22 + 1));
  v25 = v6;
  *&v26[0].v = vmlaq_n_f64(vmulq_n_f64(v7, *&v23), v8, *(&v23 + 1));
  CG::Quadratic::Quadratic(&v21, v28, v27, v26);
  CG::Quadratic::length(&v21, 0.5);
  if (v9 != 0.0)
  {
    v10 = v9;
    v11 = *(a1 + 160);
    if (v10 <= v11)
    {
      if (*(a1 + 144) == 1)
      {
        CG::dasher::add_path_dash_segment<CG::Quadratic>(a1, a2, 0.0, v10);
        *(a1 + 184) = 0;
        v11 = *(a1 + 160);
      }

      v20 = v11 - v10;
      goto LABEL_21;
    }

    v12 = 0.0;
    v13 = *(a1 + 144);
    v14 = *(a1 + 160);
    do
    {
      if (v13)
      {
        CG::dasher::add_path_dash_segment<CG::Quadratic>(a1, a2, v12, v14);
        v11 = *(a1 + 160);
        v13 = *(a1 + 144) ^ 1;
      }

      else
      {
        v13 = 1;
      }

      v15 = *(a1 + 152);
      v17 = *(a1 + 48);
      v16 = *(a1 + 56);
      v12 = v11 + v12;
      *(a1 + 144) = v13 & 1;
      if (v15 + 1 < v16)
      {
        v18 = v15 + 1;
      }

      else
      {
        v18 = 0;
      }

      *(a1 + 152) = v18;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = a1 + 16;
      }

      v11 = *(v19 + 8 * v18);
      *(a1 + 160) = v11;
      *(a1 + 184) = 1;
      v14 = v11 + v12;
    }

    while (v11 + v12 < v10);
    if (v12 < v10)
    {
      if (*(a1 + 144) == 1)
      {
        CG::dasher::add_path_dash_segment<CG::Quadratic>(a1, a2, v12, v10);
        *(a1 + 184) = 0;
        v11 = *(a1 + 160);
      }

      v20 = v12 - v10 + v11;
LABEL_21:
      *(a1 + 160) = v20;
    }
  }
}

double CG::dasher::cubeto(const Point *a1, __n128 a2, __n128 a3, __n128 a4)
{
  *&v8[0].v = a3;
  *&v9[0].v = a2;
  *&v7[0].v = a4;
  CG::Cubic::Cubic(v6, a1 + 42, v9, v8, v7);
  CG::dasher::dash_path_element<CG::Cubic>(a1, v6);
  result = *&v7[0].v;
  *&a1[42].v = *&v7[0].v;
  return result;
}

void CG::dasher::dash_path_element<CG::Cubic>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v21 = *a2;
  v22 = v4;
  v5 = *(a2 + 80);
  v25 = *(a2 + 64);
  v26 = v5;
  v27 = *(a2 + 96);
  v6 = *(a2 + 48);
  v23 = *(a2 + 32);
  v24 = v6;
  v7 = *(a1 + 72);
  v8 = *(a1 + 88);
  *&v31[0].v = vmlaq_n_f64(vmulq_n_f64(v7, v21.f64[0]), v8, v21.f64[1]);
  *&v30[0].v = vmlaq_n_f64(vmulq_n_f64(v7, *&v22), v8, *(&v22 + 1));
  *&v29[0].v = vmlaq_n_f64(vmulq_n_f64(v7, *&v23), v8, *(&v23 + 1));
  *&v28[0].v = vmlaq_n_f64(vmulq_n_f64(v7, *&v6), v8, *(&v6 + 1));
  CG::Cubic::Cubic(&v21, v31, v30, v29, v28);
  v9 = CG::Cubic::length(&v21, 0.5);
  if (v9 != 0.0)
  {
    v10 = v9;
    v11 = *(a1 + 160);
    if (v10 <= v11)
    {
      if (*(a1 + 144) == 1)
      {
        CG::dasher::add_path_dash_segment<CG::Cubic>(a1, a2, 0.0, v10);
        *(a1 + 184) = 0;
        v11 = *(a1 + 160);
      }

      v20 = v11 - v10;
      goto LABEL_21;
    }

    v12 = 0.0;
    v13 = *(a1 + 144);
    v14 = *(a1 + 160);
    do
    {
      if (v13)
      {
        CG::dasher::add_path_dash_segment<CG::Cubic>(a1, a2, v12, v14);
        v11 = *(a1 + 160);
        v13 = *(a1 + 144) ^ 1;
      }

      else
      {
        v13 = 1;
      }

      v15 = *(a1 + 152);
      v17 = *(a1 + 48);
      v16 = *(a1 + 56);
      v12 = v11 + v12;
      *(a1 + 144) = v13 & 1;
      if (v15 + 1 < v16)
      {
        v18 = v15 + 1;
      }

      else
      {
        v18 = 0;
      }

      *(a1 + 152) = v18;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = a1 + 16;
      }

      v11 = *(v19 + 8 * v18);
      *(a1 + 160) = v11;
      *(a1 + 184) = 1;
      v14 = v11 + v12;
    }

    while (v11 + v12 < v10);
    if (v12 < v10)
    {
      if (*(a1 + 144) == 1)
      {
        CG::dasher::add_path_dash_segment<CG::Cubic>(a1, a2, v12, v10);
        *(a1 + 184) = 0;
        v11 = *(a1 + 160);
      }

      v20 = v12 - v10 + v11;
LABEL_21:
      *(a1 + 160) = v20;
    }
  }
}

__n128 CG::dasher::closepath(CG::dasher *this)
{
  v2 = *(this + 8);
  v4[0] = *(this + 168);
  v4[1] = v2;
  CG::dasher::dash_path_element<CG::LineSegment>(this, v4);
  *(this + 19) = *(this + 14);
  *(this + 144) = *(this + 104);
  *(this + 184) = 1;
  *(this + 20) = *(this + 15);
  result = *(this + 8);
  *(this + 168) = result;
  return result;
}

uint64_t CG::dasher::add_path_dash_segment<CG::LineSegment>(uint64_t a1, float64x2_t *a2, double a3, double a4)
{
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  v10 = vmlaq_n_f64(vmulq_n_f64(v8, a2[1].f64[0]), v9, a2[1].f64[1]);
  v21[0] = vmlaq_n_f64(vmulq_n_f64(v8, a2->f64[0]), v9, a2->f64[1]);
  v21[1] = v10;
  v11 = CG::LineSegment::index(v21, a3);
  CG::LineSegment::split(a2, v11, v21);
  if (*(a1 + 184) == 1)
  {
    (*(**(a1 + 8) + 16))(*(a1 + 8), v22);
  }

  if (a3 == a4)
  {
    v12 = vsubq_f64(v23, v22);
    if (v12.f64[0] != 0.0 || v12.f64[1] != 0.0)
    {
      v12 = vdivq_f64(v12, vdupq_lane_s64(COERCE__INT64(sqrt(vaddvq_f64(vmulq_f64(v12, v12)))), 0));
    }

    v13 = vmlaq_f64(v22, vdupq_n_s64(0x3EF0000000000000uLL), v12);
    v14 = *(a1 + 8);
  }

  else
  {
    v15 = *(a1 + 72);
    v16 = *(a1 + 88);
    v19 = vmlaq_n_f64(vmulq_n_f64(v15, v22.f64[0]), v16, v22.f64[1]);
    v20 = vmlaq_n_f64(vmulq_n_f64(v15, v23.f64[0]), v16, v23.f64[1]);
    v17 = CG::LineSegment::index(&v19, a4 - a3);
    CG::LineSegment::split(&v22, v17, &v19);
    v14 = *(a1 + 8);
    v13 = v20;
  }

  return (*(*v14 + 24))(v14, v13);
}

uint64_t CG::dasher::add_path_dash_segment<CG::Quadratic>(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = *(a2 + 16);
  *&v31[0].v = *a2;
  v32 = v8;
  v9 = *(a2 + 48);
  v33 = *(a2 + 32);
  v34 = v9;
  v35 = *(a2 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 88);
  v26 = vmlaq_n_f64(vmulq_n_f64(v10, *&v31[0].v), v11, *&v31[2].v);
  *&v43[0].v = vmlaq_n_f64(vmulq_n_f64(v10, *&v8), v11, *(&v8 + 1));
  *&v42[0].v = vmlaq_n_f64(vmulq_n_f64(v10, *&v33), v11, *(&v33 + 1));
  CG::Quadratic::Quadratic(v31, &v26, v43, v42);
  CG::Quadratic::index(v31, a3, 0.5);
  CG::Quadratic::split(a2, v12, v31);
  if (*(a1 + 184) == 1)
  {
    v13.n128_f64[0] = CG::Quadratic::start_point(&v36);
    v13.n128_u64[1] = v14;
    (*(**(a1 + 8) + 16))(*(a1 + 8), v13);
  }

  if (a3 == a4)
  {
    v15 = CG::Quadratic::derivative(&v36, 0.0);
    v17 = v15;
    v18 = v16;
    if (v15 != 0.0 || v16 != 0.0)
    {
      v19 = sqrt(v15 * v15 + v16 * v16);
      v17 = v17 / v19;
      v18 = v16 / v19;
    }

    v20.n128_f64[0] = CG::Quadratic::start_point(&v36) + v17 * 0.0000152587891;
    v20.n128_f64[1] = v21 + v18 * 0.0000152587891;
    return (*(**(a1 + 8) + 24))(*(a1 + 8), v20);
  }

  else
  {
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    v30 = v40;
    v23 = *(a1 + 72);
    v24 = *(a1 + 88);
    *&v43[0].v = vmlaq_n_f64(vmulq_n_f64(v23, v36.f64[0]), v24, v36.f64[1]);
    *&v42[0].v = vmlaq_n_f64(vmulq_n_f64(v23, v37.n128_f64[0]), v24, v37.n128_f64[1]);
    *&v41[0].v = vmlaq_n_f64(vmulq_n_f64(v23, v38.n128_f64[0]), v24, v38.n128_f64[1]);
    CG::Quadratic::Quadratic(&v26, v43, v42, v41);
    CG::Quadratic::index(&v26, a4 - a3, 0.5);
    CG::Quadratic::split(&v36, v25, &v26);
    return (*(**(a1 + 8) + 32))(*(a1 + 8), v27, v28);
  }
}

uint64_t CG::dasher::add_path_dash_segment<CG::Cubic>(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = *(a2 + 16);
  v28 = *a2;
  v29 = v8;
  v9 = *(a2 + 80);
  v32 = *(a2 + 64);
  v33 = v9;
  v34 = *(a2 + 96);
  v10 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v10;
  v11 = *(a1 + 72);
  v12 = *(a1 + 88);
  v21 = vmlaq_n_f64(vmulq_n_f64(v11, v28.f64[0]), v12, v28.f64[1]);
  *&v45[0].v = vmlaq_n_f64(vmulq_n_f64(v11, *&v29), v12, *(&v29 + 1));
  *&v43[0].v = vmlaq_n_f64(vmulq_n_f64(v11, *&v10), v12, *(&v10 + 1));
  *&v44[0].v = vmlaq_n_f64(vmulq_n_f64(v11, *&v30), v12, *(&v30 + 1));
  CG::Cubic::Cubic(&v28, &v21, v45, v44, v43);
  CG::Cubic::index(&v28, a3, 0.5);
  CG::Cubic::split(a2, v13, &v28);
  if (*(a1 + 184) == 1)
  {
    (*(**(a1 + 8) + 16))(*(a1 + 8), v35);
  }

  if (a3 == a4)
  {
    v14 = CG::Cubic::derivative(&v35, 0.0);
    v16.f64[0] = v14;
    v16.f64[1] = v15;
    if (v14 != 0.0 || v15 != 0.0)
    {
      v16 = vdivq_f64(v16, vdupq_lane_s64(COERCE__INT64(sqrt(v14 * v14 + v15 * v15)), 0));
    }

    return (*(**(a1 + 8) + 24))(*(a1 + 8), vmlaq_f64(v35, vdupq_n_s64(0x3EF0000000000000uLL), v16));
  }

  else
  {
    v21 = v35;
    v22 = v36;
    v25 = v39;
    v26 = v40;
    v27 = v41;
    v23 = v37;
    v24 = v38;
    v18 = *(a1 + 72);
    v19 = *(a1 + 88);
    *&v45[0].v = vmlaq_n_f64(vmulq_n_f64(v18, v35.f64[0]), v19, v35.f64[1]);
    *&v44[0].v = vmlaq_n_f64(vmulq_n_f64(v18, v36.n128_f64[0]), v19, v36.n128_f64[1]);
    *&v43[0].v = vmlaq_n_f64(vmulq_n_f64(v18, v37.n128_f64[0]), v19, v37.n128_f64[1]);
    *&v42[0].v = vmlaq_n_f64(vmulq_n_f64(v18, v38.n128_f64[0]), v19, v38.n128_f64[1]);
    CG::Cubic::Cubic(&v21, v45, v44, v43, v42);
    CG::Cubic::index(&v21, a4 - a3, 0.5);
    CG::Cubic::split(&v35, v20, &v21);
    return (*(**(a1 + 8) + 40))(*(a1 + 8), v22, v23, v24);
  }
}

void *RBXMLRecorderStart()
{
  if ((RB::XMLRecorder::installed & 1) == 0)
  {
    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Set RB_XML_RECORDER=1 in environment to enable recording.\n", 58);
  }

  if ((RB::XMLRecorder::enabled & 1) == 0)
  {
    RB::XMLRecorder::enabled = 1;
  }

  return result;
}

void RBXMLRecorderStop()
{
  if (RB::XMLRecorder::enabled == 1)
  {
    RB::XMLRecorder::enabled = 0;
  }
}

uint64_t *std::ostringstream::basic_ostringstream[abi:nn200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:nn200100]((a1 + 1), 16);
  return a1;
}

void sub_195DC75C0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x19A8C09B0](v1);
  _Unwind_Resume(a1);
}

const void *std::ostringstream::str[abi:nn200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:nn200100](a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x19A8C09B0](a1 + 112);
  return a1;
}

uint64_t RBXMLRecorderExportCGImage(CGImage *a1)
{
  if (RB::XMLRecorder::image_names)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:CGImageGetIdentifier()];
    v4 = [RB::XMLRecorder::image_names objectForKeyedSubscript:v3];
    if (v4)
    {
LABEL_15:
      objc_autoreleasePoolPop(v2);
      return v4;
    }

    v4 = [RB::XMLRecorder::resource_path stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"image-%@.png", v3)}];
    if (![RB::XMLRecorder::image_names count])
    {
      v5 = [MEMORY[0x1E696AC08] defaultManager];
      [v5 createDirectoryAtPath:RB::XMLRecorder::resource_path withIntermediateDirectories:0 attributes:0 error:0];
    }

    v6 = CGDataConsumerCreateWithURL([MEMORY[0x1E695DFF8] fileURLWithPath:v4]);
    if (v6)
    {
      v7 = v6;
      v8 = CGImageDestinationCreateWithDataConsumer(v6, @"public.png", 1uLL, 0);
      v9 = v8;
      if (v8)
      {
        CGImageDestinationAddImage(v8, a1, 0);
        v10 = CGImageDestinationFinalize(v9);
      }

      else
      {
        v10 = 0;
      }

      CGDataConsumerRelease(v7);
      if (v9)
      {
        CFRelease(v9);
        if (v10)
        {
LABEL_12:
          [RB::XMLRecorder::image_names setObject:v4 forKeyedSubscript:v3];
          goto LABEL_15;
        }
      }

      else if (v10)
      {
        goto LABEL_12;
      }
    }

    v4 = 0;
    goto LABEL_15;
  }

  return 0;
}

void sub_195DC7938(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

id RBDisplayListContentsXMLDescription2(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = [a1 _rb_xml_document];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (objc_opt_respondsToSelector())
  {
    if ((rb_color_space([a1 defaultColorSpace]) & 0x1F0) == 0x100)
    {
      a2 = a2 | 0x80000000;
    }

    else
    {
      a2 = a2;
    }
  }

  std::ostringstream::basic_ostringstream[abi:nn200100](&v17);
  RB::XML::Document::print(v9, &v17, a2, a3, a4);
  std::ostringstream::str[abi:nn200100](&v17, __p);
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  if ((v16 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v12 = v16;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = [v10 initWithBytes:v11 length:v12 encoding:4];
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v17 = *MEMORY[0x1E69E54E8];
  *(&v17 + *(v17 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v18 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v19);
  std::ostream::~ostream();
  MEMORY[0x19A8C09B0](&v21);
  return v13;
}

RB::XML::Element **RBDisplayListContentsXMLDictionary(void *a1, uint64_t a2)
{
  result = [a1 _rb_xml_document];
  if (result)
  {
    v5 = result;
    if (objc_opt_respondsToSelector())
    {
      if ((rb_color_space([a1 defaultColorSpace]) & 0x1F0) == 0x100)
      {
        a2 = a2 | 0x80000000;
      }

      else
      {
        a2 = a2;
      }
    }

    v6 = objc_autoreleasePoolPush();
    v7 = RB::XML::Document::dictionary(v5, a2);
    objc_autoreleasePoolPop(v6);

    return v7;
  }

  return result;
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x19A8C08A0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x19A8C08B0](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_195DC7F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::basic_stringbuf[abi:nn200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x19A8C0970](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](a1);
  return a1;
}

void sub_195DC8030(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:nn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t std::stringbuf::view[abi:nn200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t RB::Filter::Distance::can_mix(float32x2_t *this, RB::DisplayList::Interpolator::Contents *a2, float32x2_t *a3)
{
  if (!a3)
  {
    return 1;
  }

  if (this[1].i32[1] != a3[1].i32[1])
  {
    return 0;
  }

  v3 = vceq_f32(*this, *a3);
  if ((vpmin_u32(v3, v3).u32[0] & 0x80000000) != 0 && this[1].f32[0] == a3[1].f32[0])
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

float32_t RB::Filter::Distance::mix(float32x2_t *this, const State *a2, float32x2_t *a3, const RB::DisplayList::CachedTransform *a4)
{
  if (a3)
  {
    *this = vmla_n_f32(*this, vsub_f32(*a3, *this), COERCE_FLOAT(*&a2->var0));
    result = this[1].f32[0] + ((a3[1].f32[0] - this[1].f32[0]) * *&a2->var0);
    this[1].f32[0] = result;
  }

  return result;
}

void *RB::Filter::Distance::encode(RB::Filter::Distance *this, RB::Encoder *a2)
{
  result = RB::ProtobufEncoder::float2_field(a2, 1, *this);
  v5 = *(this + 2);
  if (*&v5 != 1.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x15uLL);
    result = RB::ProtobufEncoder::encode_fixed32(a2, v5);
  }

  v6 = *(this + 3);
  v7 = (v6 >> 1) & 0xF;
  if (v7)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x18uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, v7);
    LODWORD(v6) = *(this + 3);
  }

  v8 = (v6 >> 5) & 0xF;
  if (v8)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, v8);
    LODWORD(v6) = *(this + 3);
  }

  v9 = (v6 >> 9) & 0xF;
  if (v9)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x28uLL);

    return RB::ProtobufEncoder::encode_varint(a2, v9);
  }

  return result;
}

unint64_t RB::Filter::Distance::decode(RB::Filter::Distance *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v6 = result;
    do
    {
      v7 = v6 >> 3;
      if ((v6 >> 3) <= 2)
      {
        if (v7 == 1)
        {
          *this = RB::ProtobufDecoder::float2_field(a2, v6, v5).n128_u64[0];
        }

        else
        {
          if (v7 != 2)
          {
LABEL_15:
            RB::ProtobufDecoder::skip_field(a2, v6);
            goto LABEL_16;
          }

          *(this + 2) = fabsf(RB::ProtobufDecoder::float_field(a2, v6));
        }
      }

      else
      {
        switch(v7)
        {
          case 3:
            *(this + 3) &= 0xFFFFFFE1;
            v8 = 2 * (RB::ProtobufDecoder::uint_field(a2, v6) & 0xF);
            break;
          case 4:
            *(this + 3) &= 0xFFFFFE1F;
            v8 = 32 * (RB::ProtobufDecoder::uint_field(a2, v6) & 0xF);
            break;
          case 5:
            *(this + 3) &= 0xFFFFE1FF;
            v8 = (RB::ProtobufDecoder::uint_field(a2, v6) & 0xF) << 9;
            break;
          default:
            goto LABEL_15;
        }

        *(this + 3) |= v8;
      }

LABEL_16:
      result = RB::ProtobufDecoder::next_field(a2);
      v6 = result;
    }

    while (result);
  }

  return result;
}

void RB::Filter::Distance::print(float32x2_t *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "distance");
  v4 = this[1].i32[1];
  if ((v4 & 0x1E) != 0)
  {
    RB::SexpString::printf(a2, 0, "(format %d)", (this[1].i32[1] & 0x1Eu) >> 1);
    v4 = this[1].i32[1];
  }

  v5 = v4 & 0x1E00;
  if (v5)
  {
    RB::SexpString::printf(a2, 0, "(edges %d)", v5 >> 9);
  }

  v6 = vmvn_s8(vceqz_f32(*this));
  if ((vpmax_u32(v6, v6).u32[0] & 0x80000000) != 0)
  {
    RB::SexpString::printf(a2, 0, "(distance %g %g)", COERCE_FLOAT(*this), COERCE_FLOAT(HIDWORD(*this)));
  }

  v7 = this[1].f32[0];
  if (v7 != 1.0)
  {
    RB::SexpString::printf(a2, 0, "(scale %g)", v7);
  }

  RB::SexpString::pop(a2);
}

void *RB::Coverage::Primitive::encode(float32x4_t *this, RB::Encoder *a2)
{
  v4 = this[2].u8[12];
  if (v4 == 2 || (RB::ProtobufEncoder::encode_varint(a2, 8uLL), result = RB::ProtobufEncoder::encode_varint(a2, v4), v6 = this[2].u8[12], (v6 - 2) < 7))
  {
    RB::ProtobufEncoder::float4_field(a2, 2, *this);
    v7.i8[0] = this[2].i8[12];
    v8.i32[0] = 4;
    v9 = vbslq_s8(vdupq_lane_s8(*&vceqq_s8(v7, v8), 0), vmulq_f32(this[1], vdupq_n_s32(0x3F48C8C9u)), this[1]);
    if ((vminvq_u32(vceqq_f32(v9, vdupq_lane_s32(*v9.f32, 0))) & 0x80000000) != 0)
    {
      if (v9.f32[0] != 0.0)
      {
        v16 = v9.i32[0];
        RB::ProtobufEncoder::encode_varint(a2, 0x1DuLL);
        RB::ProtobufEncoder::encode_fixed32(a2, v16);
      }
    }

    else
    {
      RB::ProtobufEncoder::float4_field(a2, 4, v9);
    }

    v10 = this[2].i32[0];
    if (*&v10 != 1.0)
    {
      RB::ProtobufEncoder::encode_varint(a2, 0x2DuLL);
      RB::ProtobufEncoder::encode_fixed32(a2, v10);
    }

    v11 = this[2].i32[1];
    if (*&v11 != 0.0)
    {
      RB::ProtobufEncoder::encode_varint(a2, 0x35uLL);
      RB::ProtobufEncoder::encode_fixed32(a2, v11);
    }

    if ((this[2].i8[14] & 4) != 0)
    {
      v13 = this[2].i32[2];
      RB::ProtobufEncoder::encode_varint(a2, 0x3DuLL);
    }

    else
    {
      v12 = this[2].f32[2];
      if (v12 == 0.0)
      {
LABEL_16:
        v14 = this[2].u8[13];
        RB::ProtobufEncoder::encode_varint(a2, 0x40uLL);
        result = RB::ProtobufEncoder::encode_varint(a2, v14);
        v15 = this[2].i8[14];
        if (v15)
        {
          RB::ProtobufEncoder::encode_varint(a2, 0x48uLL);
          result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
          v15 = this[2].i8[14];
        }

        if ((v15 & 2) != 0)
        {
          RB::ProtobufEncoder::encode_varint(a2, 0x50uLL);

          return RB::ProtobufEncoder::encode_varint(a2, 1uLL);
        }

        return result;
      }

      RB::ProtobufEncoder::encode_varint(a2, 0x5DuLL);
      v13 = LODWORD(v12);
    }

    RB::ProtobufEncoder::encode_fixed32(a2, v13);
    goto LABEL_16;
  }

  if ((v6 - 9) < 3)
  {
    abort();
  }

  return result;
}

unint64_t RB::Coverage::Primitive::decode(RB::Coverage::Primitive *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) <= 5)
      {
        if (v6 <= 2)
        {
          if (v6 == 1)
          {
            v8 = RB::ProtobufDecoder::uint_field(a2, v5);
            if (v8 <= 8)
            {
              *(this + 44) = v8;
            }

            goto LABEL_37;
          }

          if (v6 != 2)
          {
            goto LABEL_36;
          }

          *this = RB::ProtobufDecoder::float4_field(a2, v5);
        }

        else
        {
          if (v6 == 3)
          {
            *v12.i32 = RB::ProtobufDecoder::float_field(a2, v5);
            v9 = vdupq_lane_s32(v12, 0);
            goto LABEL_32;
          }

          if (v6 == 4)
          {
            v9 = RB::ProtobufDecoder::float4_field(a2, v5);
LABEL_32:
            *(this + 1) = v9;
            goto LABEL_37;
          }

          if (v6 != 5)
          {
            goto LABEL_36;
          }

          *(this + 8) = RB::ProtobufDecoder::float_field(a2, v5);
        }
      }

      else
      {
        if (v6 > 8)
        {
          if (v6 == 9)
          {
            v11 = *(this + 46) & 0xFE | RB::ProtobufDecoder::BOOL_field(a2, v5);
LABEL_35:
            *(this + 46) = v11;
            goto LABEL_37;
          }

          if (v6 == 10)
          {
            if (RB::ProtobufDecoder::BOOL_field(a2, v5))
            {
              v10 = 2;
            }

            else
            {
              v10 = 0;
            }

            v11 = *(this + 46) & 0xFD | v10;
            goto LABEL_35;
          }

          if (v6 != 11)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v6 == 6)
          {
            *(this + 9) = RB::ProtobufDecoder::float_field(a2, v5);
            goto LABEL_37;
          }

          if (v6 != 7)
          {
            if (v6 == 8)
            {
              v7 = RB::ProtobufDecoder::uint_field(a2, v5);
              if (v7 <= 4)
              {
                *(this + 45) = v7;
              }

              goto LABEL_37;
            }

LABEL_36:
            RB::ProtobufDecoder::skip_field(a2, v5);
            goto LABEL_37;
          }

          *(this + 46) |= 4u;
        }

        *(this + 10) = RB::ProtobufDecoder::float_field(a2, v5);
      }

LABEL_37:
      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  v13 = *(this + 44);
  if (v13 == 4)
  {
    *(this + 1) = vmulq_f32(*(this + 1), vdupq_n_s32(0x3FA33333u));
  }

  v14 = *(this + 46);
  if (v14)
  {
    if (v13)
    {
      if (v13 != 1)
      {
        return result;
      }

      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    *(this + 44) = v15;
    *(this + 46) = v14 & 0xFE;
  }

  return result;
}

void RB::Coverage::Primitive::attributes(float32x4_t *this, RB::XML::Element *a2, double a3, double a4, int8x16_t a5)
{
  v6 = this[2].u8[12];
  if (v6 <= 4)
  {
    if (this[2].u8[12] <= 1u)
    {
      goto LABEL_32;
    }

    if (v6 != 2)
    {
      if (v6 != 3)
      {
        if (v6 == 4)
        {
          RB::XML::Element::set<RB::XML::Value::ConstantString>();
        }

        goto LABEL_24;
      }

      v7 = this[1];
      v8 = vmvnq_s8(vceqzq_f32(v7));
      v8.i32[0] = vmaxvq_u32(v8);
      if (v8.i32[0] < 0)
      {
        v8.i8[0] = this[2].i8[12];
        a5.i32[0] = 4;
        v9 = vbslq_s8(vdupq_lane_s8(*&vceqq_s8(v8, a5), 0), vmulq_f32(v7, vdupq_n_s32(0x3F48C8C9u)), v7);
        if ((vminvq_u32(vceqq_f32(v9, vdupq_lane_s32(*v9.f32, 0))) & 0x80000000) == 0)
        {
          RB::XML::Element::set<RB::XML::Value::Vec4>();
        }

        if (this[2].f32[0] == 1.0)
        {
          RB::XML::Element::set<RB::XML::Value::Float>();
        }

        __asm { FMOV            V2.2S, #1.0 }

        RB::XML::Element::set<RB::XML::Value::Vec2>();
      }
    }

    __asm { FMOV            V2.2S, #1.0 }

LABEL_23:
    RB::XML::Element::set<RB::XML::Value::Vec4>();
  }

  if (v6 - 6 < 3)
  {
    __asm { FMOV            V2.2S, #1.0 }

    RB::XML::Element::set<RB::XML::Value::Vec4>();
  }

  if (v6 == 5)
  {
    if (this[2].f32[0] == 1.0)
    {
      RB::XML::Element::set<RB::XML::Value::Vec2>();
    }

    __asm { FMOV            V3.2S, #1.0 }

    goto LABEL_23;
  }

  if (v6 - 9 < 3)
  {
    abort();
  }

LABEL_24:
  if (this[2].f32[1] > 0.0)
  {
    RB::XML::Element::set<RB::XML::Value::Float>();
  }

  if ((this[2].i8[14] & 4) != 0)
  {
    RB::XML::Element::set<RB::XML::Value::Float>();
  }

  RB::XML::Element::set_rendering_mode(a2, this[2].u8[13]);
  if (this[2].i8[14])
  {
    RB::XML::Element::set<RB::XML::Value::Bool>();
  }

  if ((this[2].i8[14] & 2) != 0)
  {
LABEL_32:
    RB::XML::Element::set<RB::XML::Value::Bool>();
  }
}

void RB::Coverage::Primitive::mix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = *(a3 + 32);
  v8 = *(a2 + 16);
  v23 = v6 + ((v7 - v6) * v8);
  v9 = *(a1 + 8);
  if (v6 == v7)
  {
    v10 = RB::mix(*a1, v9, *a3, *(a3 + 8), v8);
  }

  else
  {
    __asm { FMOV            V5.2S, #1.0 }

    _D5.i32[0] = *(a3 + 32);
    v17 = RB::mix(vmul_f32(*a1, __PAIR64__(_D5.u32[1], LODWORD(v6))), vmul_f32(v9, __PAIR64__(_D5.u32[1], LODWORD(v6))), vmul_f32(*a3, _D5), vmul_f32(*(a3 + 8), _D5), v8);
    v18 = vrecpe_f32(LODWORD(v23));
    v19 = vmul_f32(vrecps_f32(LODWORD(v23), v18), v18);
    v20.i32[0] = vmul_f32(v19, vrecps_f32(LODWORD(v23), v19)).u32[0];
    v20.i32[1] = 1.0;
    v10 = COERCE_DOUBLE(vmul_f32(v20, *&v17));
    v11 = vmul_f32(v20, v21);
  }

  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 32) = v23;
  *(a1 + 16) = vmlaq_n_f32(*(a1 + 16), vsubq_f32(*(a3 + 16), *(a1 + 16)), COERCE_FLOAT(*(a2 + 16)));
  *(a1 + 36) = vmla_n_f32(*(a1 + 36), vsub_f32(*(a3 + 36), *(a1 + 36)), COERCE_FLOAT(*(a2 + 16)));
  v22 = *(a1 + 44);
  if (v22 <= *(a3 + 44))
  {
    LOBYTE(v22) = *(a3 + 44);
  }

  *(a1 + 44) = v22;
}

float32_t RB::Coverage::set_plane_tri(float32x2_t *a1, uint64_t a2, int32x2_t a3)
{
  a3.i32[0] = 0;
  v3 = *(a2 + 176);
  v4 = vceq_s32(v3, 0x8000000080000000);
  v5 = vdup_lane_s32(vcgt_s32(a3, vpmin_u32(v4, v4)), 0);
  v6 = vbsl_s8(v5, 0x100000001000000, vcvt_f32_s32(*(a2 + 168)));
  v7 = vbsl_s8(v5, vneg_f32(0x80000000800000), vcvt_f32_s32(v3));
  v3.i32[0] = vsub_f32(v6, v7).u32[0];
  v8 = vadd_f32(v7, v7);
  v3.i32[1] = v6.i32[1];
  _Q1.f64[0] = 0.0;
  *&v10 = v8.f32[0];
  _Q1.f64[1] = v8.f32[1];
  v11 = *(a2 + 112);
  v11.i32[1] = vneg_f32(v11).i32[1];
  *a1 = vmul_f32(v11, vcvt_f32_f64(v10));
  a1[1] = vmul_f32(v11, vcvt_f32_f64(_Q1));
  __asm { FMOV            V1.2S, #-1.0 }

  a1[2] = vmla_f32(COERCE_FLOAT32X2_T(-_Q1.f64[0]), v3, v11);
  result = *(a2 + 120);
  a1[3].f32[0] = result;
  return result;
}

void RB::Coverage::Primitive::clip(float32x2_t *this, CGContext **a2)
{
  if (this[5].i8[4] == 1)
  {
    return;
  }

  if (!this[5].i8[4])
  {
    v3 = *a2;
    v4 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 8);
    v6 = *(MEMORY[0x1E695F058] + 16);
    v7 = *(MEMORY[0x1E695F058] + 24);
LABEL_4:

    CGContextClipToRect(v3, *&v4);
    return;
  }

  if ((this[5].i8[6] & 4) != 0 || (this[5].i8[6] & 1) != 0 || (v9 = this[5].u8[5], v9 >= 2))
  {
    RB::Coverage::Primitive::make_image_mask(this, a2, &mask);
    v10 = mask;
    if (mask)
    {
      v34.origin.x = v29;
      v34.origin.y = v30;
      v34.size.width = v31;
      v34.size.height = v32;
      CGContextClipToMask(*a2, v34, mask);
      CFRelease(v10);
    }

    else
    {
      CGContextClipToRect(*a2, *MEMORY[0x1E695F058]);
    }

    return;
  }

  v11 = rb_clip_mode(v9);
  if (*(a2 + 148) != v11)
  {
    RB::CGContext::set_aliasing_mode_slow(a2, v11);
  }

  if (this[5].i8[4] == 2)
  {
    LODWORD(v12) = this[4].i32[1];
    if (*&v12 == 0.0)
    {
      __asm { FMOV            V2.2S, #1.0 }

      _D2.i32[0] = this[4].i32[0];
      v23 = vmul_f32(*this, _D2);
      v24 = vmul_f32(this[1], _D2);
      v3 = *a2;
      v4 = v23.f32[0];
      v5 = v23.f32[1];
      v6 = v24.f32[0];
      v7 = v24.f32[1];
      goto LABEL_4;
    }
  }

  RB::Coverage::Primitive::add_path(this, a2, v12, v13, v14, v15, v16, v17);
  v26 = this[4].f32[1];
  if (v26 != 0.0)
  {
    CGContextReplacePathWithStrokedPath(*a2);
  }

  v27 = *a2;

  CGContextClip(v27);
}

void RB::Coverage::Primitive::make_image_mask(float32x2_t *this@<X0>, RB::CGContext *a2@<X1>, CGImageRef *a3@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  *(&v9 - 8) = CGContextGetClipBoundingBox(*a2);
  *&v10.f64[1] = v9.i64[0];
  v8.f64[1] = v47.size.height;
  *v9.i8 = vcvt_f32_f64(v10);
  *&v10.f64[0] = vcvt_f32_f64(v8);
  *&v41 = v9.i64[0];
  *(&v41 + 1) = *&v10.f64[0];
  if (this[5].u8[5] >= 2u)
  {
    LODWORD(v8.f64[0]) = this[5].i32[0];
    *&v47.size.height = vcgt_f32(vneg_f32(0x80000000800000), *&v10.f64[0]);
    *v6.i8 = vsub_f32(*v9.i8, vdup_lane_s32(*&v8.f64[0], 0));
    *&v47.size.height = vcltzq_s32(*&v47.size.height);
    *&v11 = vbslq_s8(*&v47.size.height, v6, v9).u64[0];
    v6.i64[0] = 0x4000000040000000;
    *v7.i8 = vmla_n_f32(*&v10.f64[0], 0x4000000040000000, *v8.f64);
    *(&v11 + 1) = vbslq_s8(*&v47.size.height, v7, v10).u64[0];
    v41 = v11;
  }

  *v42 = xmmword_195E42760;
  v43 = xmmword_195E42770;
  v44 = 0uLL;
  *&v12 = RB::Coverage::Primitive::bounds(this, v42, xmmword_195E42760, xmmword_195E42770, v8, *&v47.size.height, v6, v7);
  RB::Rect::intersect(&v41, v12, v13);
  v14 = vceqz_f32(*(&v41 + 8));
  if ((vpmax_u32(v14, v14).u32[0] & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  v15 = 0.0;
  if ((this[5].i8[6] & 4) != 0)
  {
    if (this[5].f32[0] >= 0.0)
    {
      v15 = this[5].f32[0];
    }

    else
    {
      v15 = 0.0;
    }
  }

  v16 = *(a2 + 10);
  if (v16)
  {
    *&v17 = RB::operator*(v16, a2 + 2);
  }

  else
  {
    v17 = *(a2 + 2);
    v18 = *(a2 + 3);
    v19 = *(a2 + 4);
  }

  *v42 = v17;
  v43 = v18;
  v44 = v19;
  *v20.i32 = RB::AffineTransform::scale(v42) * fminf(3.5 / v15, 1.0);
  v38 = v20;
  *&v41 = vmul_n_f32(*&v41, *v20.i32);
  *(&v41 + 1) = vmul_n_f32(*(&v41 + 8), *v20.i32);
  RB::CGContext::begin_bitmap(a2, &v41, 0x100000000, 0, &c, v21);
  if (!c)
  {
LABEL_16:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  CGContextScaleCTM(c, *v38.i32, *v38.i32);
  RB::CGContext::CGContext(v42, c, *(a2 + 8), *(a2 + 2));
  v22 = rb_clip_mode(this[5].u8[5]);
  if (v45 != v22)
  {
    RB::CGContext::set_aliasing_mode_slow(v42, v22);
  }

  RB::Coverage::Primitive::add_path(this, v42, v23, v24, v25, v26, v27, v28);
  v30 = this[4].f32[1];
  if (v30 == 0.0)
  {
    CGContextFillPath(v42[0]);
  }

  else
  {
    CGContextStrokePath(v42[0]);
  }

  if (v15 > 0.0)
  {
    if (this[5].i8[6])
    {
      v32 = 2;
    }

    else
    {
      v32 = 0;
    }

    RB::CGContext::apply_blur(v42, *v38.i32 * v15, v32);
  }

  *&v31 = this[5].f32[0] * *v38.i32;
  RB::CGContext::apply_distance_rendering(v42, this[5].u8[5], v31);
  *v33.i32 = 1.0 / *v38.i32;
  v37 = v33;
  *&v41 = vmul_n_f32(*&v41, 1.0 / *v38.i32);
  *(&v41 + 1) = vmul_n_f32(*(&v41 + 8), 1.0 / *v38.i32);
  if (*v38.i32 >= 1.0 || (this[5].i8[6] & 4) == 0)
  {
    goto LABEL_30;
  }

  RB::CGContext::begin_bitmap(a2, &v41, 0x100000000, 0, &v39, v38);
  if (v39)
  {
    RB::CGContext::apply_scale(v42, v39, COERCE_DOUBLE(vdup_lane_s32(v37, 0)));
    v36 = v39;
    v35 = c;
    v39 = c;
    c = v36;
    if (v39)
    {
      CFRelease(v35);
    }

LABEL_30:
    *a3 = CGBitmapContextCreateImage(c);
    *(a3 + 1) = v41;
    goto LABEL_31;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
LABEL_31:
  RB::CGContext::~CGContext(v42);
  if (c)
  {
    CFRelease(c);
  }
}

void sub_195DC9648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, CFTypeRef cf, CFTypeRef a14, uint64_t a15, uint64_t a16, char a17)
{
  if (cf)
  {
    CFRelease(cf);
  }

  RB::CGContext::~CGContext(&a17);
  if (a14)
  {
    CFRelease(a14);
  }

  _Unwind_Resume(a1);
}

void RB::Coverage::Primitive::add_path(float32x2_t *this, CGContextRef *a2, double a3, double a4, double a5, double a6, double a7, int32x4_t a8)
{
  v10 = this[4].f32[0];
  __asm { FMOV            V3.2S, #1.0 }

  _D3.f32[0] = v10;
  v16 = vmul_f32(*this, _D3);
  v17 = vmul_f32(this[1], _D3);
  v18 = this[5].u8[4];
  if (v18 > 4)
  {
    if (v18 - 6 >= 3)
    {
      if (v18 == 5)
      {
        v38 = *a2;
        v39 = v16.f32[0];
        v40 = v16.f32[1];
        v41 = v17.f32[0];
        v42 = v17.f32[1];

        CGContextAddEllipseInRect(v38, *&v39);
      }

      else if (v18 - 9 < 3)
      {
        abort();
      }
    }

    else
    {
      v19 = *a2;
      if (v18 == 7)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v18 == 6)
      {
        v21 = kCGLineCapButt;
      }

      else
      {
        v21 = v20;
      }

      CGContextSetLineCap(v19, v21);
      CGContextMoveToPoint(*a2, COERCE_FLOAT(*this), COERCE_FLOAT(HIDWORD(*this)));
      v22 = *a2;
      v23 = vadd_f32(this[1], *this);
      v24 = v23.f32[0];
      v25 = v23.f32[1];

      CGContextAddLineToPoint(v22, v24, v25);
    }
  }

  else
  {
    if (this[5].u8[4] <= 2u)
    {
      if (!this[5].i8[4])
      {
        v33 = *a2;
        v34 = *MEMORY[0x1E695F050];
        v35 = *(MEMORY[0x1E695F050] + 8);
        v36 = *(MEMORY[0x1E695F050] + 16);
        v37 = *(MEMORY[0x1E695F050] + 24);
        goto LABEL_26;
      }

      if (v18 == 1)
      {
        v43 = *a2;
        *&v34 = CGContextGetClipBoundingBox(*a2);
        v33 = v43;
        goto LABEL_26;
      }

LABEL_19:
      v33 = *a2;
      v34 = v16.f32[0];
      v35 = v16.f32[1];
      v36 = v17.f32[0];
      v37 = v17.f32[1];
LABEL_26:

      CGContextAddRect(v33, *&v34);
      return;
    }

    v26 = *this[2].f32;
    v27 = vceqzq_f32(v26);
    if ((vminvq_u32(v27) & 0x80000000) != 0)
    {
      goto LABEL_19;
    }

    v27.i32[0] = 3;
    a8.i32[0] = this[5].u8[4];
    v28 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(a8, v27)), 0), vmulq_f32(v26, vdupq_n_s32(0x3F48C8C9u)), v26);
    v29 = v18 != 3;
    if (v10 != 1.0 || (vminvq_u32(vceqq_f32(v28, vdupq_lane_s32(*v28.f32, 0))) & 0x80000000) != 0)
    {
      RoundedRect = RBPathMakeRoundedRect(v16.f32[0], v16.f32[1], v17.f32[0], v17.f32[1], (v10 * v28.f32[0]), v28.f32[0], v29, 0);
      v32 = v31;
      RBPathRelease(0, 0x195E47920);
    }

    else
    {
      RoundedRect = RBPathMakeUnevenRoundedRect(v16.f32[0], v16.f32[1], v17.f32[0], v17.f32[1], v28.f32[0], v28.f32[1], v28.f32[2], v28.f32[3], v29, 0);
      v32 = v44;
      RBPathRelease(0, 0x195E47920);
    }

    v45 = RoundedRect;
    v46 = *a2;
    v47 = RBPathCopyCGPath(v45, v32);
    CGContextAddPath(v46, v47);
    if (v47)
    {
      CFRelease(v47);
    }

    RBPathRelease(v45, v32);
  }
}

void RB::Coverage::anonymous namespace::set_stroke(CGContextRef *this, RB::CGContext *a2, CGFloat a3)
{
  CGContextSetLineWidth(*this, a3);
  CGContextSetLineJoin(*this, kCGLineJoinMiter);
  CGContextSetLineDash(*this, 0.0, 0, 0);
  v4 = *this;

  CGContextSetMiterLimit(v4, 10.0);
}

void RB::Coverage::Primitive::fill(float32x2_t *this, CGContextRef *a2, const RB::Fill::Color *a3, float32x4_t a4, float16x4_t a5)
{
  v5 = this[5].u8[4];
  if (!this[5].i8[4])
  {
    return;
  }

  v39[0] = this;
  v39[1] = a2;
  if (v5 == 1)
  {
    v9 = *(a2 + 125);
    v10 = *(a3 + 13);
    if (v9 != v10 || v9 == 0)
    {
      if (v9 == v10 || v9 == 0)
      {
        goto LABEL_24;
      }
    }

    else if (*(a2 + 124) == *(a3 + 12))
    {
      goto LABEL_24;
    }

    if (v10)
    {
LABEL_30:
      RB::CGContext::set_fill_color_slow(a2, a3, a4, a5);
LABEL_31:
      if ((this[5].i8[6] & 2) != 0 || this[5].u8[5] >= 2u)
      {
        CGContextBeginTransparencyLayer(*a2, 0);
      }

      v18 = *a2;
      ClipBoundingBox = CGContextGetClipBoundingBox(*a2);
      CGContextFillRect(v18, ClipBoundingBox);
      if ((this[5].i8[6] & 2) != 0 || this[5].u8[5] >= 2u)
      {
        CGContextEndTransparencyLayer(*a2);
      }

      return;
    }

LABEL_24:
    a4.i16[0] = *(a2 + 56);
    a5.i16[0] = *a3;
    if (*a4.i16 == *a3)
    {
      a4.i16[0] = *(a2 + 57);
      a5.i16[0] = *(a3 + 1);
      if (*a4.i16 == *a5.i16)
      {
        a4.i16[0] = *(a2 + 58);
        a5.i16[0] = *(a3 + 2);
        if (*a4.i16 == *a5.i16)
        {
          a4.i16[0] = *(a2 + 59);
          a5.i16[0] = *(a3 + 3);
          if (*a4.i16 == *a5.i16)
          {
            a4.i16[0] = *(a2 + 60);
            a5.i16[0] = *(a3 + 4);
            if (*a4.i16 == *a5.i16)
            {
              a4.i16[0] = *(a2 + 61);
              a5.i16[0] = *(a3 + 5);
              if (*a4.i16 == *a5.i16)
              {
                goto LABEL_31;
              }
            }
          }
        }
      }
    }

    goto LABEL_30;
  }

  if ((this[5].i8[6] & 4) != 0 || (this[5].i8[6] & 1) != 0 || this[5].u8[5] >= 2u)
  {
    RB::Coverage::Primitive::make_image_mask(this, a2, &v34);
    v15 = v34;
    if (!v34)
    {
      return;
    }

    v16 = *(a2 + 125);
    v17 = *(a3 + 13);
    if (v16 == v17 && *(a2 + 125))
    {
      if (*(a2 + 124) == *(a3 + 12))
      {
        goto LABEL_40;
      }
    }

    else if (v16 == v17 || !*(a2 + 125))
    {
      goto LABEL_40;
    }

    if (v17)
    {
LABEL_46:
      RB::CGContext::set_fill_color_slow(a2, a3, v13, v14);
LABEL_47:
      if ((this[5].i8[6] & 2) != 0 || this[5].u8[5] >= 2u)
      {
        CGContextBeginTransparencyLayer(*a2, 0);
      }

      CGContextSaveGState(*a2);
      v19 = v35;
      v20 = v36;
      v21 = v37;
      v22 = v38;
      v41.origin.x = v35;
      v41.origin.y = v36;
      v41.size.width = v37;
      v41.size.height = v38;
      CGContextClipToMask(*a2, v41, v15);
      v42.origin.x = v19;
      v42.origin.y = v20;
      v42.size.width = v21;
      v42.size.height = v22;
      CGContextFillRect(*a2, v42);
      CGContextRestoreGState(*a2);
      if ((this[5].i8[6] & 2) != 0 || this[5].u8[5] >= 2u)
      {
        CGContextEndTransparencyLayer(*a2);
      }

      CFRelease(v15);
      return;
    }

LABEL_40:
    v13.i16[0] = *(a2 + 56);
    v14.i16[0] = *a3;
    if (*v13.i16 == *a3)
    {
      v13.i16[0] = *(a2 + 57);
      v14.i16[0] = *(a3 + 1);
      if (*v13.i16 == *v14.i16)
      {
        v13.i16[0] = *(a2 + 58);
        v14.i16[0] = *(a3 + 2);
        if (*v13.i16 == *v14.i16)
        {
          v13.i16[0] = *(a2 + 59);
          v14.i16[0] = *(a3 + 3);
          if (*v13.i16 == *v14.i16)
          {
            v13.i16[0] = *(a2 + 60);
            v14.i16[0] = *(a3 + 4);
            if (*v13.i16 == *v14.i16)
            {
              v13.i16[0] = *(a2 + 61);
              v14.i16[0] = *(a3 + 5);
              if (*v13.i16 == *v14.i16)
              {
                goto LABEL_47;
              }
            }
          }
        }
      }
    }

    goto LABEL_46;
  }

  a4.i32[0] = this[4].i32[1];
  if (a4.f32[0] == 0.0)
  {
    v23 = *(a2 + 125);
    v24 = *(a3 + 13);
    if (v23 == v24 && *(a2 + 125))
    {
      if (*(a2 + 124) == *(a3 + 12))
      {
        goto LABEL_64;
      }
    }

    else if (v23 == v24 || !*(a2 + 125))
    {
      goto LABEL_64;
    }

    if (v24)
    {
LABEL_70:
      RB::CGContext::set_fill_color_slow(a2, a3, a4, a5);
LABEL_71:
      v26 = kCGPathFill;
      goto LABEL_72;
    }

LABEL_64:
    a4.i16[0] = *(a2 + 56);
    a5.i16[0] = *a3;
    if (*a4.i16 == *a3)
    {
      a4.i16[0] = *(a2 + 57);
      a5.i16[0] = *(a3 + 1);
      if (*a4.i16 == *a5.i16)
      {
        a4.i16[0] = *(a2 + 58);
        a5.i16[0] = *(a3 + 2);
        if (*a4.i16 == *a5.i16)
        {
          a4.i16[0] = *(a2 + 59);
          a5.i16[0] = *(a3 + 3);
          if (*a4.i16 == *a5.i16)
          {
            a4.i16[0] = *(a2 + 60);
            a5.i16[0] = *(a3 + 4);
            if (*a4.i16 == *a5.i16)
            {
              a4.i16[0] = *(a2 + 61);
              a5.i16[0] = *(a3 + 5);
              if (*a4.i16 == *a5.i16)
              {
                goto LABEL_71;
              }
            }
          }
        }
      }
    }

    goto LABEL_70;
  }

  RB::CGContext::set_stroke_color(a2, a3, a4, a5);
  v26 = kCGPathStroke;
LABEL_72:
  v27 = rb_clip_mode(this[5].u8[5]);
  if (*(a2 + 148) != v27)
  {
    RB::CGContext::set_aliasing_mode_slow(a2, v27);
  }

  if (this[5].i8[4] == 2)
  {
    RB::Coverage::Primitive::fill(RB::CGContext &,RB::Fill::Color const&)const::$_1::operator()<RB::Coverage::Primitive::fill(RB::CGContext &,RB::Fill::Color const&)::$_3>(v39, this);
  }

  else
  {
    RB::Coverage::Primitive::add_path(this, a2, v28, v29, v30, v31, v32, v33);
    RB::Coverage::Primitive::fill(RB::CGContext &,RB::Fill::Color const&)const::$_1::operator()<RB::Coverage::Primitive::fill(RB::CGContext &,RB::Fill::Color const&)::$_4>(v39, v26);
  }
}

void RB::CGContext::set_stroke_color(RB::CGContext *this, const RB::Fill::Color *a2, float32x4_t a3, float16x4_t a4)
{
  v4 = *(this + 139);
  v5 = *(a2 + 13);
  if (v4 != v5 || v4 == 0)
  {
    if (v4 == v5 || v4 == 0)
    {
      goto LABEL_14;
    }
  }

  else if (*(this + 138) == *(a2 + 12))
  {
    goto LABEL_14;
  }

  if (v5)
  {
LABEL_20:
    RB::CGContext::set_stroke_color_slow(this, a2, a3, a4);
    return;
  }

LABEL_14:
  a3.i16[0] = *(this + 63);
  a4.i16[0] = *a2;
  if (*a3.i16 != *a2)
  {
    goto LABEL_20;
  }

  a3.i16[0] = *(this + 64);
  a4.i16[0] = *(a2 + 1);
  if (*a3.i16 != *a4.i16)
  {
    goto LABEL_20;
  }

  a3.i16[0] = *(this + 65);
  a4.i16[0] = *(a2 + 2);
  if (*a3.i16 != *a4.i16)
  {
    goto LABEL_20;
  }

  a3.i16[0] = *(this + 66);
  a4.i16[0] = *(a2 + 3);
  if (*a3.i16 != *a4.i16)
  {
    goto LABEL_20;
  }

  a3.i16[0] = *(this + 67);
  a4.i16[0] = *(a2 + 4);
  if (*a3.i16 != *a4.i16)
  {
    goto LABEL_20;
  }

  a3.i16[0] = *(this + 68);
  a4.i16[0] = *(a2 + 5);
  if (*a3.i16 != *a4.i16)
  {
    goto LABEL_20;
  }
}

void RB::Coverage::Primitive::fill(RB::CGContext &,RB::Fill::Color const&)const::$_1::operator()<RB::Coverage::Primitive::fill(RB::CGContext &,RB::Fill::Color const&)::$_3>(CGContextRef **a1, float32x2_t *a2)
{
  v4 = *a1;
  if ((*(*a1 + 46) & 2) != 0 || *(v4 + 45) >= 2u)
  {
    CGContextBeginTransparencyLayer(*a1[1], 0);
  }

  __asm { FMOV            V0.2S, #1.0 }

  _D0.i32[0] = a2[4].i32[0];
  v10 = vmul_f32(*a2, _D0);
  v11 = vmul_f32(a2[1], _D0);
  v12 = *a1[1];
  v13 = v10.f32[0];
  v14 = v10.f32[1];
  v15 = v11.f32[0];
  v16 = v11.f32[1];
  if (a2[4].f32[1] == 0.0)
  {
    CGContextFillRect(v12, *&v13);
  }

  else
  {
    CGContextStrokeRect(v12, *&v13);
  }

  if ((*(v4 + 46) & 2) != 0 || *(v4 + 45) >= 2u)
  {
    v17 = *a1[1];

    CGContextEndTransparencyLayer(v17);
  }
}

void RB::Coverage::Primitive::fill(RB::CGContext &,RB::Fill::Color const&)const::$_1::operator()<RB::Coverage::Primitive::fill(RB::CGContext &,RB::Fill::Color const&)::$_4>(CGContextRef **a1, CGPathDrawingMode mode)
{
  v4 = *a1;
  if ((*(*a1 + 46) & 2) != 0 || *(v4 + 45) >= 2u)
  {
    CGContextBeginTransparencyLayer(*a1[1], 0);
  }

  CGContextDrawPath(*a1[1], mode);
  if ((*(v4 + 46) & 2) != 0 || *(v4 + 45) >= 2u)
  {
    v5 = *a1[1];

    CGContextEndTransparencyLayer(v5);
  }
}

void sub_195DCA0F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::Vec4 *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Vec4>,std::allocator<RB::XML::Value::Vec4>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::Vec4 *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Vec4>,std::allocator<RB::XML::Value::Vec4>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

float64x2_t CG::stroker::stroker(uint64_t a1, float64x2_t *a2, int a3, int a4, uint64_t a5, double a6, double a7, double a8)
{
  *a1 = &unk_1F0A3ED08;
  *(a1 + 40) = a7;
  *(a1 + 48) = a3;
  *(a1 + 52) = a4;
  *(a1 + 56) = a8;
  *(a1 + 64) = a6;
  *(a1 + 80) = a5;
  *(a1 + 88) = 0;
  v8 = a6 * 0.1;
  if (a6 * 0.1 < 0.001)
  {
    v8 = 0.001;
  }

  if (a6 <= 0.0)
  {
    v9 = 0.1;
  }

  else
  {
    v9 = v8;
  }

  v10 = a7 * 0.5;
  v11 = a2[1];
  v12 = vmulq_n_f64(*a2, v10);
  *(a1 + 240) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 72) = v9;
  *(a1 + 8) = v12;
  result = vmulq_n_f64(v11, v10);
  *(a1 + 24) = result;
  return result;
}

__n128 CG::stroker::moveto(__n128 *this, __n128 a2)
{
  if (this[5].n128_u32[2] - 3 <= 1)
  {
    v4 = a2;
    CG::stroker::end_contour(this);
    a2 = v4;
  }

  this[5].n128_u32[2] = 2;
  this[12] = a2;
  result = this[12];
  this[9] = result;
  this[6] = result;
  return result;
}

uint64_t CG::stroker::end_contour(uint64_t this)
{
  v1 = this;
  v2 = *(this + 88);
  if (v2 == 4)
  {
    CG::stroker::add_cap(this, (this + 144), this + 176, 1);
    CG::stroker::unroll_path(v1);
    v4 = vnegq_f64(*(v1 + 128));
    CG::stroker::add_cap(v1, (v1 + 96), &v4, 0);
    v3 = *(**(v1 + 80) + 8);

    return v3();
  }

  else if (v2 == 3)
  {
    v4 = vsubq_f64(*(this + 192), *(this + 96));
    return CG::stroker::add_point(this, (this + 96), &v4);
  }

  return this;
}

__n128 CG::stroker::lineto(CG::stroker *this, __n128 result)
{
  v2 = *(this + 22);
  if (v2)
  {
    if (v2 == 1)
    {
      *(this + 22) = 2;
    }

    *(this + 12) = result;
    v4 = (this + 192);
    if (CG::stroker::add_line_segment(this, this + 9, this + 48))
    {
      result = *v4;
      *(this + 9) = *v4;
    }
  }

  return result;
}

BOOL CG::stroker::add_line_segment(CG::stroker *this, float64x2_t *a2, const Point *a3)
{
  v4 = vsubq_f64(*&a3->v, *a2);
  v23 = v4;
  v5 = vaddvq_f64(vmulq_f64(v4, v4));
  if (v5 <= 0.00000001)
  {
    if (*(this + 22) == 2)
    {
      *(this + 22) = 3;
    }
  }

  else
  {
    v8 = *(this + 8);
    v9 = *(this + 24);
    v10 = vmulq_f64(vextq_s8(v9, v9, 8uLL), v8);
    if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v10, 1), v10)).u8[0])
    {
      v11 = vnegq_f64(vextq_s8(v9, v8, 8uLL));
      v12.f64[0] = *(this + 3);
      v12.f64[1] = *(this + 2);
    }

    else
    {
      v13.f64[0] = *(this + 3);
      v13.f64[1] = *(this + 2);
      v12 = vnegq_f64(v13);
      v11 = vextq_s8(v9, v8, 8uLL);
    }

    v14 = vmlaq_f64(vmulq_f64(v12, vextq_s8(v4, v4, 8uLL)), v4, v11);
    if (v14.f64[0] != 0.0 || v14.f64[1] != 0.0)
    {
      v14 = vdivq_f64(v14, vdupq_lane_s64(COERCE__INT64(sqrt(vaddvq_f64(vmulq_f64(v14, v14)))), 0));
    }

    v22 = v14;
    v15 = vmlaq_n_f64(vnegq_f64(vmulq_laneq_f64(v8, v14, 1)), v9, v14.f64[0]);
    v20 = v15;
    if (*(this + 22) == 4)
    {
      CG::stroker::add_join(this, a2, &v23, &v22);
      v16 = v22;
      *(this + 10) = v23;
      *(this + 11) = v16;
    }

    else
    {
      *(this + 22) = 4;
      v18 = v22;
      v17 = v23;
      *(this + 10) = v23;
      *(this + 11) = v18;
      *(this + 7) = v17;
      *(this + 8) = v18;
      (*(**(this + 10) + 16))(*(this + 10), vaddq_f64(*a2, v15));
    }

    *&v21[0].v = vsubq_f64(*a2, v20);
    CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, v21);
    (*(**(this + 10) + 24))(*(this + 10), vaddq_f64(*&a3->v, v20));
    *(this + 13) = vsubq_f64(*&a3->v, v20);
  }

  return v5 > 0.00000001;
}

float64x2_t CG::stroker::quadto(Point *a1, float64x2_t result, float64x2_t a3)
{
  v3 = a1[22];
  if (v3)
  {
    if (v3 == 1)
    {
      a1[22] = 2;
    }

    *&a1[48].v = a3;
    v5 = &a1[48];
    v6 = vdupq_n_s64(0x3FD5555555555555uLL);
    v7 = vmlaq_f64(result, v6, vsubq_f64(*&a1[36].v, result));
    *&v9[0].v = vmlaq_f64(result, v6, vsubq_f64(a3, result));
    *&v10[0].v = v7;
    CG::Cubic::Cubic(v8, a1 + 36, v10, v9, a1 + 48);
    if (CG::stroker::add_cubic_segment(a1, v8))
    {
      result = *v5;
      *&a1[36].v = *v5;
    }
  }

  return result;
}

uint64_t CG::stroker::add_cubic_segment(CG::stroker *this, float64x2_t *a2)
{
  v4 = a2[1];
  v5 = vsubq_f64(v4, *a2);
  if (vaddvq_f64(vmulq_f64(v5, v5)) <= 0.00000001 && (v6 = a2[2], v7 = vsubq_f64(v6, v4), vaddvq_f64(vmulq_f64(v7, v7)) <= 0.00000001) && (v8 = vsubq_f64(a2[3], v6), vaddvq_f64(vmulq_f64(v8, v8)) <= 0.00000001))
  {
    if (*(this + 22) == 2)
    {
      result = 0;
      *(this + 22) = 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9.f64[0] = CG::Cubic::derivative(a2, 0.0);
    v43.f64[0] = v9.f64[0];
    v43.f64[1] = v10;
    v11 = *(this + 8);
    v12 = *(this + 24);
    v13 = vmulq_f64(vextq_s8(v12, v12, 8uLL), v11);
    if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v13, 1), v13)).u8[0])
    {
      v14 = vnegq_f64(vextq_s8(v12, v11, 8uLL));
      v15.f64[0] = *(this + 3);
      v15.f64[1] = *(this + 2);
    }

    else
    {
      v16.f64[0] = *(this + 3);
      v16.f64[1] = *(this + 2);
      v15 = vnegq_f64(v16);
      v14 = vextq_s8(v12, v11, 8uLL);
    }

    v9.f64[1] = v10;
    v17 = vmlaq_f64(vmulq_f64(v15, vextq_s8(v9, v9, 8uLL)), v9, v14);
    if (v17.f64[0] != 0.0 || v17.f64[1] != 0.0)
    {
      v17 = vdivq_f64(v17, vdupq_lane_s64(COERCE__INT64(sqrt(vaddvq_f64(vmulq_f64(v17, v17)))), 0));
    }

    v42 = v17;
    if (*(this + 22) == 4)
    {
      v40[0] = *a2;
      CG::stroker::add_join(this, v40, &v43, &v42);
    }

    else
    {
      *(this + 22) = 4;
      v18 = v42;
      *(this + 7) = v43;
      *(this + 8) = v18;
      (*(**(this + 10) + 16))(*(this + 10), vaddq_f64(vmlaq_n_f64(vnegq_f64(vmulq_laneq_f64(v11, v17, 1)), v12, v17.f64[0]), *a2));
    }

    v19 = CG::Cubic::derivative(a2, 1.0);
    *(this + 20) = v19;
    *(this + 21) = v20;
    v21 = *(this + 1);
    v22 = *(this + 2);
    v24 = *(this + 3);
    v23 = *(this + 4);
    v25 = v23 * v21 < v24 * v22;
    if (v23 * v21 >= v24 * v22)
    {
      v22 = -v22;
    }

    else
    {
      v23 = -v23;
    }

    if (v25)
    {
      v26 = -v21;
    }

    else
    {
      v24 = -v24;
      v26 = *(this + 1);
    }

    v27 = v23 * v19 + v20 * v24;
    v28 = v22 * v19 + v20 * v26;
    if (v27 != 0.0 || v28 != 0.0)
    {
      v29 = sqrt(v27 * v27 + v28 * v28);
      v27 = v27 / v29;
      v28 = v28 / v29;
    }

    *(this + 22) = v27;
    *(this + 23) = v28;
    v30 = a2[1].f64[0];
    if (((a2[2].f64[0] - a2[3].f64[0]) * (a2[2].f64[1] - a2[1].f64[1]) + (a2[3].f64[1] - a2[2].f64[1]) * (a2[2].f64[0] - v30)) * ((a2[2].f64[0] - v30) * (a2->f64[1] - a2[1].f64[1]) + (a2[2].f64[1] - a2[1].f64[1]) * (v30 - a2->f64[0])) > 0.0 || (v31 = CG::Cubic::inflection_points_classic(a2), v33 = v31, v34 = v32, v31 == -1.0) && v32 == -1.0)
    {
      v35 = this;
      v36 = a2;
    }

    else
    {
      CG::Cubic::split(a2, v31, v40);
      CG::stroker::path_stroke_round_cube(this, v40);
      if (v34 == -1.0)
      {
        v36 = v41;
      }

      else
      {
        CG::Cubic::split(v41, (v34 - v33) / (1.0 - v33), v38);
        CG::stroker::path_stroke_round_cube(this, v38);
        v36 = &v39;
      }

      v35 = this;
    }

    CG::stroker::path_stroke_round_cube(v35, v36);
    return 1;
  }

  return result;
}

__n128 CG::stroker::cubeto(uint64_t a1, __n128 result, __n128 a3, __n128 a4)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    if (v4 == 1)
    {
      *(a1 + 88) = 2;
    }

    *&v8[0].v = a3;
    *&v9[0].v = result;
    *(a1 + 192) = a4;
    v6 = (a1 + 192);
    CG::Cubic::Cubic(v7, (a1 + 144), v9, v8, (a1 + 192));
    if (CG::stroker::add_cubic_segment(a1, v7))
    {
      result = *v6;
      *(a1 + 144) = *v6;
    }
  }

  return result;
}

__n128 CG::stroker::closepath(CG::stroker *this)
{
  v3 = *(this + 22);
  if (v3 >= 2)
  {
    v8 = v1;
    v9 = v2;
    if (v3 == 4)
    {
      CG::stroker::add_line_segment(this, this + 9, this + 24);
      *(this + 9) = *(this + 6);
      CG::stroker::add_join(this, this + 6, this + 7, this + 8);
      (*(**(this + 10) + 8))(*(this + 10));
      (*(**(this + 10) + 16))(*(this + 10), *(this + 13));
      CG::stroker::unroll_path(this);
      (*(**(this + 10) + 8))(*(this + 10));
    }

    else
    {
      v5 = (this + 96);
      v7 = vsubq_f64(*(this + 12), *(this + 6));
      CG::stroker::add_point(this, this + 6, &v7);
      *(this + 9) = *v5;
    }

    *(this + 22) = 1;
    result = *(this + 6);
    *(this + 12) = result;
  }

  return result;
}

uint64_t CG::stroker::add_join(CG::stroker *a1, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4)
{
  v5 = *(a1 + 13);
  if (v5)
  {
    if (v5 == 1)
    {

      return CG::stroker::add_round_join(a1, a2, a3, a4->f64);
    }

    else
    {
      if (v5 != 2)
      {
        abort();
      }

      return CG::stroker::add_bevel_join(a1, a2, a3, a4->f64);
    }
  }

  else
  {

    return CG::stroker::add_miter_join(a1, a2, a3, a4);
  }
}

uint64_t CG::stroker::unroll_path(uint64_t this)
{
  v1 = this;
  v2 = *(this + 232);
  for (i = v2 - 1; i >= 0; --i)
  {
    v4 = *(v1 + 224);
    v5 = v4 + 24 * i;
    if (*v5 == 3)
    {
      i = v2 - 3;
      this = (*(**(v1 + 80) + 40))(*(v1 + 80), *(v4 + 24 * v2 - 64), *(v4 + 24 * v2 - 40), *(v5 + 8));
    }

    else if (*v5 == 1)
    {
      this = (*(**(v1 + 80) + 24))(*(v1 + 80), *(v5 + 8));
    }

    v2 = i;
  }

  *(v1 + 232) = 0;
  return this;
}

uint64_t CG::stroker::add_point(uint64_t result, float64x2_t *a2, uint64_t a3)
{
  v3 = *(result + 48);
  if (v3 <= 6 && ((1 << v3) & 0x69) != 0)
  {
    return result;
  }

  v6 = *a3 == 0.0;
  if (*(a3 + 8) != 0.0)
  {
    v6 = 0;
  }

  v7 = vdup_n_s32(v6);
  v8.i64[0] = v7.u32[0];
  v8.i64[1] = v7.u32[1];
  __asm { FMOV            V2.2D, #1.0 }

  v13 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v8, 0x3FuLL)), _Q2, *a3);
  v14 = *(result + 8);
  v15 = *(result + 24);
  v16 = vmulq_f64(vextq_s8(v15, v15, 8uLL), v14);
  if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v16, 1), v16)).u8[0])
  {
    v17 = vnegq_f64(vextq_s8(v15, v14, 8uLL));
    v18.f64[0] = *(result + 24);
    v18.f64[1] = *(result + 16);
  }

  else
  {
    v19.f64[0] = *(result + 24);
    v19.f64[1] = *(result + 16);
    v18 = vnegq_f64(v19);
    v17 = vextq_s8(v15, v14, 8uLL);
  }

  v20 = vmlaq_f64(vmulq_f64(v18, vextq_s8(v13, v13, 8uLL)), v13, v17);
  if (v20.f64[0] != 0.0 || v20.f64[1] != 0.0)
  {
    v20 = vdivq_f64(v20, vdupq_lane_s64(COERCE__INT64(sqrt(vaddvq_f64(vmulq_f64(v20, v20)))), 0));
  }

  v21 = vmlaq_n_f64(vnegq_f64(vmulq_laneq_f64(v14, v20, 1)), v15, v20.f64[0]);
  v22 = vmlaq_laneq_f64(vmulq_n_f64(v14, v20.f64[0]), v15, v20, 1);
  v33 = v22;
  v32 = v21;
  switch(v3)
  {
    case 4u:
      v23 = result + 80;
      (*(**(result + 80) + 16))(*(result + 80), vaddq_f64(*a2, v21));
      (*(**v23 + 24))(vaddq_f64(*a2, v33));
      v25 = *a2;
      v26 = v32;
      break;
    case 2u:
      v23 = result + 80;
      (*(**(result + 80) + 16))(*(result + 80), vaddq_f64(vsubq_f64(v21, v22), *a2));
      v31 = vaddq_f64(v33, v32);
      (*(**v23 + 24))(vaddq_f64(v31, *a2));
      (*(**v23 + 24))(vaddq_f64(vsubq_f64(v33, v32), *a2));
      v25 = *a2;
      v26 = v31;
      break;
    case 1u:
      v23 = result + 80;
      (*(**(result + 80) + 16))(*(result + 80), vaddq_f64(*a2, v21));
      v24 = vdupq_n_s64(0x3FE1AC5111534A22uLL);
      v29 = vmulq_f64(v33, v24);
      v28 = vaddq_f64(v29, v32);
      v30 = vmulq_f64(v32, v24);
      (*(**v23 + 40))(vaddq_f64(v28, *a2), vaddq_f64(vaddq_f64(*a2, v33), v30));
      (*(**v23 + 40))(vaddq_f64(vsubq_f64(v33, v30), *a2), vaddq_f64(vsubq_f64(*a2, v32), v29));
      (*(**v23 + 40))(vsubq_f64(*a2, v28), vsubq_f64(vsubq_f64(*a2, v33), v30));
      (*(**v23 + 40))(vaddq_f64(vsubq_f64(v30, v33), *a2), vsubq_f64(vaddq_f64(*a2, v32), v29));
      goto LABEL_21;
    default:
      abort();
  }

  (*(**v23 + 24))(vsubq_f64(v25, v26));
LABEL_21:
  v27 = *(**v23 + 8);

  return v27();
}

uint64_t CG::stroker::endpath(CG::stroker *this)
{
  if ((*(this + 22) - 3) <= 1)
  {
    CG::stroker::end_contour(this);
  }

  v2 = ***(this + 10);

  return v2();
}

uint64_t CG::stroker::add_cap(uint64_t a1, float64x2_t *a2, uint64_t a3, char a4)
{
  v6 = *(a3 + 8);
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v7, *&v6)), v8, *a3);
  v10 = *(a1 + 48);
  if (!v10 || vaddvq_f64(vmulq_f64(v9, v9)) <= 0.0025)
  {
    v12 = vsubq_f64(*a2, v9);
LABEL_19:
    v14 = *(**(a1 + 80) + 24);

    return v14(v12);
  }

  v11 = vmlaq_f64(vmulq_n_f64(v7, *a3), vdupq_lane_s64(v6, 0), v8);
  v24 = v9;
  if (v10 > 3)
  {
    if (v10 != 4)
    {
      if (v10 == 5)
      {
        if (a4)
        {
LABEL_13:
          v13 = vaddq_f64(*a2, v11);
LABEL_18:
          (*(**(a1 + 80) + 24))(*(a1 + 80), v13);
          v12 = vsubq_f64(*a2, v24);
          goto LABEL_19;
        }
      }

      else
      {
        if (v10 != 6)
        {
          goto LABEL_25;
        }

        if ((a4 & 1) == 0)
        {
          goto LABEL_13;
        }
      }
    }

    v22 = v11;
    (*(**(a1 + 80) + 24))(*(a1 + 80), vaddq_f64(vaddq_f64(v11, v9), *a2));
    (*(**(a1 + 80) + 24))(*a2);
LABEL_17:
    v13 = vaddq_f64(vsubq_f64(v22, v24), *a2);
    goto LABEL_18;
  }

  if (v10 != 1)
  {
    if (v10 != 2)
    {
      if (v10 != 3)
      {
LABEL_25:
        abort();
      }

      goto LABEL_13;
    }

    v22 = v11;
    (*(**(a1 + 80) + 24))(vaddq_f64(vaddq_f64(v11, v9), *a2));
    goto LABEL_17;
  }

  v16 = vdupq_n_s64(0x3FE1AC5111534A22uLL);
  v20 = vmulq_f64(v9, v16);
  v21 = vmulq_f64(v11, v16);
  v23 = v11;
  (*(**(a1 + 80) + 40))(*(a1 + 80), vaddq_f64(v21, vaddq_f64(v9, *a2)), vaddq_f64(vaddq_f64(*a2, v11), v20));
  v17 = vaddq_f64(vsubq_f64(v23, v20), *a2);
  v18 = vaddq_f64(vsubq_f64(*a2, v24), v21);
  v19 = *(**(a1 + 80) + 40);

  return v19(v17, v18);
}

uint64_t CG::stroker::add_bevel_join(uint64_t result, float64x2_t *a2, float64x2_t *a3, double *a4)
{
  v6 = *(result + 24);
  v7 = *(result + 8);
  v8 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v7, *(result + 184))), v6, *(result + 176));
  v9 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v7, a4[1])), v6, *a4);
  v10 = vsubq_f64(v8, v9);
  if (vaddvq_f64(vmulq_f64(v10, v10)) >= *(result + 72) * *(result + 72))
  {
    v24 = v4;
    v25 = v5;
    v14 = result;
    *(result + 208) = vsubq_f64(*a2, v9);
    v22 = v9;
    *&v23[0].v = vsubq_f64(*a2, v8);
    v21 = v8;
    CG::stroker::push_opposite_element(result, kCGPathElementAddLineToPoint, v23);
    v15 = v22;
    v16 = vsqrtq_f64(vpaddq_f64(vmulq_f64(*(v14 + 160), *(v14 + 160)), vmulq_f64(v21, v21)));
    if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v16, 1), v16)).u8[0] & 1) != 0 || (v17 = vsqrtq_f64(vpaddq_f64(vmulq_f64(*a3, *a3), vmulq_f64(v22, v22))), (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v17, 1), v17)).u8[0]))
    {
      v18 = vmulq_f64(vextq_s8(*a4, *a4, 8uLL), *(v14 + 176));
      if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v18, 1), v18)).u8[0])
      {
        CG::stroker::push_opposite_element(v14, kCGPathElementAddLineToPoint, a2);
      }

      else
      {
        (*(**(v14 + 80) + 24))(*(v14 + 80), *a2);
      }

      v15 = v22;
    }

    v19 = vaddq_f64(*a2, v15);
    v20 = *(**(v14 + 80) + 24);

    return v20(v19);
  }

  return result;
}

__n128 CG::stroker::push_opposite_element(CG::stroker *this, CGPathElementType a2, const Point *a3)
{
  *&v8[4] = *&a3->v;
  v5 = *(this + 29);
  if (*(this + 30) < (v5 + 1))
  {
    RB::vector<std::pair<char const*,std::shared_ptr<RB::XML::Value::Base>>,0ul,unsigned long>::reserve_slow(this + 224, v5 + 1);
    v5 = *(this + 29);
  }

  v6 = *(this + 28) + 24 * v5;
  *v6 = a2;
  result = *v8;
  *(v6 + 4) = *v8;
  *(v6 + 20) = *&v8[16];
  ++*(this + 29);
  return result;
}

uint64_t CG::stroker::add_miter_join(CG::stroker *this, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4)
{
  v8 = *(this + 11);
  v9 = *(this + 24);
  v10 = *(this + 8);
  v11 = vmlaq_n_f64(vnegq_f64(vmulq_laneq_f64(v10, v8, 1)), v9, v8.f64[0]);
  v12 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v10, a4->f64[1])), v9, a4->f64[0]);
  v13 = vsubq_f64(v11, v12);
  if (vaddvq_f64(vmulq_f64(v13, v13)) >= 0.05)
  {
    *(this + 13) = vsubq_f64(*a2, v12);
    v14 = vmulq_f64(*a4, v8);
    if (*(this + 7) * *(this + 7) * (v14.f64[0] + 1.0 + v14.f64[1]) >= 2.0)
    {
      v32 = v11;
      v33 = v12;
      *&v36[0].v = vsubq_f64(*a2, v11);
      CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, v36);
      v16 = vmulq_f64(vextq_s8(*a4, *a4, 8uLL), *(this + 11));
      if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v16, 1), v16)).u8[0])
      {
        v17 = v32;
        v18 = v33;
        v19 = vsqrtq_f64(vpaddq_f64(vmulq_f64(*(this + 10), *(this + 10)), vmulq_f64(v17, v17)));
        if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v19, 1), v19)).u8[0] & 1) != 0 || (v20 = vsqrtq_f64(vpaddq_f64(vmulq_f64(*a3, *a3), vmulq_f64(v33, v33))), (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v20, 1), v20)).u8[0]))
        {
          CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, a2);
          v17 = v32;
          v18 = v33;
        }

        v21 = *a2;
        v22 = vaddq_f64(*a2, v17);
        v23 = *(this + 10);
        *&v36[0].v = v22;
        v37 = v23;
        v24 = *a3;
        v34 = vaddq_f64(v21, v18);
        v35 = v24;
        CG::intersection(v36, &v34, v38);
        if (v38[0] != 1)
        {
          return (*(**(this + 10) + 24))(*(this + 10), vaddq_f64(*a2, v33));
        }

        v25 = *(this + 10);
        v26 = v39;
      }

      else
      {
        v27 = *a2;
        v28 = *(this + 10);
        *&v36[0].v = vsubq_f64(*a2, v32);
        v37 = v28;
        v29 = *a3;
        v34 = vsubq_f64(v27, v33);
        v35 = v29;
        CG::intersection(v36, &v34, v38);
        if (v38[0] == 1)
        {
          CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, &v39);
        }

        v30 = vsqrtq_f64(vpaddq_f64(vmulq_f64(*(this + 10), *(this + 10)), vmulq_f64(v32, v32)));
        if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v30, 1), v30)).u8[0] & 1) == 0)
        {
          v31 = vsqrtq_f64(vpaddq_f64(vmulq_f64(*a3, *a3), vmulq_f64(v33, v33)));
          if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v31, 1), v31)).u8[0] & 1) == 0)
          {
            return (*(**(this + 10) + 24))(*(this + 10), vaddq_f64(*a2, v33));
          }
        }

        v25 = *(this + 10);
        v26 = *a2;
      }

      (*(*v25 + 24))(v25, v26);
      return (*(**(this + 10) + 24))(*(this + 10), vaddq_f64(*a2, v33));
    }
  }

  return CG::stroker::add_bevel_join(this, a2, a3, a4->f64);
}

uint64_t CG::stroker::add_round_join(CG::stroker *this, float64x2_t *a2, float64x2_t *a3, double *a4)
{
  v8 = *(this + 22);
  v7 = *(this + 23);
  v9 = *(this + 24);
  v10 = *(this + 8);
  v11 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v10, v7)), v9, v8);
  v12 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v10, a4[1])), v9, *a4);
  v13 = vsubq_f64(v11, v12);
  if (vaddvq_f64(vmulq_f64(v13, v13)) >= 0.05)
  {
    v36 = v12;
    *(this + 13) = vsubq_f64(*a2, v12);
    v15 = *a4;
    v16 = a4[1];
    v17 = *a4 + v8;
    v18 = v16 + v7;
    v19 = sqrt(v17 * v17 + v18 * v18);
    if (v19 >= 0.001)
    {
      v21 = 2.66666667 / v19;
      if (vabdd_f64(v7, v16) <= vabdd_f64(v8, v15))
      {
        v20 = (1.33333333 - v21) * v18 / (v8 - v15);
      }

      else
      {
        v20 = (v21 + -1.33333333) * v17 / (v7 - v16);
      }
    }

    else
    {
      v20 = -1.33333333;
    }

    v34 = vmlaq_n_f64(vmulq_n_f64(v10, -(v7 - v20 * v8)), v9, v8 + v20 * v7);
    v35 = v11;
    v22 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v10, v16 + v20 * v15)), v9, v15 - v20 * v16);
    if (v16 * v8 >= v15 * v7 || v19 < 0.001)
    {
      *&v37[0].v = vsubq_f64(*a2, v22);
      CG::stroker::push_opposite_element(this, kCGPathElementAddCurveToPoint, v37);
      *&v37[0].v = vsubq_f64(*a2, v34);
      CG::stroker::push_opposite_element(this, kCGPathElementAddCurveToPoint, v37);
      *&v37[0].v = vsubq_f64(*a2, v35);
      CG::stroker::push_opposite_element(this, kCGPathElementAddCurveToPoint, v37);
      v29 = vsqrtq_f64(vpaddq_f64(vmulq_f64(*(this + 10), *(this + 10)), vmulq_f64(v35, v35)));
      if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v29, 1), v29)).u8[0] & 1) != 0 || (v30 = vsqrtq_f64(vpaddq_f64(vmulq_f64(*a3, *a3), vmulq_f64(v36, v36))), (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v30, 1), v30)).u8[0]))
      {
        (*(**(this + 10) + 24))(*(this + 10), *a2);
      }

      v31 = vaddq_f64(*a2, v36);
      v32 = *(**(this + 10) + 24);

      return v32(v31);
    }

    else
    {
      v33 = v22;
      *&v37[0].v = vsubq_f64(*a2, v11);
      CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, v37);
      v23 = vsqrtq_f64(vpaddq_f64(vmulq_f64(*(this + 10), *(this + 10)), vmulq_f64(v35, v35)));
      if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v23, 1), v23)).u8[0] & 1) != 0 || (v24 = vsqrtq_f64(vpaddq_f64(vmulq_f64(*a3, *a3), vmulq_f64(v36, v36))), (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v24, 1), v24)).u8[0]))
      {
        CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, a2);
      }

      v25 = vaddq_f64(*a2, v34);
      v26 = vaddq_f64(*a2, v33);
      v27 = vaddq_f64(*a2, v36);
      v28 = *(**(this + 10) + 40);

      return v28(v25, v26, v27);
    }
  }

  else
  {

    return CG::stroker::add_bevel_join(this, a2, a3, a4);
  }
}

double CG::stroker::offset_normal(double *a1, float64x2_t *this, double *a3, double a4)
{
  v6 = CG::Cubic::derivative(this, a4);
  if (a3)
  {
    *a3 = v6;
    a3[1] = v7;
  }

  v8 = a1[1];
  v9 = a1[2];
  v11 = a1[3];
  v10 = a1[4];
  if (v10 * v8 >= v11 * v9)
  {
    v14 = -v9;
    v15 = -v11;
    v12 = a1[4];
    v13 = a1[1];
  }

  else
  {
    v12 = -v10;
    v13 = -v8;
    v14 = a1[2];
    v15 = a1[3];
  }

  v16 = v12 * v6 + v15 * v7;
  v17 = v14 * v6 + v13 * v7;
  v18 = -v17;
  if (v17 != 0.0 || v16 != 0.0)
  {
    v19 = sqrt(v16 * v16 + v17 * v17);
    v18 = v18 / v19;
    v16 = v16 / v19;
  }

  return v18 * v8 + v16 * v11;
}

void CG::stroker::path_stroke_round_cube_offset(CG::stroker *this, float64x2_t *a2, int a3, int a4)
{
  v7 = a2[3].f64[0];
  v8 = a2[3].f64[1];
  v9 = a2->f64[0];
  v10 = a2->f64[1];
  if ((v7 - a2->f64[0]) * (v7 - a2->f64[0]) + (v8 - v10) * (v8 - v10) <= 0.00000001)
  {
    v45.n128_f64[0] = CG::stroker::offset_normal(this, a2, 0, 1.0) + v7;
    v45.n128_f64[1] = v40 + v8;
    if (a4 < 0)
    {
      CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, &v45);
      v41 = a2->f64[0];
      v42 = a2->f64[1];
      *(this + 26) = CG::stroker::offset_normal(this, a2, 0, 0.0) + v41;
      *(this + 27) = v43 + v42;
    }

    else
    {
      (*(**(this + 10) + 24))(*(this + 10), v45);
    }
  }

  else
  {
    v70 = 0uLL;
    v12 = CG::stroker::offset_normal(this, a2, &v70, 0.0) + v9;
    v14 = v13 + v10;
    *&v69[0].v = v12;
    *&v69[2].v = v13 + v10;
    v68 = 0uLL;
    v15 = a2[3].f64[0];
    v16 = a2[3].f64[1];
    v17 = CG::stroker::offset_normal(this, a2, &v68, 1.0) + v15;
    v19 = v18 + v16;
    *&v67[0].v = v17;
    *&v67[2].v = v18 + v16;
    v66 = 0uLL;
    v20 = CG::Cubic::evaluate(a2, 0.5);
    v22 = v21;
    v23 = CG::stroker::offset_normal(this, a2, &v66, 0.5) + v20;
    v25 = v24 + v22;
    v65.f64[0] = v23 + -(v12 + v17 - v23 * 2.0) * 0.166666667;
    v65.f64[1] = v24 + v22 + -(v14 + v19 - (v24 + v22) * 2.0) * 0.166666667;
    v45 = *&v69[0].v;
    v46 = v70;
    v50 = v65;
    v51 = v66;
    CG::intersection(&v45, &v50, v63);
    if (v63[0])
    {
      v26 = &v64;
    }

    else
    {
      v26 = &v65;
    }

    *&v62[0].v = *v26;
    v45 = *&v67[0].v;
    v46 = v68;
    v50 = v65;
    v51 = v66;
    CG::intersection(&v45, &v50, v60);
    if (v60[0])
    {
      v27 = &v61;
    }

    else
    {
      v27 = &v65;
    }

    *&v59[0].v = *v27;
    v28 = __OFSUB__(a3, 1);
    v29 = a3 - 1;
    if (v29 < 0 != v28)
    {
LABEL_33:
      if (a4 < 0)
      {
        CG::stroker::push_opposite_element(this, kCGPathElementAddCurveToPoint, v62);
        CG::stroker::push_opposite_element(this, kCGPathElementAddCurveToPoint, v59);
        CG::stroker::push_opposite_element(this, kCGPathElementAddCurveToPoint, v67);
        *(this + 13) = *&v69[0].v;
      }

      else
      {
        (*(**(this + 10) + 40))(*(this + 10), *&v62[0].v, *&v59[0].v, *&v67[0].v);
      }
    }

    else
    {
      CG::Cubic::Cubic(&v50, v69, v62, v59, v67);
      v30 = 0;
      while (1)
      {
        v31 = *&CG::stroker::path_stroke_round_cube_offset(CG::Cubic const&,int,int)::samples[v30];
        v32 = v25;
        v33 = v23;
        if (v30 * 8)
        {
          v34 = CG::Cubic::evaluate(a2, *&CG::stroker::path_stroke_round_cube_offset(CG::Cubic const&,int,int)::samples[v30]);
          v36 = v35;
          v33 = CG::stroker::offset_normal(this, a2, 0, v31) + v34;
          v32 = v37 + v36;
        }

        *&v48[0].v = v33;
        v49 = v32;
        v38 = (*&v33 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v32 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
        v39 = !v38;
        if ((*&v50.f64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v50.f64[1] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v51 & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(&v51 + 1) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v52 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v53 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v54 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v55 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v56 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v57 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if ((v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            v39 = 1;
          }

          if (!v39 && (CG::Cubic::is_near(&v50, v48, v31, *(this + 9)) & 1) == 0)
          {
            break;
          }
        }

        if (++v30 == 5)
        {
          goto LABEL_33;
        }
      }

      CG::Cubic::split(a2, 0.5, &v45);
      if (a4 < 0)
      {
        CG::stroker::path_stroke_round_cube_offset(this, v47, v29, a4);
        v44 = &v45;
      }

      else
      {
        CG::stroker::path_stroke_round_cube_offset(this, &v45, v29, a4);
        v44 = v47;
      }

      CG::stroker::path_stroke_round_cube_offset(this, v44, v29, a4);
    }
  }
}

double CG::stroker::path_stroke_round_cube_chord(CG::stroker *this, float64x2_t *a2)
{
  v4 = a2->f64[0];
  v5 = a2->f64[1];
  v14[0] = v4 - CG::stroker::offset_normal(this, a2, 0, 0.0);
  v14[1] = v5 - v6;
  CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, v14);
  v7 = a2[3].f64[0];
  v8 = a2[3].f64[1];
  v9 = CG::stroker::offset_normal(this, a2, 0, 1.0);
  v11 = v10;
  v12.n128_f64[0] = v9 + v7;
  v12.n128_f64[1] = v10 + v8;
  (*(**(this + 10) + 24))(*(this + 10), v12);
  result = v7 - v9;
  *(this + 26) = v7 - v9;
  *(this + 27) = v8 - v11;
  return result;
}

double CG::stroker::path_stroke_round_cube(CG::stroker *this, float64x2_t *a2)
{
  v4 = &a2[1];
  v5 = a2[1].f64[0];
  v6 = a2[1].f64[1];
  v7 = &a2[2];
  v8 = a2[2].f64[0];
  v9 = a2[2].f64[1];
  v10 = &a2[3];
  v11 = v5 - a2->f64[0];
  v12 = v6 - a2->f64[1];
  v13 = v8 - v5;
  v14 = v9 - v6;
  v15 = a2[3].f64[0] - v8;
  if (v13 * v11 + (v9 - v6) * v12 >= 0.0 && v15 * v13 + (a2[3].f64[1] - v9) * v14 >= 0.0)
  {
    CG::stroker::path_stroke_round_cube_offset(this, a2, 4, 1);
    CG::Cubic::Cubic(&v17, v10, v7, v4, a2);
    CG::stroker::path_stroke_round_cube_offset(this, &v17, 4, -1);
  }

  else if (v11 * v11 + v12 * v12 <= 0.00000001 && v13 * v13 + v14 * v14 <= 0.00000001 && v15 * v15 + (a2[3].f64[1] - v9) * (a2[3].f64[1] - v9) <= 0.00000001)
  {

    return CG::stroker::path_stroke_round_cube_chord(this, a2);
  }

  else
  {
    CG::Cubic::split(a2, 0.5, &v17);
    if (a2->f64[0] != v17.f64[0] || a2->f64[1] != v17.f64[1] || *&v4->v != v18 || a2[1].f64[1] != v19 || *&v7->v != v20 || a2[2].f64[1] != v21 || *&v10->v != v22 || (result = v23, a2[3].f64[1] != v23))
    {
      CG::stroker::path_stroke_round_cube(this, &v17);
      if (a2->f64[0] != v24[0] || a2->f64[1] != v24[1] || *&v4->v != v24[2] || a2[1].f64[1] != v24[3] || *&v7->v != v24[4] || a2[2].f64[1] != v24[5] || *&v10->v != v24[6] || (result = v25, a2[3].f64[1] != v25))
      {
        CG::stroker::path_stroke_round_cube(this, v24);
      }
    }
  }

  return result;
}

int8x16_t RB::Fill::Gradient::concat(RB::Fill::Gradient *this, float64x2_t *a2, RB::Heap *a3)
{
  result = vandq_s8(vandq_s8(vceqq_f64(a2[1], xmmword_195E42770), vceqq_f64(*a2, xmmword_195E42760)), vceqzq_f64(a2[2]));
  result.i64[0] = vandq_s8(vdupq_laneq_s64(result, 1), result).u64[0];
  if ((result.i64[0] & 0x8000000000000000) == 0)
  {
    v5 = *(this + 2);
    if (v5)
    {
      *result.i64 = RB::operator*(v5, a2);
      v6 = *(this + 2);
      *v6 = result;
      *(v6 + 16) = v7;
      *(v6 + 32) = v8;
    }

    else
    {
      v9 = (*(a3 + 2) + 15) & 0xFFFFFFFFFFFFFFF0;
      if (v9 + 48 > *(a3 + 3))
      {
        v11 = a2;
        v9 = RB::Heap::alloc_slow(a3, 0x30uLL, 15);
        a2 = v11;
      }

      else
      {
        *(a3 + 2) = v9 + 48;
      }

      result = *a2;
      v10 = a2[2];
      *(v9 + 16) = a2[1];
      *(v9 + 32) = v10;
      *v9 = result;
      *(this + 2) = v9;
    }
  }

  return result;
}

float RB::Fill::Gradient::append_color_fn(RB::Fill::Gradient *this, const RB::ColorMatrixFn *a2, uint64_t a3)
{
  v3 = a3;
  v32 = *MEMORY[0x1E69E9840];
  (*(*a2 + 8))(a2, v29, *(this + 57), a3, 0.0);
  v6 = 1.0;
  v7 = (v3 >> 2) & 1;
  if ((v3 & 0x80000000) != 0)
  {
    v6 = RB::ColorMatrix::remove_alpha_factor(v29, (v3 & 4) != 0);
  }

  LOBYTE(v30[0]) = 0;
  v31 = 0;
  if (*(this + 58) == 1)
  {
    v8 = RB::color_flags_space(v3, 0);
    if ((v8 & 0x100) != 0)
    {
      v10 = v8;
      v9.i64[0] = 0;
      RB::ColorSpace::Conversion::Conversion(v30, *(this + 57), v8, v9, 0.0);
      v31 = 1;
      *(this + 57) = v10;
    }
  }

  *(this + 59) = 1;
  if (*this)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(*(this + 1) + v11);
      if (v31 == 1)
      {
        v25 = HIWORD(*(*(this + 1) + v11));
        v13 = RB::ColorSpace::Conversion::operator()(v30, v13);
        v13.i16[3] = v25;
      }

      v26 = v13;
      v27 = 0;
      v28 = 0;
      RB::Fill::Color::apply_color_matrix(&v26, v29, v7);
      *(*(this + 1) + v11) = v26;
      v14 = *(this + 59);
      if (*&v26.i16[3] != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
      {
        v14 = 0;
      }

      *(this + 59) = v14;
      ++v12;
      v11 += 16;
    }

    while (v12 < *this);
  }

  _S0 = RB::ColorMatrixFn::content_headroom(a2);
  if (_S0 > 1.0)
  {
    _H1 = *(this + 24);
    __asm
    {
      FCVT            S2, H1
      FCVT            H3, S0
    }

    if (_S0 >= _S2)
    {
      v23 = _H3;
    }

    else
    {
      v23 = *(this + 24);
    }

    *(this + 24) = v23;
  }

  return v6;
}

uint64_t RB::Fill::Gradient::can_mix(RB::Fill::Gradient *this, const RB::Fill::Gradient *a2, const RB::AffineTransform *a3)
{
  if (*(this + 56) != *(a2 + 56))
  {
    return 0;
  }

  if (((*(a2 + 13) ^ *(this + 13)) & 0xFC7) != 0)
  {
    return 0;
  }

  result = RB::can_mix(*(this + 2), *(a2 + 2), a3);
  if (result >= 4u)
  {
    v6 = *this;
    if (*this != *a2)
    {
      return 2 * ((*(this + 13) & 0xF00u) - 256 > 0x1FF);
    }

    v7 = vand_s8(vceq_f32(*(this + 32), *(a2 + 32)), vceq_f32(*(this + 24), *(a2 + 24)));
    if ((vpmin_u32(v7, v7).u32[0] & 0x80000000) != 0 && *(this + 10) == *(a2 + 10))
    {
      v8 = *(this + 11) == *(a2 + 11);
      if (v6)
      {
LABEL_13:
        v9 = 0;
        v10 = (*(a2 + 1) + 12);
        do
        {
          v8 = v8 && (v11 = *(this + 1), (vminv_u16(vceq_f16(*(v11 + v9), *(v10 - 3))) & 0x8000) != 0) && (v12 = v11 + v9, *(v12 + 8) == *(v10 - 1)) && *(v12 + 12) == *v10;
          v10 += 4;
          v9 += 16;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v8 = 0;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    if (v8)
    {
      return 4;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void RB::Fill::Gradient::mix(RB::Fill::Gradient *this, const RB::DisplayList::Interpolator::Op *a2, const RB::Fill::Gradient *a3, float32x4_t a4, RB::Heap *a5)
{
  if ((*a2 & 0xELL) == 2)
  {
    RB::Fill::Gradient::mix(this, a3, a4, a5);
  }
}

void RB::Fill::Gradient::mix(RB::Fill::Gradient *this, const RB::Fill::Gradient *a2, float32x4_t a3, RB::Heap *a4)
{
  v114 = *MEMORY[0x1E69E9840];
  _H1 = *(a2 + 24);
  v95 = a3;
  v8 = 1.0 - a3.f32[0];
  __asm { FCMP            H2, #0 }

  if (!_ZF)
  {
    __asm { FCMP            H1, #0 }

    if (_ZF)
    {
      _H1 = _H2;
    }

    else
    {
      __asm
      {
        FCVT            S2, H2
        FCVT            S1, H1
      }

      _S1 = (v8 * _S2) + (_S1 * v95.f32[0]);
      __asm { FCVT            H1, S1 }
    }
  }

  *(this + 24) = _H1;
  _H1 = *(a2 + 25);
  __asm { FCMP            H2, #0 }

  if (!_ZF)
  {
    __asm { FCMP            H1, #0 }

    if (_ZF)
    {
      _H1 = _H2;
    }

    else
    {
      __asm
      {
        FCVT            S2, H2
        FCVT            S1, H1
      }

      _S0 = (v8 * _S2) + (_S1 * v95.f32[0]);
      __asm { FCVT            H1, S0 }
    }
  }

  *(this + 25) = _H1;
  v24 = *(this + 32);
  *(this + 3) = vmla_n_f32(*(this + 24), vsub_f32(*(a2 + 24), *(this + 24)), v95.f32[0]);
  *(this + 4) = vmla_n_f32(v24, vsub_f32(*(a2 + 32), v24), v95.f32[0]);
  *(this + 5) = vmla_n_f32(*(this + 40), vsub_f32(*(a2 + 40), *(this + 40)), v95.f32[0]);
  v25 = *(this + 2);
  if (v25)
  {
    v26 = *(a2 + 2);
    if (v26)
    {
      RB::mix(v25, v26, a4, v95.f32[0]);
      v27 = *(this + 2);
      *v27 = a3;
      *(v27 + 16) = v28;
      *(v27 + 32) = v29;
    }
  }

  v30 = *this;
  v31 = *a2;
  if (*this == *a2)
  {
    *(this + 59) = 1;
    if (v30)
    {
      v32 = 0;
      v33 = 0;
      v34 = vdup_lane_s32(*v95.f32, 0);
      v35 = vdup_n_s32(0x3B808081u);
      __asm { FMOV            V14.2S, #1.0 }

      v37 = vdup_n_s32(0x437F0000u);
      do
      {
        v38 = *(this + 1);
        v39 = *(a2 + 1);
        v40 = *(this + 57);
        __dst = *(v38 + v32);
        v109 = 0;
        v110 = v40;
        v41 = *(a2 + 57);
        v105 = *(v39 + v32);
        v106 = 0;
        v107 = v41;
        RB::Fill::Color::mix(&__dst, &v105, 0, v95);
        *(v38 + v32) = __dst;
        v42 = *(this + 59);
        if (*(&__dst + 3) != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
        {
          v42 = 0;
        }

        *(this + 59) = v42;
        v43 = *(this + 13);
        if (((*(a2 + 13) | v43) & 0x10000) != 0)
        {
          *(v38 + v32 + 8) = *(v38 + v32 + 8) + ((*(v39 + v32 + 8) - *(v38 + v32 + 8)) * v95.f32[0]);
        }

        v44 = v43 & 0xF00;
        if (v44 == 512)
        {
          v45.i32[0] = *(v38 + v32 + 12);
          v45.i32[1] = *(v38 + v32 + 13);
          v46 = vmul_f32(vcvt_f32_u32(v45), v35);
          v47.i32[0] = *(v39 + v32 + 12);
          v47.i32[1] = *(v39 + v32 + 13);
          v48 = vmla_f32(v46, v34, vmla_f32(vneg_f32(v46), v35, vcvt_f32_u32(v47)));
          v47.i32[0] = *(v38 + v32 + 14);
          v47.i32[1] = *(v38 + v32 + 15);
          v49.i32[0] = *(v39 + v32 + 14);
          v49.i32[1] = *(v39 + v32 + 15);
          v50 = vmul_f32(vcvt_f32_u32(v47), v35);
          v51 = vmla_f32(v50, v34, vmla_f32(vneg_f32(v50), v35, vcvt_f32_u32(v49)));
          v52 = 0.0;
          if (*v48.i32 >= 0.0)
          {
            v53 = *v48.i32;
          }

          else
          {
            v53 = 0.0;
          }

          if (v53 > 1.0)
          {
            v53 = 1.0;
          }

          v54 = (v53 * 255.0) + 0.5;
          if (*v51.i32 >= 0.0)
          {
            v52 = *v51.i32;
          }

          if (v52 > 1.0)
          {
            v52 = 1.0;
          }

          v55 = vzip2_s32(v51, v48);
          v56 = vbic_s8(v55, vcltz_f32(v55));
          v57 = vshl_u32(vcvt_s32_f32(vmla_f32(0x3F0000003F000000, v37, vbsl_s8(vcgt_f32(v56, _D14), _D14, v56))), 0x800000018);
          *(v38 + v32 + 12) = v57.i32[0] | (((v52 * 255.0) + 0.5) << 16) | v57.i32[1] | v54;
        }

        else if (v44 == 256)
        {
          *(v38 + v32 + 12) = *(v38 + v32 + 12) + ((*(v39 + v32 + 12) - *(v38 + v32 + 12)) * v95.f32[0]);
        }

        ++v33;
        v32 += 16;
      }

      while (v33 < *this);
    }

    *(this + 13) |= *(a2 + 13) & 0x10000;
    return;
  }

  v111 = 0;
  v112 = 0;
  v113 = 16;
  v58 = (*&v30 | v31);
  if (!(*&v30 | v31))
  {
    v63 = 1;
    goto LABEL_72;
  }

  v59 = 0;
  v60 = 0;
  v94 = 0x3010200u >> ((*(this + 13) >> 3) & 0x18);
  v61 = v31 != 0;
  v62 = *&v30 != 0;
  v63 = 1;
  do
  {
    if (v62)
    {
      v64 = *(*(this + 1) + 16 * v59 + 8);
      if (!v61)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v64 = INFINITY;
      if (!v61)
      {
LABEL_38:
        v65 = INFINITY;
        goto LABEL_41;
      }
    }

    v65 = *(*(a2 + 1) + 16 * v60 + 8);
LABEL_41:
    v99 = 0x3C00000000000000;
    v100 = 0;
    v101 = 0;
    v96 = 0x3C00000000000000;
    v97 = 0;
    v98 = 0;
    if (v64 != v65)
    {
      if (v64 < v65)
      {
        v68 = *(this + 57);
        v99 = *(*(this + 1) + 16 * v59);
        v100 = 0;
        v101 = v68;
        if (v60)
        {
          v69 = *(a2 + 1);
          if (*a2 > v60)
          {
            v70 = (v69 + 16 * v60);
            a3.i32[0] = *(v70 - 2);
            v71 = *(v70 + 2);
            v72 = *(a2 + 57);
            v105 = *(v70 - 2);
            v106 = 0;
            v107 = v72;
            if (a3.f32[0] != v71)
            {
              v102 = *v70;
              v103 = 0;
              v104 = v72;
              v73 = v64 - a3.f32[0];
              *&v74 = v71 - a3.f32[0];
              *a3.f32 = vrecpe_f32(v74);
              *a3.f32 = vmul_f32(vrecps_f32(v74, *a3.f32), *a3.f32);
              *a3.f32 = vmul_f32(*a3.f32, vrecps_f32(v74, *a3.f32));
              a3.f32[0] = v73 * a3.f32[0];
              RB::Fill::Color::mix(&v105, &v102, v94, a3);
            }

            goto LABEL_56;
          }

          v81 = *(v69 + 16 * *a2 - 16);
        }

        else
        {
          v81 = **(a2 + 1);
        }

        v83 = *(a2 + 57);
        v105 = v81;
        v106 = 0;
        v107 = v83;
LABEL_56:
        v96 = v105;
        v98 = v107;
        v97 = v106;
        ++v59;
        goto LABEL_60;
      }

      if (v59)
      {
        v75 = *(this + 1);
        if (*this > v59)
        {
          v76 = (v75 + 16 * v59);
          a3.i32[0] = *(v76 - 2);
          v77 = *(v76 + 2);
          v78 = *(this + 57);
          v105 = *(v76 - 2);
          v106 = 0;
          v107 = v78;
          if (a3.f32[0] != v77)
          {
            v102 = *v76;
            v103 = 0;
            v104 = v78;
            v79 = v65 - a3.f32[0];
            *&v80 = v77 - a3.f32[0];
            *a3.f32 = vrecpe_f32(v80);
            *a3.f32 = vmul_f32(vrecps_f32(v80, *a3.f32), *a3.f32);
            *a3.f32 = vmul_f32(*a3.f32, vrecps_f32(v80, *a3.f32));
            a3.f32[0] = v79 * a3.f32[0];
            RB::Fill::Color::mix(&v105, &v102, v94, a3);
          }

          goto LABEL_59;
        }

        v82 = *(v75 + 16 * *this - 16);
      }

      else
      {
        v82 = **(this + 1);
      }

      v84 = *(this + 57);
      v105 = v82;
      v106 = 0;
      v107 = v84;
LABEL_59:
      v99 = v105;
      v101 = v107;
      v100 = v106;
      v85 = *(a2 + 57);
      v96 = *(*(a2 + 1) + 16 * v60);
      v97 = 0;
      v98 = v85;
      ++v60;
      v64 = v65;
      goto LABEL_60;
    }

    v66 = *(this + 57);
    v99 = *(*(this + 1) + 16 * v59);
    v100 = 0;
    v101 = v66;
    v67 = *(a2 + 57);
    v96 = *(*(a2 + 1) + 16 * v60);
    v97 = 0;
    v98 = v67;
    ++v59;
    ++v60;
LABEL_60:
    RB::Fill::Color::mix(&v99, &v96, 0, v95);
    v86 = *(&v99 + 3) == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
    v87 = *&v112 + 1;
    if (*&v112 != -1 && v113 < v87)
    {
      RB::vector<RB::Fill::Gradient::Stop,16ul,unsigned long>::reserve_slow(&__dst, *&v112 + 1);
    }

    v63 &= v86;
    v112 = v87;
    p_dst = v111;
    if (!v111)
    {
      p_dst = &__dst;
    }

    v89 = &p_dst[2 * v87];
    *(v89 - 2) = v99;
    *(v89 - 2) = v64;
    *(v89 - 1) = 0.5;
    v61 = v60 < v31;
    v62 = v59 < *&v30;
  }

  while (v59 < *&v30 || v60 < v31);
  v58 = v112;
  if (*&v112 <= *this)
  {
LABEL_72:
    *this = v58;
    goto LABEL_73;
  }

  *this = v112;
  v90 = (*(a4 + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = v90 + 16 * *&v58;
  if (v91 > *(a4 + 3))
  {
    v90 = RB::Heap::alloc_slow(a4, 16 * *&v58, 7);
    v58 = *this;
  }

  else
  {
    *(a4 + 2) = v91;
  }

  *(this + 1) = v90;
LABEL_73:
  v92 = v111;
  if (v58)
  {
    if (v111)
    {
      v93 = v111;
    }

    else
    {
      v93 = &__dst;
    }

    memmove(*(this + 1), v93, 16 * *&v58);
    v92 = v111;
  }

  *(this + 13) |= 0x10000u;
  *(this + 59) = v63;
  if (v92)
  {
    free(v92);
  }
}

void sub_195DCD1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54)
{
  if (a54)
  {
    free(a54);
  }

  _Unwind_Resume(exception_object);
}

BOOL RB::Fill::Gradient::get_alpha(RB::Fill::Gradient *this, float *a2)
{
  v2 = *this;
  if (*this)
  {
    v3 = 0;
    v4 = *a2;
    v5 = (*(this + 1) + 6);
    v6 = 1;
    v7 = *this;
    v8 = 1;
    do
    {
      _H1 = *v5;
      __asm { FCVT            S1, H1 }

      if (v8)
      {
        *a2 = _S1;
        v4 = _S1;
      }

      else if (v4 != _S1)
      {
        return v3;
      }

      v8 = 0;
      v3 = v6 >= v2;
      v5 += 8;
      ++v6;
      --v7;
    }

    while (v7);
  }

  else
  {
    return 1;
  }

  return v3;
}

float RB::Fill::Gradient::interpolation_factor(uint64_t a1, uint64_t a2, uint64_t a3, float a4, double a5, double a6, double a7, float a8)
{
  v8 = *(a2 + 8);
  v9 = a4 - v8;
  *&v10 = *(a3 + 8) - v8;
  v11 = vrecpe_f32(v10);
  v12 = vrecps_f32(v10, v11);
  v13 = vmul_f32(v12, v11);
  v14 = vrecps_f32(v10, v13);
  v15 = vmul_f32(v13, v14).f32[0];
  result = v9 * v15;
  if ((*(a1 + 52) & 0xF00) == 0x200)
  {
    LOBYTE(v15) = *(a2 + 12);
    v20.f32[0] = LODWORD(v15);
    v14.i8[0] = *(a2 + 13);
    v21.f32[0] = v14.u32[0];
    v12.i8[0] = *(a2 + 14);
    LOBYTE(a8) = *(a2 + 15);
    v20.f32[1] = v12.u32[0] - v20.f32[0];
    v22 = LODWORD(a8);
    v23 = vdup_n_s32(0x3C40C0C2u);
    v24 = vmul_f32(v20, v23);
    v31 = v24.i32[0];
    __asm { FMOV            V5.2S, #1.0 }

    v21.f32[1] = v22 - v21.f32[0];
    v32 = vsub_f32(vzip2_s32(v24, _D5), v24);
    v30 = vmul_f32(v21, v23);
    v33 = v30.i32[0];
    v34 = vsub_f32(vzip2_s32(v30, _D5), v30);
    return RB::BezierTiming::eval(&v31, result);
  }

  else if ((*(a1 + 52) & 0xF00) == 0x100)
  {
    v17 = *(a2 + 12);
    if (v17 != 0.5)
    {
      v18 = fmaxf(result, 0.0);
      if (v17 >= 1.0)
      {
        v19 = 65536.0;
      }

      else
      {
        v19 = -0.69315 / logf(*(a2 + 12));
      }

      return powf(v18, v19);
    }
  }

  return result;
}

unint64_t RB::Fill::Gradient::sample(RB::Fill::Gradient *this, float a2, double a3, double a4, double a5, float a6)
{
  if (*this)
  {
    v7 = 0;
    v8 = *(this + 1);
    v9 = *this;
    while (1)
    {
      if (!--v9)
      {
        v13 = *(v8 + 16 * *this - 16);
        goto LABEL_10;
      }

      v10 = v8 + v7;
      if (*(v8 + v7 + 8) >= a2)
      {
        break;
      }

      v7 += 16;
      LODWORD(a3) = *(v10 + 24);
      if (*&a3 > a2)
      {
        v11.f32[0] = RB::Fill::Gradient::interpolation_factor(this, v8 + v7 - 16, v8 + v7, a2, a3, a4, a5, a6);
        v12 = (*(this + 1) + v7);
        v21 = *(v12 - 2);
        v22 = 0;
        v23 = 0;
        v18 = *v12;
        v19 = 0;
        v20 = 0;
        RB::Fill::Color::mix(&v21, &v18, (0x3010200u >> ((*(this + 13) >> 3) & 0x18)) & 3, v11);
        v13 = v21;
        goto LABEL_10;
      }
    }

    v13 = *(v8 + v7);
  }

  else
  {
    v13 = 0;
  }

LABEL_10:
  v14.i64[0] = HIWORD(v13);
  v14.i64[1] = WORD1(v13);
  v15.i64[0] = 0xFFFFLL;
  v15.i64[1] = 0xFFFFLL;
  v16 = vshlq_u64(vandq_s8(v14, v15), xmmword_195E45180);
  return v16.i64[0] | (WORD2(v13) << 32) | v13 | v16.i64[1];
}

float RB::Fill::Gradient::sample_alpha(RB::Fill::Gradient *this, float a2, double a3, double a4, double a5, float a6)
{
  if (!*this)
  {
    return 0.0;
  }

  v7 = 6;
  v8 = *this;
  v9 = *(this + 1);
  while (1)
  {
    if (!--v8)
    {
      _H0 = *(*(this + 1) + 16 * *this - 10);
      goto LABEL_10;
    }

    if (*(v9 + 8) >= a2)
    {
      break;
    }

    v10 = v9 + 16;
    v7 += 16;
    LODWORD(a3) = *(v9 + 24);
    v9 += 16;
    if (*&a3 > a2)
    {
      v11 = RB::Fill::Gradient::interpolation_factor(this, v10 - 16, v10, a2, a3, a4, a5, a6);
      v12 = (*(this + 1) + v7);
      _H1 = *(v12 - 8);
      _H2 = *v12;
      __asm
      {
        FCVT            S1, H1
        FCVT            S2, H2
      }

      return _S1 + ((_S2 - _S1) * v11);
    }
  }

  _H0 = *(v9 + 6);
LABEL_10:
  __asm { FCVT            S0, H0 }

  return result;
}

uint64_t RB::Fill::anonymous namespace::count_subdivided_cubic_stops(uint64_t result, uint64_t a2)
{
  v2 = result - 1;
  if (result != 1)
  {
    v3 = 0;
    v4 = (a2 + 12);
    v5 = vdup_n_s32(0x3B808081u);
    __asm { FMOV            V1.2S, #1.0 }

    do
    {
      if (v4[3] > *(v4 - 1) && (v11.i32[0] = *(v4 + 2), v11.i32[1] = *(v4 + 3), v12.i32[0] = *v4, v12.i32[1] = *(v4 + 1), v13 = vorn_s8(vmvn_s8(vceqz_f32(vmul_f32(vcvt_f32_u32(v12), v5))), vceq_f32(vmul_f32(vcvt_f32_u32(v11), v5), _D1)), (vpmax_u32(v13, v13).u32[0] & 0x80000000) != 0))
      {
        v14 = 4;
      }

      else
      {
        v14 = 1;
      }

      v3 += v14;
      v4 += 4;
      --v2;
    }

    while (v2);
    return v3 + 1;
  }

  return result;
}

void RB::Fill::anonymous namespace::subdivide_cubic_stops(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unsigned __int8 a5, float32x4_t a6)
{
  v9 = a5;
  a6.i64[0] = 0;
  RB::ColorSpace::Conversion::Conversion(v68, a4, a5, a6, 0.0);
  if (a1)
  {
    v10 = 0;
    v11 = 0;
    v12 = v9 | 0x100;
    v13 = vdup_n_s32(0x3B808081u);
    __asm { FMOV            V8.2S, #1.0 }

    do
    {
      v19 = a2 + 16 * v10;
      if (v10 < a1 - 1 && (v20 = *(v19 + 8), v21 = *(v19 + 24), v21 > v20) && (v22.i32[0] = *(v19 + 12), v22.i32[1] = *(v19 + 13), v23 = vmul_f32(vcvt_f32_u32(v22), v13), v22.i32[0] = *(v19 + 14), v22.i32[1] = *(v19 + 15), v24 = vorn_s8(vmvn_s8(vceq_f32(vmul_f32(vcvt_f32_u32(v22), v13), _D8)), vceqz_f32(v23)), (vpmax_u32(v24, v24).u32[0] & 0x80000000) != 0))
      {
        _ZN2RB13CubicIteratorIDv2_fEC1ES1_S1_S1_S1_i(&v64, 8, 0);
        v57 = HIWORD(*v19);
        *v27.f32 = RB::ColorSpace::Conversion::operator()(v68, *v19);
        v49 = v27;
        v55 = HIWORD(*(v19 + 16));
        v28 = RB::ColorSpace::Conversion::operator()(v68, *(v19 + 16));
        v28.i16[3] = v55;
        v61 = v28;
        v62 = 0;
        v63 = v12;
        v32 = v21 - v20;
        v33 = v20 + (v64.f32[0] * (v21 - v20));
        v26 = v11 + 4;
        v34 = v49;
        v34.i16[3] = v57;
        v50 = v34;
        v35 = (a3 + 12 + 16 * v11);
        v36 = 4;
        do
        {
          *&v30 = v64;
          *&v29 = v65;
          v56 = vadd_f32(v65, v64);
          v52 = v29;
          v53 = v30;
          *&v29 = vadd_f32(v66, v65);
          v37 = vadd_f32(v67, v66);
          *&v31 = vadd_f32(*&v29, v56);
          v54 = v31;
          v51 = v29;
          v64 = v31;
          v65 = vadd_f32(v37, *&v29);
          v66 = vadd_f32(v37, v67);
          v38 = v50;
          v58 = v50.i64[0];
          v59 = 0;
          v60 = v12;
          v39 = *(&v30 + 1);
          v38.i32[0] = DWORD1(v30);
          RB::Fill::Color::mix(&v58, &v61, 0, v38);
          *(&v31 + 1) = *(&v54 + 1);
          *(v35 - 3) = v58;
          *(v35 - 1) = v33;
          v40 = (*(&v54 + 1) - v39) * 0.5;
          if ((v40 + v39) >= v56.f32[1])
          {
            v44 = vrecpe_f32(COERCE_UNSIGNED_INT(*(&v54 + 1) - v56.f32[1]));
            v45 = vmul_f32(vrecps_f32(COERCE_UNSIGNED_INT(*(&v54 + 1) - v56.f32[1]), v44), v44);
            *(&v29 + 1) = *(&v51 + 1);
            v43 = v56.f32[0] + ((((v40 + v39) - v56.f32[1]) * *&v51) * vmul_f32(v45, vrecps_f32(COERCE_UNSIGNED_INT(*(&v54 + 1) - v56.f32[1]), v45)).f32[0]);
          }

          else
          {
            v41 = vrecpe_f32(COERCE_UNSIGNED_INT(v56.f32[1] - v39));
            v42 = vmul_f32(vrecps_f32(COERCE_UNSIGNED_INT(v56.f32[1] - v39), v41), v41);
            *(&v30 + 1) = *(&v52 + 1);
            *(&v29 + 1) = *(&v53 + 1);
            v43 = *&v53 + ((v40 * *&v52) * vmul_f32(v42, vrecps_f32(COERCE_UNSIGNED_INT(v56.f32[1] - v39), v42)).f32[0]);
          }

          v46 = v20 + (*&v54 * v32);
          v47 = vrecpe_f32(COERCE_UNSIGNED_INT(v46 - v33));
          v48 = vmul_f32(vrecps_f32(COERCE_UNSIGNED_INT(v46 - v33), v47), v47);
          *v35 = ((v20 - v33) + (v43 * v32)) * vmul_f32(v48, vrecps_f32(COERCE_UNSIGNED_INT(v46 - v33), v48)).f32[0];
          v35 += 4;
          v33 = v46;
          --v36;
        }

        while (v36);
      }

      else
      {
        v25 = a3 + 16 * v11;
        *v25 = *v19;
        *(v25 + 12) = 1056964608;
        v26 = v11 + 1;
      }

      ++v10;
      v11 = v26;
    }

    while (v10 != a1);
  }
}

float RB::Fill::Gradient::angular_location_function(RB::Fill::Gradient *this)
{
  v2 = *(this + 10);
  v1 = *(this + 11);
  v3 = vabds_f32(v1, v2);
  if (v3 <= 6.28318531)
  {
    v6 = v3 * 0.0795774715;
    v4 = 0.5 - v6;
    v5 = v6 + 0.5;
  }

  else
  {
    v4 = v3 * -0.159154943 + 1.0;
    v5 = 1.0;
  }

  v7 = v4;
  v8 = v2 <= v1;
  if (v2 <= v1)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1.0 - v7;
  }

  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = 1.0 - v5;
  }

  return v10 - v9;
}

void RB::Fill::Gradient::set_gradient_color(RB::Shader::GradientGlobals::Color &,float,RB::RenderPass &)const::$_1::operator()(uint64_t *a1, float16x4_t *a2, uint64_t a3, float16x4_t *a4)
{
  v6 = a2;
  v8 = a1[1];
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = a2 + 2;
    do
    {
      v12 = *a1;
      v43 = HIWORD(*(a1[2] + v9));
      v13 = RB::ColorSpace::Conversion::operator()(*(*a1 + 8), *(a1[2] + v9));
      v13.i16[3] = v43;
      if (*(v12 + 16) == 1)
      {
        *v45[0].f32 = v13;
        v45[0].i32[2] = 0;
        v45[0].i16[6] = 0;
        RB::Fill::Color::convert_to_oklab(v45);
        v13 = *v45[0].f32;
      }

      _H1 = v13.i16[3];
      __asm { FCVT            S1, H1 }

      _S1 = *v12 * _S1;
      __asm { FCVT            H1, S1 }

      v21 = vmul_n_f16(v13, *&_S1);
      *(v11 - 1) = v21.i32[0];
      *v11 = v21.i16[2];
      v11[1] = LOWORD(_S1);
      ++v10;
      v8 = a1[1];
      v9 += 16;
      v11 = (v11 + a3);
    }

    while (v10 < v8);
  }

  v22 = *a1;
  v42 = HIDWORD(*(a1[2] + 16 * v8));
  v23 = RB::ColorSpace::Conversion::operator()(*(*a1 + 8), *(a1[2] + 16 * v8));
  if (*(v22 + 16) == 1)
  {
    v23.i16[3] = HIWORD(v42);
    *v45[0].f32 = v23;
    v45[0].i32[2] = 0;
    v45[0].i16[6] = 0;
    RB::Fill::Color::convert_to_oklab(v45);
    v23 = *v45[0].f32;
  }

  else
  {
    v25.i32[1] = v42;
    v23.i16[3] = HIWORD(v42);
  }

  _H1 = v23.i16[3];
  __asm { FCVT            S1, H1 }

  _S1 = *v22 * _S1;
  __asm { FCVT            H1, S1 }

  v29 = vmul_n_f16(v23, *&_S1);
  v29.i16[3] = LOWORD(_S1);
  v41 = v29;
  v30 = a1[1];
  if (v30)
  {
    v31 = 0;
    v25.i32[0] = 2;
    v24.i32[0] = a1[3] & 7;
    v32 = vdup_lane_s32(vceq_s32(v24, v25), 0);
    do
    {
      v33 = v31 + 1;
      v34 = v41;
      if (v31 + 1 < v30)
      {
        v34 = *(v6 + a3);
      }

      v35 = *v6;
      if (v31)
      {
        v36 = *(v6 - a3);
      }

      else
      {
        v36 = COERCE_DOUBLE(vbsl_s8(v32, v34, v35));
      }

      v45[0] = v37;
      v45[1] = v38;
      v45[2] = v39;
      v45[3] = v40;
      v44[0] = v6;
      v44[1] = v6 + 1;
      v44[2] = v6 + 2;
      v44[3] = v6 + 3;
      _ZNSt3__127__memberwise_forward_assignB8nn200100INS_5tupleIJRN2RB12packed_half4ES4_S4_S4_EEENS1_IJDv4_fS6_S6_S6_EEEJS6_S6_S6_S6_EJLm0ELm1ELm2ELm3EEEEvRT_OT0_NS_13__tuple_typesIJDpT1_EEENS_15__tuple_indicesIJXspT2_EEEE(v44, v45);
      v30 = a1[1];
      v6 = (v6 + a3);
      v31 = v33;
    }

    while (v33 < v30);
  }

  if (a4)
  {
    *a4 = v41;
  }
}

void RB::Fill::Gradient::fill(float32x2_t *a1, RB::CGContext *a2, float32x4_t a3)
{
  v3 = a1;
  v128 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[6].u32[1];
  *&x = a2 + 8;
  if (a1[7].i8[2])
  {
    v8 = &a1[7] + 1;
  }

  else
  {
    v8 = a2 + 8;
  }

  v9 = *v8;
  v111 = a2;
  v113 = a1;
  if (v5 >= 2)
  {
    if ((v6 & 0xF00) != 0x400)
    {
      if ((v6 & 0xF00) == 0x200)
      {
        v10 = a2 + 8;
        if (v11 == v5 || (v13 = v11, v11 >> 60))
        {
          v14 = 0;
          v15 = 0;
          v6 = 0;
LABEL_111:
          x = *&v10;
          goto LABEL_11;
        }

        v105 = 16 * v11;
        v15 = 16 * v11 > 0x1000;
        if (16 * v11 > 0x1000)
        {
          v106 = malloc_type_malloc(16 * v11, 0x1000040451B5BE8uLL);
          if (!v106)
          {
            v14 = 0;
            v6 = 0;
            v15 = 1;
LABEL_110:
            v3 = v113;
            goto LABEL_111;
          }
        }

        else
        {
          MEMORY[0x1EEE9AC00](v11, v12);
          v106 = &v110 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v106, 16 * v13);
        }

        v9 = *v10;
        v6 = 65792;
        v5 = v13;
        v4 = v106;
        v14 = v106;
        goto LABEL_110;
      }

      goto LABEL_10;
    }

    v99 = 0;
    v100 = v4[2];
    v101 = v5 - 1;
    v102 = 6;
    do
    {
      v103 = v4[v102];
      if (v103 <= v100)
      {
        ++v99;
      }

      else
      {
        v99 += 16;
      }

      v102 += 4;
      v100 = v103;
      --v101;
    }

    while (v101);
    v104 = v99 + 1;
    if (v99 + 1 == v5 || v104 >> 60)
    {
      v14 = 0;
      v15 = 0;
      v6 = 0;
      goto LABEL_11;
    }

    *&v115.x = a2 + 8;
    v15 = 16 * v104 > 0x1000;
    if (16 * v104 > 0x1000)
    {
      v107 = malloc_type_malloc(16 * v104, 0x1000040451B5BE8uLL);
      if (!v107)
      {
        v14 = 0;
        v6 = 0;
        v15 = 1;
        goto LABEL_115;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1, a2);
      v107 = &v110 - ((16 * v104 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v107, 16 * v104);
    }

    v108 = **&v115.x;
    v110 = v107;
    v6 = 0;
    if (v109)
    {
      x = v115.x;
      v9 = **&v115.x;
      v5 = v104;
      v14 = v110;
      v4 = v110;
      goto LABEL_11;
    }

    v14 = v110;
LABEL_115:
    x = v115.x;
    goto LABEL_11;
  }

LABEL_10:
  v14 = 0;
  v15 = 0;
LABEL_11:
  v114.i32[0] = v3[6].i32[1];
  v16 = (v114.i32[0] >> 3) & 0x18;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v119[0] = &v124;
  v119[1] = &v121;
  v120 = **&x;
  v17 = v3[7].u8[0];
  v110 = v14;
  v112 = v15;
  if (v17 == 4)
  {
    v18 = RB::Fill::Gradient::angular_location_function(v3);
    v20 = v19;
  }

  else
  {
    v20 = 0.0;
    v18 = 1.0;
  }

  LODWORD(v115.x) = 0x3010200u >> v16;
  if (!v5)
  {
    goto LABEL_49;
  }

  v21 = 0;
  v22 = v9 | 0x100;
  v23 = v5 - 2;
  v24 = v6 & 0xF00;
  for (i = 1; ; ++i)
  {
    v26 = i - 1;
    if (v18 <= 0.0)
    {
      v26 = v5 + v21 - 1;
    }

    v27 = &v4[4 * v26];
    v28 = v27[2] * v18;
    a3.f32[0] = v28 + v20;
    v29 = *v27;
    *&v127[0].a = v28 + v20;
    *(&v127[0].a + 4) = v29;
    HIDWORD(v127[0].b) = 0;
    LOWORD(v127[0].c) = v22;
    if ((v28 + v20) >= 0.0)
    {
      if (a3.f32[0] > 1.0)
      {
        if (i != 1)
        {
          v34 = i - 2;
          if (v18 <= 0.0)
          {
            v34 = v5 + v21;
          }

          v35 = &v4[4 * v34];
          a3.f32[0] = v35[2] * v18;
          v36 = *v35;
          *&v117 = a3.f32[0] + v20;
          *(&v117 + 4) = v36;
          HIDWORD(v117) = 0;
          v118 = v22;
          if ((a3.f32[0] + v20) <= 1.0)
          {
            a3.f32[0] = (((a3.f32[0] + v20) - 1.0) / (v28 - a3.f32[0])) + 1.0;
            RB::Fill::Color::mix(&v127[0].a + 4, &v117 + 4, LOBYTE(v115.x), a3);
          }
        }

        LODWORD(v127[0].a) = 1065353216;
        a3.i32[0] = 1.0;
      }
    }

    else
    {
      if (i < v5)
      {
        v30 = v5 + v21 - 2;
        if (v18 > 0.0)
        {
          v30 = i;
        }

        v31 = &v4[4 * v30];
        v32 = v31[2] * v18;
        v33 = *v31;
        *&v117 = v32 + v20;
        *(&v117 + 4) = v33;
        HIDWORD(v117) = 0;
        v118 = v22;
        if ((v32 + v20) >= 0.0)
        {
          a3.f32[0] = a3.f32[0] / (v28 - v32);
          RB::Fill::Color::mix(&v127[0].a + 4, &v117 + 4, LOBYTE(v115.x), a3);
        }
      }

      LODWORD(v127[0].a) = 0;
      a3.i64[0] = 0;
    }

    v6 = v6 & 0xFFFF000000000000 | HIDWORD(v127[0].b) | (LOWORD(v127[0].c) << 32);
    *a3.i64 = RB::Fill::Gradient::fill(RB::CGContext &,RB::Bounds)const::$_0::operator()(v119, *(&v127[0].a + 4), v6, a3);
    if (v24 != 256 || i >= v5)
    {
      break;
    }

    a3.i32[0] = LODWORD(v127[0].a);
    *a3.i64 = RB::Fill::Gradient::fill(RB::CGContext &,RB::Bounds)const::$_0::operator()(v119, 0, 0, a3);
    if (v5 == i)
    {
      goto LABEL_40;
    }

LABEL_37:
    --v21;
  }

  if (v5 != i)
  {
    goto LABEL_37;
  }

  if (v24 != 256 || v5 == 1)
  {
    goto LABEL_49;
  }

LABEL_40:
  v37 = v5 - 1;
  if (v18 > 0.0)
  {
    v37 = 0;
  }

  v38 = v20 + (v4[4 * v37 + 2] * v18);
  v39 = v121 + 1;
  v40 = (v124 + 6);
  v41 = 1;
  __asm { FMOV            V0.2D, #0.5 }

  do
  {
    v47 = v41 - 1;
    if (v18 <= 0.0)
    {
      v48 = v23;
    }

    else
    {
      v48 = v41;
    }

    if (v18 <= 0.0)
    {
      v47 = v23 + 1;
    }

    v49 = v20 + (v4[4 * v48 + 2] * v18);
    *v39 = (v38 + ((v49 - v38) * v4[4 * v47 + 3]));
    v39 += 2;
    v50 = vmlaq_f64(v40[-2], _Q0, vsubq_f64(v40[2], v40[-2]));
    v40[-1] = vmlaq_f64(v40[-3], _Q0, vsubq_f64(v40[1], v40[-3]));
    *v40 = v50;
    --v23;
    v40 += 4;
    ++v41;
    v38 = v49;
  }

  while (v41 != v5);
LABEL_49:
  if ((v114.i8[0] & 0x40) != 0)
  {
    v51 = v124;
    v125 = 0;
    v126 = 0;
    v123 = 0;
    v124 = 0;
    v53 = v121;
    v52 = v122;
    v121 = 0;
    v122 = 0;
    if (v52)
    {
      v54 = 1;
      v55.i64[1] = 48;
      v114 = xmmword_195E44460;
      v56 = v51;
      v57 = v53;
      v58 = v52;
      do
      {
        if (v54 >= v52)
        {
          v55.i64[0] = *v57;
          v55.f32[0] = *v57;
          _D1 = *v56;
          _D2 = *(v56 + 1);
          __asm
          {
            FCVT            H2, D2
            FCVT            H1, D1
          }

          v64 = _D1;
          v65 = _D2;
          v66 = *(v56 + 2);
          *v66.f32 = vcvtx_f32_f64(v66);
          v66.i64[0] = vmovl_u16(vcvt_f16_f32(v66)).u64[0];
          v67.i64[0] = v66.u32[0];
          v67.i64[1] = v66.u32[1];
          v68.i64[0] = 0xFFFFLL;
          v68.i64[1] = 0xFFFFLL;
          v69 = vshlq_u64(vandq_s8(v67, v68), v114);
          v6 = v6 & 0xFFFF000000000000 | (**&x << 32) | 0x10000000000;
          RB::Fill::Gradient::fill(RB::CGContext &,RB::Bounds)const::$_0::operator()(v119, vorrq_s8(vdupq_laneq_s64(v69, 1), v69).u64[0] | (v65 << 16) | v64, v6, v55);
        }

        else
        {
          v59 = **&x | 0x100;
          *&v127[0].a = vcvt_f16_f32(vcvtx_hight_f32_f64(vcvtx_f32_f64(*v56), *(v56 + 2)));
          LODWORD(v127[0].b) = 0;
          WORD2(v127[0].b) = v59;
          v60 = *(v56 + 6);
          *&v117 = vcvt_f16_f32(vcvtx_hight_f32_f64(vcvtx_f32_f64(*(v56 + 4)), v60));
          DWORD2(v117) = 0;
          WORD6(v117) = v59;
          v60.i64[0] = *v57;
          v60.f32[0] = *v57;
          v61 = v57[1];
        }

        ++v54;
        ++v57;
        v56 += 4;
        --v58;
      }

      while (v58);
LABEL_58:
      free(v53);
    }

    else if (v53)
    {
      goto LABEL_58;
    }

    if (v51)
    {
      free(v51);
    }
  }

  v70 = v111;
  v71 = RB::CGContext::printing_context(v111);
  LOBYTE(v127[0].a) = **&x;
  v72 = RB::ColorSpace::cg_color_space(v127, !v71);
  v73 = v113;
  v74 = v112;
  v75 = CGGradientCreateWithColorComponents(v72, v124, v121, v122);
  if (v73[2])
  {
    RB::CGContext::save(v70);
    v76 = *v70;
    v77 = v73[2];
    v78 = v77[1];
    *&v127[0].a = *v77;
    *&v127[0].c = v78;
    *&v127[0].tx = v77[2];
    CGContextConcatCTM(v76, v127);
  }

  v79 = v73[7].u8[0];
  if (v79 > 1)
  {
    if (v79 == 2)
    {
      v85 = v73[5].f32[0];
    }

    else
    {
      if (v79 != 4)
      {
        goto LABEL_82;
      }

      v84 = v73[5].f32[0];
      v85 = v73[5].f32[1];
      v86 = vabds_f32(v85, v84);
      if (v86 <= 6.2832)
      {
        if (v85 < v84)
        {
          v84 = v73[5].f32[1];
        }

        v85 = (v84 + -3.1416) + (v86 * 0.5);
      }
    }

    v91 = v73[3];
    v92 = RB::CGContext::printing_context(v70);
    v93 = v85;
    v94 = vcvtq_f64_f32(v91);
    if (v92)
    {
      v115 = v94;
      ClipBoundingBox = CGContextGetClipBoundingBox(*v70);
      y = ClipBoundingBox.origin.y;
      height = ClipBoundingBox.size.height;
      *&v117 = vcvt_f32_f64(ClipBoundingBox.origin);
      *(&v117 + 1) = vcvt_f32_f64(ClipBoundingBox.size);
      RB::CGContext::begin_bitmap(v70, &v117, 0, 0, &v116, *&ClipBoundingBox.size.height);
      if (v116)
      {
        RB::CGContext::CGContext(v127, v116, *(v70 + 8), *(v70 + 2));
        CGContextDrawConicGradient(*&v127[0].a, v75, v115, v93);
        Image = CGBitmapContextCreateImage(*&v127[0].a);
        if (Image)
        {
          v130.origin.x = *&v117;
          v130.origin.y = *(&v117 + 1);
          v130.size.width = *(&v117 + 2);
          v130.size.height = *(&v117 + 3);
          CGContextDrawImage(*v70, v130, Image);
          CFRelease(Image);
        }

        RB::CGContext::~CGContext(v127);
        if (v116)
        {
          CFRelease(v116);
        }
      }
    }

    else
    {
      v98 = v94.y;
      CGContextDrawConicGradient(*v70, v75, v94, v93);
    }
  }

  else if (v73[7].i8[0])
  {
    if (v79 == 1)
    {
      v80 = vcvtq_f64_f32(v73[3]);
      v81 = vcvtq_f64_f32(v73[4]);
      v82 = v80.y;
      v83 = v81.y;
      CGContextDrawRadialGradient(*v70, v75, v80, v73[5].f32[0], v81, v73[5].f32[1], 3u);
    }
  }

  else
  {
    v87 = vcvtq_f64_f32(v73[3]);
    v88 = vcvtq_f64_f32(v73[4]);
    v89 = v87.y;
    v90 = v88.y;
    CGContextDrawLinearGradient(*v70, v75, v87, v88, 3u);
  }

LABEL_82:
  if (v73[2])
  {
    RB::CGContext::restore(v70);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  if (v121)
  {
    free(v121);
  }

  if (v124)
  {
    free(v124);
  }

  if (v74)
  {
    free(v110);
  }
}

uint64_t RB::Fill::anonymous namespace::subdivide_smooth_stops(unint64_t a1, void *a2, uint64_t a3, unsigned __int8 a4, unsigned __int8 a5, __int32 a6)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a1 >> 61)
  {
    return 0;
  }

  v13 = 8 * a1;
  if (8 * a1 <= 0x1000)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    v14 = &v42[-4] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v14, v13);
  }

  else
  {
    v14 = malloc_type_malloc(8 * a1, 0x100004000313F17uLL);
    if (!v14)
    {
      v6 = 0;
      goto LABEL_25;
    }
  }

  v15.i64[0] = 0;
  RB::ColorSpace::Conversion::Conversion(v42, a4, a5, v15, 0.0);
  if (!a1)
  {
    return 1;
  }

  v17 = 0;
  v18 = a2;
  do
  {
    *&v16 = *v18;
    v41 = v16;
    *&v16 = RB::ColorSpace::Conversion::operator()(v42, *&v16);
    v20.i16[3] = 15360;
    v20.i32[0] = v16;
    v20.i16[2] = WORD2(v16);
    *(&v16 + 1) = *(&v41 + 1);
    *&v14[8 * v17++] = vmul_lane_f16(v20, *&v41, 3);
    v18 += 2;
  }

  while (a1 != v17);
  v21 = 0;
  v22 = 0;
  v20.i32[0] = 2;
  v19.i32[0] = a6;
  v23 = vdup_lane_s32(vceq_s32(v19, v20), 0);
  do
  {
    v24 = &a2[2 * v21];
    if (v21 >= a1 - 1)
    {
      v26 = v21 + 1;
LABEL_16:
      v30 = a3 + 16 * v22;
      *v30 = *v24;
      *(v30 + 12) = 1056964608;
      ++v22;
      goto LABEL_23;
    }

    v25 = v24[2];
    v26 = v21 + 1;
    v27 = *&a2[2 * v21 + 3];
    if (v27 <= v25)
    {
      goto LABEL_16;
    }

    v28 = *&v14[8 * v21];
    if (v21)
    {
      v29 = *&v14[8 * v21 - 8];
    }

    else
    {
      v29 = COERCE_DOUBLE(vbsl_s8(v23, *&v14[8 * v26], v28));
    }

    v35 = 0;
    v36 = 0.0;
    v37 = a3 + 8 + 16 * v22;
    do
    {
      v38 = vmlaq_n_f32(v31, vmlaq_n_f32(v32, vmlaq_n_f32(v33, v34, v36), v36), v36);
      if (v38.f32[3] != 0.0)
      {
        v39.i64[0] = vmulq_n_f32(v38, 1.0 / v38.f32[3]).u64[0];
        v39.i64[1] = __PAIR64__(v38.u32[3], COERCE_UNSIGNED_INT(vmuls_lane_f32(1.0 / v38.f32[3], v38, 2)));
        v38 = v39;
      }

      *(v37 - 8) = vcvt_f16_f32(v38);
      *v37 = v25 + (v36 * (v27 - v25));
      *(v37 + 4) = 1056964608;
      v36 = v36 + 0.066667;
      --v35;
      v37 += 16;
    }

    while (v35 != -16);
    v22 += 16;
LABEL_23:
    v21 = v26;
  }

  while (v26 != a1);
  v6 = 1;
  if (v13 > 0x1000)
  {
LABEL_25:
    free(v14);
  }

  return v6;
}

void sub_195DCE91C(_Unwind_Exception *exception_object)
{
  if (v1 > 0x1000)
  {
    free(v2);
  }

  _Unwind_Resume(exception_object);
}

double RB::Fill::Gradient::fill(RB::CGContext &,RB::Bounds)const::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3, float32x4_t a4)
{
  v4 = a4.f32[0];
  v35 = a2;
  v36 = a3;
  v37 = WORD2(a3);
  a4.i64[0] = 0;
  RB::Fill::Color::convert(&v35, *(a1 + 16), a4);
  v6 = a1[1];
  v7 = v4;
  v8 = v6[1];
  v9 = v8 + 1;
  if (v6[2] < (v8 + 1))
  {
    RB::vector<unsigned long,0ul,unsigned long>::reserve_slow(a1[1], v9);
    v8 = v6[1];
    v9 = v8 + 1;
  }

  *(*v6 + 8 * v8) = v7;
  v6[1] = v9;
  v10 = *a1;
  _H0 = v35;
  __asm { FCVT            D8, H0 }

  v18 = *(*a1 + 8);
  v17 = *(*a1 + 16);
  v19 = v18 + 1;
  if (v17 < v18 + 1)
  {
    RB::vector<unsigned long,0ul,unsigned long>::reserve_slow(*a1, v19);
    v18 = v10[1];
    v20 = *a1;
    v17 = *(*a1 + 16);
    v19 = v18 + 1;
  }

  else
  {
    v20 = *a1;
  }

  *(*v10 + 8 * v18) = _D8;
  v10[1] = v19;
  _H0 = WORD1(v35);
  __asm { FCVT            D8, H0 }

  v23 = v20[1];
  v24 = v23 + 1;
  if (v17 < v23 + 1)
  {
    RB::vector<unsigned long,0ul,unsigned long>::reserve_slow(v20, v24);
    v23 = v20[1];
    v25 = *a1;
    v17 = *(*a1 + 16);
    v24 = v23 + 1;
  }

  else
  {
    v25 = v20;
  }

  *(*v20 + 8 * v23) = _D8;
  v20[1] = v24;
  _H0 = WORD2(v35);
  __asm { FCVT            D8, H0 }

  v28 = v25[1];
  v29 = v28 + 1;
  if (v17 < v28 + 1)
  {
    RB::vector<unsigned long,0ul,unsigned long>::reserve_slow(v25, v29);
    v28 = v25[1];
    v30 = *a1;
    v17 = v30[2];
    v29 = v28 + 1;
  }

  else
  {
    v30 = v25;
  }

  *(*v25 + 8 * v28) = _D8;
  v25[1] = v29;
  _H8 = HIWORD(v35);
  v32 = v30[1];
  v33 = v32 + 1;
  if (v17 < v32 + 1)
  {
    RB::vector<unsigned long,0ul,unsigned long>::reserve_slow(v30, v33);
    v32 = v30[1];
    v33 = v32 + 1;
  }

  __asm { FCVT            D0, H8 }

  *(*v30 + 8 * v32) = result;
  v30[1] = v33;
  return result;
}

double RB::Fill::anonymous namespace::subdivide_stop<RB::Fill::Gradient::fill(RB::CGContext &,RB::Bounds)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, float32x4_t a6, float a7)
{
  v8 = a6.f32[0];
  v10 = a7 - a6.f32[0];
  if ((LODWORD(v10) & 0x7FFFFFFFu) > 0x7F7FFFFF || (v10 > 0.0624 ? (v13 = a5 >= 8) : (v13 = 1), v13))
  {
    v17 = *a1;
    v18 = *(a1 + 8) | (*(a1 + 12) << 32);
    a6.f32[0] = v8;

    return RB::Fill::Gradient::fill(RB::CGContext &,RB::Bounds)const::$_0::operator()(a4, v17, v18, a6);
  }

  else
  {
    *v19 = *a1;
    *&v19[6] = *(a1 + 6);
    a6.i32[0] = 0.5;
    RB::Fill::Color::mix(v19, a2, a3, a6);
  }

  return result;
}

void RB::Fill::Gradient::map_component(RB::Fill::Gradient *this, uint64_t a2, unsigned int a3, double a4, double a5, double a6, double a7, float a8)
{
  v11 = 0;
  v34 = *MEMORY[0x1E69E9840];
  v12 = 1.0 / vsub_f32(vdup_lane_s32(*&a4, 1), *&a4).f32[0];
  __asm { FMOV            V1.4S, #1.0 }

  v27 = vdupq_n_s32(0x437F0000u);
  v28 = _Q1;
  do
  {
    v18 = RB::Fill::Gradient::sample(this, -((*&a4 + (v11 * -0.0039216)) * v12), a4, a6, a7, a8);
    v19 = *(a2 + 8);
    v30 = v18;
    v32 = v20;
    v31 = v21;
    v22.i64[0] = 0;
    RB::Fill::Color::convert(&v30, v19, v22);
    v23.i16[3] = 15360;
    v23.i32[0] = v30;
    v23.i16[2] = WORD2(v30);
    v24.i64[0] = 0x3F0000003F000000;
    v24.i64[1] = 0x3F0000003F000000;
    v25 = vcvtq_u32_f32(vmlaq_f32(v24, v27, vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(vmul_f16(vdup_n_s16(HIWORD(v30)), v23)), 0), v28)));
    HIDWORD(a6) = v25.i32[1];
    LODWORD(a6) = vextq_s8(v25, v25, 8uLL).i32[1];
    v26 = v25.i32[0];
    *v25.i8 = vshl_u32(*&a6, 0x800000018);
    v33.i32[v11++] = v25.i32[2] | (v26 << 16) | v25.i32[0] | v25.i32[1];
  }

  while (v11 != 256);
  RB::CGContext::apply_component_lut(a2, a3, &v33);
}

void *RB::Fill::Gradient::encode(RB::Fill::Gradient *this, RB::Encoder *a2)
{
  v3 = this;
  v50 = *MEMORY[0x1E69E9840];
  v4 = *this;
  if (!(*this >> 61))
  {
    v5 = 8 * v4;
    if ((8 * v4) <= 0x1000)
    {
      MEMORY[0x1EEE9AC00](this, a2);
      v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v6, v5);
    }

    else
    {
      v6 = malloc_type_malloc(8 * v4, 0x100004000313F17uLL);
      if (!v6)
      {
LABEL_12:
        free(v6);
        goto LABEL_13;
      }
    }

    if (*v3)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        *&v6[8 * v8++] = *(*(v3 + 1) + v7);
        v9 = *v3;
        v7 += 16;
      }

      while (v8 < *v3);
    }

    else
    {
      v9 = 0;
    }

    this = RB::ProtobufEncoder::packed_fixed64_field(a2, 1, v6, v9);
    if (v5 > 0x1000)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  if (*(v3 + 54))
  {
    v10 = *v3;
    if (!(*v3 >> 62))
    {
      v11 = 4 * v10;
      if ((4 * v10) <= 0x1000)
      {
        MEMORY[0x1EEE9AC00](this, a2);
        v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v12, v11);
      }

      else
      {
        v12 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
        if (!v12)
        {
LABEL_23:
          free(v12);
          goto LABEL_24;
        }
      }

      v13 = *v3;
      if (*v3)
      {
        v14 = (*(v3 + 1) + 8);
        v15 = v12;
        v16 = *v3;
        do
        {
          v17 = *v14;
          v14 += 4;
          *v15++ = v17;
          --v16;
        }

        while (v16);
      }

      this = RB::ProtobufEncoder::packed_fixed32_field(a2, 2, v12, v13);
      if (v11 > 0x1000)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  if ((*(v3 + 13) & 0xF00) != 0x100)
  {
    if ((*(v3 + 13) & 0xF00) == 0x200 && *v3 != 1)
    {
      v18 = 0;
      v19 = 12;
      v20 = vdupq_n_s32(0x3B808081u);
      v49 = v20;
      do
      {
        v20.i32[0] = *(*(v3 + 1) + v19);
        RB::ProtobufEncoder::float4_field(a2, 15, vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v20.i8))), v49));
        ++v18;
        v19 += 16;
      }

      while (v18 < *v3 - 1);
    }

    goto LABEL_40;
  }

  v21 = *v3 - 1;
  if (v21 >> 62)
  {
    goto LABEL_40;
  }

  v22 = 4 * v21;
  if (4 * v21 <= 0x1000)
  {
    MEMORY[0x1EEE9AC00](this, a2);
    v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v23, v22);
  }

  else
  {
    v23 = malloc_type_malloc(4 * v21, 0x100004052888210uLL);
    if (!v23)
    {
LABEL_39:
      free(v23);
      goto LABEL_40;
    }
  }

  v24 = *v3 - 1;
  if (*v3 != 1)
  {
    v25 = (*(v3 + 1) + 12);
    v26 = v23;
    v27 = *v3 - 1;
    do
    {
      v28 = *v25;
      v25 += 4;
      *v26++ = 1.0 - v28;
      --v27;
    }

    while (v27);
  }

  RB::ProtobufEncoder::packed_fixed32_field(a2, 3, v23, v24);
  if (v22 > 0x1000)
  {
    goto LABEL_39;
  }

LABEL_40:
  v29 = *(v3 + 56);
  if (*(v3 + 56))
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);
    RB::ProtobufEncoder::encode_varint(a2, v29);
  }

  v30 = *(v3 + 13);
  v31 = v30 & 7;
  if ((v30 & 7) != 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x28uLL);
    RB::ProtobufEncoder::encode_varint(a2, v31);
  }

  v32 = rb_color_space(*(v3 + 57));
  if (v32 != 1)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x30uLL);
    RB::ProtobufEncoder::encode_varint(a2, v32);
  }

  result = RB::ProtobufEncoder::float2_field(a2, 7, *(v3 + 3));
  if (*(v3 + 56) == 1)
  {
    v34 = *(v3 + 4);
    v35 = vmvn_s8(vceq_f32(*(v3 + 24), *&v34));
    if ((vpmax_u32(v35, v35).u32[0] & 0x80000000) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v34 = *(v3 + 4);
  }

  result = RB::ProtobufEncoder::float2_field(a2, 8, v34);
LABEL_51:
  v36 = *(v3 + 10);
  if (*&v36 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x4DuLL);
    result = RB::ProtobufEncoder::encode_fixed32(a2, v36);
  }

  v37 = *(v3 + 11);
  if (*&v37 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x55uLL);
    result = RB::ProtobufEncoder::encode_fixed32(a2, v37);
  }

  v38 = *(v3 + 2);
  if (v38)
  {
    v39 = vandq_s8(vandq_s8(vceqq_f64(v38[1], xmmword_195E42770), vceqq_f64(*v38, xmmword_195E42760)), vceqzq_f64(v38[2]));
    if ((vandq_s8(vdupq_laneq_s64(v39, 1), v39).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(a2, 0x5AuLL);
      RB::ProtobufEncoder::begin_length_delimited(a2);
      RB::AffineTransform::encode(v38->f64, a2);
      result = RB::ProtobufEncoder::end_length_delimited(a2);
    }
  }

  if ((*(v3 + 13) >> 6) > 1u)
  {
    if (*(v3 + 13) >> 6 == 3)
    {
      v40 = 112;
    }

    else
    {
      v40 = 104;
    }
  }

  else
  {
    if (!(*(v3 + 13) >> 6))
    {
      goto LABEL_65;
    }

    v40 = 96;
  }

  RB::ProtobufEncoder::encode_varint(a2, v40);
  result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
LABEL_65:
  if ((*(v3 + 13) & 0xF00) == 0x400)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x80uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

  __asm { FCMP            H8, #0 }

  if (!_ZF)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x8DuLL);
    __asm { FCVT            S0, H8 }

    result = RB::ProtobufEncoder::encode_fixed32(a2, _S0);
  }

  __asm { FCMP            H8, #0 }

  if (!_ZF)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x95uLL);
    __asm { FCVT            S0, H8 }

    return RB::ProtobufEncoder::encode_fixed32(a2, _S0);
  }

  return result;
}

void sub_195DCF308(_Unwind_Exception *exception_object)
{
  if (v2 > 0x1000)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void RB::Fill::Gradient::decode(RB::Fill::Gradient *this, RB::Heap **a2)
{
  v97 = *MEMORY[0x1E69E9840];
  v94 = 0;
  v95 = 0;
  v96 = 16;
  v90 = 0;
  v91 = 0;
  v92 = 16;
  v86 = 0;
  v87 = 0;
  v88 = 16;
  v82 = 0;
  v83 = 0;
  v84 = 16;
  if ((*(this + 58) & 1) == 0)
  {
    *(this + 58) = 1;
  }

  v4 = 0;
  *(this + 57) = 17;
  __asm { FMOV            V12.2S, #1.0 }

  v9 = vdup_n_s32(0x437F0000u);
  while (1)
  {
    field = RB::ProtobufDecoder::next_field(a2);
    if (!field)
    {
      break;
    }

    switch((field >> 3))
    {
      case 1u:
        v12 = RB::ProtobufDecoder::color_field(a2, field);
        v13 = v95;
        if (v96 < v95 + 1)
        {
          _ZN2RB6vectorIDv4_DF16_Lm16EmE12reserve_slowEm(__dst, v95 + 1);
          v13 = v95;
        }

        v14 = v94;
        if (!v94)
        {
          v14 = __dst;
        }

        *&v14[8 * v13] = v12;
        ++v95;
        continue;
      case 2u:
        v32 = RB::ProtobufDecoder::float_field(a2, field);
        v33 = v91;
        v34 = v91 + 1;
        if (v92 < v91 + 1)
        {
          RB::vector<float,16ul,unsigned long>::reserve_slow(v89, v34);
          v33 = v91;
          v34 = v91 + 1;
        }

        v35 = v90;
        if (!v90)
        {
          v35 = v89;
        }

        *&v35[4 * v33] = v32;
        v91 = v34;
        continue;
      case 3u:
        v27 = RB::ProtobufDecoder::float_field(a2, field);
        v28 = v87;
        v29 = v87 + 1;
        if (v88 < v87 + 1)
        {
          RB::vector<float,16ul,unsigned long>::reserve_slow(v85, v29);
          v28 = v87;
          v29 = v87 + 1;
        }

        v30 = v86;
        if (!v86)
        {
          v30 = v85;
        }

        *&v30[4 * v28] = 1.0 - v27;
        v87 = v29;
        continue;
      case 4u:
        v31 = RB::ProtobufDecoder::uint_field(a2, field);
        if (v31 <= 4)
        {
          *(this + 56) = v31;
        }

        continue;
      case 5u:
        *(this + 13) |= RB::ProtobufDecoder::uint_field(a2, field) & 7;
        continue;
      case 6u:
        v37 = RB::ProtobufDecoder::uint_field(a2, field);
        *(this + 57) = rb_color_space(v37);
        continue;
      case 7u:
        *(this + 3) = RB::ProtobufDecoder::float2_field(a2, field, v11).n128_u64[0];
        continue;
      case 8u:
        *(this + 4) = RB::ProtobufDecoder::float2_field(a2, field, v11).n128_u64[0];
        v4 = 1;
        continue;
      case 9u:
        *(this + 10) = RB::ProtobufDecoder::float_field(a2, field);
        continue;
      case 0xAu:
        *(this + 11) = RB::ProtobufDecoder::float_field(a2, field);
        continue;
      case 0xBu:
        v78[0] = xmmword_195E42760;
        v78[1] = xmmword_195E42770;
        v79 = 0;
        v80 = 0;
        if ((field & 7) == 2)
        {
          RB::ProtobufDecoder::begin_message(a2);
          RB::AffineTransform::decode(v78, a2);
          RB::ProtobufDecoder::end_message(a2);
        }

        else
        {
          *(a2 + 56) = 1;
          *a2 = a2[1];
        }

        RB::Fill::Gradient::concat(this, v78, a2[8]);
        continue;
      case 0xCu:
        *(this + 13) &= 0xFFFFFF3F;
        if (RB::ProtobufDecoder::BOOL_field(a2, field))
        {
          v26 = 64;
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_57;
      case 0xDu:
        *(this + 13) &= 0xFFFFFF3F;
        if (RB::ProtobufDecoder::BOOL_field(a2, field))
        {
          v26 = 128;
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_57;
      case 0xEu:
        *(this + 13) &= 0xFFFFFF3F;
        if (RB::ProtobufDecoder::BOOL_field(a2, field))
        {
          v26 = 192;
        }

        else
        {
          v26 = 0;
        }

LABEL_57:
        *(this + 13) |= v26;
        break;
      case 0xFu:
        v16 = RB::ProtobufDecoder::float4_field(a2, field);
        v17 = v16;
        if (v16.n128_f32[0] >= 0.0)
        {
          v18 = v16.n128_f32[0];
        }

        else
        {
          v18 = 0.0;
        }

        if (v18 <= 1.0)
        {
          v19 = v18;
        }

        else
        {
          v19 = 1.0;
        }

        if (v16.n128_f32[2] >= 0.0)
        {
          v20 = v16.n128_f32[2];
        }

        else
        {
          v20 = 0.0;
        }

        if (v20 <= 1.0)
        {
          v21 = v20;
        }

        else
        {
          v21 = 1.0;
        }

        v22 = v83;
        if (v84 < v83 + 1)
        {
          v77 = v17;
          RB::vector<float,16ul,unsigned long>::reserve_slow(v81, v83 + 1);
          v22 = v83;
          v17 = v77;
        }

        v17.i32[0] = vextq_s8(v17, v17, 8uLL).i32[1];
        v23 = vbic_s8(*v17.i8, vcltz_f32(*v17.i8));
        v24 = vshl_u32(vcvt_s32_f32(vmla_f32(0x3F0000003F000000, v9, vbsl_s8(vcgt_f32(v23, _D12), _D12, v23))), 0x800000018);
        v25 = v82;
        if (!v82)
        {
          v25 = v81;
        }

        *&v25[4 * v22] = v24.i32[0] | (((v21 * 255.0) + 0.5) << 16) | ((v19 * 255.0) + 0.5) | v24.i32[1];
        ++v83;
        break;
      case 0x10u:
        *(this + 13) &= 0xFFFFF0FF;
        if (RB::ProtobufDecoder::uint_field(a2, field) == 1)
        {
          *(this + 13) |= 0x400u;
        }

        break;
      case 0x11u:
        _S0 = RB::ProtobufDecoder::float_field(a2, field);
        __asm { FCVT            H0, S0 }

        *(this + 24) = LOWORD(_S0);
        break;
      case 0x12u:
        _S0 = RB::ProtobufDecoder::float_field(a2, field);
        __asm { FCVT            H0, S0 }

        *(this + 25) = LOWORD(_S0);
        break;
      default:
        continue;
    }
  }

  v38 = v95;
  if (v95 < 2)
  {
    goto LABEL_67;
  }

  v39 = v91;
  if (v91)
  {
    if (v91 != v95)
    {
      goto LABEL_67;
    }
  }

  v40 = v87;
  if (v87)
  {
    if (v87 != v95 - 1 || v83)
    {
      goto LABEL_67;
    }

    goto LABEL_84;
  }

  if (!v83)
  {
LABEL_84:
    v41 = 1;
    goto LABEL_85;
  }

  if (v83 != v95 - 1)
  {
LABEL_67:
    *(a2 + 56) = 1;
    *a2 = a2[1];
    goto LABEL_68;
  }

  v41 = 0;
LABEL_85:
  if (!((*(this + 56) != 1) | v4 & 1))
  {
    *(this + 4) = *(this + 3);
  }

  v42 = 0;
  *this = v38;
  v43 = v94;
  if (!v94)
  {
    v43 = __dst;
  }

  v44 = v90;
  if (!v90)
  {
    v44 = v89;
  }

  v45 = v86;
  if (!v86)
  {
    v45 = v85;
  }

  v46 = v82;
  if (!v82)
  {
    v46 = v81;
  }

  v47 = -INFINITY;
  v48 = INFINITY;
  v49 = 1;
  *(this + 59) = 1;
  v50 = 1.0 / (v38 - 1);
  do
  {
    v51 = vcvtq_f32_f16(*&v43[8 * v42]);
    v49 &= v51.f32[3] == 1.0;
    *(this + 59) = v49;
    v52 = fminf(fminf(v51.f32[0], v51.f32[2]), v51.f32[1]);
    if (v52 < v48)
    {
      v48 = v52;
    }

    v53 = fmaxf(fmaxf(v51.f32[0], v51.f32[2]), v51.f32[1]);
    if (v47 < v53)
    {
      v47 = v53;
    }

    if (v39)
    {
      v54 = *(this + 13);
      if ((v54 & 0x10000) == 0 && fabsf(*&v44[4 * v42] - (v50 * v42)) > 0.001)
      {
        *(this + 13) = v54 | 0x10000;
      }
    }

    if (v40)
    {
      _CF = (*(this + 13) & 0xF00) == 0x100 || v42 + 1 >= v38;
      if (!_CF && fabsf(*&v45[4 * v42] + ((-0.5 - v42) * v50)) > 0.001)
      {
        *(this + 13) = *(this + 13) & 0xFFFFF0FF | 0x100;
      }
    }

    if (v41)
    {
      v56 = (v42 + 1);
    }

    else
    {
      v56 = (v42 + 1);
      if (v42 + 1 < v38 && (*(this + 13) & 0xF00) != 0x200)
      {
        v57 = &v46[4 * v42];
        if (*v57 || v57[1] || v57[2] != 255 || v57[3] != 255)
        {
          *(this + 13) = *(this + 13) & 0xFFFFF0FF | 0x200;
        }
      }
    }

    v42 = v56;
  }

  while (v56 != v38);
  *(this + 60) = RB::required_color_depth(v56, v48, v47);
  v58 = a2[8];
  v59 = *this;
  v60 = (v58[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = v60 + 16 * *this;
  if (v61 > v58[3])
  {
    v60 = RB::Heap::alloc_slow(v58, 16 * v59, 7);
    v59 = *this;
  }

  else
  {
    v58[2] = v61;
  }

  *(this + 1) = v60;
  if (v59)
  {
    v62 = 0;
    v63 = 0;
    do
    {
      v64 = v94;
      if (!v94)
      {
        v64 = __dst;
      }

      *(*(this + 1) + v62) = *&v64[8 * v63];
      v65 = *(this + 13);
      if ((v65 & 0x10000) != 0)
      {
        v70 = v90;
        if (!v90)
        {
          v70 = v89;
        }

        v69 = *&v70[4 * v63];
      }

      else
      {
        v66 = *this - 1;
        v67 = vrecpe_f32(COERCE_UNSIGNED_INT(v66));
        v68 = vmul_f32(vrecps_f32(COERCE_UNSIGNED_INT(v66), v67), v67);
        v69 = v63 * vmul_f32(v68, vrecps_f32(COERCE_UNSIGNED_INT(v66), v68)).f32[0];
      }

      v71 = *(this + 1);
      *(v71 + v62 + 8) = v69;
      v72 = v65 & 0xF00;
      if (v72 == 512)
      {
        if (v63 >= *this - 1)
        {
          v76 = -65536;
        }

        else
        {
          v75 = v82;
          if (!v82)
          {
            v75 = v81;
          }

          v76 = *&v75[4 * v63];
        }

        *(v71 + v62 + 12) = v76;
      }

      else if (v72 == 256)
      {
        v73 = 0.5;
        if (v63 < *this - 1)
        {
          v74 = v86;
          if (!v86)
          {
            v74 = v85;
          }

          v73 = *&v74[4 * v63];
        }

        *(v71 + v62 + 12) = v73;
      }

      ++v63;
      v62 += 16;
    }

    while (v63 < *this);
  }

LABEL_68:
  if (v82)
  {
    free(v82);
  }

  if (v86)
  {
    free(v86);
  }

  if (v90)
  {
    free(v90);
  }

  if (v94)
  {
    free(v94);
  }
}