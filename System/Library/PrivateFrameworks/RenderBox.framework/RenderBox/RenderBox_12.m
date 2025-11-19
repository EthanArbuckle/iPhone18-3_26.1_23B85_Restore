RB::XML::DisplayList *RBDrawingStateAddSaturationFilter(__n128 *this, _RBDrawingState *a2, float a3)
{
  v6 = this->n128_u64[1];
  if (!v6[3])
  {
    make_contents(this->n128_i64[1]);
  }

  v8 = a3;
  RB::DisplayList::State::add_color_style<RB::ColorStyle::Saturation>(this, (v6 + 2), &v8, a2);
  result = v6[40];
  if (result)
  {
    RB::XML::DisplayList::add_saturation_filter(result, this, a2, a3);
  }

  return result;
}

double RB::DisplayList::State::add_color_style<RB::ColorStyle::Saturation>(__n128 *this, RB::DisplayList::Builder *a2, float *a3, int a4)
{
  if (*(a2 + 288) != 1 || !RB::ColorStyle::HueRotation::test(a3, 0))
  {
    v9 = *(a2 + 1);
    v10 = (v9[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v10 + 64 > v9[5])
    {
      v10 = RB::Heap::alloc_slow(v9 + 2, 0x40uLL, 7);
    }

    else
    {
      v9[4] = v10 + 64;
    }

    *(v10 + 48) = 0;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *v10 = &unk_1F0A39C10;
    *(v10 + 56) = *a3;
    *(v10 + 60) = a4;

    *&result = RB::DisplayList::State::add_style(this, a2, v10).n128_u64[0];
  }

  return result;
}

RB::XML::DisplayList *RBDrawingStateAddBrightnessFilter(__n128 *this, _RBDrawingState *a2, float a3)
{
  v6 = this->n128_u64[1];
  if (!v6[3])
  {
    make_contents(this->n128_i64[1]);
  }

  v8 = a3;
  RB::DisplayList::State::add_color_style<RB::ColorStyle::Brightness>(this, (v6 + 2), &v8, a2);
  result = v6[40];
  if (result)
  {
    RB::XML::DisplayList::add_brightness_filter(result, this, a2, a3);
  }

  return result;
}

double RB::DisplayList::State::add_color_style<RB::ColorStyle::Brightness>(__n128 *this, RB::DisplayList::Builder *a2, float *a3, int a4)
{
  if (*(a2 + 288) != 1 || !RB::ColorStyle::HueRotation::test(a3, 0))
  {
    v9 = *(a2 + 1);
    v10 = (v9[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v10 + 64 > v9[5])
    {
      v10 = RB::Heap::alloc_slow(v9 + 2, 0x40uLL, 7);
    }

    else
    {
      v9[4] = v10 + 64;
    }

    *(v10 + 48) = 0;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *v10 = &unk_1F0A39C98;
    *(v10 + 56) = *a3;
    *(v10 + 60) = a4;

    *&result = RB::DisplayList::State::add_style(this, a2, v10).n128_u64[0];
  }

  return result;
}

RB::XML::DisplayList *RBDrawingStateAddContrastFilter(__n128 *this, _RBDrawingState *a2, float a3)
{
  v6 = this->n128_u64[1];
  if (!v6[3])
  {
    make_contents(this->n128_i64[1]);
  }

  v8 = a3;
  RB::DisplayList::State::add_color_style<RB::ColorStyle::Contrast>(this, (v6 + 2), &v8, a2);
  result = v6[40];
  if (result)
  {
    RB::XML::DisplayList::add_contrast_filter(result, this, a2, a3);
  }

  return result;
}

double RB::DisplayList::State::add_color_style<RB::ColorStyle::Contrast>(__n128 *this, RB::DisplayList::Builder *a2, float *a3, int a4)
{
  if (*(a2 + 288) != 1 || !RB::ColorStyle::HueRotation::test(a3, 0))
  {
    v9 = *(a2 + 1);
    v10 = (v9[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v10 + 64 > v9[5])
    {
      v10 = RB::Heap::alloc_slow(v9 + 2, 0x40uLL, 7);
    }

    else
    {
      v9[4] = v10 + 64;
    }

    *(v10 + 48) = 0;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *v10 = &unk_1F0A39858;
    *(v10 + 56) = *a3;
    *(v10 + 60) = a4;

    *&result = RB::DisplayList::State::add_style(this, a2, v10).n128_u64[0];
  }

  return result;
}

RB::XML::DisplayList *RBDrawingStateAddLuminanceToAlphaFilter(__n128 *this, _RBDrawingState *a2)
{
  v4 = this->n128_u64[1];
  if (!v4[3])
  {
    make_contents(this->n128_i64[1]);
  }

  RB::DisplayList::State::add_color_style<RB::ColorStyle::LuminanceToAlpha>(this, (v4 + 2), &v6, a2);
  result = v4[40];
  if (result)
  {
    RB::XML::DisplayList::add_luminance_to_alpha_filter(result, this, a2);
  }

  return result;
}

double RB::DisplayList::State::add_color_style<RB::ColorStyle::LuminanceToAlpha>(__n128 *this, RB::DisplayList::Builder *a2, uint64_t a3, int a4)
{
  if (*(a2 + 288) != 1 || (RB::ColorStyle::LuminanceToAlpha::test(a3, 0) & 1) == 0)
  {
    v8 = *(a2 + 1);
    v9 = (v8[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v9 + 64 > v8[5])
    {
      v9 = RB::Heap::alloc_slow(v8 + 2, 0x40uLL, 7);
    }

    else
    {
      v8[4] = v9 + 64;
    }

    *(v9 + 48) = 0;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *v9 = &unk_1F0A398E0;
    *(v9 + 60) = a4;

    *&result = RB::DisplayList::State::add_style(this, a2, v9).n128_u64[0];
  }

  return result;
}

RB::XML::DisplayList *RBDrawingStateAddColorInvertFilter(__n128 *this, _RBDrawingState *a2, float a3)
{
  v6 = this->n128_u64[1];
  if (!v6[3])
  {
    make_contents(this->n128_i64[1]);
  }

  v8 = a3;
  RB::DisplayList::State::add_color_style<RB::ColorStyle::ColorInvert>(this, (v6 + 2), &v8, a2);
  result = v6[40];
  if (result)
  {
    RB::XML::DisplayList::add_color_invert_filter(result, this, a2, a3);
  }

  return result;
}

double RB::DisplayList::State::add_color_style<RB::ColorStyle::ColorInvert>(__n128 *this, RB::DisplayList::Builder *a2, float *a3, int a4)
{
  if (*(a2 + 288) != 1 || !RB::ColorStyle::ColorInvert::test(a3, 0))
  {
    v9 = *(a2 + 1);
    v10 = (v9[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v10 + 64 > v9[5])
    {
      v10 = RB::Heap::alloc_slow(v9 + 2, 0x40uLL, 7);
    }

    else
    {
      v9[4] = v10 + 64;
    }

    *(v10 + 48) = 0;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *v10 = &unk_1F0A39B88;
    *(v10 + 56) = *a3;
    *(v10 + 60) = a4;

    *&result = RB::DisplayList::State::add_style(this, a2, v10).n128_u64[0];
  }

  return result;
}

uint64_t *RBDrawingStateAddGrayscaleFilter(uint64_t *a1, int a2, float a3)
{
  v4 = LODWORD(a3);
  v5 = RBColorWhite;
  v6 = 0;
  v7 = a2;
  return add_style(a1, &v4);
}

uint64_t *add_style(uint64_t *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = result[1];
    if (!v4[3])
    {
      make_contents(result[1]);
    }

    v5 = *(a2 + 8);
    v6 = color_filter_color(*(a2 + 6), v5 & 0xFB, v3, *(a2 + 2), *(a2 + 3), *(a2 + 4), *(a2 + 5));
    _S0 = *(a2 + 7);
    __asm { FCVT            H0, S0 }

    v12 = v3[11].n128_u16[0];
    v14 = v6;
    v15 = _S0;
    v16 = v12;
    v17 = v13;
    v18 = *a2;
    RB::DisplayList::State::add_color_style<RB::ColorStyle::ColorMonochrome>(v3, (v4 + 2), &v14, v5 & 0xFFFFFFFB);
    result = v4[40];
    if (result)
    {
      RB::XML::DisplayList::add_color_monochrome_filter(result);
    }
  }

  return result;
}

uint64_t *RBDrawingStateAddColorMonochromeFilter2(uint64_t *a1, int a2, int a3, float a4, float a5, float a6, float a7, float a8, float a9)
{
  v10 = __PAIR64__(LODWORD(a9), LODWORD(a4));
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = a8;
  v15 = a2;
  v16 = 0;
  v17 = a3;
  return add_style(a1, &v10);
}

uint64_t *RBDrawingStateAddColorMonochromeFilter(uint64_t *a1, int a2, float a3, float a4, float a5, float a6, float a7, float a8)
{
  v9 = __PAIR64__(LODWORD(a8), LODWORD(a3));
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = 0;
  v15 = a2;
  return add_style(a1, &v9);
}

RB::XML::Document *RBDrawingStateAddLuminanceCurveFilter2(__n128 *a1, __int128 *a2, int a3, int a4, float a5, float a6, float a7, float a8)
{
  v9 = *a2;
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = a8;
  v14 = a3;
  v15 = 0;
  v16 = a4;
  return add_style(a1, &v9);
}

RB::XML::Document *add_style(__n128 *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a1->n128_u64[1];
  if (!v4[3])
  {
    make_contents(a1->n128_i64[1]);
  }

  v5 = color_filter_color(*(a2 + 32), *(a2 + 40), a1, *(a2 + 16), *(a2 + 20), *(a2 + 24), *(a2 + 28));
  _S0 = *(a2 + 36);
  __asm { FCVT            H0, S0 }

  v11 = a1[11].n128_u16[0];
  v12 = *a2;
  LODWORD(v15[0]) = *(a2 + 40);
  v15[1] = v12;
  v16 = v5;
  v17 = _S0;
  v18 = v11;
  v19 = v13;
  RB::DisplayList::State::add_filter_style<RB::Filter::LuminanceCurve>(a1, (v4 + 2), v15);
  result = v4[40];
  if (result)
  {
    RB::XML::DisplayList::add_luminance_curve_filter(result);
  }

  return result;
}

RB::XML::Document *RBDrawingStateAddLuminanceCurveFilter(__n128 *a1, __int128 *a2, int a3, float a4, float a5, float a6, float a7)
{
  v8 = *a2;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = 0;
  v14 = a3;
  return add_style(a1, &v8);
}

RB::XML::DisplayList *RBDrawingStateAddRGBACurvesFilter(__n128 *this, _RBDrawingState *a2, const float *a3)
{
  v6 = this->n128_u64[1];
  if (!v6[3])
  {
    make_contents(this->n128_i64[1]);
  }

  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  LODWORD(v12[0]) = a3;
  v12[1] = v7;
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v10;
  RB::DisplayList::State::add_filter_style<RB::Filter::RGBACurves>(this, (v6 + 2), v12);
  result = v6[40];
  if (result)
  {
    RB::XML::DisplayList::add_rgba_curves_filter(result, this, a2, a3);
  }

  return result;
}

double RB::DisplayList::State::add_filter_style<RB::Filter::RGBACurves>(__n128 *this, RB::DisplayList::Builder *a2, _OWORD *a3)
{
  v6 = *(a2 + 1);
  v7 = (v6[4] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v7 + 144 > v6[5])
  {
    v7 = RB::Heap::alloc_slow(v6 + 2, 0x90uLL, 15);
  }

  else
  {
    v6[4] = v7 + 144;
  }

  *(v7 + 48) = 0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = &unk_1F0A37198;
  *(v7 + 64) = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[4];
  *(v7 + 112) = a3[3];
  *(v7 + 128) = v10;
  *(v7 + 80) = v8;
  *(v7 + 96) = v9;

  *&result = RB::DisplayList::State::add_style(this, a2, v7).n128_u64[0];
  return result;
}

RB::XML::DisplayList *RBDrawingStateAddShaderFilterLayer(__n128 *a1, RB::DisplayList::State *a2, _RBDrawingState *a3, const CGSize *a4, const CGRect *a5, double a6, double a7, double a8, double a9)
{
  v18 = a1->n128_u64[1];
  if (!*(v18 + 24))
  {
    make_contents(a1->n128_i64[1]);
  }

  v19 = RB::DisplayList::Builder::end_layer((v18 + 16), a2);
  RB::DisplayList::Builder::delete_state((v18 + 16), a2);
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;

  return add_shader_filter_layer(a1, a3, v19, *&v20, *&v22, a4, a5);
}

RB::XML::DisplayList *add_shader_filter_layer(__n128 *a1, _RBDrawingState *a2, uint64_t (***a3)(RB::DisplayList::Layer *, __n128, __n128), CGSize a4, CGSize a5, const CGSize *a6, const CGRect *a7)
{
  v31 = a5;
  v12 = a1->n128_u64[1];
  if (!v12[3])
  {
    v27 = a4;
    v29 = *&a4.height;
    width = a5.width;
    height = a5.height;
    make_contents(a1->n128_i64[1]);
    a5.width = width;
    a5.height = height;
    a4 = v27;
    *&a4.height = v29;
  }

  v30 = 0uLL;
  if (a6)
  {
    v13 = vcvt_f32_f64(a6[1]);
    *&v30 = vcvt_f32_f64(*a6);
    *(&v30 + 1) = v13;
  }

  if ((a7 & 0xF) != 0)
  {
    v14 = **a3;

    return v14(a3, a4, *&a4.height);
  }

  else
  {
    v26 = a4.width;
    v28 = a4.height;
    v22 = a5.width;
    v24 = a5.height;
    v16 = [(RBShader *)a2 rb_closure];
    v17.f64[0] = v26;
    v17.f64[1] = v28;
    v18 = COERCE_DOUBLE(vcvt_f32_f64(v17));
    v19.f64[0] = v22;
    v19.f64[1] = v24;
    v20 = COERCE_DOUBLE(vcvt_f32_f64(v19));
    v21 = (a7 >> 2) & 0x40;
    if ((a7 & 0x80) != 0)
    {
      v21 = 16;
    }

    RB::DisplayList::State::add_custom_effect(a1, (v12 + 2), v16, a3, &v30, (a7 >> 2) & 4 | (a7 >> 3) & 8 | v21, v18, v20);
    result = v12[40];
    if (result)
    {
      v33.width = v26;
      v33.height = v28;
      RB::XML::DisplayList::add_shader_filter(result, a1, a2, &v31, v33, a6, a7);
    }
  }

  return result;
}

uint64_t *RBDrawingStateAddStyle(uint64_t *this, int a2, uint64_t a3)
{
  v4 = this;
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (a3)
        {
          v6 = this[1];
          if (!v6[3])
          {
            make_contents(this[1]);
          }

          v7 = rb_color_space(*(a3 + 20));
          if ((v7 >> 8))
          {
            LOBYTE(v8) = BYTE1(v7);
          }

          else
          {
            v7 = v4[9].n128_u16[6];
            v8 = v7 >> 8;
          }

          v14 = vcvt_f16_f32(*(a3 + 4));
          v17 = v7 | (v8 << 8);
          _S0 = *(a3 + 24);
          __asm { FCVT            H0, S0 }

          v15 = _S0;
          v16 = v4[11].n128_u16[0];
          RB::DisplayList::State::add_glass_highlight(v4, (v6 + 2), *a3, *(a3 + 1), &v14, *(a3 + 28), *(a3 + 36), *(a3 + 40), *(a3 + 44), *(a3 + 48), *(a3 + 52), *(a3 + 56));
          this = v6[40];
          if (this)
          {
            RB::XML::DisplayList::add_glass_highlight(this);
          }
        }
      }

      else if (a3)
      {
        v5 = this[1];
        if (!v5[3])
        {
          make_contents(this[1]);
        }

        RB::DisplayList::State::add_glass_displacement(v4, (v5 + 2), *a3, *(a3 + 1), *(a3 + 4), *(a3 + 12), *(a3 + 16), *(a3 + 20), *(a3 + 24), *(a3 + 28));
        this = v5[40];
        if (this)
        {

          RB::XML::DisplayList::add_glass_displacement(this);
        }
      }
    }

    else if (a2)
    {
      if (a2 == 1)
      {

        return add_style(this, a3);
      }
    }

    else
    {

      return add_style(this, a3);
    }
  }

  else if (a2 <= 5)
  {
    if (a2 == 4)
    {

      return add_style(this, a3);
    }

    else
    {

      return add_color_multiply_style(this, a3);
    }
  }

  else
  {
    switch(a2)
    {
      case 6:

        return add_alpha_multiply_style(this, a3);
      case 7:

        return add_style(this, a3);
      case 8:

        return add_style(this, a3);
    }
  }

  return this;
}

uint64_t encode_contents(RB::DisplayList::Contents *a1, void *a2, void *a3)
{
  if (a1)
  {
    v6[0] = &unk_1F0A38EC0;
    v6[1] = a2;
    v7 = a1;
    v8 = a1;
    v4 = RB::ObjcEncoderDelegate::encode_message_f<NSData * RB::ObjcEncoderDelegate::encode_message<RB::DisplayList::Contents>(RB::DisplayList::Contents const&)::{lambda(RB::DisplayList::Contents&)#1},NSData * RB::ObjcEncoderDelegate::encode_message<RB::DisplayList::Contents>(RB::DisplayList::Contents const&)::{lambda(RB::DisplayList::Contents&)#2}>(v6, &v8, &v7);
    if (!a3)
    {
      return v4;
    }
  }

  else
  {
    v4 = 0;
    if (!a3)
    {
      return v4;
    }
  }

  if (!v4 && !*a3)
  {
    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"RBCodableError" code:-1 userInfo:0];
  }

  return v4;
}

void sub_195D8D3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  MEMORY[0x19A8C09E0](v4, 0x10B0C4070C891A8);
  std::unique_ptr<RB::XML::Document>::reset[abi:nn200100](va, 0);
  RB::DisplayList::Builder::~Builder(va1);
  _Unwind_Resume(a1);
}

void sub_195D8D8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x19A8C09E0](v4, 0x10B0C4070C891A8);
  std::unique_ptr<RB::XML::Document>::reset[abi:nn200100](va, 0);
  if (v3)
  {
    if (atomic_fetch_add_explicit((v3 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      [RBDisplayList moveContents];
    }
  }

  _Unwind_Resume(a1);
}

void sub_195D8E164(_Unwind_Exception *a1)
{
  MEMORY[0x19A8C09E0](v1, 0x10B0C4070C891A8);
  _Unwind_Resume(a1);
}

void sub_195D8E244(_Unwind_Exception *a1)
{
  MEMORY[0x19A8C09E0](v1, 0x10F1C40CF6E02D6);
  _Unwind_Resume(a1);
}

void sub_195D8E5F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  std::unique_ptr<RB::XML::Document>::reset[abi:nn200100](&a10, 0);
  RB::Decoder::~Decoder(&a15);
  if (v33)
  {
    if (atomic_fetch_add_explicit((v33 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      [RBDisplayList moveContents];
    }
  }

  _Unwind_Resume(a1);
}

double RB::DisplayList::State::add_color_style<RB::ColorStyle::ColorMultiply>(__n128 *this, RB::DisplayList::Builder *a2, uint64_t *a3, int a4)
{
  if (*(a2 + 288) != 1 || !RB::ColorStyle::ColorMultiply::test(a3, 0, a4))
  {
    v9 = *(a2 + 1);
    v10 = (v9[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v10 + 80 > v9[5])
    {
      v10 = RB::Heap::alloc_slow(v9 + 2, 0x50uLL, 7);
    }

    else
    {
      v9[4] = v10 + 80;
    }

    *(v10 + 48) = 0;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *v10 = &unk_1F0A399F0;
    v11 = *a3;
    *(v10 + 62) = *(a3 + 6);
    *(v10 + 56) = v11;
    *(v10 + 72) = a4;

    *&result = RB::DisplayList::State::add_style(this, a2, v10).n128_u64[0];
  }

  return result;
}

uint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMultiply>::can_mix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 2;
  }

  v3 = *(a1 + 69);
  v4 = *(a3 + 69);
  if (v3 != v4 || v3 == 0)
  {
    if (v3 != v4 && v3 != 0)
    {
LABEL_14:
      if (v4)
      {
        return 2;
      }
    }
  }

  else if (*(a1 + 68) != *(a3 + 68))
  {
    goto LABEL_14;
  }

  if (*(a1 + 56) == *(a3 + 56) && *(a1 + 58) == *(a3 + 58) && *(a1 + 60) == *(a3 + 60) && *(a1 + 62) == *(a3 + 62) && *(a1 + 64) == *(a3 + 64) && *(a1 + 66) == *(a3 + 66))
  {
    return 4;
  }

  return 2;
}

uint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMultiply>::mix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v7.i64 = RB::Heap::emplace<RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMultiply>,RB::ColorStyle::ColorMultiply const&,unsigned int const&>((*(*a4 + 8) + 16), (a1 + 56), (a1 + 72));
  v8 = v6;
  if (a3)
  {
    v9 = (a3 + 56);
  }

  else
  {
    v9 = 0;
  }

  v7.i32[0] = *(a2 + 16);
  RB::ColorStyle::ColorMultiply::mix((v6 + 56), v9, v7);
  return v8;
}

