void make_image_provider(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, float64_t a5@<D0>, float64_t a6@<D1>, float64_t a7@<D2>, float64_t a8@<D3>)
{
  v12 = [a2 objectForKeyedSubscript:RBImageRendererGPUPriority];
  if (v12)
  {
    [v12 unsignedIntValue];
  }

  v13 = [a2 objectForKeyedSubscript:RBImageRendererBackgroundGPUPriority];
  if (v13)
  {
    v14 = [v13 unsignedIntValue];
    v15 = 1;
    if (!a1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    if (!a1)
    {
      goto LABEL_19;
    }
  }

  if (+[RBDevice isRunningInBackground])
  {
    v16 = v15 ? v14 : RB::Device::effective_bg_gpu_priority(*(a1 + 8));
    if (v16 == 3)
    {
      v17 = *(*(a1 + 8) + 24);
      if ((objc_opt_respondsToSelector() & 1) == 0 || ![v17 supportsBackgroundAppRole])
      {
        v18 = [objc_msgSend(a2 objectForKeyedSubscript:{RBImageRendererBackgroundGPUMode), "intValue"}];
        if (v18 == 1)
        {
          a1 = 0;
        }

        else if (!v18)
        {
          v19 = RB::misc_log(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_195CE8000, v19, OS_LOG_TYPE_INFO, "RBDevice: returning null image", buf, 2u);
          }

          goto LABEL_27;
        }
      }
    }
  }

LABEL_19:
  v20 = [a2 objectForKeyedSubscript:RBImageRendererScale];
  if (v20)
  {
    [v20 doubleValue];
    if (v21 <= 0.0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v21 = 1.0;
  }

  v57 = v21;
  v22.f64[0] = a7;
  v22.f64[1] = a8;
  v23 = vrndpq_f64(vmulq_n_f64(v22, v21));
  if (v23.f64[0] > 0.0)
  {
    v24 = v23.f64[1];
    if (v23.f64[1] > 0.0)
    {
      v59 = v23.f64[0];
      v25 = [a2 objectForKeyedSubscript:RBImageRendererColorMode];
      if (v25)
      {
        v26 = [v25 intValue];
      }

      else
      {
        v26 = 0;
      }

      RB::ColorMode::ColorMode(v66, v26);
      v27 = [a2 objectForKeyedSubscript:RBImageRendererColorSpace];
      if (v27 && (v28 = rb_color_space([v27 intValue]), (v28 & 0x100) != 0))
      {
        v67 = v28;
        v29 = 1;
      }

      else
      {
        v29 = 0;
      }

      v61 = objc_opt_new();
      [v61 setProfile:1];
      [v61 setDefaultColorSpace:rb_color_space(v66[1] | 0x100u)];
      [v61 setContentRect:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v59, v24}];
      v30.f64[0] = a5;
      v30.f64[1] = a6;
      *buf = v57;
      *&buf[8] = 0;
      v63 = 0;
      v64 = v57;
      v65 = vmulq_n_f64(vnegq_f64(v30), v57);
      [v61 concat:buf];
      v31 = current_device();
      v32 = *v31;
      *v31 = a1;
      (*(a3 + 16))(a3, v61);
      *v31 = v32;
      v33 = [a2 objectForKeyedSubscript:RBImageRendererTargetHeadroom];
      if (v33)
      {
        [v33 floatValue];
        if ((LODWORD(v34) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          v35 = 0.0;
        }

        else
        {
          v35 = v34;
        }
      }

      else
      {
        v35 = 1.0;
      }

      v36 = [v61 _rb_contents];
      if (v36)
      {
        v38 = RB::DisplayList::Layer::color_info((v36 + 320), v37);
        v39 = *(&v38 + 2);
        v40 = v38;
        if (v35 != 0.0)
        {
          if (v38 == 4)
          {
            v40 = RB::headroom_color_depth(v38, v35);
          }

          _H0 = v39;
          __asm { FCVT            S9, H0 }

          v47 = v35 <= 1.0;
          if (v39 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
          {
            v47 = 1;
          }

          if (((v29 | v47) & 1) == 0)
          {
            v67 = 35;
          }
        }
      }

      else
      {
        v40 = 0;
      }

      v48 = [a2 objectForKeyedSubscript:RBImageRendererPromotesFramebuffer];
      if (!v48 || ([v48 BOOLValue] & 1) != 0)
      {
        RB::ColorMode::merge_depth(v66, v40);
      }

      *buf = RBColorClear;
      if (v68)
      {
        v50 = 10;
      }

      else
      {
        v49 = [a2 objectForKeyedSubscript:RBImageRendererOpaque];
        if (v49)
        {
          if ([v49 BOOLValue])
          {
            v50 = 3;
          }

          else
          {
            v50 = 2;
          }
        }

        else
        {
          v50 = 2;
        }
      }

      v51 = [a2 objectForKeyedSubscript:RBImageRendererBackgroundColor];
      if (v51)
      {
        [v51 getValue:buf size:16];
      }

      v52 = [a2 objectForKeyedSubscript:RBImageRendererDisableIgnoreAlphaBlendModes];
      if (v52 && [v52 BOOLValue])
      {
        v50 |= 4u;
      }

      v53 = [a2 objectForKeyedSubscript:RBImageRendererPreferNativeFloatComponents];
      if (v53 && [v53 BOOLValue])
      {
        v50 |= 0x10u;
      }

      if (a1)
      {
        v54 = *(a1 + 8);
      }

      else
      {
        v54 = 0;
      }

      RB::ColorMode::pixel_format(v66, v54, v50 & 1 ^ 0x39, 0);
      [v61 moveContents];
      operator new();
    }
  }

LABEL_27:
  *a4 = 0;
}

uint64_t render_image(uint64_t a1, void *a2, uint64_t a3, float64_t a4, float64_t a5, float64_t a6, float64_t a7)
{
  make_image_provider(a1, a2, a3, &v13, a4, a5, a6, a7);
  v8 = v13;
  if (!v13)
  {
    return 0;
  }

  if ([objc_msgSend(a2 objectForKeyedSubscript:{RBImageRendererDeferRendering), "BOOLValue"}] & 1) == 0 && (v9 = objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", RBImageRendererSynchronousRendering), "BOOLValue"), RB::ImageProvider::start_rendering(v8, v9 ^ 1u), v9) && (RB::ImageProvider::wait_phase(v8, 6), (*(v8 + 111)))
  {
    v10 = 0;
  }

  else
  {
    RB::ImageProvider::make_cgimage(v8, &v12);
    v10 = v12;
  }

  if (atomic_fetch_add_explicit((v8 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    render_image();
  }

  return v10;
}

void sub_195CE9AD4(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    render_image();
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::AllLayers::shared(_anonymous_namespace_::AllLayers *this)
{
  {
    operator new();
  }
}

double RBDrawingStateConcatCTM(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v12 = *a2;
  v13 = v5;
  v14 = v6;
  RB::DisplayList::State::concat(a1, &v12);
  v9 = *(v4 + 320);
  if (v9)
  {
    v10 = *(a2 + 16);
    v11 = *(a2 + 32);
    v12 = *a2;
    v13 = v10;
    v14 = v11;
    return RB::XML::DisplayList::concat_ctm(v9, a1, &v12, v7);
  }

  return result;
}

void RB::DisplayList::State::concat(float64x2_t *this, float64x2_t *a2)
{
  v2 = vandq_s8(vandq_s8(vceqq_f64(a2[1], xmmword_195E42770), vceqq_f64(*a2, xmmword_195E42760)), vceqzq_f64(a2[2]));
  if ((vandq_s8(vdupq_laneq_s64(v2, 1), v2).u64[0] & 0x8000000000000000) == 0)
  {
    v4.f64[0] = RB::operator*(a2, this + 1);
    this[1] = v4;
    this[2] = v5;
    this[3] = v6;
    this[7].f64[0] = 0.0;
    HIDWORD(this[9].f64[0]) = -1;
  }
}

uint64_t make_contents(uint64_t result)
{
  if (!*(result + 24))
  {
    RB::DisplayList::Builder::reset_contents((result + 16));
  }

  return result;
}

uint64_t rb_color_space(__int16 a1)
{
  if ((a1 & 0x100) == 0)
  {
    return 0;
  }

  if (a1 <= 0x22u)
  {
    if (a1 > 0xFu)
    {
      if (a1 > 0x11u)
      {
        if (a1 == 18)
        {
          return 3;
        }

        else
        {
          if (a1 != 19)
          {
            return 0;
          }

          return 7;
        }
      }

      else if (a1 == 16)
      {
        return 16;
      }

      else
      {
        return 1;
      }
    }

    else if (a1 > 1u)
    {
      if (a1 == 2)
      {
        return 4;
      }

      else
      {
        if (a1 != 3)
        {
          return 0;
        }

        return 8;
      }
    }

    else if (a1)
    {
      return 2;
    }

    else
    {
      return 17;
    }
  }

  else if (a1 <= 0x51u)
  {
    if (a1 > 0x40u)
    {
      if (a1 == 65)
      {
        return 15;
      }

      else
      {
        if (a1 != 81)
        {
          return 0;
        }

        return 5;
      }
    }

    else if (a1 == 35)
    {
      return 9;
    }

    else
    {
      if (a1 != 51)
      {
        return 0;
      }

      return 10;
    }
  }

  else if (a1 <= 0x65u)
  {
    if (a1 == 82)
    {
      return 11;
    }

    else
    {
      if (a1 != 83)
      {
        return 0;
      }

      return 6;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x66u:
        return 14;
      case 0x77u:
        return 12;
      case 0x88u:
        return 13;
      default:
        return 0;
    }
  }
}

uint64_t RB::DisplayList::ItemFactory::Inner<RB::Coverage::Primitive>::operator()<RB::Fill::Image<RB::ImageTexture>>(__int128 **a1, RB::ImageTexture *a2)
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

  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Image<RB::ImageTexture>>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::Image<RB::ImageTexture> const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v3, *v3, a1[1], a2, v3 + 1, v3 + 4, v3 + 5, v3 + 12);
  v5 = *a1;
  _S0 = *(*a1 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 206) = _H0;
  }

  *(v5 + 7) = result;
  if (v5[3])
  {
LABEL_3:
    *(result + 46) |= 0x2000u;
  }

  return result;
}

uint64_t RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Image<RB::ImageTexture>>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::Image<RB::ImageTexture> const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(size_t *a1, RB::Heap *a2, __int128 *a3, RB::ImageTexture *a4, uint64_t *a5, float *a6, int *a7, __int16 *a8)
{
  v15 = (a1[2] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v15 + 224 > a1[3])
  {
    v15 = RB::Heap::alloc_slow(a1, 0xE0uLL, 15);
  }

  else
  {
    a1[2] = v15 + 224;
  }

  v16 = *a5;
  v17 = *a6;
  v18 = *a7;
  v19 = *a8;

  return RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Image<RB::ImageTexture>>::GenericItem(v15, a2, a3, a4, v16, v18, v19, v17);
}

uint64_t RB::Heap::alloc_slow(size_t *this, size_t a2, uint64_t a3)
{
  v5 = *this;
  v6 = this[2];
  if (a2 + a3 + 23 <= *this)
  {
    result = (v6 + a3) & ~a3;
    v10 = result + a2;
    if (result + a2 > this[3])
    {
      v11 = malloc_type_malloc(v5, 0x7C98E5F1uLL);
      if (!v11)
      {
        RB::precondition_failure("memory allocation failed: %lu", v12, *this);
      }

      v13 = v11;
      v14 = *this;
      v15 = v11 + *this;
      this[2] = v11;
      this[3] = v15;
      v16 = v11;
      if (!(v14 >> 16))
      {
        if (2 * v14 >= 0x10000)
        {
          v17 = 0x10000;
        }

        else
        {
          v17 = 2 * v14;
        }

        *this = malloc_good_size(v17);
        v16 = this[2];
        v15 = this[3];
      }

      v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      this[2] = (v18 + 2);
      if ((v18 + 2) > v15)
      {
        RB::precondition_failure("invalid heap state, %u, %u, %p, %p", v12, a2, a3, v18 + 2, v15);
      }

      *v18 = this[1];
      v18[1] = v13;
      this[1] = v18;
      result = (v18 + a3 + 16) & ~a3;
      v10 = result + a2;
    }

    this[2] = v10;
  }

  else
  {
    v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 + 2) > this[3])
    {
      v7 = RB::Heap::alloc_slow(this, 0x10uLL, 7uLL);
    }

    else
    {
      this[2] = (v7 + 2);
    }

    result = malloc_type_malloc(a2, 0x62221D29uLL);
    if (result)
    {
      *v7 = this[1];
      v7[1] = result;
      this[1] = v7;
    }
  }

  return result;
}

uint64_t rb_color_space(int a1)
{
  if ((a1 - 1) > 0x10)
  {
    v1 = 0;
    v2 = 0;
  }

  else
  {
    v1 = aQs3rw[a1 - 1];
    v2 = 1;
  }

  return v1 | (v2 << 8);
}

__n128 RB::DisplayList::State::add_style(__n128 *this, RB::DisplayList::Builder *a2, RB::DisplayList::Style *a3)
{
  RB::DisplayList::State::copy_ctm(this, (*(a2 + 1) + 16));
  *(a3 + 2) = v6;
  *(a3 + 3) = 0;
  if ((*(a2 + 288) & 1) == 0)
  {
    *(a3 + 5) = RB::DisplayList::State::copy_metadata(this, *(a2 + 1));
    *(a3 + 12) = this[4].n128_u32[0];
  }

  result = this[6];
  *(a3 + 24) = result;
  this[6].n128_u64[0] = 0;
  this[6].n128_u64[1] = a3;
  this[9].n128_u32[1] = -1;
  v8 = *(a2 + 1);
  *(a3 + 1) = *(v8 + 312);
  *(v8 + 312) = a3;
  return result;
}

__n128 RB::DisplayList::State::copy_ctm(__n128 *this, RB::Heap *a2)
{
  if (!this[7].n128_u64[0])
  {
    v3 = (*(a2 + 2) + 15) & 0xFFFFFFFFFFFFFFF0;
    if (v3 + 48 > *(a2 + 3))
    {
      v3 = RB::Heap::alloc_slow(a2, 0x30uLL, 15);
    }

    else
    {
      *(a2 + 2) = v3 + 48;
    }

    result = this[1];
    v5 = this[3];
    *(v3 + 16) = this[2];
    *(v3 + 32) = v5;
    *v3 = result;
    this[7].n128_u64[0] = v3;
  }

  return result;
}

RB::XML::Document *RBDrawingStateAddAlphaMultiplyFilter2(__n128 *a1, int a2, int a3, float a4, float a5, float a6, float a7)
{
  *v8 = a4;
  *&v8[1] = a5;
  *&v8[2] = a6;
  *&v8[3] = a7;
  v8[4] = a2;
  v8[5] = 0;
  v8[6] = a3;
  return add_alpha_multiply_style(a1, v8);
}

uint64_t color_filter_color(int a1, char a2, uint64_t a3, float a4, float a5, float a6, float a7)
{
  _S8 = a7;
  _S9 = a6;
  _S10 = a5;
  _S11 = a4;
  v13 = rb_color_space(a1);
  v15 = HIBYTE(*(a3 + 156));
  if ((v13 >> 8))
  {
    LOBYTE(v15) = BYTE1(v13);
    LOBYTE(v16) = v13;
  }

  else
  {
    v16 = *(a3 + 156);
  }

  __asm
  {
    FCVT            H0, S11
    FCVT            H1, S10
    FCVT            H2, S9
    FCVT            H3, S8
  }

  LOWORD(v28) = _H0;
  WORD1(v28) = _H1;
  WORD2(v28) = _H2;
  HIWORD(v28) = _H3;
  v29 = 0;
  v30 = v16 | (v15 << 8);
  if (v15)
  {
    v25 = v16 & 0xF | 0x10;
    if ((a2 & 2) == 0)
    {
      v25 = v16;
    }

    v26 = v16 & 0xF;
    if ((a2 & 1) == 0)
    {
      v26 = v25;
    }

    v14.i64[0] = 0;
    RB::Fill::Color::convert(&v28, v26, v14);
  }

  return v28;
}

double RB::Fill::Color::convert(uint64_t a1, unsigned __int8 a2, float32x4_t _Q0)
{
  _H1 = *(a1 + 10);
  __asm { FCVT            S1, H1 }

  if (_S1 >= _Q0.f32[0])
  {
    _S1 = _Q0.f32[0];
  }

  if ((*(a1 + 10) & 0x7FFF) != 0)
  {
    _S8 = _S1;
  }

  else
  {
    _S8 = _Q0.f32[0];
  }

  v12 = *(a1 + 13);
  if ((v12 & 1) == 0)
  {
    _H0 = *(a1 + 8);
    __asm { FCVT            S0, H0 }

LABEL_10:
    v16 = _S8 == 0.0 || _Q0.f32[0] <= _S8;
    LOBYTE(v13) = a2;
    if (v16)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = *(a1 + 12);
  _H0 = *(a1 + 8);
  __asm { FCVT            S0, H0 }

  if (v13 == a2)
  {
    goto LABEL_10;
  }

LABEL_14:
  RB::ColorSpace::Conversion::Conversion(v24[0].f32, v13, a2, _Q0, _S8);
  v17.i32[0] = *a1;
  v18 = vcvtq_f32_f16(v17);
  _H1 = *(a1 + 4);
  __asm { FCVT            S1, H1 }

  v18.i32[2] = _S1;
  *v21.i64 = RB::ColorSpace::Conversion::operator()(v24, v18);
  *v21.f32 = vcvt_f16_f32(v21);
  *a1 = v21.i32[0];
  *(a1 + 4) = v21.i16[2];
  v12 = *(a1 + 13);
LABEL_15:
  if ((v12 & 1) == 0)
  {
    *(a1 + 13) = 1;
  }

  *(a1 + 12) = a2;
  __asm { FCVT            H0, S8 }

  *(a1 + 8) = _H0;
  result = 0.0;
  *(a1 + 10) = 0;
  return result;
}

RB::DisplayList::Item *RB::DisplayList::Builder::ensure_layer(RB::DisplayList::Builder *this, RB::DisplayList::Item *a2, int a3, float a4)
{
  v4 = a4;
  v5 = a3;
  v42[12] = *MEMORY[0x1E69E9840];
  v8 = (2 * a3) & 0x20 | a3;
  if (a4 == 0.0)
  {
    v10 = a4;
  }

  else
  {
    (*(*a2 + 144))(a2);
    if (v5)
    {
      v11 = 0;
      do
      {
        v10 = v4;
        v4 = v4 + v4;
      }

      while (v4 <= v9 && v11++ < 3);
    }

    else if (v9 <= v4)
    {
      v10 = v4;
    }

    else
    {
      v10 = v9;
    }
  }

  v13 = v8 | (v8 >> 2);
  v14 = *(a2 + 23) & 0xC0;
  if (v14 == 64)
  {
    v15 = *(a2 + 6);
    if ((v5 & 0x84) == 0 && *(a2 + 3))
    {
      goto LABEL_59;
    }

    if ((*(a2 + 7) & 3) != 0 && ((v5 & 2) == 0 || (*(a2 + 7) & 3) != 1))
    {
      goto LABEL_59;
    }

    v16 = *(v15 + 76);
    if ((v16 & 0xC) != 0)
    {
      goto LABEL_59;
    }

    v17 = (v13 >> 3) & 1;
    if ((v16 & 2) == 0)
    {
      v17 = 1;
    }

    if ((v16 & 0x40) != 0 || !v17)
    {
      goto LABEL_59;
    }

    if (v10 != 0.0)
    {
      v18 = *(v15 + 64);
      if (v18 == 0.0)
      {
        v18 = 1.0;
      }

      if (v10 != v18)
      {
        v19 = fminf(v10 / v18, 1.0);
        *&v20 = 0;
        *(&v20 + 1) = v19;
        v35 = COERCE_UNSIGNED_INT64(v19);
        v36 = v20;
        v37 = 0;
        v38 = 0;
        RB::DisplayList::CachedTransform::CachedTransform(&v39, this, &v35, 0, 0);
        RB::DisplayList::Layer::apply_transform_(v15, &v39);
        RB::DisplayList::CachedTransform::~CachedTransform(&v39);
        v21 = *(v15 + 64);
        if (v21 == 0.0)
        {
          v21 = 1.0;
        }

        *(v15 + 64) = v21 * v19;
      }
    }

    if (v5)
    {
      *(v15 + 76) |= 0x400u;
      if ((v5 & 0x40) == 0)
      {
LABEL_33:
        if ((v8 & 0x20) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }
    }

    else if ((v5 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    *(v15 + 76) |= 0x200u;
    if ((v8 & 0x20) == 0)
    {
LABEL_51:
      if ((v5 & 0x10) == 0 || (*(v15 + 76) & 2) != 0)
      {
        return a2;
      }

      goto LABEL_59;
    }

LABEL_50:
    RB::DisplayList::Layer::discard_color(v15, *(a2 + 7));
    goto LABEL_51;
  }

  if ((v5 & 0x100) == 0)
  {
    goto LABEL_59;
  }

  if (v14 != 192)
  {
    goto LABEL_59;
  }

  v22 = *(a2 + 6);
  if ((v5 & 0x84) == 0)
  {
    if (*(a2 + 3))
    {
      goto LABEL_59;
    }
  }

  if ((*(a2 + 9) & 3) != 0 && ((v5 & 2) == 0 || (*(a2 + 9) & 3) != 1))
  {
    goto LABEL_59;
  }

  v23 = *(v22 + 76);
  if ((v23 & 0xC) != 0 || (v23 & 2) != 0 && (v13 & 8) == 0)
  {
    goto LABEL_59;
  }

  if (v10 == 0.0)
  {
    if (v5)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v24 = *(v22 + 64);
    if (v24 == 0.0)
    {
      v24 = 1.0;
    }

    if ((v5 & 1) != 0 || v10 != v24)
    {
      goto LABEL_59;
    }
  }

  if (!(*(v22 + 76) & 0x600 | v5 & 0x50 | *(v22 + 76) & 2))
  {
    return a2;
  }

LABEL_59:
  v25 = 0;
  v26 = *(a2 + 2);
  *(a2 + 2) = 0;
  if ((v5 & 4) != 0)
  {
    v25 = *(a2 + 3);
    *(a2 + 3) = 0;
  }

  RB::DisplayList::Builder::make_layer(this, 128);
  v34 = v27;
  if (v5)
  {
    *(v27 + 76) |= 0x400u;
  }

  if ((v5 & 0x40) != 0)
  {
    *(v27 + 76) |= 0x200u;
  }

  if (v10 != 0.0 && v10 != 1.0)
  {
    *(v27 + 64) = v10;
    *&v28 = 0;
    *(&v28 + 1) = v10;
    v35 = COERCE_UNSIGNED_INT64(v10);
    v36 = v28;
    v37 = 0;
    v38 = 0;
    RB::DisplayList::CachedTransform::CachedTransform(&v39, this, &v35, 0, 0);
    (*(*a2 + 32))(a2, &v39, 0);
    RB::UntypedTable::~UntypedTable(v42);
    RB::UntypedTable::~UntypedTable(&v41);
    RB::Heap::~Heap(&v40);
  }

  v29 = (v5 & 4) == 0;
  v30 = *(this + 1);
  v39 = *(a2 + 23) & 0x3F;
  _ZN2RB4Heap7emplaceINS_11DisplayList9LayerItemEJRDF16_NS_9BlendModeERPNS2_5LayerEEEEPT_DpOT0_((v30 + 16), a2 + 22, &v39, &v34);
  v32 = v31;
  *(v31 + 32) = *(a2 + 4);
  *(v31 + 40) = *(a2 + 10);
  *(v31 + 16) = v26;
  if (!v29)
  {
    *(v31 + 24) = v25;
  }

  if ((*(a2 + 23) & 0x800) != 0)
  {
    *(v31 + 46) |= 0x800u;
  }

  if ((v8 & 0x20) != 0)
  {
    RB::DisplayList::Layer::discard_color(v34, *(v31 + 56));
  }

  *(a2 + 22) = COERCE_UNSIGNED_INT(1.0);
  *(a2 + 23) = *(a2 + 23) & 0xFFC0 | 2;
  *(a2 + 4) = 0;
  *(a2 + 10) = 0;
  RB::DisplayList::Layer::append(v34, this, a2);
  return v32;
}

void sub_195CEAAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  RB::DisplayList::CachedTransform::~CachedTransform(va);
  _Unwind_Resume(a1);
}

float RB::Fill::ImageData::min_scale(RB::Fill::ImageData *this, const AffineTransform *a2)
{
  v2 = (*(this + 83) & 0xF) - 1;
  result = 1.0;
  if (v2 <= 8)
  {
    return flt_195E456D0[v2];
  }

  return result;
}

unint64_t RB::DisplayList::Layer::color_info(RB::DisplayList::Layer *this, __n128 _Q0)
{
  v13 = *(this + 20);
  v14 = *(this + 42);
  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    __asm { FCVT            S0, H0; float }

    v7 = RB::headroom_color_depth(this, _S0);
    LOWORD(v8) = *(this + 43);
    LOWORD(v9) = *(this + 44);
    _ZF = *&v9 >= *&v8 || *&v9 == COERCE_SHORT_FLOAT(0);
    if (_ZF)
    {
      LOWORD(v9) = *(this + 43);
    }

    RB::ColorInfo::operator+=(&v13, (v8 << 16) | (v9 << 32) | v7);
  }

  for (i = *(this + 4); i; i = i[1])
  {
    (*(*i + 72))(i, &v13, _Q0);
  }

  return v13 | (v14 << 32);
}

void RB::DisplayList::Style::roi(RB::DisplayList::Style *this, float32x2_t *a2, float64x2_t *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = 0x4000000000;
  if (this)
  {
    v5 = this;
    v6 = 0;
    do
    {
      v7 = v6 + 1;
      if (HIDWORD(v16) < v6 + 1)
      {
        RB::vector<RB::DisplayList::Style const*,64ul,unsigned int>::reserve_slow(__dst, v7);
        v6 = v16;
        v7 = v16 + 1;
      }

      v8 = v15;
      if (!v15)
      {
        v8 = __dst;
      }

      *&v8[8 * v6] = v5;
      LODWORD(v16) = v7;
      v5 = *(v5 + 4);
      v6 = v7;
    }

    while (v5);
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  for (i = 8 * v9 - 8; i != -8; i -= 8)
  {
    v11 = v15;
    if (!v15)
    {
      v11 = __dst;
    }

    v12 = *&v11[i];
    v13 = v12[3];
    if (v13)
    {
      RB::Rect::move_identity(a2, a3);
      RB::Rect::intersect(a2, *(v13 + 16), *(v13 + 24));
    }

    (*(*v12 + 56))(v12, a2, a3);
  }

  if (v15)
  {
    free(v15);
  }
}

void sub_195CEAD78(_Unwind_Exception *a1)
{
  if (STACK[0x208])
  {
    free(STACK[0x208]);
  }

  _Unwind_Resume(a1);
}

uint64_t RB::DisplayList::Builder::crop_bounds(RB::DisplayList::Builder *this, RB::DisplayList::State *a2)
{
  if (!*(this + 1))
  {
    RB::DisplayList::Builder::reset_contents(this);
  }

  v4 = *(this + 4);
  if (*(a2 + 37) != *(v4 + 32))
  {
    v11 = *(v4 + 16);
    v8[0] = xmmword_195E42760;
    v8[1] = xmmword_195E42770;
    v9 = 0;
    v10 = 0;
    v5 = *(a2 + 13);
    if (v5)
    {
      RB::DisplayList::Style::roi(v5, &v11, v8);
    }

    v6 = *(a2 + 12);
    if (v6)
    {
      RB::Rect::move_identity(&v11, v8);
      RB::Rect::intersect(&v11, *(v6 + 16), *(v6 + 24));
    }

    RB::Rect::move(&v11, v8, a2 + 1);
    *(a2 + 8) = v11;
    *(a2 + 37) = *(*(this + 4) + 32);
  }

  return a2 + 128;
}

RB::DisplayList::Item *RB::DisplayList::FilterStyle<RB::Filter::GaussianBlur>::draw(float32x2_t *a1, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  v10 = vclez_f32(a1[7]);
  if ((vpmin_u32(v10, v10).u32[0] & 0x80000000) != 0 || (v11 = a1[2], v12 = a1[3], v13 = RB::Heap::emplace<RB::DisplayList::GenericFilter<RB::Filter::GaussianBlur>,RB::Filter::GaussianBlur const&,RB::DisplayList::Builder &>((*(a2 + 1) + 16), &a1[7], a2), result = RB::DisplayList::Builder::apply_filter_(a2, a4, v13, v11, v12), (a4 = result) != 0))
  {
    *(a4 + 2) = a1[4];

    return RB::DisplayList::Builder::draw(a2, a4, a3, a5);
  }

  return result;
}

RB::DisplayList::Item *RB::DisplayList::Builder::apply_filter_(RB::DisplayList::Builder *a1, RB::DisplayList::Item *a2, uint64_t a3, float64x2_t *a4, const RB::DisplayList::ClipNode *a5)
{
  v28[12] = *MEMORY[0x1E69E9840];
  v10 = (*(*a3 + 40))(a3);
  v12 = v11;
  if ((*(*a3 + 64))(a3))
  {
    v13 = 128;
  }

  else
  {
    v13 = 0;
  }

  if (v10 == 6)
  {
    v14 = v12[2];
    v13 |= RB::Filter::Distance::ensure_layer_flags(v12);
  }

  else if (v10 == 5)
  {
    v14 = 0.0;
    if (!*(v12 + 4))
    {
      v16 = RB::AffineTransform::scale(a4);
      v14 = RB::Filter::GaussianBlur::layer_scale(v12, v16);
      v13 |= (8 * *(v12 + 6)) & 0x40 | 1;
    }

    v13 |= 8u;
  }

  else
  {
    v14 = 0.0;
    if (v10 == 1)
    {
      v15 = *(v12 + 1);
      if (!v15 || ((*(*v15 + 24))(v15, 0, *v12) & 1) != 0)
      {
        return a2;
      }

      if (RB::may_discard_alpha(*(a2 + 23) & 0x3F))
      {
        if ((*(**(v12 + 1) + 24))(*(v12 + 1), 2, *v12))
        {
          (**a2)(a2);
          return 0;
        }

        if (((*(**(v12 + 1) + 24))(*(v12 + 1), 7, *v12) & 1) == 0 && (*(*a2 + 96))(a2, *(v12 + 1), *v12))
        {
          (*(*a2 + 104))(a2, *(v12 + 1), *v12, a1);
          *(a2 + 3) = RB::DisplayList::Builder::join_clip_lists(a1, *(a2 + 3), a5);
          return a2;
        }
      }
    }
  }

  a2 = RB::DisplayList::Builder::ensure_layer(a1, a2, v13, v14);
  *(a2 + 3) = RB::DisplayList::Builder::join_clip_lists(a1, *(a2 + 3), a5);
  v17 = *(a2 + 6);
  v18 = *(v17 + 64);
  if (v18 == 0.0)
  {
    v18 = 1.0;
  }

  v19 = v18;
  v20 = vmulq_n_f64(*a4, v19);
  v21 = vmulq_n_f64(a4[1], v19);
  v22 = vmulq_n_f64(a4[2], v19);
  v24[0] = v20;
  v24[1] = v21;
  v24[2] = v22;
  RB::DisplayList::CachedTransform::CachedTransform(v25, a1, v24, 0, 0);
  (*(*a3 + 24))(a3, v25);
  RB::UntypedTable::~UntypedTable(v28);
  RB::UntypedTable::~UntypedTable(&v27);
  RB::Heap::~Heap(&v26);
  RB::DisplayList::Layer::append_filter(v17, a3);
  return a2;
}

void sub_195CEB2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  RB::DisplayList::CachedTransform::~CachedTransform(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *RB::DisplayList::Builder::draw(unsigned __int8 *this, RB::DisplayList::Item *a2, RB::DisplayList::Layer *a3, char a4)
{
  if (a2)
  {
    v6 = this;
    if (this[288] == 1)
    {
      v7 = *(a2 + 2);
      if (v7)
      {
        *(a2 + 2) = 0;
        return (*(*v7 + 40))(v7, v6, a3);
      }

      else
      {
        return RB::DisplayList::Builder::null_style_draw(v6, a2, a3, a4);
      }
    }

    else
    {
      return RB::DisplayList::Builder::append(this, a3, a2);
    }
  }

  return this;
}

uint64_t RB::DisplayList::Layer::append_filter(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = (result + 32);
  do
  {
    v5 = v3;
    v6 = v4;
    v3 = *v4;
    v4 = (*v4 + 8);
  }

  while (v3);
  if (v5 && (v7 = (*(*a2 + 40))(a2), result = (*(*v5 + 32))(v5, v7, v8), result))
  {
    v9 = **a2;

    return v9(a2);
  }

  else
  {
    *v6 = a2;
    *(a2 + 8) = 0;
  }

  return result;
}

unsigned __int8 *RB::DisplayList::Builder::null_style_draw(RB::DisplayList::Builder *this, RB::DisplayList::Item *a2, RB::DisplayList::Layer *a3, char a4)
{
  if (*(this + 288) != 1)
  {
    goto LABEL_23;
  }

  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    if (RB::may_discard_alpha(*(a2 + 23) & 0x3F))
    {
LABEL_20:
      v30 = **a2;

      return v30(a2);
    }

    if ((*(this + 288) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v13 = *(a2 + 23);
  if ((v13 & 0xC0) != 0x40)
  {
    goto LABEL_23;
  }

  v14 = *(a2 + 6);
  v15 = *(v14 + 76);
  if ((v15 & 0x20) != 0)
  {
    if ((v13 & 0x3F) == 0x18 && !*(v14 + 32) && (*(a2 + 56) & 3) == 0 && *(v14 + 64) == 0.0)
    {
      v44 = *(v14 + 16);
      if (v44)
      {
        v45 = 0;
        v46 = *(a2 + 3);
        v47 = v46;
        do
        {
          *(v14 + 16) = *(v44 + 1);
          _H0 = *(a2 + 22);
          __asm { FCVT            S0, H0; float }

          RB::DisplayList::Item::apply_alpha(v44, _S0);
          v50 = *(v44 + 3);
          if (v45 != v50)
          {
            v47 = RB::DisplayList::Builder::join_clip_lists(this, *(v44 + 3), v46);
            v45 = v50;
          }

          *(v44 + 3) = v47;
          RB::DisplayList::Builder::append(this, a3, v44);
          v44 = *(v14 + 16);
        }

        while (v44);
      }

      goto LABEL_20;
    }

    *(v14 + 76) = v15 & 0xFFFFFFDF;
    v33 = *(a2 + 23);
    if ((v33 & 0x3F) == 0x18)
    {
      *(a2 + 23) = v33 & 0xFFC0 | 2;
    }
  }

  if (!*(v14 + 16))
  {
    v34 = *(v14 + 76);
    if ((v34 & 0x81) != 1 || *(v14 + 64) != 0.0 || (*(a2 + 56) & 3) != 0)
    {
      goto LABEL_41;
    }

    v38 = *(v14 + 32);
    if (!v38)
    {
      goto LABEL_54;
    }

    if (!v38[1])
    {
      if ((*(*v38 + 40))(v38) == 1)
      {
        v51 = v39;
        v40 = *(v39 + 1);
        if (v40 && ((*(*v40 + 24))(v40, 0, *v39) & 1) == 0)
        {
          v41 = *(a2 + 23) & 0x3F;
          goto LABEL_55;
        }

LABEL_54:
        v51 = 0;
        v41 = *(a2 + 23) & 0x3F;
        if ((*(a2 + 23) & 0x3F) == 0)
        {
          return (**a2)(a2);
        }

LABEL_55:
        v42 = *(this + 1);
        v53 = v41;
        _ZN2RB4Heap7emplaceINS_11DisplayList23BackdropColorMatrixItemEJRPKNS_6Filter11ColorMatrixERDF16_NS_9BlendModeEEEEPT_DpOT0_((v42 + 16), &v51, a2 + 22, &v53);
        *(v43 + 24) = *(a2 + 24);
        *(v43 + 40) = *(a2 + 10);
        RB::DisplayList::Builder::append(this, a3, v43);
        *(v14 + 32) = 0;
        return (**a2)(a2);
      }

      v34 = *(v14 + 76);
    }

LABEL_41:
    if ((v34 & 0x1001) != 0)
    {
      return RB::DisplayList::Builder::append(this, a3, a2);
    }

    v35 = RB::DisplayList::Layer::Effect::needs_zero_alpha((a2 + 56));
    if ((v35 & 1) == 0)
    {
      for (i = *(v14 + 32); i; i = i[1])
      {
        v51 = 0;
        v52 = 0;
        (*(*i + 56))(i, &v51);
        v37 = vmvn_s8(vceqz_f32(v52));
        if ((vpmin_u32(v37, v37).u32[0] & 0x80000000) != 0)
        {
          return RB::DisplayList::Builder::append(this, a3, a2);
        }
      }
    }

    if (v35)
    {
      return RB::DisplayList::Builder::append(this, a3, a2);
    }

    return (**a2)(a2);
  }

  RB::DisplayList::Builder::lower_color_filters(this, v14, 1);
  _H1 = *(a2 + 22);
  __asm { FCVT            S1, H1 }

  _S0 = v18 * _S1;
  __asm { FCVT            H0, S0 }

  *(a2 + 22) = _H0;
  v21 = *(a2 + 23) & 0x3F;
  if ((a4 & 1) == 0 && _H0 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) && (v21 == 24 || v21 == 2) && *(v14 + 64) == 0.0)
  {
    v22 = *(v14 + 76);
    if ((v22 & 1) == 0 && (*(a2 + 56) & 3) == 0 && (v22 & 0x484E) == 0 && !*(v14 + 32))
    {
      v32 = *(a2 + 3);
      if (!v32)
      {
LABEL_31:
        RB::DisplayList::Layer::append_layer_items(a3, v14);
        goto LABEL_20;
      }

      if (*(v32 + 8))
      {
        RB::DisplayList::Builder::null_style_draw((v14 + 16), v32, this);
        goto LABEL_31;
      }
    }
  }

  may_discard_alpha = RB::may_discard_alpha(v21);
  RB::DisplayList::Builder::merge_layer_item(this, v14, *(a2 + 7), may_discard_alpha ^ 1, v24);
  if (v25)
  {
    v26 = v25;
    _H0 = *(a2 + 22);
    __asm { FCVT            S0, H0; float }

    RB::DisplayList::Item::apply_alpha(v25, _S0);
    *(v26 + 46) = *(v26 + 46) & 0xFFC0 | *(a2 + 23) & 0x3F;
    v29 = *(a2 + 3);
    if (v29)
    {
      *(v26 + 24) = RB::DisplayList::Builder::join_clip_lists(this, *(v26 + 24), v29);
    }

    RB::DisplayList::Builder::append(this, a3, v26);
    goto LABEL_20;
  }

LABEL_23:

  return RB::DisplayList::Builder::append(this, a3, a2);
}

void *RB::DisplayList::Builder::lower_color_filters(RB::DisplayList::Builder *this, RB::DisplayList::Layer *a2, int a3)
{
  result = *(a2 + 4);
  if (result)
  {
    if (!result[1] && (*(a2 + 38) & 0x1001) == 0)
    {
      result = (*(*result + 40))(result);
      if (result == 1)
      {
        v8 = v7;
        v9 = *(v7 + 1);
        if (v9)
        {
          if (a3)
          {
            v10 = *v8 | 0x80000000;
          }

          else
          {
            v10 = *v8;
          }

          result = RB::DisplayList::Builder::can_lower_color_fn(a2, v9, v10);
          if (result)
          {
            RB::DisplayList::Builder::lower_color_fn(this, a2, *(v8 + 1), v10);
            result = (***(a2 + 4))();
            *(a2 + 4) = 0;
          }
        }
      }
    }
  }

  return result;
}

BOOL RB::ColorMatrix::is_alpha_zero(RB::ColorMatrix *this)
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

  return _ZF != 0;
}

void *RB::Heap::emplace<RB::DisplayList::GenericFilter<RB::Filter::ColorMatrix>,RB::Filter::ColorMatrix const&,RB::DisplayList::Builder &>(size_t *a1, RB::Filter::ColorMatrix *a2, RB::DisplayList::Builder *a3)
{
  v5 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v5 + 6) > a1[3])
  {
    v5 = RB::Heap::alloc_slow(a1, 0x30uLL, 7);
  }

  else
  {
    a1[2] = (v5 + 6);
  }

  v5[2] = 0;
  v5[3] = 0;
  *v5 = &unk_1F0A3A178;
  RB::Filter::ColorMatrix::ColorMatrix((v5 + 4), a2, a3);
  return v5;
}

uint64_t RB::ColorMatrix::is_identity(float16x4_t *this)
{
  if ((vminv_u16(vceq_f16(*this, 15360)) & 0x8000) == 0 || (vminv_u16(vceq_f16(this[1], 1006632960)) & 0x8000) == 0 || (vminv_u16(vceq_f16(this[2], 0x3C0000000000)) & 0x8000) == 0 || (vminv_u16(vceq_f16(this[3], 0x3C00000000000000)) & 0x8000) == 0)
  {
    return 0;
  }

  v2 = vceqz_f16(this[4]);
  v2.i16[0] = vminv_u16(v2);
  return (v2.i32[0] >> 15) & 1;
}

RB::DisplayList::Item *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::AlphaMultiply>::draw(uint64_t a1, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  result = RB::ColorStyle::AlphaMultiply::test(a1 + 56, 0, *(a1 + 72));
  if ((result & 1) == 0)
  {
    v11 = *(a2 + 1);
    *v13 = *(a1 + 56);
    *&v13[6] = *(a1 + 62);
    v12 = ((v11[4] + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 + 4) > v11[5])
    {
      v12 = RB::Heap::alloc_slow(v11 + 2, 0x20uLL, 7);
    }

    else
    {
      v11[4] = (v12 + 4);
    }

    *v12 = &unk_1F0A3DAD8;
    v12[1] = 0;
    v12[2] = *v13;
    *(v12 + 22) = *&v13[6];
    result = RB::DisplayList::Builder::apply_color_matrix_fn(a2, a4, v12, *(a1 + 72), *(a1 + 16), *(a1 + 24));
    a4 = result;
  }

  if (a4)
  {
    *(a4 + 2) = *(a1 + 32);

    return RB::DisplayList::Builder::draw(a2, a4, a3, a5);
  }

  return result;
}

uint64_t RB::ColorMatrix::set_alpha_multiply(uint64_t result, char a2, float16x4_t a3, int8x8_t a4)
{
  *result = 0;
  *(result + 8) = 0;
  *a4.i16 = vmulh_lane_f16(*a3.i16, a3, 3);
  v4 = COERCE_DOUBLE(vext_s8(vext_s8(a4, a4, 2uLL), vmul_lane_f16(vext_s8(a3, a3, 2uLL), a3, 3), 6uLL));
  HIWORD(v4) = a3.i16[3];
  *(result + 16) = 0;
  v5 = 0.0;
  HIWORD(v5) = a3.i16[3];
  a3.i16[3] = 0;
  if (a2)
  {
    *&a3 = 0.0;
  }

  else
  {
    v4 = v5;
  }

  *(result + 24) = v4;
  *(result + 32) = *&a3;
  return result;
}

uint64_t RB::ColorMode::merge_depth(uint64_t result, int a2)
{
  v2 = result;
  v3 = 2;
  if ((a2 - 2) < 2)
  {
    result = RB::ColorSpace::wide_gamut((result + 1));
    if (result)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else if ((a2 - 4) >= 2)
  {
    if (a2 != 1)
    {
      return result;
    }
  }

  else
  {
    v3 = 5;
  }

  if (*v2 < v3)
  {
    *v2 = v3;
  }

  return result;
}

uint64_t RB::ColorMode::pixel_format(RB::ColorMode *this, const RB::Device *a2, char a3, unsigned int *a4)
{
  v4 = *(this + 1);
  if (v4 >= 0x10 && (v4 & 0xF0) != 16)
  {
    RB::ColorMode::pixel_format(this, a2);
  }

  if (!a4)
  {
    if ((*(this + 3) & 1) == 0)
    {
      goto LABEL_10;
    }

    return 10;
  }

  *a4 = 0;
  if (*(this + 3))
  {
    *a4 = 4;
    return 10;
  }

  v4 = *(this + 1);
LABEL_10:
  v7 = a3 & 1;
  v8 = *(this + 2);
  if ((v8 & 0xF) != 0)
  {
    goto LABEL_11;
  }

  v15 = *this;
  if (v15 - 2 < 4)
  {
    if (a3)
    {
      return 2147483667;
    }

    else
    {
      return 2147483666;
    }
  }

  if (v15 > 1)
  {
LABEL_11:
    if ((a3 & 0x20) != 0)
    {
      result = 2147483661;
      if ((v8 & 0xE0) == 0x20)
      {
        return result;
      }

      v9 = *this;
      if (v9 == 4)
      {
        return result;
      }
    }

    else
    {
      v9 = *this;
    }

    v10 = a3 & 0x1A;
    if (!(v7 | v9))
    {
      if (a2 && v10 == 2)
      {
        if (*(a2 + 331) >= 3u)
        {
          v11 = 2147483652;
          v12 = v4 >= 0x10;
          v13 = 40;
          goto LABEL_42;
        }

LABEL_45:
        if (a2 && (a3 & 4) == 0 && *(a2 + 331) >= 3u)
        {
          v18 = v4 >= 0x10;
          v19 = 542;
          v20 = 523;
          goto LABEL_55;
        }

        goto LABEL_49;
      }

      if (v10 == 2)
      {
        goto LABEL_45;
      }

      if (v10 == 8)
      {
        v11 = 2147483653;
        v12 = v4 >= 0x10;
        v13 = 43;
LABEL_42:
        if (v12)
        {
          return v13;
        }

        else
        {
          return v11;
        }
      }

LABEL_49:
      if (v4 >= 0x10)
      {
        return 80;
      }

      else
      {
        return 81;
      }
    }

    if (v9 > 1)
    {
      if ((a3 & 1) == 0 && v9 == 2)
      {
        v18 = v4 >= 0x10;
        v19 = 94;
        v20 = 628;
LABEL_55:
        if (v18)
        {
          return v19;
        }

        else
        {
          return v20;
        }
      }

      result = 115;
      if (a2)
      {
        if (v9 <= 3)
        {
          result = 115;
          if ((a3 & 8) == 0 && *(a2 + 331) >= 3u)
          {
            return RB::ColorMode::pixel_format(RB::Device const*,unsigned int,unsigned int *)const::formats[(v4 < 0x10) | (2 * v7)];
          }
        }
      }
    }

    else
    {
      if (a3)
      {
        goto LABEL_49;
      }

      if (v10 != 8)
      {
        if (v10 == 2)
        {
          goto LABEL_45;
        }

        goto LABEL_49;
      }

      if (v4 >= 0x10)
      {
        return 2147483649;
      }

      else
      {
        return 2147483650;
      }
    }
  }

  else
  {
    v16 = 2147483665;
    if (v4 < 0x10)
    {
      v17 = 2147483663;
    }

    else
    {
      v16 = 2147483664;
      v17 = 2147483662;
    }

    if (a3)
    {
      return v16;
    }

    else
    {
      return v17;
    }
  }

  return result;
}

void *std::unique_ptr<RB::XML::Document>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[15];
    if (v3)
    {
      free(v3);
    }

    RB::UntypedTable::~UntypedTable((v2 + 5));
    v4 = v2[2];
    if (v4)
    {
      free(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      v6 = v5[2] - 1;
      v5[2] = v6;
      if (!v6)
      {
        (*(*v5 + 8))(v5);
      }
    }

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

unsigned int *RB::pixel_format_traits(unint64_t this, MTLPixelFormat a2)
{
  if ((this & 0x80000000) != 0)
  {
    if ((this & 0xFFFFFFFF7FFFFFFFLL) < 0x14)
    {
    }

    return &RB::pixel_format_traits(MTLPixelFormat)::default_traits;
  }

  if (RB::pixel_format_traits(MTLPixelFormat)::once != -1)
  {
    RB::pixel_format_traits();
  }

  v3 = 129;
  result = RB::pixel_format_traits(MTLPixelFormat)::sorted_traits;
  do
  {
    v5 = v3 >> 1;
    v6 = &result[10 * (v3 >> 1)];
    v8 = *v6;
    v7 = v6 + 10;
    v3 += ~(v3 >> 1);
    if (v8 < this)
    {
      result = v7;
    }

    else
    {
      v3 = v5;
    }
  }

  while (v3);
  if (result >= RB::pixel_format_traits(MTLPixelFormat)::sorted_traits + 5160 || *result != this)
  {
    return &RB::pixel_format_traits(MTLPixelFormat)::default_traits;
  }

  return result;
}

void sub_195CEC234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x19A8C09E0](v4, 0x10B0C4070C891A8);
  std::unique_ptr<RB::XML::Document>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

double RB::DisplayList::Builder::move_contents@<D0>(RB::DisplayList::Builder *this@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = *(this + 1);
  if (v5 && **(this + 4) != v5 + 320 && *(this + 35) == (this + 48))
  {
    RB::DisplayList::Builder::move_contents(this, a2);
  }

  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 4) = xmmword_195E42760;
  *(this + 5) = xmmword_195E42770;
  *(this + 12) = 0;
  *(this + 13) = 0;
  v8 = 0uLL;
  v9 = 0;
  uuid_clear(&v8 + 4);
  *(this + 7) = v8;
  *(this + 32) = v9;
  v6 = *(this + 17);
  *(this + 17) = 0;
  if (v6 && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::DisplayList::decode_metadata();
  }

  result = 0.0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 48) = *(this + 1) + 1;
  *a3 = *(this + 1);
  *(this + 1) = 0;
  return result;
}

uint64_t RB::ColorSpace::cg_color_space(RB::ColorSpace *this, int a2)
{
  v2 = *this;
  v3 = v2 & 0xF;
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        if (v2 >> 4 == 3)
        {
          if ((atomic_load_explicit(&qword_1ED6D53B8, memory_order_acquire) & 1) == 0)
          {
            RB::ColorSpace::cg_color_space();
          }

          return qword_1ED6D53B0;
        }

        if (v2 >> 4 == 2)
        {
          if ((atomic_load_explicit(&qword_1ED6D53A8, memory_order_acquire) & 1) == 0)
          {
            RB::ColorSpace::cg_color_space();
          }

          return _MergedGlobals_3;
        }
      }

LABEL_41:
      v5 = 0;
      if (*this > 0x22u)
      {
        if (*this <= 0x50u)
        {
          if (*this <= 0x31u)
          {
            if (v2 == 35)
            {
              v11 = 28;
            }

            else
            {
              if (v2 != 49)
              {
                return v5;
              }

              v11 = 22;
            }
          }

          else
          {
            switch(v2)
            {
              case '2':
                v11 = 12;
                break;
              case '3':
                v11 = 29;
                break;
              case 'A':
                v11 = 32;
                break;
              default:
                return v5;
            }
          }
        }

        else if (*this > 0x65u)
        {
          switch(v2)
          {
            case 0x66u:
              v11 = 31;
              break;
            case 0x77u:
              v11 = 14;
              break;
            case 0x88u:
              v11 = 30;
              break;
            default:
              return v5;
          }
        }

        else
        {
          switch(v2)
          {
            case 'Q':
              v11 = 20;
              break;
            case 'R':
              v11 = 13;
              break;
            case 'S':
              v6 = a2 == 0;
              v7 = 23;
              v8 = 25;
              goto LABEL_104;
            default:
              return v5;
          }
        }

LABEL_115:
        os_unfair_lock_lock(&RB::ColorSpace::cg_color_space(BOOL)const::lock);
        v5 = RB::ColorSpace::cg_color_space(BOOL)const::cache[v11];
        if (!v5)
        {
          v5 = CGColorSpaceCreateWithID();
          RB::ColorSpace::cg_color_space(BOOL)const::cache[v11] = v5;
        }

        os_unfair_lock_unlock(&RB::ColorSpace::cg_color_space(BOOL)const::lock);
        return v5;
      }

      if (*this > 0x10u)
      {
        if (*this > 0x12u)
        {
          switch(v2)
          {
            case 0x13u:
              v11 = 27;
              break;
            case 0x21u:
              v11 = 21;
              break;
            case 0x22u:
              v11 = 11;
              break;
            default:
              return v5;
          }

          goto LABEL_115;
        }

        v9 = a2 == 0;
        if (v2 == 17)
        {
          v10 = 15;
        }

        else
        {
          v10 = 7;
        }
      }

      else if (*this <= 1u)
      {
        v9 = a2 == 0;
        if (*this)
        {
          v10 = 17;
        }

        else
        {
          v10 = 3;
        }
      }

      else
      {
        switch(v2)
        {
          case 2u:
            v9 = a2 == 0;
            v10 = 9;
            break;
          case 3u:
            v6 = a2 == 0;
            v7 = 24;
            v8 = 26;
LABEL_104:
            if (v6)
            {
              v11 = v7;
            }

            else
            {
              v11 = v8;
            }

            goto LABEL_115;
          case 0x10u:
            v9 = a2 == 0;
            v10 = 1;
            break;
          default:
            return v5;
        }
      }

      if (v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 + 1;
      }

      goto LABEL_115;
    }

    if (v2 > 0xF)
    {
      if ((v2 & 0xF0) != 0x10)
      {
        goto LABEL_41;
      }

      if (a2)
      {

        return RB::extended_display_p3_colorspace(this);
      }

      else
      {

        return RB::display_p3_colorspace(this);
      }
    }

    else if (a2)
    {

      return RB::extended_linear_display_p3_colorspace(this);
    }

    else
    {

      return RB::linear_display_p3_colorspace(this);
    }
  }

  else
  {
    if ((v2 & 0xF) != 0)
    {
      if (v3 == 1)
      {
        if (v2 <= 0xF)
        {
          if (a2)
          {

            return RB::extended_linear_srgb_colorspace(this);
          }

          else
          {

            return RB::linear_srgb_colorspace(this);
          }
        }

        if ((v2 & 0xF0) == 0x10)
        {
          if (a2)
          {

            return RB::extended_srgb_colorspace(this);
          }

          else
          {

            return RB::srgb_colorspace(this);
          }
        }
      }

      goto LABEL_41;
    }

    if (v2 > 0xF)
    {
      if ((v2 & 0xF0) != 0x10)
      {
        goto LABEL_41;
      }

      if (a2)
      {

        return RB::extended_gray_colorspace(this);
      }

      else
      {

        return RB::gray_colorspace(this);
      }
    }

    else if (a2)
    {

      return RB::extended_linear_gray_colorspace(this);
    }

    else
    {

      return RB::linear_gray_colorspace(this);
    }
  }
}