void *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMultiply>::encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  v5 = a1;
  RB::ProtobufEncoder::encode_varint(a2, 0x52uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMultiply>::encode(RB::Encoder &)const::{lambda(RB::ColorStyle::ColorMultiply &)#1}::operator()<RB::Encoder>(&v5, a2);
  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMultiply>::print(uint64_t a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "color");
  v6 = *(a1 + 72);
  if (v6)
  {
    v7 = "linear";
  }

  else
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = "non-linear";
  }

  RB::SexpString::print(this, 0, v7);
LABEL_6:
  if ((*(a1 + 72) & 4) != 0)
  {
    RB::SexpString::print(this, 0, "premultiplied");
  }

  RB::ColorStyle::ColorMultiply::print((a1 + 56), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

double RB::Heap::emplace<RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMultiply>,RB::ColorStyle::ColorMultiply const&,unsigned int const&>(RB::Heap *this, uint64_t *a2, int *a3)
{
  v6 = *(this + 3);
  v7 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v7 + 80 > v6)
  {
    v7 = RB::Heap::alloc_slow(this, 0x50uLL, 7);
  }

  else
  {
    *(this + 2) = v7 + 80;
  }

  v8 = *a3;
  *(v7 + 48) = 0;
  result = 0.0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = &unk_1F0A399F0;
  v10 = *a2;
  *(v7 + 62) = *(a2 + 6);
  *(v7 + 56) = v10;
  *(v7 + 72) = v8;
  return result;
}

void *RB::ColorStyle::MatrixFn<RB::ColorStyle::ColorMultiply>::copy(void *a1, size_t *a2)
{
  v4 = a1[1];
  if (v4)
  {
    v5 = (**v4)(v4, a2);
  }

  else
  {
    v5 = 0;
  }

  result = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((result + 4) > a2[3])
  {
    result = RB::Heap::alloc_slow(a2, 0x20uLL, 7);
  }

  else
  {
    a2[2] = (result + 4);
  }

  *result = &unk_1F0A3DAA0;
  result[1] = v5;
  v7 = a1[2];
  *(result + 22) = *(a1 + 22);
  result[2] = v7;
  return result;
}

void RB::ColorStyle::MatrixFn<RB::ColorStyle::ColorMultiply>::color_matrix(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, float32_t a5)
{
  RB::ColorStyle::ColorMultiply::color_matrix((a1 + 16), a2, a3, a4, a5);
  v10 = *(a1 + 8);
  if (v10)
  {
    (*(*v10 + 8))(v10, v14, a3, a4, a5);
    RB::operator*(v14, a2, v12);
    v11 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v13;
  }
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::ColorMultiply>::color_info(float16x4_t *a1, unsigned __int8 *a2)
{
  v4 = RB::Fill::Color::color_info(a1 + 2);
  RB::ColorInfo::operator+=(a2, v4 & 0xFFFFFFFFFFFFLL);
  result = a1[1];
  if (result)
  {
    v6 = *(*result + 16);

    return v6();
  }

  return result;
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::ColorMultiply>::test(uint64_t a1, unsigned int a2, int a3)
{
  v5 = RB::ColorStyle::ColorMultiply::test(a1 + 16, a2, a3);
  if (a2 < 4)
  {
    if (v5)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

LABEL_15:
    v6 = 0;
    return v6 & 1;
  }

  v6 = a2 - 5;
  if (a2 - 5 >= 3)
  {
    if (a2 != 4)
    {
      return v6 & 1;
    }

    if (v5)
    {
      v6 = *(a1 + 8) == 0;
      return v6 & 1;
    }

    goto LABEL_15;
  }

  if (v5)
  {
LABEL_11:
    v6 = 1;
    return v6 & 1;
  }

  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = *(*v7 + 24);

  return v8();
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::ColorMultiply>::print(uint64_t a1, RB::SexpString *a2)
{
  RB::ColorStyle::ColorMultiply::print((a1 + 16), a2);
  result = *(a1 + 8);
  if (result)
  {
    v4 = *(*result + 32);

    return v4();
  }

  return result;
}

void *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMultiply>::encode(RB::Encoder &)const::{lambda(RB::ColorStyle::ColorMultiply &)#1}::operator()<RB::Encoder>(uint64_t *a1, RB::ProtobufEncoder *this)
{
  v3 = *a1;
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::ColorStyle::ColorMultiply::encode((v3 + 56), this);
  v4 = *(v3 + 72);
  if (v4)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x40uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
    v4 = *(v3 + 72);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  RB::ProtobufEncoder::encode_varint(this, 0x48uLL);
  RB::ProtobufEncoder::encode_varint(this, 1uLL);
  if ((*(v3 + 72) & 4) != 0)
  {
LABEL_4:
    RB::ProtobufEncoder::encode_varint(this, 0x50uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
  }

LABEL_5:

  return RB::ProtobufEncoder::end_length_delimited(this);
}

double RB::DisplayList::State::add_color_style<RB::ColorStyle::AlphaMultiply>(__n128 *this, RB::DisplayList::Builder *a2, uint64_t *a3, int a4)
{
  if (*(a2 + 288) != 1 || !RB::ColorStyle::AlphaMultiply::test(a3, 0, a4))
  {
    v9 = *(a2 + 1);
    v10 = (v9[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v10 + 80 > v9[5])
    {
      v10 = RB::Heap::alloc_slow(v9 + 2, 0x50uLL, 7);
    }

    else
    {
      v9[4] = v10 + 80;
    }

    *(v10 + 48) = 0;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *v10 = &unk_1F0A39A78;
    v11 = *a3;
    *(v10 + 62) = *(a3 + 6);
    *(v10 + 56) = v11;
    *(v10 + 72) = a4;

    *&result = RB::DisplayList::State::add_style(this, a2, v10).n128_u64[0];
  }

  return result;
}

uint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::AlphaMultiply>::can_mix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 2;
  }

  v3 = *(a1 + 69);
  v4 = *(a3 + 69);
  if (v3 != v4 || v3 == 0)
  {
    if (v3 != v4 && v3 != 0)
    {
LABEL_14:
      if (v4)
      {
        return 2;
      }
    }
  }

  else if (*(a1 + 68) != *(a3 + 68))
  {
    goto LABEL_14;
  }

  if (*(a1 + 56) == *(a3 + 56) && *(a1 + 58) == *(a3 + 58) && *(a1 + 60) == *(a3 + 60) && *(a1 + 62) == *(a3 + 62) && *(a1 + 64) == *(a3 + 64) && *(a1 + 66) == *(a3 + 66))
  {
    return 4;
  }

  return 2;
}

uint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::AlphaMultiply>::mix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v7.i64 = RB::Heap::emplace<RB::DisplayList::ColorFilterStyle<RB::ColorStyle::AlphaMultiply>,RB::ColorStyle::AlphaMultiply const&,unsigned int const&>((*(*a4 + 8) + 16), (a1 + 56), (a1 + 72));
  v8 = v6;
  if (a3)
  {
    v9 = (a3 + 56);
  }

  else
  {
    v9 = 0;
  }

  v7.i32[0] = *(a2 + 16);
  RB::ColorStyle::AlphaMultiply::mix((v6 + 56), v9, v7);
  return v8;
}

void *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::AlphaMultiply>::encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  v5 = a1;
  RB::ProtobufEncoder::encode_varint(a2, 0x52uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::DisplayList::ColorFilterStyle<RB::ColorStyle::AlphaMultiply>::encode(RB::Encoder &)const::{lambda(RB::ColorStyle::AlphaMultiply &)#1}::operator()<RB::Encoder>(&v5, a2);
  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::ColorFilterStyle<RB::ColorStyle::AlphaMultiply>::print(uint64_t a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "color");
  v6 = *(a1 + 72);
  if (v6)
  {
    v7 = "linear";
  }

  else
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = "non-linear";
  }

  RB::SexpString::print(this, 0, v7);
LABEL_6:
  if ((*(a1 + 72) & 4) != 0)
  {
    RB::SexpString::print(this, 0, "premultiplied");
  }

  RB::ColorStyle::AlphaMultiply::print((a1 + 56), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

double RB::Heap::emplace<RB::DisplayList::ColorFilterStyle<RB::ColorStyle::AlphaMultiply>,RB::ColorStyle::AlphaMultiply const&,unsigned int const&>(RB::Heap *this, uint64_t *a2, int *a3)
{
  v6 = *(this + 3);
  v7 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v7 + 80 > v6)
  {
    v7 = RB::Heap::alloc_slow(this, 0x50uLL, 7);
  }

  else
  {
    *(this + 2) = v7 + 80;
  }

  v8 = *a3;
  *(v7 + 48) = 0;
  result = 0.0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = &unk_1F0A39A78;
  v10 = *a2;
  *(v7 + 62) = *(a2 + 6);
  *(v7 + 56) = v10;
  *(v7 + 72) = v8;
  return result;
}

void *RB::ColorStyle::MatrixFn<RB::ColorStyle::AlphaMultiply>::copy(void *a1, size_t *a2)
{
  v4 = a1[1];
  if (v4)
  {
    v5 = (**v4)(v4, a2);
  }

  else
  {
    v5 = 0;
  }

  result = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((result + 4) > a2[3])
  {
    result = RB::Heap::alloc_slow(a2, 0x20uLL, 7);
  }

  else
  {
    a2[2] = (result + 4);
  }

  *result = &unk_1F0A3DAD8;
  result[1] = v5;
  v7 = a1[2];
  *(result + 22) = *(a1 + 22);
  result[2] = v7;
  return result;
}

void RB::ColorStyle::MatrixFn<RB::ColorStyle::AlphaMultiply>::color_matrix(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, float32_t a5)
{
  RB::ColorStyle::AlphaMultiply::color_matrix((a1 + 16), a2, a3, a4, a5);
  v10 = *(a1 + 8);
  if (v10)
  {
    (*(*v10 + 8))(v10, v14, a3, a4, a5);
    RB::operator*(v14, a2, v12);
    v11 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v13;
  }
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::AlphaMultiply>::color_info(float16x4_t *a1, unsigned __int8 *a2)
{
  v4 = RB::Fill::Color::color_info(a1 + 2);
  RB::ColorInfo::operator+=(a2, v4 & 0xFFFFFFFFFFFFLL);
  result = a1[1];
  if (result)
  {
    v6 = *(*result + 16);

    return v6();
  }

  return result;
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::AlphaMultiply>::test(uint64_t a1, unsigned int a2, int a3)
{
  v5 = RB::ColorStyle::AlphaMultiply::test(a1 + 16, a2, a3);
  if (a2 < 4)
  {
    if (v5)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

LABEL_15:
    v6 = 0;
    return v6 & 1;
  }

  v6 = a2 - 5;
  if (a2 - 5 >= 3)
  {
    if (a2 != 4)
    {
      return v6 & 1;
    }

    if (v5)
    {
      v6 = *(a1 + 8) == 0;
      return v6 & 1;
    }

    goto LABEL_15;
  }

  if (v5)
  {
LABEL_11:
    v6 = 1;
    return v6 & 1;
  }

  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = *(*v7 + 24);

  return v8();
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::AlphaMultiply>::print(uint64_t a1, RB::SexpString *a2)
{
  RB::ColorStyle::AlphaMultiply::print((a1 + 16), a2);
  result = *(a1 + 8);
  if (result)
  {
    v4 = *(*result + 32);

    return v4();
  }

  return result;
}

void *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::AlphaMultiply>::encode(RB::Encoder &)const::{lambda(RB::ColorStyle::AlphaMultiply &)#1}::operator()<RB::Encoder>(uint64_t *a1, RB::ProtobufEncoder *this)
{
  v3 = *a1;
  RB::ProtobufEncoder::encode_varint(this, 0x12uLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::ColorStyle::ColorMultiply::encode((v3 + 56), this);
  v4 = *(v3 + 72);
  if (v4)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x40uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
    v4 = *(v3 + 72);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  RB::ProtobufEncoder::encode_varint(this, 0x48uLL);
  RB::ProtobufEncoder::encode_varint(this, 1uLL);
  if ((*(v3 + 72) & 4) != 0)
  {
LABEL_4:
    RB::ProtobufEncoder::encode_varint(this, 0x50uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
  }

LABEL_5:

  return RB::ProtobufEncoder::end_length_delimited(this);
}

double RB::DisplayList::State::add_color_style<RB::ColorStyle::ColorMonochrome>(__n128 *this, RB::DisplayList::Builder *a2, uint64_t a3, int a4)
{
  if (*(a2 + 288) != 1 || !RB::ColorStyle::ColorMonochrome::test(a3, 0))
  {
    v9 = *(a2 + 1);
    v10 = (v9[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v10 + 88 > v9[5])
    {
      v10 = RB::Heap::alloc_slow(v9 + 2, 0x58uLL, 7);
    }

    else
    {
      v9[4] = v10 + 88;
    }

    *(v10 + 48) = 0;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *v10 = &unk_1F0A39968;
    v11 = *a3;
    *(v10 + 72) = *(a3 + 16);
    *(v10 + 56) = v11;
    *(v10 + 80) = a4;

    *&result = RB::DisplayList::State::add_style(this, a2, v10).n128_u64[0];
  }

  return result;
}

RB::DisplayList::Item *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMonochrome>::draw(uint64_t a1, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  result = RB::ColorStyle::ColorMonochrome::test(a1 + 56, 0);
  if ((result & 1) == 0)
  {
    v11 = *(a2 + 1);
    v13 = *(a1 + 56);
    v14 = *(a1 + 72);
    v12 = (v11[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 + 40 > v11[5])
    {
      v12 = RB::Heap::alloc_slow(v11 + 2, 0x28uLL, 7);
    }

    else
    {
      v11[4] = v12 + 40;
    }

    *v12 = &unk_1F0A3DB10;
    *(v12 + 8) = 0;
    *(v12 + 16) = v13;
    *(v12 + 32) = v14;
    result = RB::DisplayList::Builder::apply_color_matrix_fn(a2, a4, v12, *(a1 + 80), *(a1 + 16), *(a1 + 24));
    a4 = result;
  }

  if (a4)
  {
    *(a4 + 2) = *(a1 + 32);

    return RB::DisplayList::Builder::draw(a2, a4, a3, a5);
  }

  return result;
}

uint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMonochrome>::can_mix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 2;
  }

  v3 = *(a1 + 69);
  v4 = *(a3 + 69);
  if (v3 != v4 || v3 == 0)
  {
    if (v3 != v4 && v3 != 0)
    {
LABEL_14:
      if (v4)
      {
        return 2;
      }
    }
  }

  else if (*(a1 + 68) != *(a3 + 68))
  {
    goto LABEL_14;
  }

  if (*(a1 + 56) == *(a3 + 56) && *(a1 + 58) == *(a3 + 58) && *(a1 + 60) == *(a3 + 60) && *(a1 + 62) == *(a3 + 62) && *(a1 + 64) == *(a3 + 64) && *(a1 + 66) == *(a3 + 66) && *(a1 + 72) == *(a3 + 72) && *(a1 + 76) == *(a3 + 76))
  {
    return 4;
  }

  return 2;
}

float32x2_t *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMonochrome>::mix(uint64_t a1, uint64_t a2, float32x2_t *a3, uint64_t a4)
{
  v7 = RB::Heap::emplace<RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMonochrome>,RB::ColorStyle::ColorMonochrome const&,unsigned int const&>((*(*a4 + 8) + 16), (a1 + 56), (a1 + 80));
  v8 = v6;
  if (a3)
  {
    v9 = a3 + 7;
  }

  else
  {
    v9 = 0;
  }

  v7.n128_u32[0] = *(a2 + 16);
  RB::ColorStyle::ColorMonochrome::mix(v6 + 7, v9, v7);
  return v8;
}

void *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMonochrome>::encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  v5 = a1;
  RB::ProtobufEncoder::encode_varint(a2, 0x52uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMonochrome>::encode(RB::Encoder &)const::{lambda(RB::ColorStyle::ColorMonochrome &)#1}::operator()<RB::Encoder>(&v5, a2);
  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMonochrome>::print(uint64_t a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "color");
  v6 = *(a1 + 80);
  if (v6)
  {
    v7 = "linear";
  }

  else
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = "non-linear";
  }

  RB::SexpString::print(this, 0, v7);
LABEL_6:
  if ((*(a1 + 80) & 4) != 0)
  {
    RB::SexpString::print(this, 0, "premultiplied");
  }

  RB::ColorStyle::ColorMonochrome::print((a1 + 56), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

__n128 RB::Heap::emplace<RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMonochrome>,RB::ColorStyle::ColorMonochrome const&,unsigned int const&>(RB::Heap *this, __n128 *a2, int *a3)
{
  v6 = *(this + 3);
  v7 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v7 + 88 > v6)
  {
    v7 = RB::Heap::alloc_slow(this, 0x58uLL, 7);
  }

  else
  {
    *(this + 2) = v7 + 88;
  }

  v8 = *a3;
  *(v7 + 48) = 0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = &unk_1F0A39968;
  result = *a2;
  *(v7 + 72) = a2[1].n128_u64[0];
  *(v7 + 56) = result;
  *(v7 + 80) = v8;
  return result;
}

__n128 RB::ColorStyle::MatrixFn<RB::ColorStyle::ColorMonochrome>::copy(__n128 *a1, size_t *a2)
{
  v4 = a1->n128_u64[1];
  if (v4)
  {
    v5 = (**v4)(v4, a2);
  }

  else
  {
    v5 = 0;
  }

  v6 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (&v6[2].n128_u64[1] > a2[3])
  {
    v6 = RB::Heap::alloc_slow(a2, 0x28uLL, 7);
  }

  else
  {
    a2[2] = &v6[2].n128_u64[1];
  }

  v6->n128_u64[0] = &unk_1F0A3DB10;
  v6->n128_u64[1] = v5;
  result = a1[1];
  v6[2].n128_u64[0] = a1[2].n128_u64[0];
  v6[1] = result;
  return result;
}

void RB::ColorStyle::MatrixFn<RB::ColorStyle::ColorMonochrome>::color_matrix(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, float32_t a5)
{
  RB::ColorStyle::ColorMonochrome::color_matrix(a1 + 16, a2, a3, a4, a5);
  v10 = *(a1 + 8);
  if (v10)
  {
    (*(*v10 + 8))(v10, v14, a3, a4, a5);
    RB::operator*(v14, a2, v12);
    v11 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v13;
  }
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::ColorMonochrome>::color_info(float16x4_t *a1, unsigned __int8 *a2)
{
  v4 = RB::Fill::Color::color_info(a1 + 2);
  RB::ColorInfo::operator+=(a2, v4 & 0xFFFFFFFFFFFFLL);
  result = a1[1];
  if (result)
  {
    v6 = *(*result + 16);

    return v6();
  }

  return result;
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::ColorMonochrome>::test(uint64_t a1, unsigned int a2)
{
  v4 = RB::ColorStyle::ColorMonochrome::test(a1 + 16, a2);
  if (a2 < 4)
  {
    if (v4)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

LABEL_15:
    v5 = 0;
    return v5 & 1;
  }

  v5 = a2 - 5;
  if (a2 - 5 >= 3)
  {
    if (a2 != 4)
    {
      return v5 & 1;
    }

    if (v4)
    {
      v5 = *(a1 + 8) == 0;
      return v5 & 1;
    }

    goto LABEL_15;
  }

  if (v4)
  {
LABEL_11:
    v5 = 1;
    return v5 & 1;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_8:
  v7 = *(*v6 + 24);

  return v7();
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::ColorMonochrome>::print(uint64_t a1, RB::SexpString *a2)
{
  RB::ColorStyle::ColorMonochrome::print((a1 + 16), a2);
  result = *(a1 + 8);
  if (result)
  {
    v4 = *(*result + 32);

    return v4();
  }

  return result;
}

void *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMonochrome>::encode(RB::Encoder &)const::{lambda(RB::ColorStyle::ColorMonochrome &)#1}::operator()<RB::Encoder>(uint64_t *a1, RB::ProtobufEncoder *this)
{
  v3 = *a1;
  RB::ProtobufEncoder::encode_varint(this, 0x42uLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::ColorStyle::ColorMonochrome::encode((v3 + 56), this);
  v4 = *(v3 + 80);
  if (v4)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x40uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
    v4 = *(v3 + 80);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  RB::ProtobufEncoder::encode_varint(this, 0x48uLL);
  RB::ProtobufEncoder::encode_varint(this, 1uLL);
  if ((*(v3 + 80) & 4) != 0)
  {
LABEL_4:
    RB::ProtobufEncoder::encode_varint(this, 0x50uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
  }

LABEL_5:

  return RB::ProtobufEncoder::end_length_delimited(this);
}

double RB::DisplayList::State::add_filter_style<RB::Filter::LuminanceCurve>(__n128 *this, RB::DisplayList::Builder *a2, __int128 *a3)
{
  v6 = *(a2 + 1);
  v7 = (v6[4] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v7 + 112 > v6[5])
  {
    v7 = RB::Heap::alloc_slow(v6 + 2, 0x70uLL, 15);
  }

  else
  {
    v6[4] = v7 + 112;
  }

  *(v7 + 48) = 0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = &unk_1F0A3D3B8;
  v8 = *a3;
  v9 = a3[2];
  *(v7 + 80) = a3[1];
  *(v7 + 96) = v9;
  *(v7 + 64) = v8;

  *&result = RB::DisplayList::State::add_style(this, a2, v7).n128_u64[0];
  return result;
}

unsigned __int8 *RB::DisplayList::FilterStyle<RB::Filter::LuminanceCurve>::draw(void *a1, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  v10 = a1[2];
  v11 = a1[3];
  RB::Heap::emplace<RB::DisplayList::GenericFilter<RB::Filter::LuminanceCurve>,RB::Filter::LuminanceCurve const&,RB::DisplayList::Builder &>((*(a2 + 1) + 16), (a1 + 8));
  result = RB::DisplayList::Builder::apply_filter_(a2, a4, v12, v10, v11);
  if (result)
  {
    *(result + 2) = a1[4];

    return RB::DisplayList::Builder::draw(a2, result, a3, a5);
  }

  return result;
}

double RB::DisplayList::FilterStyle<RB::Filter::LuminanceCurve>::bounds(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
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

uint64_t RB::DisplayList::FilterStyle<RB::Filter::LuminanceCurve>::can_mix(float32x4_t *a1, RB::DisplayList::Interpolator::Contents *a2, float32x4_t *a3)
{
  if (a3)
  {
    v3 = a3 + 4;
  }

  else
  {
    v3 = 0;
  }

  return RB::Filter::LuminanceCurve::can_mix(a1 + 4, a2, v3);
}

float32x4_t *RB::DisplayList::FilterStyle<RB::Filter::LuminanceCurve>::mix(uint64_t a1, const RB::DisplayList::Interpolator::State *a2, float32x4_t *a3, const RB::DisplayList::CachedTransform *a4)
{
  RB::Heap::emplace<RB::DisplayList::FilterStyle<RB::Filter::LuminanceCurve>,RB::Filter::LuminanceCurve const&,RB::DisplayList::Builder &>((*(*a4 + 8) + 16), a1 + 64);
  v8 = v7;
  if (a3)
  {
    v9 = a3 + 4;
  }

  else
  {
    v9 = 0;
  }

  RB::Filter::LuminanceCurve::mix(v7 + 4, a2, v9, a4);
  return v8;
}

void *RB::DisplayList::FilterStyle<RB::Filter::LuminanceCurve>::encode(float32x4_t *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x32uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::Filter::LuminanceCurve::encode(a1 + 4, a2);
  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::FilterStyle<RB::Filter::LuminanceCurve>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "filter");
  RB::Filter::LuminanceCurve::print((a1 + 8), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

__n128 RB::Heap::emplace<RB::DisplayList::FilterStyle<RB::Filter::LuminanceCurve>,RB::Filter::LuminanceCurve const&,RB::DisplayList::Builder &>(RB::Heap *this, uint64_t a2)
{
  v4 = *(this + 3);
  v5 = (*(this + 2) + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v5 + 112 > v4)
  {
    v5 = RB::Heap::alloc_slow(this, 0x70uLL, 15);
  }

  else
  {
    *(this + 2) = v5 + 112;
  }

  *(v5 + 48) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = &unk_1F0A3D3B8;
  result = *a2;
  v7 = *(a2 + 16);
  *(v5 + 94) = *(a2 + 30);
  *(v5 + 64) = result;
  *(v5 + 80) = v7;
  return result;
}

__n128 RB::Heap::emplace<RB::DisplayList::GenericFilter<RB::Filter::LuminanceCurve>,RB::Filter::LuminanceCurve const&,RB::DisplayList::Builder &>(RB::Heap *this, uint64_t a2)
{
  v4 = *(this + 3);
  v5 = (*(this + 2) + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v5 + 80 > v4)
  {
    v5 = RB::Heap::alloc_slow(this, 0x50uLL, 15);
  }

  else
  {
    *(this + 2) = v5 + 80;
  }

  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *v5 = &unk_1F0A3A058;
  result = *a2;
  v7 = *(a2 + 16);
  *(v5 + 62) = *(a2 + 30);
  *(v5 + 32) = result;
  *(v5 + 48) = v7;
  return result;
}

unint64_t RB::DisplayList::GenericFilter<RB::Filter::LuminanceCurve>::color_info(float16x4_t *a1, uint64_t a2)
{
  result = RB::Fill::Color::color_info(a1 + 8);
  *a2 = result;
  *(a2 + 4) = WORD2(result);
  return result;
}

uint64_t RB::vector<RB::CustomShader::Value,4ul,unsigned long>::~vector(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  if (*(a1 + 136))
  {
    v4 = 0;
    do
    {
      RB::CustomShader::Value::reset_data(v3);
      ++v4;
      v3 += 4;
    }

    while (v4 < *(a1 + 136));
    v2 = *(a1 + 128);
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

void RB::Filter::Custom::~Custom(id *this)
{
  v2 = this[18];
  if (v2)
  {
    v3 = this[18];
  }

  else
  {
    v3 = (this + 2);
  }

  if (this[19])
  {
    v4 = 0;
    do
    {
      RB::CustomShader::Value::reset_data(v3);
      ++v4;
      v3 += 4;
    }

    while (v4 < this[19]);
    v2 = this[18];
  }

  if (v2)
  {
    free(v2);
  }

  v5 = this[1];
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      RB::CustomShader::Closure::operator=();
    }
  }
}

void *RB::vector<RB::DisplayList::Transform::Term,1ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 13) + (*(__dst + 13) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 13) + (*(__dst + 13) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,40ul>(*(__dst + 5), __dst, 1u, __dst + 13, v3);
  *(__dst + 5) = result;
  return result;
}

uint64_t RB::Refcount<RB::Transition,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return RB::Refcount<RB::Transition,std::atomic<unsigned int>>::release();
  }

  return result;
}

uint64_t RB::Refcount<RB::DisplayList::Interpolator::Object,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return [RBDisplayListInterpolator copyWithZone:];
  }

  return result;
}

uint64_t RB::DisplayList::ClipFactory::operator()<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    v5[0] = &unk_1F0A3D550;
    v5[1] = a1;
    RB::Coverage::StrokeablePath::simplify(a2 + 8, a2, v5);
  }

  result = *(a1 + 32);
  if (!result)
  {
    result = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,float const&,RB::ClipMode const&,RB::AffineTransform const* const&>(*a1, *a1, a2, (a1 + 8), (a1 + 12), (a1 + 16));
    *(a1 + 32) = result;
  }

  if (*(a1 + 24) == 1)
  {
    *(result + 45) |= 4u;
  }

  return result;
}

uint64_t RB::DisplayList::ClipFactory::operator()<RB::Coverage::Glyphs>(uint64_t a1, RB::Coverage::Glyphs *a2)
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
    result = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Glyphs>,RB::Heap&,RB::Coverage::Glyphs const&,float const&,RB::ClipMode const&,RB::AffineTransform const* const&>(*a1, *a1, a2, (a1 + 8), (a1 + 12), (a1 + 16));
    *(a1 + 32) = result;
    if ((*(a1 + 24) & 1) == 0)
    {
      return result;
    }
  }

  *(result + 45) |= 4u;
  return result;
}

uint64_t RB::DisplayList::ClipFactory::operator()<RB::Coverage::Stroke<RBStrokeRef>>(uint64_t a1, uint64_t a2)
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
    result = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>,RB::Heap&,RB::Coverage::Stroke<RBStrokeRef> const&,float const&,RB::ClipMode const&,RB::AffineTransform const* const&>(*a1, *a1, a2, (a1 + 8), (a1 + 12), (a1 + 16));
    *(a1 + 32) = result;
    if ((*(a1 + 24) & 1) == 0)
    {
      return result;
    }
  }

  *(result + 45) |= 4u;
  return result;
}

uint64_t RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,float const&,RB::ClipMode const&,RB::AffineTransform const* const&>(size_t *a1, uint64_t a2, uint64_t a3, int *a4, _DWORD *a5, uint64_t *a6)
{
  v11 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v11 + 152 > a1[3])
  {
    v11 = RB::Heap::alloc_slow(a1, 0x98uLL, 7);
  }

  else
  {
    a1[2] = v11 + 152;
  }

  v12 = *a4;
  v13 = *a5;
  v14 = *a6;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 40) = 0;
  *(v11 + 32) = 0;
  *(v11 + 44) = v13;
  *(v11 + 45) = 0;
  *v11 = &unk_1F0A3D0D0;
  *(v11 + 48) = v14;
  *(v11 + 56) = &unk_1F0A38388;
  RB::Coverage::StrokeablePath::StrokeablePath(v11 + 64, a3 + 8, a2);
  *(v11 + 112) = *(a3 + 56);
  *(v11 + 128) = *(a3 + 72);
  *(v11 + 129) = *(a3 + 73);
  *(v11 + 131) = *(a3 + 75);
  *(v11 + 132) = *(a3 + 76);
  *(v11 + 136) = *(a3 + 80);
  *(v11 + 144) = v12;
  RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::update_bounds(v11);
  return v11;
}

void sub_195D90E80(_Unwind_Exception *a1)
{
  v1[7] = v2;
  RBPathRelease(v1[8], v1[9]);
  _Unwind_Resume(a1);
}

void RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::clip(uint64_t a1, CGContextRef *a2)
{
  v10 = 0;
  memset(&v9, 0, sizeof(v9));
  v4 = *(a1 + 48);
  v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
  v6 = vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0];
  v10 = v6 >= 0;
  if ((v6 & 0x8000000000000000) == 0)
  {
    CGContextGetCTM(&v9, *a2);
    v7 = *a2;
    v8 = v4[1];
    *&transform.a = *v4;
    *&transform.c = v8;
    *&transform.tx = v4[2];
    CGContextConcatCTM(v7, &transform);
  }

  RB::Coverage::StrokeablePath::clip(a1 + 64, a1 + 56, a2);
  if (v10)
  {
    transform = v9;
    CGContextSetCTM();
  }
}

void RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::fill(uint64_t a1, CGContextRef *a2, uint64_t a3)
{
  v12 = 0;
  memset(&v11, 0, sizeof(v11));
  v6 = *(a1 + 48);
  v7 = vandq_s8(vandq_s8(vceqq_f64(v6[1], xmmword_195E42770), vceqq_f64(*v6, xmmword_195E42760)), vceqzq_f64(v6[2]));
  v8 = vandq_s8(vdupq_laneq_s64(v7, 1), v7).u64[0];
  v12 = v8 >= 0;
  if ((v8 & 0x8000000000000000) == 0)
  {
    CGContextGetCTM(&v11, *a2);
    v9 = *a2;
    v10 = v6[1];
    *&transform.a = *v6;
    *&transform.c = v10;
    *&transform.tx = v6[2];
    CGContextConcatCTM(v9, &transform);
  }

  RB::Coverage::StrokeablePath::fill(a1 + 64, a1 + 56, a2, a3);
  if (v12)
  {
    transform = v11;
    CGContextSetCTM();
  }
}

void RB::DisplayList::GenericClip<RB::Coverage::Primitive>::clip(float32x2_t *a1, CGContextRef *a2)
{
  v10 = 0;
  memset(&v9, 0, sizeof(v9));
  v4 = a1[6];
  v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
  v6 = vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0];
  v10 = v6 >= 0;
  if ((v6 & 0x8000000000000000) == 0)
  {
    CGContextGetCTM(&v9, *a2);
    v7 = *a2;
    v8 = v4[1];
    *&transform.a = *v4;
    *&transform.c = v8;
    *&transform.tx = v4[2];
    CGContextConcatCTM(v7, &transform);
  }

  RB::Coverage::Primitive::clip(a1 + 8, a2);
  if (v10)
  {
    transform = v9;
    CGContextSetCTM();
  }
}

void RB::DisplayList::GenericClip<RB::Coverage::Primitive>::fill(float32x2_t *a1, CGContextRef *a2, RB::Fill::Color *a3)
{
  v13 = 0;
  memset(&v12, 0, sizeof(v12));
  v6 = a1[6];
  v7 = vandq_s8(vandq_s8(vceqq_f64(v6[1], xmmword_195E42770), vceqq_f64(*v6, xmmword_195E42760)), vceqzq_f64(v6[2]));
  v8 = vdupq_laneq_s64(v7, 1);
  v9 = vandq_s8(v8, v7);
  v13 = v9.i64[0] >= 0;
  if ((v9.i64[0] & 0x8000000000000000) == 0)
  {
    CGContextGetCTM(&v12, *a2);
    v10 = *a2;
    v11 = v6[1];
    *&transform.a = *v6;
    *&transform.c = v11;
    *&transform.tx = v6[2];
    CGContextConcatCTM(v10, &transform);
  }

  RB::Coverage::Primitive::fill(a1 + 8, a2, a3, v9, *v8.i8);
  if (v13)
  {
    transform = v12;
    CGContextSetCTM();
  }
}

uint64_t RB::DisplayList::ClipFactory::Visitor<RB::Coverage::Path>::visit(uint64_t a1, uint64_t a2)
{
  result = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,float const&,RB::ClipMode const&,RB::AffineTransform const* const&>(**(a1 + 8), **(a1 + 8), a2, (*(a1 + 8) + 8), (*(a1 + 8) + 12), (*(a1 + 8) + 16));
  *(*(a1 + 8) + 32) = result;
  return result;
}

void RB::DisplayList::GenericClip<RB::Coverage::Path>::clip(uint64_t a1, CGContextRef *a2)
{
  v10 = 0;
  memset(&v9, 0, sizeof(v9));
  v4 = *(a1 + 48);
  v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
  v6 = vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0];
  v10 = v6 >= 0;
  if ((v6 & 0x8000000000000000) == 0)
  {
    CGContextGetCTM(&v9, *a2);
    v7 = *a2;
    v8 = v4[1];
    *&transform.a = *v4;
    *&transform.c = v8;
    *&transform.tx = v4[2];
    CGContextConcatCTM(v7, &transform);
  }

  RB::Coverage::Path::clip((a1 + 56), a2);
  if (v10)
  {
    transform = v9;
    CGContextSetCTM();
  }
}

uint64_t RB::DisplayList::ClipFactory::Visitor<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::visit(uint64_t a1, _OWORD *a2, int8x16_t a3, double a4, double a5, double a6, int8x16_t a7, int8x16_t a8)
{
  result = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Primitive>,RB::Heap&,RB::Coverage::Primitive&,float &,RB::ClipMode &,RB::AffineTransform const*&>(**(a1 + 8), a3, a4, a5, a6, a7, a8, **(a1 + 8), a2, (*(a1 + 8) + 8), (*(a1 + 8) + 12), (*(a1 + 8) + 16));
  *(*(a1 + 8) + 32) = result;
  return result;
}

uint64_t RB::DisplayList::ClipFactory::Visitor<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::visit(uint64_t a1, uint64_t a2)
{
  result = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,float const&,RB::ClipMode const&,RB::AffineTransform const* const&>(**(a1 + 8), **(a1 + 8), a2, (*(a1 + 8) + 8), (*(a1 + 8) + 12), (*(a1 + 8) + 16));
  *(*(a1 + 8) + 32) = result;
  return result;
}

uint64_t RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Glyphs>,RB::Heap&,RB::Coverage::Glyphs const&,float const&,RB::ClipMode const&,RB::AffineTransform const* const&>(size_t *a1, RB::Heap *a2, RB::Coverage::Glyphs *a3, int *a4, int *a5, uint64_t *a6)
{
  v11 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v11 + 120 > a1[3])
  {
    v11 = RB::Heap::alloc_slow(a1, 0x78uLL, 7);
  }

  else
  {
    a1[2] = v11 + 120;
  }

  v12 = *a4;
  v13 = *a5;
  v14 = *a6;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 40) = 0;
  *(v11 + 32) = 0;
  *(v11 + 44) = v13;
  *v11 = &unk_1F0A3D200;
  *(v11 + 48) = v14;
  RB::Coverage::Glyphs::Glyphs((v11 + 56), a3, a2);
  *(v11 + 112) = v12;
  RB::DisplayList::GenericClip<RB::Coverage::Glyphs>::update_bounds(v11);
  return v11;
}

void RB::DisplayList::GenericClip<RB::Coverage::Glyphs>::update_bounds(uint64_t a1)
{
  if (*(a1 + 44) == 1)
  {
    v2 = 7.29112205e-304;
    v3 = vneg_f32(0x80000000800000);
  }

  else
  {
    if (*(a1 + 44))
    {
      return;
    }

    if (*(a1 + 112) == 0.0)
    {
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      return;
    }

    v2 = RB::Coverage::Glyphs::bounds((a1 + 56), *(a1 + 48), 0);
  }

  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
}

void *RB::DisplayList::GenericClip<RB::Coverage::Glyphs>::copy(uint64_t a1, RB::DisplayList::CachedTransform *this, uint64_t a3, int a4)
{
  v7 = *(*this + 8);
  if (a4)
  {
    v8 = *(a1 + 44) == 0;
  }

  else
  {
    v8 = *(a1 + 44);
  }

  v9 = RB::DisplayList::CachedTransform::transform_ctm(this, *(a1 + 48));
  if ((*(a1 + 45) & 4) != 0)
  {
    v10 = *(a1 + 45) & 4;
  }

  else if (*(*this + 288))
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = (v7[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v11 + 120 > v7[5])
  {
    v11 = RB::Heap::alloc_slow(v7 + 2, 0x78uLL, 7);
  }

  else
  {
    v7[4] = v11 + 120;
  }

  v12 = *(a1 + 112);
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 40) = 0;
  *(v11 + 32) = 0;
  *(v11 + 44) = v8;
  *(v11 + 45) = 0;
  *v11 = &unk_1F0A3D200;
  *(v11 + 48) = v9;
  RB::Coverage::Glyphs::Glyphs((v11 + 56), (a1 + 56), (v7 + 2));
  *(v11 + 112) = v12;
  RB::DisplayList::GenericClip<RB::Coverage::Glyphs>::update_bounds(v11);
  *(v11 + 32) = RB::DisplayList::CachedTransform::transform_metadata(this, *(a1 + 32), *(a1 + 40));
  *(v11 + 40) = v13;
  *(v11 + 45) |= v10;
  result = ((*(this + 3) + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((result + 2) > *(this + 4))
  {
    result = RB::Heap::alloc_slow(this + 1, 0x10uLL, 7);
  }

  else
  {
    *(this + 3) = result + 2;
  }

  *result = a3;
  result[1] = v11;
  return result;
}

uint64_t RB::DisplayList::GenericClip<RB::Coverage::Glyphs>::contains(uint64_t a1, float32x2_t a2, float32x2_t a3)
{
  if (*(a1 + 44) != 1)
  {
    return 0;
  }

  v11[2] = v6;
  v11[3] = v5;
  v11[4] = v3;
  v11[5] = v4;
  if (*(a1 + 112) == 0.0)
  {
    return 1;
  }

  v11[0] = COERCE_FLOAT32X2_T(RB::Coverage::Glyphs::bounds((a1 + 56), *(a1 + 48), 0));
  v11[1] = v10;
  return RB::Rect::intersects(v11, a2, a3) ^ 1;
}

__n128 RB::DisplayList::GenericClip<RB::Coverage::Glyphs>::render(float32x2_t *a1, double a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = a1[6];
  v6.i64[0] = SLODWORD(a2);
  v6.i64[1] = SHIDWORD(a2);
  v7 = v5[1];
  v8 = vaddq_f64(v5[2], vcvtq_f64_s64(v6));
  v10[0] = *v5;
  v10[1] = v7;
  v10[2] = v8;
  RB::render_glyphs_coverage(a4, v10, a1 + 7, a5, a1[14].f32[0]);
  return result;
}

uint64_t RB::DisplayList::GenericClip<RB::Coverage::Glyphs>::can_mix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 44) != *(a3 + 44))
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  can_mix = RB::can_mix(*(a1 + 48), *(a3 + 48), a3);
  if (!can_mix)
  {
    return 0;
  }

  v8 = can_mix;
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = 0xFFFFFFF000000000;
  v12 = 0;
  v13 = 1;
  v14 = 0;
  v9 = RB::Coverage::Glyphs::can_mix((a1 + 56), v11, (a3 + 56));
  if (v9 >= v8)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t RB::DisplayList::GenericClip<RB::Coverage::Glyphs>::mix(uint64_t a1, float *a2, uint64_t a3, float64x2_t *a4)
{
  v8 = *(*&a4->f64[0] + 8);
  RB::mix(*(a1 + 48), *(a3 + 48), a3, a2[4]);
  v19[0] = v9;
  v19[1] = v10;
  v19[2] = v11;
  v12 = *(a1 + 112);
  v13 = *(a3 + 112);
  v14 = a2[4];
  v15 = *(a1 + 44);
  v16 = RB::DisplayList::CachedTransform::transform_ctm(a4, v19);
  v17 = (v8[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v17 + 120 > v8[5])
  {
    v17 = RB::Heap::alloc_slow(v8 + 2, 0x78uLL, 7);
  }

  else
  {
    v8[4] = v17 + 120;
  }

  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 40) = 0;
  *(v17 + 32) = 0;
  *(v17 + 44) = v15;
  *(v17 + 45) = 0;
  *v17 = &unk_1F0A3D200;
  *(v17 + 48) = v16;
  RB::Coverage::Glyphs::Glyphs((v17 + 56), (a1 + 56), (v8 + 2));
  *(v17 + 112) = v12 + ((v13 - v12) * v14);
  RB::DisplayList::GenericClip<RB::Coverage::Glyphs>::update_bounds(v17);
  RB::Coverage::Glyphs::mix((v17 + 56), a2, (a3 + 56), *(a1 + 48), *(a3 + 48), v19, (v8 + 2));
  RB::DisplayList::GenericClip<RB::Coverage::Glyphs>::update_bounds(v17);
  return v17;
}

void RB::DisplayList::GenericClip<RB::Coverage::Glyphs>::clip(uint64_t a1, CGContextRef *a2)
{
  v10 = 0;
  memset(&v9, 0, sizeof(v9));
  v4 = *(a1 + 48);
  v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
  v6 = vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0];
  v10 = v6 >= 0;
  if ((v6 & 0x8000000000000000) == 0)
  {
    CGContextGetCTM(&v9, *a2);
    v7 = *a2;
    v8 = v4[1];
    *&transform.a = *v4;
    *&transform.c = v8;
    *&transform.tx = v4[2];
    CGContextConcatCTM(v7, &transform);
  }

  RB::Coverage::Glyphs::clip((a1 + 56), a2);
  if (v10)
  {
    transform = v9;
    CGContextSetCTM();
  }
}

void RB::DisplayList::GenericClip<RB::Coverage::Glyphs>::fill(float32x2_t *a1, CGContextRef *a2, RB::Fill::Color *a3)
{
  v13 = 0;
  memset(&v12, 0, sizeof(v12));
  v6 = a1[6];
  v7 = vandq_s8(vandq_s8(vceqq_f64(v6[1], xmmword_195E42770), vceqq_f64(*v6, xmmword_195E42760)), vceqzq_f64(v6[2]));
  v8 = vdupq_laneq_s64(v7, 1);
  v9 = vandq_s8(v8, v7);
  v13 = v9.i64[0] >= 0;
  if ((v9.i64[0] & 0x8000000000000000) == 0)
  {
    CGContextGetCTM(&v12, *a2);
    v10 = *a2;
    v11 = v6[1];
    *&transform.a = *v6;
    *&transform.c = v11;
    *&transform.tx = v6[2];
    CGContextConcatCTM(v10, &transform);
  }

  RB::Coverage::Glyphs::fill(a1 + 7, a2, a3, v9, *v8.i64);
  if (v13)
  {
    transform = v12;
    CGContextSetCTM();
  }
}

void *RB::DisplayList::GenericClip<RB::Coverage::Glyphs>::encode(uint64_t a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Glyphs>(this, 1, (a1 + 56));
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
    if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(this, 0x12uLL);
      RB::ProtobufEncoder::begin_length_delimited(this);
      RB::AffineTransform::encode(v4->f64, this);
      RB::ProtobufEncoder::end_length_delimited(this);
    }
  }

  v6 = *(a1 + 112);
  if (*&v6 != 1.0)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x1DuLL);
    RB::ProtobufEncoder::encode_fixed32(this, v6);
  }

  RB::ProtobufEncoder::end_length_delimited(this);

  return RB::DisplayList::Clip::encode(a1, this);
}

void RB::DisplayList::GenericClip<RB::Coverage::Glyphs>::print(uint64_t a1, RB::SexpString *this)
{
  RB::SexpString::push(this, "clip");
  RB::DisplayList::Clip::print(a1, this);
  v4 = *(a1 + 112);
  if (v4 != 1.0)
  {
    RB::SexpString::printf(this, 0, "(alpha %g)", v4);
  }

  RB::SexpString::print_ctm(this, *(a1 + 48));
  RB::XML::print_attributes<RB::Coverage::Glyphs>();
}

void *RB::Encoder::typed_message_field<RB::Coverage::Glyphs>(RB::Encoder *a1, uint64_t a2, CGFont **a3)
{
  RB::ProtobufEncoder::encode_varint(a1, (8 * a2) | 2);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RB::ProtobufEncoder::encode_varint(a1, 0x2AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RB::Coverage::Glyphs::encode(a3, a1);
  RB::ProtobufEncoder::end_length_delimited(a1);

  return RB::ProtobufEncoder::end_length_delimited(a1);
}

void sub_195D91EEC(_Unwind_Exception *exception_object)
{
  v3 = v1[2] - 1;
  v1[2] = v3;
  if (!v3)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>,RB::Heap&,RB::Coverage::Stroke<RBStrokeRef> const&,float const&,RB::ClipMode const&,RB::AffineTransform const* const&>(size_t *a1, uint64_t a2, uint64_t a3, int *a4, _DWORD *a5, uint64_t *a6)
{
  v10 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v10 + 112 > a1[3])
  {
    v10 = RB::Heap::alloc_slow(a1, 0x70uLL, 7);
  }

  else
  {
    a1[2] = v10 + 112;
  }

  v11 = *a4;
  v12 = *a5;
  v13 = *a6;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 40) = 0;
  *(v10 + 32) = 0;
  *(v10 + 44) = v12;
  *(v10 + 45) = 0;
  *v10 = &unk_1F0A3D168;
  *(v10 + 48) = v13;
  *(v10 + 56) = &unk_1F0A383A8;
  *(v10 + 64) = *(a3 + 8);
  *(v10 + 72) = *(a3 + 16);
  *(v10 + 88) = *(a3 + 32);
  *(v10 + 89) = *(a3 + 33);
  *(v10 + 91) = *(a3 + 35);
  *(v10 + 92) = *(a3 + 36);
  *(v10 + 96) = *(a3 + 40);
  *(v10 + 104) = v11;
  RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>::update_bounds(v10);
  return v10;
}

void sub_195D92050(_Unwind_Exception *a1)
{
  *(v1 + 56) = v2;

  _Unwind_Resume(a1);
}

void RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>::update_bounds(uint64_t a1)
{
  if (*(a1 + 44) == 1)
  {
    v2 = 0x100000001000000;
    v3 = vneg_f32(0x80000000800000);
  }

  else
  {
    if (*(a1 + 44))
    {
      return;
    }

    if (*(a1 + 104) == 0.0)
    {
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      return;
    }

    v2 = RB::Coverage::Stroke<RBStrokeRef>::bounds((a1 + 56), *(a1 + 48));
  }

  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
}

uint64_t RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>::~GenericClip(uint64_t a1)
{
  *(a1 + 56) = &unk_1F0A383A8;

  return a1;
}

void RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>::~GenericClip(uint64_t a1)
{
  *(a1 + 56) = &unk_1F0A383A8;

  JUMPOUT(0x19A8C09E0);
}

void *RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>::copy(uint64_t a1, RB::DisplayList::CachedTransform *this, uint64_t a3, int a4)
{
  v7 = *(*this + 8);
  if (a4)
  {
    v8 = *(a1 + 44) == 0;
  }

  else
  {
    v8 = *(a1 + 44);
  }

  v9 = RB::DisplayList::CachedTransform::transform_ctm(this, *(a1 + 48));
  if ((*(a1 + 45) & 4) != 0)
  {
    v10 = *(a1 + 45) & 4;
  }

  else if (*(*this + 288))
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = (v7[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v11 + 112 > v7[5])
  {
    v11 = RB::Heap::alloc_slow(v7 + 2, 0x70uLL, 7);
  }

  else
  {
    v7[4] = v11 + 112;
  }

  v12 = *(a1 + 104);
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 40) = 0;
  *(v11 + 32) = 0;
  *(v11 + 44) = v8;
  *(v11 + 45) = 0;
  *v11 = &unk_1F0A3D168;
  *(v11 + 48) = v9;
  *(v11 + 56) = &unk_1F0A383A8;
  *(v11 + 64) = *(a1 + 64);
  *(v11 + 72) = *(a1 + 72);
  *(v11 + 88) = *(a1 + 88);
  *(v11 + 89) = *(a1 + 89);
  *(v11 + 91) = *(a1 + 91);
  *(v11 + 92) = *(a1 + 92);
  *(v11 + 96) = *(a1 + 96);
  *(v11 + 104) = v12;
  RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>::update_bounds(v11);
  *(v11 + 32) = RB::DisplayList::CachedTransform::transform_metadata(this, *(a1 + 32), *(a1 + 40));
  *(v11 + 40) = v13;
  *(v11 + 45) |= v10;
  result = ((*(this + 3) + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((result + 2) > *(this + 4))
  {
    result = RB::Heap::alloc_slow(this + 1, 0x10uLL, 7);
  }

  else
  {
    *(this + 3) = result + 2;
  }

  *result = a3;
  result[1] = v11;
  return result;
}

void sub_195D92358(_Unwind_Exception *a1)
{
  *(v1 + 56) = v2;

  _Unwind_Resume(a1);
}

uint64_t RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>::contains(uint64_t a1, float32x2_t a2, float32x2_t a3)
{
  if (*(a1 + 44) != 1)
  {
    return 0;
  }

  v11[2] = v6;
  v11[3] = v5;
  v11[4] = v3;
  v11[5] = v4;
  if (*(a1 + 104) == 0.0)
  {
    return 1;
  }

  v11[0] = RB::Coverage::Stroke<RBStrokeRef>::bounds((a1 + 56), *(a1 + 48));
  v11[1] = v10;
  return RB::Rect::intersects(v11, a2, a3) ^ 1;
}

float RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>::min_scale(uint64_t a1)
{
  result = 0.0;
  if (!*(a1 + 88) && *(a1 + 92) == 1)
  {
    return 1.0;
  }

  return result;
}

void **RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>::prepare(void **result, uint64_t a2)
{
  if (*(result + 88) == 1)
  {
    return RBStrokeRef::prepare(result + 8, *(a2 + 1072));
  }

  return result;
}

void RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>::render(int32x2_t *a1, double a2, uint64_t a3, uint64_t *a4, int a5)
{
  v8 = a1[6];
  v9.i64[0] = SLODWORD(a2);
  v9.i64[1] = SHIDWORD(a2);
  v10 = *(*&v8 + 16);
  v11 = vaddq_f64(*(*&v8 + 32), vcvtq_f64_s64(v9));
  v13[0] = **&v8;
  v13[1] = v10;
  v13[2] = v11;
  v12 = *a1[13].i32;
  RB::Coverage::Stroke<RBStrokeRef>::get_info(a1 + 7, a4, v14);
  RB::render_stroke_coverage(a4, v13, &a1[7], v14, a5, v12);
}

uint64_t RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>::can_mix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 44) != *(a3 + 44))
  {
    return 0;
  }

  can_mix = RB::can_mix(*(a1 + 48), *(a3 + 48), a3);
  if (!can_mix)
  {
    return 0;
  }

  v6 = can_mix;
  if (*(a1 + 88) == *(a3 + 88) && *(a1 + 89) == *(a3 + 89) && *(a1 + 90) == *(a3 + 90) && *(a1 + 91) == *(a3 + 91) && *(a1 + 92) == *(a3 + 92) && *(a1 + 96) == *(a3 + 96))
  {
    LOBYTE(result) = RBStrokeRef::can_mix((a1 + 64), (a3 + 64));
  }

  else
  {
    LOBYTE(result) = 0;
  }

  if (result >= v6)
  {
    return v6;
  }

  else
  {
    return result;
  }
}

uint64_t RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>::mix(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = *(*&a4->f64[0] + 8);
  RB::mix(*(a1 + 48), *(a3 + 48), a3, *(a2 + 16));
  v17[0] = v9;
  v17[1] = v10;
  v17[2] = v11;
  v12 = *(a1 + 104) + ((*(a3 + 104) - *(a1 + 104)) * *(a2 + 16));
  v13 = *(a1 + 44);
  v14 = RB::DisplayList::CachedTransform::transform_ctm(a4, v17);
  v15 = (v8[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v15 + 112 > v8[5])
  {
    v15 = RB::Heap::alloc_slow(v8 + 2, 0x70uLL, 7);
  }

  else
  {
    v8[4] = v15 + 112;
  }

  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 40) = 0;
  *(v15 + 32) = 0;
  *(v15 + 44) = v13;
  *(v15 + 45) = 0;
  *v15 = &unk_1F0A3D168;
  *(v15 + 48) = v14;
  *(v15 + 56) = &unk_1F0A383A8;
  *(v15 + 64) = *(a1 + 64);
  *(v15 + 72) = *(a1 + 72);
  *(v15 + 88) = *(a1 + 88);
  *(v15 + 89) = *(a1 + 89);
  *(v15 + 91) = *(a1 + 91);
  *(v15 + 92) = *(a1 + 92);
  *(v15 + 96) = *(a1 + 96);
  *(v15 + 104) = v12;
  RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>::update_bounds(v15);
  *(v15 + 96) = *(v15 + 96) + ((*(a3 + 96) - *(v15 + 96)) * *(a2 + 16));
  *(v15 + 72) = 0x100000001000000;
  *(v15 + 80) = vneg_f32(0x80000000800000);
  RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>::update_bounds(v15);
  return v15;
}

void sub_195D92744(_Unwind_Exception *a1)
{
  *(v1 + 56) = v2;

  _Unwind_Resume(a1);
}

uint64_t RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>::clip(uint64_t a1, CGContextRef *a2)
{
  v11 = 0;
  memset(&v10, 0, sizeof(v10));
  v4 = *(a1 + 48);
  v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
  v6 = vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0];
  v11 = v6 >= 0;
  if ((v6 & 0x8000000000000000) == 0)
  {
    CGContextGetCTM(&v10, *a2);
    v7 = *a2;
    v8 = v4[1];
    *&transform.a = *v4;
    *&transform.c = v8;
    *&transform.tx = v4[2];
    CGContextConcatCTM(v7, &transform);
  }

  result = RBStrokeRef::clip(a1 + 64);
  if (v11)
  {
    transform = v10;
    return CGContextSetCTM();
  }

  return result;
}

uint64_t RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>::fill(uint64_t a1, CGContextRef *a2)
{
  v11 = 0;
  memset(&v10, 0, sizeof(v10));
  v4 = *(a1 + 48);
  v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
  v6 = vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0];
  v11 = v6 >= 0;
  if ((v6 & 0x8000000000000000) == 0)
  {
    CGContextGetCTM(&v10, *a2);
    v7 = *a2;
    v8 = v4[1];
    *&transform.a = *v4;
    *&transform.c = v8;
    *&transform.tx = v4[2];
    CGContextConcatCTM(v7, &transform);
  }

  result = RBStrokeRef::clip(a1 + 64);
  if (v11)
  {
    transform = v10;
    return CGContextSetCTM();
  }

  return result;
}

void *RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>::encode(uint64_t a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Stroke<RBStrokeRef>>(this, 1, a1 + 56);
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
    if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(this, 0x12uLL);
      RB::ProtobufEncoder::begin_length_delimited(this);
      RB::AffineTransform::encode(v4->f64, this);
      RB::ProtobufEncoder::end_length_delimited(this);
    }
  }

  v6 = *(a1 + 104);
  if (*&v6 != 1.0)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x1DuLL);
    RB::ProtobufEncoder::encode_fixed32(this, v6);
  }

  RB::ProtobufEncoder::end_length_delimited(this);

  return RB::DisplayList::Clip::encode(a1, this);
}

void RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>::print(uint64_t a1, RB::SexpString *this)
{
  RB::SexpString::push(this, "clip");
  RB::DisplayList::Clip::print(a1, this);
  v4 = *(a1 + 104);
  if (v4 != 1.0)
  {
    RB::SexpString::printf(this, 0, "(alpha %g)", v4);
  }

  RB::SexpString::print_ctm(this, *(a1 + 48));
  RB::XML::print_attributes<RB::Coverage::Stroke<RBStrokeRef>>();
}

int32x2_t *RB::Coverage::Stroke<RBStrokeRef>::get_info(int32x2_t *result, uint64_t *a2, uint64_t a3)
{
  *a3 = result[4].u8[0];
  *(a3 + 4) = *(result[4].i16 + 1);
  v4 = result[4].u8[3];
  *(a3 + 20) = 1065353216;
  *(a3 + 8) = v4;
  *(a3 + 12) = result[4].i8[4];
  *(a3 + 16) = result[5].i32[0];
  v5 = a3 + 20;
  *(a3 + 24) = 1;
  v6 = (a3 + 24);
  *(v5 + 12) = 0;
  if (result[4].i8[0] == 1)
  {
    result = RBStrokeRef::texture(&result[1], *a2, v6, v5);
    *(a3 + 32) = result;
  }

  return result;
}

void *RB::Encoder::typed_message_field<RB::Coverage::Stroke<RBStrokeRef>>(RB::ProtobufEncoder *a1, uint64_t a2, uint64_t a3)
{
  RB::ProtobufEncoder::encode_varint(a1, (8 * a2) | 2);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RB::ProtobufEncoder::encode_varint(a1, 0x22uLL);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RBStrokeRef::encode((a3 + 8), a3, a1);
  RB::ProtobufEncoder::end_length_delimited(a1);

  return RB::ProtobufEncoder::end_length_delimited(a1);
}

void sub_195D92D04(_Unwind_Exception *exception_object)
{
  v3 = v1[2] - 1;
  v1[2] = v3;
  if (!v3)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::DisplayList::ItemFactory::operator()<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (!v4 || (v8[0] = xmmword_195E42760, v8[1] = xmmword_195E42770, v9 = 0, v10 = 0, v5 = RB::Coverage::Stroke<RB::Coverage::StrokeablePath>::bounds(a2, v8), result = RB::Rect::intersects(v4, v5, v6), (result & 1) != 0))
  {
    *&v8[0].f64[0] = a1;
    *&v8[0].f64[1] = a2;
    return RBFillData::apply<RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>>(*(a1 + 32), v8);
  }

  return result;
}

uint64_t RB::DisplayList::ItemFactory::operator()<RB::Coverage::Stroke<RBStrokeRef>>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if (!v4 || (v8[0] = xmmword_195E42760, v8[1] = xmmword_195E42770, v9 = 0, v10 = 0, v5 = RB::Coverage::Stroke<RBStrokeRef>::bounds(a2, v8), result = RB::Rect::intersects(v4, v5, v6), (result & 1) != 0))
  {
    *&v8[0].f64[0] = a1;
    *&v8[0].f64[1] = a2;
    return RBFillData::apply<RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RBStrokeRef>>>(*(a1 + 32), v8);
  }

  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Path>::operator()<RB::Fill::Gradient>(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if (*(*a1 + 48) == 1)
  {
    v12[0] = &unk_1F0A3BA78;
    v12[1] = a1;
    v12[2] = a2;
    RB::Coverage::Path::simplify(a1[1], v12);
    v4 = *a1;
  }

  result = *(v4 + 56);
  if (!result)
  {
    result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Gradient>,RB::Heap&,RB::Coverage::Path const&,RB::Fill::Gradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v4, *v4, a1[1], a2, (v4 + 8), (v4 + 16), (v4 + 20), (v4 + 24));
    v4 = *a1;
    _S0 = *(*a1 + 28);
    if (_S0 != 0.0)
    {
      __asm { FCVT            H0, S0 }

      *(result + 69) = _H0;
    }

    *(v4 + 56) = result;
  }

  if (*(v4 + 48) == 1)
  {
    *(result + 23) |= 0x2000u;
  }

  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Path>::operator()<RB::Fill::MeshGradient>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (*(*a1 + 48) == 1)
  {
    v12[0] = &unk_1F0A3DB78;
    v12[1] = a1;
    v12[2] = a2;
    RB::Coverage::Path::simplify(a1[1], v12);
    v4 = *a1;
  }

  result = *(v4 + 56);
  if (!result)
  {
    result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::MeshGradient>,RB::Heap&,RB::Coverage::Path const&,RB::Fill::MeshGradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v4, *v4, a1[1], a2, (v4 + 8), (v4 + 16), (v4 + 20), (v4 + 24));
    v4 = *a1;
    _S0 = *(*a1 + 28);
    if (_S0 != 0.0)
    {
      __asm { FCVT            H0, S0 }

      *(result + 63) = _H0;
    }

    *(v4 + 56) = result;
  }

  if (*(v4 + 48) == 1)
  {
    *(result + 23) |= 0x2000u;
  }

  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Path>::operator()<RB::Fill::Image<RB::ImageTexture>>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (*(*a1 + 48) == 1)
  {
    v12[0] = &unk_1F0A3BAB8;
    v12[1] = a1;
    v12[2] = a2;
    RB::Coverage::Path::simplify(a1[1], v12);
    v4 = *a1;
  }

  result = *(v4 + 56);
  if (!result)
  {
    result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>,RB::Heap&,RB::Coverage::Path const&,RB::Fill::Image<RB::ImageTexture> const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v4, *v4, a1[1], a2, (v4 + 8), (v4 + 16), (v4 + 20), (v4 + 24));
    v4 = *a1;
    _S0 = *(*a1 + 28);
    if (_S0 != 0.0)
    {
      __asm { FCVT            H0, S0 }

      *(result + 91) = _H0;
    }

    *(v4 + 56) = result;
  }

  if (*(v4 + 48) == 1)
  {
    *(result + 23) |= 0x2000u;
  }

  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Path>::operator()<RB::Fill::Custom>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (*(*a1 + 48) == 1)
  {
    v6[0] = &unk_1F0A3BA98;
    v6[1] = a1;
    v6[2] = a2;
    RB::Coverage::Path::simplify(a1[1], v6);
    v4 = *a1;
  }

  result = *(v4 + 56);
  if (!result)
  {
    result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Custom>,RB::Heap&,RB::Coverage::Path const&,RB::Fill::Custom const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v4, *v4, a1[1], a2, (v4 + 8), (v4 + 16), (v4 + 20));
    v4 = *a1;
    *(*a1 + 56) = result;
  }

  if (*(v4 + 48) == 1)
  {
    *(result + 23) |= 0x2000u;
  }

  return result;
}

void *RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Path,RB::Fill::Color>::visit(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::Color const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 5, *v2 + 12);
  _S0 = *(v3 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 77) = _H0;
  }

  v3[7] = result;
  return result;
}

void RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Color>::render(float32x2_t *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[3];
  _H0 = a1[5].i16[2];
  __asm { FCVT            S8, H0 }

  v11 = a1[5].i16[3] & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(&v20, v12, v13, v14, v15);
  if (*(a2 + 88) != v5 || !RB::Bounds::contains((a2 + 96), *&v20, *(&v20 + 8)))
  {
    v18 = 0;
LABEL_10:
    RB::CGContext::update_state_slow(a2, v4, v5, v11, &v20, v18, _S8);
    goto LABEL_11;
  }

  v18 = 1;
  if (*(a2 + 80) != v4)
  {
    goto LABEL_10;
  }

  v16.i32[0] = *(a2 + 140);
  if (v16.f32[0] != _S8 || *(a2 + 144) != v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  RB::Coverage::Primitive::fill(a1 + 8, a2, &a1[14], v16, v17);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Gradient>::render(float32x2_t *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[3];
  _H0 = a1[5].i16[2];
  __asm { FCVT            S8, H0 }

  v11 = a1[5].i16[3] & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(v27, v12, v13, v14, v15);
  if (*(a2 + 88) != v5 || !RB::Bounds::contains((a2 + 96), *&v27[0].f64[0], *&v27[0].f64[1]))
  {
    v16 = 0;
LABEL_10:
    RB::CGContext::update_state_slow(a2, v4, v5, v11, v27, v16, _S8);
    goto LABEL_11;
  }

  v16 = 1;
  if (*(a2 + 80) != v4)
  {
    goto LABEL_10;
  }

  if (*(a2 + 140) != _S8 || *(a2 + 144) != v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  RB::CGContext::save(a2);
  RB::Coverage::Primitive::clip(a1 + 8, a2);
  v27[0] = xmmword_195E42760;
  v27[1] = xmmword_195E42770;
  v28 = 0;
  v29 = 0;
  v22 = RB::Coverage::Primitive::bounds(a1 + 8, v27, xmmword_195E42760, xmmword_195E42770, v18, v19, v20, v21);
  RB::Bounds::Bounds(&v30, v22, v23, v24, v25);
  *v26.f32 = v30;
  RB::Fill::Gradient::fill(a1 + 14, a2, v26);
  RB::CGContext::restore(a2);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::render(float32x2_t *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[3];
  _H0 = a1[5].i16[2];
  __asm { FCVT            S8, H0 }

  v11 = a1[5].i16[3] & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(v23, v12, v13, v14, v15);
  if (*(a2 + 88) != v5 || !RB::Bounds::contains((a2 + 96), *&v23[0].f64[0], *&v23[0].f64[1]))
  {
    v16 = 0;
LABEL_10:
    RB::CGContext::update_state_slow(a2, v4, v5, v11, v23, v16, _S8);
    goto LABEL_11;
  }

  v16 = 1;
  if (*(a2 + 80) != v4)
  {
    goto LABEL_10;
  }

  if (*(a2 + 140) != _S8 || *(a2 + 144) != v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  RB::CGContext::save(a2);
  RB::Coverage::StrokeablePath::clip(&a1[8], &a1[7], a2);
  v23[0] = xmmword_195E42760;
  v23[1] = xmmword_195E42770;
  v24 = 0;
  v25 = 0;
  v18 = RB::Coverage::Stroke<RB::Coverage::StrokeablePath>::bounds(&a1[7], v23);
  RB::Bounds::Bounds(&v26, v18, v19, v20, v21);
  *v22.f32 = v26;
  RB::Fill::Gradient::fill(a1 + 18, a2, v22);
  RB::CGContext::restore(a2);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>::render(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 24);
  _H0 = *(a1 + 44);
  __asm { FCVT            S8, H0 }

  v11 = *(a1 + 46) & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(&v18, v12, v13, v14, v15);
  if (*(a2 + 88) != v5 || !RB::Bounds::contains((a2 + 96), *&v18, *(&v18 + 8)))
  {
    v16 = 0;
LABEL_10:
    RB::CGContext::update_state_slow(a2, v4, v5, v11, &v18, v16, _S8);
    goto LABEL_11;
  }

  v16 = 1;
  if (*(a2 + 80) != v4)
  {
    goto LABEL_10;
  }

  if (*(a2 + 140) != _S8 || *(a2 + 144) != v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  RB::Coverage::StrokeablePath::fill(a1 + 64, a1 + 56, a2, a1 + 144);
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::Color const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, float *a6, _DWORD *a7, __int16 *a8)
{
  v16 = *(this + 3);
  v17 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v17 + 160 > v16)
  {
    v17 = RB::Heap::alloc_slow(this, 0xA0uLL, 7);
  }

  else
  {
    *(this + 2) = v17 + 160;
  }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>::GenericItem1(v17, a2, a3, a4, *a5, *a7, *a8, *a6);
  *result = &unk_1F0A3C268;
  return result;
}

void RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Gradient>::render(float32x2_t *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[3];
  _H0 = a1[5].i16[2];
  __asm { FCVT            S8, H0 }

  v11 = a1[5].i16[3] & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(v23, v12, v13, v14, v15);
  if (*(a2 + 88) != v5 || !RB::Bounds::contains((a2 + 96), *&v23[0], *(v23 + 8)))
  {
    v16 = 0;
LABEL_10:
    RB::CGContext::update_state_slow(a2, v4, v5, v11, v23, v16, _S8);
    goto LABEL_11;
  }

  v16 = 1;
  if (*(a2 + 80) != v4)
  {
    goto LABEL_10;
  }

  if (*(a2 + 140) != _S8 || *(a2 + 144) != v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  RB::CGContext::save(a2);
  RB::Coverage::Path::clip(&a1[7], a2);
  v23[0] = xmmword_195E42760;
  v23[1] = xmmword_195E42770;
  v24 = 0;
  v25 = 0;
  v27.var0 = &a1[7];
  v27.var1 = v23;
  v18 = RB::Coverage::Path::bounds(v27);
  RB::Bounds::Bounds(&v26, *&v18, v19, v20, v21);
  *v22.f32 = v26;
  RB::Fill::Gradient::fill(a1 + 11, a2, v22);
  RB::CGContext::restore(a2);
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Gradient>,RB::Heap&,RB::Coverage::Path const&,RB::Fill::Gradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, size_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, float *a6, _DWORD *a7, __int16 *a8)
{
  v16 = *(this + 3);
  v17 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v17 + 152 > v16)
  {
    v17 = RB::Heap::alloc_slow(this, 0x98uLL, 7);
  }

  else
  {
    *(this + 2) = v17 + 152;
  }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Gradient>::GenericItem1(v17, a2, a3, a4, *a5, *a7, *a8, *a6);
  *result = &unk_1F0A3CBF8;
  return result;
}

unint64_t RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Path,RB::Fill::Gradient>::visit(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Gradient>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::Gradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 10, *v2 + 12);
  _S0 = *(v3 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 162) = _H0;
  }

  v3[7] = result;
  return result;
}

void *RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Path,RB::Fill::Gradient>::visit(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::Gradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 5, *v2 + 12);
  _S0 = *(v3 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 97) = _H0;
  }

  v3[7] = result;
  return result;
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::Gradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, RB::Heap *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, float *a6, _DWORD *a7, __int16 *a8)
{
  v16 = *(this + 3);
  v17 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v17 + 208 > v16)
  {
    v17 = RB::Heap::alloc_slow(this, 0xD0uLL, 7);
  }

  else
  {
    *(this + 2) = v17 + 208;
  }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::GenericItem1(v17, a2, a3, a4, *a5, *a7, *a8, *a6);
  *result = &unk_1F0A3BF38;
  return result;
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::MeshGradient>,RB::Heap&,RB::Coverage::Path const&,RB::Fill::MeshGradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, size_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, float *a6, _DWORD *a7, __int16 *a8)
{
  v16 = *(this + 3);
  v17 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v17 + 136 > v16)
  {
    v17 = RB::Heap::alloc_slow(this, 0x88uLL, 7);
  }

  else
  {
    *(this + 2) = v17 + 136;
  }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::MeshGradient>::GenericItem1(v17, a2, a3, a4, *a5, *a7, *a8, *a6);
  *result = &unk_1F0A3DFF8;
  return result;
}

unint64_t RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Path,RB::Fill::MeshGradient>::visit(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::MeshGradient>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::MeshGradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 10, *v2 + 12);
  _S0 = *(v3 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 150) = _H0;
  }

  v3[7] = result;
  return result;
}