void RB::ImageProvider::add_to_pending(atomic_uint *this)
{
  if (*(this + 2))
  {
    os_unfair_lock_lock(&RB::ImageProvider::_pending_image_providers_lock);
    v2 = RB::ImageProvider::_pending_image_providers;
    if (!RB::ImageProvider::_pending_image_providers)
    {
      operator new();
    }

    atomic_fetch_add_explicit(this + 2, 1u, memory_order_relaxed);
    v3 = v2[1];
    v4 = v3 + 1;
    if (v2[2] < (v3 + 1))
    {
      RB::vector<unsigned long,0ul,unsigned long>::reserve_slow(v2, v4);
      v3 = v2[1];
      v4 = v3 + 1;
    }

    *(*v2 + 8 * v3) = this;
    v2[1] = v4;

    os_unfair_lock_unlock(&RB::ImageProvider::_pending_image_providers_lock);
  }
}

void sub_195CEC908(_Unwind_Exception *a1)
{
  if (atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::ImageProvider::submit_all();
  }

  os_unfair_lock_unlock(&RB::ImageProvider::_pending_image_providers_lock);
  _Unwind_Resume(a1);
}

void RB::ImageProvider::make_cgimage(RB::ImageProvider *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 6);
  if (v4)
  {
    *a2 = CFRetain(v4);
    return;
  }

  if (*(this + 111) == 1)
  {
    goto LABEL_18;
  }

  if (*(this + 2) && (*(this + 100) & 8) == 0)
  {
    *&callbacks.version = xmmword_1F0A3E988;
    *&callbacks.releaseBytePointer = *&off_1F0A3E998;
    v5 = objc_opt_new();
    v6 = v5;
    if ((*(this + 104) & 0xF) != 0)
    {
      v7 = MEMORY[0x1E695F2C8];
      if (*(this + 25))
      {
        v7 = MEMORY[0x1E695F2C0];
      }

      [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v7];
    }

    else
    {
      [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", RB::ImageProvider::bitmap_info(this)), *MEMORY[0x1E695F2D0]}];
    }

    v17 = *(this + 24);
    if (v17 == 0.0)
    {
      v17 = *(this + 23);
    }

    if (v17 != 0.0)
    {
      v18 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      [v6 setObject:v18 forKeyedSubscript:*MEMORY[0x1E695F2D8]];
    }

    RB::ImageProvider::cg_color_space(this, v8);
    atomic_fetch_add_explicit(this + 2, 1u, memory_order_relaxed);
    v19 = CGImageProviderCreate();
    if (v19)
    {
      v20 = CGImageCreateWithImageProvider();
      *a2 = v20;
      if (v20)
      {
        CGImageSetProperty();
      }

      CFRelease(v19);
    }

    else
    {
      (callbacks.getBytesAtPosition)(this);
      *a2 = 0;
    }

    return;
  }

  callbacks = *byte_1F0A3E9A8;
  v9 = *(this + 29);
  AllocSize = *(this + 62);
  if (v9 && !AllocSize)
  {
    *(this + 63) = IOSurfaceGetBytesPerRow(*(v9 + 48));
    AllocSize = IOSurfaceGetAllocSize(*(*(this + 29) + 48));
    *(this + 62) = AllocSize;
  }

  atomic_fetch_add_explicit(this + 2, 1u, memory_order_relaxed);
  v11 = CGDataProviderCreateDirect(this, AllocSize, &callbacks);
  if (!v11)
  {
    (callbacks.releaseInfo)(this);
LABEL_18:
    *a2 = 0;
    return;
  }

  v12 = v11;
  *a2 = 0;
  v29 = *(this + 7);
  if ((*(this + 100) & 8) != 0)
  {
    v15 = *(this + 22) - 1;
    if (v15 > 3)
    {
      v16 = 8;
    }

    else
    {
      v16 = qword_195E44568[v15];
    }

    v28 = RB::ImageProvider::bytes_per_pixel(this);
    *a2 = CGImageMaskCreate(v29, SHIDWORD(v29), v16, 8 * v28, *(this + 63), v12, 0, 1);
  }

  else
  {
    v13 = *(this + 22) - 1;
    if (v13 > 3)
    {
      v14 = 8;
    }

    else
    {
      v14 = qword_195E44568[v13];
    }

    v21 = RB::ImageProvider::bytes_per_pixel(this);
    v22 = *(this + 63);
    v24 = RB::ImageProvider::cg_color_space(this, v23);
    v25 = RB::ImageProvider::bitmap_info(this);
    v26 = CGImageCreate(v29, SHIDWORD(v29), v14, 8 * v21, v22, v24, v25, v12, 0, 1, kCGRenderingIntentDefault);
    *a2 = v26;
    if (v26)
    {
      v27 = *(this + 24);
      if (v27 == 0.0)
      {
        v27 = *(this + 23);
      }

      if (v27 != 0.0)
      {
        CGImageSetHeadroom();
      }
    }
  }

  CFRelease(v12);
}