void *RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Path,RB::Fill::MeshGradient>::visit(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::MeshGradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 5, *v2 + 12);
  _S0 = *(v3 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 91) = _H0;
  }

  v3[7] = result;
  return result;
}

unint64_t RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::MeshGradient>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::MeshGradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(size_t *a1, RB::Heap *a2, __int128 *a3, uint64_t a4, uint64_t *a5, int *a6, __int16 *a7, __int16 *a8)
{
  v15 = (a1[2] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v15 + 160 > a1[3])
  {
    v15 = RB::Heap::alloc_slow(a1, 0xA0uLL, 15);
  }

  else
  {
    a1[2] = v15 + 160;
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
  *(v15 + 46) = v18 & 0x3F | 0x4000;
  *v15 = &unk_1F0A3DCA8;
  *(v15 + 48) = v16;
  v24 = *a3;
  v25 = a3[1];
  *(v15 + 95) = *(a3 + 31);
  *(v15 + 64) = v24;
  *(v15 + 80) = v25;
  RB::Fill::MeshGradient::MeshGradient(v15 + 112, a4, v19, a2);
  *v15 = &unk_1F0A3DB98;
  return v15;
}

void *RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::MeshGradient>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3DCA8;
  v2 = a1[15];
  if (v2 && atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::MeshGradient>::~GenericItem();
  }

  return a1;
}

void RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::MeshGradient>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3DCA8;
  v1 = a1[15];
  if (v1 && atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::MeshGradient>::~GenericItem();
  }

  JUMPOUT(0x19A8C09E0);
}

__n128 RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::MeshGradient>::copy(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v6 = *(a1 + 46) & 0x3F;
  v4 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage9PrimitiveENS_4Fill12MeshGradientEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v3 + 16), (v3 + 16), (a1 + 64), a1 + 112, (a1 + 48), (a1 + 44), &v6);
  result = *(a1 + 16);
  v4[1] = result;
  v4[2].n128_u64[0] = *(a1 + 32);
  v4[2].n128_u32[2] = *(a1 + 40);
  v4[2].n128_u16[7] |= *(a1 + 46) & 0x7000;
  return result;
}

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::MeshGradient>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

unint64_t RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::MeshGradient>::copy_shadow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 92) & 0x10) != 0)
  {
    return 0;
  }

  v28 = 0.0;
  if (!RB::Fill::MeshGradient::get_alpha((a1 + 112), &v28) || (RB::DisplayList::Item::clip_affects_blurred_bounds(a1, *(a3 + 64)) & 1) != 0)
  {
    return 0;
  }

  memset(v25, 0, sizeof(v25));
  v26 = 1065353216;
  v27[0] = 0;
  *(v27 + 7) = 0;
  v7 = *(a3 + 16);
  v8 = *(a1 + 48);
  v9 = *v8;
  v10 = v8[2];
  v30 = v8[1];
  v31 = v10;
  v29 = v9;
  if (RB::AffineTransform::invert(&v29))
  {
    v11 = &v29;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11[1];
  v13 = v11[2];
  v24[0] = *v11;
  v24[1] = v12;
  v24[2] = v13;
  v14.f64[0] = RB::operator*(v7, v24);
  v29 = v14;
  v30 = v15;
  v31 = v16;
  shadow = RB::Coverage::Primitive::make_shadow((a1 + 64), &v29, *(a3 + 64), &v28, (*(a3 + 92) >> 2) & 1, v25);
  result = 0;
  if (shadow)
  {
    _H1 = *(a1 + 44);
    __asm { FCVT            S1, H1 }

    result = RB::DisplayList::ShadowStyle::make_primitive(a3, a2, v25, *(a1 + 48), *(a1 + 46) & 0x3F, v28, _S1);
    *(result + 16) = *(a1 + 16);
    *(result + 32) = *(a1 + 32);
    *(result + 40) = *(a1 + 40);
  }

  return result;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::MeshGradient>::make_clip(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v27 = 0.0;
  v28 = a3;
  if (!RB::Fill::MeshGradient::get_alpha((a1 + 112), &v27))
  {
    return RB::DisplayList::Item::make_clip(a1, a2, a3, a4, a5);
  }

  v16 = *(a2 + 8);
  _Q0.i16[0] = *(a1 + 44);
  __asm { FCVT            S0, H0 }

  *&v11 = a5 * v27;
  *_Q0.i32 = *_Q0.i32 * (a5 * v27);
  v26 = _Q0.i32[0];
  v21 = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Primitive>,RB::Heap&,RB::Coverage::Primitive&,float &,RB::ClipMode &,RB::AffineTransform const*&>((v16 + 16), _Q0, v11, v12, v13, v14, v15, v16 + 16, (a1 + 64), &v26, &v28, (a1 + 48));
  v22 = a4[5];
  v23 = v22 + 1;
  if (a4[6] < (v22 + 1))
  {
    RB::vector<RB::DisplayList::Clip *,4ul,unsigned long>::reserve_slow(a4, v23);
    v22 = a4[5];
    v23 = v22 + 1;
  }

  v24 = a4[4];
  if (!v24)
  {
    v24 = a4;
  }

  v24[v22] = v21;
  a4[5] = v23;
  return (**a1)(a1);
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::MeshGradient>::color_info(uint64_t a1, float a2, float a3)
{
  LOWORD(a2) = *(a1 + 148);
  LOWORD(a3) = *(a1 + 150);
  if (*&a3 >= *&a2 || *&a3 == COERCE_SHORT_FLOAT(0))
  {
    LOWORD(a3) = *(a1 + 148);
  }

  return (LODWORD(a2) << 16) | (LODWORD(a3) << 32) | *(a1 + 156);
}

float RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::MeshGradient>::min_scale(uint64_t a1)
{
  result = 0.0;
  if (*(a1 + 108) >= 2u && *(a1 + 109) == 1)
  {
    return 1.0;
  }

  return result;
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::MeshGradient>::has_no_effect(uint64_t a1)
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    return RB::may_discard_alpha(*(a1 + 46) & 0x3F);
  }

  else
  {
    return 0;
  }
}

void RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::MeshGradient>::render(float32x4_t *a1, double a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  v6 = a1[3].i64[0];
  v7.i64[0] = SLODWORD(a2);
  v7.i64[1] = SHIDWORD(a2);
  v8 = v6[1];
  _Q0 = vaddq_f64(v6[2], vcvtq_f64_s64(v7));
  v14[0] = *v6;
  v14[1] = v8;
  v14[2] = _Q0;
  LOWORD(_Q0.f64[0]) = a1[2].i16[6];
  __asm { FCVT            S0, H0 }

  RB::render_primitive(a4, v14, a1 + 4, &a1[7], a5, a6, *_Q0.f64);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::MeshGradient>::render(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 24);
  _H0 = *(a1 + 44);
  __asm { FCVT            S8, H0 }

  v11 = *(a1 + 46) & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(v26, v12, v13, v14, v15);
  if (*(a2 + 88) != v5 || !RB::Bounds::contains((a2 + 96), *&v26[0].f64[0], *&v26[0].f64[1]))
  {
    v16 = 0;
LABEL_10:
    RB::CGContext::update_state_slow(a2, v4, v5, v11, v26, v16, _S8);
    goto LABEL_11;
  }

  v16 = 1;
  if (*(a2 + 80) != v4)
  {
    goto LABEL_10;
  }

  if (*(a2 + 140) != _S8 || *(a2 + 144) != v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  RB::CGContext::save(a2);
  RB::Coverage::Primitive::clip((a1 + 64), a2);
  v26[0] = xmmword_195E42760;
  v26[1] = xmmword_195E42770;
  v27 = 0;
  v28 = 0;
  v22 = RB::Coverage::Primitive::bounds((a1 + 64), v26, xmmword_195E42760, xmmword_195E42770, v18, v19, v20, v21);
  RB::Bounds::Bounds(v29, v22, v23, v24, v25);
  RB::Fill::MeshGradient::fill((a1 + 112), a2, v29[0], v29[1]);
  RB::CGContext::restore(a2);
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::MeshGradient>::prepare_mix(float64x2_t **a1, RB::DisplayList::Interpolator::Contents *a2, unint64_t *a3, float64x2_t **a4)
{
  result = (*&(*a4)[1].f64[0])(a4);
  if (result == 20975617)
  {
    result = RB::DisplayList::Item::may_mix(a1, a2, a4, v9);
    if (result)
    {
      v11 = result;
      result = RB::can_mix(a1[6], a4[6], v10);
      if (result < v11)
      {
        v11 = result;
      }

      if (result)
      {
        result = RB::Coverage::Primitive::can_mix((a1 + 8), a3, (a4 + 8));
        if (result)
        {
          v13 = result;
          can_mix = RB::Fill::MeshGradient::can_mix((a1 + 14), (a4 + 14), v12);

          return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v13, can_mix);
        }
      }
    }
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::MeshGradient>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v15[0] = v10;
  v15[1] = v11;
  v15[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v15);
  v13.i32[0] = *(a2 + 16);
  RB::Fill::MeshGradient::mix((v8 + 112), *(a2 + 8), (a3 + 112), v13, (*(*&a4->f64[0] + 8) + 16));
  RB::operator*(a1[6], a4 + 68);
  RB::operator*(*(a3 + 48), a4 + 68);
  RB::Coverage::Primitive::mix(v8 + 64, a2, a3 + 64);
  if ((*(v8 + 46) & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::MeshGradient>::encode(float32x4_t *a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Primitive>(this, 1, a1 + 4);
  RB::Encoder::typed_message_field<RB::Fill::MeshGradient>(this, 2, &a1[7]);
  v4 = a1[3].i64[0];
  if (v4)
  {
    v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
    if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(this, 0x1AuLL);
      RB::ProtobufEncoder::begin_length_delimited(this);
      RB::AffineTransform::encode(v4->f64, this);
      RB::ProtobufEncoder::end_length_delimited(this);
    }
  }

  RB::ProtobufEncoder::end_length_delimited(this);

  return RB::DisplayList::Item::encode(a1, this);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::MeshGradient>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Primitive>();
}

unint64_t _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage9PrimitiveENS_4Fill12MeshGradientEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(size_t *a1, RB::Heap *a2, __int128 *a3, uint64_t a4, uint64_t *a5, __int16 *a6, __int16 *a7)
{
  v13 = (a1[2] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v13 + 160 > a1[3])
  {
    v13 = RB::Heap::alloc_slow(a1, 0xA0uLL, 15);
  }

  else
  {
    a1[2] = v13 + 160;
  }

  v14 = *a5;
  v15 = *a6;
  v16 = *a7;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 40) = 0;
  *(v13 + 32) = 0;
  *(v13 + 44) = v15;
  *(v13 + 46) = v16 & 0x3F | 0x4000;
  *v13 = &unk_1F0A3DCA8;
  *(v13 + 48) = v14;
  v17 = *a3;
  v18 = a3[1];
  *(v13 + 95) = *(a3 + 31);
  *(v13 + 64) = v17;
  *(v13 + 80) = v18;
  RB::Fill::MeshGradient::MeshGradient(v13 + 112, a4, 0, a2);
  *v13 = &unk_1F0A3DB98;
  return v13;
}

__n128 RB::DisplayList::GenericItemCopyVisitor<RB::Fill::MeshGradient>::visit_<RB::Coverage::Primitive>(void *a1, __int128 *a2)
{
  v3 = a1[3];
  v4 = a1[1];
  v5 = a1[2];
  v9 = *(v5 + 46) & 0x3F;
  v6 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage9PrimitiveENS_4Fill12MeshGradientEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a2, v3, a1 + 4, (v5 + 44), &v9);
  a1[5] = v6;
  v7 = a1[2];
  result = v7[1];
  v6[1] = result;
  v6[2].n128_u64[0] = v7[2].n128_u64[0];
  v6[2].n128_u32[2] = v7[2].n128_u32[2];
  v6[2].n128_u16[7] |= v7[2].n128_u16[7] & 0x7000;
  return result;
}

__n128 RB::DisplayList::GenericItemCopyVisitor<RB::Fill::MeshGradient>::visit_<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[1];
  v5 = a1[2];
  v9 = *(v5 + 46) & 0x3F;
  v6 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeINS4_14StrokeablePathEEENS_4Fill12MeshGradientEEEJRS0_RKS7_RKS9_RPKNS_15AffineTransformERKDF16_NS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a2, v3, a1 + 4, (v5 + 44), &v9);
  a1[5] = v6;
  v7 = a1[2];
  result = v7[1];
  v6[1] = result;
  v6[2].n128_u64[0] = v7[2].n128_u64[0];
  v6[2].n128_u32[2] = v7[2].n128_u32[2];
  v6[2].n128_u16[7] |= v7[2].n128_u16[7] & 0x7000;
  return result;
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeINS4_14StrokeablePathEEENS_4Fill12MeshGradientEEEJRS0_RKS7_RKS9_RPKNS_15AffineTransformERKDF16_NS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, RB::Heap *a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v15 + 192 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0xC0uLL, 7);
  }

  else
  {
    *(this + 2) = v15 + 192;
  }

  _H0 = *a6;
  __asm { FCVT            S0, H0 }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::GenericItem1(v15, a2, a3, a4, *a5, *a7, 0, _S0);
  *result = &unk_1F0A3DDD8;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::GenericItem1(uint64_t a1, RB::Heap *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, __int16 a7, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F | 0x4000;
  *a1 = &unk_1F0A3DEE8;
  *(a1 + 48) = a5;
  *(a1 + 56) = &unk_1F0A38388;
  RB::Coverage::StrokeablePath::StrokeablePath(a1 + 64, a3 + 8, a2);
  *(a1 + 112) = *(a3 + 56);
  *(a1 + 128) = *(a3 + 72);
  *(a1 + 129) = *(a3 + 73);
  *(a1 + 131) = *(a3 + 75);
  *(a1 + 132) = *(a3 + 76);
  *(a1 + 136) = *(a3 + 80);
  RB::Fill::MeshGradient::MeshGradient(a1 + 144, a4, a7, a2);
  return a1;
}

void sub_195D94BB0(_Unwind_Exception *a1)
{
  v1[7] = v2;
  RBPathRelease(v1[8], v1[9]);
  _Unwind_Resume(a1);
}

void *RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3DEE8;
  v2 = a1[19];
  if (v2 && atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::MeshGradient>::~GenericItem();
  }

  a1[7] = &unk_1F0A38388;
  RBPathRelease(a1[8], a1[9]);
  return a1;
}

void RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3DEE8;
  v2 = a1[19];
  if (v2 && atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::MeshGradient>::~GenericItem();
  }

  a1[7] = &unk_1F0A38388;
  RBPathRelease(a1[8], a1[9]);

  JUMPOUT(0x19A8C09E0);
}

void *RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::copy(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (*(a2 + 8) + 16);
  v5 = *(a1 + 46);
  if (a3 & 2 | v5 & 0x2000 || *(a2 + 288) != 1)
  {
    v8 = 0;
LABEL_6:
    LODWORD(v9[0]) = v5 & 0x3F;
    result = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeINS4_14StrokeablePathEEENS_4Fill12MeshGradientEEEJRS0_RKS7_RKS9_RPKNS_15AffineTransformERKDF16_NS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a1 + 56, a1 + 144, (a1 + 48), (a1 + 44), v9);
    *(result + 1) = *(a1 + 16);
    result[4] = *(a1 + 32);
    *(result + 10) = *(a1 + 40);
    v7 = *(result + 23) | *(a1 + 46) & 0x7000;
    *(result + 23) = v7;
    goto LABEL_7;
  }

  v9[0] = &unk_1F0A3DDB8;
  v9[1] = v4;
  v9[2] = a1;
  v9[3] = (a1 + 144);
  v9[4] = *(a1 + 48);
  v10 = 0;
  RB::Coverage::StrokeablePath::simplify(a1 + 64, a1 + 56, v9);
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

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::make_clip(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v23 = 0.0;
  v24 = a3;
  if (!RB::Fill::MeshGradient::get_alpha((a1 + 144), &v23))
  {
    return RB::DisplayList::Item::make_clip(a1, a2, a3, a4, a5);
  }

  v10 = *(a2 + 8);
  _H0 = *(a1 + 44);
  __asm { FCVT            S0, H0 }

  v22 = _S0 * (a5 * v23);
  v17 = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath>&,float &,RB::ClipMode &,RB::AffineTransform const*&>((v10 + 16), v10 + 16, a1 + 56, &v22, &v24, (a1 + 48));
  v18 = a4[5];
  v19 = v18 + 1;
  if (a4[6] < (v18 + 1))
  {
    RB::vector<RB::DisplayList::Clip *,4ul,unsigned long>::reserve_slow(a4, v19);
    v18 = a4[5];
    v19 = v18 + 1;
  }

  v20 = a4[4];
  if (!v20)
  {
    v20 = a4;
  }

  v20[v18] = v17;
  a4[5] = v19;
  return (**a1)(a1);
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::color_info(uint64_t a1, float a2, float a3)
{
  LOWORD(a2) = *(a1 + 180);
  LOWORD(a3) = *(a1 + 182);
  if (*&a3 >= *&a2 || *&a3 == COERCE_SHORT_FLOAT(0))
  {
    LOWORD(a3) = *(a1 + 180);
  }

  return (LODWORD(a2) << 16) | (LODWORD(a3) << 32) | *(a1 + 188);
}

float RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::min_scale(uint64_t a1)
{
  result = 0.0;
  if (!*(a1 + 128) && *(a1 + 132) == 1)
  {
    return 1.0;
  }

  return result;
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::has_no_effect(uint64_t a1)
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    return RB::may_discard_alpha(*(a1 + 46) & 0x3F);
  }

  else
  {
    return 0;
  }
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::render(uint64_t a1, double a2, uint64_t a3, int32x2_t *a4, char a5, int a6)
{
  v6 = *(a1 + 48);
  v7.i64[0] = SLODWORD(a2);
  v7.i64[1] = SHIDWORD(a2);
  v8 = *(v6 + 16);
  v9 = vaddq_f64(*(v6 + 32), vcvtq_f64_s64(v7));
  v16[0] = *v6;
  v16[1] = v8;
  v16[2] = v9;
  _H0 = *(a1 + 44);
  v17 = *(a1 + 128);
  v18 = *(a1 + 129);
  v19 = *(a1 + 131);
  v20 = *(a1 + 132);
  v21 = *(a1 + 136);
  v22 = 1065353216;
  v23 = 1;
  v24 = 0;
  if (v17 == 1)
  {
    abort();
  }

  __asm { FCVT            S0, H0 }

  RB::render_stroke(a4, v16, a1 + 56, &v17, (a1 + 144), a5, a6, _S0);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::render(int32x2_t *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[3];
  _H0 = a1[5].i16[2];
  __asm { FCVT            S8, H0 }

  v11 = a1[5].i16[3] & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(v22, v12, v13, v14, v15);
  if (*(a2 + 88) != v5 || !RB::Bounds::contains((a2 + 96), *&v22[0].f64[0], *&v22[0].f64[1]))
  {
    v16 = 0;
LABEL_10:
    RB::CGContext::update_state_slow(a2, v4, v5, v11, v22, v16, _S8);
    goto LABEL_11;
  }

  v16 = 1;
  if (*(a2 + 80) != v4)
  {
    goto LABEL_10;
  }

  if (*(a2 + 140) != _S8 || *(a2 + 144) != v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  RB::CGContext::save(a2);
  RB::Coverage::StrokeablePath::clip(&a1[8], &a1[7], a2);
  v22[0] = xmmword_195E42760;
  v22[1] = xmmword_195E42770;
  v23 = 0;
  v24 = 0;
  v18 = RB::Coverage::Stroke<RB::Coverage::StrokeablePath>::bounds(&a1[7], v22);
  RB::Bounds::Bounds(v25, v18, v19, v20, v21);
  RB::Fill::MeshGradient::fill(a1 + 18, a2, v25[0], v25[1]);
  RB::CGContext::restore(a2);
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::prepare_mix(uint64_t a1, RB::DisplayList::Interpolator::Contents *a2, unint64_t *a3, uint64_t a4)
{
  result = (*(*a4 + 16))(a4);
  if (result == 20983809)
  {
    result = RB::DisplayList::Item::may_mix(a1, a2, a4, v9);
    if (result)
    {
      v11 = result;
      result = RB::can_mix(*(a1 + 48), *(a4 + 48), v10);
      if (result < v11)
      {
        v11 = result;
      }

      if (result)
      {
        if (*(a1 + 128) == *(a4 + 128) && *(a1 + 129) == *(a4 + 129) && *(a1 + 130) == *(a4 + 130) && *(a1 + 131) == *(a4 + 131) && *(a1 + 132) == *(a4 + 132) && *(a1 + 136) == *(a4 + 136))
        {
          result = RB::Coverage::StrokeablePath::can_mix(a1 + 64, a4 + 64, v12);
          if (result)
          {
            v14 = result;
            can_mix = RB::Fill::MeshGradient::can_mix((a1 + 144), (a4 + 144), v13);

            return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v14, can_mix);
          }
        }
      }
    }
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v27[0] = v10;
  v27[1] = v11;
  v27[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v27);
  v13 = (*(*&a4->f64[0] + 8) + 16);
  v14.i32[0] = *(a2 + 16);
  RB::Fill::MeshGradient::mix((v8 + 144), *(a2 + 8), (a3 + 144), v14, v13);
  *&v15 = RB::operator*(a1[6], a4 + 68);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  *&v18 = RB::operator*(*(a3 + 48), a4 + 68);
  v23[0] = v18;
  v23[1] = v19;
  v23[2] = v20;
  LODWORD(v18) = *(a2 + 16);
  RB::Coverage::StrokeablePath::mix(v8 + 64, v13, a3 + 64, &v24, v23, *(v8 + 48), *&v18);
  *(v8 + 136) = *(v8 + 136) + ((*(a3 + 136) - *(v8 + 136)) * *(a2 + 16));
  *(v8 + 112) = 0x100000001000000;
  *(v8 + 120) = vneg_f32(0x80000000800000);
  if ((*(v8 + 46) & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    *&v24 = &unk_1F0A3DDB8;
    *(&v24 + 1) = v13;
    *&v25 = v8;
    *(&v25 + 1) = v8 + 144;
    v26 = *(v8 + 48);
    RB::Coverage::StrokeablePath::simplify(v8 + 64, v8 + 56, &v24);
    if (*(&v26 + 1))
    {
      *v8 = &unk_1F0A3DEE8;
      v21 = *(v8 + 152);
      if (v21 && atomic_fetch_add_explicit((v21 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::mix();
      }

      *(v8 + 56) = &unk_1F0A38388;
      RBPathRelease(*(v8 + 64), *(v8 + 72));
      v8 = *(&v26 + 1);
    }

    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::encode(void *a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>(this, 1, (a1 + 7));
  RB::Encoder::typed_message_field<RB::Fill::MeshGradient>(this, 2, (a1 + 18));
  v4 = a1[6];
  if (v4)
  {
    v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
    if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(this, 0x1AuLL);
      RB::ProtobufEncoder::begin_length_delimited(this);
      RB::AffineTransform::encode(v4->f64, this);
      RB::ProtobufEncoder::end_length_delimited(this);
    }
  }

  RB::ProtobufEncoder::end_length_delimited(this);

  return RB::DisplayList::Item::encode(a1, this);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>();
}

void *RB::Encoder::typed_message_field<RB::Fill::MeshGradient>(RB::Encoder *a1, uint64_t a2, RB::Fill::MeshGradient *a3)
{
  RB::ProtobufEncoder::encode_varint(a1, (8 * a2) | 2);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RB::ProtobufEncoder::encode_varint(a1, 0x2AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RB::Fill::MeshGradient::encode(a3, a1);
  RB::ProtobufEncoder::end_length_delimited(a1);

  return RB::ProtobufEncoder::end_length_delimited(a1);
}

void sub_195D958D8(_Unwind_Exception *exception_object)
{
  v3 = v1[2] - 1;
  v1[2] = v3;
  if (!v3)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::MeshGradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, RB::Heap *a2, uint64_t a3, uint64_t a4, uint64_t *a5, float *a6, _DWORD *a7, __int16 *a8)
{
  v16 = *(this + 3);
  v17 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v17 + 192 > v16)
  {
    v17 = RB::Heap::alloc_slow(this, 0xC0uLL, 7);
  }

  else
  {
    *(this + 2) = v17 + 192;
  }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::GenericItem1(v17, a2, a3, a4, *a5, *a7, *a8, *a6);
  *result = &unk_1F0A3DDD8;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::MeshGradient>::GenericItem1(uint64_t a1, size_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, __int16 a7, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F | 0x4000;
  *a1 = &unk_1F0A3E108;
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
  RB::Fill::MeshGradient::MeshGradient(a1 + 88, a4, a7, a2);
  return a1;
}

void *RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::MeshGradient>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3E108;
  v2 = a1[12];
  if (v2 && atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::MeshGradient>::~GenericItem();
  }

  RBPathRelease(a1[7], a1[8]);
  return a1;
}

void RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::MeshGradient>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3E108;
  v2 = a1[12];
  if (v2 && atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::MeshGradient>::~GenericItem();
  }

  RBPathRelease(a1[7], a1[8]);

  JUMPOUT(0x19A8C09E0);
}

void *RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::MeshGradient>::copy(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (*(a2 + 8) + 16);
  v5 = *(a1 + 46);
  if (a3 & 2 | v5 & 0x2000 || *(a2 + 288) != 1)
  {
    v8 = 0;
LABEL_6:
    LODWORD(v9[0]) = v5 & 0x3F;
    result = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage4PathENS_4Fill12MeshGradientEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a1 + 56, a1 + 88, (a1 + 48), (a1 + 44), v9);
    *(result + 1) = *(a1 + 16);
    result[4] = *(a1 + 32);
    *(result + 10) = *(a1 + 40);
    v7 = *(result + 23) | *(a1 + 46) & 0x7000;
    *(result + 23) = v7;
    goto LABEL_7;
  }

  v9[0] = &unk_1F0A3DDB8;
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

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::MeshGradient>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

float32x2_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::MeshGradient>::atom_position(uint64_t a1)
{
  v4.var1 = *(a1 + 48);
  v4.var0 = (a1 + 56);
  v1 = RB::Coverage::Path::bounds(v4);
  return vmla_f32(*&v1, 0x3F0000003F000000, v2);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::MeshGradient>::make_clip(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v23 = 0.0;
  v24 = a3;
  if (!RB::Fill::MeshGradient::get_alpha((a1 + 88), &v23))
  {
    return RB::DisplayList::Item::make_clip(a1, a2, a3, a4, a5);
  }

  v10 = *(a2 + 8);
  _H0 = *(a1 + 44);
  __asm { FCVT            S0, H0 }

  v22 = _S0 * (a5 * v23);
  v17 = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Path>,RB::Heap&,RB::Coverage::Path&,float &,RB::ClipMode &,RB::AffineTransform const*&>((v10 + 16), (v10 + 16), a1 + 56, &v22, &v24, (a1 + 48));
  v18 = a4[5];
  v19 = v18 + 1;
  if (a4[6] < (v18 + 1))
  {
    RB::vector<RB::DisplayList::Clip *,4ul,unsigned long>::reserve_slow(a4, v19);
    v18 = a4[5];
    v19 = v18 + 1;
  }

  v20 = a4[4];
  if (!v20)
  {
    v20 = a4;
  }

  v20[v18] = v17;
  a4[5] = v19;
  return (**a1)(a1);
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::MeshGradient>::color_info(uint64_t a1, float a2, float a3)
{
  LOWORD(a2) = *(a1 + 124);
  LOWORD(a3) = *(a1 + 126);
  if (*&a3 >= *&a2 || *&a3 == COERCE_SHORT_FLOAT(0))
  {
    LOWORD(a3) = *(a1 + 124);
  }

  return (LODWORD(a2) << 16) | (LODWORD(a3) << 32) | *(a1 + 132);
}

double RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::MeshGradient>::bounds(uint64_t a1)
{
  v2.var1 = *(a1 + 48);
  v2.var0 = (a1 + 56);
  return RB::Coverage::Path::bounds(v2);
}

float RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::MeshGradient>::min_scale(uint64_t a1)
{
  result = RB::Coverage::Path::min_scale((a1 + 56), *(a1 + 48));
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::MeshGradient>::has_no_effect(uint64_t a1)
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    return RB::may_discard_alpha(*(a1 + 46) & 0x3F);
  }

  else
  {
    return 0;
  }
}

void RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::MeshGradient>::render(uint64_t a1, int a2, RB::RenderPass *a3, double a4, char a5, int a6)
{
  v24[5] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v10.i64[0] = SLODWORD(a4);
  v10.i64[1] = SHIDWORD(a4);
  v11 = *(v9 + 16);
  v12 = vaddq_f64(*(v9 + 32), vcvtq_f64_s64(v10));
  v19[0] = *v9;
  v19[1] = v11;
  v19[2] = v12;
  _H8 = *(a1 + 44);
  RB::Path::ImmediateRenderer::ImmediateRenderer(v20, a3, v19, (a1 + 56));
  __asm { FCVT            S0, H8 }

  RB::Path::Renderer::render(v24, (a1 + 88), v19, a5, a6, _S0);
  if (v23 == 1)
  {
    RB::Path::Accumulator::commit_buffer(&v21);
  }

  if (v22)
  {
    free(v22);
  }
}

void sub_195D96054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  if (a47)
  {
    free(a47);
  }

  _Unwind_Resume(exception_object);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::MeshGradient>::render(int32x2_t *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[3];
  _H0 = a1[5].i16[2];
  __asm { FCVT            S8, H0 }

  v11 = a1[5].i16[3] & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(v22, v12, v13, v14, v15);
  if (*(a2 + 88) != v5 || !RB::Bounds::contains((a2 + 96), *&v22[0], *(v22 + 8)))
  {
    v16 = 0;
LABEL_10:
    RB::CGContext::update_state_slow(a2, v4, v5, v11, v22, v16, _S8);
    goto LABEL_11;
  }

  v16 = 1;
  if (*(a2 + 80) != v4)
  {
    goto LABEL_10;
  }

  if (*(a2 + 140) != _S8 || *(a2 + 144) != v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  RB::CGContext::save(a2);
  RB::Coverage::Path::clip(&a1[7], a2);
  v22[0] = xmmword_195E42760;
  v22[1] = xmmword_195E42770;
  v23 = 0;
  v24 = 0;
  v26.var0 = &a1[7];
  v26.var1 = v22;
  v18 = RB::Coverage::Path::bounds(v26);
  RB::Bounds::Bounds(v25, *&v18, v19, v20, v21);
  RB::Fill::MeshGradient::fill(a1 + 11, a2, v25[0], v25[1]);
  RB::CGContext::restore(a2);
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::MeshGradient>::prepare_mix(float64x2_t **a1, RB::DisplayList::Interpolator::Contents *a2, const RB::DisplayList::Interpolator::Op *a3, float64x2_t **a4)
{
  result = (*&(*a4)[1].f64[0])(a4);
  if (result == 20979713)
  {
    result = RB::DisplayList::Item::may_mix(a1, a2, a4, v9);
    if (result)
    {
      v11 = result;
      result = RB::can_mix(a1[6], a4[6], v10);
      if (result < v11)
      {
        v11 = result;
      }

      if (result)
      {
        result = RB::Coverage::Path::can_mix(a1 + 7, a3, a4 + 7);
        if (result)
        {
          v13 = result;
          can_mix = RB::Fill::MeshGradient::can_mix((a1 + 11), (a4 + 11), v12);

          return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v13, can_mix);
        }
      }
    }
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::MeshGradient>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v27[0] = v10;
  v27[1] = v11;
  v27[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v27);
  v13 = (*(*&a4->f64[0] + 8) + 16);
  v14.i32[0] = *(a2 + 16);
  RB::Fill::MeshGradient::mix((v8 + 88), *(a2 + 8), (a3 + 88), v14, v13);
  v15.f64[0] = RB::operator*(a1[6], a4 + 68);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v18.f64[0] = RB::operator*(*(a3 + 48), a4 + 68);
  v23[0] = v18;
  v23[1] = v19;
  v23[2] = v20;
  RB::Coverage::Path::mix((v8 + 56), a2, (a3 + 56), &v24, v23, *(v8 + 48), v13);
  if ((*(v8 + 46) & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    *&v24.f64[0] = &unk_1F0A3DDB8;
    *&v24.f64[1] = v13;
    *&v25 = v8;
    *(&v25 + 1) = v8 + 88;
    v26 = *(v8 + 48);
    RB::Coverage::Path::simplify(v8 + 56, &v24);
    if (*(&v26 + 1))
    {
      *v8 = &unk_1F0A3E108;
      v21 = *(v8 + 96);
      if (v21 && atomic_fetch_add_explicit((v21 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::mix();
      }

      RBPathRelease(*(v8 + 56), *(v8 + 64));
      v8 = *(&v26 + 1);
    }

    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::MeshGradient>::encode(uint64_t a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Path>(this, 1, (a1 + 56));
  RB::Encoder::typed_message_field<RB::Fill::MeshGradient>(this, 2, (a1 + 88));
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
    if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(this, 0x1AuLL);
      RB::ProtobufEncoder::begin_length_delimited(this);
      RB::AffineTransform::encode(v4->f64, this);
      RB::ProtobufEncoder::end_length_delimited(this);
    }
  }

  RB::ProtobufEncoder::end_length_delimited(this);

  return RB::DisplayList::Item::encode(a1, this);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::MeshGradient>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Path>();
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage4PathENS_4Fill12MeshGradientEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, size_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v15 + 136 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0x88uLL, 7);
  }

  else
  {
    *(this + 2) = v15 + 136;
  }

  _H0 = *a6;
  __asm { FCVT            S0, H0 }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::MeshGradient>::GenericItem1(v15, a2, a3, a4, *a5, *a7, 0, _S0);
  *result = &unk_1F0A3DFF8;
  return result;
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>,RB::Heap&,RB::Coverage::Path const&,RB::Fill::Image<RB::ImageTexture> const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, size_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, float *a6, _DWORD *a7, __int16 *a8)
{
  v16 = *(this + 3);
  v17 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v17 + 192 > v16)
  {
    v17 = RB::Heap::alloc_slow(this, 0xC0uLL, 7);
  }

  else
  {
    *(this + 2) = v17 + 192;
  }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::GenericItem1(v17, a2, a3, a4, *a5, *a7, *a8, *a6);
  *result = &unk_1F0A3CE18;
  return result;
}

uint64_t RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::visit(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Image<RB::ImageTexture>>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::Image<RB::ImageTexture> const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 5, *v2 + 12);
  _S0 = *(v3 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 206) = _H0;
  }

  v3[7] = result;
  return result;
}

void *RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::visit(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::Image<RB::ImageTexture> const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 5, *v2 + 12);
  _S0 = *(v3 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 119) = _H0;
  }

  v3[7] = result;
  return result;
}

unint64_t RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Image<RB::ImageTexture>>::copy_shadow(RB::DisplayList::Item *this, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 92) & 0x10) != 0)
  {
    return 0;
  }

  if (*(this + 124) != 1)
  {
    return 0;
  }

  v28 = 1.0;
  if (RB::DisplayList::Item::clip_affects_blurred_bounds(this, *(a3 + 64)))
  {
    return 0;
  }

  memset(v25, 0, sizeof(v25));
  v26 = 1065353216;
  v27[0] = 0;
  *(v27 + 7) = 0;
  v7 = *(a3 + 16);
  v8 = *(this + 6);
  v9 = *v8;
  v10 = v8[2];
  v30 = v8[1];
  v31 = v10;
  v29 = v9;
  if (RB::AffineTransform::invert(&v29))
  {
    v11 = &v29;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11[1];
  v13 = v11[2];
  v24[0] = *v11;
  v24[1] = v12;
  v24[2] = v13;
  v14.f64[0] = RB::operator*(v7, v24);
  v29 = v14;
  v30 = v15;
  v31 = v16;
  shadow = RB::Coverage::Primitive::make_shadow((this + 64), &v29, *(a3 + 64), &v28, (*(a3 + 92) >> 2) & 1, v25);
  result = 0;
  if (shadow)
  {
    _H1 = *(this + 22);
    __asm { FCVT            S1, H1 }

    result = RB::DisplayList::ShadowStyle::make_primitive(a3, a2, v25, *(this + 6), *(this + 23) & 0x3F, v28, _S1);
    *(result + 16) = *(this + 1);
    *(result + 32) = *(this + 4);
    *(result + 40) = *(this + 10);
  }

  return result;
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Image<RB::ImageTexture>>::has_no_effect(uint64_t a1)
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    return RB::may_discard_alpha(*(a1 + 46) & 0x3F);
  }

  else
  {
    return 0;
  }
}

void RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Image<RB::ImageTexture>>::render(float32x2_t *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[3];
  _H0 = a1[5].i16[2];
  __asm { FCVT            S8, H0 }

  v11 = a1[5].i16[3] & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(v29, v12, v13, v14, v15);
  if (*(a2 + 88) == v5 && RB::Bounds::contains((a2 + 96), *&v29[0].f64[0], *&v29[0].f64[1]))
  {
    v16 = 1;
    if (*(a2 + 80) == v4 && *(a2 + 140) == _S8 && *(a2 + 144) == v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v16 = 0;
  }

  RB::CGContext::update_state_slow(a2, v4, v5, v11, v29, v16, _S8);
LABEL_11:
  RB::CGContext::save(a2);
  RB::Coverage::Primitive::clip(a1 + 8, a2);
  v29[0] = xmmword_195E42760;
  v29[1] = xmmword_195E42770;
  v30 = 0;
  v31 = 0;
  v22 = RB::Coverage::Primitive::bounds(a1 + 8, v29, xmmword_195E42760, xmmword_195E42770, v18, v19, v20, v21);
  RB::Bounds::Bounds(&v32, v22, v23, v24, v25);
  v26 = v32;
  v27 = RB::ImageTexture::cg_image(&a1[14]);
  if (v27)
  {
    *v28.f32 = v26;
    RB::Fill::ImageData::fill(&a1[16], a2, v27, v28);
  }

  RB::CGContext::restore(a2);
}

float32x4_t *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Image<RB::ImageTexture>>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v15[0] = v10;
  v15[1] = v11;
  v15[2] = v12;
  v8[3].i64[0] = RB::DisplayList::CachedTransform::transform_ctm(a4, v15);
  v13.i32[0] = *(a2 + 16);
  RB::Fill::ImageData::mix(v8 + 8, *(a2 + 8), (a3 + 128), v13);
  RB::operator*(a1[6], a4 + 68);
  RB::operator*(*(a3 + 48), a4 + 68);
  RB::Coverage::Primitive::mix(&v8[4], a2, a3 + 64);
  if ((v8[2].i16[7] & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    v8[2].i16[7] |= 0x2000u;
  }

  return v8;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Image<RB::ImageTexture>>::prepare_encode(uint64_t a1, RB::Encoder *a2)
{
  RB::DisplayList::Item::prepare_encode(a1, a2);

  return RB::ImageTexture::prepare_encode((a1 + 112), a2);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Image<RB::ImageTexture>>::encode(float32x4_t *a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Primitive>(this, 1, a1 + 4);
  RB::Encoder::typed_message_field<RB::Fill::Image<RB::ImageTexture>>(this, 2, &a1[7]);
  v4 = a1[3].i64[0];
  if (v4)
  {
    v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
    if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(this, 0x1AuLL);
      RB::ProtobufEncoder::begin_length_delimited(this);
      RB::AffineTransform::encode(v4->f64, this);
      RB::ProtobufEncoder::end_length_delimited(this);
    }
  }

  RB::ProtobufEncoder::end_length_delimited(this);

  return RB::DisplayList::Item::encode(a1, this);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Image<RB::ImageTexture>>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Primitive>();
}

unint64_t RB::Fill::Image<RB::ImageTexture>::color_info(uint64_t a1, float a2)
{
  v4 = *(a1 + 13);
  LOWORD(v2) = *(a1 + 92);
  if (*&v2 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
  {
    v4 = RB::max_color_depth(v4, 4u);
  }

  LOWORD(a2) = *(a1 + 94);
  if (*&a2 >= *&v2 || *&a2 == COERCE_SHORT_FLOAT(0))
  {
    *&a2 = *&v2;
  }

  return (v2 << 16) | (LODWORD(a2) << 32) | v4;
}

__n128 RB::DisplayList::GenericItemCopyVisitor<RB::Fill::Image<RB::ImageTexture>>::visit_<RB::Coverage::Primitive>(void *a1, __int128 *a2)
{
  v3 = a1[3];
  v4 = a1[1];
  v5 = a1[2];
  v9 = *(v5 + 46) & 0x3F;
  v6 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage9PrimitiveENS_4Fill5ImageINS_12ImageTextureEEEEEJRS0_RKS5_RKS9_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a2, v3, a1 + 4, (v5 + 44), &v9);
  a1[5] = v6;
  v7 = a1[2];
  result = v7[1];
  v6[1] = result;
  v6[2].n128_u64[0] = v7[2].n128_u64[0];
  v6[2].n128_u32[2] = v7[2].n128_u32[2];
  v6[2].n128_u16[7] |= v7[2].n128_u16[7] & 0x7000;
  return result;
}

__n128 RB::DisplayList::GenericItemCopyVisitor<RB::Fill::Image<RB::ImageTexture>>::visit_<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[1];
  v5 = a1[2];
  v9 = *(v5 + 46) & 0x3F;
  v6 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeINS4_14StrokeablePathEEENS_4Fill5ImageINS_12ImageTextureEEEEEJRS0_RKS7_RKSB_RPKNS_15AffineTransformERKDF16_NS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a2, v3, a1 + 4, (v5 + 44), &v9);
  a1[5] = v6;
  v7 = a1[2];
  result = v7[1];
  v6[1] = result;
  v6[2].n128_u64[0] = v7[2].n128_u64[0];
  v6[2].n128_u32[2] = v7[2].n128_u32[2];
  v6[2].n128_u16[7] |= v7[2].n128_u16[7] & 0x7000;
  return result;
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeINS4_14StrokeablePathEEENS_4Fill5ImageINS_12ImageTextureEEEEEJRS0_RKS7_RKSB_RPKNS_15AffineTransformERKDF16_NS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, RB::Heap *a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v15 + 248 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0xF8uLL, 7);
  }

  else
  {
    *(this + 2) = v15 + 248;
  }

  _H0 = *a6;
  __asm { FCVT            S0, H0 }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>::GenericItem1(v15, a2, a3, a4, *a5, *a7, 0, _S0);
  *result = &unk_1F0A3C158;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>::GenericItem1(uint64_t a1, RB::Heap *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, __int16 a7, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F;
  *a1 = &unk_1F0A3AA90;
  *(a1 + 48) = a5;
  *(a1 + 56) = &unk_1F0A38388;
  RB::Coverage::StrokeablePath::StrokeablePath(a1 + 64, a3 + 8, a2);
  *(a1 + 112) = *(a3 + 56);
  *(a1 + 128) = *(a3 + 72);
  *(a1 + 129) = *(a3 + 73);
  *(a1 + 131) = *(a3 + 75);
  *(a1 + 132) = *(a3 + 76);
  *(a1 + 136) = *(a3 + 80);
  RB::ImageTexture::ImageTexture((a1 + 144), a4, a2);
  v18 = *(a4 + 48);
  v19 = *(a4 + 64);
  v20 = *(a4 + 80);
  v21 = *(a4 + 96);
  *(a1 + 240) = v21;
  v22 = *(a4 + 32);
  *(a1 + 160) = *(a4 + 16);
  *(a1 + 176) = v22;
  *(a1 + 208) = v19;
  *(a1 + 224) = v20;
  *(a1 + 192) = v18;
  if ((v21 & 0x100) == 0)
  {
    *(a1 + 240) = a7;
  }

  return a1;
}

void sub_195D9720C(_Unwind_Exception *a1)
{
  v1[7] = v2;
  RBPathRelease(v1[8], v1[9]);
  _Unwind_Resume(a1);
}

void *RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3AA90;
  a1[7] = &unk_1F0A38388;
  RBPathRelease(a1[8], a1[9]);
  return a1;
}

void RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3AA90;
  a1[7] = &unk_1F0A38388;
  RBPathRelease(a1[8], a1[9]);

  JUMPOUT(0x19A8C09E0);
}

void *RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>::copy(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (*(a2 + 8) + 16);
  v5 = *(a1 + 46);
  if (a3 & 2 | v5 & 0x2000 || *(a2 + 288) != 1)
  {
    v8 = 0;
LABEL_6:
    LODWORD(v9[0]) = v5 & 0x3F;
    result = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeINS4_14StrokeablePathEEENS_4Fill5ImageINS_12ImageTextureEEEEEJRS0_RKS7_RKSB_RPKNS_15AffineTransformERKDF16_NS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a1 + 56, a1 + 144, (a1 + 48), (a1 + 44), v9);
    *(result + 1) = *(a1 + 16);
    result[4] = *(a1 + 32);
    *(result + 10) = *(a1 + 40);
    v7 = *(result + 23) | *(a1 + 46) & 0x7000;
    *(result + 23) = v7;
    goto LABEL_7;
  }

  v9[0] = &unk_1F0A3E218;
  v9[1] = v4;
  v9[2] = a1;
  v9[3] = (a1 + 144);
  v9[4] = *(a1 + 48);
  v10 = 0;
  RB::Coverage::StrokeablePath::simplify(a1 + 64, a1 + 56, v9);
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

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>::make_clip(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v20 = a3;
  if (*(a1 + 156) == 1)
  {
    v7 = *(a2 + 8);
    _H1 = *(a1 + 44);
    __asm { FCVT            S1, H1 }

    v19 = _S1 * a5;
    v14 = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath>&,float &,RB::ClipMode &,RB::AffineTransform const*&>((v7 + 16), v7 + 16, a1 + 56, &v19, &v20, (a1 + 48));
    v15 = a4[5];
    v16 = v15 + 1;
    if (a4[6] < (v15 + 1))
    {
      RB::vector<RB::DisplayList::Clip *,4ul,unsigned long>::reserve_slow(a4, v16);
      v15 = a4[5];
      v16 = v15 + 1;
    }

    v17 = a4[4];
    if (!v17)
    {
      v17 = a4;
    }

    v17[v15] = v14;
    a4[5] = v16;
    return (**a1)(a1);
  }

  else
  {

    return RB::DisplayList::Item::make_clip(a1, a2, a3, a4, a5);
  }
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>::has_no_effect(uint64_t a1)
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    return RB::may_discard_alpha(*(a1 + 46) & 0x3F);
  }

  else
  {
    return 0;
  }
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>::render(uint64_t a1, double a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = *(a1 + 48);
  v7.i64[0] = SLODWORD(a2);
  v7.i64[1] = SHIDWORD(a2);
  v8 = v6[1];
  v9 = vaddq_f64(v6[2], vcvtq_f64_s64(v7));
  v20[0] = *v6;
  v20[1] = v8;
  v20[2] = v9;
  _H0 = *(a1 + 44);
  v23 = *(a1 + 128);
  v24 = *(a1 + 129);
  v25 = *(a1 + 131);
  v26 = *(a1 + 132);
  v27 = *(a1 + 136);
  v28 = 1065353216;
  v29 = 1;
  v30 = 0;
  if (v23 == 1)
  {
    abort();
  }

  __asm { FCVT            S0, H0 }

  RB::Fill::Image<RB::ImageTexture>::set_image(a1 + 144, &v22, a4, v20, _S0);
  RB::render_stroke(a4, v20, a1 + 56, &v23, &v21, a1 + 160, a5, a6);
  *(a4 + 240) = 0;
  *(a4 + 244) = 0;
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>::render(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 24);
  _H0 = *(a1 + 44);
  __asm { FCVT            S8, H0 }

  v11 = *(a1 + 46) & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(v25, v12, v13, v14, v15);
  if (*(a2 + 88) == v5 && RB::Bounds::contains((a2 + 96), *&v25[0].f64[0], *&v25[0].f64[1]))
  {
    v16 = 1;
    if (*(a2 + 80) == v4 && *(a2 + 140) == _S8 && *(a2 + 144) == v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v16 = 0;
  }

  RB::CGContext::update_state_slow(a2, v4, v5, v11, v25, v16, _S8);
LABEL_11:
  RB::CGContext::save(a2);
  RB::Coverage::StrokeablePath::clip(a1 + 64, a1 + 56, a2);
  v25[0] = xmmword_195E42760;
  v25[1] = xmmword_195E42770;
  v26 = 0;
  v27 = 0;
  v18 = RB::Coverage::Stroke<RB::Coverage::StrokeablePath>::bounds(a1 + 56, v25);
  RB::Bounds::Bounds(&v28, v18, v19, v20, v21);
  v22 = v28;
  v23 = RB::ImageTexture::cg_image((a1 + 144));
  if (v23)
  {
    *v24.f32 = v22;
    RB::Fill::ImageData::fill((a1 + 160), a2, v23, v24);
  }

  RB::CGContext::restore(a2);
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>::prepare_mix(uint64_t a1, RB::DisplayList::Interpolator::Contents *a2, unint64_t *a3, uint64_t a4)
{
  result = (*(*a4 + 16))(a4);
  if (result == 12595201)
  {
    result = RB::DisplayList::Item::may_mix(a1, a2, a4, v9);
    if (result)
    {
      v11 = result;
      result = RB::can_mix(*(a1 + 48), *(a4 + 48), v10);
      if (result < v11)
      {
        v11 = result;
      }

      if (result)
      {
        if (*(a1 + 128) == *(a4 + 128) && *(a1 + 129) == *(a4 + 129) && *(a1 + 130) == *(a4 + 130) && *(a1 + 131) == *(a4 + 131) && *(a1 + 132) == *(a4 + 132) && *(a1 + 136) == *(a4 + 136))
        {
          result = RB::Coverage::StrokeablePath::can_mix(a1 + 64, a4 + 64, v12);
          if (result)
          {
            v13 = result;
            can_mix = RB::ImageTexture::can_mix((a1 + 144), (a4 + 144));
            if (can_mix)
            {
              v15 = can_mix;
              v16 = RB::Fill::ImageData::can_mix((a1 + 160), (a4 + 160));
              if (v16 >= v15)
              {
                v17 = v15;
              }

              else
              {
                v17 = v16;
              }
            }

            else
            {
              v17 = 0;
            }

            return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v13, v17);
          }
        }
      }
    }
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v26[0] = v10;
  v26[1] = v11;
  v26[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v26);
  v13 = (*(*&a4->f64[0] + 8) + 16);
  v14.i32[0] = *(a2 + 16);
  RB::Fill::ImageData::mix((v8 + 160), *(a2 + 8), (a3 + 160), v14);
  *&v15 = RB::operator*(a1[6], a4 + 68);
  v23 = v15;
  v24 = v16;
  v25 = v17;
  *&v18 = RB::operator*(*(a3 + 48), a4 + 68);
  v22[0] = v18;
  v22[1] = v19;
  v22[2] = v20;
  LODWORD(v18) = *(a2 + 16);
  RB::Coverage::StrokeablePath::mix(v8 + 64, v13, a3 + 64, &v23, v22, *(v8 + 48), *&v18);
  *(v8 + 136) = *(v8 + 136) + ((*(a3 + 136) - *(v8 + 136)) * *(a2 + 16));
  *(v8 + 112) = 0x100000001000000;
  *(v8 + 120) = vneg_f32(0x80000000800000);
  if ((*(v8 + 46) & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    *&v23 = &unk_1F0A3E218;
    *(&v23 + 1) = v13;
    *&v24 = v8;
    *(&v24 + 1) = v8 + 144;
    v25 = *(v8 + 48);
    RB::Coverage::StrokeablePath::simplify(v8 + 64, v8 + 56, &v23);
    if (*(&v25 + 1))
    {
      *v8 = &unk_1F0A3AA90;
      *(v8 + 56) = &unk_1F0A38388;
      RBPathRelease(*(v8 + 64), *(v8 + 72));
      v8 = *(&v25 + 1);
    }

    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>::prepare_encode(uint64_t a1, RB::Encoder *a2)
{
  RB::DisplayList::Item::prepare_encode(a1, a2);

  return RB::ImageTexture::prepare_encode((a1 + 144), a2);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>::encode(RB::DisplayList::Item *a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>(this, 1, a1 + 56);
  RB::Encoder::typed_message_field<RB::Fill::Image<RB::ImageTexture>>(this, 2, a1 + 144);
  v4 = *(a1 + 6);
  if (v4)
  {
    v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
    if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(this, 0x1AuLL);
      RB::ProtobufEncoder::begin_length_delimited(this);
      RB::AffineTransform::encode(v4->f64, this);
      RB::ProtobufEncoder::end_length_delimited(this);
    }
  }

  RB::ProtobufEncoder::end_length_delimited(this);

  return RB::DisplayList::Item::encode(a1, this);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>();
}

void *RB::Encoder::typed_message_field<RB::Fill::Image<RB::ImageTexture>>(RB::Encoder *a1, uint64_t a2, uint64_t a3)
{
  RB::ProtobufEncoder::encode_varint(a1, (8 * a2) | 2);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RB::ProtobufEncoder::encode_varint(a1, 0x1AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RB::ImageTexture::encode(a3, a1);
  RB::Fill::ImageData::encode((a3 + 16), a1, v5, v6);
  RB::ProtobufEncoder::end_length_delimited(a1);

  return RB::ProtobufEncoder::end_length_delimited(a1);
}

void sub_195D97FAC(_Unwind_Exception *exception_object)
{
  v3 = v1[2] - 1;
  v1[2] = v3;
  if (!v3)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::Image<RB::ImageTexture> const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, RB::Heap *a2, uint64_t a3, uint64_t a4, uint64_t *a5, float *a6, _DWORD *a7, __int16 *a8)
{
  v16 = *(this + 3);
  v17 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v17 + 248 > v16)
  {
    v17 = RB::Heap::alloc_slow(this, 0xF8uLL, 7);
  }

  else
  {
    *(this + 2) = v17 + 248;
  }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>::GenericItem1(v17, a2, a3, a4, *a5, *a7, *a8, *a6);
  *result = &unk_1F0A3C158;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::GenericItem1(uint64_t a1, size_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, __int16 a7, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F;
  *a1 = &unk_1F0A3B750;
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
  RB::ImageTexture::ImageTexture((a1 + 88), a4, a2);
  v23 = *(a4 + 48);
  v24 = *(a4 + 64);
  v25 = *(a4 + 80);
  v26 = *(a4 + 96);
  *(a1 + 184) = v26;
  v27 = *(a4 + 16);
  *(a1 + 120) = *(a4 + 32);
  *(a1 + 104) = v27;
  *(a1 + 168) = v25;
  *(a1 + 152) = v24;
  *(a1 + 136) = v23;
  if ((v26 & 0x100) == 0)
  {
    *(a1 + 184) = a7;
  }

  return a1;
}

void *RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3B750;
  RBPathRelease(a1[7], a1[8]);
  return a1;
}

void RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3B750;
  RBPathRelease(a1[7], a1[8]);

  JUMPOUT(0x19A8C09E0);
}

void *RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::copy(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (*(a2 + 8) + 16);
  v5 = *(a1 + 46);
  if (a3 & 2 | v5 & 0x2000 || *(a2 + 288) != 1)
  {
    v8 = 0;
LABEL_6:
    LODWORD(v9[0]) = v5 & 0x3F;
    result = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage4PathENS_4Fill5ImageINS_12ImageTextureEEEEEJRS0_RKS5_RKS9_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a1 + 56, a1 + 88, (a1 + 48), (a1 + 44), v9);
    *(result + 1) = *(a1 + 16);
    result[4] = *(a1 + 32);
    *(result + 10) = *(a1 + 40);
    v7 = *(result + 23) | *(a1 + 46) & 0x7000;
    *(result + 23) = v7;
    goto LABEL_7;
  }

  v9[0] = &unk_1F0A3E218;
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

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

float32x2_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::atom_position(uint64_t a1)
{
  v4.var1 = *(a1 + 48);
  v4.var0 = (a1 + 56);
  v1 = RB::Coverage::Path::bounds(v4);
  return vmla_f32(*&v1, 0x3F0000003F000000, v2);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::make_clip(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v20 = a3;
  if (*(a1 + 100) == 1)
  {
    v7 = *(a2 + 8);
    _H1 = *(a1 + 44);
    __asm { FCVT            S1, H1 }

    v19 = _S1 * a5;
    v14 = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Path>,RB::Heap&,RB::Coverage::Path&,float &,RB::ClipMode &,RB::AffineTransform const*&>((v7 + 16), (v7 + 16), a1 + 56, &v19, &v20, (a1 + 48));
    v15 = a4[5];
    v16 = v15 + 1;
    if (a4[6] < (v15 + 1))
    {
      RB::vector<RB::DisplayList::Clip *,4ul,unsigned long>::reserve_slow(a4, v16);
      v15 = a4[5];
      v16 = v15 + 1;
    }

    v17 = a4[4];
    if (!v17)
    {
      v17 = a4;
    }

    v17[v15] = v14;
    a4[5] = v16;
    return (**a1)(a1);
  }

  else
  {

    return RB::DisplayList::Item::make_clip(a1, a2, a3, a4, a5);
  }
}

double RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::bounds(uint64_t a1)
{
  v2.var1 = *(a1 + 48);
  v2.var0 = (a1 + 56);
  return RB::Coverage::Path::bounds(v2);
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::has_no_effect(uint64_t a1)
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    return RB::may_discard_alpha(*(a1 + 46) & 0x3F);
  }

  else
  {
    return 0;
  }
}

void RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::render(uint64_t a1, int a2, RB::RenderPass *a3, double a4, char a5, unsigned int a6)
{
  v27[5] = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 48);
  v11.i64[0] = SLODWORD(a4);
  v11.i64[1] = SHIDWORD(a4);
  v12 = v10[1];
  v13 = vaddq_f64(v10[2], vcvtq_f64_s64(v11));
  v20[0] = *v10;
  v20[1] = v12;
  v20[2] = v13;
  _H8 = *(a1 + 44);
  RB::Path::ImmediateRenderer::ImmediateRenderer(v23, a3, v20, (a1 + 56));
  __asm { FCVT            S0, H8 }

  RB::Fill::Image<RB::ImageTexture>::set_image(a1 + 88, &v22, a3, v20, _S0);
  RB::Path::Renderer::render(v27, &v21, a5, a6);
  *(a3 + 60) = 0;
  *(a3 + 244) = 0;
  if (v26 == 1)
  {
    RB::Path::Accumulator::commit_buffer(&v24);
  }

  if (v25)
  {
    free(v25);
  }
}

void sub_195D98730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a71)
  {
    free(a71);
  }

  _Unwind_Resume(a1);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::render(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 24);
  _H0 = *(a1 + 44);
  __asm { FCVT            S8, H0 }

  v11 = *(a1 + 46) & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(v25, v12, v13, v14, v15);
  if (*(a2 + 88) == v5 && RB::Bounds::contains((a2 + 96), *&v25[0], *(v25 + 8)))
  {
    v16 = 1;
    if (*(a2 + 80) == v4 && *(a2 + 140) == _S8 && *(a2 + 144) == v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v16 = 0;
  }

  RB::CGContext::update_state_slow(a2, v4, v5, v11, v25, v16, _S8);
LABEL_11:
  RB::CGContext::save(a2);
  RB::Coverage::Path::clip((a1 + 56), a2);
  v25[0] = xmmword_195E42760;
  v25[1] = xmmword_195E42770;
  v26 = 0;
  v27 = 0;
  v29.var0 = (a1 + 56);
  v29.var1 = v25;
  v18 = RB::Coverage::Path::bounds(v29);
  RB::Bounds::Bounds(&v28, *&v18, v19, v20, v21);
  v22 = v28;
  v23 = RB::ImageTexture::cg_image((a1 + 88));
  if (v23)
  {
    *v24.f32 = v22;
    RB::Fill::ImageData::fill((a1 + 104), a2, v23, v24);
  }

  RB::CGContext::restore(a2);
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::prepare_mix(uint64_t a1, RB::DisplayList::Interpolator::Contents *a2, const RB::DisplayList::Interpolator::Op *a3, uint64_t a4)
{
  result = (*(*a4 + 16))(a4);
  if (result == 12591105)
  {
    result = RB::DisplayList::Item::may_mix(a1, a2, a4, v9);
    if (result)
    {
      v11 = result;
      result = RB::can_mix(*(a1 + 48), *(a4 + 48), v10);
      if (result < v11)
      {
        v11 = result;
      }

      if (result)
      {
        result = RB::Coverage::Path::can_mix((a1 + 56), a3, (a4 + 56));
        if (result)
        {
          v12 = result;
          can_mix = RB::ImageTexture::can_mix((a1 + 88), (a4 + 88));
          if (can_mix)
          {
            v14 = can_mix;
            v15 = RB::Fill::ImageData::can_mix((a1 + 104), (a4 + 104));
            if (v15 >= v14)
            {
              v16 = v14;
            }

            else
            {
              v16 = v15;
            }
          }

          else
          {
            v16 = 0;
          }

          return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v12, v16);
        }
      }
    }
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v26[0] = v10;
  v26[1] = v11;
  v26[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v26);
  v13 = (*(*&a4->f64[0] + 8) + 16);
  v14.i32[0] = *(a2 + 16);
  RB::Fill::ImageData::mix((v8 + 104), *(a2 + 8), (a3 + 104), v14);
  v15.f64[0] = RB::operator*(a1[6], a4 + 68);
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v18.f64[0] = RB::operator*(*(a3 + 48), a4 + 68);
  v22[0] = v18;
  v22[1] = v19;
  v22[2] = v20;
  RB::Coverage::Path::mix((v8 + 56), a2, (a3 + 56), &v23, v22, *(v8 + 48), v13);
  if ((*(v8 + 46) & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    *&v23.f64[0] = &unk_1F0A3E218;
    *&v23.f64[1] = v13;
    *&v24 = v8;
    *(&v24 + 1) = v8 + 88;
    v25 = *(v8 + 48);
    RB::Coverage::Path::simplify(v8 + 56, &v23);
    if (*(&v25 + 1))
    {
      *v8 = &unk_1F0A3B750;
      RBPathRelease(*(v8 + 56), *(v8 + 64));
      v8 = *(&v25 + 1);
    }

    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::prepare_encode(uint64_t a1, RB::Encoder *a2)
{
  RB::DisplayList::Item::prepare_encode(a1, a2);

  return RB::ImageTexture::prepare_encode((a1 + 88), a2);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::encode(uint64_t a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Path>(this, 1, (a1 + 56));
  RB::Encoder::typed_message_field<RB::Fill::Image<RB::ImageTexture>>(this, 2, a1 + 88);
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
    if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(this, 0x1AuLL);
      RB::ProtobufEncoder::begin_length_delimited(this);
      RB::AffineTransform::encode(v4->f64, this);
      RB::ProtobufEncoder::end_length_delimited(this);
    }
  }

  RB::ProtobufEncoder::end_length_delimited(this);

  return RB::DisplayList::Item::encode(a1, this);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Path>();
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage4PathENS_4Fill5ImageINS_12ImageTextureEEEEEJRS0_RKS5_RKS9_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, size_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v15 + 192 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0xC0uLL, 7);
  }

  else
  {
    *(this + 2) = v15 + 192;
  }

  _H0 = *a6;
  __asm { FCVT            S0, H0 }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Image<RB::ImageTexture>>::GenericItem1(v15, a2, a3, a4, *a5, *a7, 0, _S0);
  *result = &unk_1F0A3CE18;
  return result;
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Custom>,RB::Heap&,RB::Coverage::Path const&,RB::Fill::Custom const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, size_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, float *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v15 + 352 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0x160uLL, 15);
  }

  else
  {
    *(this + 2) = v15 + 352;
  }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Custom>::GenericItem1(v15, a2, a3, a4, *a5, *a7, *a6);
  *result = &unk_1F0A3CD08;
  return result;
}

unint64_t RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Path,RB::Fill::Custom>::visit(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Custom>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::Custom const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 10);
  v3[7] = result;
  return result;
}