void sub_195CECD20(_Unwind_Exception *a1)
{
  CFRelease(v2);
  CFRelease(v1);
  _Unwind_Resume(a1);
}

uint64_t RB::SurfacePool::shared(RB::SurfacePool *this)
{
  if (RB::SurfacePool::_shared_once != -1)
  {
    RB::SurfacePool::shared();
  }

  return RB::SurfacePool::_shared_pool;
}

uint64_t RBFillData::apply<RB::DestroyAny>(uint64_t result)
{
  v1 = result;
  if (*result == 5)
  {

    v2 = v1[19];
    if (v2)
    {
      v3 = v1[19];
    }

    else
    {
      v3 = (v1 + 3);
    }

    if (v1[20])
    {
      v4 = 0;
      do
      {
        RB::CustomShader::Value::reset_data(v3);
        ++v4;
        v3 += 4;
      }

      while (v4 < v1[20]);
      v2 = v1[19];
    }

    if (v2)
    {
      free(v2);
    }

    result = v1[2];
    if (result && atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      return RB::CustomShader::Library::intern_function(result);
    }
  }

  else if (*result == 3)
  {
    result = *(result + 24);
    if (result)
    {
      if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        return RBFillData::apply<RB::DestroyAny>(result);
      }
    }
  }

  return result;
}

void RB::Rect::intersect(float32x2_t *a1, double a2, float32x2_t a3)
{
  v3 = a1[1];
  v4 = vceqz_f32(v3);
  if ((vpmax_u32(v4, v4).u32[0] & 0x80000000) == 0)
  {
    v6 = vceqz_f32(a3);
    if ((vpmax_u32(v6, v6).u32[0] & 0x80000000) == 0)
    {
      v7 = vbsl_s8(vcltz_f32(v3), vadd_f32(*a1, v3), *a1);
      v8 = vabs_f32(v3);
      *a1 = v7;
      a1[1] = v8;
      v9 = vbsl_s8(vcltz_f32(a3), vadd_f32(a3, *&a2), *&a2);
      v10 = vmaxnm_f32(v7, v9);
      v11 = vminnm_f32(vadd_f32(v7, v8), vadd_f32(v9, vabs_f32(a3)));
      v12 = vcgt_f32(v11, v10);
      if ((vpmin_u32(v12, v12).u32[0] & 0x80000000) == 0)
      {
        *a1 = 0;
        a1[1] = 0;
        return;
      }

      a2 = RB::Rect::from_bounds_inner(v10, v11);
    }

    *a1 = a2;
    a1[1] = a3;
  }
}

uint64_t RB::pixel_format_bytes_per_pixel(RB *this, MTLPixelFormat a2)
{
  v2 = RB::pixel_format_traits(this, a2);
  v3 = *(v2 + 5);
  if (v3 <= 1)
  {
    v3 = 1;
  }

  if (*(v2 + 6))
  {
    return *(v2 + 6);
  }

  else
  {
    return v3;
  }
}

uint64_t RB::anonymous namespace::surface_pool_log(RB::_anonymous_namespace_ *this)
{
  {
    if (v2)
    {
    }
  }
}

uint64_t RB::extended_display_p3_colorspace(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D54F0, memory_order_acquire) & 1) == 0)
  {
    RB::extended_display_p3_colorspace();
  }

  return qword_1ED6D54E8;
}

RB::Heap *RB::Heap::Heap(RB::Heap *this, char *a2, uint64_t a3, unint64_t a4)
{
  *(this + 4) = 0;
  v5 = 512;
  if (a4 > 0x200)
  {
    v5 = a4;
  }

  if (!a4)
  {
    v5 = 0x2000;
  }

  *this = v5;
  *(this + 1) = 0;
  RB::Heap::reset(this, a2, a3);
  return this;
}

RB::XML::DisplayList *RBDrawingStateAddBlurFilter(__n128 *a1, _RBDrawingState *a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v10 = a1->n128_u64[1];
  v20 = a6;
  v21 = a7;
  v18 = a4;
  v19 = a5;
  if (!v10[3])
  {
    make_contents(v10);
    a4 = v18;
    a5 = v19;
    a6 = v20;
    a7 = v21;
  }

  v24 = 0;
  v25 = 0;
  v26.origin.x = a4;
  v26.origin.y = a5;
  v26.size.width = a6;
  v26.size.height = a7;
  if (CGRectIsInfinite(v26) || (v27.origin.x = v18, v27.origin.y = v19, v27.size.width = v20, v27.size.height = v21, CGRectIsNull(v27)))
  {
    v12 = 0;
  }

  else
  {
    v13.f64[0] = v18;
    v13.f64[1] = v19;
    v11 = vcvt_f32_f64(v13);
    v14.f64[0] = v20;
    v14.f64[1] = v21;
    v24 = v11;
    v25 = vcvt_f32_f64(v14);
    v12 = &v24;
  }

  *v11.i32 = a3;
  RB::Filter::GaussianBlur::GaussianBlur(v22, v11, 0, v12, a2);
  *&v15 = RB::DisplayList::State::add_filter_style<RB::Filter::GaussianBlur>(a1, (v10 + 2), v22);
  v16 = v23;
  v23 = 0;
  if (v16)
  {
    (**v16)(v16, v15);
  }

  result = v10[40];
  if (result)
  {
    v28.origin.x = v18;
    v28.origin.y = v19;
    v28.size.width = v20;
    v28.size.height = v21;
    RB::XML::DisplayList::add_blur_filter(result, a1, a2, a3, v28);
  }

  return result;
}