RB::Heap *RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Path,RB::Fill::Custom>::visit(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::Custom const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 5);
  v3[7] = result;
  return result;
}

void RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Custom>::~GenericItem(uint64_t a1)
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

  JUMPOUT(0x19A8C09E0);
}

__n128 RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Custom>::copy(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v6 = *(a1 + 46) & 0x3F;
  v4 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage9PrimitiveENS_4Fill6CustomEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v3 + 16), v3 + 16, (a1 + 64), a1 + 112, (a1 + 48), (a1 + 44), &v6);
  result = *(a1 + 16);
  v4[1] = result;
  v4[2].n128_u64[0] = *(a1 + 32);
  v4[2].n128_u32[2] = *(a1 + 40);
  v4[2].n128_u16[7] |= *(a1 + 46) & 0x7000;
  return result;
}

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Custom>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

float RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Custom>::min_scale(uint64_t a1)
{
  result = 0.0;
  if (*(a1 + 108) >= 2u && *(a1 + 109) == 1)
  {
    return 1.0;
  }

  return result;
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Custom>::has_no_effect(uint64_t a1)
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    return RB::may_discard_alpha(*(a1 + 46) & 0x3F);
  }

  else
  {
    return 0;
  }
}

void RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Custom>::render(float32x2_t *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[3];
  _H0 = a1[5].i16[2];
  __asm { FCVT            S8, H0 }

  v11 = a1[5].i16[3] & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(v26, v12, v13, v14, v15);
  if (*(a2 + 88) != v5 || !RB::Bounds::contains((a2 + 96), *&v26[0].f64[0], *&v26[0].f64[1]))
  {
    v16 = 0;
LABEL_10:
    RB::CGContext::update_state_slow(a2, v4, v5, v11, v26, v16, _S8);
    goto LABEL_11;
  }

  v16 = 1;
  if (*(a2 + 80) != v4)
  {
    goto LABEL_10;
  }

  if (*(a2 + 140) != _S8 || *(a2 + 144) != v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  RB::CGContext::save(a2);
  RB::Coverage::Primitive::clip(a1 + 8, a2);
  v26[0] = xmmword_195E42760;
  v26[1] = xmmword_195E42770;
  v27 = 0;
  v28 = 0;
  v22 = RB::Coverage::Primitive::bounds(a1 + 8, v26, xmmword_195E42760, xmmword_195E42770, v18, v19, v20, v21);
  RB::Bounds::Bounds(&v29, v22, v23, v24, v25);
  RB::Fill::Custom::fill(&a1[14], a2);
  RB::CGContext::restore(a2);
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Custom>::prepare_mix(float64x2_t **a1, RB::DisplayList::Interpolator::Contents *a2, unint64_t *a3, float64x2_t **a4)
{
  result = (*&(*a4)[1].f64[0])(a4);
  if (result == 16781313)
  {
    result = RB::DisplayList::Item::may_mix(a1, a2, a4, v9);
    if (result)
    {
      v11 = result;
      result = RB::can_mix(a1[6], a4[6], v10);
      if (result < v11)
      {
        v11 = result;
      }

      if (result)
      {
        result = RB::Coverage::Primitive::can_mix((a1 + 8), a3, (a4 + 8));
        if (result)
        {
          v12 = result;
          can_mix = RB::Fill::Custom::can_mix((a1 + 14), (a4 + 14));

          return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v12, can_mix);
        }
      }
    }
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Custom>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v14[0] = v10;
  v14[1] = v11;
  v14[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v14);
  RB::Fill::Custom::mix((v8 + 112), *(a2 + 8), (a3 + 112), *(a2 + 16), (*(*&a4->f64[0] + 8) + 16));
  RB::operator*(a1[6], a4 + 68);
  RB::operator*(*(a3 + 48), a4 + 68);
  RB::Coverage::Primitive::mix(v8 + 64, a2, a3 + 64);
  if ((*(v8 + 46) & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Custom>::prepare_encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Item::prepare_encode(a1, a2);

  return RB::Fill::Custom::prepare_encode((a1 + 14), a2);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Custom>::encode(float32x4_t *a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Primitive>(this, 1, a1 + 4);
  RB::Encoder::typed_message_field<RB::Fill::Custom>(this, 2, &a1[7]);
  v4 = a1[3].i64[0];
  if (v4)
  {
    v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
    if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(this, 0x1AuLL);
      RB::ProtobufEncoder::begin_length_delimited(this);
      RB::AffineTransform::encode(v4->f64, this);
      RB::ProtobufEncoder::end_length_delimited(this);
    }
  }

  RB::ProtobufEncoder::end_length_delimited(this);

  return RB::DisplayList::Item::encode(a1, this);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Custom>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Primitive>();
}

unint64_t _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage9PrimitiveENS_4Fill6CustomEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(size_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t *a5, __int16 *a6, _WORD *a7)
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
  v14 = *a6;
  v15 = *a7;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 40) = 0;
  *(v12 + 32) = 0;
  *(v12 + 44) = v14;
  *(v12 + 46) = v15 & 0x3F;
  *v12 = &unk_1F0A3A540;
  *(v12 + 48) = v13;
  v16 = *a3;
  v17 = a3[1];
  *(v12 + 95) = *(a3 + 31);
  *(v12 + 64) = v16;
  *(v12 + 80) = v17;
  RB::Fill::Custom::Custom((v12 + 112), a4);
  *v12 = &unk_1F0A3BC08;
  return v12;
}

__n128 RB::DisplayList::GenericItemCopyVisitor<RB::Fill::Custom>::visit_<RB::Coverage::Primitive>(void *a1, __int128 *a2)
{
  v3 = a1[3];
  v4 = a1[1];
  v5 = a1[2];
  v9 = *(v5 + 46) & 0x3F;
  v6 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage9PrimitiveENS_4Fill6CustomEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a2, v3, a1 + 4, (v5 + 44), &v9);
  a1[5] = v6;
  v7 = a1[2];
  result = v7[1];
  v6[1] = result;
  v6[2].n128_u64[0] = v7[2].n128_u64[0];
  v6[2].n128_u32[2] = v7[2].n128_u32[2];
  v6[2].n128_u16[7] |= v7[2].n128_u16[7] & 0x7000;
  return result;
}

__n128 RB::DisplayList::GenericItemCopyVisitor<RB::Fill::Custom>::visit_<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[1];
  v5 = a1[2];
  v9 = *(v5 + 46) & 0x3F;
  v6 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeINS4_14StrokeablePathEEENS_4Fill6CustomEEEJRS0_RKS7_RKS9_RPKNS_15AffineTransformERKDF16_NS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a2, v3, a1 + 4, (v5 + 44), &v9);
  a1[5] = v6;
  v7 = a1[2];
  result = v7[1];
  v6[1] = result;
  v6[2].n128_u64[0] = v7[2].n128_u64[0];
  v6[2].n128_u32[2] = v7[2].n128_u32[2];
  v6[2].n128_u16[7] |= v7[2].n128_u16[7] & 0x7000;
  return result;
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeINS4_14StrokeablePathEEENS_4Fill6CustomEEEJRS0_RKS7_RKS9_RPKNS_15AffineTransformERKDF16_NS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v15 + 400 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0x190uLL, 15);
  }

  else
  {
    *(this + 2) = v15 + 400;
  }

  _H0 = *a6;
  __asm { FCVT            S0, H0 }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>::GenericItem1(v15, a2, a3, a4, *a5, *a7, _S0);
  *result = &unk_1F0A3C048;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>::GenericItem1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F;
  *a1 = &unk_1F0A3A980;
  *(a1 + 48) = a5;
  *(a1 + 56) = &unk_1F0A38388;
  RB::Coverage::StrokeablePath::StrokeablePath(a1 + 64, a3 + 8, a2);
  *(a1 + 112) = *(a3 + 56);
  *(a1 + 128) = *(a3 + 72);
  *(a1 + 129) = *(a3 + 73);
  *(a1 + 131) = *(a3 + 75);
  *(a1 + 132) = *(a3 + 76);
  *(a1 + 136) = *(a3 + 80);
  RB::Fill::Custom::Custom((a1 + 144), a4);
  return a1;
}

void sub_195D99AD4(_Unwind_Exception *a1)
{
  v1[7] = v2;
  RBPathRelease(v1[8], v1[9]);
  _Unwind_Resume(a1);
}

uint64_t RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>::~GenericItem(uint64_t a1)
{
  *a1 = &unk_1F0A3A980;

  v2 = *(a1 + 280);
  if (v2)
  {
    v3 = *(a1 + 280);
  }

  else
  {
    v3 = (a1 + 152);
  }

  if (*(a1 + 288))
  {
    v4 = 0;
    do
    {
      RB::CustomShader::Value::reset_data(v3);
      ++v4;
      v3 += 4;
    }

    while (v4 < *(a1 + 288));
    v2 = *(a1 + 280);
  }

  if (v2)
  {
    free(v2);
  }

  v5 = *(a1 + 144);
  if (v5 && atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::CustomShader::Closure::operator=();
  }

  *(a1 + 56) = &unk_1F0A38388;
  RBPathRelease(*(a1 + 64), *(a1 + 72));
  return a1;
}

void RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>::~GenericItem(uint64_t a1)
{
  *a1 = &unk_1F0A3A980;

  v2 = *(a1 + 280);
  if (v2)
  {
    v3 = *(a1 + 280);
  }

  else
  {
    v3 = (a1 + 152);
  }

  if (*(a1 + 288))
  {
    v4 = 0;
    do
    {
      RB::CustomShader::Value::reset_data(v3);
      ++v4;
      v3 += 4;
    }

    while (v4 < *(a1 + 288));
    v2 = *(a1 + 280);
  }

  if (v2)
  {
    free(v2);
  }

  v5 = *(a1 + 144);
  if (v5 && atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::CustomShader::Closure::operator=();
  }

  *(a1 + 56) = &unk_1F0A38388;
  RBPathRelease(*(a1 + 64), *(a1 + 72));

  JUMPOUT(0x19A8C09E0);
}

void *RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>::copy(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (*(a2 + 8) + 16);
  v5 = *(a1 + 46);
  if (a3 & 2 | v5 & 0x2000 || *(a2 + 288) != 1)
  {
    v8 = 0;
LABEL_6:
    LODWORD(v9[0]) = v5 & 0x3F;
    result = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeINS4_14StrokeablePathEEENS_4Fill6CustomEEEJRS0_RKS7_RKS9_RPKNS_15AffineTransformERKDF16_NS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a1 + 56, a1 + 144, (a1 + 48), (a1 + 44), v9);
    *(result + 1) = *(a1 + 16);
    result[4] = *(a1 + 32);
    *(result + 10) = *(a1 + 40);
    v7 = *(result + 23) | *(a1 + 46) & 0x7000;
    *(result + 23) = v7;
    goto LABEL_7;
  }

  v9[0] = &unk_1F0A3E238;
  v9[1] = v4;
  v9[2] = a1;
  v9[3] = (a1 + 144);
  v9[4] = *(a1 + 48);
  v10 = 0;
  RB::Coverage::StrokeablePath::simplify(a1 + 64, a1 + 56, v9);
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

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

float RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>::min_scale(uint64_t a1)
{
  result = 0.0;
  if (!*(a1 + 128) && *(a1 + 132) == 1)
  {
    return 1.0;
  }

  return result;
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>::has_no_effect(uint64_t a1)
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    return RB::may_discard_alpha(*(a1 + 46) & 0x3F);
  }

  else
  {
    return 0;
  }
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>::render(uint64_t a1, int a2, RB::RenderPass *a3, double a4, int a5, int a6)
{
  v6 = *(a1 + 48);
  v7.i64[0] = SLODWORD(a4);
  v7.i64[1] = SHIDWORD(a4);
  v8 = *(v6 + 16);
  v9 = vaddq_f64(*(v6 + 32), vcvtq_f64_s64(v7));
  v16[0] = *v6;
  v16[1] = v8;
  v16[2] = v9;
  _H0 = *(a1 + 44);
  v17 = *(a1 + 128);
  v18 = *(a1 + 129);
  v19 = *(a1 + 131);
  v20 = *(a1 + 132);
  v21 = *(a1 + 136);
  v22 = 1065353216;
  v23 = 1;
  v24 = 0;
  if (v17 == 1)
  {
    abort();
  }

  __asm { FCVT            S0, H0 }

  RB::render_stroke(a3, v16, a1 + 56, &v17, (a1 + 144), a5, a6, _S0);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>::render(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 24);
  _H0 = *(a1 + 44);
  __asm { FCVT            S8, H0 }

  v11 = *(a1 + 46) & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(v22, v12, v13, v14, v15);
  if (*(a2 + 88) != v5 || !RB::Bounds::contains((a2 + 96), *&v22[0].f64[0], *&v22[0].f64[1]))
  {
    v16 = 0;
LABEL_10:
    RB::CGContext::update_state_slow(a2, v4, v5, v11, v22, v16, _S8);
    goto LABEL_11;
  }

  v16 = 1;
  if (*(a2 + 80) != v4)
  {
    goto LABEL_10;
  }

  if (*(a2 + 140) != _S8 || *(a2 + 144) != v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  RB::CGContext::save(a2);
  RB::Coverage::StrokeablePath::clip(a1 + 64, a1 + 56, a2);
  v22[0] = xmmword_195E42760;
  v22[1] = xmmword_195E42770;
  v23 = 0;
  v24 = 0;
  v18 = RB::Coverage::Stroke<RB::Coverage::StrokeablePath>::bounds(a1 + 56, v22);
  RB::Bounds::Bounds(&v25, v18, v19, v20, v21);
  RB::Fill::Custom::fill(a1 + 144, a2);
  RB::CGContext::restore(a2);
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>::prepare_mix(uint64_t a1, RB::DisplayList::Interpolator::Contents *a2, unint64_t *a3, uint64_t a4)
{
  result = (*(*a4 + 16))(a4);
  if (result == 16789505)
  {
    result = RB::DisplayList::Item::may_mix(a1, a2, a4, v9);
    if (result)
    {
      v11 = result;
      result = RB::can_mix(*(a1 + 48), *(a4 + 48), v10);
      if (result < v11)
      {
        v11 = result;
      }

      if (result)
      {
        if (*(a1 + 128) == *(a4 + 128) && *(a1 + 129) == *(a4 + 129) && *(a1 + 130) == *(a4 + 130) && *(a1 + 131) == *(a4 + 131) && *(a1 + 132) == *(a4 + 132) && *(a1 + 136) == *(a4 + 136))
        {
          result = RB::Coverage::StrokeablePath::can_mix(a1 + 64, a4 + 64, v12);
          if (result)
          {
            v13 = result;
            can_mix = RB::Fill::Custom::can_mix((a1 + 144), (a4 + 144));

            return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v13, can_mix);
          }
        }
      }
    }
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v29[0] = v10;
  v29[1] = v11;
  v29[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v29);
  v13 = (*(*&a4->f64[0] + 8) + 16);
  v14 = v8 + 144;
  RB::Fill::Custom::mix((v8 + 144), *(a2 + 8), (a3 + 144), *(a2 + 16), v13);
  *&v15 = RB::operator*(a1[6], a4 + 68);
  v26 = v15;
  v27 = v16;
  v28 = v17;
  *&v18 = RB::operator*(*(a3 + 48), a4 + 68);
  v25[0] = v18;
  v25[1] = v19;
  v25[2] = v20;
  LODWORD(v18) = *(a2 + 16);
  RB::Coverage::StrokeablePath::mix(v8 + 64, v13, a3 + 64, &v26, v25, *(v8 + 48), *&v18);
  *(v8 + 136) = *(v8 + 136) + ((*(a3 + 136) - *(v8 + 136)) * *(a2 + 16));
  *(v8 + 112) = 0x100000001000000;
  *(v8 + 120) = vneg_f32(0x80000000800000);
  if ((*(v8 + 46) & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    *&v26 = &unk_1F0A3E238;
    *(&v26 + 1) = v13;
    *&v27 = v8;
    *(&v27 + 1) = v8 + 144;
    v28 = *(v8 + 48);
    RB::Coverage::StrokeablePath::simplify(v8 + 64, v8 + 56, &v26);
    if (*(&v28 + 1))
    {
      *v8 = &unk_1F0A3A980;

      v21 = *(v8 + 280);
      if (v21)
      {
        v22 = *(v8 + 280);
      }

      else
      {
        v22 = (v8 + 152);
      }

      if (*(v8 + 288))
      {
        v23 = 0;
        do
        {
          RB::CustomShader::Value::reset_data(v22);
          ++v23;
          v22 += 4;
        }

        while (v23 < *(v8 + 288));
        v21 = *(v8 + 280);
      }

      if (v21)
      {
        free(v21);
      }

      if (*v14 && atomic_fetch_add_explicit((*v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RBDrawingStateAddShaderFilter_cold_1();
      }

      *(v8 + 56) = &unk_1F0A38388;
      RBPathRelease(*(v8 + 64), *(v8 + 72));
      v8 = *(&v28 + 1);
    }

    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>::prepare_encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Item::prepare_encode(a1, a2);

  return RB::Fill::Custom::prepare_encode((a1 + 18), a2);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>::encode(void *a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>(this, 1, (a1 + 7));
  RB::Encoder::typed_message_field<RB::Fill::Custom>(this, 2, (a1 + 18));
  v4 = a1[6];
  if (v4)
  {
    v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
    if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(this, 0x1AuLL);
      RB::ProtobufEncoder::begin_length_delimited(this);
      RB::AffineTransform::encode(v4->f64, this);
      RB::ProtobufEncoder::end_length_delimited(this);
    }
  }

  RB::ProtobufEncoder::end_length_delimited(this);

  return RB::DisplayList::Item::encode(a1, this);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>();
}

void *RB::Encoder::typed_message_field<RB::Fill::Custom>(RB::Encoder *a1, uint64_t a2, RB::Fill::Custom *a3)
{
  RB::ProtobufEncoder::encode_varint(a1, (8 * a2) | 2);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RB::ProtobufEncoder::encode_varint(a1, 0x22uLL);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RB::Fill::Custom::encode(a3, a1);
  RB::ProtobufEncoder::end_length_delimited(a1);

  return RB::ProtobufEncoder::end_length_delimited(a1);
}

void sub_195D9A7D4(_Unwind_Exception *exception_object)
{
  v3 = v1[2] - 1;
  v1[2] = v3;
  if (!v3)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::Custom const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, float *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v15 + 400 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0x190uLL, 15);
  }

  else
  {
    *(this + 2) = v15 + 400;
  }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>::GenericItem1(v15, a2, a3, a4, *a5, *a7, *a6);
  *result = &unk_1F0A3C048;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Custom>::GenericItem1(uint64_t a1, size_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F;
  *a1 = &unk_1F0A3B640;
  *(a1 + 48) = a5;
  *(a1 + 56) = RBPathRetain(*a3, *(a3 + 8));
  *(a1 + 64) = v16;
  v17 = *(a3 + 16);
  if (v17)
  {
    v18 = ((a2[2] + 15) & 0xFFFFFFFFFFFFFFF0);
    if ((v18 + 3) > a2[3])
    {
      v18 = RB::Heap::alloc_slow(a2, 0x30uLL, 15);
    }

    else
    {
      a2[2] = (v18 + 3);
    }

    v19 = *v17;
    v20 = v17[2];
    v18[1] = v17[1];
    v18[2] = v20;
    *v18 = v19;
  }

  else
  {
    v18 = 0;
  }

  *(a1 + 72) = v18;
  *(a1 + 80) = *(a3 + 24);
  *(a1 + 84) = *(a3 + 28);
  RB::Fill::Custom::Custom((a1 + 96), a4);
  return a1;
}

uint64_t RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Custom>::~GenericItem(uint64_t a1)
{
  *a1 = &unk_1F0A3B640;

  v2 = *(a1 + 232);
  if (v2)
  {
    v3 = *(a1 + 232);
  }

  else
  {
    v3 = (a1 + 104);
  }

  if (*(a1 + 240))
  {
    v4 = 0;
    do
    {
      RB::CustomShader::Value::reset_data(v3);
      ++v4;
      v3 += 4;
    }

    while (v4 < *(a1 + 240));
    v2 = *(a1 + 232);
  }

  if (v2)
  {
    free(v2);
  }

  v5 = *(a1 + 96);
  if (v5 && atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::CustomShader::Closure::operator=();
  }

  RBPathRelease(*(a1 + 56), *(a1 + 64));
  return a1;
}

void RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Custom>::~GenericItem(uint64_t a1)
{
  *a1 = &unk_1F0A3B640;

  v2 = *(a1 + 232);
  if (v2)
  {
    v3 = *(a1 + 232);
  }

  else
  {
    v3 = (a1 + 104);
  }

  if (*(a1 + 240))
  {
    v4 = 0;
    do
    {
      RB::CustomShader::Value::reset_data(v3);
      ++v4;
      v3 += 4;
    }

    while (v4 < *(a1 + 240));
    v2 = *(a1 + 232);
  }

  if (v2)
  {
    free(v2);
  }

  v5 = *(a1 + 96);
  if (v5 && atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::CustomShader::Closure::operator=();
  }

  RBPathRelease(*(a1 + 56), *(a1 + 64));

  JUMPOUT(0x19A8C09E0);
}

void *RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Custom>::copy(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (*(a2 + 8) + 16);
  v5 = *(a1 + 46);
  if (a3 & 2 | v5 & 0x2000 || *(a2 + 288) != 1)
  {
    v8 = 0;
LABEL_6:
    LODWORD(v9[0]) = v5 & 0x3F;
    result = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage4PathENS_4Fill6CustomEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a1 + 56, a1 + 96, (a1 + 48), (a1 + 44), v9);
    *(result + 1) = *(a1 + 16);
    result[4] = *(a1 + 32);
    *(result + 10) = *(a1 + 40);
    v7 = *(result + 23) | *(a1 + 46) & 0x7000;
    *(result + 23) = v7;
    goto LABEL_7;
  }

  v9[0] = &unk_1F0A3E238;
  v9[1] = v4;
  v9[2] = a1;
  v9[3] = a1 + 96;
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

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Custom>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

float32x2_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Custom>::atom_position(uint64_t a1)
{
  v4.var1 = *(a1 + 48);
  v4.var0 = (a1 + 56);
  v1 = RB::Coverage::Path::bounds(v4);
  return vmla_f32(*&v1, 0x3F0000003F000000, v2);
}

double RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Custom>::bounds(uint64_t a1)
{
  v2.var1 = *(a1 + 48);
  v2.var0 = (a1 + 56);
  return RB::Coverage::Path::bounds(v2);
}

float RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Custom>::min_scale(uint64_t a1)
{
  result = RB::Coverage::Path::min_scale((a1 + 56), *(a1 + 48));
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Custom>::has_no_effect(uint64_t a1)
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    return RB::may_discard_alpha(*(a1 + 46) & 0x3F);
  }

  else
  {
    return 0;
  }
}

void RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Custom>::render(uint64_t a1, int a2, RB::RenderPass *a3, double a4, char a5, unsigned int a6)
{
  v24[5] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v10.i64[0] = SLODWORD(a4);
  v10.i64[1] = SHIDWORD(a4);
  v11 = *(v9 + 16);
  v12 = vaddq_f64(*(v9 + 32), vcvtq_f64_s64(v10));
  v19[0] = *v9;
  v19[1] = v11;
  v19[2] = v12;
  _H8 = *(a1 + 44);
  RB::Path::ImmediateRenderer::ImmediateRenderer(v20, a3, v19, (a1 + 56));
  __asm { FCVT            S0, H8 }

  RB::Path::Renderer::render(v24, (a1 + 96), v19, a5, a6, _S0);
  if (v23 == 1)
  {
    RB::Path::Accumulator::commit_buffer(&v21);
  }

  if (v22)
  {
    free(v22);
  }
}

void sub_195D9AEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  if (a47)
  {
    free(a47);
  }

  _Unwind_Resume(exception_object);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Custom>::render(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 24);
  _H0 = *(a1 + 44);
  __asm { FCVT            S8, H0 }

  v11 = *(a1 + 46) & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(v22, v12, v13, v14, v15);
  if (*(a2 + 88) != v5 || !RB::Bounds::contains((a2 + 96), *&v22[0], *(v22 + 8)))
  {
    v16 = 0;
LABEL_10:
    RB::CGContext::update_state_slow(a2, v4, v5, v11, v22, v16, _S8);
    goto LABEL_11;
  }

  v16 = 1;
  if (*(a2 + 80) != v4)
  {
    goto LABEL_10;
  }

  if (*(a2 + 140) != _S8 || *(a2 + 144) != v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  RB::CGContext::save(a2);
  RB::Coverage::Path::clip((a1 + 56), a2);
  v22[0] = xmmword_195E42760;
  v22[1] = xmmword_195E42770;
  v23 = 0;
  v24 = 0;
  v26.var0 = (a1 + 56);
  v26.var1 = v22;
  v18 = RB::Coverage::Path::bounds(v26);
  RB::Bounds::Bounds(&v25, *&v18, v19, v20, v21);
  RB::Fill::Custom::fill(a1 + 96, a2);
  RB::CGContext::restore(a2);
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Custom>::prepare_mix(float64x2_t **a1, RB::DisplayList::Interpolator::Contents *a2, const RB::DisplayList::Interpolator::Op *a3, float64x2_t **a4)
{
  result = (*&(*a4)[1].f64[0])(a4);
  if (result == 16785409)
  {
    result = RB::DisplayList::Item::may_mix(a1, a2, a4, v9);
    if (result)
    {
      v11 = result;
      result = RB::can_mix(a1[6], a4[6], v10);
      if (result < v11)
      {
        v11 = result;
      }

      if (result)
      {
        result = RB::Coverage::Path::can_mix(a1 + 7, a3, a4 + 7);
        if (result)
        {
          v12 = result;
          can_mix = RB::Fill::Custom::can_mix((a1 + 12), (a4 + 12));

          return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v12, can_mix);
        }
      }
    }
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Custom>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v29[0] = v10;
  v29[1] = v11;
  v29[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v29);
  v13 = (*(*&a4->f64[0] + 8) + 16);
  v14 = v8 + 96;
  RB::Fill::Custom::mix((v8 + 96), *(a2 + 8), (a3 + 96), *(a2 + 16), v13);
  v15.f64[0] = RB::operator*(a1[6], a4 + 68);
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v18.f64[0] = RB::operator*(*(a3 + 48), a4 + 68);
  v25[0] = v18;
  v25[1] = v19;
  v25[2] = v20;
  RB::Coverage::Path::mix((v8 + 56), a2, (a3 + 56), &v26, v25, *(v8 + 48), v13);
  if ((*(v8 + 46) & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    *&v26.f64[0] = &unk_1F0A3E238;
    *&v26.f64[1] = v13;
    *&v27 = v8;
    *(&v27 + 1) = v8 + 96;
    v28 = *(v8 + 48);
    RB::Coverage::Path::simplify(v8 + 56, &v26);
    if (*(&v28 + 1))
    {
      *v8 = &unk_1F0A3B640;

      v21 = *(v8 + 232);
      if (v21)
      {
        v22 = *(v8 + 232);
      }

      else
      {
        v22 = (v8 + 104);
      }

      if (*(v8 + 240))
      {
        v23 = 0;
        do
        {
          RB::CustomShader::Value::reset_data(v22);
          ++v23;
          v22 += 4;
        }

        while (v23 < *(v8 + 240));
        v21 = *(v8 + 232);
      }

      if (v21)
      {
        free(v21);
      }

      if (*v14 && atomic_fetch_add_explicit((*v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RBDrawingStateAddShaderFilter_cold_1();
      }

      RBPathRelease(*(v8 + 56), *(v8 + 64));
      v8 = *(&v28 + 1);
    }

    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Custom>::prepare_encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Item::prepare_encode(a1, a2);

  return RB::Fill::Custom::prepare_encode((a1 + 12), a2);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Custom>::encode(uint64_t a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Path>(this, 1, (a1 + 56));
  RB::Encoder::typed_message_field<RB::Fill::Custom>(this, 2, (a1 + 96));
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
    if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(this, 0x1AuLL);
      RB::ProtobufEncoder::begin_length_delimited(this);
      RB::AffineTransform::encode(v4->f64, this);
      RB::ProtobufEncoder::end_length_delimited(this);
    }
  }

  RB::ProtobufEncoder::end_length_delimited(this);

  return RB::DisplayList::Item::encode(a1, this);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Custom>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Path>();
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage4PathENS_4Fill6CustomEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, size_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v15 + 352 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0x160uLL, 15);
  }

  else
  {
    *(this + 2) = v15 + 352;
  }

  _H0 = *a6;
  __asm { FCVT            S0, H0 }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Custom>::GenericItem1(v15, a2, a3, a4, *a5, *a7, _S0);
  *result = &unk_1F0A3CD08;
  return result;
}

void *RBFillData::apply<RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>>(void *result, uint64_t a2)
{
  v2 = *result;
  if (*result <= 2)
  {
    if (v2 == 1)
    {
      return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::operator()<RB::Fill::Color>(a2, result + 2);
    }

    else if (v2 == 2)
    {
      return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::operator()<RB::Fill::Gradient>(a2, result + 2);
    }
  }

  else
  {
    switch(v2)
    {
      case 3:
        return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::operator()<RB::Fill::MeshGradient>(a2, result + 2);
      case 4:
        return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::operator()<RB::Fill::Image<RB::ImageTexture>>(a2, result + 2);
      case 5:
        return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::operator()<RB::Fill::Custom>(a2, result + 2);
    }
  }

  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::operator()<RB::Fill::Color>(uint64_t a1, uint64_t (**a2)(void, __int128 *))
{
  v4 = *a1;
  if (*(*a1 + 48) == 1)
  {
    v12[0] = &unk_1F0A3BA58;
    v12[1] = a1;
    v12[2] = a2;
    RB::Coverage::StrokeablePath::simplify(*(a1 + 8) + 8, *(a1 + 8), v12);
    v4 = *a1;
  }

  result = *(v4 + 7);
  if (!result)
  {
    result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::Color const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v4, *v4, *(a1 + 8), a2, v4 + 1, v4 + 4, v4 + 5, v4 + 12);
    v4 = *a1;
    _S0 = *(*a1 + 28);
    if (_S0 != 0.0)
    {
      __asm { FCVT            H0, S0 }

      *(result + 77) = _H0;
    }

    *(v4 + 7) = result;
  }

  if (*(v4 + 48) == 1)
  {
    *(result + 23) |= 0x2000u;
  }

  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::operator()<RB::Fill::Gradient>(uint64_t a1, uint64_t (**a2)(void, __int128 *))
{
  v4 = *a1;
  if (*(*a1 + 48) == 1)
  {
    v12[0] = &unk_1F0A3B9F8;
    v12[1] = a1;
    v12[2] = a2;
    RB::Coverage::StrokeablePath::simplify(*(a1 + 8) + 8, *(a1 + 8), v12);
    v4 = *a1;
  }

  result = *(v4 + 7);
  if (!result)
  {
    result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::Gradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v4, *v4, *(a1 + 8), a2, v4 + 1, v4 + 4, v4 + 5, v4 + 12);
    v4 = *a1;
    _S0 = *(*a1 + 28);
    if (_S0 != 0.0)
    {
      __asm { FCVT            H0, S0 }

      *(result + 97) = _H0;
    }

    *(v4 + 7) = result;
  }

  if (*(v4 + 48) == 1)
  {
    *(result + 23) |= 0x2000u;
  }

  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::operator()<RB::Fill::MeshGradient>(uint64_t a1, uint64_t (**a2)(void, __int128 *))
{
  v4 = *a1;
  if (*(*a1 + 48) == 1)
  {
    v12[0] = &unk_1F0A3E258;
    v12[1] = a1;
    v12[2] = a2;
    RB::Coverage::StrokeablePath::simplify(*(a1 + 8) + 8, *(a1 + 8), v12);
    v4 = *a1;
  }

  result = *(v4 + 7);
  if (!result)
  {
    result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::MeshGradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v4, *v4, *(a1 + 8), a2, v4 + 1, v4 + 4, v4 + 5, v4 + 12);
    v4 = *a1;
    _S0 = *(*a1 + 28);
    if (_S0 != 0.0)
    {
      __asm { FCVT            H0, S0 }

      *(result + 91) = _H0;
    }

    *(v4 + 7) = result;
  }

  if (*(v4 + 48) == 1)
  {
    *(result + 23) |= 0x2000u;
  }

  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::operator()<RB::Fill::Image<RB::ImageTexture>>(uint64_t a1, uint64_t (**a2)(void, __int128 *))
{
  v4 = *a1;
  if (*(*a1 + 48) == 1)
  {
    v12[0] = &unk_1F0A3BA38;
    v12[1] = a1;
    v12[2] = a2;
    RB::Coverage::StrokeablePath::simplify(*(a1 + 8) + 8, *(a1 + 8), v12);
    v4 = *a1;
  }

  result = *(v4 + 7);
  if (!result)
  {
    result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::Image<RB::ImageTexture> const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v4, *v4, *(a1 + 8), a2, v4 + 1, v4 + 4, v4 + 5, v4 + 12);
    v4 = *a1;
    _S0 = *(*a1 + 28);
    if (_S0 != 0.0)
    {
      __asm { FCVT            H0, S0 }

      *(result + 119) = _H0;
    }

    *(v4 + 7) = result;
  }

  if (*(v4 + 48) == 1)
  {
    *(result + 23) |= 0x2000u;
  }

  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::operator()<RB::Fill::Custom>(uint64_t a1, uint64_t (**a2)(void, __int128 *))
{
  v4 = *a1;
  if (*(*a1 + 48) == 1)
  {
    v6[0] = &unk_1F0A3BA18;
    v6[1] = a1;
    v6[2] = a2;
    RB::Coverage::StrokeablePath::simplify(*(a1 + 8) + 8, *(a1 + 8), v6);
    v4 = *a1;
  }

  result = *(v4 + 7);
  if (!result)
  {
    result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::Custom const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v4, *v4, *(a1 + 8), a2, v4 + 1, v4 + 4, v4 + 5);
    v4 = *a1;
    *(*a1 + 56) = result;
  }

  if (*(v4 + 48) == 1)
  {
    *(result + 23) |= 0x2000u;
  }

  return result;
}

uint64_t RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>::visit(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Color>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::Color const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 10, *v2 + 12);
  _S0 = *(v3 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 122) = _H0;
  }

  v3[7] = result;
  return result;
}

void *RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>::visit(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::Color const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 5, *v2 + 12);
  _S0 = *(v3 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 77) = _H0;
  }

  v3[7] = result;
  return result;
}

unint64_t RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::visit(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Gradient>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::Gradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 10, *v2 + 12);
  _S0 = *(v3 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 162) = _H0;
  }

  v3[7] = result;
  return result;
}

void *RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::visit(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::Gradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 5, *v2 + 12);
  _S0 = *(v3 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 97) = _H0;
  }

  v3[7] = result;
  return result;
}

unint64_t RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::visit(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::MeshGradient>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::MeshGradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 10, *v2 + 12);
  _S0 = *(v3 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 150) = _H0;
  }

  v3[7] = result;
  return result;
}

void *RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>::visit(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::MeshGradient>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::MeshGradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 5, *v2 + 12);
  _S0 = *(v3 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 91) = _H0;
  }

  v3[7] = result;
  return result;
}

uint64_t RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>::visit(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Image<RB::ImageTexture>>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::Image<RB::ImageTexture> const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 5, *v2 + 12);
  _S0 = *(v3 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 206) = _H0;
  }

  v3[7] = result;
  return result;
}

void *RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>::visit(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Image<RB::ImageTexture>>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::Image<RB::ImageTexture> const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 5, *v2 + 12);
  _S0 = *(v3 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 119) = _H0;
  }

  v3[7] = result;
  return result;
}

unint64_t RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>::visit(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Custom>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::Custom const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 10);
  v3[7] = result;
  return result;
}

RB::Heap *RB::DisplayList::ItemFactory::Visitor<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>::visit(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Custom>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,RB::Fill::Custom const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(**v2, **v2, a2, *(a1 + 16), *v2 + 1, *v2 + 4, *v2 + 5);
  v3[7] = result;
  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Glyphs>::operator()<RB::Fill::Gradient>(RB::Coverage::Glyphs **a1, uint64_t *a2)
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

  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Gradient>,RB::Heap&,RB::Coverage::Glyphs const&,RB::Fill::Gradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v3, *v3, a1[1], a2, v3 + 1, v3 + 4, v3 + 5, v3 + 12);
  v5 = *a1;
  _S0 = *(*a1 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 81) = _H0;
  }

  *(v5 + 7) = result;
  if (*(v5 + 48))
  {
LABEL_3:
    *(result + 23) |= 0x2000u;
  }

  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Glyphs>::operator()<RB::Fill::MeshGradient>(RB::Coverage::Glyphs **a1, uint64_t a2)
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

  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::MeshGradient>,RB::Heap&,RB::Coverage::Glyphs const&,RB::Fill::MeshGradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v3, *v3, a1[1], a2, v3 + 1, v3 + 4, v3 + 5, v3 + 12);
  v5 = *a1;
  _S0 = *(*a1 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 75) = _H0;
  }

  *(v5 + 7) = result;
  if (*(v5 + 48))
  {
LABEL_3:
    *(result + 23) |= 0x2000u;
  }

  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Glyphs>::operator()<RB::Fill::Image<RB::ImageTexture>>(RB::Coverage::Glyphs **a1, uint64_t a2)
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

  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>,RB::Heap&,RB::Coverage::Glyphs const&,RB::Fill::Image<RB::ImageTexture> const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v3, *v3, a1[1], a2, v3 + 1, v3 + 4, v3 + 5, v3 + 12);
  v5 = *a1;
  _S0 = *(*a1 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 103) = _H0;
  }

  *(v5 + 7) = result;
  if (*(v5 + 48))
  {
LABEL_3:
    *(result + 23) |= 0x2000u;
  }

  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Glyphs>::operator()<RB::Fill::Custom>(RB::Coverage::Glyphs **a1, uint64_t a2)
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
    result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Custom>,RB::Heap&,RB::Coverage::Glyphs const&,RB::Fill::Custom const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v3, *v3, a1[1], a2, v3 + 1, v3 + 4, v3 + 5);
    v5 = *a1;
    *(v5 + 7) = result;
    if ((*(v5 + 48) & 1) == 0)
    {
      return result;
    }
  }

  *(result + 23) |= 0x2000u;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Color>::make_clip(uint64_t a1, uint64_t a2, int a3, void *a4, float a5)
{
  v22 = a3;
  _H1 = *(a1 + 118);
  __asm { FCVT            S1, H1 }

  v13 = *(a2 + 8);
  _H2 = *(a1 + 44);
  __asm { FCVT            S2, H2 }

  v21 = (_S1 * a5) * _S2;
  v16 = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Glyphs>,RB::Heap&,RB::Coverage::Glyphs const&,float const&,RB::ClipMode const&,RB::AffineTransform const* const&>((v13 + 16), (v13 + 16), (a1 + 56), &v21, &v22, (a1 + 48));
  v17 = a4[5];
  v18 = v17 + 1;
  if (a4[6] < (v17 + 1))
  {
    RB::vector<RB::DisplayList::Clip *,4ul,unsigned long>::reserve_slow(a4, v18);
    v17 = a4[5];
    v18 = v17 + 1;
  }

  v19 = a4[4];
  if (!v19)
  {
    v19 = a4;
  }

  v19[v17] = v16;
  a4[5] = v18;
  return (**a1)(a1);
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Color>::append_alpha_gradient(uint64_t a1, uint64_t a2, float32x2_t *a3)
{
  if (a3[9].i8[0] != 3)
  {
    return 0;
  }

  v3 = vceq_f32(*a3, 0x3F80000000000000);
  if ((vpmin_u32(v3, v3).u32[0] & 0x80000000) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 46) & 0x3F;
  v7 = *(a2 + 8);
  v9 = *(a1 + 118) * *(a1 + 44);
  _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6GlyphsENS_4Fill8GradientEEEJRS5_RKS7_RPKNS_15AffineTransformEDF16_RNS_9BlendModeEEEEPT_DpOT0_((v7 + 16), (a1 + 56), &a3[1], (a1 + 48), &v9, &v10);
  v4 = v8;
  *(v8 + 16) = *(a1 + 16);
  *(v8 + 32) = *(a1 + 32);
  *(v8 + 40) = *(a1 + 40);
  (**a1)(a1);
  return v4;
}

RB::DisplayList::Item *RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Color>::project(float64x2_t **a1, RB::DisplayList::Builder *a2, const RB::Path::Projection *a3, float64x2_t *a4)
{
  if (*(a3 + 12) & 0x1E) == 4 || (*(a3 + 12) & 0x1E) == 6 && (*(a1 + 109))
  {
    return RB::Coverage::Glyphs::project_control_points((a1 + 7), a2, a3, a1, (a1 + 14), a1[6], a4);
  }

  else
  {
    return RB::DisplayList::Item::project(a1, a2, a3, a4);
  }
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Color>::prepare_encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Item::prepare_encode(a1, a2);

  return RB::Coverage::Glyphs::prepare_encode((a1 + 7), a2);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Color>::encode(uint64_t a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Glyphs>(this, 1, (a1 + 56));
  RB::Encoder::typed_message_field<RB::Fill::Color>(this, 2, (a1 + 112));
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
    if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(this, 0x1AuLL);
      RB::ProtobufEncoder::begin_length_delimited(this);
      RB::AffineTransform::encode(v4->f64, this);
      RB::ProtobufEncoder::end_length_delimited(this);
    }
  }

  RB::ProtobufEncoder::end_length_delimited(this);

  return RB::DisplayList::Item::encode(a1, this);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Color>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Glyphs>();
}

__n128 _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6GlyphsENS_4Fill8GradientEEEJRS5_RKS7_RPKNS_15AffineTransformEDF16_RNS_9BlendModeEEEEPT_DpOT0_(RB::Heap *this, __int128 *a2, uint64_t a3, uint64_t *a4, __int16 *a5, _WORD *a6)
{
  v12 = *(this + 3);
  v13 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v13 + 176 > v12)
  {
    v13 = RB::Heap::alloc_slow(this, 0xB0uLL, 7);
  }

  else
  {
    *(this + 2) = v13 + 176;
  }

  v14 = *a4;
  v15 = *a5;
  v16 = *a6;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 40) = 0;
  *(v13 + 32) = 0;
  *(v13 + 44) = v15;
  *(v13 + 46) = v16 & 0x3F;
  *v13 = &unk_1F0A3B0F0;
  *(v13 + 48) = v14;
  v17 = *a2;
  v18 = a2[1];
  v19 = a2[2];
  *(v13 + 104) = *(a2 + 6);
  *(v13 + 88) = v19;
  *(v13 + 72) = v18;
  *(v13 + 56) = v17;
  result = *a3;
  v21 = *(a3 + 16);
  v22 = *(a3 + 48);
  *(v13 + 144) = *(a3 + 32);
  *(v13 + 160) = v22;
  *(v13 + 112) = result;
  *(v13 + 128) = v21;
  *v13 = &unk_1F0A3C7B8;
  return result;
}

__n128 RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Gradient>::copy(__n128 *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v6 = a1[2].n128_u16[7] & 0x3F;
  v4 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6GlyphsENS_4Fill8GradientEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v3 + 16), (v3 + 16), &a1[3].n128_i8[8], &a1[7], &a1[3], &a1[2].n128_i16[6], &v6);
  result = a1[1];
  v4[1] = result;
  v4[2].n128_u64[0] = a1[2].n128_u64[0];
  v4[2].n128_u32[2] = a1[2].n128_u32[2];
  v4[2].n128_u16[7] |= a1[2].n128_u16[7] & 0x7000;
  return result;
}

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Gradient>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

void RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Gradient>::copy_atoms(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v9 = v2;
  v16 = *MEMORY[0x1E69E9840];
  if (v6 || v2[4].n128_u32[2] != v4)
  {
    RB::Heap::Heap(v14, v15, 4096, 0);
    RB::Coverage::Glyphs::Glyphs(v13, &v9[3].n128_i8[8], v14, v7, v5);
    v10 = *(v8 + 8);
    v12 = v9[2].n128_u16[7] & 0x3F;
    v11 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6GlyphsENS_4Fill8GradientEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v10 + 16), (v10 + 16), v13, &v9[7], &v9[3], &v9[2].n128_i16[6], &v12);
    *(v11 + 1) = v9[1];
    v11[4] = v9[2].n128_u64[0];
    if ((*(v8 + 288) & 1) == 0)
    {
      RB::DisplayList::Contents::copy_atoms(*(v8 + 8), v11 + 4, v7, v5);
    }

    *(v11 + 10) = v9[2].n128_u32[2];
    RB::Heap::~Heap(v14);
  }

  else
  {

    RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Gradient>::copy(v2, v3);
  }
}

void sub_195D9C7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  RB::Heap::~Heap(va);
  _Unwind_Resume(a1);
}

float32x2_t RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Gradient>::atom_bounds(float32x2_t *a1, unsigned int a2, int a3)
{
  v4 = RB::Coverage::Glyphs::glyph_bounds(a1 + 7, a2, a3);
  v6 = a1[6];

  return RB::operator*(v6, *&v4, v5);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Gradient>::make_clip(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v23 = 0.0;
  v24 = a3;
  if (!RB::Fill::Gradient::get_alpha((a1 + 112), &v23))
  {
    return RB::DisplayList::Item::make_clip(a1, a2, a3, a4, a5);
  }

  v10 = *(a2 + 8);
  _H0 = *(a1 + 44);
  __asm { FCVT            S0, H0 }

  v22 = _S0 * (a5 * v23);
  v17 = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Glyphs>,RB::Heap&,RB::Coverage::Glyphs const&,float const&,RB::ClipMode const&,RB::AffineTransform const* const&>((v10 + 16), (v10 + 16), (a1 + 56), &v22, &v24, (a1 + 48));
  v18 = a4[5];
  v19 = v18 + 1;
  if (a4[6] < (v18 + 1))
  {
    RB::vector<RB::DisplayList::Clip *,4ul,unsigned long>::reserve_slow(a4, v19);
    v18 = a4[5];
    v19 = v18 + 1;
  }

  v20 = a4[4];
  if (!v20)
  {
    v20 = a4;
  }

  v20[v18] = v17;
  a4[5] = v19;
  return (**a1)(a1);
}

void RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Gradient>::disable_subpixel_quantization(uint64_t a1, float64x2_t *a2)
{
  v3.f64[0] = RB::operator*(*(a1 + 48), a2);
  v6[0] = v3;
  v6[1] = v4;
  v6[2] = v5;
  RB::Coverage::Glyphs::disable_subpixel_quantization((a1 + 56), v6, v3.f64[0], v4.f64[0], v5);
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Gradient>::color_info(uint64_t a1, float a2, float a3)
{
  LOWORD(a2) = *(a1 + 160);
  LOWORD(a3) = *(a1 + 162);
  if (*&a3 >= *&a2 || *&a3 == COERCE_SHORT_FLOAT(0))
  {
    LOWORD(a3) = *(a1 + 160);
  }

  return (LODWORD(a2) << 16) | (LODWORD(a3) << 32) | *(a1 + 172);
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Gradient>::has_no_effect(uint64_t a1)
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    return RB::may_discard_alpha(*(a1 + 46) & 0x3F);
  }

  else
  {
    return 0;
  }
}

void RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Gradient>::render(float32x2_t *a1, int a2, uint64_t a3, double a4, char a5, unsigned int a6)
{
  v6 = a1[6];
  v7.i64[0] = SLODWORD(a4);
  v7.i64[1] = SHIDWORD(a4);
  v8 = v6[1];
  _Q0 = vaddq_f64(v6[2], vcvtq_f64_s64(v7));
  v14[0] = *v6;
  v14[1] = v8;
  v14[2] = _Q0;
  LOWORD(_Q0.f64[0]) = a1[5].i16[2];
  __asm { FCVT            S0, H0 }

  RB::render_glyphs(a3, v14, a1 + 7, a1 + 14, a5, a6, *_Q0.f64);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Gradient>::render(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 24);
  _H0 = *(a1 + 44);
  __asm { FCVT            S8, H0 }

  v11 = *(a1 + 46) & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(v23, v12, v13, v14, v15);
  if (*(a2 + 88) != v5 || !RB::Bounds::contains((a2 + 96), *&v23[0].f64[0], *&v23[0].f64[1]))
  {
    v16 = 0;
LABEL_10:
    RB::CGContext::update_state_slow(a2, v4, v5, v11, v23, v16, _S8);
    goto LABEL_11;
  }

  v16 = 1;
  if (*(a2 + 80) != v4)
  {
    goto LABEL_10;
  }

  if (*(a2 + 140) != _S8 || *(a2 + 144) != v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  RB::CGContext::save(a2);
  RB::Coverage::Glyphs::clip((a1 + 56), a2);
  v23[0] = xmmword_195E42760;
  v23[1] = xmmword_195E42770;
  v24 = 0;
  v25 = 0;
  v18 = RB::Coverage::Glyphs::bounds((a1 + 56), v23, 0);
  RB::Bounds::Bounds(&v26, *&v18, v19, v20, v21);
  *v22.f32 = v26;
  RB::Fill::Gradient::fill((a1 + 112), a2, v22);
  RB::CGContext::restore(a2);
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Gradient>::prepare_mix(float64x2_t **a1, RB::DisplayList::Interpolator::Contents *a2, const RB::DisplayList::Interpolator::Op *a3, float64x2_t **a4)
{
  result = (*&(*a4)[1].f64[0])(a4);
  if (result == 8409089)
  {
    result = RB::DisplayList::Item::may_mix(a1, a2, a4, v9);
    if (result)
    {
      v11 = result;
      result = RB::can_mix(a1[6], a4[6], v10);
      if (result < v11)
      {
        v11 = result;
      }

      if (result)
      {
        result = RB::Coverage::Glyphs::can_mix((a1 + 7), a3, (a4 + 7));
        if (result)
        {
          v13 = result;
          can_mix = RB::Fill::Gradient::can_mix((a1 + 14), (a4 + 14), v12);

          return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v13, can_mix);
        }
      }
    }
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Gradient>::mix(CGAffineTransform **a1, uint64_t a2, float64x2_t **a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], a3[6], v9, *(a2 + 16));
  v24[0] = v10;
  v24[1] = v11;
  v24[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v24);
  v13 = *(*&a4->f64[0] + 8);
  v14.i32[0] = *(a2 + 16);
  RB::Fill::Gradient::mix((v8 + 112), *(a2 + 8), (a3 + 14), v14, (v13 + 16));
  v15.f64[0] = RB::operator*(a1[6], a4 + 68);
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v18.f64[0] = RB::operator*(a3[6], a4 + 68);
  v22[0] = v18;
  v22[1] = v19;
  v22[2] = v20;
  RB::Coverage::Glyphs::mix((v8 + 56), a2, (a3 + 7), v23, v22, *(v8 + 48), (v13 + 16));
  if ((*(v8 + 46) & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Gradient>::prepare_encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Item::prepare_encode(a1, a2);

  return RB::Coverage::Glyphs::prepare_encode((a1 + 7), a2);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Gradient>::encode(uint64_t a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Glyphs>(this, 1, (a1 + 56));
  RB::Encoder::typed_message_field<RB::Fill::Gradient>(this, 2, (a1 + 112));
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
    if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(this, 0x1AuLL);
      RB::ProtobufEncoder::begin_length_delimited(this);
      RB::AffineTransform::encode(v4->f64, this);
      RB::ProtobufEncoder::end_length_delimited(this);
    }
  }

  RB::ProtobufEncoder::end_length_delimited(this);

  return RB::DisplayList::Item::encode(a1, this);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Gradient>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Glyphs>();
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6GlyphsENS_4Fill8GradientEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, RB::Heap *a2, RB::Coverage::Glyphs *a3, uint64_t *a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v15 + 176 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0xB0uLL, 7);
  }

  else
  {
    *(this + 2) = v15 + 176;
  }

  _H0 = *a6;
  __asm { FCVT            S0, H0 }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Gradient>::GenericItem1(v15, a2, a3, a4, *a5, *a7, 0, _S0);
  *result = &unk_1F0A3C7B8;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Gradient>::GenericItem1(uint64_t a1, RB::Heap *a2, RB::Coverage::Glyphs *a3, uint64_t *a4, uint64_t a5, char a6, __int16 a7, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F;
  *a1 = &unk_1F0A3B0F0;
  *(a1 + 48) = a5;
  RB::Coverage::Glyphs::Glyphs((a1 + 56), a3, a2);
  RB::Fill::Gradient::Gradient((a1 + 112), a4, a7, a2);
  return a1;
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Gradient>,RB::Heap&,RB::Coverage::Glyphs const&,RB::Fill::Gradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, RB::Heap *a2, RB::Coverage::Glyphs *a3, uint64_t *a4, uint64_t *a5, float *a6, _DWORD *a7, __int16 *a8)
{
  v16 = *(this + 3);
  v17 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v17 + 176 > v16)
  {
    v17 = RB::Heap::alloc_slow(this, 0xB0uLL, 7);
  }

  else
  {
    *(this + 2) = v17 + 176;
  }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Gradient>::GenericItem1(v17, a2, a3, a4, *a5, *a7, *a8, *a6);
  *result = &unk_1F0A3C7B8;
  return result;
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::MeshGradient>,RB::Heap&,RB::Coverage::Glyphs const&,RB::Fill::MeshGradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, RB::Heap *a2, RB::Coverage::Glyphs *a3, uint64_t a4, uint64_t *a5, float *a6, _DWORD *a7, __int16 *a8)
{
  v16 = *(this + 3);
  v17 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v17 + 160 > v16)
  {
    v17 = RB::Heap::alloc_slow(this, 0xA0uLL, 7);
  }

  else
  {
    *(this + 2) = v17 + 160;
  }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::GenericItem1(v17, a2, a3, a4, *a5, *a7, *a8, *a6);
  *result = &unk_1F0A3E278;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::GenericItem1(uint64_t a1, RB::Heap *a2, RB::Coverage::Glyphs *a3, uint64_t a4, uint64_t a5, char a6, __int16 a7, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F | 0x4000;
  *a1 = &unk_1F0A3E388;
  *(a1 + 48) = a5;
  RB::Coverage::Glyphs::Glyphs((a1 + 56), a3, a2);
  RB::Fill::MeshGradient::MeshGradient(a1 + 112, a4, a7, a2);
  return a1;
}

void *RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3E388;
  v2 = a1[15];
  if (v2 && atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::MeshGradient>::~GenericItem();
  }

  return a1;
}

void RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3E388;
  v1 = a1[15];
  if (v1 && atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::MeshGradient>::~GenericItem();
  }

  JUMPOUT(0x19A8C09E0);
}

__n128 RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::copy(__n128 *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v6 = a1[2].n128_u16[7] & 0x3F;
  v4 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6GlyphsENS_4Fill12MeshGradientEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v3 + 16), (v3 + 16), &a1[3].n128_i8[8], &a1[7], &a1[3], &a1[2].n128_i16[6], &v6);
  result = a1[1];
  v4[1] = result;
  v4[2].n128_u64[0] = a1[2].n128_u64[0];
  v4[2].n128_u32[2] = a1[2].n128_u32[2];
  v4[2].n128_u16[7] |= a1[2].n128_u16[7] & 0x7000;
  return result;
}

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

void RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::copy_atoms(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v9 = v2;
  v16 = *MEMORY[0x1E69E9840];
  if (v6 || v2[4].n128_u32[2] != v4)
  {
    RB::Heap::Heap(v14, v15, 4096, 0);
    RB::Coverage::Glyphs::Glyphs(v13, &v9[3].n128_i8[8], v14, v7, v5);
    v10 = *(v8 + 8);
    v12 = v9[2].n128_u16[7] & 0x3F;
    v11 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6GlyphsENS_4Fill12MeshGradientEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v10 + 16), (v10 + 16), v13, &v9[7], &v9[3], &v9[2].n128_i16[6], &v12);
    *(v11 + 1) = v9[1];
    v11[4] = v9[2].n128_u64[0];
    if ((*(v8 + 288) & 1) == 0)
    {
      RB::DisplayList::Contents::copy_atoms(*(v8 + 8), v11 + 4, v7, v5);
    }

    *(v11 + 10) = v9[2].n128_u32[2];
    RB::Heap::~Heap(v14);
  }

  else
  {

    RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::copy(v2, v3);
  }
}

void sub_195D9D6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  RB::Heap::~Heap(va);
  _Unwind_Resume(a1);
}