void sub_195CED194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (***a22)(void))
{
  if (a22)
  {
    RBDrawingStateAddBlurFilter_cold_1(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::DisplayList::Layer::compute_roi(uint64_t a1, uint64_t a2, int32x2_t *a3, int32x2_t *a4, _DWORD *a5, __n128 *a6, __n128 a7)
{
  v11 = 0;
  v63 = *MEMORY[0x1E69E9840];
  v58 = 0uLL;
  if (a6 && (*(a1 + 76) & 0x1001) != 0)
  {
    a7 = *a6;
    v58 = *a6;
    v11 = a6;
  }

  if ((a2 & 3) == 2)
  {
    a7.n128_u32[0] = 0;
    v17 = a3[1];
    v18 = vceq_s32(v17, 0x8000000080000000);
    v19 = vdup_lane_s32(vcgt_s32(a7.n128_u64[0], vpmin_u32(v18, v18)), 0);
    *&v59 = vbsl_s8(v19, 0x100000001000000, vcvt_f32_s32(*a3));
    *(&v59 + 1) = vbsl_s8(v19, vneg_f32(0x80000000800000), vcvt_f32_s32(v17));
    (*(*(a2 & 0xFFFFFFFFFFFFFFFCLL) + 32))(a2 & 0xFFFFFFFFFFFFFFFCLL, &v59);
    RB::Bounds::Bounds(&v57, *&v59, *(&v59 + 8), v20, v21);
    a7.n128_u32[1] = DWORD1(v57);
    *a3->i8 = v57;
  }

  else
  {
    if ((a2 & 3) != 1)
    {
      goto LABEL_12;
    }

    a7.n128_u32[0] = 0;
    v12 = a3[1];
    v13 = vceq_s32(v12, 0x8000000080000000);
    v14 = vdup_lane_s32(vcgt_s32(a7.n128_u64[0], vpmin_u32(v13, v13)), 0);
    *&v59 = vbsl_s8(v14, 0x100000001000000, vcvt_f32_s32(*a3));
    *(&v59 + 1) = vbsl_s8(v14, vneg_f32(0x80000000800000), vcvt_f32_s32(v12));
    if (RB::unapply(&v59, (a2 & 0xFFFFFFFFFFFFFFFCLL), a3))
    {
      RB::Bounds::Bounds(&v57, *&v59, *(&v59 + 8), v15, v16);
      a7.n128_u32[1] = DWORD1(v57);
      *a3->i8 = v57;
    }

    else
    {
      a7.n128_u64[0] = vdup_n_s32(0xC0000001);
      *a3 = a7.n128_u64[0];
      a3[1] = 0x8000000080000000;
    }

    v11 = 0;
  }

  *a5 |= 2u;
LABEL_12:
  if (*(a1 + 64) == 0.0)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = *(a1 + 64);
  }

  if (v22 != 1.0)
  {
    a7.n128_u32[0] = 0;
    v23 = a3[1];
    v24 = vceq_s32(v23, 0x8000000080000000);
    v25 = vdup_lane_s32(vcgt_s32(a7.n128_u64[0], vpmin_u32(v24, v24)), 0);
    v26 = vbsl_s8(v25, vneg_f32(0x80000000800000), vcvt_f32_s32(v23));
    v27 = vcvt_f32_s32(*a3);
    RB::Bounds::Bounds(&v59, vmul_n_f32(vbsl_s8(v25, 0x100000001000000, v27), v22), vmul_n_f32(v26, v22), *&v26, v27);
    v28.i32[1] = DWORD1(v59);
    *a3->i8 = v59;
    if (v11)
    {
      v28.i32[0] = 0;
      v29 = vceq_s32(*&v58.n128_i8[8], 0x8000000080000000);
      v30 = vdup_lane_s32(vcgt_s32(v28, vpmin_u32(v29, v29)), 0);
      v31 = vbsl_s8(v30, vneg_f32(0x80000000800000), vcvt_f32_s32(*&v58.n128_i8[8]));
      v33 = vcvt_f32_s32(v58.n128_u64[0]);
      v32 = vbsl_s8(v30, 0x100000001000000, v33);
      v33.i32[0] = *(a1 + 64);
      if (*v33.i32 == 0.0)
      {
        *v33.i32 = 1.0;
      }

      RB::Bounds::Bounds(&v58, vmul_n_f32(v32, *v33.i32), vmul_n_f32(v31, *v33.i32), *&v33, (COERCE_UNSIGNED_INT(1.0) | 0x100000000000000));
    }

    *a5 |= 2u;
  }

  if (v11)
  {
    v37 = RB::DisplayList::Layer::compute_bounds_(a1, &v58);
    *&v57 = v37;
    *(&v57 + 1) = v34;
  }

  else
  {
    RB::DisplayList::Layer::compute_bounds(a1);
    v57 = *(a1 + 48);
    v34 = *(&v57 + 8);
    v37 = *&v57;
  }

  RB::Bounds::Bounds(&v59, *&v37, v34, v35, v36);
  RB::Bounds::intersect(a3, *&v59, *(&v59 + 8));
  v38 = vclez_s32(a3[1]);
  if ((vpmax_u32(v38, v38).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  *a4->i8 = *a3->i8;
  if (*(a1 + 32))
  {
    RB::Heap::Heap(&v59, v62, 512, 0);
    v40 = *(a1 + 32);
    if (v40)
    {
      v41 = 0;
      do
      {
        v42 = ((v60 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v42 + 4) > v61)
        {
          v42 = RB::Heap::alloc_slow(&v59, 0x20uLL, 7);
        }

        else
        {
          v60 = v42 + 4;
        }

        *v42 = v40;
        v42[3] = v41;
        v40 = *(v40 + 8);
        v41 = v42;
      }

      while (v40);
    }

    else
    {
      v42 = 0;
    }

    v39.i32[0] = 0;
    v44 = a4[1];
    v45 = vceq_s32(v44, 0x8000000080000000);
    v46 = vdup_lane_s32(vcgt_s32(v39, vpmin_u32(v45, v45)), 0);
    v55 = vbsl_s8(v46, 0x100000001000000, vcvt_f32_s32(*a4));
    v56 = vbsl_s8(v46, vneg_f32(0x80000000800000), vcvt_f32_s32(v44));
    v47 = &v57;
    if (v42)
    {
      do
      {
        RB::Rect::intersect(&v55, *v47, *(v47 + 8));
        RB::Bounds::Bounds(&v53, v55, v56, v48, v49);
        RB::Bounds::Union(a3, v53, v54);
        (*(**v42 + 48))(*v42, &v55);
        v47 = (*v42 + 16);
        v42 = v42[3];
      }

      while (v42);
      v37 = *v47;
    }

    RB::Rect::intersect(&v55, v37, *(v47 + 8));
    RB::Bounds::Bounds(&v53, v55, v56, v50, v51);
    RB::Bounds::Union(a3, v53, v54);
    RB::Heap::~Heap(&v59);
  }

  v52 = vcgtz_s32(a3[1]);
  return vpmin_u32(v52, v52).u32[0] >> 31;
}

void sub_195CED65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  RB::Heap::~Heap(va);
  _Unwind_Resume(a1);
}

void RB::DisplayList::render(const RB::DisplayList::Contents *a1, int32x2_t *x1_0, void *a3, int a4, uint64_t a5, int32x2_t a6, int32x2_t a7, float a8, __n128 a9)
{
  v25[39] = *MEMORY[0x1E69E9840];
  v10 = vclez_s32(a7);
  if ((vpmax_u32(v10, v10).u32[0] & 0x80000000) == 0)
  {
    v21[0] = a1;
    v21[1] = a5;
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = 0;
    v22 = a8;
    v23 = a4;
    v24 = a9;
    if (*(a1 + 424) == 1)
    {
      RB::DisplayList::Builder::Builder(v25);
      RB::DisplayList::Builder::set_optimized(v25, 1);
      v15.i32[0] = 0;
      v16 = vceq_s32(a7, 0x8000000080000000);
      v17 = vdup_lane_s32(vcgt_s32(v15, vpmin_u32(v16, v16)), 0);
      RB::DisplayList::Builder::set_crop(v25, v26, vbsl_s8(v17, 0x100000001000000, vcvt_f32_s32(a6)), vbsl_s8(v17, vneg_f32(0x80000000800000), vcvt_f32_s32(a7)));
      RB::DisplayList::Builder::draw(v25, a1, *&v25[35], 1.0, 0, 0);
      RB::DisplayList::Builder::move_contents(v25, v18, &v20);
      v19 = v20;
      v21[0] = v20;
      RB::DisplayList::Builder::~Builder(v25);
    }

    else
    {
      v19 = 0;
    }

    RB::DisplayList::render_many(x1_0, a3, v21, 1);
    if (v19)
    {
      if (atomic_fetch_add_explicit((*&v19 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::DisplayList::render();
      }
    }
  }
}

void sub_195CED7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  RB::DisplayList::Builder::~Builder(va);
  _Unwind_Resume(a1);
}

void RB::DisplayList::render_many(int32x2_t *a1, void *a2, int32x2_t *a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v9 = a1[2];
    RB::Heap::Heap(&v10, v11, 1024, 0);
    v12 = 0;
    v13 = 0;
    v14 = 0x800000000;
    v15 = 0;
    v16 = 0x2000000000;
    v17 = 0u;
    memset(v18, 0, sizeof(v18));
    RB::DisplayList::RenderState::add_texture(&v9, a1, a2, a3, a4);
    RB::DisplayList::RenderState::~RenderState(&v9, v8);
  }
}

double RB::DisplayList::Layer::compute_bounds_(RB::DisplayList::Layer *this, int32x2_t *a2)
{
  v16 = 0uLL;
  if ((*(this + 38) & 0x1001) != 0)
  {
    if (a2)
    {
      v3 = a2[1];
      v4 = vceq_s32(v3, 0x8000000080000000);
      if ((vpmin_u32(v4, v4).u32[0] & 0x80000000) != 0)
      {
        v6 = vneg_f32(0x80000000800000);
        v5 = 0x100000001000000;
      }

      else
      {
        v5 = vcvt_f32_s32(*a2);
        v6 = vcvt_f32_s32(v3);
      }
    }

    else
    {
      v5 = 0xFEFFFFFFFEFFFFFFLL;
      v6 = 0x7F7FFFFF7F7FFFFFLL;
    }

    *&v16 = v5;
    *(&v16 + 1) = v6;
  }

  else
  {
    for (i = *(this + 2); i; i = *(i + 8))
    {
      v8 = *(i + 46) & 0x3F;
      v9 = v8 > 8;
      v10 = (1 << v8) & 0x1AA;
      if (v9 || v10 == 0)
      {
        v12 = RB::DisplayList::Item::styled_bounds(i, 1);
        RB::Rect::Union(&v16, v12, v13);
      }
    }
  }

  for (j = *(this + 4); j; j = *(j + 8))
  {
    *(j + 16) = v16;
    (*(*j + 56))(j, &v16);
  }

  return *&v16;
}

_DWORD *RB::DisplayList::RenderState::add_texture(_DWORD *result, int32x2_t *a2, void *a3, int32x2_t *a4, uint64_t a5)
{
  if (*&a2[2] != *result)
  {
    RB::DisplayList::RenderState::add_texture(result, a2);
  }

  if (a5)
  {
    v9 = result;
    if (a5 == 1 && (v10 = vceq_s32(a4[3], a2[3]), (vpmin_u32(v10, v10).u32[0] & 0x80000000) != 0))
    {
      v11 = a4[5].i32[1];
    }

    else
    {
      v11 = 1;
    }

    v12 = (*(result + 3) + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((v12 + 80) > *(result + 4))
    {
      v12 = RB::Heap::alloc_slow(result + 1, 0x50uLL, 7);
    }

    else
    {
      *(result + 3) = v12 + 80;
    }

    RB::DisplayList::RenderState::RootTexture::RootTexture(v12, a2, a3, v11);
    v14 = v9[144].u32[0];
    v15 = v14 + 1;
    if (v9[144].i32[1] < v15)
    {
      RB::vector<RB::objc_ptr<void({block_pointer})(NSError *)>,8ul,unsigned int>::reserve_slow(&v9[135], v15);
      v14 = v9[144].u32[0];
      v15 = v14 + 1;
    }

    v16 = 0;
    v17 = v9[143];
    if (!v17)
    {
      v17 = v9 + 135;
    }

    v17[v14] = v12;
    v9[144].i32[0] = v15;
    v37 = v9[134];
    v9[134] = a2;
    v18 = &a4[8 * a5];
    if (v11 == 2)
    {
      v19 = 5;
    }

    else
    {
      v19 = 4;
    }

    v20 = a4 + 6;
    do
    {
      v21 = v20 - 6;
      result = v20[-6];
      if (!result)
      {
        result = RB::DisplayList::Contents::empty_contents(0);
      }

      if (*(result + 424) == 1)
      {
        RB::DisplayList::RenderState::add_texture(result, v15);
      }

      v22 = v20[-5];
      if (v22)
      {
        v23 = (*&v22 + 8);
      }

      else
      {
        v23 = (result + 84);
      }

      v24 = *v23;
      v25 = v20[-1].i32[1];
      if (v24)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25 == 2;
      }

      if (v26)
      {
        if (v25 == 2)
        {
          v27 = v20;
        }

        else
        {
          v27 = 0;
        }

        RB::DisplayList::Layer::make_task((result + 80), v9, &v20[-4], v19, v24, v27, v38, *&v20[-4], *&v20[-3], *v20[-1].i32, v13);
        v28 = v9[143];
        if (!v28)
        {
          v28 = v9 + 135;
        }

        RB::RenderTask::set_texture(v38[0], *&v28[v9[144].i32[0] - 1], *&v20[-2]);
        v29 = v38[0];
        if (v38[0])
        {
          ++*(v38[0] + 8);
        }

        v30 = v9[178].u32[0];
        v15 = v30 + 1;
        if (v9[178].i32[1] < v15)
        {
          RB::vector<RB::RenderTask *,32ul,unsigned int>::reserve_slow(&v9[145], v15);
          v30 = v9[178].u32[0];
        }

        v31 = v9[177];
        if (!v31)
        {
          v31 = v9 + 145;
        }

        if (v29)
        {
          ++v29[2];
          v31[v30] = v29;
          ++v9[178].i32[0];
          v32 = v29[2] - 1;
          v29[2] = v32;
          if (!v32)
          {
            (*(*v29 + 8))(v29);
          }
        }

        else
        {
          v31[v30] = 0;
          v9[178].i32[0] = v30 + 1;
        }

        v9[183] = vmax_s32(v9[183], a2[3]);
        v9[184].i32[0] += vmul_lane_s32(v20[-3], v20[-3], 1).u32[0];
        result = v38[0];
        if (v38[0])
        {
          v33 = *(v38[0] + 8) - 1;
          *(v38[0] + 8) = v33;
          if (!v33)
          {
            result = (*(*result + 8))(result);
          }
        }

        ++v16;
      }

      v20 += 8;
    }

    while (&v21[8] != v18);
    if (!v16)
    {
      v34 = v9[144].i32[0] - 1;
      v9[144].i32[0] = v34;
      v35 = v9[143];
      if (!v35)
      {
        v35 = v9 + 135;
      }

      result = v35[v34];
      if (result)
      {
        v36 = result[2] - 1;
        result[2] = v36;
        if (!v36)
        {
          result = (*(*result + 8))(result);
        }
      }
    }

    v9[134] = v37;
  }

  return result;
}

void sub_195CEDDD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10, _Unwind_Exception *a11)
{
  if (v11)
  {
    RB::DisplayList::RenderState::make_detached_tasks();
    exception_object = a11;
  }

  if (a10)
  {
    v13 = a10[2] - 1;
    a10[2] = v13;
    if (!v13)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::ColorMode::layer_format(RB::ColorMode *this, Device *a2)
{
  v2 = *this;
  if (v2 - 2 >= 2)
  {
    if (v2 <= 1)
    {
      v3 = *(this + 1) >= 0x10u;
      v4 = 80;
      goto LABEL_7;
    }

    return 115;
  }

  if (!a2 || *(a2 + 331) < 3u)
  {
    return 115;
  }

  v3 = *(this + 1) >= 0x10u;
  v4 = 550;
LABEL_7:
  if (v3)
  {
    return v4;
  }

  else
  {
    return v4 + 1;
  }
}

void RB::DisplayList::Layer::make_task(uint64_t a1@<X0>, MTLPixelFormat a2@<X1>, uint64_t *a3@<X2>, int a4@<W4>, uint64_t a5@<X5>, _OWORD *a6@<X6>, uint64_t *a7@<X8>, double a8@<D0>, double a9@<D1>, float a10@<S2>, int32x2_t a11@<D3>)
{
  v173 = a3;
  v174 = a6;
  v13 = a2;
  v216 = *MEMORY[0x1E69E9840];
  v209.n128_f64[0] = a8;
  v209.n128_f64[1] = a9;
  v208 = a10;
  v16 = *(a2 + 1072);
  v18 = *v16;
  v17 = v16[1];
  v206 = *v16;
  v207 = v17;
  if ((a4 & 4) != 0)
  {
    v206.n128_u8[9] = v206.n128_u8[10];
    if ((a4 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v19 = *(a1 + 76);
  if (v19 & 2 | a4 & 8)
  {
    v206.n128_u64[0] = 25;
    v206.n128_u8[9] = 17;
    v208 = 0.0;
    if ((a4 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  BYTE3(v211[0]) = 0;
  LOBYTE(v211[0]) = v206.n128_u8[8];
  if ((v19 & 4) != 0)
  {
    v20 = v206.n128_u8[10] & 0xF;
  }

  else if ((v19 & 8) != 0)
  {
    v20 = v206.n128_u8[10] & 0xF | 0x10;
  }

  else
  {
    v20 = v206.n128_u8[10];
  }

  BYTE1(v211[0]) = v20;
  BYTE2(v211[0]) = v20;
  if ((v206.n128_u8[11] & 0x10) != 0)
  {
    v21 = RB::DisplayList::Layer::max_required_depth(a1, v17, *&a9);
    RB::ColorMode::merge_depth(v211, v21);
  }

  v206.n128_u64[0] = RB::ColorMode::layer_format(v211, *v207.n128_u64[0]);
  v206.n128_u8[9] = BYTE1(v211[0]);
  if ((*(a1 + 76) & 0x40) != 0)
  {
    v208 = 0.0;
  }

  a9 = v209.n128_f64[1];
  if ((a4 & 2) != 0)
  {
LABEL_17:
    v22 = vcgtz_s32(*&a9);
    v23 = COERCE_DOUBLE(vpmin_u32(v22, v22));
    if ((LODWORD(v23) & 0x80000000) != 0)
    {
      RB::Bounds::inset(&v209, 0xFFFFFFFF, 0xFFFFFFFF, v23, a9, v18.n128_f64[0], a11);
      a9 = v209.n128_f64[1];
    }
  }

LABEL_19:
  v24 = vclez_s32(*&a9);
  if ((vpmax_u32(v24, v24).u32[0] & 0x80000000) != 0 || (v25 = vcgt_s32(*&a9, 0x800000008000), (vpmax_u32(v25, v25).u32[0] & 0x80000000) != 0))
  {
    *a7 = 0;
  }

  else
  {
    v177 = 0;
    v168 = v13[134];
    v13[134] = &v206;
    *a7 = 0;
    if ((*(a1 + 77) & 8) != 0)
    {
      MEMORY[0x1EEE9AC00]();
      memset(v165, 0, 96);
      v177 = v165;
      RB::BoundsAccumulator::reset(v165);
    }

    v169 = a4;
    v170 = 2 * (a4 & 1);
    v171 = a4 & 2;
    v176 = a7;
    v172 = a1;
    if (a5)
    {
      v26 = v174 != 0;
      v27 = v177;
LABEL_27:
      v28 = vneg_f32(0x80000000800000);
      v187 = xmmword_195E47760;
      v186 = xmmword_195E47770;
      v185 = xmmword_195E47780;
      v184 = xmmword_195E47790;
      v183 = xmmword_195E477A0;
      v182 = xmmword_195E477B0;
      v181 = xmmword_195E45750;
      v180 = xmmword_195E45760;
      v188 = v13;
      while (1)
      {
        LODWORD(v29) = 6 * v207.n128_u32[2] * v207.n128_u32[3];
        if (v29 <= 0x400000)
        {
          v29 = 0x400000;
        }

        else
        {
          v29 = v29;
        }

        v179 = v29;
        v205 = 0;
        LODWORD(v211[0]) = v171;
        v30 = RB::Heap::emplace<RB::DisplayList::LayerTask,RB::DisplayList::Layer const&,MTLPixelFormat &,RB::ColorSpace &,float &,RB::Bounds &,RB::Bounds const&,unsigned int>((v13 + 1), v172, &v206, (&v206 | 9), &v208, &v209, v173, v211);
        if (!*a7)
        {
          *(v30 + 224) = (*(v30 + 224) & 0xFD | v170) ^ 2;
          if (v26)
          {
            v33 = *v174;
            v174 = 0;
            *(v30 + 144) = v33;
          }

          else
          {
            v174 = 0;
          }
        }

        v201 = v13;
        v202 = &v204;
        v203 = &v205;
        v204 = (v30 + 160);
        v198 = v209;
        v199 = v209;
        v200 = 0;
        v34 = v13[182];
        v178 = v30;
        v197[0] = v34;
        v197[1] = v30;
        v13[182] = v197;
        if (a5)
        {
          v35 = a5;
          while (1)
          {
            if (v200 >= v179 || v205 > 19999)
            {
              a5 = v35;
              goto LABEL_185;
            }

            v199 = v209;
            v37 = *(v35 + 24);
            if (v37)
            {
              RB::Bounds::Bounds(v211, v37[2], v37[3], v31, v32);
              RB::Bounds::intersect(&v199, *&v211[0], *(v211 + 8));
              v38 = v37[1].i8[0] & 1;
            }

            else
            {
              v38 = 1;
            }

            v39 = vclez_s32(*&v199.n128_i8[8]);
            v40 = vpmax_u32(v39, v39);
            if ((v40.i32[0] & 0x80000000) == 0)
            {
              v41 = v38 ^ 1;
              if (v27)
              {
                v41 = 1;
              }

              if ((v41 & 1) == 0)
              {
                v42 = *(v35 + 46);
                if ((v42 & 0x40 | 0x80) != 0xC0)
                {
                  a5 = *(v35 + 8);
                  goto LABEL_65;
                }
              }

              *&v43 = (*(*v35 + 136))(v35, 0);
              RB::Bounds::Bounds(v211, v43, v44, v45, v46);
              RB::Bounds::intersect(&v199, *&v211[0], *(v211 + 8));
              v47 = vclez_s32(*&v199.n128_i8[8]);
              v40 = vpmax_u32(v47, v47);
              if ((v40.i32[0] & 0x80000000) == 0)
              {
                break;
              }
            }

            a5 = *(v35 + 8);
LABEL_167:
            v35 = a5;
            if (!a5)
            {
              goto LABEL_185;
            }
          }

          v42 = *(v35 + 46);
          if (v27 && (v42 & 0xC0) == 0x40)
          {
            v48 = *(v35 + 48);
            if ((*(v48 + 76) & 0x1001) != 0)
            {
              v211[0] = v199;
              v210 = 0uLL;
              v192.i32[0] = 0;
              if (RB::DisplayList::Layer::compute_roi(v48, *(v35 + 56), v211, &v210, &v192, &v209, v199))
              {
                v49.i32[0] = 0;
                v50 = *(v48 + 64);
                if (v50 == 0.0)
                {
                  v50 = 1.0;
                }

                v51 = v50;
                v52 = vrecpe_f32(LODWORD(v50));
                v53 = vmul_f32(vrecps_f32(LODWORD(v51), v52), v52);
                v53.i32[0] = vmul_f32(v53, vrecps_f32(LODWORD(v51), v53)).u32[0];
                v54 = vceq_s32(*(v211 + 8), 0x8000000080000000);
                v55 = vdup_lane_s32(vcgt_s32(v49, vpmin_u32(v54, v54)), 0);
                v56 = vbsl_s8(v55, v28, vcvt_f32_s32(*(v211 + 8)));
                v57 = vcvt_f32_s32(*&v211[0]);
                RB::Bounds::Bounds(&v196, vmul_n_f32(vbsl_s8(v55, 0x100000001000000, v57), v53.f32[0]), vmul_n_f32(v56, v53.f32[0]), *&v56, v57);
                if (RB::BoundsAccumulator::intersects(v27, &v196))
                {
                  goto LABEL_241;
                }
              }
            }

            if (*(v35 + 56) & 3) == 2 && ((*(*(*(v35 + 56) & 0xFFFFFFFFFFFFFFFCLL) + 104))(*(v35 + 56) & 0xFFFFFFFFFFFFFFFCLL, &v199, v27))
            {
LABEL_241:
              a5 = v35;
              goto LABEL_185;
            }

            a5 = *(v35 + 8);
          }

          else
          {
            a5 = *(v35 + 8);
            if (!v27)
            {
              goto LABEL_65;
            }
          }

          RB::BoundsAccumulator::add(v27, &v199);
          v42 = *(v35 + 46);
LABEL_65:
          if ((v42 & 0xC0) != 0x40)
          {
            goto LABEL_115;
          }

          v58 = *(v35 + 48);
          v195 = 0;
          if ((RB::may_discard_alpha(v42 & 0x3F) & 1) == 0)
          {
            v195 = 2;
          }

          v194 = 0;
          v211[0] = v199;
          v210 = v199;
          if (RB::DisplayList::Layer::compute_roi(v58, *(v35 + 56), v211, &v210, &v195, &v209, v199))
          {
            RB::DisplayList::Layer::make_task(&v196, v58, v188, &v210, *v211, *(v211 + 1), v208);
            v60 = v194;
            v194 = v196.n128_u64[0];
            v196.n128_u64[0] = v60;
            if (v60)
            {
              v61 = *(v60 + 2) - 1;
              *(v60 + 2) = v61;
              if (!v61)
              {
                (*(*v60 + 8))(v60);
              }
            }
          }

          if (v194)
          {
            if ((atomic_load_explicit(&_ZGVZNK2RB11DisplayList5Layer9make_taskERNS0_11RenderStateENS_6BoundsERKS4_PS5_jfPKNS0_4ItemEPKDv4_fE12allow_inline, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZNK2RB11DisplayList5Layer9make_taskERNS0_11RenderStateENS_6BoundsERKS4_PS5_jfPKNS0_4ItemEPKDv4_fE12allow_inline))
            {
              v128 = RB::debug_BOOL("RB_INLINE_LAYERS", v59);
              _ZZNK2RB11DisplayList5Layer9make_taskERNS0_11RenderStateENS_6BoundsERKS4_PS5_jfPKNS0_4ItemEPKDv4_fE12allow_inline = ((v128 & 0x100) == 0) | v128 & 1;
              __cxa_guard_release(&_ZGVZNK2RB11DisplayList5Layer9make_taskERNS0_11RenderStateENS_6BoundsERKS4_PS5_jfPKNS0_4ItemEPKDv4_fE12allow_inline);
            }

            if ((v206.n128_u8[11] & 2) == 0)
            {
              goto LABEL_107;
            }

            if (_ZZNK2RB11DisplayList5Layer9make_taskERNS0_11RenderStateENS_6BoundsERKS4_PS5_jfPKNS0_4ItemEPKDv4_fE12allow_inline != 1)
            {
              goto LABEL_107;
            }

            v62 = v194;
            v63 = *(v194 + 224);
            if ((v63 & 8) != 0)
            {
              goto LABEL_107;
            }

            if (*(v194 + 7))
            {
              goto LABEL_107;
            }

            v64 = *(v58 + 76);
            if ((v64 & 0x800) != 0 || (v64 & 1) != 0 && (*(v172 + 76) & 0x80) != 0)
            {
              goto LABEL_107;
            }

            if ((v64 & 0xC) != 0)
            {
              v65 = (v64 << 28 >> 31) & 0x11;
              if ((v64 & 4) != 0)
              {
                v65 = 1;
              }

              if (v65 != *(v178 + 88))
              {
                goto LABEL_107;
              }
            }

            if (*(v194 + 32) != v208 || ((*(v172 + 76) ^ v64) & 2) != 0)
            {
              goto LABEL_107;
            }

            v175 = (v58 + 76);
            v66 = v206.n128_u64[0];
            v167 = *(v194 + 2);
            v67 = RB::pixel_format_traits(v206.n128_u64[0], v59);
            if (HIDWORD(*(v67 + 4)))
            {
              v70 = HIDWORD(*(v67 + 4));
            }

            else
            {
              v70 = v66;
            }

            v71 = v167;
            if (v70 == v167)
            {
              v72 = v175;
              if ((v64 & 0x2000) == 0)
              {
                goto LABEL_92;
              }

LABEL_107:
              a7 = v176;
              v81 = (*(v58 + 76) & 0x1001) == 0 || *v176 == 0;
              v13 = v188;
              if (!v81)
              {
                v82 = RB::Heap::emplace<RB::RenderTask::ChildNode,RB::refcounted_ptr<RB::DisplayList::LayerTask> &>((v188 + 1), v176);
                RB::RenderTask::add_child(v194, v82, 0);
              }

              v83 = RB::RenderTask::bytes(v194, v59);
              v200 += v83;
              RB::DisplayList::LayerTask::add_task(v178, v13, v35, 0, &v194);
            }

            else
            {
              v166 = RB::pixel_format_traits(v70, v59);
              v79 = RB::pixel_format_traits(v71, v78);
              v80 = *(v166 + 4);
              v72 = v175;
              if ((v79[1] & 2) != 0 && (v80 & 2) == 0 || (v79[1] & 4) != 0 && (v80 & 6) == 0 || (v79[1] & 8) != 0 && (v80 & 0xA) == 0)
              {
                goto LABEL_107;
              }

              v120 = (v80 >> 4) & 1;
              if ((v79[1] & 0x10) == 0)
              {
                LOBYTE(v120) = 1;
              }

              if ((v64 & 0x2000) != 0 || (v120 & 1) == 0)
              {
                goto LABEL_107;
              }

LABEL_92:
              if ((*(v35 + 56) & 3) != 0 || *(v58 + 64) != 0.0)
              {
                goto LABEL_107;
              }

              v74 = (v58 + 32);
              v73 = *(v58 + 32);
              if (v73)
              {
                while (1)
                {
                  v75 = (*(*v73 + 88))(v73);
                  v72 = v175;
                  if (!v75)
                  {
                    goto LABEL_107;
                  }

                  v73 = v73[1];
                  if (!v73)
                  {
                    v62 = v194;
                    if (*(v194 + 224))
                    {
                      goto LABEL_180;
                    }

                    goto LABEL_98;
                  }
                }
              }

              if (v63)
              {
LABEL_180:
                v196 = v199;
                v121 = *(v35 + 24);
                a7 = v176;
                v77 = v188;
                if (v121)
                {
                  RB::Bounds::Bounds(&v192, v121[2], v121[3], v68, v69);
                  RB::Bounds::intersect(&v196, v192, v193);
                  v72 = v175;
                }
              }

              else
              {
LABEL_98:
                v76 = *(v62 + 3);
                v196.n128_u64[0] = *(v62 + 13);
                v196.n128_u64[1] = v76;
                a7 = v176;
                v77 = v188;
              }

              v191 = 1;
              v190 = 1;
              v189 = (*v72 & 1) == 0;
              v192 = 0;
              v122 = v72;
              RB::Heap::emplace<RB::DisplayList::SpillItem,BOOL,unsigned int &,int,RB::BlendMode,RB::Bounds &,decltype(nullptr)>((v77 + 8), &v191, v72, &v190, &v189, &v196);
              v124 = v123;
              LOBYTE(v190) = 0;
              v192.i32[0] = *(v35 + 46) & 0x3F;
              _ZN2RB4Heap7emplaceINS_11DisplayList9SpillItemEJbRjRKDF16_RKNS_9BlendModeERNS_6BoundsERPNS2_11LayerFilterEEEEPT_DpOT0_((v77 + 8), &v190, v122, (v35 + 44), &v192, &v196, v74);
              v126 = v125;
              *(v125 + 24) = *(v35 + 24);
              _ZZNK2RB11DisplayList5Layer9make_taskERNS0_11RenderStateENS_6BoundsERKS4_PS5_jfPKNS0_4ItemEPKDv4_fENK3__1clESA_(&v201, v124);
              v13 = v188;
              v127 = v178;
              RB::DisplayList::LayerTask::append_task(v178, v188, v194, &v204, &v205);
              *(v127 + 224) |= 8u;
              v35 = v126;
            }

            v84 = v194;
            if (v194 && (v85 = *(v194 + 2) - 1, (*(v194 + 2) = v85) == 0))
            {
              (*(*v84 + 8))(v84);
              if ((v38 & 1) == 0)
              {
                goto LABEL_116;
              }
            }

            else
            {
LABEL_115:
              if ((v38 & 1) == 0)
              {
                goto LABEL_116;
              }
            }
          }

          else
          {
            v13 = v188;
            if ((v38 & 1) == 0)
            {
LABEL_116:
              v86 = *(v35 + 24);
              if (v86)
              {
                v87 = -1;
                v88 = 1;
                v89 = 1;
                do
                {
                  v90 = (v86[1] & 0xFFFFFFFFFFFFFFFELL);
                  if ((v90[45] & 1) == 0)
                  {
                    v40.i32[0] = 0;
                    v91 = vceq_s32(*&v199.n128_i8[8], 0x8000000080000000);
                    v92 = vdup_lane_s32(vcgt_s32(v40, vpmin_u32(v91, v91)), 0);
                    if (((*(*v90 + 32))(v90, COERCE_DOUBLE(vbsl_s8(v92, 0x100000001000000, vcvt_f32_s32(v199.n128_u64[0]))), COERCE_DOUBLE(vbsl_s8(v92, v28, vcvt_f32_s32(*&v199.n128_i8[8])))) & 1) == 0)
                    {
                      v88 = 0;
                      v87 &= ~v89;
                    }
                  }

                  v89 *= 2;
                  v86 = *v86;
                }

                while (v86);
                a7 = v176;
                if ((v88 & 1) == 0)
                {
                  v93 = v178;
                  v94 = *(v178 + 216);
                  if (v94 && (v95 = (*(v178 + 208) + 48 * (v94 - 1)), *v95 == *(v35 + 24)) && (v95[5].i8[5] & 1) == 0)
                  {
                    v117 = v95[3];
                    RB::Bounds::Union(v95 + 2, v199.n128_u64[0], *&v199.n128_i8[8]);
                    v118 = vmul_s32(vzip1_s32(v95[3], v117), vzip2_s32(v95[3], v117));
                    v97 = vsub_s32(v118, vdup_lane_s32(v118, 1)).u32[0];
                    v95[5].i32[0] = v205;
                    v93 = v178;
                    v96 = *(v178 + 216) - 1;
                  }

                  else
                  {
                    if (*(v178 + 220) < v94 + 1)
                    {
                      RB::vector<RB::DisplayList::LayerTask::ClipInfo,0ul,unsigned int>::reserve_slow(v178 + 208, v94 + 1);
                      v94 = *(v93 + 216);
                    }

                    RB::DisplayList::LayerTask::ClipInfo::ClipInfo(*(v93 + 208) + 48 * v94, v13, *(v35 + 24), v205, v199.n128_f64[0], v199.n128_f64[1]);
                    v96 = *(v93 + 216);
                    *(v93 + 216) = v96 + 1;
                    v97 = vmul_lane_s32(*&v199.n128_i8[8], *&v199.n128_i8[8], 1).u32[0];
                  }

                  v98 = *(v93 + 208);
                  v200 += *(v98 + 48 * v96 + 44) * v97;
                  v99 = *(v93 + 200);
                  v100 = v99 + 1;
                  if (*(v93 + 204) < v99 + 1)
                  {
                    v119 = v178;
                    RB::vector<RBColor,0ul,unsigned int>::reserve_slow(v178 + 192, v100);
                    v99 = *(v119 + 200);
                    v98 = *(v119 + 208);
                    v100 = v99 + 1;
                    v101 = *(v119 + 216) - 1;
                  }

                  else
                  {
                    v101 = v96;
                  }

                  v102 = v178;
                  v103 = *(v178 + 192) + 16 * v99;
                  *v103 = v35;
                  *(v103 + 8) = v96;
                  *(v102 + 200) = v100;
                  *(v98 + 48 * v101 + 8) &= v87;
                }
              }
            }
          }

          (*(*v35 + 160))(v35, v13);
          v27 = v177;
          if ((*(v35 + 46) & 0x4000) != 0)
          {
            *(v178 + 224) |= 0x10u;
          }

          v104 = ((v201[3] + 7) & 0xFFFFFFFFFFFFFFF8);
          if ((v104 + 2) > v201[4])
          {
            v104 = RB::Heap::alloc_slow(v201 + 1, 0x10uLL, 7);
          }

          else
          {
            v201[3] = (v104 + 2);
          }

          *v104 = 0;
          v104[1] = v35;
          v105 = v202;
          **v202 = v104;
          *v105 = v104;
          ++*v203;
          if ((*(v35 + 46) & 0xC0) == 0x80 && (*(v35 + 80) & 8) != 0)
          {
            v106 = *(v178 + 216);
            if (v106)
            {
              v107 = 0;
              v108 = *(v178 + 208);
              v109 = (48 * v106 - 48) / 0x30;
              v110 = vdupq_n_s64(v109);
              do
              {
                v111 = vdupq_n_s64(v107);
                v112 = vmovn_s64(vcgeq_u64(v110, vorrq_s8(v111, v180)));
                if (vuzp1_s8(vuzp1_s16(v112, *v110.i8), *v110.i8).u8[0])
                {
                  v108[45] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v112, *&v110), *&v110).i8[1])
                {
                  v108[93] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v110, vmovn_s64(vcgeq_u64(v110, vorrq_s8(v111, v181)))), *&v110).i8[2])
                {
                  v108[141] = 1;
                  v108[189] = 1;
                }

                v113 = vmovn_s64(vcgeq_u64(v110, vorrq_s8(v111, v182)));
                if (vuzp1_s8(*&v110, vuzp1_s16(v113, *&v110)).i32[1])
                {
                  v108[237] = 1;
                }

                if (vuzp1_s8(*&v110, vuzp1_s16(v113, *&v110)).i8[5])
                {
                  v108[285] = 1;
                }

                if (vuzp1_s8(*&v110, vuzp1_s16(*&v110, vmovn_s64(vcgeq_u64(v110, vorrq_s8(v111, v183))))).i8[6])
                {
                  v108[333] = 1;
                  v108[381] = 1;
                }

                v114 = vmovn_s64(vcgeq_u64(v110, vorrq_s8(v111, v184)));
                if (vuzp1_s8(vuzp1_s16(v114, *v110.i8), *v110.i8).u8[0])
                {
                  v108[429] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v114, *&v110), *&v110).i8[1])
                {
                  v108[477] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v110, vmovn_s64(vcgeq_u64(v110, vorrq_s8(v111, v185)))), *&v110).i8[2])
                {
                  v108[525] = 1;
                  v108[573] = 1;
                }

                v115 = vmovn_s64(vcgeq_u64(v110, vorrq_s8(v111, v186)));
                v32 = vuzp1_s8(*v110.i8, vuzp1_s16(v115, *v110.i8));
                if (v32.i8[4])
                {
                  v108[621] = 1;
                }

                if (vuzp1_s8(*&v110, vuzp1_s16(v115, *&v110)).i8[5])
                {
                  v108[669] = 1;
                }

                v116 = vmovn_s64(vcgeq_u64(v110, vorrq_s8(v111, v187)));
                v31 = COERCE_DOUBLE(vuzp1_s8(*v110.i8, vuzp1_s16(*v110.i8, v116)));
                if (BYTE6(v31))
                {
                  v108[717] = 1;
                }

                if (vuzp1_s8(*&v110, vuzp1_s16(*&v110, v116)).i8[7])
                {
                  v108[765] = 1;
                }

                v107 += 16;
                v108 += 768;
              }

              while (((v109 + 16) & 0xFFFFFFFFFFFFFF0) != v107);
            }
          }

          goto LABEL_167;
        }

LABEL_185:
        v175 = a5;
        v129 = v178;
        if (*(v178 + 216))
        {
          v179 = (*(v207.n128_u64[0] + 104) + 1);
          *(v207.n128_u64[0] + 104) = v179;
          v213 = 0;
          v214 = 0;
          v215 = 8;
          v130 = *(v129 + 216);
          if (v130)
          {
            v131 = *(v178 + 208);
            v132 = v131 + 48 * v130;
            do
            {
              if (!*(v131 + 32))
              {
                *(v131 + 32) = v179;
                v133 = *v131;
                if (*v131)
                {
                  v134 = 1;
                  do
                  {
                    if ((*(v131 + 8) & v134) == 0)
                    {
                      v199 = *(v131 + 16);
                      v135 = v133[1] & 0xFFFFFFFFFFFFFFFELL;
                      if ((*(v135 + 45) & 2) != 0)
                      {
                        v137 = v213;
                        v136 = v214;
                        if (!v213)
                        {
                          v137 = v211;
                        }

                        if (v214)
                        {
                          v138 = v137 + 1;
                          v139 = 32 * v214;
                          while (*&v138[-1] != *(v135 + 48) || !RB::DisplayList::Layer::Effect::operator==(v138, *(v135 + 56)))
                          {
                            v138 += 4;
                            v139 -= 32;
                            if (!v139)
                            {
                              v136 = v214;
                              goto LABEL_203;
                            }
                          }

                          RB::Bounds::Union(v138 + 1, *(v131 + 16), *(v131 + 24));
                          v13 = v188;
                        }

                        else
                        {
LABEL_203:
                          v140 = *(v135 + 48);
                          v141 = *(v135 + 56);
                          v210 = *(v131 + 16);
                          if (v215 < v136 + 1)
                          {
                            v136 = v214;
                          }

                          v142 = v213;
                          if (!v213)
                          {
                            v142 = v211;
                          }

                          v143 = &v142[4 * v136];
                          v143->n128_u64[0] = v140;
                          v143->n128_u64[1] = v141;
                          v143[1] = v210;
                          ++v214;
                          v13 = v188;
                        }
                      }

                      (*(*v135 + 48))(v135, v13);
                    }

                    v134 *= 2;
                    v133 = *v133;
                  }

                  while (v133);
                }
              }

              v131 += 48;
            }

            while (v131 != v132);
            v144 = v213;
            if (v213)
            {
              v145 = v213;
            }

            else
            {
              v145 = v211;
            }

            if (v214)
            {
              v146 = 32 * v214;
              a7 = v176;
              v147 = v178;
              do
              {
                v196 = v145[1];
                v192 = 0;
                v193 = 0;
                v195 = 2;
                if (RB::DisplayList::Layer::compute_roi(v145->n128_u64[0], v145->n128_i64[1], &v196, &v192, &v195, &v209, v196))
                {
                  v148 = v145->n128_u64[0];
                  RB::DisplayList::Layer::make_task(&v194, v145->n128_u64[0], v13, &v192, v196.n128_f64[0], v196.n128_f64[1], 0.0);
                  RB::DisplayList::LayerTask::add_task(v147, v13, v148, v179, &v194);
                  v149 = v194;
                  if (v194)
                  {
                    v150 = *(v194 + 2) - 1;
                    *(v194 + 2) = v150;
                    if (!v150)
                    {
                      (*(*v149 + 8))(v149);
                    }
                  }
                }

                v145 += 2;
                v146 -= 32;
              }

              while (v146);
              v144 = v213;
            }

            else
            {
              a7 = v176;
            }

            v27 = v177;
            if (v144)
            {
              free(v144);
            }
          }

          v129 = v178;
        }

        v151 = *(v129 + 184);
        a5 = v175;
        if (v151)
        {
          std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,false>(*(v129 + 176), (*(v129 + 176) + 24 * v151), v211, 126 - 2 * __clz(v151), 1);
        }

        v152 = *(v129 + 200);
        if (v152)
        {
          _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK2RB11DisplayList5Layer9make_taskERNS3_11RenderStateENS2_6BoundsERKS7_PS8_jfPKNS3_4ItemEPKDv4_fE3__0PNS_4pairISD_jEELb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb(*(v129 + 192), *(v129 + 192) + 16 * v152, 126 - 2 * __clz(v152), 1);
        }

        v13[182] = v197[0];
        if (*a7)
        {
          break;
        }

        *a7 = v129;
        if (v27)
        {
          goto LABEL_238;
        }

LABEL_239:
        v26 = v174 != 0;
        if (!(a5 | v174))
        {
          goto LABEL_242;
        }
      }

      RB::RenderTask::set_continuation(*a7, v129);
      v153 = *a7;
      *a7 = v129;
      if (v153)
      {
        v154 = v153[2] - 1;
        v153[2] = v154;
        if (!v154)
        {
          (*(*v153 + 8))(v153);
        }
      }

      if (!v27)
      {
        goto LABEL_239;
      }

LABEL_238:
      RB::BoundsAccumulator::reset(v27);
      goto LABEL_239;
    }

    a5 = *(a1 + 16);
    v26 = v174 != 0;
    v27 = v177;
    if (a5 | v174)
    {
      goto LABEL_27;
    }

LABEL_242:
    v155 = v169;
    v156 = v172;
    if (!*a7)
    {
      LODWORD(v211[0]) = v171;
      v157 = RB::Heap::emplace<RB::DisplayList::LayerTask,RB::DisplayList::Layer const&,MTLPixelFormat &,RB::ColorSpace &,float &,RB::Bounds &,RB::Bounds const&,unsigned int>((v13 + 1), v172, &v206, (&v206 | 9), &v208, &v209, v173, v211);
      v158 = *a7;
      *a7 = v157;
      if (v158)
      {
        v159 = v158[2] - 1;
        v158[2] = v159;
        if (!v159)
        {
          (*(*v158 + 8))(v158);
        }
      }

      *(*a7 + 224) = (*(*a7 + 224) & 0xFD | v170) ^ 2;
    }

    if (*(v156 + 32))
    {
      v160 = *a7;
      v211[1] = v209;
      v211[2] = v209;
      v212 = 0;
      v161 = v13[182];
      *&v211[0] = v161;
      *(&v211[0] + 1) = v160;
      v13[182] = v211;
      v162 = *(v156 + 32);
      if (v162)
      {
        do
        {
          (*(*v162 + 96))(v162, v13);
          v162 = v162[1];
        }

        while (v162);
        v163 = *(v156 + 32);
        a7 = v176;
        v160 = *v176;
        v161 = *&v211[0];
      }

      else
      {
        v163 = 0;
        a7 = v176;
      }

      *(v160 + 168) = v163;
      v13[182] = v161;
    }

    if ((v155 & 4) != 0)
    {
      if ((v206.n128_u8[11] & 4) != 0)
      {
        if (RB::BaseRenderParams::srgb_alpha(&v206, a2))
        {
          v164 = 4;
        }

        else
        {
          v164 = 0;
        }
      }

      else
      {
        v164 = 0;
      }

      *(*a7 + 224) = *(*a7 + 224) & 0xFB | v164;
    }

    v13[134] = v168;
  }
}

void sub_195CEF2E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    v4 = v3[2] - 1;
    v3[2] = v4;
    if (!v4)
    {
      (*(*v3 + 8))(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::DisplayList::RenderState::RootTexture::RootTexture(uint64_t a1, _OWORD *a2, void *a3, int a4)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F0A3F550;
  v6 = a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 48) = v6;
  *(a1 + 64) = [a3 copy];
  *(a1 + 72) = a4;
  *(a1 + 76) = 0;
  return a1;
}

uint64_t RB::pixel_format_required_component(RB *this, MTLPixelFormat a2)
{
  v2 = *(RB::pixel_format_traits(this, a2) + 4);
  if ((v2 & 4) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((v2 & 8) != 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  if ((v2 & 2) != 0)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

double RB::Filter::ColorMatrix::dod(RB::Filter::ColorMatrix *this, Rect *a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    if ((*(*v3 + 24))(v3, 7, *this))
    {
      result = 7.29112205e-304;
      *a2 = 0x100000001000000;
      a2[1] = vneg_f32(0x80000000800000);
    }
  }

  return result;
}

void RB::ImageProvider::render_device(RB::ImageProvider *this)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(this + 29))
  {
    goto LABEL_8;
  }

  if ((*(this + 25) & 8) != 0)
  {
    v2 = 6;
  }

  else
  {
    v2 = 2;
  }

  v3 = RB::SurfacePool::shared(this);
  v4 = [(RBDecodedFontMetadata *)*(this + 2) fontUID];
  v5 = *(this + 24);
  if (v5 == 0.0)
  {
    v5 = *(this + 23);
  }

  v6 = RB::SurfacePool::alloc(v3, v4, *(this + 10), *(this + 104), 3u, *(this + 32), v2, 0, *(this + 56), v5, 0);
  *(this + 29) = v6;
  if (v6)
  {
LABEL_8:
    v7 = [(RBDecodedFontMetadata *)*(this + 2) fontUID];
    if (*(this + 32))
    {
      v8 = *(this + 32);
    }

    else
    {
      v8 = @"RBImageRenderer";
    }

    RB::RenderFrame::RenderFrame(v34, v7, 0, 4, v8, 0);
    v36 = *(this + 107);
    v9 = *(this + 10);
    v10 = *(this + 7);
    v11 = *(this + 104);
    v12 = *(this + 105);
    v14 = RB::pixel_format_required_component(v9, v13);
    v16 = RB::pixel_format_traits(*(this + 10), v15);
    RB::RenderParams::RenderParams(&v31, v34, v9, v11, v12, v14, (v16[1] & 2) != 0, v10);
    v17 = *(this + 100);
    v18 = v17 >> 2;
    v19 = (v17 & 8) == 0;
    v20 = v32 & 0xD3 | v17 & 8;
    v21 = (2 * v17) & 4;
    if (!v19)
    {
      v21 = 0;
    }

    v32 = v21 & 0xDF | (32 * (v18 & 1)) | v20;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = ___ZN2RB13ImageProvider13render_deviceEv_block_invoke;
    v30[3] = &__block_descriptor_48_e19____MTLTexture__8__0l;
    v30[4] = this;
    v30[5] = v7;
    v22 = [*(this + 3) _rb_contents];
    if (v22)
    {
      v23.i64[0] = *(this + 8);
      v23.i32[2] = *(this + 18);
      v23.i32[3] = 1.0;
      RB::DisplayList::render(v22, &v31, v30, *(this + 106), 0, 0, v33, *(this + 24), vmulq_n_f32(v23, *(this + 19)));
      if ((*(v34[0] + 340) & 2) != 0)
      {
        v24 = *(this + 3);
        if (v35 != v24)
        {

          v35 = v24;
        }
      }
    }

    atomic_fetch_add_explicit(this + 2, 1u, memory_order_relaxed);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3321888768;
    v28[2] = ___ZN2RB13ImageProvider13render_deviceEv_block_invoke_2;
    v28[3] = &__block_descriptor_40_e8_32c46_ZTSN2RB14refcounted_ptrINS_13ImageProviderEEE_e5_v8__0l;
    atomic_fetch_add_explicit(this + 2, 1u, memory_order_relaxed);
    v29 = this;
    RB::RenderFrame::add_scheduled_handler(v34, v28);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3321888768;
    v26[2] = ___ZN2RB13ImageProvider13render_deviceEv_block_invoke_6;
    v26[3] = &__block_descriptor_40_e8_32c46_ZTSN2RB14refcounted_ptrINS_13ImageProviderEEE_e17_v16__0__NSError_8l;
    atomic_fetch_add_explicit(this + 2, 1u, memory_order_relaxed);
    v27 = this;
    RB::RenderFrame::add_completed_handler(v34, v26);
    if (v27 && atomic_fetch_add_explicit(v27 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      render_image();
    }

    if (v29 && atomic_fetch_add_explicit(v29 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      render_image();
    }

    if (atomic_fetch_add_explicit(this + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      render_image();
    }

    RB::RenderFrame::~RenderFrame(v34);
  }

  else
  {
    std::mutex::lock((this + 112));
    if (*(this + 29))
    {
      if (*(this + 56) <= 2)
      {
        v25 = 2;
      }

      else
      {
        v25 = 5;
      }
    }

    else
    {
      v25 = 6;
    }

    RB::ImageProvider::set_phase(this, v25);
    std::mutex::unlock((this + 112));
  }

  RBXMLRecorderMarkFrame(*(this + 2), *(this + 3), *(this + 104), *(this + 7), HIDWORD(*(this + 7)));
}

IOSurfaceRef RB::create_iosurface(RB *this, MTLPixelFormat a2, uint64_t a3, int a4)
{
  v6 = a2;
  v54[1] = *MEMORY[0x1E69E9840];
  v8 = RB::pixel_format_traits(this, a2);
  if (this == 10)
  {
    v9 = 1093677112;
  }

  else
  {
    v9 = 0;
  }

  if ((a4 & 4) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8[3];
  }

  if (v10)
  {
    v11 = (a4 & 1) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11 && v10 != 1599226420 && ((a4 | (*(v8 + 4) >> 5)) & 2) == 0)
  {
    result = CAIOSurfaceCreateDefault();
    if (result)
    {
      return result;
    }
  }

  v17 = [MEMORY[0x1E695DF90] dictionary];
  if (this <= 540)
  {
    if (this > 519)
    {
      if (this <= 522)
      {
        if (this != 520)
        {
          if (this != 522)
          {
            goto LABEL_57;
          }

          goto LABEL_36;
        }

        goto LABEL_42;
      }

      if (this != 523)
      {
        if (this != 540)
        {
          goto LABEL_57;
        }

        goto LABEL_42;
      }

      goto LABEL_46;
    }

    if (this == 500)
    {
LABEL_42:
      if (!plane_dict)
      {
        return 0;
      }

      v30 = plane_dict;
      if (!v31)
      {
        return 0;
      }

      v18 = *v53 + v54[0];
      if (__CFADD__(*v53, v54[0]))
      {
        return 0;
      }

      v52[0] = v30;
      v52[1] = v31;
      v25 = MEMORY[0x1E695DEC8];
      v26 = v52;
      goto LABEL_54;
    }

    if (this != 502)
    {
      if (this != 503)
      {
LABEL_57:
        v19 = *(v8 + 5);
        if (*(v8 + 5))
        {
          v18 = 0;
          goto LABEL_59;
        }

        return 0;
      }

LABEL_46:
      if (!v32)
      {
        return 0;
      }

      v35 = v32;
      if (!v36)
      {
        return 0;
      }

      v18 = *v53 + v54[0];
      if (__CFADD__(*v53, v54[0]))
      {
        return 0;
      }

      v50[0] = v35;
      v50[1] = v36;
      v25 = MEMORY[0x1E695DEC8];
      v26 = v50;
      goto LABEL_54;
    }

    goto LABEL_36;
  }

  if (this <= 0x80000000)
  {
    if (this - 550 < 2)
    {
      if (!v37)
      {
        return 0;
      }

      v40 = v37;
      if (!v41)
      {
        return 0;
      }

      v18 = *v53 + v54[0];
      if (__CFADD__(*v53, v54[0]))
      {
        return 0;
      }

      v49[0] = v40;
      v49[1] = v41;
      v25 = MEMORY[0x1E695DEC8];
      v26 = v49;
LABEL_54:
      v42 = [v25 arrayWithObjects:v26 count:2];
      [v17 setObject:v42 forKeyedSubscript:*MEMORY[0x1E696D0A8]];
      v19 = 0;
      goto LABEL_59;
    }

    if (this != 541)
    {
      if (this != 542)
      {
        goto LABEL_57;
      }

      goto LABEL_46;
    }

LABEL_36:
    if (!v20)
    {
      return 0;
    }

    v23 = v20;
    if (!v24)
    {
      return 0;
    }

    v18 = *v53 + v54[0];
    if (__CFADD__(*v53, v54[0]))
    {
      return 0;
    }

    v51[0] = v23;
    v51[1] = v24;
    v25 = MEMORY[0x1E695DEC8];
    v26 = v51;
    goto LABEL_54;
  }

  if (this - 0x80000001 >= 2)
  {
    if (this != 2147483651)
    {
      goto LABEL_57;
    }

    v18 = 0;
    v6 = (3 * v6);
    v19 = 2;
  }

  else
  {
    v18 = 0;
    v6 = (3 * v6);
    v19 = 1;
  }

LABEL_59:
  v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  [v17 setObject:v43 forKeyedSubscript:*MEMORY[0x1E696D130]];
  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
  [v17 setObject:v44 forKeyedSubscript:*MEMORY[0x1E696CF58]];
  if (v10)
  {
    v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
    [v17 setObject:v45 forKeyedSubscript:*MEMORY[0x1E696CFC0]];
  }

  if (v19)
  {
    v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v19];
    [v17 setObject:v46 forKeyedSubscript:*MEMORY[0x1E696CE50]];
  }

  if (v18)
  {
    v47 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v18];
    [v17 setObject:v47 forKeyedSubscript:*MEMORY[0x1E696CE30]];
  }

  v48 = [MEMORY[0x1E696AD98] numberWithBool:a4 & 1];
  [v17 setObject:v48 forKeyedSubscript:*MEMORY[0x1E696CFC8]];
  return IOSurfaceCreate(v17);
}

void RB::Surface::set_headroom(IOSurfaceRef *this, float a2)
{
  valuePtr = a2;
  if (*(this + 38) != a2)
  {
    RB::Surface::invalidate_iosurface(this);
    v3 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    IOSurfaceSetValue(this[6], *MEMORY[0x1E696CEF0], v3);
    *(this + 38) = valuePtr;
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

void sub_195CEFF14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __destroy_helper_block_e8_32c46_ZTSN2RB14refcounted_ptrINS_13ImageProviderEEE(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      return RB::ImageProvider::submit_all();
    }
  }

  return result;
}

BOOL RB::ImageProvider::set_phase(uint64_t a1, int a2)
{
  v3 = *(a1 + 224);
  if (v3 < a2)
  {
    *(a1 + 224) = a2;
    std::condition_variable::notify_all((a1 + 176));
    if (a2 == 6)
    {
      if (*(a1 + 32))
      {
        v5 = *(a1 + 40);
        if (v5)
        {
          atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed);
          v7[0] = MEMORY[0x1E69E9820];
          v7[1] = 3321888768;
          v7[2] = ___ZN2RB13ImageProvider9set_phaseENS0_5PhaseE_block_invoke;
          v7[3] = &__block_descriptor_48_e8_40c46_ZTSN2RB14refcounted_ptrINS_13ImageProviderEEE_e5_v8__0l;
          v7[4] = a1;
          v8 = a1;
          atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed);
          dispatch_async(v5, v7);
          if (v8 && atomic_fetch_add_explicit((v8 + 8), 0xFFFFFFFF, memory_order_release) == 1)
          {
            render_image();
          }

          if (atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
          {
            render_image();
          }
        }
      }
    }
  }

  return v3 < a2;
}

void ___ZN2RB11RenderFrameD2Ev_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = RB::signposts_log(a1);
  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5 + 1 >= 2)
    {
      v6 = v4;
      if (os_signpost_enabled(v4))
      {
        v7 = *(a1 + 48);
        v8[0] = 67109120;
        v8[1] = v7;
        _os_signpost_emit_with_name_impl(&dword_195CE8000, v6, OS_SIGNPOST_EVENT, v5, "CommandBuffer Scheduled", "frame=%u", v8, 8u);
      }
    }
  }

  RB::Device::dispatch_frame_continuation(*(a1 + 40), *(a1 + 48), a2, 0);
}