float32x2_t RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::atom_bounds(float32x2_t *a1, unsigned int a2, int a3)
{
  v4 = RB::Coverage::Glyphs::glyph_bounds(a1 + 7, a2, a3);
  v6 = a1[6];

  return RB::operator*(v6, *&v4, v5);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::make_clip(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v23 = 0.0;
  v24 = a3;
  if (!RB::Fill::MeshGradient::get_alpha((a1 + 112), &v23))
  {
    return RB::DisplayList::Item::make_clip(a1, a2, a3, a4, a5);
  }

  v10 = *(a2 + 8);
  _H0 = *(a1 + 44);
  __asm { FCVT            S0, H0 }

  v22 = _S0 * (a5 * v23);
  v17 = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Glyphs>,RB::Heap&,RB::Coverage::Glyphs const&,float const&,RB::ClipMode const&,RB::AffineTransform const* const&>((v10 + 16), (v10 + 16), (a1 + 56), &v22, &v24, (a1 + 48));
  v18 = a4[5];
  v19 = v18 + 1;
  if (a4[6] < (v18 + 1))
  {
    RB::vector<RB::DisplayList::Clip *,4ul,unsigned long>::reserve_slow(a4, v19);
    v18 = a4[5];
    v19 = v18 + 1;
  }

  v20 = a4[4];
  if (!v20)
  {
    v20 = a4;
  }

  v20[v18] = v17;
  a4[5] = v19;
  return (**a1)(a1);
}

void RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::disable_subpixel_quantization(uint64_t a1, float64x2_t *a2)
{
  v3.f64[0] = RB::operator*(*(a1 + 48), a2);
  v6[0] = v3;
  v6[1] = v4;
  v6[2] = v5;
  RB::Coverage::Glyphs::disable_subpixel_quantization((a1 + 56), v6, v3.f64[0], v4.f64[0], v5);
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::color_info(uint64_t a1, float a2, float a3)
{
  LOWORD(a2) = *(a1 + 148);
  LOWORD(a3) = *(a1 + 150);
  if (*&a3 >= *&a2 || *&a3 == COERCE_SHORT_FLOAT(0))
  {
    LOWORD(a3) = *(a1 + 148);
  }

  return (LODWORD(a2) << 16) | (LODWORD(a3) << 32) | *(a1 + 156);
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::has_no_effect(uint64_t a1)
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    return RB::may_discard_alpha(*(a1 + 46) & 0x3F);
  }

  else
  {
    return 0;
  }
}

void RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::render(float32x2_t *a1, int a2, uint64_t a3, double a4, char a5, int a6)
{
  v6 = a1[6];
  v7.i64[0] = SLODWORD(a4);
  v7.i64[1] = SHIDWORD(a4);
  v8 = v6[1];
  _Q0 = vaddq_f64(v6[2], vcvtq_f64_s64(v7));
  v14[0] = *v6;
  v14[1] = v8;
  v14[2] = _Q0;
  LOWORD(_Q0.f64[0]) = a1[5].i16[2];
  __asm { FCVT            S0, H0 }

  RB::render_glyphs(a3, v14, a1 + 7, &a1[14], a5, a6, *_Q0.f64);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::render(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 24);
  _H0 = *(a1 + 44);
  __asm { FCVT            S8, H0 }

  v11 = *(a1 + 46) & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(v22, v12, v13, v14, v15);
  if (*(a2 + 88) != v5 || !RB::Bounds::contains((a2 + 96), *&v22[0].f64[0], *&v22[0].f64[1]))
  {
    v16 = 0;
LABEL_10:
    RB::CGContext::update_state_slow(a2, v4, v5, v11, v22, v16, _S8);
    goto LABEL_11;
  }

  v16 = 1;
  if (*(a2 + 80) != v4)
  {
    goto LABEL_10;
  }

  if (*(a2 + 140) != _S8 || *(a2 + 144) != v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  RB::CGContext::save(a2);
  RB::Coverage::Glyphs::clip((a1 + 56), a2);
  v22[0] = xmmword_195E42760;
  v22[1] = xmmword_195E42770;
  v23 = 0;
  v24 = 0;
  v18 = RB::Coverage::Glyphs::bounds((a1 + 56), v22, 0);
  RB::Bounds::Bounds(v25, *&v18, v19, v20, v21);
  RB::Fill::MeshGradient::fill((a1 + 112), a2, v25[0], v25[1]);
  RB::CGContext::restore(a2);
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::prepare_mix(float64x2_t **a1, RB::DisplayList::Interpolator::Contents *a2, const RB::DisplayList::Interpolator::Op *a3, float64x2_t **a4)
{
  result = (*&(*a4)[1].f64[0])(a4);
  if (result == 20992001)
  {
    result = RB::DisplayList::Item::may_mix(a1, a2, a4, v9);
    if (result)
    {
      v11 = result;
      result = RB::can_mix(a1[6], a4[6], v10);
      if (result < v11)
      {
        v11 = result;
      }

      if (result)
      {
        result = RB::Coverage::Glyphs::can_mix((a1 + 7), a3, (a4 + 7));
        if (result)
        {
          v13 = result;
          can_mix = RB::Fill::MeshGradient::can_mix((a1 + 14), (a4 + 14), v12);

          return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v13, can_mix);
        }
      }
    }
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::mix(CGAffineTransform **a1, uint64_t a2, float64x2_t **a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], a3[6], v9, *(a2 + 16));
  v24[0] = v10;
  v24[1] = v11;
  v24[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v24);
  v13 = *(*&a4->f64[0] + 8);
  v14.i32[0] = *(a2 + 16);
  RB::Fill::MeshGradient::mix((v8 + 112), *(a2 + 8), (a3 + 14), v14, (v13 + 16));
  v15.f64[0] = RB::operator*(a1[6], a4 + 68);
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v18.f64[0] = RB::operator*(a3[6], a4 + 68);
  v22[0] = v18;
  v22[1] = v19;
  v22[2] = v20;
  RB::Coverage::Glyphs::mix((v8 + 56), a2, (a3 + 7), v23, v22, *(v8 + 48), (v13 + 16));
  if ((*(v8 + 46) & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::prepare_encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Item::prepare_encode(a1, a2);

  return RB::Coverage::Glyphs::prepare_encode((a1 + 7), a2);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::encode(uint64_t a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Glyphs>(this, 1, (a1 + 56));
  RB::Encoder::typed_message_field<RB::Fill::MeshGradient>(this, 2, (a1 + 112));
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
    if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(this, 0x1AuLL);
      RB::ProtobufEncoder::begin_length_delimited(this);
      RB::AffineTransform::encode(v4->f64, this);
      RB::ProtobufEncoder::end_length_delimited(this);
    }
  }

  RB::ProtobufEncoder::end_length_delimited(this);

  return RB::DisplayList::Item::encode(a1, this);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Glyphs>();
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6GlyphsENS_4Fill12MeshGradientEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, RB::Heap *a2, RB::Coverage::Glyphs *a3, uint64_t a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v15 + 160 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0xA0uLL, 7);
  }

  else
  {
    *(this + 2) = v15 + 160;
  }

  _H0 = *a6;
  __asm { FCVT            S0, H0 }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::MeshGradient>::GenericItem1(v15, a2, a3, a4, *a5, *a7, 0, _S0);
  *result = &unk_1F0A3E278;
  return result;
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>,RB::Heap&,RB::Coverage::Glyphs const&,RB::Fill::Image<RB::ImageTexture> const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, RB::Heap *a2, RB::Coverage::Glyphs *a3, uint64_t a4, uint64_t *a5, float *a6, _DWORD *a7, __int16 *a8)
{
  v16 = *(this + 3);
  v17 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v17 + 216 > v16)
  {
    v17 = RB::Heap::alloc_slow(this, 0xD8uLL, 7);
  }

  else
  {
    *(this + 2) = v17 + 216;
  }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>::GenericItem1(v17, a2, a3, a4, *a5, *a7, *a8, *a6);
  *result = &unk_1F0A3C9D8;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>::GenericItem1(uint64_t a1, RB::Heap *a2, RB::Coverage::Glyphs *a3, uint64_t a4, uint64_t a5, char a6, __int16 a7, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F;
  *a1 = &unk_1F0A3B310;
  *(a1 + 48) = a5;
  RB::Coverage::Glyphs::Glyphs((a1 + 56), a3, a2);
  RB::ImageTexture::ImageTexture((a1 + 112), a4, a2);
  v17 = *(a4 + 48);
  v18 = *(a4 + 64);
  v19 = *(a4 + 80);
  v20 = *(a4 + 96);
  *(a1 + 208) = v20;
  v21 = *(a4 + 32);
  *(a1 + 128) = *(a4 + 16);
  *(a1 + 144) = v21;
  *(a1 + 176) = v18;
  *(a1 + 192) = v19;
  *(a1 + 160) = v17;
  if ((v20 & 0x100) == 0)
  {
    *(a1 + 208) = a7;
  }

  return a1;
}

__n128 RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>::copy(__n128 *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v6 = a1[2].n128_u16[7] & 0x3F;
  v4 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6GlyphsENS_4Fill5ImageINS_12ImageTextureEEEEEJRS0_RKS5_RKS9_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v3 + 16), (v3 + 16), &a1[3].n128_i8[8], &a1[7], &a1[3], &a1[2].n128_i16[6], &v6);
  result = a1[1];
  v4[1] = result;
  v4[2].n128_u64[0] = a1[2].n128_u64[0];
  v4[2].n128_u32[2] = a1[2].n128_u32[2];
  v4[2].n128_u16[7] |= a1[2].n128_u16[7] & 0x7000;
  return result;
}

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

void RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>::copy_atoms(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v9 = v2;
  v16 = *MEMORY[0x1E69E9840];
  if (v6 || v2[4].n128_u32[2] != v4)
  {
    RB::Heap::Heap(v14, v15, 4096, 0);
    RB::Coverage::Glyphs::Glyphs(v13, &v9[3].n128_i8[8], v14, v7, v5);
    v10 = *(v8 + 8);
    v12 = v9[2].n128_u16[7] & 0x3F;
    v11 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6GlyphsENS_4Fill5ImageINS_12ImageTextureEEEEEJRS0_RKS5_RKS9_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v10 + 16), (v10 + 16), v13, &v9[7], &v9[3], &v9[2].n128_i16[6], &v12);
    *(v11 + 1) = v9[1];
    v11[4] = v9[2].n128_u64[0];
    if ((*(v8 + 288) & 1) == 0)
    {
      RB::DisplayList::Contents::copy_atoms(*(v8 + 8), v11 + 4, v7, v5);
    }

    *(v11 + 10) = v9[2].n128_u32[2];
    RB::Heap::~Heap(v14);
  }

  else
  {

    RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>::copy(v2, v3);
  }
}

void sub_195D9E420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  RB::Heap::~Heap(va);
  _Unwind_Resume(a1);
}

float32x2_t RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>::atom_bounds(float32x2_t *a1, unsigned int a2, int a3)
{
  v4 = RB::Coverage::Glyphs::glyph_bounds(a1 + 7, a2, a3);
  v6 = a1[6];

  return RB::operator*(v6, *&v4, v5);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>::make_clip(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v20 = a3;
  if (*(a1 + 124) == 1)
  {
    v7 = *(a2 + 8);
    _H1 = *(a1 + 44);
    __asm { FCVT            S1, H1 }

    v19 = _S1 * a5;
    v14 = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Glyphs>,RB::Heap&,RB::Coverage::Glyphs const&,float const&,RB::ClipMode const&,RB::AffineTransform const* const&>((v7 + 16), (v7 + 16), (a1 + 56), &v19, &v20, (a1 + 48));
    v15 = a4[5];
    v16 = v15 + 1;
    if (a4[6] < (v15 + 1))
    {
      RB::vector<RB::DisplayList::Clip *,4ul,unsigned long>::reserve_slow(a4, v16);
      v15 = a4[5];
      v16 = v15 + 1;
    }

    v17 = a4[4];
    if (!v17)
    {
      v17 = a4;
    }

    v17[v15] = v14;
    a4[5] = v16;
    return (**a1)(a1);
  }

  else
  {

    return RB::DisplayList::Item::make_clip(a1, a2, a3, a4, a5);
  }
}

void RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>::disable_subpixel_quantization(uint64_t a1, float64x2_t *a2)
{
  v3.f64[0] = RB::operator*(*(a1 + 48), a2);
  v6[0] = v3;
  v6[1] = v4;
  v6[2] = v5;
  RB::Coverage::Glyphs::disable_subpixel_quantization((a1 + 56), v6, v3.f64[0], v4.f64[0], v5);
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>::has_no_effect(uint64_t a1)
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    return RB::may_discard_alpha(*(a1 + 46) & 0x3F);
  }

  else
  {
    return 0;
  }
}

void RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>::render(float32x2_t *a1, double a2, uint64_t a3, uint64_t a4, char a5, unsigned int a6)
{
  v10 = a1[6];
  v11.i64[0] = SLODWORD(a2);
  v11.i64[1] = SHIDWORD(a2);
  v12 = v10[1];
  _Q0 = vaddq_f64(v10[2], vcvtq_f64_s64(v11));
  v18[0] = *v10;
  v18[1] = v12;
  v18[2] = _Q0;
  LOWORD(_Q0.f64[0]) = a1[5].i16[2];
  __asm { FCVT            S0, H0 }

  RB::Fill::Image<RB::ImageTexture>::set_image(&a1[14], v19, a4, v18, *_Q0.f64);
  RB::render_glyphs(a4, v18, a1 + 7, v19, &a1[16], a5, a6);
  *(a4 + 240) = 0;
  *(a4 + 244) = 0;
}

void RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>::render(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 24);
  _H0 = *(a1 + 44);
  __asm { FCVT            S8, H0 }

  v11 = *(a1 + 46) & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(v25, v12, v13, v14, v15);
  if (*(a2 + 88) == v5 && RB::Bounds::contains((a2 + 96), *&v25[0].f64[0], *&v25[0].f64[1]))
  {
    v16 = 1;
    if (*(a2 + 80) == v4 && *(a2 + 140) == _S8 && *(a2 + 144) == v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v16 = 0;
  }

  RB::CGContext::update_state_slow(a2, v4, v5, v11, v25, v16, _S8);
LABEL_11:
  RB::CGContext::save(a2);
  RB::Coverage::Glyphs::clip((a1 + 56), a2);
  v25[0] = xmmword_195E42760;
  v25[1] = xmmword_195E42770;
  v26 = 0;
  v27 = 0;
  v18 = RB::Coverage::Glyphs::bounds((a1 + 56), v25, 0);
  RB::Bounds::Bounds(&v28, *&v18, v19, v20, v21);
  v22 = v28;
  v23 = RB::ImageTexture::cg_image((a1 + 112));
  if (v23)
  {
    *v24.f32 = v22;
    RB::Fill::ImageData::fill((a1 + 128), a2, v23, v24);
  }

  RB::CGContext::restore(a2);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>::apply_transform(uint64_t a1, const RB::DisplayList::Transform *a2, uint64_t a3)
{
  RB::Coverage::Glyphs::apply_transform((a1 + 56), a2, (a3 + 16));

  RB::Fill::ImageData::apply_transform((a1 + 128), a2, (a3 + 16), v6);
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>::prepare_mix(uint64_t a1, RB::DisplayList::Interpolator::Contents *a2, const RB::DisplayList::Interpolator::Op *a3, uint64_t a4)
{
  result = (*(*a4 + 16))(a4);
  if (result == 12603393)
  {
    result = RB::DisplayList::Item::may_mix(a1, a2, a4, v9);
    if (result)
    {
      v11 = result;
      result = RB::can_mix(*(a1 + 48), *(a4 + 48), v10);
      if (result < v11)
      {
        v11 = result;
      }

      if (result)
      {
        result = RB::Coverage::Glyphs::can_mix((a1 + 56), a3, (a4 + 56));
        if (result)
        {
          v12 = result;
          can_mix = RB::ImageTexture::can_mix((a1 + 112), (a4 + 112));
          if (can_mix)
          {
            v14 = can_mix;
            v15 = RB::Fill::ImageData::can_mix((a1 + 128), (a4 + 128));
            if (v15 >= v14)
            {
              v16 = v14;
            }

            else
            {
              v16 = v15;
            }
          }

          else
          {
            v16 = 0;
          }

          return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v12, v16);
        }
      }
    }
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v24[0] = v10;
  v24[1] = v11;
  v24[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v24);
  v13 = *(*&a4->f64[0] + 8);
  v14.i32[0] = *(a2 + 16);
  RB::Fill::ImageData::mix((v8 + 128), *(a2 + 8), (a3 + 128), v14);
  v15.f64[0] = RB::operator*(a1[6], a4 + 68);
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v18.f64[0] = RB::operator*(*(a3 + 48), a4 + 68);
  v22[0] = v18;
  v22[1] = v19;
  v22[2] = v20;
  RB::Coverage::Glyphs::mix((v8 + 56), a2, (a3 + 56), v23, v22, *(v8 + 48), (v13 + 16));
  if ((*(v8 + 46) & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>::prepare_encode(uint64_t a1, RB::Encoder *a2)
{
  RB::DisplayList::Item::prepare_encode(a1, a2);
  RB::Coverage::Glyphs::prepare_encode(a1 + 56, a2);

  return RB::ImageTexture::prepare_encode((a1 + 112), a2);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>::encode(uint64_t a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Glyphs>(this, 1, (a1 + 56));
  RB::Encoder::typed_message_field<RB::Fill::Image<RB::ImageTexture>>(this, 2, a1 + 112);
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
    if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(this, 0x1AuLL);
      RB::ProtobufEncoder::begin_length_delimited(this);
      RB::AffineTransform::encode(v4->f64, this);
      RB::ProtobufEncoder::end_length_delimited(this);
    }
  }

  RB::ProtobufEncoder::end_length_delimited(this);

  return RB::DisplayList::Item::encode(a1, this);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Glyphs>();
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6GlyphsENS_4Fill5ImageINS_12ImageTextureEEEEEJRS0_RKS5_RKS9_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, RB::Heap *a2, RB::Coverage::Glyphs *a3, uint64_t a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v15 + 216 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0xD8uLL, 7);
  }

  else
  {
    *(this + 2) = v15 + 216;
  }

  _H0 = *a6;
  __asm { FCVT            S0, H0 }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Image<RB::ImageTexture>>::GenericItem1(v15, a2, a3, a4, *a5, *a7, 0, _S0);
  *result = &unk_1F0A3C9D8;
  return result;
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Custom>,RB::Heap&,RB::Coverage::Glyphs const&,RB::Fill::Custom const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, RB::Heap *a2, RB::Coverage::Glyphs *a3, uint64_t a4, uint64_t *a5, float *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v15 + 368 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0x170uLL, 15);
  }

  else
  {
    *(this + 2) = v15 + 368;
  }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Custom>::GenericItem1(v15, a2, a3, a4, *a5, *a7, *a6);
  *result = &unk_1F0A3C8C8;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Custom>::GenericItem1(uint64_t a1, RB::Heap *a2, RB::Coverage::Glyphs *a3, uint64_t a4, uint64_t a5, char a6, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F;
  *a1 = &unk_1F0A3B200;
  *(a1 + 48) = a5;
  RB::Coverage::Glyphs::Glyphs((a1 + 56), a3, a2);
  RB::Fill::Custom::Custom((a1 + 112), a4);
  return a1;
}

uint64_t RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Custom>::~GenericItem(uint64_t a1)
{
  *a1 = &unk_1F0A3B200;

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

void RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Custom>::~GenericItem(uint64_t a1)
{
  *a1 = &unk_1F0A3B200;

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

  JUMPOUT(0x19A8C09E0);
}

__n128 RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Custom>::copy(__n128 *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v6 = a1[2].n128_u16[7] & 0x3F;
  v4 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6GlyphsENS_4Fill6CustomEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v3 + 16), (v3 + 16), &a1[3].n128_i8[8], &a1[7], &a1[3], &a1[2].n128_i16[6], &v6);
  result = a1[1];
  v4[1] = result;
  v4[2].n128_u64[0] = a1[2].n128_u64[0];
  v4[2].n128_u32[2] = a1[2].n128_u32[2];
  v4[2].n128_u16[7] |= a1[2].n128_u16[7] & 0x7000;
  return result;
}

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Custom>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

void RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Custom>::copy_atoms(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v9 = v2;
  v16 = *MEMORY[0x1E69E9840];
  if (v6 || v2[4].n128_u32[2] != v4)
  {
    RB::Heap::Heap(v14, v15, 4096, 0);
    RB::Coverage::Glyphs::Glyphs(v13, &v9[3].n128_i8[8], v14, v7, v5);
    v10 = *(v8 + 8);
    v12 = v9[2].n128_u16[7] & 0x3F;
    v11 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6GlyphsENS_4Fill6CustomEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v10 + 16), (v10 + 16), v13, &v9[7], &v9[3], &v9[2].n128_i16[6], &v12);
    *(v11 + 1) = v9[1];
    v11[4] = v9[2].n128_u64[0];
    if ((*(v8 + 288) & 1) == 0)
    {
      RB::DisplayList::Contents::copy_atoms(*(v8 + 8), v11 + 4, v7, v5);
    }

    *(v11 + 10) = v9[2].n128_u32[2];
    RB::Heap::~Heap(v14);
  }

  else
  {

    RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Custom>::copy(v2, v3);
  }
}

void sub_195D9F378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  RB::Heap::~Heap(va);
  _Unwind_Resume(a1);
}

float32x2_t RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Custom>::atom_bounds(float32x2_t *a1, unsigned int a2, int a3)
{
  v4 = RB::Coverage::Glyphs::glyph_bounds(a1 + 7, a2, a3);
  v6 = a1[6];

  return RB::operator*(v6, *&v4, v5);
}

void RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Custom>::disable_subpixel_quantization(uint64_t a1, float64x2_t *a2)
{
  v3.f64[0] = RB::operator*(*(a1 + 48), a2);
  v6[0] = v3;
  v6[1] = v4;
  v6[2] = v5;
  RB::Coverage::Glyphs::disable_subpixel_quantization((a1 + 56), v6, v3.f64[0], v4.f64[0], v5);
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Custom>::has_no_effect(uint64_t a1)
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    return RB::may_discard_alpha(*(a1 + 46) & 0x3F);
  }

  else
  {
    return 0;
  }
}

void RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Custom>::render(float32x2_t *a1, double a2, uint64_t a3, uint64_t a4, char a5, unsigned int a6)
{
  v6 = a1[6];
  v7.i64[0] = SLODWORD(a2);
  v7.i64[1] = SHIDWORD(a2);
  v8 = v6[1];
  _Q0 = vaddq_f64(v6[2], vcvtq_f64_s64(v7));
  v14[0] = *v6;
  v14[1] = v8;
  v14[2] = _Q0;
  LOWORD(_Q0.f64[0]) = a1[5].i16[2];
  __asm { FCVT            S0, H0 }

  RB::render_glyphs(a4, v14, a1 + 7, &a1[14], a5, a6, *_Q0.f64);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Custom>::render(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 24);
  _H0 = *(a1 + 44);
  __asm { FCVT            S8, H0 }

  v11 = *(a1 + 46) & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(v22, v12, v13, v14, v15);
  if (*(a2 + 88) != v5 || !RB::Bounds::contains((a2 + 96), *&v22[0].f64[0], *&v22[0].f64[1]))
  {
    v16 = 0;
LABEL_10:
    RB::CGContext::update_state_slow(a2, v4, v5, v11, v22, v16, _S8);
    goto LABEL_11;
  }

  v16 = 1;
  if (*(a2 + 80) != v4)
  {
    goto LABEL_10;
  }

  if (*(a2 + 140) != _S8 || *(a2 + 144) != v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  RB::CGContext::save(a2);
  RB::Coverage::Glyphs::clip((a1 + 56), a2);
  v22[0] = xmmword_195E42760;
  v22[1] = xmmword_195E42770;
  v23 = 0;
  v24 = 0;
  v18 = RB::Coverage::Glyphs::bounds((a1 + 56), v22, 0);
  RB::Bounds::Bounds(&v25, *&v18, v19, v20, v21);
  RB::Fill::Custom::fill(a1 + 112, a2);
  RB::CGContext::restore(a2);
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Custom>::prepare_mix(float64x2_t **a1, RB::DisplayList::Interpolator::Contents *a2, const RB::DisplayList::Interpolator::Op *a3, float64x2_t **a4)
{
  result = (*&(*a4)[1].f64[0])(a4);
  if (result == 16797697)
  {
    result = RB::DisplayList::Item::may_mix(a1, a2, a4, v9);
    if (result)
    {
      v11 = result;
      result = RB::can_mix(a1[6], a4[6], v10);
      if (result < v11)
      {
        v11 = result;
      }

      if (result)
      {
        result = RB::Coverage::Glyphs::can_mix((a1 + 7), a3, (a4 + 7));
        if (result)
        {
          v12 = result;
          can_mix = RB::Fill::Custom::can_mix((a1 + 14), (a4 + 14));

          return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v12, can_mix);
        }
      }
    }
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Custom>::mix(CGAffineTransform **a1, uint64_t a2, float64x2_t **a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], a3[6], v9, *(a2 + 16));
  v23[0] = v10;
  v23[1] = v11;
  v23[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v23);
  v13 = *(*&a4->f64[0] + 8);
  RB::Fill::Custom::mix((v8 + 112), *(a2 + 8), (a3 + 14), *(a2 + 16), (v13 + 16));
  v14.f64[0] = RB::operator*(a1[6], a4 + 68);
  v22[0] = v14;
  v22[1] = v15;
  v22[2] = v16;
  v17.f64[0] = RB::operator*(a3[6], a4 + 68);
  v21[0] = v17;
  v21[1] = v18;
  v21[2] = v19;
  RB::Coverage::Glyphs::mix((v8 + 56), a2, (a3 + 7), v22, v21, *(v8 + 48), (v13 + 16));
  if ((*(v8 + 46) & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Custom>::prepare_encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Item::prepare_encode(a1, a2);
  RB::Coverage::Glyphs::prepare_encode((a1 + 7), a2);

  return RB::Fill::Custom::prepare_encode((a1 + 14), a2);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Custom>::encode(uint64_t a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Glyphs>(this, 1, (a1 + 56));
  RB::Encoder::typed_message_field<RB::Fill::Custom>(this, 2, (a1 + 112));
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
    if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(this, 0x1AuLL);
      RB::ProtobufEncoder::begin_length_delimited(this);
      RB::AffineTransform::encode(v4->f64, this);
      RB::ProtobufEncoder::end_length_delimited(this);
    }
  }

  RB::ProtobufEncoder::end_length_delimited(this);

  return RB::DisplayList::Item::encode(a1, this);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Custom>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Glyphs>();
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6GlyphsENS_4Fill6CustomEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, RB::Heap *a2, RB::Coverage::Glyphs *a3, uint64_t a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v15 + 368 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0x170uLL, 15);
  }

  else
  {
    *(this + 2) = v15 + 368;
  }

  _H0 = *a6;
  __asm { FCVT            S0, H0 }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Custom>::GenericItem1(v15, a2, a3, a4, *a5, *a7, _S0);
  *result = &unk_1F0A3C8C8;
  return result;
}

void *RBFillData::apply<RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RBStrokeRef>>>(void *result, uint64_t *a2)
{
  v2 = *result;
  if (*result <= 2)
  {
    if (v2 == 1)
    {
      return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RBStrokeRef>>::operator()<RB::Fill::Color>(a2, (result + 2));
    }

    else if (v2 == 2)
    {
      return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RBStrokeRef>>::operator()<RB::Fill::Gradient>(a2, result + 2);
    }
  }

  else
  {
    switch(v2)
    {
      case 3:
        return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RBStrokeRef>>::operator()<RB::Fill::MeshGradient>(a2, (result + 2));
      case 4:
        return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RBStrokeRef>>::operator()<RB::Fill::Image<RB::ImageTexture>>(a2, (result + 2));
      case 5:
        return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RBStrokeRef>>::operator()<RB::Fill::Custom>(a2, (result + 2));
    }
  }

  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RBStrokeRef>>::operator()<RB::Fill::Color>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = *(*a1 + 56);
  if (result)
  {
    if (*(v3 + 48) != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>,RB::Heap&,RB::Coverage::Stroke<RBStrokeRef> const&,RB::Fill::Color const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v3, *v3, a1[1], a2, (v3 + 8), (v3 + 16), (v3 + 20), (v3 + 24));
  v5 = *a1;
  _S0 = *(*a1 + 28);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 57) = _H0;
  }

  *(v5 + 56) = result;
  if (*(v5 + 48))
  {
LABEL_3:
    *(result + 23) |= 0x2000u;
  }

  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RBStrokeRef>>::operator()<RB::Fill::Gradient>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  result = *(*a1 + 56);
  if (result)
  {
    if (*(v3 + 48) != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>,RB::Heap&,RB::Coverage::Stroke<RBStrokeRef> const&,RB::Fill::Gradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v3, *v3, a1[1], a2, (v3 + 8), (v3 + 16), (v3 + 20), (v3 + 24));
  v5 = *a1;
  _S0 = *(*a1 + 28);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 77) = _H0;
  }

  *(v5 + 56) = result;
  if (*(v5 + 48))
  {
LABEL_3:
    *(result + 23) |= 0x2000u;
  }

  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RBStrokeRef>>::operator()<RB::Fill::MeshGradient>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = *(*a1 + 56);
  if (result)
  {
    if (*(v3 + 48) != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>,RB::Heap&,RB::Coverage::Stroke<RBStrokeRef> const&,RB::Fill::MeshGradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v3, *v3, a1[1], a2, (v3 + 8), (v3 + 16), (v3 + 20), (v3 + 24));
  v5 = *a1;
  _S0 = *(*a1 + 28);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 71) = _H0;
  }

  *(v5 + 56) = result;
  if (*(v5 + 48))
  {
LABEL_3:
    *(result + 23) |= 0x2000u;
  }

  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RBStrokeRef>>::operator()<RB::Fill::Image<RB::ImageTexture>>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = *(*a1 + 56);
  if (result)
  {
    if (*(v3 + 48) != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Image<RB::ImageTexture>>,RB::Heap&,RB::Coverage::Stroke<RBStrokeRef> const&,RB::Fill::Image<RB::ImageTexture> const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v3, *v3, a1[1], a2, (v3 + 8), (v3 + 16), (v3 + 20), (v3 + 24));
  v5 = *a1;
  _S0 = *(*a1 + 28);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 99) = _H0;
  }

  *(v5 + 56) = result;
  if (*(v5 + 48))
  {
LABEL_3:
    *(result + 23) |= 0x2000u;
  }

  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Stroke<RBStrokeRef>>::operator()<RB::Fill::Custom>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = *(*a1 + 56);
  if (result)
  {
    if (*(v3 + 48) != 1)
    {
      return result;
    }
  }

  else
  {
    result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Custom>,RB::Heap&,RB::Coverage::Stroke<RBStrokeRef> const&,RB::Fill::Custom const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v3, *v3, a1[1], a2, (v3 + 8), (v3 + 16), (v3 + 20));
    v5 = *a1;
    *(v5 + 56) = result;
    if ((*(v5 + 48) & 1) == 0)
    {
      return result;
    }
  }

  *(result + 23) |= 0x2000u;
  return result;
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>,RB::Heap&,RB::Coverage::Stroke<RBStrokeRef> const&,RB::Fill::Color const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, float *a6, _DWORD *a7, __int16 *a8)
{
  v16 = *(this + 3);
  v17 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v17 + 120 > v16)
  {
    v17 = RB::Heap::alloc_slow(this, 0x78uLL, 7);
  }

  else
  {
    *(this + 2) = v17 + 120;
  }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>::GenericItem1(v17, *a6, a2, a3, a4, *a5, *a7, *a8);
  *result = &unk_1F0A3C6A8;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>::GenericItem1(uint64_t a1, float _S0, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, __int16 a8)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a7 & 0x3F;
  *a1 = &unk_1F0A3AFE0;
  *(a1 + 48) = a6;
  *(a1 + 56) = &unk_1F0A383A8;
  *(a1 + 64) = *(a4 + 8);
  *(a1 + 72) = *(a4 + 16);
  *(a1 + 88) = *(a4 + 32);
  *(a1 + 89) = *(a4 + 33);
  *(a1 + 91) = *(a4 + 35);
  *(a1 + 92) = *(a4 + 36);
  *(a1 + 96) = *(a4 + 40);
  *(a1 + 104) = *a5;
  *(a1 + 112) = *(a5 + 8);
  if (*(a5 + 13))
  {
    v17 = *(a5 + 12);
  }

  else
  {
    v17 = a8;
  }

  *(a1 + 116) = v17;
  return a1;
}

uint64_t RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>::~GenericItem(uint64_t a1)
{
  *a1 = &unk_1F0A3AFE0;
  *(a1 + 56) = &unk_1F0A383A8;

  return a1;
}

void RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>::~GenericItem(uint64_t a1)
{
  *a1 = &unk_1F0A3AFE0;
  *(a1 + 56) = &unk_1F0A383A8;

  JUMPOUT(0x19A8C09E0);
}

__n128 RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>::copy(__n128 *a1, uint64_t a2, char a3)
{
  v4 = *(a2 + 8);
  v5 = a1[2].n128_u16[7];
  if ((((a3 & 2 | v5 & 0x2000) == 0) & *(a2 + 288)) != 0)
  {
    v6 = 0x2000;
  }

  else
  {
    v6 = 0;
  }

  v9 = v5 & 0x3F;
  v7 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeI11RBStrokeRefEENS_4Fill5ColorEEEJRS0_RKS7_RKS9_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v4 + 16), v4 + 16, &a1[3].n128_i64[1], &a1[6].n128_i64[1], &a1[3], &a1[2].n128_i16[6], &v9);
  result = a1[1];
  v7[1] = result;
  v7[2].n128_u64[0] = a1[2].n128_u64[0];
  v7[2].n128_u32[2] = a1[2].n128_u32[2];
  v7[2].n128_u16[7] |= a1[2].n128_u16[7] & 0x7000 | v6;
  return result;
}

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>::make_clip(uint64_t a1, uint64_t a2, int a3, void *a4, float a5)
{
  v22 = a3;
  _H1 = *(a1 + 110);
  __asm { FCVT            S1, H1 }

  v13 = *(a2 + 8);
  _H2 = *(a1 + 44);
  __asm { FCVT            S2, H2 }

  v21 = (_S1 * a5) * _S2;
  v16 = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>,RB::Heap&,RB::Coverage::Stroke<RBStrokeRef>&,float &,RB::ClipMode &,RB::AffineTransform const*&>((v13 + 16), v13 + 16, a1 + 56, &v21, &v22, (a1 + 48));
  v17 = a4[5];
  v18 = v17 + 1;
  if (a4[6] < (v17 + 1))
  {
    RB::vector<RB::DisplayList::Clip *,4ul,unsigned long>::reserve_slow(a4, v18);
    v17 = a4[5];
    v18 = v17 + 1;
  }

  v19 = a4[4];
  if (!v19)
  {
    v19 = a4;
  }

  v19[v17] = v16;
  a4[5] = v18;
  return (**a1)(a1);
}