uint64_t RB::Resource::set_volatile(id *this, uint64_t a2)
{
  v2 = a2;
  if (*(this + 44) != a2)
  {
    if (*(this + 45) == 1)
    {
      if (a2)
      {
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }

      v5 = [this[2] setPurgeableState:v4];
      if ((v2 & 1) == 0 && [this[2] setPurgeableState:1] != 2)
      {
        return 2;
      }
    }

    else
    {
      v5 = 2;
    }

    *(this + 44) = v2;
    if (v5 == 4)
    {
      return 1;
    }

    else
    {
      return v2;
    }
  }

  return v2;
}

uint64_t RB::UntypedTable::remove_if (uint64_t this, BOOL (*a2)(const void *, const void *, const void *), const void *a3)
{
  if (*(this + 40))
  {
    v5 = this;
    v6 = 0;
    v7 = *(this + 56);
    do
    {
      v8 = (v5[4] + 8 * v6);
      while (1)
      {
        v9 = *v8;
        if (!*v8)
        {
          break;
        }

        this = (a2)(v9[1], v9[2], a3);
        if (this)
        {
          *v8 = *v9;
          v10 = v5[2];
          if (v10)
          {
            v10(v9[1]);
          }

          v11 = v5[3];
          if (v11)
          {
            v11(v9[2]);
          }

          this = MEMORY[0x19A8C09E0](v9, 0x10A0C405421CD5ELL);
          --v5[5];
        }

        else
        {
          v8 = v9;
        }
      }

      ++v6;
    }

    while (!(v6 >> v7));
  }

  return this;
}

uint64_t RB::BinAllocator::free_space(RB::BinAllocator *this)
{
  v1 = *(this + 8);
  if ((v1 & 0x80000000) != 0)
  {
    *(this + 8) = 0;
    v2 = *(this + 6);
    if (v2)
    {
      LODWORD(v1) = 0;
      v3 = (*(this + 2) + 6);
      v4 = 32 * v2;
      do
      {
        v1 = (v1 + *(v3 - 1) * *v3);
        v3 += 16;
        v4 -= 32;
      }

      while (v4);
      *(this + 8) = v1;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

double RB::current_time_seconds(RB *this)
{
  v1 = mach_absolute_time();

  return RB::time_seconds(v1);
}

BOOL RB::TextureCache::prune_caches(RB::TextureCache *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = *(this + 2);
  if (!v10 && RB::verbose_mode(0x80))
  {
    RB::TextureCache::prune_caches(this);
  }

  v11 = *(this + 18);
  if (v11)
  {
    v12 = 0;
    do
    {
      if (*(this + 8))
      {
        v13 = *(this + 8);
      }

      else
      {
        v13 = this + 48;
      }

      v14 = &v13[16 * v12];
      v15 = *(v14 + 1);
      if (*(v15 + 32) - a2 <= 0)
      {
        if (!v10 || (v14[3] & 0x20) != 0 || (v16 = *(v15 + 36), v16 <= a4))
        {
LABEL_17:
          v17 = &v13[16 * v11 - 16];
          v18 = *v14;
          *v14 = *v17;
          *v17 = v18;
          *(v14 + 1) = *(v17 + 1);
          *(v17 + 1) = v15;
          v19 = *(this + 18) - 1;
          *(this + 18) = v19;
          v20 = *(this + 8);
          if (!v20)
          {
            v20 = this + 48;
          }

          v21 = *&v20[16 * v19 + 8];
          if (v21)
          {
            v22 = v21[2] - 1;
            v21[2] = v22;
            if (!v22)
            {
              (*(*v21 + 8))(v21);
            }
          }

          v23 = RB::verbose_mode(0x80);
          if (v23)
          {
            loga = RB::misc_log(v23);
            if (os_log_type_enabled(loga, OS_LOG_TYPE_INFO))
            {
              *buf = 134218240;
              v36 = this;
              v37 = 2048;
              v38 = v15;
              _os_log_impl(&dword_195CE8000, loga, OS_LOG_TYPE_INFO, "%p: deleted %p\n", buf, 0x16u);
            }
          }

          goto LABEL_23;
        }

        if ((*(v15 + 77) & 1) != 0 || *(v15 + 78) == 6)
        {
          if (v16 <= a3)
          {
            goto LABEL_17;
          }
        }

        else if ((*(v15 + 77) & 2) != 0)
        {
          if (v16 <= a5)
          {
            v24 = *(v15 + 24);
            if ((*(v24 + 44) & 1) == 0)
            {
LABEL_31:
              RB::Resource::set_volatile(v24, 1);
              v25 = RB::verbose_mode(0x80);
              if (v25)
              {
                log = RB::misc_log(v25);
                if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
                {
                  *buf = 134218240;
                  v36 = this;
                  v37 = 2048;
                  v38 = v15;
                  _os_log_impl(&dword_195CE8000, log, OS_LOG_TYPE_INFO, "%p: marked %p volatile\n", buf, 0x16u);
                }
              }
            }
          }
        }

        else if (v16 <= a5)
        {
          v24 = *(v14 + 1);
          if ((*(v15 + 44) & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      ++v12;
LABEL_23:
      v11 = *(this + 18);
    }

    while (v12 < v11);
  }

  v26 = *(this + 5);
  if (v26 && (!v10 || *(this + 9) <= a3 - 210))
  {
    CFRelease(v26);
    *(this + 5) = 0;
    if (RB::verbose_mode(0x80))
    {
      RB::TextureCache::prune_caches(this);
    }
  }

  if (*(this + 11))
  {
    v27 = *(this + 11);
  }

  else
  {
    v27 = (this + 80);
  }

  v28 = *(this + 24);
  if (v28)
  {
    v29 = 8 * v28;
    do
    {
      v30 = *v27;
      if (*v27)
      {
        v31 = v30[2] - 1;
        v30[2] = v31;
        if (!v31)
        {
          (*(*v30 + 8))(v30);
        }
      }

      ++v27;
      v29 -= 8;
    }

    while (v29);
  }

  result = 0;
  *(this + 24) = 0;
  if (!*(this + 18))
  {
    return *(this + 5) == 0;
  }

  return result;
}

BOOL RB::verbose_mode(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D5448, memory_order_acquire) & 1) == 0)
  {
    v2 = this;
    RB::verbose_mode();
    LODWORD(this) = v2;
  }

  return (qword_1ED6D5440 & this) != 0;
}

void RB::Device::RenderPipelineEntry::Queue::load_next_locked(RB::Device::RenderPipelineEntry::Queue *this)
{
  for (i = *(this + 1); i; i = *(this + 1))
  {
    if (*(this + 1))
    {
      break;
    }

    v3 = *i;
    *(this + 1) = *i;
    if (!v3)
    {
      *(this + 2) = 0;
    }

    i[28] = 2;
    *(this + 1) = 1;
    dispatch_async_f(*(*(i + 1) + 40), i, RB::Device::RenderPipelineEntry::Queue::load_next_locked(void)::$_0::__invoke);
  }
}

uint64_t RB::Device::RenderPipelineEntry::Queue::shared(RB::Device::RenderPipelineEntry::Queue *this)
{
  {
    operator new();
  }

  return RB::Device::RenderPipelineEntry::Queue::shared(void)::shared_queue;
}

uint64_t RB::ImageProvider::make_cgimage(void)::$_2::__invoke(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return RB::ImageProvider::submit_all();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  return result;
}

void OUTLINED_FUNCTION_0_4()
{
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0;
  *(v0 + 92) = v2;
  *(v0 + 100) = 0;
  *(v0 + 104) = v1;
  *(v0 + 112) = 1065353216;
}

uint64_t RB::Refcount<RB::ImageProvider,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void RB::ImageProvider::~ImageProvider(RB::ImageProvider *this)
{
  RB::ImageProvider::~ImageProvider(this);

  JUMPOUT(0x19A8C09E0);
}

{
  *this = &unk_1F0A38FC0;
  if (*(this + 29))
  {
    v2 = RB::SurfacePool::shared(this);
    RB::SurfacePool::dealloc(v2, *(this + 29), 0);
  }

  v3 = *(this + 30);
  if (v3)
  {
    munmap(v3, *(this + 62));
  }

  std::condition_variable::~condition_variable((this + 176));
  std::mutex::~mutex((this + 112));
  v4 = *(this + 6);
  if (v4)
  {
    CFRelease(v4);
  }
}

void RB::SurfacePool::remove_watched_queue_locked(_BOOL8 this, _CAImageQueue *a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(this + 112);
  if (v3)
  {
    v6 = this;
    v7 = 0;
    if (a3)
    {
      v8 = ", display";
    }

    else
    {
      v8 = "";
    }

    do
    {
      v9 = (*(v6 + 104) + 16 * v7);
      if (*v9 == a2)
      {
        this = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
        if (this)
        {
          v11 = CACurrentMediaTime();
          v12 = v9[1];
          *buf = 134218754;
          v17 = v11;
          v18 = 2048;
          v19 = a2;
          v20 = 2048;
          v21 = v12;
          v22 = 2080;
          v23 = v8;
          _os_log_impl(&dword_195CE8000, v10, OS_LOG_TYPE_INFO, "%f: remove_watched_queue: %p, %p%s\n", buf, 0x2Au);
        }

        v13 = *(v6 + 104) + 16 * *(v6 + 112);
        v14 = *v9;
        *v9 = *(v13 - 16);
        *(v13 - 16) = v14;
        v15 = v9[1];
        v9[1] = *(v13 - 8);
        *(v13 - 8) = v15;
        v3 = *(v6 + 112) - 1;
        *(v6 + 112) = v3;
        if (a3)
        {
          operator new();
        }
      }

      else
      {
        ++v7;
      }
    }

    while (v7 < v3);
  }
}

void RB::SurfacePool::dealloc(os_unfair_lock_t lock, RB::Surface *a2, _CAImageQueue *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = 1;
  }

  if (v6 == *(a2 + 16))
  {
    os_unfair_lock_lock(lock);
    v13 = CACurrentMediaTime();
    *(a2 + 16) = 0;
    *(a2 + 18) = v13;
    if (!a3)
    {
      *(a2 + 164) = 1;
    }

    v11 = *(a2 + 8);
    *(a2 + 8) = 0;
    v14 = RB::allocating_pool();
    if (*v14 == lock)
    {
      goto LABEL_18;
    }

    if (*(a2 + 164) == 1)
    {
      if (IOSurfaceIsInUse(*(a2 + 6)))
      {
        if (*(a2 + 164))
        {
          goto LABEL_18;
        }
      }

      else
      {
        *(a2 + 164) = 0;
      }
    }

    RB::SurfacePool::set_surface_volatile(lock, a2, 1u);
LABEL_18:
    v15 = *&lock[8]._os_unfair_lock_opaque;
    if (v15)
    {
      v16 = 8 * v15;
      v17 = *&lock[6]._os_unfair_lock_opaque;
      while (*v17 != a2)
      {
        ++v17;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      v17 = *&lock[6]._os_unfair_lock_opaque;
    }

    if (v17 != (*&lock[6]._os_unfair_lock_opaque + 8 * v15))
    {
      v18 = *v17;
      *v17 = 0;
      v19 = (v17 - *&lock[6]._os_unfair_lock_opaque) >> 3;
      v20 = *&lock[8]._os_unfair_lock_opaque - 1;
      *&lock[8]._os_unfair_lock_opaque = v20;
      v21 = v20 - v19;
      if (v21)
      {
        memmove(v17, v17 + 1, 8 * v21);
        v19 = *&lock[8]._os_unfair_lock_opaque;
      }

      v22 = v19 + 1;
      if (*&lock[10]._os_unfair_lock_opaque < (v19 + 1))
      {
        RB::vector<unsigned long,0ul,unsigned long>::reserve_slow(&lock[6], v22);
        v19 = *&lock[8]._os_unfair_lock_opaque;
        v22 = v19 + 1;
      }

      *(*&lock[6]._os_unfair_lock_opaque + 8 * v19) = v18;
      *&lock[8]._os_unfair_lock_opaque = v22;
    }

LABEL_30:
    RB::SurfacePool::remove_watched_queue_locked(lock, a3, 1);
    if (*v14 == lock || (lock[34]._os_unfair_lock_opaque & 1) != 0)
    {
      v12 = 0;
    }

    else
    {
      v12 = 1;
      LOBYTE(lock[34]._os_unfair_lock_opaque) = 1;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = *(a2 + 163);
      v27 = 134218754;
      if (v25)
      {
        v26 = " volatile";
      }

      else
      {
        v26 = "";
      }

      v28 = v13;
      v29 = 2048;
      v30 = a3;
      v31 = 2048;
      v32 = a2;
      v33 = 2080;
      v34 = v26;
      _os_log_impl(&dword_195CE8000, v24, OS_LOG_TYPE_INFO, "%f: dealloc %p: %p%s\n", &v27, 0x2Au);
    }

    os_unfair_lock_unlock(lock);
    goto LABEL_40;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = CACurrentMediaTime();
    v9 = *(a2 + 16);
    v10 = *(a2 + 18);
    v27 = 134219008;
    v28 = v8;
    v29 = 2048;
    v30 = a3;
    v31 = 2048;
    v32 = a2;
    v33 = 2048;
    v34 = v9;
    v35 = 2048;
    v36 = v10;
    _os_log_impl(&dword_195CE8000, v7, OS_LOG_TYPE_INFO, "%f: ignore dealloc %p: %p [%p, %f]\n", &v27, 0x34u);
  }

  v11 = 0;
  v12 = 0;
LABEL_40:
  if (atomic_fetch_add_explicit(a2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*a2 + 8))(a2);
  }

  if (v12)
  {
    dispatch_async_f(*&lock[2]._os_unfair_lock_opaque, lock, RB::SurfacePool::AsyncCollection::~AsyncCollection()::$_0::__invoke);
  }
}

void sub_195CF0F98(_Unwind_Exception *a1)
{
  if (v3)
  {
    if (atomic_fetch_add_explicit((v3 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      [RBImageQueueContents .cxx_destruct];
    }
  }

  os_unfair_lock_unlock(v1);

  _Unwind_Resume(a1);
}

uint64_t RB::Surface::set_volatile(uint64_t this, uint32_t a2)
{
  if (*(this + 163) != a2)
  {
    v7 = v2;
    v8 = v3;
    v4 = a2;
    v5 = this;
    oldState = 0;
    this = IOSurfaceSetPurgeable(*(this + 48), a2, &oldState);
    if (!this)
    {
      *(v5 + 163) = v4;
    }
  }

  return this;
}

uint64_t RB::SurfacePool::set_surface_volatile(uint64_t this, RB::Surface *a2, uint32_t a3)
{
  if (*(a2 + 163) != a3)
  {
    v5 = this;
    this = RB::Surface::set_volatile(a2, a3);
    if (*(a2 + 163) == a3)
    {
      v6 = *(a2 + 3) * HIDWORD(*(a2 + 3)) * *(a2 + 161);
      v7 = 152;
      if (a3)
      {
        v8 = 144;
      }

      else
      {
        v8 = 152;
      }

      if (!a3)
      {
        v7 = 144;
      }

      v9 = 160;
      *(v5 + v8) -= v6;
      if (a3)
      {
        v9 = 168;
      }

      v10 = *(v5 + v7) + v6;
      *(v5 + v7) = v10;
      if (*(v5 + v9) > v10)
      {
        v10 = *(v5 + v9);
      }

      *(v5 + v9) = v10;
    }
  }

  return this;
}

uint64_t RB::DisplayList::FilterStyle<RB::Filter::GaussianBlur>::~FilterStyle(uint64_t a1)
{
  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    (**v2)(v2);
  }

  return a1;
}

void RB::DisplayList::Contents::finalize(RB::DisplayList::Contents *this)
{
  v2 = *(this + 3);
  if (v2 && *v2)
  {
    global_queue = dispatch_get_global_queue(0, 0);

    dispatch_async_f(global_queue, this, RB::DisplayList::Contents::finalize(void)::$_0::__invoke);
  }

  else
  {
    v4 = *(*this + 24);

    v4();
  }
}

void RB::DisplayList::Contents::~Contents(RB::DisplayList::Contents *this)
{
  RB::DisplayList::Contents::~Contents(this);

  JUMPOUT(0x19A8C09E0);
}

{
  *this = &unk_1F0A39320;
  v2 = *(this + 39);
  if (v2)
  {
    do
    {
      v3 = *(v2 + 8);
      (**v2)(v2);
      v2 = v3;
    }

    while (v3);
  }

  RB::DisplayList::Layer::~Layer((this + 320));
  RB::Heap::~Heap((this + 16));
}

uint64_t RB::DisplayList::GenericFilter<RB::Filter::GaussianBlur>::~GenericFilter(uint64_t a1)
{
  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    (**v2)(v2);
  }

  return a1;
}

void RB::DisplayList::Layer::~Layer(RB::DisplayList::Layer *this)
{
  *this = &unk_1F0A3FB60;
  for (i = *(this + 2); i; i = *(i + 8))
  {
    (**i)(i);
  }

  for (j = *(this + 4); j; j = *(j + 8))
  {
    (**j)(j);
  }
}

{
  RB::DisplayList::Layer::~Layer(this);

  JUMPOUT(0x19A8C09E0);
}

void RB::Heap::~Heap(RB::Heap *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    RB::ObjectTable::~ObjectTable(v2);
    *(this + 4) = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    do
    {
      v4 = *v3;
      free(v3[1]);
      v3 = v4;
    }

    while (v4);
  }
}

void RB::ObjectTable::~ObjectTable(const void ***this)
{
  v2 = *this;
  v3 = *(this + 2);
  if (v3)
  {
    v4 = 8 * v3;
    do
    {
      v5 = *v2;
      if (*v2)
      {
        if (v5)
        {
          (**(v5 & 0xFFFFFFFFFFFFFFFELL))(v5 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          CFRelease(v5);
        }
      }

      ++v2;
      v4 -= 8;
    }

    while (v4);
    v2 = *this;
  }

  if (v2)
  {
    free(v2);
  }
}

void sub_195CF16C8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void RB::SurfacePool::unwatch_queues(os_unfair_lock_s *this, CALayer *a2)
{
  os_unfair_lock_lock(this);
  v4 = *&this[28]._os_unfair_lock_opaque;
  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = *&this[26]._os_unfair_lock_opaque;
      v7 = (v6 + 16 * v5);
      v8 = v7[1];
      if (v8 == a2)
      {
        v9 = v6 + 16 * v4;
        v10 = *v7;
        *v7 = *(v9 - 16);
        *(v9 - 16) = v10;
        *(v9 - 8) = v8;
        v4 = *&this[28]._os_unfair_lock_opaque - 1;
        *&this[28]._os_unfair_lock_opaque = v4;
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < v4);
  }

  os_unfair_lock_unlock(this);
}

void RB::SharedSubsurface::~SharedSubsurface(id *this)
{
  RB::SharedSubsurface::reset(this);
  v2 = this[4];
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::SharedSubsurface::~SharedSubsurface();
  }
}

void sub_195CF1894(_Unwind_Exception *a1)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    RB::SharedSubsurface::~SharedSubsurface(v3);
  }

  _Unwind_Resume(a1);
}

void RB::SharedSubsurface::reset(RB::SharedSubsurface *this)
{
  if (*this)
  {
    v2 = *(*this + 16);
    if (v2)
    {
      RB::SharedSurfaceGroup::remove_subsurface(v2, this, 1);
    }
  }
}

void RB::DisplayList::LayerItem::~LayerItem(RB::DisplayList::LayerItem *this)
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

void sub_195CF19D8(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable((v1 + 176));
  std::mutex::~mutex((v1 + 112));
  v3 = *(v1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  _Unwind_Resume(a1);
}

int32x2_t *RB::Filter::ColorMatrix::render(int32x2_t *result, uint64_t a2, int32x2_t *a3)
{
  if (result[1])
  {
    if (a3[16].i32[1] == 2)
    {
      v3 = 131100;
    }

    else
    {
      v3 = 28;
    }

    return RB::Filter::ColorMatrix::render(result, a3, a3, v3);
  }

  return result;
}

float32_t RB::Coverage::set_plane(float32x2_t *a1, uint64_t a2, int32x2_t a3)
{
  a3.i32[0] = 0;
  v3 = *(a2 + 176);
  v4 = vceq_s32(v3, 0x8000000080000000);
  v5 = vdup_lane_s32(vcgt_s32(a3, vpmin_u32(v4, v4)), 0);
  v6 = vbsl_s8(v5, 0x100000001000000, vcvt_f32_s32(*(a2 + 168)));
  v7 = vbsl_s8(v5, vneg_f32(0x80000000800000), vcvt_f32_s32(v3));
  v8.f64[0] = 0.0;
  *&v9 = *v7.i32;
  v8.f64[1] = *&v7.i32[1];
  v10 = *(a2 + 112);
  v10.i32[1] = vneg_f32(v10).i32[1];
  *a1 = vmul_f32(v10, vcvt_f32_f64(v9));
  a1[1] = vmul_f32(v10, vcvt_f32_f64(v8));
  __asm { FMOV            V2.2S, #-1.0 }

  a1[2] = vmla_f32(COERCE_FLOAT32X2_T(-_D2), v6, v10);
  result = *(a2 + 120);
  a1[3].f32[0] = result;
  return result;
}

uint64_t RB::Filter::anonymous namespace::set_color_fill_state(_DWORD *a1, MTLPixelFormat a2, char a3)
{
  v4 = *(a2 + 128);
  if ((a3 & 1) != 0 && v4 >= 0x10)
  {
    *a1 |= 3u;
    return v4 & 0xF;
  }

  else if ((a3 & 2) != 0 && v4 <= 0xF)
  {
    if (RB::BaseRenderParams::srgb_alpha(*a2, a2))
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    *a1 |= v5;
    return v4 | 0x10;
  }

  return v4;
}

uint64_t RB::ColorMatrix::is_diagonal(float16x4_t *this)
{
  result = 0;
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    __asm { FCMP            H0, #0 }

    if (_ZF)
    {
      __asm { FCMP            H0, #0 }

      if (_ZF)
      {
        result = 0;
        __asm { FCMP            H0, #0 }

        if (_ZF)
        {
          __asm { FCMP            H1, #0 }

          if (_ZF)
          {
            __asm { FCMP            H0, #0 }

            if (_ZF)
            {
              result = 0;
              __asm { FCMP            H0, #0 }

              if (_ZF)
              {
                __asm { FCMP            H1, #0 }

                if (_ZF)
                {
                  __asm { FCMP            H0, #0 }

                  if (_ZF)
                  {
                    result = 0;
                    __asm { FCMP            H0, #0 }

                    if (_ZF)
                    {
                      __asm { FCMP            H1, #0 }

                      if (_ZF)
                      {
                        __asm { FCMP            H0, #0 }

                        if (_ZF)
                        {
                          v19 = vceqz_f16(this[4]);
                          v19.i16[0] = vminv_u16(v19);
                          return (v19.i32[0] >> 15) & 1;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void RB::RenderTask::schedule_many(RB::RenderTask **a1, uint64_t a2, double a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a1;
    v4 = 0;
    v40 = 0;
    v41 = 0x2000000000;
    v5 = 8 * a2;
    v6 = 8 * a2;
    v7 = a1;
    do
    {
      v8 = v4;
      v9 = *v7++;
      v4 = v9;
      *(v9 + 72) = v8;
      v6 -= 8;
    }

    while (v6);
    v10 = 0;
    do
    {
      v11 = v4;
      v12 = v10;
      v13 = v4;
      v4 = 0;
      do
      {
        *(v13 + 80) = v10;
        v14 = *(v13 + 48);
        for (i = v4; v14; v14 = *v14)
        {
          v16 = v14[1];
          v17 = *(v16 + 80) - 1;
          *(v16 + 80) = v17;
          if (!v17)
          {
            *(v16 + 72) = i;
            i = v16;
          }
        }

        v4 = *(v13 + 56);
        if (v4 && (v18 = *(v4 + 80) - 1, (*(v4 + 80) = v18) == 0))
        {
          *(v4 + 72) = i;
        }

        else
        {
          v4 = i;
        }

        v13 = *(v13 + 72);
      }

      while (v13);
      if (HIDWORD(v41) < ++v10)
      {
        RB::vector<RB::RenderTask *,32ul,unsigned int>::reserve_slow(__dst, v10);
        v12 = v41;
        v10 = v41 + 1;
      }

      v19 = v40;
      if (!v40)
      {
        v19 = __dst;
      }

      *&v19[8 * v12] = v11;
      LODWORD(v41) = v10;
    }

    while (v4);
    if (v10)
    {
      v20 = 0;
      v21 = v10;
      while (1)
      {
        RB::BinPacker::BinPacker(__p, SLODWORD(a3), SHIDWORD(a3));
        v22 = v40;
        if (!v40)
        {
          v22 = __dst;
        }

        v23 = *&v22[8 * v20];
        if (v23)
        {
          do
          {
            v24 = *(v23 + 64);
            v25 = *(v23 + 72);
            if (v24)
            {
              *(v23 + 72) = *(v24 + 24);
              *(v24 + 24) = v23;
            }

            else
            {
              RB::BinPacker::add(__p, *(v23 + 24), HIDWORD(*(v23 + 24)), v23, *(v23 + 16) ^ (*(v23 + 88) << 16));
            }

            v23 = v25;
          }

          while (v25);
        }

        RB::BinPacker::pack(__p);
        v26 = v38;
        if (v38)
        {
          break;
        }

LABEL_37:
        RB::Heap::~Heap(__p);
        if (++v20 == v21)
        {
          goto LABEL_38;
        }
      }

      while (1)
      {
        (*(**(*(v26 + 16) + 16) + 48))(v36, *v26);
        v27 = *(v26 + 16);
        v28 = v36[0];
        if (v27)
        {
          break;
        }

        if (v36[0])
        {
          goto LABEL_34;
        }

LABEL_36:
        v26 = *(v26 + 24);
        if (!v26)
        {
          goto LABEL_37;
        }
      }

      do
      {
        v29 = *(v27 + 16);
        RB::RenderTask::set_texture(v29, v28, *(v27 + 32));
        v28 = v36[0];
        *(v29 + 72) = *(v36[0] + 24);
        *(v28 + 24) = v29;
        v27 = *(v27 + 40);
      }

      while (v27);
LABEL_34:
      v30 = *(v28 + 8) - 1;
      *(v28 + 8) = v30;
      if (!v30)
      {
        (*(*v28 + 8))(v28);
      }

      goto LABEL_36;
    }

LABEL_38:
    if ((atomic_load_explicit(&_ZGVZN2RB10RenderTask13schedule_manyENSt3__14spanIPS0_Lm18446744073709551615EEEDv2_iPvE11print_tasks, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZN2RB10RenderTask13schedule_manyENSt3__14spanIPS0_Lm18446744073709551615EEEDv2_iPvE11print_tasks))
    {
      v33 = RB::debug_int("RB_PRINT_TASKS", v32);
      if ((v33 & 0x100000000) != 0)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      _ZZN2RB10RenderTask13schedule_manyENSt3__14spanIPS0_Lm18446744073709551615EEEDv2_iPvE11print_tasks = v34;
      __cxa_guard_release(&_ZGVZN2RB10RenderTask13schedule_manyENSt3__14spanIPS0_Lm18446744073709551615EEEDv2_iPvE11print_tasks);
    }

    if (_ZZN2RB10RenderTask13schedule_manyENSt3__14spanIPS0_Lm18446744073709551615EEEDv2_iPvE11print_tasks >= 1)
    {
      memset(__p, 0, 41);
      RB::SexpString::push(__p, "tasks");
      do
      {
        RB::RenderTask::print_(*v3++, __p, _ZZN2RB10RenderTask13schedule_manyENSt3__14spanIPS0_Lm18446744073709551615EEEDv2_iPvE11print_tasks > 1, atomic_fetch_add_explicit(RB::RenderTask::last_mark, 1u, memory_order_relaxed) + 1);
        v5 -= 8;
      }

      while (v5);
      RB::SexpString::pop(__p);
      RB::SexpString::newline(__p);
      v31 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
      fputs(v31, *MEMORY[0x1E69E9858]);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if (v40)
    {
      free(v40);
    }
  }
}

void sub_195CF209C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&_ZGVZN2RB10RenderTask13schedule_manyENSt3__14spanIPS0_Lm18446744073709551615EEEDv2_iPvE11print_tasks);
  if (STACK[0x580])
  {
    free(STACK[0x580]);
  }

  _Unwind_Resume(a1);
}

uint64_t RB::RenderState::reads_tables(RB::RenderState *this, int a2)
{
  v2 = *this;
  v3 = *this & 0x3F;
  result = 1;
  switch(v3)
  {
    case 0:
    case 1:
      return result;
    case 3:
    case 7:
    case 13:
    case 21:
      v5 = v2 & 0xE000000;
      v6 = (v2 >> 22) & 0xF;
      if ((v2 & 0x1C00000) == 0x400000)
      {
        v7 = 1;
      }

      else
      {
        v7 = a2 ^ 1;
      }

      if (v5)
      {
        v8 = 0;
      }

      else
      {
        v8 = v6 == (a2 ^ 1);
      }

      if (v8)
      {
        result = 0;
      }

      else
      {
        result = v7;
      }

      break;
    case 6:
    case 12:
    case 19:
    case 20:
      result = (v2 >> 18) & 1;
      break;
    case 8:
    case 22:
      result = (v2 >> 21) & 1;
      break;
    case 28:
      result = (v2 >> 19) & 1;
      break;
    case 32:
    case 33:
    case 34:
      v9 = v2 & 0x1C0000;
      v10 = v2 & 0xE00000;
      v11 = (v2 & 0x1C0) == 64;
      if (v10 == 0x200000)
      {
        v11 = 1;
      }

      result = v9 == 0x40000 || v11;
      break;
    case 36:
      v12 = v2 & 0x700;
      v13 = (v2 >> 18) & 1;
      if (v12 == 512)
      {
        result = v13;
      }

      else
      {
        result = 0;
      }

      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t RB::RenderState::reads_noise(RB::RenderState *this)
{
  v1 = *this;
  v2 = *this & 0x3F;
  result = 1;
  switch(v2)
  {
    case 0:
    case 1:
    case 6:
    case 12:
    case 19:
    case 20:
      return result;
    case 3:
    case 7:
    case 13:
    case 21:
      result = v1 >> 31;
      break;
    case 8:
    case 22:
      result = (v1 >> 20) & 1;
      break;
    case 28:
    case 29:
      result = (v1 >> 22) & 1;
      break;
    case 30:
      result = (v1 >> 23) & 1;
      break;
    case 32:
    case 33:
    case 34:
      result = (v1 >> 25) & 1;
      break;
    case 35:
      result = (v1 >> 19) & 1;
      break;
    case 36:
      result = (v1 & 0x700) == 512;
      break;
    case 37:
      result = (v1 >> 8) & 1;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t RB::TextureCache::prepare_from_texture_data(int32x2_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, RB *a5, uint64_t a6)
{
  v68 = *MEMORY[0x1E69E9840];
  PixelFormat = CGImageTextureDataGetPixelFormat();
  v13 = RB::pixel_format_traits(PixelFormat, v12);
  if (PixelFormat != *v13)
  {
    return 0;
  }

  v14 = v13;
  if (*(*a2 + 331) < *(v13 + 7) || *(v13 + 8) != 0)
  {
    return 0;
  }

  ColorSpace = CGImageTextureDataGetColorSpace();
  if (!ColorSpace)
  {
    ColorSpace = a5;
  }

  if (ColorSpace)
  {
    v18 = RB::color_space_from_cg(ColorSpace, v17);
    if ((v18 & 0x100) == 0)
    {
      return 0;
    }

    v19 = ((v18 & 0xF) == 0) | v18;
  }

  else
  {
    v19 = 17;
  }

  v54 = v19;
  CGImageTextureDataGetSize();
  if (v22 != *&a1[3] || v21 != HIDWORD(*&a1[3]))
  {
    return 0;
  }

  if ((a4[3] & 2) != 0)
  {
    NumberOfMipmaps = CGImageTextureDataGetNumberOfMipmaps();
    if (!NumberOfMipmaps)
    {
      return 0;
    }

    v27 = NumberOfMipmaps;
    if (NumberOfMipmaps > RB::max_mipmap_levels(a1[3]))
    {
      return 0;
    }

    v25 = v27;
    if ((a6 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v25 = 1;
    if ((a6 & 0x100000000) == 0)
    {
LABEL_21:
      v53 = 0;
      LOBYTE(a6) = 1;
      goto LABEL_35;
    }
  }

  v28 = a6 & 0x1F;
  LOBYTE(a6) = 1;
  if (v28 > 6)
  {
    v29 = 0;
LABEL_34:
    v53 = v29;
    goto LABEL_35;
  }

  if (((1 << v28) & 0x61) == 0)
  {
    v53 = 0;
    if (((1 << v28) & 0x18) == 0)
    {
      goto LABEL_35;
    }

    v29 = 1;
    goto LABEL_34;
  }

  if (v14[1])
  {
    a6 = 0;
    if ((*(*a2 + 334) & 1) == 0)
    {
      return a6;
    }

    v53 = 0;
  }

  else
  {
    v53 = 0;
    LOBYTE(a6) = 0;
  }

LABEL_35:
  if (v54 >= 0x10u)
  {
    if ((v14[1] & 0x10) == 0 || (PixelFormat = v14[6]) != 0)
    {
      if ((a4[3] & 1) != 0 || a4[1] != 1 || *a4 != v54)
      {
        v30 = (a4[3] & 8) != 0 ? 0 : a6;
        if ((v30 & 1) == 0)
        {
          v31 = v25;
          RB::pixel_format_traits(PixelFormat, v20);
          v25 = v31;
        }
      }

      goto LABEL_46;
    }

    return 0;
  }

LABEL_46:
  v51 = a2;
  v52 = a1;
  v50 = a4;
  if (v25 == 1)
  {
    v32 = v25;
    CGImageTextureDataSupportsTiledLayout();
    v25 = v32;
  }

  v33 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3812000000;
  v62 = __Block_byref_object_copy__3;
  v63 = __Block_byref_object_dispose__3;
  v64 = &unk_195E5D35D;
  v65 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  if (v25 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v25;
  }

  do
  {
    v35 = v25;
    CGImageTextureDataGetDataWithBlock();
    ++v33;
    v25 = v35;
  }

  while (v34 != v33);
  v36 = v60;
  v37 = v60[6];
  if (v37 && v56[3] == v35)
  {
    v38 = *(v37 + 76) > 1u;
    v39 = v50;
    v40 = v50[3];
    if (v53)
    {
      v41 = 68;
    }

    else
    {
      v41 = 64;
    }

    v42 = v52;
    v43 = v52[9].i32[0];
    if (v52[9].i32[1] < (v43 + 1))
    {
      RB::vector<std::pair<RB::cf_ptr<CGContext *>,RB::ContextDelegate *>,1ul,unsigned int>::reserve_slow(&v52[6], v43 + 1);
      v42 = v52;
      v43 = v52[9].i32[0];
      v39 = v50;
    }

    v44 = v42[8];
    if (!v44)
    {
      v44 = v52 + 6;
    }

    v45 = &v44[2 * v43];
    v45->i32[0] = (v41 | (2 * v38) | v40 & 0x20) << 24;
    v45[1] = v36[6];
    v36[6] = 0;
    ++v42[9].i32[0];
    a6 = RB::TextureCache::prepare_from_cache(v42, v51, v39);
  }

  else
  {
    v46 = RB::verbose_mode(0x80);
    if (v46)
    {
      v49 = RB::misc_log(v46);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v67 = v52;
        _os_log_impl(&dword_195CE8000, v49, OS_LOG_TYPE_INFO, "%p: failed to create texture from image data\n", buf, 0xCu);
      }
    }

    a6 = 0;
  }

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);
  v47 = v65;
  if (v65)
  {
    v48 = *(v65 + 8) - 1;
    *(v65 + 8) = v48;
    if (!v48)
    {
      (*(*v47 + 8))(v47);
    }
  }

  return a6;
}

void sub_195CF28D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  v37 = a36;
  if (a36)
  {
    v38 = *(a36 + 8) - 1;
    *(a36 + 8) = v38;
    if (!v38)
    {
      (*(*v37 + 8))(v37);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t RB::color_space_from_cg(RB *this, CGColorSpace *a2)
{
  if (this)
  {
    ID = CGColorSpaceGetID();
    LOWORD(this) = RB::color_space_from_cg_id(ID);
    v3 = BYTE1(this);
  }

  else
  {
    v3 = 0;
  }

  return this | (v3 << 8);
}

void ___ZN2RB12TextureCache25prepare_from_texture_dataERNS_11RenderFrameEP18CGImageTextureDataRKNS0_6ParamsEP12CGColorSpaceNSt3__18optionalIjEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, __n128 a7)
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 48);
  v8 = *(a1 + 80);
  a7.n128_u64[0] = vmax_s32(vshl_s32(v7[3], vneg_s32(vdup_n_s32(v8))), 0x100000001);
  if (a7.n128_i32[0] == a2 && a7.n128_i32[1] == a3)
  {
    v12 = a7.n128_u32[0];
    v13 = a7.n128_u32[1];
    v14 = *(*(*(a1 + 32) + 8) + 48);
    if ((*(a1 + 84) & 2) != 0)
    {
      if (v14)
      {
        v26 = 0;
      }

      else
      {
        v26 = v8 == 0;
      }

      if (v26)
      {
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = ___ZN2RB12TextureCache25prepare_from_texture_dataERNS_11RenderFrameEP18CGImageTextureDataRKNS0_6ParamsEP12CGColorSpaceNSt3__18optionalIjEE_block_invoke_2;
        v41[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
        v30 = *(a1 + 64);
        v41[4] = *(a1 + 56);
        v31 = *v30;
        v32 = objc_opt_new();
        [v32 setPixelFormat:*(a1 + 72)];
        [v32 setWidth:a2];
        [v32 setHeight:a3];
        [v32 setMipmapLevelCount:*(a1 + 88)];
        [v32 setUsage:1];
        [v32 setStorageMode:0];
        if (*(a1 + 92))
        {
          RB::Texture::set_swizzle(v32, *(a1 + 92));
        }

        if ([*(v31 + 24) newTextureWithBytesNoCopy:a5 length:a6 descriptor:v32 deallocator:v41])
        {
          operator new();
        }
      }
    }

    else
    {
      if (!v14)
      {
        v40 = a7;
        RB::TextureCache::take_available(*(a1 + 48), *(a1 + 72), *(a1 + 88), *(a1 + 93) | 0x100, 0, *(a1 + 92), 0, buf, a7);
        v16 = *(*(a1 + 32) + 8);
        v17 = *(v16 + 48);
        *(v16 + 48) = *buf;
        v18 = v40;
        if (v17)
        {
          v19 = v17[2] - 1;
          v17[2] = v19;
          if (!v19)
          {
            (*(*v17 + 8))(v17, v40);
            v18 = v40;
          }
        }

        if (!*(*(*(a1 + 32) + 8) + 48))
        {
          RB::Texture::alloc(**(a1 + 64), *(a1 + 72), *(a1 + 88), 0, *(a1 + 92), buf, v18);
          v20 = *(*(a1 + 32) + 8);
          v21 = *(v20 + 48);
          *(v20 + 48) = *buf;
          *buf = v21;
          if (v21)
          {
            v22 = v21[2] - 1;
            v21[2] = v22;
            if (!v22)
            {
              (*(*v21 + 8))(v21);
            }
          }

          v23 = *(*(*(a1 + 32) + 8) + 48);
          if (v23)
          {
            RB::Resource::set_label(*(v23 + 16), "data-texture", &_ZZZN2RB12TextureCache25prepare_from_texture_dataERNS_11RenderFrameEP18CGImageTextureDataRKNS0_6ParamsEP12CGColorSpaceNSt3__18optionalIjEEEUb_E7counter_0);
            v24 = RB::verbose_mode(0x80);
            if (v24)
            {
              v33 = RB::misc_log(v24);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                v34 = *(*(*(a1 + 32) + 8) + 48);
                v35 = RB::ColorSpace::name((a1 + 93));
                v37 = RB::pixel_format_name(*(a1 + 72), v36);
                v38 = "";
                v39 = *(a1 + 94);
                *buf = 134219522;
                if (v39)
                {
                  v38 = " non-premul";
                }

                *&buf[4] = v7;
                v43 = 2048;
                v44 = v34;
                v45 = 1024;
                v46 = v12;
                v47 = 1024;
                v48 = v13;
                v49 = 2080;
                v50 = v35;
                v51 = 2080;
                v52 = v37;
                v53 = 2080;
                v54 = v38;
                _os_log_impl(&dword_195CE8000, v33, OS_LOG_TYPE_INFO, "%p: created image data texture %p [%d %d] %s %s%s\n", buf, 0x40u);
              }
            }
          }
        }
      }

      v25 = *(*(*(a1 + 32) + 8) + 48);
      if (v25)
      {
        RB::Texture::replace(v25, *(a1 + 80), a5, a4);
        ++*(*(*(a1 + 40) + 8) + 24);
      }
    }
  }
}

uint64_t RB::BaseRenderParams::srgb_alpha(RB::BaseRenderParams *this, MTLPixelFormat a2)
{
  if (*(this + 9) != 1)
  {
    return 0;
  }

  v3 = *(RB::pixel_format_traits(*this, a2) + 4);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  if ((v3 & 0x10) != 0)
  {
    return 1;
  }

  return (*(this + 11) ^ 1) & ((v3 & 2) >> 1);
}

void RB::DisplayList::RenderState::make_detached_tasks(__n128 *this, int a2, __n128 a3)
{
  v3 = this[90].n128_u32[2];
  if (!v3)
  {
    return;
  }

  a3.n128_u64[0] = 0;
  LODWORD(v5) = 0;
  v6 = 0;
  v7 = this[90].n128_u64[0];
  v8 = this[90].n128_u32[3];
  this[90] = a3;
  v71 = v7;
  v72 = v3;
  v73 = v8;
  v9 = 2 * a2;
LABEL_3:
  if (v5 < v72)
  {
    v66 = v6;
    v10 = v5;
    while (1)
    {
      v11 = &v71[336 * v10];
      v12 = *v11;
      if (v11[320] != 1 || (v13 = 0x3FF0000000000000, v14 = vandq_s8(vandq_s8(vceqq_f64(*(v11 + 2), xmmword_195E42770), vceqq_f64(*(v11 + 1), xmmword_195E42760)), vceqzq_f64(*(v11 + 3))), (vandq_s8(vdupq_laneq_s64(v14, 1), v14).u64[0] & 0x8000000000000000) == 0))
      {
        v12 = RB::DisplayList::RenderState::copy_layer(this, *v11, (v11 + 16));
      }

      v15 = this->n128_u64[0];
      v68 = *(v11 + 4);
      v69 = v15;
      v70 = 0;
      v16 = this[67].n128_u64[0];
      this[67].n128_u64[0] = &v68;
      v17 = ((*(v11 + 78) & 0xF0u) - 16) >> 4;
      v18 = 2;
      if (v17 <= 1)
      {
        break;
      }

      if (v17 == 2)
      {
        BYTE8(v68) = 2;
        goto LABEL_16;
      }

      if (v17 == 3)
      {
        goto LABEL_13;
      }

LABEL_16:
      v19 = *(v11 + 38);
      v20 = vmul_lane_s32(*&v19, *&v19, 1).u32[0];
      v21 = *(v11 + 79);
      if (v21 >= v9)
      {
        v21 = v9;
      }

      if (v20 <= v21)
      {
        v30 = *(v11 + 37);
        v74[0] = 0;
        v74[1] = 0;
        RB::DisplayList::Layer::make_task(v12, this, v74, v18, 0, 0, &v67, v30, v19, *(v11 + 20), v13);
        if (*(v11 + 35))
        {
          v31 = *(v11 + 35);
        }

        else
        {
          v31 = v11 + 88;
        }

        v32 = *(v11 + 72);
        v33 = v67;
        if (v32)
        {
          v34 = 0;
          v35 = (v31 + 40);
          v36 = 48 * v32;
          do
          {
            v37 = *v35;
            if (v34 == *v35)
            {
              v37 = v34;
            }

            else if (v33)
            {
              v38 = RB::Heap::emplace<RB::RenderTask::ChildNode,RB::refcounted_ptr<RB::DisplayList::LayerTask> &>(&this->n128_i8[8], &v67);
              RB::RenderTask::add_child(*v35, v38, 0);
              v33 = v67;
            }

            *v35 = v33;
            v35 += 6;
            v34 = v37;
            v36 -= 48;
          }

          while (v36);
        }

        if (v33)
        {
          v39 = v33[2] - 1;
          v33[2] = v39;
          if (!v39)
          {
            (*(*v33 + 8))(v33);
          }
        }
      }

      else
      {
        v22 = *(v11 + 35);
        if (!v22)
        {
          v22 = v11 + 88;
        }

        v23 = *(v11 + 72);
        if (v23)
        {
          v24 = (v22 + 24);
          v25 = 48 * v23;
          do
          {
            RB::DisplayList::Layer::make_task(v12, this, v24, v18, 0, 0, &v67, *(v24 - 2), *(v24 - 1), *(v11 + 20), v13);
            v26 = v67;
            if (v67)
            {
              v27 = ((this[1].n128_u64[1] + 7) & 0xFFFFFFFFFFFFFFF8);
              if ((v27 + 2) > this[2].n128_u64[0])
              {
                v27 = RB::Heap::alloc_slow(&this->n128_u64[1], 0x10uLL, 7);
                v26 = v67;
              }

              else
              {
                this[1].n128_u64[1] = (v27 + 2);
              }

              v67 = 0;
              v27[1] = v26;
              RB::RenderTask::add_child(v24[2], v27, 0);
              v24[2] = v27[1];
              v28 = v67;
              if (v67)
              {
                v29 = v67[2] - 1;
                v67[2] = v29;
                if (!v29)
                {
                  (*(*v28 + 8))(v28);
                }
              }
            }

            else
            {
              v24[2] = 0;
            }

            v24 += 6;
            v25 -= 48;
          }

          while (v25);
        }
      }

      this[67].n128_u64[0] = v16;
      ++v10;
      v5 = v72;
      if (v10 >= v72)
      {
        v40 = this[90].n128_u32[2];
        if (!v40)
        {
          goto LABEL_76;
        }

        v41 = this[90].n128_u64[0];
        v42 = 336 * v72;
        v43 = (v40 + v72);
        if (v73 < v43)
        {
          RB::vector<RB::DisplayList::RenderState::DetachedInfo,0ul,unsigned int>::reserve_slow(&v71, v43);
          v44 = v71;
          if (v5 < v72)
          {
            memmove(&v71[336 * v40 + v42], &v71[v42], 336 * (v72 - v5));
          }
        }

        else
        {
          v44 = v71;
        }

        v45 = v41 + 336 * v40;
        v46 = &v44[v42];
        while (2)
        {
          v47 = *(v41 + 16);
          *v46 = *v41;
          *(v46 + 1) = v47;
          v48 = *(v41 + 32);
          v49 = *(v41 + 48);
          v50 = *(v41 + 64);
          *(v46 + 20) = *(v41 + 80);
          *(v46 + 3) = v49;
          *(v46 + 4) = v50;
          *(v46 + 2) = v48;
          *(v46 + 35) = 0;
          *(v46 + 36) = 0x400000000;
          if (*(v41 + 280))
          {
            v51 = *(v41 + 280);
          }

          else
          {
            v51 = (v41 + 88);
          }

          v52 = *(v41 + 288);
          if (v52 >= 5)
          {
            RB::vector<RB::DisplayList::RenderState::DetachedInfo::Element,4ul,unsigned int>::reserve_slow(v46 + 88, *(v41 + 288));
            v53 = *(v46 + 35);
            v54 = *(v46 + 72);
LABEL_57:
            if (!v53)
            {
              v53 = v46 + 88;
            }

            v55 = &v53[48 * v54];
            v56 = v52;
            do
            {
              v57 = *v51;
              v58 = v51[2];
              *(v55 + 1) = v51[1];
              *(v55 + 2) = v58;
              *v55 = v57;
              v55 += 48;
              v51 += 3;
              --v56;
            }

            while (v56);
            v59 = *(v46 + 72);
          }

          else
          {
            if (v52)
            {
              v53 = 0;
              v54 = 0;
              goto LABEL_57;
            }

            v59 = 0;
          }

          *(v46 + 72) = v59 + v52;
          v60 = *(v41 + 296);
          *(v46 + 305) = *(v41 + 305);
          *(v46 + 296) = v60;
          v41 += 336;
          v46 += 336;
          if (v41 != v45)
          {
            continue;
          }

          break;
        }

        ++v72;
        v61 = this[90].n128_u32[2];
        if (v61)
        {
          v62 = 336 * v61;
          v63 = (this[90].n128_u64[0] + 280);
          do
          {
            if (*v63)
            {
              free(*v63);
            }

            v63 += 42;
            v62 -= 336;
          }

          while (v62);
        }

        this[90].n128_u32[2] = 0;
        v6 = v66 + 1;
        if (v66 == 255)
        {
          RB::precondition_failure("reached detached layer recursion limit", v43);
        }

        goto LABEL_3;
      }
    }

    if (!v17)
    {
      v18 = 10;
      goto LABEL_16;
    }

    LOBYTE(v17) = 5;
LABEL_13:
    BYTE8(v68) = v17;
    goto LABEL_16;
  }

  LODWORD(v5) = v72;
LABEL_76:
  v64 = this[90].n128_u64[0];
  this[90].n128_u64[0] = v71;
  v71 = v64;
  this[90].n128_u32[2] = v5;
  v65 = this[90].n128_u32[3];
  this[90].n128_u32[3] = v73;
  v72 = 0;
  v73 = v65;
  if (v64)
  {
    free(v64);
  }
}

void sub_195CF351C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, unsigned int a22, uint64_t a23)
{
  v24 = a21;
  v25 = a22;
  if (a22)
  {
    v26 = 0;
    v27 = a21 + 35;
    do
    {
      if (*v27)
      {
        free(*v27);
        v25 = a22;
      }

      ++v26;
      v27 += 42;
    }

    while (v26 < v25);
    v24 = a21;
  }

  if (v24)
  {
    free(v24);
  }

  _Unwind_Resume(exception_object);
}

void RB::DisplayList::RenderState::~RenderState(RB::DisplayList::RenderState *this, __n128 a2)
{
  {
    v30 = RB::debug_int("RB_PRINT_TREE", v29);
    v31 = v30 & 1;
    if ((v30 & 0x100000000) == 0)
    {
      v31 = 0;
    }

    RB::DisplayList::RenderState::~RenderState()::print_tree = v31;
  }

  if (RB::DisplayList::RenderState::~RenderState()::print_tree == 1)
  {
    memset(__p, 0, 41);
    RB::SexpString::push(__p, "renderer");
    if (*(this + 143))
    {
      v3 = *(this + 143);
    }

    else
    {
      v3 = this + 1080;
    }

    v4 = *(this + 288);
    if (v4)
    {
      v5 = 0;
      v6 = &v3[8 * v4];
      do
      {
        RB::SexpString::push(__p, "root-texture");
        RB::SexpString::printf(__p, 0, "(size %d %d)", *(*v3 + 56), HIDWORD(*(*v3 + 56)));
        v7 = *(this + 356);
        if (v5 < v7)
        {
          do
          {
            v8 = *(this + 177);
            if (!v8)
            {
              v8 = this + 1160;
            }

            v9 = *&v8[8 * v5];
            if (*(v9 + 64) == *v3)
            {
              RB::DisplayList::Layer::print(*(v9 + 96), __p, 0);
              v7 = *(this + 356);
            }

            ++v5;
          }

          while (v5 < v7);
          v5 = v5;
        }

        RB::SexpString::pop(__p);
        v3 += 8;
      }

      while (v3 != v6);
    }

    RB::SexpString::pop(__p);
    RB::SexpString::newline(__p);
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0].__r_.__value_.__r.__words[0];
    }

    fputs(v10, *MEMORY[0x1E69E9848]);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }

  v11 = this + 1160;
  if (*(this + 356))
  {
    RB::DisplayList::RenderState::make_detached_tasks(this, *(this + 368), a2);
    v12 = *(this + 177) ? *(this + 177) : (this + 1160);
    RB::RenderTask::schedule_many(v12, *(this + 356), COERCE_DOUBLE(vmax_s32(*(this + 1464), 0x40000000400)));
    v13 = *(this + 143) ? *(this + 143) : (this + 1080);
    v14 = *(this + 288);
    if (v14)
    {
      v15 = 8 * v14;
      do
      {
        RB::DisplayList::RenderState::RootTexture::render(*v13++, this, 0);
        v15 -= 8;
      }

      while (v15);
    }
  }

  v16 = *(this + 180);
  v17 = *(this + 362);
  if (v17)
  {
    v18 = 0;
    v19 = v16 + 35;
    do
    {
      if (*v19)
      {
        free(*v19);
        v17 = *(this + 362);
      }

      ++v18;
      v19 += 42;
    }

    while (v18 < v17);
    v16 = *(this + 180);
  }

  if (v16)
  {
    free(v16);
  }

  std::unique_ptr<RB::DisplayList::Builder>::reset[abi:nn200100](this + 179, 0);
  v20 = *(this + 177);
  if (v20)
  {
    v11 = *(this + 177);
  }

  if (*(this + 356))
  {
    v21 = 0;
    do
    {
      v22 = *&v11[8 * v21];
      if (v22)
      {
        v23 = v22[2] - 1;
        v22[2] = v23;
        if (!v23)
        {
          (*(*v22 + 8))(v22);
        }
      }

      ++v21;
    }

    while (v21 < *(this + 356));
    v20 = *(this + 177);
  }

  if (v20)
  {
    free(v20);
  }

  v24 = *(this + 143);
  if (v24)
  {
    v25 = *(this + 143);
  }

  else
  {
    v25 = this + 1080;
  }

  if (*(this + 288))
  {
    v26 = 0;
    do
    {
      v27 = *&v25[8 * v26];
      if (v27)
      {
        v28 = v27[2] - 1;
        v27[2] = v28;
        if (!v28)
        {
          (*(*v27 + 8))(v27);
        }
      }

      ++v26;
    }

    while (v26 < *(this + 288));
    v24 = *(this + 143);
  }

  if (v24)
  {
    free(v24);
  }

  RB::Heap::~Heap((this + 8));
}

void sub_195CF3944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  RB::vector<RB::DisplayList::RenderState::DetachedInfo,0ul,unsigned int>::~vector(v16 + 1440);
  std::unique_ptr<RB::DisplayList::Builder>::reset[abi:nn200100]((v16 + 1432), 0);
  RB::vector<RB::refcounted_ptr<RB::RenderTask>,32ul,unsigned int>::~vector(v16 + 1160);
  RB::vector<RB::refcounted_ptr<RB::DisplayList::RenderState::RootTexture>,8ul,unsigned int>::~vector(v16 + 1080);
  RB::Heap::~Heap((v16 + 8));
  _Unwind_Resume(a1);
}

void RB::RenderTaskTexture::render_tasks(RB::RenderTaskTexture *this, int32x2_t *a2, uint64_t a3, unsigned int a4)
{
  v5 = *(this + 3);
  if (v5)
  {
    v9 = 0;
    do
    {
      if (*(v5 + 80) < a4)
      {
        break;
      }

      (*(*v5 + 32))(v5, a2, a3);
      v9 = (v9 & 1) != 0 ? 1 : *(v5 + 90);
      v5 = *(v5 + 72);
    }

    while (v5);
    if (v9)
    {
      do
      {
        v21 = *a2;
        v23 = 0;
        v24 = 0;
        v22 = 0;
        v25 = 0;
        v10 = *(this + 3);
        if (v10 == v5)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0;
          do
          {
            if (*(v10 + 90) == 1)
            {
              *(v10 + 90) = 0;
              (*(*v10 + 40))(v10, a2, &v21, a3);
              if (v11)
              {
                v11 = 1;
              }

              else
              {
                v11 = *(v10 + 90);
              }
            }

            v10 = *(v10 + 72);
          }

          while (v10 != v5);
        }

        RB::Filter::RenderGroup::resolve(&v21, a2, a3);
        v12 = v22;
        v13 = v23;
        if (v23)
        {
          v14 = 0;
          v15 = (v22 + 16);
          do
          {
            v16 = *v15;
            *v15 = 0;
            if (v16)
            {
              (*(*v16 + 8))(v16);
              v13 = v23;
            }

            ++v14;
            v15 += 10;
          }

          while (v14 < v13);
          v12 = v22;
        }

        if (v12)
        {
          free(v12);
        }
      }

      while ((v11 & 1) != 0);
    }
  }

  for (i = *(this + 3); i != v5; i = *(i + 72))
  {
    for (j = *(i + 48); j; j = *j)
    {
      v19 = j[1];
      j[1] = 0;
      if (v19)
      {
        v20 = v19[2] - 1;
        v19[2] = v20;
        if (!v20)
        {
          (*(*v19 + 8))(v19, a2, a3);
        }
      }
    }
  }

  *(this + 3) = v5;
}

BOOL RB::DisplayList::RenderState::RootTexture::make_texture(RB::DisplayList::RenderState::RootTexture *this, MTLPixelFormat a2)
{
  if (*(this + 2))
  {
    return 1;
  }

  v4 = **(this + 6);
  v5 = *(this + 4);
  if ((RB::pixel_format_traits(v5, a2)[1] & 0x40) != 0)
  {
    *(this + 76) = 1;
    *buf = v5;
    v20 = *(this + 7);
    v19 = 5;
    RB::Device::ensure_native_texture(v4, buf, &v20, &v19);
    v8 = v19 & 2;
    v9 = *(this + 76);
    *(this + 77) = (v19 & 2) == 0;
    if ((v9 & 1) != 0 && v8)
    {
      if (*(*(this + 3) + 89))
      {
        v10 = 1;
      }

      else
      {
        v10 = 1;
        if (*(v4 + 333) == 1)
        {
          if (*(this + 18) == 1)
          {
            v10 = 1;
          }

          else
          {
            v10 = 2;
          }
        }
      }

      v12 = *(this + 4);
      v13 = RB::pixel_format_traits(v12, v7);
      if (HIDWORD(*(v13 + 4)))
      {
        v15 = HIDWORD(*(v13 + 4));
      }

      else
      {
        v15 = v12;
      }

      v14.n128_u64[0] = *(this + 7);
      RB::RenderFrame::alloc_texture(*(this + 6), v15, 1u, *(this + 42), v10, 1, buf, v14);
      v16 = *(this + 2);
      v17 = *buf;
      *(this + 2) = *buf;
      *buf = v16;
      if (v16)
      {
        v18 = v16[2] - 1;
        v16[2] = v18;
        if (!v18)
        {
          (*(*v16 + 8))(v16);
          v17 = *(this + 2);
        }
      }

      if (v17)
      {
        if ((*(this + 43) & 8) != 0)
        {
          *(*(this + 2) + 77) |= 8u;
        }

        return 1;
      }

      return 0;
    }
  }

  else
  {
    v6 = *(this + 42) != *(this + 41);
    *(this + 76) = v6;
    *(this + 77) = v6;
  }

  if ((*(*(this + 8) + 16))())
  {
    operator new();
  }

  v11 = RB::error_log(0);
  result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    *buf = 0;
    _os_log_impl(&dword_195CE8000, v11, OS_LOG_TYPE_DEFAULT, "RBDrawable: no surface, dropping frame", buf, 2u);
    return 0;
  }

  return result;
}

void RB::DisplayList::LayerTask::postprocess(int32x2_t *this, int32x2_t *a2, RB::Filter::RenderGroup *a3, void *a4)
{
  v7 = this[3];
  v18 = this[13];
  v19 = v7;
  v20 = v18;
  v21 = v7;
  v22 = 0;
  v8 = a4[182];
  v17[0] = v8;
  v17[1] = this;
  a4[182] = v17;
  v9 = a2[15].i32[1];
  a2[15].i32[1] = this[16].i32[0];
  v10 = this[13];
  v12 = this[3];
  v11 = this[4];
  a2[21] = v11;
  a2[22] = v12;
  v13 = this[21];
  if (v13)
  {
    v15 = COERCE_DOUBLE(vsub_s32(v11, v10));
    while (1)
    {
      *(a3 + 4) = v13;
      (*(*v13 + 104))(v13, a4, a2, a3, v15);
      *(a3 + 4) = 0;
      *v10.i32 = *a2[15].i32 + 1.0;
      a2[15].i32[0] = v10.i32[0];
      v16 = *(a3 + 2);
      if (v16)
      {
        if (*(*(a3 + 1) + 80 * v16 - 72) == v13)
        {
          break;
        }
      }

      v13 = v13[1];
      if (!v13)
      {
        v8 = v17[0];
        goto LABEL_7;
      }
    }

    this[21] = v13[1];
    this[11].i8[2] = 1;
    a4[182] = v17[0];
  }

  else
  {
LABEL_7:
    a2[15].i32[1] = v9;
    this[21] = 0;
    a4[182] = v8;
    if ((this[28].i8[0] & 4) != 0)
    {
      RB::RenderPass::resolve_srgb_alpha(a2, v10);
      this[28].i8[0] &= ~4u;
    }
  }
}

void RB::RenderQueue::encode(unsigned int *a1, uint64_t a2)
{
  v146[5] = *MEMORY[0x1E69E9840];
  RB::DirectRenderCommandEncoder::reset(v125, **(a2 + 40));
  v123 = *(a2 + 48);
  v124 = *(a2 + 56);
  LODWORD(v123) = v123 & 0xFFFFFFC0 | 0x26;
  v4 = *(a2 + 64);
  v112 = (a2 + 64);
  v144 = 0u;
  v145 = 0u;
  memset(v146, 0, 28);
  v142 = 0;
  v143 = 0;
  v141 = 0;
  v5 = off_1E744E000;
  if (!*a1)
  {
    v7 = 0;
    v100 = -1;
    goto LABEL_152;
  }

  LOBYTE(v110) = 0;
  v6 = 0;
  v7 = 0;
  v115 = 0;
  v114 = 0;
  v8 = 0;
  v9 = 0;
  v113 = -1;
  v106 = 1;
  v10 = vdup_n_s32(0xC0000001);
  v121 = 0;
  v11 = *(a2 + 130);
  v12 = "drawing op didn't return render pass encoder";
  v111 = a1;
  do
  {
    v120 = v6;
    v13 = *(*(a1 + 1) + 8 * v6);
    if (v11 && (*(*a2 + 340) & 4) != 0)
    {
      [**(a2 + 40) endEncoding];
      v14 = *(a2 + 40);

      *v14 = 0;
      [objc_msgSend(objc_msgSend(*(a2 + 24) "colorAttachments")];
      if ((v124 & 0x2000) != 0)
      {
        [objc_msgSend(objc_msgSend(*(a2 + 24) "colorAttachments")];
      }

      if (*(a2 + 128) == 1)
      {
        [objc_msgSend(*(a2 + 24) "stencilAttachment")];
      }

      if (*(a2 + 129) == 1)
      {
        [objc_msgSend(*(a2 + 24) "depthAttachment")];
      }

      v15 = [*(a2 + 16) renderCommandEncoderWithDescriptor:*(a2 + 24)];
      v16 = *(a2 + 40);
      v17 = *v16;
      if (*v16 != v15)
      {

        *v16 = v15;
        v17 = **(a2 + 40);
      }

      RB::DirectRenderCommandEncoder::reset(v125, v17);
      if (*(a2 + 32))
      {
        [**(a2 + 40) setLabel:?];
      }

      v9 = 0;
      v8 = 0;
      v114 = 0;
      v115 = 0;
      LODWORD(v123) = v123 & 0xFFFFFFC0 | 0x26;
      v4 = *(a2 + 64);
      v144 = 0u;
      v145 = 0u;
      memset(v146, 0, 28);
      v142 = 0;
      v143 = 0;
      v141 = 0;
      *(a2 + 130) = 0;
      v121 = 0;
      v106 = 1;
      v113 = -1;
    }

    v18 = *(v13 + 47);
    if ((v18 & 0x10) != 0)
    {
      v21 = ((v13 + 55) & 0xFFFFFFFFFFFFFFF8);
      v22 = *v21;
      v20 = v21 + 1;
      v19 = v22;
    }

    else
    {
      v19 = 0;
      v20 = (a2 + 64);
    }

    v23 = *v20;
    v24 = vceq_s32(v19, v121);
    if ((vpmin_u32(v24, v24).u32[0] & 0x80000000) == 0 || (v25 = vceq_s32(v23, v4), (vpmin_u32(v25, v25).u32[0] & 0x80000000) == 0))
    {
      *&v26 = v19.i32[0];
      *(&v26 + 1) = v19.i32[1];
      v27 = v26;
      v121 = v19;
      *&v26 = v23.i32[0];
      *(&v26 + 1) = v23.i32[1];
      __str = v27;
      v139 = v26;
      v126(v125[0], sel_setScissorRect_, &__str);
      v18 = *(v13 + 47);
      v4 = v23;
    }

    v28 = v18 & 0xF;
    v29 = *(v13 + 43);
    if (v28 != v8 || v29 != v9)
    {
      v30 = RB::Device::depth_stencil_state(*a2, v28, v29);
      v128(v125[0], sel_setDepthStencilState_, v30);
      v8 = *(v13 + 47) & 0xF;
      v9 = *(v13 + 43);
    }

    if (v9 && v113 != *(v13 + 44))
    {
      v129(v125[0], sel_setStencilReferenceValue_);
      v113 = *(v13 + 44);
    }

    if ((*v13 & 0x3F) != 0x26)
    {
      v108 = v9;
      v109 = v8;
      v107 = v7;
      v44 = *(v13 + 46);
      if (*(v13 + 46))
      {
        v45 = 0;
        v46 = v13 + 48;
        if ((*(v13 + 47) & 0x10) != 0)
        {
          v46 = ((v13 + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        v47 = (v46 + 4);
        v48 = &v144 + 1;
        do
        {
          v49 = *(v47 - 1);
          if (v49)
          {
            if (v49 == *(v48 - 1))
            {
              v50 = *v47;
              if (v50 != *v48)
              {
                v51 = RB::RenderQueue::encode(RB::RenderQueue::EncoderState &)::buffer_masks[v45];
                if (v51)
                {
                  v132(v125[0], sel_setVertexBufferOffset_atIndex_);
                  v50 = *v47;
                }

                if ((v51 & 2) != 0)
                {
                  v135(v125[0], sel_setFragmentBufferOffset_atIndex_, v50, v45);
                  LODWORD(v50) = *v47;
                }

                *v48 = v50;
              }
            }

            else
            {
              v52 = *(*(a2 + 96) + 8 * v49 + 24);
              v53 = RB::RenderQueue::encode(RB::RenderQueue::EncoderState &)::buffer_masks[v45];
              if (v53)
              {
                if (v52)
                {
                  v54 = *(v52 + 16);
                }

                else
                {
                  v54 = 0;
                }

                v131(v125[0], sel_setVertexBuffer_offset_atIndex_, v54, *v47, v45);
              }

              if ((v53 & 2) != 0)
              {
                if (v52)
                {
                  v55 = *(v52 + 16);
                }

                else
                {
                  v55 = 0;
                }

                v134(v125[0], sel_setFragmentBuffer_offset_atIndex_, v55, *v47, v45);
              }

              *(v48 - 1) = *(v47 - 1);
              v48[1] = v47[1];
            }
          }

          ++v45;
          v48 += 3;
          v47 += 3;
        }

        while (v44 != v45);
      }

      v119 = *v13;
      v56 = *(a2 + 56);
      v57 = *(v13 + 45);
      if (*(v13 + 45))
      {
        v58 = 0;
        v59 = v13 + 48;
        if ((*(v13 + 47) & 0x10) != 0)
        {
          v59 = ((v13 + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        v60 = (v59 + 12 * *(v13 + 46) + 4);
        v61 = &v141 + 4;
        while (1)
        {
          v62 = *(v60 - 1);
          if (!v62)
          {
            goto LABEL_84;
          }

          v63 = *(*(a2 + 80) + 8 * v62 + 24) & 0xFFFFFFFFFFFFFFFELL;
          if (!v63)
          {
            goto LABEL_84;
          }

          if (!v58)
          {
            break;
          }

          if (v58 == 1)
          {
            v64 = 17;
            v65 = 4294836223;
LABEL_76:
            v56 = (((*(v63 + 77) >> 3) & 1) << v64) | v56 & v65;
          }

          if (v62 != *(v61 - 1))
          {
            v136(v125[0], sel_setFragmentTexture_atIndex_, *(v63 + 16), v58);
            *(v61 - 1) = *(v60 - 1);
LABEL_81:
            v66 = *v60;
            if (v66 != *v61)
            {
              v67 = RB::Device::sampler_state(*a2, v66);
              if (v67)
              {
                v137(v125[0], sel_setFragmentSamplerState_atIndex_, v67, v58);
                *v61 = *v60;
              }
            }

            goto LABEL_84;
          }

          if (*v60 != *v61)
          {
            goto LABEL_81;
          }

LABEL_84:
          ++v58;
          v61 += 8;
          v60 += 8;
          if (v57 == v58)
          {
            goto LABEL_85;
          }
        }

        v64 = 16;
        v65 = 4294901759;
        goto LABEL_76;
      }

LABEL_85:
      v68 = v119;
      if (v123 == v119 && HIDWORD(v123) == HIDWORD(v119) && v124 == v56)
      {
        v7 = v107;
        v9 = v108;
        v8 = v109;
      }

      else
      {
        v123 = v119;
        v124 = v56;
        v71 = v105 & 0xFFFFFFFF00000000 | v56;
        v7 = v107;
        v72 = RB::Device::render_pipeline_state(*a2, v119, v56, (a2 + 112), *(a2 + 8), *(a2 + 12));
        v9 = v108;
        v8 = v109;
        v73 = v72;
        if (!v72)
        {
          break;
        }

        v110 = *(v72 + 53);
        if (v110 == 1)
        {
          v83 = v71;
          v84 = *(a2 + 8);
          v85 = *(*a2 + 256);
          v86 = RB::RenderState::custom_shader_signature(&v123);
          v87 = RB::Device::RenderPipelineEntry::function_table(v73, v84, v85, (a2 + 112), v86);
          RB::FormattedRenderState::uber_globals(&v123, &__str, v88);
          v130(v125[0], sel_setVertexBytes_length_atIndex_, &__str, 32, 5);
          v133(v125[0], sel_setFragmentBytes_length_atIndex_, &__str, 32, 5);
          if (*(*a2 + 335) == 1)
          {
            [v125[0] setFragmentVisibleFunctionTable:v87 atBufferIndex:7];
          }

          if (v106)
          {
            v89 = *(*(a2 + 96) + 32);
            if (v89)
            {
              v90 = 0;
              v91 = &v144;
              do
              {
                v92 = *v91;
                v91 += 3;
                if (!v92)
                {
                  if (v90 > 1 || (v131(v125[0], sel_setVertexBuffer_offset_atIndex_, *(v89 + 16), 0, v90), v90 != 1))
                  {
                    v134(v125[0], sel_setFragmentBuffer_offset_atIndex_, *(v89 + 16), 0, v90);
                  }
                }

                ++v90;
              }

              while (v90 != 4);
              if ((v115 & 1) == 0)
              {
                v134(v125[0], sel_setFragmentBuffer_offset_atIndex_, *(v89 + 16), 0, 4);
              }
            }
          }

          v93 = 0;
          v94 = 1;
          v95 = &v141 + 4;
          do
          {
            v96 = v94;
            if (!*v95)
            {
              v97 = RB::Device::sampler_state(*a2, 2);
              v137(v125[0], sel_setFragmentSamplerState_atIndex_, v97, v93);
              *v95 = 2;
            }

            v94 = 0;
            v95 = &v142 + 4;
            v93 = 1;
          }

          while ((v96 & 1) != 0);
          v71 = v83;
          v9 = v108;
          v8 = v109;
          if ((*v13 & 0x3F) == 0x20 && ((*v13 >> 6) & 7u) - 3 <= 1)
          {
            v98 = v13 + 48;
            if ((*(v13 + 47) & 0x10) != 0)
            {
              v98 = ((v13 + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            v136(v125[0], sel_setFragmentTexture_atIndex_, *((*(*(a2 + 80) + 8 * *(v98 + 12 * *(v13 + 46)) + 24) & 0xFFFFFFFFFFFFFFFELL) + 16), 1);
            v136(v125[0], sel_setFragmentTexture_atIndex_, 0, 0);
            LODWORD(v141) = 0;
            LODWORD(v142) = 0;
          }

          v106 = 0;
        }

        *(v73 + 11) = *(a2 + 12);
        v127(v125[0], sel_setRenderPipelineState_, *(v73 + 3));
        v105 = v71;
        v68 = v119;
      }

      v12 = "drawing op didn't return render pass encoder";
      if (v110)
      {
        if (LODWORD(v146[2]) == v144)
        {
          v82 = DWORD1(v144);
          if (HIDWORD(v146[2]) != DWORD1(v144))
          {
            v135(v125[0], sel_setFragmentBufferOffset_atIndex_, DWORD1(v144), 6);
            HIDWORD(v146[2]) = v82;
          }
        }

        else
        {
          v134(v125[0], sel_setFragmentBuffer_offset_atIndex_, *(*(*(a2 + 96) + 8 * v144 + 24) + 16), DWORD1(v144), 6);
          v146[2] = v144;
          LODWORD(v146[3]) = DWORD2(v144);
        }
      }

      if ((v114 & 1) == 0)
      {
        if (!RB::RenderState::reads_noise(v13))
        {
          v114 = 0;
LABEL_107:
          if ((v115 & 1) == 0)
          {
            if (!RB::RenderState::reads_tables(v13, *(a2 + 72) < 0x10u))
            {
              v115 = 0;
              goto LABEL_112;
            }

            v78 = RB::Device::tables_buffer(*a2);
            v134(v125[0], sel_setFragmentBuffer_offset_atIndex_, v78[2], 0, 4);
          }

          v115 = 1;
LABEL_112:
          if (*(*a2 + 340))
          {
            v79 = "";
            if (v110)
            {
              v79 = "U";
            }

            snprintf(&__str, 0x100uLL, "Draw %s%x.%x P%d,%ux%u@%u S%d,%u D%d", v79, v68, HIDWORD(v119), *(v13 + 42), *(v13 + 32), *(v13 + 28), *(v13 + 24), *(v13 + 43), *(v13 + 44), *(v13 + 47) & 0xF);
            v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:&__str encoding:1];
            [**(a2 + 40) insertDebugSignpost:v80];
          }

          v81 = *(v13 + 36);
          if (v81)
          {
            (v125[2])(v125[0], sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_, *(v13 + 42), *(v13 + 28), 0, *(*(*(a2 + 96) + 8 * v81 + 24) + 16), *(v13 + 24), *(v13 + 32));
          }

          else
          {
            (v125[1])(v125[0], sel_drawPrimitives_vertexStart_vertexCount_instanceCount_, *(v13 + 42), *(v13 + 24), *(v13 + 28), *(v13 + 32));
          }

          goto LABEL_119;
        }

        v77 = RB::Device::noise_texture(*a2);
        v136(v125[0], sel_setFragmentTexture_atIndex_, v77, 3);
      }

      v114 = 1;
      goto LABEL_107;
    }

    v31 = v13 + 48;
    if ((*(v13 + 47) & 0x10) != 0)
    {
      v31 = ((v13 + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    v32 = v31 + 12 * *(v13 + 46) + 8 * *(v13 + 45);
    v33 = *v32;
    v117 = *(v32 + 32);
    v118 = *(v32 + 16);
    v116 = *(v32 + 48);
    v34 = *(v32 + 64);
    v35 = *(v32 + 68);
    v36 = (*v13 >> 15) & 2;
    if (*(a2 + 72) >= 0x10u)
    {
      v37 = v36;
    }

    else
    {
      v37 = v36 + 1;
    }

    if ((*(a2 + 56) & 0x1000) != 0)
    {
      v38 = 16777619 * ((16777619 * ((16777619 * (*(a2 + 56) & 0x3FF ^ 0x811C9DC5)) ^ (*(a2 + 56) >> 10) & 3)) ^ 0x41);
    }

    else
    {
      v38 = 16777619 * ((16777619 * (*(a2 + 56) & 0x3FF ^ 0x811C9DC5)) ^ (*(a2 + 56) >> 10) & 3);
    }

    if (!v7)
    {
      v7 = objc_opt_new();
    }

    [v7 setFlags:v37];
    [v7 setBlendMode:rb_blend_mode(*(v13 + 4) & 0x3F)];
    LODWORD(v39) = v34;
    [v7 setAlpha:v39];
    [v7 setCommandBuffer:*(a2 + 16)];
    [v7 setDescriptor:*(a2 + 24)];
    [v7 setFormatKey:v38];
    [v7 setEncoder:**(a2 + 40)];
    [v7 setSize:{v112->i32[0], HIDWORD(*v112)}];
    *&v40 = v121.u32[0];
    *(&v40 + 1) = v121.u32[1];
    v41 = v40;
    *&v40 = v4.u32[0];
    *(&v40 + 1) = v4.u32[1];
    __str = v41;
    v139 = v40;
    [v7 setBounds:&__str];
    __str = v118;
    v139 = v117;
    v140 = v116;
    [v7 setCTM:&__str];
    v42 = objc_autoreleasePoolPush();
    (*(v33 + 16))(v33, v7);
    if ((v35 & 8) != 0)
    {
      if (![v7 encoder])
      {
        goto LABEL_156;
      }

      v74 = [v7 encoder];
      v75 = *(a2 + 40);
      v76 = *v75;
      if (*v75 != v74)
      {

        *v75 = v74;
        v76 = **(a2 + 40);
      }

      RB::DirectRenderCommandEncoder::reset(v125, v76);
    }

    else if ([v7 encoder] != **(a2 + 40))
    {
      v12 = "drawing op changed render pass encoder";
LABEL_156:
      RB::precondition_failure(v12, v43);
    }

    objc_autoreleasePoolPop(v42);
    v114 = 0;
    v115 = 0;
    v144 = 0u;
    v145 = 0u;
    memset(v146, 0, 28);
    v142 = 0;
    v143 = 0;
    v141 = 0;
    LODWORD(v123) = v123 & 0xFFFFFFC0 | 0x26;
    v106 = 1;
    v4 = 0x8000000080000000;
    v8 = 3;
    v113 = -1;
    v9 = 8;
    v121 = v10;
LABEL_119:
    v11 = (*(a2 + 130) | *(v13 + 41));
    *(a2 + 130) |= *(v13 + 41);
    v6 = v120 + 1;
    a1 = v111;
  }

  while (v120 + 1 < *v111);
  v5 = off_1E744E000;
  if (v8 | v9)
  {
    v99 = RB::Device::depth_stencil_state(*a2, 0, 0);
    v128(v125[0], sel_setDepthStencilState_, v99);
  }

  v100 = vceqz_s32(v121);
  if (v113 != -1)
  {
    v122 = v100;
    (v129)(v125[0], sel_setStencilReferenceValue_, 0xFFFFFFFFLL);
    v100 = v122;
  }

LABEL_152:
  v101 = *v112;
  if ((vpmin_u32(v100, v100).u32[0] & 0x80000000) == 0 || (v102 = vceq_s32(v4, v101), (vpmin_u32(v102, v102).u32[0] & 0x80000000) == 0))
  {
    v103 = v5[164];
    __str = 0uLL;
    *&v104 = v101.u32[0];
    *(&v104 + 1) = v101.u32[1];
    v139 = v104;
    v126(v125[0], v103, &__str);
  }
}

uint64_t RB::Device::ensure_native_texture(uint64_t result, uint64_t *a2, _DWORD *a3, void *a4)
{
  v4 = *a2;
  if (*a2 <= 2147483660)
  {
    if (v4 > 2147483650)
    {
      if ((v4 - 2147483652) < 3)
      {
LABEL_15:
        v6 = 23;
        goto LABEL_31;
      }

      if (v4 == 2147483651)
      {
        v7 = 25;
        goto LABEL_23;
      }
    }

    else
    {
      if (v4 <= 0x2B && ((1 << v4) & 0xD0000000000) != 0)
      {
        if (*(result + 332))
        {
          goto LABEL_32;
        }

        goto LABEL_15;
      }

      if ((v4 - 2147483649) < 2)
      {
        v7 = 10;
LABEL_23:
        *a2 = v7;
        *a3 = 3 * *a3;
LABEL_32:
        *a4 |= 2uLL;
        return result;
      }
    }

LABEL_27:
    if ((v4 & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (v4 > 2147483663)
  {
    if ((v4 - 2147483664) < 2)
    {
      v6 = 30;
      goto LABEL_31;
    }

    if (v4 == 2147483666)
    {
      v6 = 25;
      goto LABEL_31;
    }

    if (v4 == 2147483667)
    {
      v6 = 65;
LABEL_31:
      *a2 = v6;
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  if ((v4 - 2147483662) < 2)
  {
    v6 = 10;
    goto LABEL_31;
  }

  if (v4 != 2147483661)
  {
    goto LABEL_27;
  }

  if (!*(result + 331))
  {
    v6 = 110;
    goto LABEL_31;
  }

LABEL_28:
  *a2 = 115;
  return result;
}

void RB::Device::alloc_shared_texture(void *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned __int8 a4@<W3>, int a5@<W4>, int a6@<W5>, int32x2_t **a7@<X8>, __n128 a8@<Q0>)
{
  v40 = *MEMORY[0x1E69E9840];
  *a7 = 0;
  if (a2)
  {
    if (a6)
    {
      v15 = -1;
    }

    else
    {
      v15 = 0;
    }

    v16 = a1 + 51;
    v17 = a1[52];
    v31 = a8;
    if (v17 != a1 + 51)
    {
      v18 = vbsl_s8(vdup_n_s32(v15), a8.n128_u64[0], (*&vadd_s32(a8.n128_u64[0], 0x3F0000003FLL) & 0xFFFFFFC0FFFFFFC0));
      while (1)
      {
        while (1)
        {
          v19 = v17[2];
          if (*&v19[7] == a2)
          {
            v20 = vand_s8(vcge_s32(v19[8], a8.n128_u64[0]), vcge_s32(v18, v19[8]));
            if ((vpmin_u32(v20, v20).u32[0] & 0x80000000) != 0 && v19[9].u8[4] == a3 && v19[9].u8[6] == a5)
            {
              break;
            }
          }

          v17 = v17[1];
          if (v17 == v16)
          {
            goto LABEL_19;
          }
        }

        ++v19[1].i32[0];
        v22 = *v17;
        v21 = v17[1];
        *(v22 + 8) = v21;
        *v21 = v22;
        --a1[53];
        std::__list_imp<RB::refcounted_ptr<RB::Texture>>::__delete_node[abi:nn200100](v16, v17);
        a1[58] -= v19[9].u32[0];
        v23 = v19;
        if ((v19[9].i8[5] & 2) != 0)
        {
          v23 = v19[3];
        }

        if (RB::Resource::set_volatile(v23, 0) != 2)
        {
          break;
        }

        v24 = v19[1].i32[0] - 1;
        v19[1].i32[0] = v24;
        if (!v24)
        {
          (*(*v19 + 8))(v19);
        }

        v17 = a1[52];
        a8 = v31;
        if (v17 == v16)
        {
          goto LABEL_19;
        }
      }

      *a7 = v19;
      v19[9].i8[5] = 0;
      v19[10].i16[0] = a4 | 0x100;
      goto LABEL_28;
    }

LABEL_19:
    *a7 = 0;
    v25 = *&vadd_s32(a8.n128_u64[0], 0x1F0000001FLL) & 0xFFFFFFE0FFFFFFE0;
    if (a6)
    {
      v26 = -1;
    }

    else
    {
      v26 = 0;
    }

    a8.n128_u64[0] = vbsl_s8(vdup_n_s32(v26), a8.n128_u64[0], v25);
    RB::Texture::alloc(a1, a2, a3, a5, 0, buf, a8);
    v19 = *buf;
    *a7 = *buf;
    if (v19)
    {
      v28 = v19[2];
      if (v19[9].i32[0])
      {
        RB::Resource::set_label(v28, "shared-texture", &_ZZN2RB6Device20alloc_shared_textureE14MTLPixelFormatDv2_ijNS_10ColorSpaceENS_7Texture5UsageEbE7counter);
      }

      else
      {
        [v28 setLabel:@"rb:memoryless-texture"];
      }

LABEL_28:
      v19[6] = a1;
      return;
    }

    v29 = RB::error_log(v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v30) = 67110144;
      HIDWORD(v30) = v31.n128_u32[0];
      *buf = v30;
      v33 = 1024;
      *(buf | 0xA) = v31.n128_u32[1];
      v34 = 1024;
      v35 = a3;
      v36 = 1024;
      v37 = a2;
      v38 = 1024;
      v39 = a5;
      _os_log_fault_impl(&dword_195CE8000, v29, OS_LOG_TYPE_FAULT, "unable to create texture: [%d, %d, %u], %d, %d", buf, 0x20u);
    }
  }
}

uint64_t RB::TextureCache::prepare(int32x2_t *a1, uint64_t a2, CGImage *a3, unsigned __int8 *a4)
{
  v6 = a2;
  v151 = *MEMORY[0x1E69E9840];
  if (RB::TextureCache::prepare_from_cache(a1, a2, a4))
  {
    return 1;
  }

  Width = CGImageGetWidth(a3);
  v128 = __PAIR64__(CGImageGetHeight(a3), Width);
  space = CGImageGetColorSpace(a3);
  BitmapInfo = CGImageGetBitmapInfo(a3);
  v11.n128_u64[0] = vceq_s32(v128, a1[3]);
  if ((vpmin_u32(v11.n128_u64[0], v11.n128_u64[0]).u32[0] & 0x80000000) != 0)
  {
    v24 = BitmapInfo;
    Property = CGImageGetProperty();
    if (Property)
    {
      v26 = Property;
      v27 = CFGetTypeID(Property);
      if (v27 == IOSurfaceGetTypeID())
      {
        if (RB::verbose_mode(0x80))
        {
          RB::TextureCache::prepare(a1);
        }

        if (RB::TextureCache::prepare_from_iosurface(a1, v6, v26, a4, space, v24 | 0x100000000))
        {
          return 1;
        }
      }
    }

    if (CGImageGetImageProvider())
    {
      if ((a4[3] & 0x20) == 0 || !(a4[2] | a4[3] & 2) || (v28 = CGImageGetProperty()) != 0 && CFBooleanGetValue(v28))
      {
        v29 = CGImageProviderCopyImageTextureData();
        if (v29 && (RB::TextureCache::prepare_from_texture_data(a1, v6, v29, a4, space, v24 | 0x100000000) & 1) != 0)
        {
          goto LABEL_25;
        }

        v30 = a1[5];
        if (v30)
        {
          goto LABEL_23;
        }

        v42 = CGImageProviderCopyIOSurface();
        v43 = a1[5];
        if (v43)
        {
          CFRelease(v43);
        }

        a1[5] = v42;
        if (v42)
        {
          v44 = RB::verbose_mode(0x80);
          if (v44)
          {
            v120 = RB::misc_log(v44);
            RB::TextureCache::prepare(v120);
          }

          v30 = a1[5];
          if (v30)
          {
LABEL_23:
            if (RB::TextureCache::prepare_from_iosurface(a1, v6, v30, a4, space, v24 | 0x100000000))
            {
              if (!v29)
              {
                return 1;
              }

LABEL_25:
              CFRelease(v29);
              return 1;
            }
          }
        }

        if (v29)
        {
          CFRelease(v29);
        }
      }
    }
  }

  v12 = a1[3];
  v13 = a4[2];
  v14 = *a4;
  v15 = *a4 >> 8;
  v16 = HIBYTE(*a4);
  v122 = a1[4].i32[0];
  v125 = *a4;
  v126 = v16;
  if (v122)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v135 = 17;
    v130 = 1;
    if ((v14 >> 8))
    {
      LOBYTE(v15) = 0;
    }

    v124 = v15;
    goto LABEL_90;
  }

  v124 = BYTE1(*a4);
  v17 = v6;
  v18 = CGColorSpaceUsesExtendedRange(space);
  if (v18)
  {
    v19 = 1;
    IsWideGamutRGB = 1;
  }

  else
  {
    v19 = CGImageGetBitsPerComponent(a3) > 8;
    IsWideGamutRGB = CGColorSpaceIsWideGamutRGB(space);
  }

  HasAlpha = CGImageHasAlpha();
  if (*a4 < 0x10u)
  {
    v33 = a4[1];
  }

  else
  {
    v33 = 0;
  }

  v34 = RB::color_space_from_cg(space, v31);
  if (IsWideGamutRGB)
  {
    v36 = 2;
  }

  else
  {
    v36 = 1;
  }

  if ((v34 & 0x100) != 0)
  {
    v36 = v34;
  }

  if ((v36 & 0xF) == 0 && *(*v17 + 334) == 1)
  {
    if (v19 || IsWideGamutRGB || v33 && (a4[3] & 8) != 0)
    {
      v37 = 60;
      if (v18)
      {
        v37 = 65;
      }

      v38 = 20;
      if (v18)
      {
        v38 = 25;
      }

      if (!HasAlpha)
      {
        v37 = v38;
      }

      v130 = v37;
      if (v33)
      {
        v39 = 0;
      }

      else
      {
        v39 = 16;
      }
    }

    else
    {
      v45 = 10;
      if (HasAlpha)
      {
        v45 = 30;
      }

      v130 = v45;
      v39 = 16;
    }

    v6 = v17;
    v135 = v39;
    if (HasAlpha)
    {
      v23 = 4;
    }

    else
    {
      v23 = 3;
    }

    goto LABEL_82;
  }

  v40 = 80;
  if (v33)
  {
    v40 = 81;
  }

  if ((v33 & HasAlpha) == 1)
  {
    v6 = v17;
    if ((a4[3] & 8) != 0)
    {
      v41 = 81;
    }

    else
    {
      v41 = 80;
      if (a4[3])
      {
        v41 = 81;
      }
    }

    v130 = v41;
    if (IsWideGamutRGB)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v130 = v40;
    v6 = v17;
    if (IsWideGamutRGB)
    {
LABEL_59:
      if ((v18 | v19 | ((a4[3] & 8) >> 3)))
      {
        goto LABEL_60;
      }

      v23 = 0;
      v39 = 18;
      goto LABEL_65;
    }
  }

  if (v19)
  {
LABEL_60:
    v23 = 0;
    if (a4[1])
    {
      v39 = *a4;
    }

    else
    {
      v39 = 1;
    }

    v135 = v39;
    v130 = 115;
    goto LABEL_82;
  }

  v23 = 0;
  v39 = 17;
LABEL_65:
  v135 = v39;
LABEL_82:
  LOBYTE(v16) = a4[3];
  if ((v16 & 8) != 0 && a4[1] == 1)
  {
    v72 = (v39 & 0xF) == 0;
    v39 = *a4;
    v135 = *a4;
    if (v72)
    {
      v39 &= 0xF0u;
      v135 = v39;
    }
  }

  if ((RB::pixel_format_traits(v130, v35)[1] & 0x10) != 0)
  {
    v46 = v39 & 0xF | 0x10;
    v39 &= 0xFu;
    v135 = v46;
  }

  v21 = v39 | ((v39 & 0xF) == 0);
  v22 = 1;
LABEL_90:
  v11.n128_u64[0] = vmax_s32(vshl_s32(v12, vneg_s32(vdup_n_s32(v13))), 0x100000001);
  memset(data, 0, 32);
  v127 = *v6;
  v133 = 0;
  v131 = v11;
  if ((v16 & 2) != 0)
  {
    v47 = RB::max_mipmap_levels(v11.n128_u64[0]);
  }

  else
  {
    v47 = 1;
  }

  v123 = v21 | (v22 << 8);
  *&v49 = RB::TextureCache::take_available(a1, v130, v47, v123, 0, v23, (v16 & 2) == 0, &v132, v131).n128_u64[0];
  if ((v16 & 2) != 0)
  {
    goto LABEL_127;
  }

  v50 = [*(v127 + 24) minimumLinearTextureAlignmentForPixelFormat:v130, v49];
  v8 = 0;
  v52 = *(RB::pixel_format_traits(v130, v51) + 5);
  v53 = v131.n128_i32[0] < 0;
  if (v131.n128_i32[0] >= 0)
  {
    v54 = v131.n128_u32[0];
  }

  else
  {
    v54 = -v131.n128_u32[0];
  }

  v55 = v52 * v54;
  if (!v55)
  {
    v53 = 0;
  }

  if ((v55 & 0xFFFFFFFF00000000) != 0 || v53)
  {
    goto LABEL_192;
  }

  v8 = 0;
  if (v131.n128_i32[0] >= 0)
  {
    v56 = v55;
  }

  else
  {
    v56 = -v55;
  }

  v57 = ((v50 + v56 - 1) & -v50);
  v58 = v131.n128_u32[1];
  if (v131.n128_i32[1] < 0)
  {
    v58 = -v131.n128_u32[1];
  }

  v59 = v58 * v57;
  v60 = v131.n128_i32[1] >= 0 ? v59 : -v59;
  v61 = (v59 & 0xFFFFFFFF00000000) != 0;
  v62 = v59 && v131.n128_i32[1] < 0;
  if (v61 || v62)
  {
    goto LABEL_192;
  }

  v63 = v132;
  if (v132 && (*(v132 + 77) & 2) != 0)
  {
    RB::refcounted_ptr<RB::Buffer>::operator=(&v133, *(v132 + 3));
  }

  else
  {
    v64 = [*(v127 + 24) newBufferWithLength:v60 options:0];
    if (v64)
    {
      v65 = RB::verbose_mode(0x100);
      if (v65)
      {
        v66 = RB::misc_log(v65);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = (v60 + 512) >> 10;
          _os_log_impl(&dword_195CE8000, v66, OS_LOG_TYPE_INFO, "allocated %d KB image buffer", buf, 8u);
        }
      }

      RB::Resource::set_label(v64, "cgimage-buffer", &RB::TextureCache::prepare(RB::RenderFrame &,CGImage *,RB::TextureCache::Params const&)::counter);
      operator new();
    }

    v132 = 0;
    if (v63)
    {
      v67 = *(v63 + 2) - 1;
      *(v63 + 2) = v67;
      if (!v67)
      {
        (*(*v63 + 8))(v63);
      }
    }
  }

  if (!v133)
  {
LABEL_127:
    v69 = 0;
  }

  else
  {
    data[0] = v133[7];
    data[3] = v57;
    v68.i64[0] = v131.n128_i32[0];
    v68.i64[1] = v131.n128_i32[1];
    *&data[1] = vextq_s8(v68, v68, 8uLL);
    v69 = 512;
  }

  if ((a1[4].i8[0] & 1) == 0)
  {
    memset(buf, 0, sizeof(buf));
    v70 = (RB::pixel_format_traits(v130, v48)[1] & 0xA) != 0;
    *&buf[8] = RB::ColorSpace::cg_color_space(&v135, v70);
    *&buf[32] = 0;
    if (v130 <= 29)
    {
      if ((v130 - 10) < 2)
      {
        *buf = 0x800000008;
        *&buf[16] = 0;
        goto LABEL_155;
      }

      if (v130 == 20 || v130 == 25)
      {
        *buf = 0x1000000010;
        if (v130 == 25)
        {
          v76 = 4352;
        }

        else
        {
          v76 = 4096;
        }

        goto LABEL_154;
      }
    }

    else
    {
      v71 = v130 - 60;
      if ((v130 - 60) <= 0x37)
      {
        if (((1 << v71) & 0x21) != 0)
        {
          *buf = 0x2000000010;
          v72 = v130 == 65;
LABEL_147:
          if (v72)
          {
            v82 = 4353;
          }

          else
          {
            v82 = 4097;
          }

          goto LABEL_151;
        }

        if (((1 << v71) & 0x300000) != 0)
        {
          *buf = 0x2000000008;
          v82 = 8194;
LABEL_151:
          *&buf[16] = v82;
          goto LABEL_155;
        }

        if (((1 << v71) & 0x84000000000000) != 0)
        {
          *buf = 0x4000000010;
          v72 = v130 == 115;
          goto LABEL_147;
        }
      }

      if (v130 == 30)
      {
        *buf = 0x1000000008;
        v76 = 1;
LABEL_154:
        *&buf[16] = v76;
LABEL_155:
        v83 = vceq_s32(v131.n128_u64[0], v128);
        if ((vpmin_u32(v83, v83).u32[0] & 0x80000000) != 0)
        {
          Type = CGColorSpaceGetType();
          if (Type <= 6 && ((1 << Type) & 0x5B) != 0 && !MEMORY[0x19A8C13F0](data, buf, 0, a3, v69))
          {
            v86 = 0;
            goto LABEL_161;
          }
        }

        v85 = CGBitmapContextCreate(data[0], v131.n128_i32[0], v131.n128_i32[1], *buf, data[3], *&buf[8], *&buf[16]);
        v86 = v85;
        if (v85)
        {
          CGContextSetBlendMode(v85, kCGBlendModeCopy);
          CGContextSetRGBFillColor(v86, 1.0, 1.0, 1.0, 1.0);
          v154.size.width = v131.n128_i32[0];
          v154.size.height = v131.n128_i32[1];
          v154.origin.x = 0.0;
          v154.origin.y = 0.0;
          CGContextDrawImage(v86, v154, a3);
LABEL_161:
          v75 = v86;
          goto LABEL_162;
        }

        v96 = RB::error_log(0);
        if (!os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
        {
LABEL_183:
          v8 = 0;
          goto LABEL_192;
        }

        *v141 = 67110144;
        v142 = v131.n128_u32[0];
        v143 = 1024;
        v144 = v131.n128_u32[1];
        v145 = 1024;
        v146 = *buf;
        v147 = 2048;
        v148 = data[3];
        v149 = 1024;
        v150 = *&buf[16];
        v78 = "CGContext creation failed: %d x %d, %d bpp, %lu, 0x%u";
        v79 = v141;
        v80 = v96;
        v81 = 36;
LABEL_200:
        _os_log_fault_impl(&dword_195CE8000, v80, OS_LOG_TYPE_FAULT, v78, v79, v81);
        goto LABEL_183;
      }
    }

    abort();
  }

  v73 = CGBitmapContextCreate(data[0], v131.n128_i32[0], v131.n128_i32[1], 8uLL, data[3], 0, 7u);
  v74 = v73;
  if (!v73)
  {
    v77 = RB::error_log(0);
    if (!os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_183;
    }

    *buf = 67109632;
    *&buf[4] = v131.n128_u32[0];
    *&buf[8] = 1024;
    *&buf[10] = v131.n128_u32[1];
    *&buf[14] = 2048;
    *&buf[16] = data[3];
    v78 = "CGContext creation failed: %d x %d, %lu";
    v79 = buf;
    v80 = v77;
    v81 = 24;
    goto LABEL_200;
  }

  CGContextSetBlendMode(v73, kCGBlendModeCopy);
  CGContextSetRGBFillColor(v74, 1.0, 1.0, 1.0, 1.0);
  v152.origin.x = 0.0;
  v152.origin.y = 0.0;
  v152.size.width = v131.n128_i32[0];
  v152.size.height = v131.n128_i32[1];
  CGContextClipToMask(v74, v152, a3);
  v153.origin.x = 0.0;
  v153.origin.y = 0.0;
  v75 = v74;
  v153.size.width = v131.n128_i32[0];
  v153.size.height = v131.n128_i32[1];
  CGContextFillRect(v74, v153);
LABEL_162:
  v87 = RB::verbose_mode(0x80);
  if (v87)
  {
    v108 = RB::misc_log(v87);
    if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
    {
      v110 = v23;
      v111 = v6;
      v112 = a4[2];
      *v141 = v123;
      if (v122)
      {
        v113 = "deviceRGB";
      }

      else
      {
        v113 = RB::ColorSpace::name(v141);
      }

      v114 = RB::pixel_format_name(v130, v109);
      *buf = 134219266;
      *&buf[4] = a1;
      *&buf[12] = 1024;
      *&buf[14] = v112;
      *&buf[18] = 1024;
      *&buf[20] = v131.n128_u32[0];
      *&buf[24] = 1024;
      *&buf[26] = v131.n128_u32[1];
      *&buf[30] = 2080;
      *&buf[32] = v113;
      v137 = 2080;
      v138 = v114;
      _os_log_impl(&dword_195CE8000, v108, OS_LOG_TYPE_INFO, "%p: rendered level %d [%d, %d] %s %s\n", buf, 0x32u);
      v6 = v111;
      v23 = v110;
    }
  }

  if (!v133 && v75)
  {
    data[0] = CGBitmapContextGetData(v75);
    data[3] = CGBitmapContextGetBytesPerRow(v75);
    v88.i64[0] = v131.n128_i32[0];
    v88.i64[1] = v131.n128_i32[1];
    *&data[1] = vextq_s8(v88, v88, 8uLL);
  }

  if (!data[0])
  {
LABEL_190:
    v8 = 0;
    if (!v75)
    {
      goto LABEL_192;
    }

    goto LABEL_191;
  }

  v89 = v132;
  if (v132)
  {
    goto LABEL_171;
  }

  if (v133)
  {
    RB::Texture::alloc(v127, v133, v130, data[3], 0, v23, buf, v131);
    v89 = *buf;
    v132 = *buf;
    v126 &= ~2u;
    if (*buf)
    {
      goto LABEL_170;
    }

    goto LABEL_189;
  }

  if ((a4[3] & 2) != 0)
  {
    v97 = 0x7FFFFFFF;
  }

  else
  {
    v97 = 1;
  }

  RB::Texture::alloc(v127, v130, v97, 0, v23, buf, v131);
  v89 = *buf;
  v132 = *buf;
  if (!*buf)
  {
LABEL_189:
    v98 = RB::error_log(v90);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_FAULT))
    {
      v105 = RB::pixel_format_name(v130, v99);
      v106 = a4[3];
      *buf = 136315906;
      if ((v106 & 2) != 0)
      {
        v107 = " mipmapped";
      }

      else
      {
        v107 = "";
      }

      *&buf[4] = v105;
      *&buf[12] = 1024;
      *&buf[14] = v131.n128_u32[0];
      *&buf[18] = 1024;
      *&buf[20] = v131.n128_u32[1];
      *&buf[24] = 2080;
      *&buf[26] = v107;
      _os_log_fault_impl(&dword_195CE8000, v98, OS_LOG_TYPE_FAULT, "unable to create image texture: %s, [%d, %d]%s", buf, 0x22u);
    }

    goto LABEL_190;
  }

LABEL_170:
  RB::Resource::set_label(v89[2], "cgimage-texture", &RB::TextureCache::prepare(RB::RenderFrame &,CGImage *,RB::TextureCache::Params const&)::counter);
  v91 = RB::verbose_mode(0x80);
  if (v91)
  {
    v115 = v6;
    v116 = RB::misc_log(v91);
    if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
    {
      v118 = a4[2];
      *v141 = v123;
      if (v122)
      {
        v119 = "deviceRGB";
      }

      else
      {
        v119 = RB::ColorSpace::name(v141);
      }

      v121 = RB::pixel_format_name(v130, v117);
      *buf = 134219522;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = v89;
      *&buf[22] = 1024;
      *&buf[24] = v131.n128_u32[0];
      *&buf[28] = 1024;
      *&buf[30] = v131.n128_u32[1];
      *&buf[34] = 1024;
      *&buf[36] = v118;
      v137 = 2080;
      v138 = v119;
      v139 = 2080;
      v140 = v121;
      _os_log_impl(&dword_195CE8000, v116, OS_LOG_TYPE_INFO, "%p: created image texture %p [%d, %d] @%d %s %s\n", buf, 0x3Cu);
    }

    v6 = v115;
  }

LABEL_171:
  if (!v133)
  {
    RB::Texture::replace(v89, 0, data[0], data[3]);
    if (!v75)
    {
      free(data[0]);
    }
  }

  v92 = v132;
  if (*(v132 + 76) >= 2u)
  {
    RB::RenderFrame::invalidate_mipmaps(v6, v132);
  }

  v93 = a1[9].u32[0];
  if (a1[9].i32[1] < v93 + 1)
  {
    RB::vector<std::pair<RB::cf_ptr<CGContext *>,RB::ContextDelegate *>,1ul,unsigned int>::reserve_slow(&a1[6], v93 + 1);
    v93 = a1[9].u32[0];
  }

  v94 = a1[8];
  if (!v94)
  {
    v94 = a1 + 6;
  }

  v95 = &v94[2 * v93];
  v95->i32[0] = v125 & 0xFF0000 | (v126 << 24) | (v124 << 8) | v125;
  v95[1] = v92;
  v132 = 0;
  ++a1[9].i32[0];
  v8 = RB::TextureCache::prepare_from_cache(a1, v6, a4);
  if (!v75)
  {
    goto LABEL_192;
  }

LABEL_191:
  CFRelease(v75);
LABEL_192:
  v100 = v132;
  if (v132)
  {
    v101 = *(v132 + 2) - 1;
    *(v132 + 2) = v101;
    if (!v101)
    {
      (*(*v100 + 8))(v100);
    }
  }

  v102 = v133;
  if (v133)
  {
    v103 = *(v133 + 2) - 1;
    *(v133 + 2) = v103;
    if (!v103)
    {
      (*(*v102 + 1))(v102);
    }
  }

  return v8;
}