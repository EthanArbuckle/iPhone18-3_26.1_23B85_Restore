double RB::Heap::emplace<RB::DisplayList::PathProjectionStyle>(RB::Heap *this)
{
  v2 = *(this + 3);
  v3 = (*(this + 2) + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v3 + 128 > v2)
  {
    v3 = RB::Heap::alloc_slow(this, 0x80uLL, 15);
  }

  else
  {
    *(this + 2) = v3 + 128;
  }

  *(v3 + 48) = 0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = &unk_1F0A394A0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  result = *&RBPathEmpty;
  *(v3 + 96) = RBPathEmpty;
  *(v3 + 112) = 0;
  return result;
}

void *RB::DisplayList::PathProjectionStyle::encode(RB::DisplayList::PathProjectionStyle *this, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(this, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x2AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::float2_field(a2, 1, COERCE_DOUBLE(vcvt_f32_f64(*(this + 4))));
  RB::ProtobufEncoder::float2_field(a2, 2, COERCE_DOUBLE(vcvt_f32_f64(*(this + 5))));
  if (*(this + 13) != 0x195E47920)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x1AuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RBPathEncode(*(this + 6), a2);
    RB::ProtobufEncoder::end_length_delimited(a2);
  }

  v4 = *(this + 28);
  if (v4)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);
    RB::ProtobufEncoder::encode_varint(a2, 1uLL);
    v4 = *(this + 28);
  }

  v5 = v4 & 0x1E;
  if ((v4 & 0x1E) != 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x28uLL);
    RB::ProtobufEncoder::encode_varint(a2, v5);
  }

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

unint64_t RB::DisplayList::PathProjectionStyle::decode(float64x2_t *this, RB::Decoder *a2)
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
          this[4] = vcvtq_f64_f32(RB::ProtobufDecoder::float2_field(a2, v6, v5).n128_u64[0]);
        }

        else
        {
          if (v7 != 2)
          {
LABEL_16:
            RB::ProtobufDecoder::skip_field(a2, v6);
            goto LABEL_17;
          }

          this[5] = vcvtq_f64_f32(RB::ProtobufDecoder::float2_field(a2, v6, v5).n128_u64[0]);
        }
      }

      else
      {
        switch(v7)
        {
          case 3:
            if ((v6 & 7) == 2)
            {
              RB::ProtobufDecoder::begin_message(a2);
              RBPathDecode(a2);
            }

            *(a2 + 56) = 1;
            *a2 = *(a2 + 1);
            goto LABEL_17;
          case 4:
            v8 = LODWORD(this[7].f64[0]) | RB::ProtobufDecoder::BOOL_field(a2, v6);
            break;
          case 5:
            LODWORD(this[7].f64[0]) &= 0xFFFFFFE1;
            v8 = RB::ProtobufDecoder::uint_field(a2, v6) & 0x1E | LODWORD(this[7].f64[0]);
            break;
          default:
            goto LABEL_16;
        }

        LODWORD(this[7].f64[0]) = v8;
      }

LABEL_17:
      result = RB::ProtobufDecoder::next_field(a2);
      v6 = result;
    }

    while (result);
  }

  return result;
}

void RB::DisplayList::PathProjectionStyle::print(const RB::AffineTransform **this, std::string *a2, uint64_t a3)
{
  RB::SexpString::print(a2, 0, "path-projection");

  RB::DisplayList::Style::print(this, a2, a3);
}

double RB::DisplayList::State::add_color_threshold(__n128 *this, RB::DisplayList::Builder *a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = *(a2 + 1);
  v13 = (v12[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v13 + 80 > v12[5])
  {
    v13 = RB::Heap::alloc_slow(v12 + 2, 0x50uLL, 7);
  }

  else
  {
    v12[4] = v13 + 80;
  }

  *(v13 + 48) = 0;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *v13 = &unk_1F0A396C0;
  *(v13 + 56) = a6;
  *(v13 + 64) = a4;
  *(v13 + 72) = a5;
  *(v13 + 76) = WORD2(a5);
  *(v13 + 78) = a3;

  *&result = RB::DisplayList::State::add_style(this, a2, v13).n128_u64[0];
  return result;
}

__n128 RB::DisplayList::AlphaThresholdStyle::copy(RB::DisplayList::AlphaThresholdStyle *this, RB::DisplayList::Builder *a2)
{
  v3 = *(a2 + 1);
  v4 = (v3[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v4 + 80 > v3[5])
  {
    v4 = RB::Heap::alloc_slow(v3 + 2, 0x50uLL, 7);
  }

  else
  {
    v3[4] = v4 + 80;
  }

  *(v4 + 48) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = &unk_1F0A396C0;
  result = *(this + 56);
  *(v4 + 72) = *(this + 9);
  *(v4 + 56) = result;
  return result;
}

uint64_t RB::DisplayList::AlphaThresholdStyle::can_mix(float32x2_t *this, RB::DisplayList::Interpolator::Contents *a2, float32x2_t *a3)
{
  if (a3)
  {
    return RB::AlphaThresholdEffect::can_mix(this + 7, a3 + 7);
  }

  else
  {
    return 0;
  }
}

float32x2_t RB::DisplayList::AlphaThresholdStyle::bounds(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(a1 + 56);
  result = 0;
  if (vmvn_s8(vcge_f32(v4, vdup_lane_s32(v4, 1))).u32[0])
  {
    if (v4.f32[0] >= 0.0)
    {
      return RB::DisplayList::Style::bounds(a1, a2, a3, a4);
    }

    else
    {
      v6 = *(a1 + 24);
      if (v6)
      {
        return v6[2];
      }

      else
      {
        return 0x100000001000000;
      }
    }
  }

  return result;
}

float32x2_t RB::DisplayList::Style::bounds(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = RB::DisplayList::Style::next_bounds(a1, a2, a3, a4);
  v8[0] = result;
  v8[1] = v6;
  v7 = *(a1 + 24);
  if (v7)
  {
    RB::Rect::intersect(v8, *(v7 + 16), *(v7 + 24));
    return v8[0];
  }

  return result;
}

uint64_t RB::DisplayList::AlphaThresholdStyle::mix(RB::DisplayList::AlphaThresholdStyle *this, const RB::DisplayList::Interpolator::State *a2, float32x2_t *a3, const RB::DisplayList::CachedTransform *a4)
{
  if (!a3)
  {
    return 0;
  }

  v8 = *(this + 56);
  v5 = v8;
  v9 = *(this + 9);
  v5.i32[0] = *(a2 + 4);
  RB::AlphaThresholdEffect::mix(&v8, a3 + 7, v5);
  v6 = *(*a4 + 8);
  result = (v6[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (result + 80 > v6[5])
  {
    result = RB::Heap::alloc_slow(v6 + 2, 0x50uLL, 7);
  }

  else
  {
    v6[4] = result + 80;
  }

  *(result + 48) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = &unk_1F0A396C0;
  *(result + 56) = v8;
  *(result + 72) = v9;
  return result;
}

void *RB::DisplayList::AlphaThresholdStyle::encode(RB::DisplayList::AlphaThresholdStyle *this, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(this, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x3AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::AlphaThresholdEffect::encode((this + 56), a2);
  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::AlphaThresholdStyle::print(const RB::AffineTransform **this, RB::SexpString *a2, uint64_t a3)
{
  RB::AlphaThresholdEffect::print((this + 7), a2);

  RB::DisplayList::Style::print(this, a2, a3);
}

double RB::DisplayList::State::add_gradient_map(__n128 *a1, RB::DisplayList::Builder *a2, char a3, unint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, int a8, double a9, float a10)
{
  v13 = a6;
  v20 = *(a2 + 1);
  if ((a6 & 0x100) == 0)
  {
    v13 = a1[9].n128_i16[6];
  }

  v21 = (v20[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v21 + 136 > v20[5])
  {
    v21 = RB::Heap::alloc_slow(v20 + 2, 0x88uLL, 7);
  }

  else
  {
    v20[4] = v21 + 136;
  }

  *(v21 + 48) = 0;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *v21 = &unk_1F0A39748;
  *(v21 + 56) = a9;
  RB::Fill::Gradient::Gradient(v21 + 64, (v20 + 2), 3, a4, a5, v13, a7, a8, a10, 0.0, 0.0, 0.0, 0.0);
  *(v21 + 128) = a3;

  *&result = RB::DisplayList::State::add_style(a1, a2, v21).n128_u64[0];
  return result;
}

unint64_t RB::DisplayList::AlphaGradientStyle::copy(RB::DisplayList::AlphaGradientStyle *this, RB::DisplayList::Builder *a2)
{
  v3 = *(a2 + 1);
  v4 = (v3[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v4 + 136 > v3[5])
  {
    v4 = RB::Heap::alloc_slow(v3 + 2, 0x88uLL, 7);
  }

  else
  {
    v3[4] = v4 + 136;
  }

  *(v4 + 48) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = &unk_1F0A39748;
  RB::AlphaGradientEffect::AlphaGradientEffect((v4 + 56), (this + 56), v3);
  return v4;
}

unsigned __int8 *RB::DisplayList::AlphaGradientStyle::draw(RB::DisplayList::AlphaGradientStyle *this, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  v10 = *(a2 + 1);
  v11 = (v10[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v11 + 104 > v10[5])
  {
    v11 = RB::Heap::alloc_slow(v10 + 2, 0x68uLL, 7);
  }

  else
  {
    v10[4] = v11 + 104;
  }

  *v11 = &unk_1F0A3A2C0;
  RB::AlphaGradientEffect::AlphaGradientEffect((v11 + 16), (this + 56), v10);
  *(v11 + 96) = 1;
  v13 = *(this + 3);
  *(v12 + 2) = *(this + 4);
  *(v12 + 3) = RB::DisplayList::Builder::join_clip_lists(a2, *(v12 + 3), v13);

  return RB::DisplayList::Builder::draw(a2, v12, a3, a5);
}

uint64_t RB::DisplayList::AlphaGradientStyle::can_mix(RB::DisplayList::AlphaGradientStyle *this, RB::DisplayList::Interpolator::Contents *a2, const RB::DisplayList::Style *a3)
{
  if (a3)
  {
    return RB::AlphaGradientEffect::can_mix((this + 56), (a3 + 56), a3);
  }

  else
  {
    return 0;
  }
}

float32x2_t RB::DisplayList::AlphaGradientStyle::bounds(void *a1, uint64_t a2, void *a3, uint64_t a4, double a5, double a6, double a7, double a8, float a9)
{
  if (RB::Fill::Gradient::sample_alpha((a1 + 8), COERCE_FLOAT(a1[7]), a6, a7, a8, a9) <= 0.0)
  {

    return RB::DisplayList::Style::bounds(a1, a2, a3, a4);
  }

  else
  {
    v13 = a1[3];
    if (v13)
    {
      return v13[2];
    }

    else
    {
      return 0xFEFFFFFFFEFFFFFFLL;
    }
  }
}

uint64_t RB::DisplayList::AlphaGradientStyle::mix(RB::DisplayList::AlphaGradientStyle *this, const RB::DisplayList::Interpolator::State *a2, float32x2_t *a3, const RB::DisplayList::CachedTransform *a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(this + 72);
  v6 = *(this + 104);
  v14 = *(this + 88);
  v15 = v6;
  v16 = *(this + 120);
  v12 = *(this + 56);
  v13 = v5;
  v5.i32[0] = *(a2 + 4);
  RB::AlphaGradientEffect::mix(&v12, a3 + 7, v5, (*(*a4 + 8) + 16));
  v7 = *(*a4 + 8);
  result = (v7[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (result + 136 > v7[5])
  {
    result = RB::Heap::alloc_slow(v7 + 2, 0x88uLL, 7);
  }

  else
  {
    v7[4] = result + 136;
  }

  *(result + 48) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = &unk_1F0A39748;
  v10 = v15;
  v9 = v16;
  v11 = v12;
  *(result + 72) = v13;
  *(result + 88) = v14;
  *(result + 104) = v10;
  *(result + 120) = v9;
  *(result + 56) = v11;
  return result;
}

void *RB::DisplayList::AlphaGradientStyle::encode(RB::DisplayList::AlphaGradientStyle *this, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(this, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x3AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x1AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::AlphaGradientEffect::encode((this + 56), a2);
  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

double RB::DisplayList::State::add_glass_highlight(__n128 *this, RB::DisplayList::Builder *a2, char a3, char a4, uint64_t a5, double a6, float a7, float a8, float a9, float a10, float a11, float a12)
{
  v24 = *(a2 + 1);
  v25 = (v24[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v25 + 112 > v24[5])
  {
    v25 = RB::Heap::alloc_slow(v24 + 2, 0x70uLL, 7);
  }

  else
  {
    v24[4] = v25 + 112;
  }

  *(v25 + 48) = 0;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0u;
  *v25 = &unk_1F0A3F2D0;
  v26 = *(a5 + 12);
  v27 = *(a5 + 8);
  *(v25 + 56) = *a5;
  *(v25 + 64) = v27;
  *(v25 + 68) = v26;
  *(v25 + 72) = a6;
  *(v25 + 80) = a7;
  *(v25 + 84) = a8;
  *(v25 + 88) = a9;
  *(v25 + 92) = a10;
  *(v25 + 96) = a11;
  *(v25 + 100) = a12;
  *(v25 + 104) = a3;
  *(v25 + 105) = a4;

  *&result = RB::DisplayList::State::add_style(this, a2, v25).n128_u64[0];
  return result;
}

__n128 RB::DisplayList::GlassHighlightStyle::copy(RB::DisplayList::GlassHighlightStyle *this, RB::DisplayList::Builder *a2)
{
  v3 = *(a2 + 1);
  v4 = (v3[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v4 + 112 > v3[5])
  {
    v4 = RB::Heap::alloc_slow(v3 + 2, 0x70uLL, 7);
  }

  else
  {
    v3[4] = v4 + 112;
  }

  *(v4 + 48) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = &unk_1F0A3F2D0;
  result = *(this + 56);
  v6 = *(this + 72);
  v7 = *(this + 88);
  *(v4 + 104) = *(this + 13);
  *(v4 + 88) = v7;
  *(v4 + 72) = v6;
  *(v4 + 56) = result;
  return result;
}

unsigned __int8 *RB::DisplayList::GlassHighlightStyle::draw(RB::DisplayList::GlassHighlightStyle *this, size_t **a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  if (RB::GlassHighlightEffect::can_discard_color((this + 56)))
  {
    v10 = 416;
  }

  else
  {
    v10 = 384;
  }

  v11 = RB::DisplayList::Builder::ensure_layer(a2, a4, v10, 0.0);
  v12 = *(this + 3);
  *(v11 + 2) = *(this + 4);
  *(v11 + 3) = RB::DisplayList::Builder::join_clip_lists(a2, *(v11 + 3), v12);
  v13 = a2[1];
  v14 = (v13[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v14 + 80 > v13[5])
  {
    v14 = RB::Heap::alloc_slow(v13 + 2, 0x50uLL, 7);
  }

  else
  {
    v13[4] = v14 + 80;
  }

  *v14 = &unk_1F0A3F3E0;
  v15 = *(this + 56);
  v16 = *(this + 72);
  v17 = *(this + 88);
  *(v14 + 64) = *(this + 13);
  *(v14 + 32) = v16;
  *(v14 + 48) = v17;
  *(v14 + 16) = v15;
  *(v14 + 72) = 1;
  v18 = 72;
  if ((*(v11 + 23) & 0xC0) == 0x40)
  {
    v18 = 56;
  }

  *(v11 + v18) = v14 | 2;

  return RB::DisplayList::Builder::draw(a2, v11, a3, a5);
}

uint64_t RB::DisplayList::GlassHighlightStyle::can_mix(float32x2_t *this, RB::DisplayList::Interpolator::Contents *a2, float32x2_t *a3)
{
  if (a3)
  {
    return RB::GlassHighlightEffect::can_mix(this + 7, a3 + 7);
  }

  else
  {
    return 0;
  }
}

uint64_t RB::DisplayList::GlassHighlightStyle::mix(RB::DisplayList::GlassHighlightStyle *this, const RB::DisplayList::Interpolator::State *a2, const RB::DisplayList::Style *a3, const RB::DisplayList::CachedTransform *a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(this + 72);
  v10 = *(this + 56);
  v11 = v5;
  v12 = *(this + 88);
  v6 = v12;
  v13 = *(this + 13);
  v6.i32[0] = *(a2 + 4);
  RB::GlassHighlightEffect::mix(&v10, (a3 + 56), v6);
  v7 = *(*a4 + 8);
  result = (v7[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (result + 112 > v7[5])
  {
    result = RB::Heap::alloc_slow(v7 + 2, 0x70uLL, 7);
  }

  else
  {
    v7[4] = result + 112;
  }

  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0;
  *result = &unk_1F0A3F2D0;
  v9 = v11;
  *(result + 56) = v10;
  *(result + 72) = v9;
  *(result + 88) = v12;
  *(result + 104) = v13;
  return result;
}

void *RB::DisplayList::GlassHighlightStyle::encode(RB::DisplayList::GlassHighlightStyle *this, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(this, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x3AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x2AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::GlassHighlightEffect::encode((this + 56), a2);
  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::GlassHighlightStyle::print(const RB::AffineTransform **this, RB::SexpString *a2, uint64_t a3)
{
  RB::GlassHighlightEffect::print((this + 7), a2);

  RB::DisplayList::Style::print(this, a2, a3);
}

double RB::DisplayList::State::add_glass_displacement(__n128 *this, RB::DisplayList::Builder *a2, char a3, char a4, double a5, float a6, float a7, float a8, float a9, float a10)
{
  v20 = *(a2 + 1);
  v21 = (v20[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v21 + 88 > v20[5])
  {
    v21 = RB::Heap::alloc_slow(v20 + 2, 0x58uLL, 7);
  }

  else
  {
    v20[4] = v21 + 88;
  }

  *(v21 + 48) = 0;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *v21 = &unk_1F0A3F358;
  *(v21 + 56) = a5;
  *(v21 + 64) = a6;
  *(v21 + 68) = a7;
  *(v21 + 72) = a8;
  *(v21 + 76) = a9;
  *(v21 + 80) = a10;
  *(v21 + 84) = a3;
  *(v21 + 85) = a4;

  *&result = RB::DisplayList::State::add_style(this, a2, v21).n128_u64[0];
  return result;
}

__n128 RB::DisplayList::GlassDisplacementStyle::copy(RB::DisplayList::GlassDisplacementStyle *this, RB::DisplayList::Builder *a2)
{
  v3 = *(a2 + 1);
  v4 = (v3[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v4 + 88 > v3[5])
  {
    v4 = RB::Heap::alloc_slow(v3 + 2, 0x58uLL, 7);
  }

  else
  {
    v3[4] = v4 + 88;
  }

  *(v4 + 48) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = &unk_1F0A3F358;
  result = *(this + 56);
  *(v4 + 72) = *(this + 72);
  *(v4 + 56) = result;
  return result;
}

unsigned __int8 *RB::DisplayList::GlassDisplacementStyle::draw(RB::DisplayList::GlassDisplacementStyle *this, size_t **a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  if (RB::GlassDisplacementEffect::can_discard_color((this + 56)))
  {
    v10 = 416;
  }

  else
  {
    v10 = 384;
  }

  v11 = RB::DisplayList::Builder::ensure_layer(a2, a4, v10, 0.0);
  v12 = *(this + 3);
  *(v11 + 2) = *(this + 4);
  *(v11 + 3) = RB::DisplayList::Builder::join_clip_lists(a2, *(v11 + 3), v12);
  v13 = a2[1];
  v14 = (v13[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v14 + 56 > v13[5])
  {
    v14 = RB::Heap::alloc_slow(v13 + 2, 0x38uLL, 7);
  }

  else
  {
    v13[4] = v14 + 56;
  }

  *v14 = &unk_1F0A3F498;
  v15 = *(this + 72);
  *(v14 + 16) = *(this + 56);
  *(v14 + 32) = v15;
  *(v14 + 48) = 1;
  v16 = 72;
  if ((*(v11 + 23) & 0xC0) == 0x40)
  {
    v16 = 56;
  }

  *(v11 + v16) = v14 | 2;

  return RB::DisplayList::Builder::draw(a2, v11, a3, a5);
}

uint64_t RB::DisplayList::GlassDisplacementStyle::can_mix(float32x2_t *this, RB::DisplayList::Interpolator::Contents *a2, float32x2_t *a3)
{
  if (a3)
  {
    return RB::GlassDisplacementEffect::can_mix(this + 7, a3 + 7);
  }

  else
  {
    return 0;
  }
}

uint64_t RB::DisplayList::GlassDisplacementStyle::mix(RB::DisplayList::GlassDisplacementStyle *this, const RB::DisplayList::Interpolator::State *a2, const RB::DisplayList::Style *a3, const RB::DisplayList::CachedTransform *a4)
{
  if (!a3)
  {
    return 0;
  }

  v6 = *(this + 72);
  v10 = *(this + 56);
  HIDWORD(v5) = DWORD1(v10);
  v11 = v6;
  LODWORD(v5) = *(a2 + 4);
  RB::GlassDisplacementEffect::mix(&v10, (a3 + 56), v5);
  v7 = *(*a4 + 8);
  result = (v7[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (result + 88 > v7[5])
  {
    result = RB::Heap::alloc_slow(v7 + 2, 0x58uLL, 7);
  }

  else
  {
    v7[4] = result + 88;
  }

  *(result + 48) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = &unk_1F0A3F358;
  v9 = v11;
  *(result + 56) = v10;
  *(result + 72) = v9;
  return result;
}

void *RB::DisplayList::GlassDisplacementStyle::encode(RB::DisplayList::GlassDisplacementStyle *this, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(this, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x3AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x32uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::GlassDisplacementEffect::encode(this + 14, a2);
  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::GlassDisplacementStyle::print(const RB::AffineTransform **this, RB::SexpString *a2, uint64_t a3)
{
  RB::GlassDisplacementEffect::print((this + 7), a2);

  RB::DisplayList::Style::print(this, a2, a3);
}

void RB::CustomShader::Closure::~Closure(id *this)
{
  v2 = this[17];
  if (v2)
  {
    v3 = this[17];
  }

  else
  {
    v3 = (this + 1);
  }

  if (this[18])
  {
    v4 = 0;
    do
    {
      RB::CustomShader::Value::reset_data(v3);
      ++v4;
      v3 += 4;
    }

    while (v4 < this[18]);
    v2 = this[17];
  }

  if (v2)
  {
    free(v2);
  }

  v5 = *this;
  if (*this)
  {
    if (atomic_fetch_add_explicit(v5 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      RB::CustomShader::Library::intern_function(v5);
    }
  }
}

uint64_t RB::DisplayList::CustomEffectStyle::copy(RB::DisplayList::CustomEffectStyle *this, RB::DisplayList::Builder *a2)
{
  v4 = *(this + 28);
  if (v4)
  {
    v4 = RB::DisplayList::Layer::copy(v4, a2, 0);
  }

  v6 = v4;
  return _ZN2RB4Heap7emplaceINS_11DisplayList17CustomEffectStyleEJRKNS_12CustomShader7ClosureERPNS2_5LayerERKDv2_fSD_RKNS_4RectERKjEEEPT_DpOT0_((*(a2 + 1) + 16), (this + 56), &v6, this + 29, this + 30, (this + 248), this + 66);
}

void RB::DisplayList::CustomEffectStyle::apply_transform(RB::DisplayList::CustomEffectStyle *this, const RB::DisplayList::CachedTransform *a2)
{
  v2 = *(this + 28);
  if (v2)
  {
    RB::DisplayList::Layer::apply_transform(v2, a2);
  }
}

double RB::DisplayList::CustomEffectStyle::bounds(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *v38.i8 = RB::DisplayList::Style::next_bounds(a1, a2, a3, a4);
  v38.u64[1] = v5;
  v6 = vcge_f32(vabs_f32(v5), vneg_f32(0x80000000800000));
  if ((vpmax_u32(v6, v6).u32[0] & 0x80000000) == 0)
  {
    v35[0] = xmmword_195E42760;
    v35[1] = xmmword_195E42770;
    v36 = 0;
    v37 = 0;
    v7 = vmvn_s8(vceqz_f32(*(a1 + 232)));
    if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) != 0)
    {
      RB::Rect::move(&v38, v35, *(a1 + 16));
      v8 = vabs_f32(*(a1 + 232));
      v9.i64[0] = v38.i64[1];
      v10.i64[0] = v38.i64[0];
      *v11.i8 = vcgt_f32(vneg_f32(0x80000000800000), v38.u64[1]);
      *v12.i8 = vsub_f32(*v38.i8, v8);
      v13 = vcltzq_s32(v11);
      v10.i64[0] = vbslq_s8(v13, v12, v10).u64[0];
      *v14.i8 = vmla_f32(v38.u64[1], 0x4000000040000000, v8);
      v10.i64[1] = vbslq_s8(v13, v14, v9).u64[0];
      v38 = v10;
    }

    v15 = *(a1 + 224);
    if (v15 && (*(a1 + 264) & 0x10) == 0)
    {
      v16 = RB::DisplayList::Layer::bounds(v15);
      v18 = v17;
      v19 = *(a1 + 16);
      v20 = *v19;
      v21 = v19[2];
      v40 = v19[1];
      v41 = v21;
      v39 = v20;
      if (RB::AffineTransform::invert(&v39))
      {
        v22 = &v39;
      }

      else
      {
        v22 = v19;
      }

      v23 = v22[1];
      v24 = v22[2];
      v39 = *v22;
      v40 = v23;
      v41 = v24;
      *v25.i8 = RB::operator*(&v39, v16, v18);
      v26 = vabs_f32(*(a1 + 240));
      *v28.i8 = vcgt_f32(vneg_f32(0x80000000800000), *v27.i8);
      *v29.i8 = vsub_f32(*v25.i8, v26);
      v30 = vcltzq_s32(v28);
      *&v34 = vbslq_s8(v30, v29, v25).u64[0];
      *v29.i8 = vmla_f32(*v27.i8, 0x4000000040000000, v26);
      v33 = vbslq_s8(v30, v29, v27).u64[0];
      RB::Rect::move(&v38, v35, *(a1 + 16));
      RB::Rect::Union(&v38, v34, v33);
    }

    RB::Rect::move_identity(&v38, v35);
  }

  v31 = *(a1 + 24);
  if (v31)
  {
    RB::Rect::intersect(&v38, *(v31 + 16), *(v31 + 24));
  }

  return *v38.i64;
}

uint64_t RB::DisplayList::CustomEffectStyle::mix(float32x2_t *this, float32_t *a2, float32x2_t *a3, RB::DisplayList::Builder **a4)
{
  if (!a3)
  {
    return 0;
  }

  v20 = 0;
  v8 = this[28];
  if (v8)
  {
    v9 = a3[28];
    if (v9)
    {
      v20 = RB::DisplayList::Layer::mix(v8, a2, v9, a4);
    }
  }

  v10 = *(*a4 + 1);
  v11 = a2[4];
  v12 = this[30];
  v13 = a3[30];
  v19 = vmla_n_f32(this[29], vsub_f32(a3[29], this[29]), v11);
  v18 = vmla_n_f32(v12, vsub_f32(v13, v12), v11);
  *&v17 = RB::mix(this[31], this[32], a3[31], a3[32], v11);
  *(&v17 + 1) = v14;
  v15 = _ZN2RB4Heap7emplaceINS_11DisplayList17CustomEffectStyleEJRKNS_12CustomShader7ClosureERPNS2_5LayerERKDv2_fSD_RKNS_4RectERKjEEEPT_DpOT0_((v10 + 16), &this[7], &v20, &v19, &v18, &v17, &this[33]);
  RB::CustomShader::Closure::mix((v15 + 56), &a3[7], a2[4]);
  return v15;
}

void *RB::DisplayList::CustomEffectStyle::prepare_encode(RB::DisplayList::CustomEffectStyle *this, RB::Encoder *a2)
{
  RB::DisplayList::Style::prepare_encode(this, a2);
  RB::CustomShader::Closure::prepare_encode(this + 7, a2);
  result = *(this + 28);
  if (result)
  {

    return RB::DisplayList::Layer::prepare_encode(result, a2, 0);
  }

  return result;
}

void *RB::DisplayList::Style::prepare_encode(RB::DisplayList::Style *this, RB::Encoder *a2)
{
  result = *(this + 3);
  if (result)
  {
    RB::DisplayList::ClipNode::prepare_encode(result, a2);
    return RB::Encoder::prepare_shared_f<void RB::Encoder::prepare_shared<RB::DisplayList::ClipNode>(RB::Encoder::SharedType,RB::DisplayList::ClipNode const&)::{lambda(RB::DisplayList::ClipNode&)#1},void RB::Encoder::prepare_shared<RB::DisplayList::ClipNode>(RB::Encoder::SharedType,RB::DisplayList::ClipNode const&)::{lambda(RB::DisplayList::ClipNode&)#2}>(a2, 4, *(this + 3), &v6, &v5);
  }

  return result;
}

void *RB::DisplayList::CustomEffectStyle::encode(RB::DisplayList::CustomEffectStyle *this, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(this, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x3AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x22uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::CustomShader::Closure::encode(this + 7, a2);
  RB::ProtobufEncoder::end_length_delimited(a2);
  RB::ProtobufEncoder::float2_field(a2, 2, *(this + 29));
  v4 = *(this + 66);
  RB::ProtobufEncoder::encode_varint(a2, 0x18uLL);
  RB::ProtobufEncoder::encode_varint(a2, v4 & 3);
  if ((*(this + 264) & 4) != 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);
    RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

  v5 = vmvn_s8(vceqz_f32(*(this + 256)));
  if ((vpmin_u32(v5, v5).u32[0] & 0x80000000) != 0)
  {
    RB::ProtobufEncoder::float4_field(a2, 5, *(this + 248));
  }

  if ((*(this + 264) & 8) != 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x30uLL);
    RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

  v6 = *(this + 28);
  if (v6)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x3AuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::DisplayList::Layer::encode(v6, a2, 0);
    RB::ProtobufEncoder::end_length_delimited(a2);
    RB::ProtobufEncoder::float2_field(a2, 8, *(this + 30));
  }

  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

unint64_t RB::DisplayList::CustomEffectStyle::decode(RB::DisplayList::CustomEffectStyle *this, size_t **a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v6 = result;
    do
    {
      v7 = v6 >> 3;
      if ((v6 >> 3) > 4)
      {
        if (v7 <= 6)
        {
          if (v7 == 5)
          {
            *(this + 248) = RB::ProtobufDecoder::float4_field(a2, v6);
            goto LABEL_35;
          }

          if (v7 != 6)
          {
            goto LABEL_34;
          }

          *(this + 66) &= ~8u;
          if (RB::ProtobufDecoder::BOOL_field(a2, v6))
          {
            v8 = 8;
          }

          else
          {
            v8 = 0;
          }

LABEL_19:
          v9 = *(this + 66) | v8;
          goto LABEL_20;
        }

        if (v7 == 7)
        {
          v11 = *(a2 + 52) + 1;
          *(a2 + 52) = v11;
          v17 = 0;
          v18 = v11;
          v12 = RB::Heap::emplace<RB::DisplayList::Layer,unsigned int,int>(a2[8], &v18, &v17);
          v14 = v13;
          v15 = *(this + 28);
          *(this + 28) = v14;
          if (v15)
          {
            (**v15)(v15, v12);
          }

          if ((v6 & 7) != 2)
          {
LABEL_37:
            *(a2 + 56) = 1;
            *a2 = a2[1];
            goto LABEL_35;
          }

          v16 = *(this + 28);
          RB::ProtobufDecoder::begin_message(a2);
          RB::DisplayList::Layer::decode(v16, a2, 0);
          goto LABEL_33;
        }

        if (v7 != 8)
        {
LABEL_34:
          RB::ProtobufDecoder::skip_field(a2, v6);
          goto LABEL_35;
        }

        *(this + 30) = RB::ProtobufDecoder::float2_field(a2, v6, v5).n128_u64[0];
      }

      else
      {
        if (v7 > 2)
        {
          if (v7 != 3)
          {
            if (v7 != 4)
            {
              goto LABEL_34;
            }

            *(this + 66) &= ~4u;
            if (RB::ProtobufDecoder::BOOL_field(a2, v6))
            {
              v8 = 4;
            }

            else
            {
              v8 = 0;
            }

            goto LABEL_19;
          }

          *(this + 66) &= 0xFFFFFFFC;
          v10 = RB::ProtobufDecoder::uint_field(a2, v6);
          if (v10 > 2)
          {
            goto LABEL_35;
          }

          v9 = *(this + 66) | v10;
LABEL_20:
          *(this + 66) = v9;
          goto LABEL_35;
        }

        if (v7 == 1)
        {
          if ((v6 & 7) != 2)
          {
            goto LABEL_37;
          }

          RB::ProtobufDecoder::begin_message(a2);
          RB::CustomShader::Closure::decode((this + 56), a2);
LABEL_33:
          RB::ProtobufDecoder::end_message(a2);
          goto LABEL_35;
        }

        if (v7 != 2)
        {
          goto LABEL_34;
        }

        *(this + 29) = RB::ProtobufDecoder::float2_field(a2, v6, v5).n128_u64[0];
      }

LABEL_35:
      result = RB::ProtobufDecoder::next_field(a2);
      v6 = result;
    }

    while (result);
  }

  return result;
}

void RB::DisplayList::CustomEffectStyle::print(RB::DisplayList::CustomEffectStyle *this, std::string *a2, uint64_t a3)
{
  v6 = *(this + 7);
  if (v6)
  {
    RB::SexpString::printf(a2, 0, "(shader %s)", [*(v6 + 24) UTF8String]);
  }

  v7 = *(this + 256);
  v8 = vmvn_s8(vceqz_f32(v7));
  if ((vpmin_u32(v8, v8).u32[0] & 0x80000000) != 0)
  {
    RB::SexpString::printf(a2, 0, "(bounds %g %g %g %g)", COERCE_FLOAT(*(this + 31)), COERCE_FLOAT(HIDWORD(*(this + 31))), v7.f32[0], v7.f32[1]);
  }

  if ((*(this + 66) & 3) == 2)
  {
    v9 = "warp";
  }

  else
  {
    v9 = "layer";
  }

  RB::SexpString::printf(a2, 0, "(type %s)", v9);
  if ((a3 & 1) == 0)
  {
    v10 = *(this + 28);
    if (v10)
    {
      RB::DisplayList::Layer::print(v10, a2, a3);
    }
  }

  RB::DisplayList::Style::print(this, a2, a3);
}

RB::DisplayList::PredicateStyle *RB::DisplayList::PredicateStyle::copy(RB::DisplayList::PredicateStyle *this, RB::DisplayList::Builder *a2)
{
  v3 = *(a2 + 1);
  v4 = ((v3[4] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v4 + 104 > v3[5])
  {
    v4 = RB::Heap::alloc_slow(v3 + 2, 0x68uLL, 7);
  }

  else
  {
    v3[4] = v4 + 104;
  }

  v5 = *(this + 96);

  return RB::DisplayList::PredicateStyle::PredicateStyle(v4, (this + 56), v5);
}

unsigned __int8 *RB::DisplayList::PredicateStyle::draw(RB::DisplayList::PredicateStyle *this, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, uint64_t (***a4)(RB::DisplayList::Item *), char a5)
{
  if (((*a4)[23])(a4, this + 56) == *(this + 96))
  {
    v12 = **a4;

    return v12(a4);
  }

  else
  {
    v10 = *(this + 3);
    a4[2] = *(this + 4);
    a4[3] = RB::DisplayList::Builder::join_clip_lists(a2, a4[3], v10);

    return RB::DisplayList::Builder::draw(a2, a4, a3, a5);
  }
}

uint64_t RB::DisplayList::PredicateStyle::can_mix(RB::DisplayList::PredicateStyle *this, RB::DisplayList::Interpolator::Contents *a2, const RB::DisplayList::Style *a3)
{
  if (a3)
  {
    return RB::DisplayList::InvertiblePredicate::can_mix((this + 56), (a3 + 56));
  }

  else
  {
    return 0;
  }
}

RB::DisplayList::PredicateStyle *RB::DisplayList::PredicateStyle::mix(RB::DisplayList::PredicateStyle *this, const RB::DisplayList::Interpolator::State *a2, const RB::DisplayList::Style *a3, RB::DisplayList::Builder **a4)
{
  if (!a3)
  {
    return 0;
  }

  v6 = RB::DisplayList::PredicateStyle::copy(this, *a4);
  RB::DisplayList::InvertiblePredicate::mix((v6 + 56), (a3 + 56), *(a2 + 4));
  return v6;
}

void *RB::DisplayList::PredicateStyle::encode(RB::DisplayList::PredicateStyle *this, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(this, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x42uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::DisplayList::InvertiblePredicate::encode((this + 56), a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

uint64_t RB::DisplayList::PredicateStyle::print(RB::DisplayList::PredicateStyle *this, RB::SexpString *a2, uint64_t a3)
{
  RB::SexpString::push(a2, "display-list-predicate");
  if (*(this + 96) == 1)
  {
    RB::SexpString::print(a2, 0, "inverts-result");
  }

  RB::XML::Document::Document(&v8);
  RB::DisplayList::Predicate::xml_elements(this + 56, &v8);
  RB::XML::Document::print_children(&v8, a2, 0);
  RB::DisplayList::Style::print(this, a2, a3);
  RB::SexpString::pop(a2);
  if (v12)
  {
    free(v12);
  }

  RB::UntypedTable::~UntypedTable(&v11);
  if (v10)
  {
    free(v10);
  }

  result = v9;
  if (v9)
  {
    v7 = *(v9 + 8) - 1;
    *(v9 + 8) = v7;
    if (!v7)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

double RB::DisplayList::State::add_predicate(__n128 *this, RB::DisplayList::Builder *a2, const RB::DisplayList::Predicate *a3, char a4)
{
  v8 = *(a2 + 1);
  v9 = ((v8[4] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v9 + 104 > v8[5])
  {
    v9 = RB::Heap::alloc_slow(v8 + 2, 0x68uLL, 7);
  }

  else
  {
    v8[4] = v9 + 104;
  }

  RB::DisplayList::PredicateStyle::PredicateStyle(v9, a3, a4);

  *&result = RB::DisplayList::State::add_style(this, a2, v9).n128_u64[0];
  return result;
}

RB::DisplayList::TransformStyle *RB::Heap::emplace<RB::DisplayList::TransformStyle,RB::DisplayList::Transform const&>(size_t *a1, RB::DisplayList::Transform *a2)
{
  v3 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v3 + 112 > a1[3])
  {
    v3 = RB::Heap::alloc_slow(a1, 0x70uLL, 7);
  }

  else
  {
    a1[2] = v3 + 112;
  }

  return RB::DisplayList::TransformStyle::TransformStyle(v3, a2);
}

unsigned __int8 *RB::DisplayList::TransformStyle::draw(RB::DisplayList::TransformStyle *this, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  v10 = *(this + 3);
  *(a4 + 2) = *(this + 4);
  *(a4 + 3) = RB::DisplayList::Builder::join_clip_lists(a2, *(a4 + 3), v10);
  (*(*a4 + 192))(a4, this + 56, *(a2 + 1));

  return RB::DisplayList::Builder::draw(a2, a4, a3, a5);
}

uint64_t RB::DisplayList::TransformStyle::can_mix(RB::DisplayList::TransformStyle *this, RB::DisplayList::Interpolator::Contents *a2, const RB::DisplayList::Style *a3)
{
  if (a3)
  {
    return RB::DisplayList::Transform::can_mix((this + 56), (a3 + 56));
  }

  else
  {
    return 0;
  }
}

RB::DisplayList::TransformStyle *RB::DisplayList::TransformStyle::mix(RB::DisplayList::TransformStyle *this, const RB::DisplayList::Interpolator::State *a2, const RB::DisplayList::Style *a3, const RB::DisplayList::CachedTransform *a4)
{
  if (!a3)
  {
    return 0;
  }

  v6 = RB::Heap::emplace<RB::DisplayList::TransformStyle,RB::DisplayList::Transform const&>((*(*a4 + 8) + 16), (this + 56));
  v7.i32[0] = *(a2 + 4);
  RB::DisplayList::Transform::mix((v6 + 56), (a3 + 56), v7);
  return v6;
}

void *RB::DisplayList::TransformStyle::encode(RB::DisplayList::TransformStyle *this, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(this, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x4AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::DisplayList::Transform::encode(this + 14, a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

uint64_t RB::DisplayList::TransformStyle::print(const RB::AffineTransform **this, RB::SexpString *a2, uint64_t a3)
{
  RB::SexpString::push(a2, "display-list-transform");
  RB::XML::Document::Document(&v8);
  RB::DisplayList::Transform::xml_elements((this + 7), &v8);
  RB::XML::Document::print_children(&v8, a2, 0);
  RB::DisplayList::Style::print(this, a2, a3);
  RB::SexpString::pop(a2);
  if (v12)
  {
    free(v12);
  }

  RB::UntypedTable::~UntypedTable(&v11);
  if (v10)
  {
    free(v10);
  }

  result = v9;
  if (v9)
  {
    v7 = *(v9 + 8) - 1;
    *(v9 + 8) = v7;
    if (!v7)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

double RB::DisplayList::State::add_transform(__n128 *this, RB::DisplayList::Builder *a2, const RB::DisplayList::Transform *a3)
{
  v5 = RB::Heap::emplace<RB::DisplayList::TransformStyle,RB::DisplayList::Transform const&>((*(a2 + 1) + 16), a3);

  *&result = RB::DisplayList::State::add_style(this, a2, v5).n128_u64[0];
  return result;
}

RB::DisplayList::AnimationStyle *RB::DisplayList::AnimationStyle::AnimationStyle(RB::DisplayList::AnimationStyle *this, const RB::Animation *a2, const UUID *a3, int a4)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = &unk_1F0A39F40;
  *(this + 10) = 0;
  *(this + 11) = 0x600000000;
  *(this + 6) = *a3;
  *(this + 28) = a4;
  if (a2)
  {
    *(this + 22) = 0;
    if (*(a2 + 3))
    {
      v5 = *(a2 + 3);
    }

    else
    {
      v5 = a2;
    }

    v6 = *(a2 + 8);
    if (v6 >= 7)
    {
      RB::vector<RB::Animation::TermOrArg,6ul,unsigned int>::reserve_slow(this + 56, *(a2 + 8));
      v8 = *(this + 22);
      v7 = *(this + 10);
    }

    else
    {
      if (!v6)
      {
        v12 = 0;
LABEL_14:
        *(this + 22) = v12 + v6;
        return this;
      }

      v7 = 0;
      v8 = 0;
    }

    if (!v7)
    {
      v7 = this + 56;
    }

    v9 = &v7[4 * v8];
    v10 = v6;
    do
    {
      v11 = *v5;
      v5 = (v5 + 4);
      *v9 = v11;
      v9 += 4;
      --v10;
    }

    while (v10);
    v12 = *(this + 22);
    goto LABEL_14;
  }

  return this;
}

void sub_195E026C0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    free(v3);
  }

  _Unwind_Resume(exception_object);
}

RB::DisplayList::AnimationStyle *RB::DisplayList::AnimationStyle::copy(RB::DisplayList::AnimationStyle *this, RB::DisplayList::Builder *a2)
{
  v3 = *(a2 + 1);
  v4 = ((v3[4] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v4 + 120 > v3[5])
  {
    v4 = RB::Heap::alloc_slow(v3 + 2, 0x78uLL, 7);
  }

  else
  {
    v3[4] = v4 + 120;
  }

  v5 = *(this + 28);

  return RB::DisplayList::AnimationStyle::AnimationStyle(v4, (this + 56), (this + 6), v5);
}

unsigned __int8 *RB::DisplayList::AnimationStyle::draw(RB::DisplayList::AnimationStyle *this, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  v9 = *(this + 3);
  *(a4 + 2) = *(this + 4);
  *(a4 + 3) = RB::DisplayList::Builder::join_clip_lists(a2, *(a4 + 3), v9);

  return RB::DisplayList::Builder::draw(a2, a4, a3, a5);
}

uint64_t RB::DisplayList::AnimationStyle::mix(RB::DisplayList::AnimationStyle *this, const State *a2, const RB::DisplayList::Style *a3, const RB::DisplayList::CachedTransform *a4)
{
  if (a3)
  {
    this = a3;
  }

  return (*(*this + 24))(this, *a4);
}

void *RB::DisplayList::AnimationStyle::encode(RB::DisplayList::AnimationStyle *this, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(this, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x5AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  if (*(this + 22))
  {
    RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::Animation::encode(this + 7, a2);
    RB::ProtobufEncoder::end_length_delimited(a2);
  }

  RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);
  RB::ProtobufEncoder::encode_data(a2, this + 96, 0x10uLL);
  v4 = *(this + 28);
  if (v4 != 273)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x18uLL);
    RB::ProtobufEncoder::encode_varint(a2, v4);
  }

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

unint64_t RB::DisplayList::AnimationStyle::decode(RB::DisplayList::AnimationStyle *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) == 3)
      {
        *(this + 28) = RB::ProtobufDecoder::uint_field(a2, v5);
      }

      else if (v6 == 2)
      {
        v7 = RB::ProtobufDecoder::data_field(a2, v5);
        if (v8 == 16)
        {
          *(this + 6) = *v7;
        }
      }

      else if (v6 == 1)
      {
        if ((v5 & 7) == 2)
        {
          RB::ProtobufDecoder::begin_message(a2);
          RB::Animation::decode((this + 56), a2);
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

void RB::DisplayList::AnimationStyle::print(RB::DisplayList::AnimationStyle *this, RB::SexpString *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  RB::SexpString::push(a2, "animation");
  if (*(this + 28) != 273)
  {
    RB::SexpString::printf(a2, 0, "(flags 0x%x)", *(this + 28));
  }

  memset(out, 0, 37);
  uuid_unparse(this + 96, out);
  RB::SexpString::printf(a2, 1, "(id %s)", out);
  if (*(this + 22))
  {
    RB::XML::Document::Document(v8);
    RB::Animation::xml_elements(this + 56, v8);
    RB::XML::Document::print_children(v8, a2, 0);
    if (v12)
    {
      free(v12);
    }

    RB::UntypedTable::~UntypedTable(&v11);
    if (v10)
    {
      free(v10);
    }

    v6 = v9;
    if (v9)
    {
      v7 = *(v9 + 8) - 1;
      *(v9 + 8) = v7;
      if (!v7)
      {
        (*(*v6 + 8))(v6);
      }
    }
  }

  RB::DisplayList::Style::print(this, a2, a3);
  RB::SexpString::pop(a2);
}

void sub_195E02B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  RB::XML::Document::~Document(va);
  _Unwind_Resume(a1);
}

double RB::DisplayList::State::add_animation(__n128 *this, RB::DisplayList::Builder *a2, const RB::Animation *a3, const UUID *a4, int a5)
{
  v10 = *(a2 + 1);
  v11 = ((v10[4] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v11 + 120 > v10[5])
  {
    v11 = RB::Heap::alloc_slow(v10 + 2, 0x78uLL, 7);
  }

  else
  {
    v10[4] = v11 + 120;
  }

  RB::DisplayList::AnimationStyle::AnimationStyle(v11, a3, a4, a5);

  *&result = RB::DisplayList::State::add_style(this, a2, v11).n128_u64[0];
  return result;
}

float RB::DisplayList::CrossFadeStyle::copy(RB::DisplayList::CrossFadeStyle *this, RB::DisplayList::Builder *a2)
{
  v6 = 0;
  v4 = *(this + 7);
  if (v4)
  {
    v6 = (*(*v4 + 24))(v4, a2, 4);
  }

  return RB::Heap::emplace<RB::DisplayList::CrossFadeStyle,RB::DisplayList::Item *&,float const&,float const&>((*(a2 + 1) + 16), &v6, this + 16, this + 17);
}

float RB::Heap::emplace<RB::DisplayList::CrossFadeStyle,RB::DisplayList::Item *&,float const&,float const&>(RB::Heap *this, uint64_t *a2, float *a3, int *a4)
{
  v8 = *(this + 3);
  v9 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v9 + 72 > v8)
  {
    v9 = RB::Heap::alloc_slow(this, 0x48uLL, 7);
  }

  else
  {
    *(this + 2) = v9 + 72;
  }

  v10 = *a2;
  result = *a3;
  v12 = *a4;
  *(v9 + 48) = 0;
  *(v9 + 56) = v10;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *v9 = &unk_1F0A39EB8;
  *(v9 + 64) = result;
  *(v9 + 68) = v12;
  return result;
}

uint64_t RB::DisplayList::CrossFadeStyle::apply_transform(RB::DisplayList::CrossFadeStyle *this, const RB::DisplayList::CachedTransform *a2)
{
  result = *(this + 7);
  if (result)
  {
    return (*(*result + 32))(result, a2);
  }

  return result;
}

unsigned __int8 *RB::DisplayList::CrossFadeStyle::draw(RB::DisplayList::CrossFadeStyle *this, size_t **a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  v10 = *(this + 7);
  if (v10)
  {
    v11 = (*(*v10 + 24))(v10, a2, 4);
    RB::DisplayList::Item::apply_alpha(v11, 1.0 - *(this + 16));
  }

  else
  {
    v11 = 0;
  }

  v12 = *(this + 17);
  if (v12 == 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    _H0 = *(a4 + 22);
    if (_H0 != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
    {
      __asm { FCVT            S0, H0 }

      v12 = _S0 / v12;
    }

    v29 = v12;
    v19 = vrecpe_f32(LODWORD(v12));
    v20 = vmul_f32(vrecps_f32(LODWORD(v12), v19), v19);
    RB::DisplayList::Item::apply_alpha(a4, *(this + 16) * vmul_f32(v20, vrecps_f32(LODWORD(v12), v20)).f32[0]);
    v21 = v29;
  }

  *(a4 + 2) = *(this + 4);
  if (v11)
  {
    v30 = v21;
    v22 = *(a4 + 23);
    v23 = *(a4 + 4);
    v24 = *(a4 + 10);
    *(v11 + 46) = *(v11 + 46) & 0xFFC0 | 2;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(a4 + 23) = *(a4 + 23) & 0xFFC0 | 0xB;
    *(a4 + 4) = 0;
    *(a4 + 10) = 0;
    RB::DisplayList::Builder::make_layer(a2, 0);
    v26 = v25;
    RB::DisplayList::Builder::draw(a2, v11, v25, 0);
    RB::DisplayList::Builder::draw(a2, a4, v26, 0);
    v27 = a2[1];
    a4 = ((v27[4] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a4 + 64 > v27[5])
    {
      a4 = RB::Heap::alloc_slow(v27 + 2, 0x40uLL, 7);
    }

    else
    {
      v27[4] = a4 + 64;
    }

    RB::DisplayList::LayerItem::LayerItem(a4, v22 & 0x3F, v26, 1.0);
    *(a4 + 4) = v23;
    *(a4 + 10) = v24;
    v21 = v30;
  }

  RB::DisplayList::Item::apply_alpha(a4, v21);
  *(a4 + 3) = RB::DisplayList::Builder::join_clip_lists(a2, *(a4 + 3), *(this + 3));

  return RB::DisplayList::Builder::draw(a2, a4, a3, a5);
}

uint64_t RB::DisplayList::CrossFadeStyle::prepare_encode(RB::DisplayList::CrossFadeStyle *this, RB::Encoder *a2)
{
  RB::DisplayList::Style::prepare_encode(this, a2);
  result = *(this + 7);
  if (result)
  {
    v4 = *(*result + 232);

    return v4();
  }

  return result;
}

void *RB::DisplayList::CrossFadeStyle::encode(RB::DisplayList::CrossFadeStyle *this, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(this, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x72uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  if (*(this + 7))
  {
    RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    (*(**(this + 7) + 240))(*(this + 7), a2);
    RB::ProtobufEncoder::end_length_delimited(a2);
  }

  v4 = *(this + 16);
  if (*&v4 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x15uLL);
    RB::ProtobufEncoder::encode_fixed32(a2, v4);
  }

  v5 = *(this + 17);
  if (*&v5 != 1.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x15uLL);
    RB::ProtobufEncoder::encode_fixed32(a2, v5);
  }

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

unint64_t RB::DisplayList::CrossFadeStyle::decode(RB::DisplayList::CrossFadeStyle *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) == 3)
      {
        *(this + 17) = RB::ProtobufDecoder::float_field(a2, v5);
      }

      else if (v6 == 2)
      {
        *(this + 16) = RB::ProtobufDecoder::float_field(a2, v5);
      }

      else if (v6 == 1)
      {
        if ((v5 & 7) == 2)
        {
          RB::ProtobufDecoder::begin_message(a2);
          v8 = RB::DisplayList::Item::decode(a2, v7);
          if (v8)
          {
            v9 = v8;
            v10 = *(this + 7);
            *(this + 7) = v9;
            if (v10)
            {
              (**v10)(v10);
            }
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

void RB::DisplayList::CrossFadeStyle::print(RB::DisplayList::CrossFadeStyle *this, RB::SexpString *a2, uint64_t a3)
{
  RB::SexpString::push(a2, "cross-fade");
  RB::SexpString::printf(a2, 0, "(t %g)", *(this + 16));
  v6 = *(this + 17);
  if (v6 != 1.0)
  {
    RB::SexpString::printf(a2, 0, "(to-alpha %g)", v6);
  }

  if (*(this + 7))
  {
    v7 = RB::SexpString::push(a2, "from");
    (*(**(this + 7) + 248))(*(this + 7), a2, a3, v7);
    RB::SexpString::pop(a2);
  }

  RB::DisplayList::Style::print(this, a2, a3);

  RB::SexpString::pop(a2);
}

unint64_t RB::DisplayList::Style::decode(RB::Heap **this, RB::Decoder *a2)
{
  v3 = 0;
  v4 = 0;
  v63[0] = xmmword_195E42760;
  v63[1] = xmmword_195E42770;
  v64 = 0;
  v65 = 0;
  memset(v62, 0, sizeof(v62));
  __asm { FMOV            V10.2S, #1.0 }

LABEL_2:
  while (1)
  {
    v10 = v3;
    field = RB::ProtobufDecoder::next_field(this);
    v13 = field;
    if (!field)
    {
      break;
    }

    switch((field >> 3))
    {
      case 1u:
        if ((field & 7) != 2)
        {
          goto LABEL_194;
        }

        RB::ProtobufDecoder::begin_message(this);
        RB::AffineTransform::decode(v63, this);
        RB::ProtobufDecoder::end_message(this);
        continue;
      case 2u:
        v4 = RB::Decoder::shared_field_f<RB::DisplayList::ClipNode,RB::DisplayList::ClipNode const* RB::Decoder::shared_field<RB::DisplayList::ClipNode>(RB::ProtobufDecoder::Field,RB::Encoder::SharedType)::{lambda(RB::DisplayList::ClipNode&)#1}>(this, field, 4, &v66);
        continue;
      case 3u:
        v35 = this[9];
        if (v35 && (v36 = (*(*v35 + 32))(v35)) != 0)
        {
          if ((v13 & 7) != 2)
          {
            goto LABEL_194;
          }

          RB::ProtobufDecoder::begin_message(this);
          RB::DisplayList::decode_metadata(this, v36, &v62[4], v62, v37);
          RB::ProtobufDecoder::end_message(this);
          v3 = v10;
        }

        else
        {
          RB::ProtobufDecoder::skip_field(this, v13);
          v3 = v10;
        }

        continue;
      case 4u:
        RB::Decoder::emplace<RB::DisplayList::ShadowStyle>(this, v12);
        v3 = v34;
        if ((v13 & 7) != 2)
        {
          goto LABEL_192;
        }

        RB::ProtobufDecoder::begin_message(this);
        RB::DisplayList::ShadowStyle::decode(v3, this);
        RB::ProtobufDecoder::end_message(this);
        goto LABEL_188;
      case 5u:
        RB::Heap::emplace<RB::DisplayList::PathProjectionStyle>(this[8]);
        v3 = v15;
        if ((v13 & 7) != 2)
        {
          goto LABEL_192;
        }

        RB::ProtobufDecoder::begin_message(this);
        RB::DisplayList::PathProjectionStyle::decode(v3, this);
        RB::ProtobufDecoder::end_message(this);
        goto LABEL_188;
      case 6u:
        if ((field & 7) != 2)
        {
          goto LABEL_194;
        }

        RB::ProtobufDecoder::begin_message(this);
        v17 = RB::ProtobufDecoder::next_field(this);
        if (!v17)
        {
          goto LABEL_191;
        }

        while (1)
        {
          v18 = v17 >> 3;
          if ((v17 >> 3) > 3)
          {
            switch(v18)
            {
              case 4:
                RB::Decoder::emplace<RB::DisplayList::FilterStyle<RB::Filter::Custom>>(this);
                v20 = v23;
                if ((v17 & 7) != 2)
                {
                  goto LABEL_50;
                }

                RB::ProtobufDecoder::begin_message(this);
                RB::Filter::Custom::decode((v20 + 64), this);
                RB::ProtobufDecoder::end_message(this);
                goto LABEL_46;
              case 5:
                v25 = this[8];
                v20 = (v25[2] + 15) & 0xFFFFFFFFFFFFFFF0;
                if (v20 + 144 > v25[3])
                {
                  v20 = RB::Heap::alloc_slow(v25, 0x90uLL, 15);
                }

                else
                {
                  v25[2] = v20 + 144;
                }

                *(v20 + 48) = 0;
                *(v20 + 16) = 0u;
                *(v20 + 32) = 0u;
                *v20 = &unk_1F0A37198;
                *(v20 + 64) = 0;
                *(v20 + 80) = 0u;
                *(v20 + 96) = 0u;
                *(v20 + 112) = 0u;
                *(v20 + 128) = 0u;
                if ((v17 & 7) != 2)
                {
                  goto LABEL_50;
                }

                RB::ProtobufDecoder::begin_message(this);
                RB::Filter::RGBACurves::decode((v20 + 64), this);
                RB::ProtobufDecoder::end_message(this);
                goto LABEL_46;
              case 6:
                v21 = this[8];
                v20 = (v21[2] + 7) & 0xFFFFFFFFFFFFFFF8;
                if (v20 + 72 > v21[3])
                {
                  v20 = RB::Heap::alloc_slow(v21, 0x48uLL, 7);
                }

                else
                {
                  v21[2] = v20 + 72;
                }

                *(v20 + 48) = 0;
                *(v20 + 16) = 0u;
                *(v20 + 32) = 0u;
                *(v20 + 56) = 0;
                *v20 = &unk_1F0A3E6B8;
                *(v20 + 64) = 1065353216;
                if ((v17 & 7) == 2)
                {
                  RB::ProtobufDecoder::begin_message(this);
                  RB::Filter::Distance::decode((v20 + 56), this);
                  RB::ProtobufDecoder::end_message(this);
                  goto LABEL_46;
                }

LABEL_50:
                *(this + 56) = 1;
                *this = this[1];
LABEL_46:
                v3 = v20;
                if (v10)
                {
                  (**v10)(v10);
                  v3 = v20;
                }

                goto LABEL_48;
            }
          }

          else
          {
            switch(v18)
            {
              case 1:
                v22 = this[8];
                v20 = (v22[2] + 7) & 0xFFFFFFFFFFFFFFF8;
                if (v20 + 72 > v22[3])
                {
                  v20 = RB::Heap::alloc_slow(v22, 0x48uLL, 7);
                }

                else
                {
                  v22[2] = v20 + 72;
                }

                *(v20 + 48) = 0;
                *(v20 + 16) = 0u;
                *(v20 + 32) = 0u;
                *v20 = &unk_1F0A3D4C8;
                *(v20 + 56) = 0;
                *(v20 + 64) = 0;
                if ((v17 & 7) != 2)
                {
                  goto LABEL_50;
                }

                RB::ProtobufDecoder::begin_message(this);
                RB::Filter::ColorMatrix::decode((v20 + 56), this);
                RB::ProtobufDecoder::end_message(this);
                goto LABEL_46;
              case 2:
                RB::Decoder::emplace<RB::DisplayList::FilterStyle<RB::Filter::LuminanceCurve>>(this);
                v20 = v24;
                if ((v17 & 7) != 2)
                {
                  goto LABEL_50;
                }

                RB::ProtobufDecoder::begin_message(this);
                RB::Filter::LuminanceCurve::decode((v20 + 64), this);
                RB::ProtobufDecoder::end_message(this);
                goto LABEL_46;
              case 3:
                v19 = this[8];
                v20 = (v19[2] + 7) & 0xFFFFFFFFFFFFFFF8;
                if (v20 + 96 > v19[3])
                {
                  v20 = RB::Heap::alloc_slow(v19, 0x60uLL, 7);
                }

                else
                {
                  v19[2] = v20 + 96;
                }

                *(v20 + 48) = 0;
                *(v20 + 16) = 0u;
                *(v20 + 32) = 0u;
                *(v20 + 56) = 0;
                *v20 = &unk_1F0A3D440;
                *(v20 + 88) = 0;
                *(v20 + 64) = 0;
                *(v20 + 72) = 0;
                *(v20 + 80) = 0;
                if ((v17 & 7) == 2)
                {
                  RB::ProtobufDecoder::begin_message(this);
                  RB::Filter::GaussianBlur::decode((v20 + 56), this);
                  RB::ProtobufDecoder::end_message(this);
                  goto LABEL_46;
                }

                goto LABEL_50;
            }
          }

          v3 = v10;
          RB::ProtobufDecoder::skip_field(this, v17);
LABEL_48:
          v17 = RB::ProtobufDecoder::next_field(this);
          v10 = v3;
          if (!v17)
          {
            goto LABEL_191;
          }
        }

      case 7u:
        if ((field & 7) != 2)
        {
          goto LABEL_194;
        }

        RB::ProtobufDecoder::begin_message(this);
        v38 = RB::ProtobufDecoder::next_field(this);
        if (!v38)
        {
          goto LABEL_191;
        }

        while (1)
        {
          v39 = v38 >> 3;
          if ((v38 >> 3) > 3)
          {
            switch(v39)
            {
              case 4:
                RB::Decoder::emplace<RB::DisplayList::CustomEffectStyle>(this);
                v41 = v44;
                if ((v38 & 7) != 2)
                {
                  goto LABEL_119;
                }

                RB::ProtobufDecoder::begin_message(this);
                RB::DisplayList::CustomEffectStyle::decode(v41, this);
                RB::ProtobufDecoder::end_message(this);
                goto LABEL_115;
              case 5:
                RB::Decoder::emplace<RB::DisplayList::GlassHighlightStyle>(this);
                v41 = v46;
                if ((v38 & 7) != 2)
                {
                  goto LABEL_119;
                }

                RB::ProtobufDecoder::begin_message(this);
                RB::GlassHighlightEffect::decode((v41 + 56), this);
                RB::ProtobufDecoder::end_message(this);
                goto LABEL_115;
              case 6:
                RB::Decoder::emplace<RB::DisplayList::GlassDisplacementStyle>(this);
                v41 = v42;
                if ((v38 & 7) == 2)
                {
                  RB::ProtobufDecoder::begin_message(this);
                  RB::GlassDisplacementEffect::decode((v41 + 56), this);
                  RB::ProtobufDecoder::end_message(this);
                  goto LABEL_115;
                }

LABEL_119:
                *(this + 56) = 1;
                *this = this[1];
LABEL_115:
                v3 = v41;
                if (v10)
                {
                  (**v10)(v10);
                  v3 = v41;
                }

                goto LABEL_117;
            }
          }

          else
          {
            switch(v39)
            {
              case 1:
                RB::Decoder::emplace<RB::DisplayList::ProjectionStyle>(this);
                v41 = v43;
                if ((v38 & 7) != 2)
                {
                  goto LABEL_119;
                }

                RB::ProtobufDecoder::begin_message(this);
                RB::ProjectionMatrix::decode((v41 + 56), this);
                RB::ProtobufDecoder::end_message(this);
                goto LABEL_115;
              case 2:
                RB::Decoder::emplace<RB::DisplayList::AlphaThresholdStyle>(this);
                v41 = v45;
                if ((v38 & 7) != 2)
                {
                  goto LABEL_119;
                }

                RB::ProtobufDecoder::begin_message(this);
                RB::AlphaThresholdEffect::decode((v41 + 56), this);
                RB::ProtobufDecoder::end_message(this);
                goto LABEL_115;
              case 3:
                RB::Decoder::emplace<RB::DisplayList::AlphaGradientStyle>(this);
                v41 = v40;
                if ((v38 & 7) == 2)
                {
                  RB::ProtobufDecoder::begin_message(this);
                  RB::AlphaGradientEffect::decode((v41 + 56), this);
                  RB::ProtobufDecoder::end_message(this);
                  goto LABEL_115;
                }

                goto LABEL_119;
            }
          }

          v3 = v10;
          RB::ProtobufDecoder::skip_field(this, v38);
LABEL_117:
          v38 = RB::ProtobufDecoder::next_field(this);
          v10 = v3;
          if (!v38)
          {
            goto LABEL_191;
          }
        }

      case 8u:
        RB::Decoder::emplace<RB::DisplayList::PredicateStyle>(this);
        v3 = v47;
        if ((v13 & 7) != 2)
        {
          goto LABEL_192;
        }

        RB::ProtobufDecoder::begin_message(this);
        RB::DisplayList::InvertiblePredicate::decode((v3 + 56), this);
        RB::ProtobufDecoder::end_message(this);
        goto LABEL_188;
      case 9u:
        v60 = this[8];
        v3 = (v60[2] + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v3 + 112 > v60[3])
        {
          v3 = RB::Heap::alloc_slow(v60, 0x70uLL, 7);
        }

        else
        {
          v60[2] = v3 + 112;
        }

        *(v3 + 48) = 0;
        *(v3 + 16) = 0u;
        *(v3 + 32) = 0u;
        *v3 = &unk_1F0A39DA8;
        *(v3 + 96) = 0;
        *(v3 + 104) = 0x100000000;
        if ((v13 & 7) != 2)
        {
          goto LABEL_192;
        }

        RB::ProtobufDecoder::begin_message(this);
        RB::DisplayList::Transform::decode((v3 + 56), this);
        RB::ProtobufDecoder::end_message(this);
        goto LABEL_188;
      case 0xAu:
        if ((field & 7) != 2)
        {
          goto LABEL_194;
        }

        RB::ProtobufDecoder::begin_message(this);
        v48 = RB::ProtobufDecoder::next_field(this);
        if (!v48)
        {
          goto LABEL_191;
        }

        while (1)
        {
          v49 = v48 >> 3;
          if ((v48 >> 3) <= 4)
          {
            if (v49 > 2)
            {
              if (v49 == 3)
              {
                v56 = this[8];
                v51 = (v56[2] + 7) & 0xFFFFFFFFFFFFFFF8;
                if (v51 + 64 > v56[3])
                {
                  v51 = RB::Heap::alloc_slow(v56, 0x40uLL, 7);
                }

                else
                {
                  v56[2] = v51 + 64;
                }

                *(v51 + 40) = 0u;
                *(v51 + 24) = 0u;
                *(v51 + 8) = 0u;
                *v51 = &unk_1F0A39B00;
                *(v51 + 56) = 0;
                if ((v48 & 7) != 2)
                {
                  goto LABEL_175;
                }

                goto LABEL_165;
              }

              if (v49 == 4)
              {
                v53 = this[8];
                v51 = (v53[2] + 7) & 0xFFFFFFFFFFFFFFF8;
                if (v51 + 64 > v53[3])
                {
                  v51 = RB::Heap::alloc_slow(v53, 0x40uLL, 7);
                }

                else
                {
                  v53[2] = v51 + 64;
                }

                *(v51 + 40) = 0u;
                *(v51 + 24) = 0u;
                *(v51 + 8) = 0u;
                *v51 = &unk_1F0A39C10;
                *(v51 + 56) = 1065353216;
                if ((v48 & 7) != 2)
                {
                  goto LABEL_175;
                }

                goto LABEL_165;
              }
            }

            else
            {
              if (v49 == 1)
              {
                v55 = this[8];
                v51 = (v55[2] + 7) & 0xFFFFFFFFFFFFFFF8;
                if (v51 + 80 > v55[3])
                {
                  v51 = RB::Heap::alloc_slow(v55, 0x50uLL, 7);
                }

                else
                {
                  v55[2] = v51 + 80;
                }

                *(v51 + 56) = 0u;
                *(v51 + 72) = 0;
                *(v51 + 40) = 0u;
                *(v51 + 24) = 0u;
                *(v51 + 8) = 0u;
                *v51 = &unk_1F0A399F0;
                *(v51 + 56) = 0x3C003C003C003C00;
                if ((v48 & 7) != 2)
                {
                  goto LABEL_175;
                }

                goto LABEL_139;
              }

              if (v49 == 2)
              {
                v52 = this[8];
                v51 = (v52[2] + 7) & 0xFFFFFFFFFFFFFFF8;
                if (v51 + 80 > v52[3])
                {
                  v51 = RB::Heap::alloc_slow(v52, 0x50uLL, 7);
                }

                else
                {
                  v52[2] = v51 + 80;
                }

                *(v51 + 56) = 0u;
                *(v51 + 72) = 0;
                *(v51 + 40) = 0u;
                *(v51 + 24) = 0u;
                *(v51 + 8) = 0u;
                *v51 = &unk_1F0A39A78;
                *(v51 + 56) = 0x3C003C003C003C00;
                if ((v48 & 7) != 2)
                {
                  goto LABEL_175;
                }

LABEL_139:
                RB::ProtobufDecoder::begin_message(this);
                RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMultiply>::decode(v51, this);
                RB::ProtobufDecoder::end_message(this);
                goto LABEL_170;
              }
            }
          }

          else if (v49 <= 6)
          {
            if (v49 == 5)
            {
              v58 = this[8];
              v51 = (v58[2] + 7) & 0xFFFFFFFFFFFFFFF8;
              if (v51 + 64 > v58[3])
              {
                v51 = RB::Heap::alloc_slow(v58, 0x40uLL, 7);
              }

              else
              {
                v58[2] = v51 + 64;
              }

              *(v51 + 40) = 0u;
              *(v51 + 24) = 0u;
              *(v51 + 8) = 0u;
              *v51 = &unk_1F0A39C98;
              *(v51 + 56) = 0;
              if ((v48 & 7) != 2)
              {
                goto LABEL_175;
              }

LABEL_165:
              RB::ProtobufDecoder::begin_message(this);
              RB::DisplayList::ColorFilterStyle<RB::ColorStyle::HueRotation>::decode(v51, this);
              RB::ProtobufDecoder::end_message(this);
              goto LABEL_170;
            }

            if (v49 == 6)
            {
              v54 = this[8];
              v51 = (v54[2] + 7) & 0xFFFFFFFFFFFFFFF8;
              if (v51 + 64 > v54[3])
              {
                v51 = RB::Heap::alloc_slow(v54, 0x40uLL, 7);
              }

              else
              {
                v54[2] = v51 + 64;
              }

              *(v51 + 40) = 0u;
              *(v51 + 24) = 0u;
              *(v51 + 8) = 0u;
              *v51 = &unk_1F0A39858;
              *(v51 + 56) = 1065353216;
              if ((v48 & 7) == 2)
              {
                goto LABEL_165;
              }

LABEL_175:
              *(this + 56) = 1;
              *this = this[1];
LABEL_170:
              v3 = v51;
              if (v10)
              {
                (**v10)(v10);
                v3 = v51;
              }

              goto LABEL_172;
            }
          }

          else
          {
            switch(v49)
            {
              case 7:
                RB::Decoder::emplace<RB::DisplayList::ColorFilterStyle<RB::ColorStyle::LuminanceToAlpha>>(this);
                v51 = v57;
                if ((v48 & 7) != 2)
                {
                  goto LABEL_175;
                }

                RB::ProtobufDecoder::begin_message(this);
                RB::DisplayList::ColorFilterStyle<RB::ColorStyle::LuminanceToAlpha>::decode(v51, this);
                RB::ProtobufDecoder::end_message(this);
                goto LABEL_170;
              case 8:
                v59 = this[8];
                v51 = (v59[2] + 7) & 0xFFFFFFFFFFFFFFF8;
                if (v51 + 88 > v59[3])
                {
                  v51 = RB::Heap::alloc_slow(v59, 0x58uLL, 7);
                }

                else
                {
                  v59[2] = v51 + 88;
                }

                *(v51 + 56) = 0u;
                *(v51 + 72) = 0u;
                *(v51 + 40) = 0u;
                *(v51 + 24) = 0u;
                *(v51 + 8) = 0u;
                *v51 = &unk_1F0A39968;
                *(v51 + 56) = 0x3C003C003C003C00;
                if ((v48 & 7) != 2)
                {
                  goto LABEL_175;
                }

                RB::ProtobufDecoder::begin_message(this);
                RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMonochrome>::decode(v51, this);
                RB::ProtobufDecoder::end_message(this);
                goto LABEL_170;
              case 9:
                v50 = this[8];
                v51 = (v50[2] + 7) & 0xFFFFFFFFFFFFFFF8;
                if (v51 + 64 > v50[3])
                {
                  v51 = RB::Heap::alloc_slow(v50, 0x40uLL, 7);
                }

                else
                {
                  v50[2] = v51 + 64;
                }

                *(v51 + 40) = 0u;
                *(v51 + 24) = 0u;
                *(v51 + 8) = 0u;
                *v51 = &unk_1F0A39B88;
                *(v51 + 56) = 0;
                if ((v48 & 7) == 2)
                {
                  goto LABEL_165;
                }

                goto LABEL_175;
            }
          }

          v3 = v10;
          RB::ProtobufDecoder::skip_field(this, v48);
LABEL_172:
          v48 = RB::ProtobufDecoder::next_field(this);
          v10 = v3;
          if (!v48)
          {
LABEL_191:
            RB::ProtobufDecoder::end_message(this);
            goto LABEL_2;
          }
        }

      case 0xBu:
        v14 = this[8];
        v3 = (v14[2] + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v3 + 120 > v14[3])
        {
          v3 = RB::Heap::alloc_slow(v14, 0x78uLL, 7);
        }

        else
        {
          v14[2] = v3 + 120;
        }

        RB::DisplayList::AnimationStyle::AnimationStyle(v3);
        if ((v13 & 7) != 2)
        {
          goto LABEL_192;
        }

        RB::ProtobufDecoder::begin_message(this);
        RB::DisplayList::AnimationStyle::decode(v3, this);
        RB::ProtobufDecoder::end_message(this);
        goto LABEL_188;
      case 0xDu:
        if ((field & 7) == 2)
        {
          RB::ProtobufDecoder::begin_message(this);
          v26 = RB::ProtobufDecoder::next_field(this);
          if (!v26)
          {
            goto LABEL_191;
          }

          while (1)
          {
            v27 = v26 >> 3;
            if ((v26 >> 3) <= 2)
            {
              if (v27 == 1)
              {
                RB::Decoder::emplace<RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation>>(this);
                v29 = v33;
                if ((v26 & 7) != 2)
                {
                  goto LABEL_82;
                }

                RB::ProtobufDecoder::begin_message(this);
                RB::GeometryStyle::Rotation::decode((v29 + 56), this);
                RB::ProtobufDecoder::end_message(this);
                goto LABEL_77;
              }

              if (v27 == 2)
              {
                v30 = this[8];
                v29 = (v30[2] + 7) & 0xFFFFFFFFFFFFFFF8;
                if (v29 + 72 > v30[3])
                {
                  v29 = RB::Heap::alloc_slow(v30, 0x48uLL, 7);
                }

                else
                {
                  v30[2] = v29 + 72;
                }

                *(v29 + 48) = 0;
                *(v29 + 16) = 0u;
                *(v29 + 32) = 0u;
                *v29 = &unk_1F0A395B0;
                *(v29 + 56) = _D10;
                *(v29 + 64) = 0;
                if ((v26 & 7) == 2)
                {
                  RB::ProtobufDecoder::begin_message(this);
                  RB::GeometryStyle::Scale::decode((v29 + 56), this);
                  RB::ProtobufDecoder::end_message(this);
                  goto LABEL_77;
                }

LABEL_82:
                *(this + 56) = 1;
                *this = this[1];
LABEL_77:
                v3 = v29;
                if (v10)
                {
                  (**v10)(v10);
                  v3 = v29;
                }

                goto LABEL_80;
              }
            }

            else
            {
              switch(v27)
              {
                case 3:
                  RB::Decoder::emplace<RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation3D>>(this);
                  v29 = v31;
                  if ((v26 & 7) != 2)
                  {
                    goto LABEL_82;
                  }

                  RB::ProtobufDecoder::begin_message(this);
                  RB::GeometryStyle::Rotation3D::decode((v29 + 64), this);
                  RB::ProtobufDecoder::end_message(this);
                  goto LABEL_77;
                case 4:
                  RB::Decoder::emplace<RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Translation>>(this);
                  v29 = v32;
                  if ((v26 & 7) != 2)
                  {
                    goto LABEL_82;
                  }

                  RB::ProtobufDecoder::begin_message(this);
                  RB::GeometryStyle::Translation::decode((v29 + 56), this);
                  RB::ProtobufDecoder::end_message(this);
                  goto LABEL_77;
                case 5:
                  v28 = this[8];
                  v29 = (v28[2] + 15) & 0xFFFFFFFFFFFFFFF0;
                  if (v29 + 112 > v28[3])
                  {
                    v29 = RB::Heap::alloc_slow(v28, 0x70uLL, 15);
                  }

                  else
                  {
                    v28[2] = v29 + 112;
                  }

                  *(v29 + 48) = 0;
                  *(v29 + 16) = 0u;
                  *(v29 + 32) = 0u;
                  *(v29 + 64) = xmmword_195E42760;
                  *v29 = &unk_1F0A36F70;
                  *(v29 + 80) = xmmword_195E42770;
                  *(v29 + 96) = 0;
                  *(v29 + 104) = 0;
                  if ((v26 & 7) == 2)
                  {
                    RB::ProtobufDecoder::begin_message(this);
                    RB::GeometryStyle::Affine::decode((v29 + 64), this);
                    RB::ProtobufDecoder::end_message(this);
                    goto LABEL_77;
                  }

                  goto LABEL_82;
              }
            }

            v3 = v10;
            RB::ProtobufDecoder::skip_field(this, v26);
LABEL_80:
            v26 = RB::ProtobufDecoder::next_field(this);
            v10 = v3;
            if (!v26)
            {
              goto LABEL_191;
            }
          }
        }

LABEL_194:
        *(this + 56) = 1;
        *this = this[1];
        v3 = v10;
        break;
      case 0xEu:
        v16 = this[8];
        v3 = (v16[2] + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v3 + 72 > v16[3])
        {
          v3 = RB::Heap::alloc_slow(v16, 0x48uLL, 7);
        }

        else
        {
          v16[2] = v3 + 72;
        }

        *(v3 + 48) = 0;
        *(v3 + 56) = 0;
        *(v3 + 16) = 0u;
        *(v3 + 32) = 0u;
        *v3 = &unk_1F0A39EB8;
        *(v3 + 64) = 0x3F80000000000000;
        if ((v13 & 7) == 2)
        {
          RB::ProtobufDecoder::begin_message(this);
          RB::DisplayList::CrossFadeStyle::decode(v3, this);
          RB::ProtobufDecoder::end_message(this);
LABEL_188:
          if (v10)
          {
LABEL_189:
            (**v10)(v10);
            continue;
          }
        }

        else
        {
LABEL_192:
          *(this + 56) = 1;
          *this = this[1];
          if (v10)
          {
            goto LABEL_189;
          }
        }

        continue;
      default:
        RB::ProtobufDecoder::skip_field(this, field);
        continue;
    }
  }

  if (v3)
  {
    *(v3 + 16) = RB::Decoder::emplace<RB::AffineTransform,RB::AffineTransform&>(this, v63);
    *(v3 + 24) = v4;
  }

  else
  {
    *(this + 56) = 1;
    *this = this[1];
  }

  return v3;
}

double RB::Decoder::emplace<RB::DisplayList::ShadowStyle>(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 64);
  v3 = (v2[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v3 + 96 > v2[3])
  {
    v3 = RB::Heap::alloc_slow(v2, 0x60uLL, 7);
  }

  else
  {
    v2[2] = v3 + 96;
  }

  a2.n128_u64[0] = 0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = a2;
  *v3 = &unk_1F0A3B970;
  *(v3 + 64) = 0x3F00000000000000;
  *(v3 + 72) = 0x3C00000000000000;
  *(v3 + 80) = 0;
  *(v3 + 84) = 0;
  *&result = 2;
  *(v3 + 88) = 2;
  return result;
}

double RB::Decoder::emplace<RB::DisplayList::PredicateStyle>(uint64_t a1)
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

  *(v2 + 48) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = &unk_1F0A39E30;
  *(v2 + 80) = 0;
  *&result = 0x100000000;
  *(v2 + 88) = 0x100000000;
  *(v2 + 96) = 0;
  return result;
}

_OWORD *RB::Decoder::emplace<RB::AffineTransform,RB::AffineTransform&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 64);
  v4 = ((v3[2] + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v4 + 3) > v3[3])
  {
    v4 = RB::Heap::alloc_slow(v3, 0x30uLL, 15);
  }

  else
  {
    v3[2] = (v4 + 3);
  }

  v5 = *a2;
  v6 = a2[2];
  v4[1] = a2[1];
  v4[2] = v6;
  *v4 = v5;
  return v4;
}

void RB::DisplayList::CrossFadeStyle::~CrossFadeStyle(RB::DisplayList::CrossFadeStyle *this)
{
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (**v2)(v2);
  }
}

{
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (**v2)(v2);
  }

  JUMPOUT(0x19A8C09E0);
}

unsigned __int8 *RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Projection>::draw(uint64_t a1, size_t **this, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  *(a4 + 2) = *(a1 + 32);
  v5 = *(a1 + 72);
  v7[0] = *(a1 + 56);
  v7[1] = v5;
  v8 = *(a1 + 88);
  return RB::DisplayList::Builder::projection_style_draw(this, a3, a4, a5, v7, *(a1 + 16), *(a1 + 24));
}

double RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Projection>::bounds(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(a1 + 72);
  v6[0] = *(a1 + 56);
  v6[1] = v4;
  v7 = *(a1 + 88);
  return RB::DisplayList::projection_style_bounds(a2, a1, a3, a4, v6);
}

uint32x2_t RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Projection>::map_roi(uint64_t a1, float32x2_t *this, float64x2_t *a3)
{
  v3 = *(a1 + 72);
  v8[0] = *(a1 + 56);
  v8[1] = v3;
  v9 = *(a1 + 88);
  v4 = vcge_f32(vabs_f32(this[1]), vneg_f32(0x80000000800000));
  result = vpmax_u32(v4, v4);
  if ((result.i32[0] & 0x80000000) == 0)
  {
    RB::Rect::move(this, a3, *(a1 + 16));
    if (!RB::unapply(this, v8, v7))
    {
      result = 0x100000001000000;
      *this = 0x100000001000000;
      this[1] = vneg_f32(0x80000000800000);
    }
  }

  return result;
}

uint64_t RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Projection>::can_mix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && RB::ProjectionMatrix::operator==((a1 + 56), (a3 + 56)))
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

uint64_t RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Projection>::mix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  RB::Heap::emplace<RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Projection>,RB::GeometryStyle::Projection const&>((*(*a4 + 8) + 16), a1 + 56);
  v7 = v6;
  if (a3)
  {
    v8 = (a3 + 56);
  }

  else
  {
    v8 = 0;
  }

  RB::GeometryStyle::Projection::mix((v6 + 56), v8, *(a2 + 16));
  return v7;
}

void RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Projection>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "geometry");
  RB::GeometryStyle::Projection::print((a1 + 7), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

void RB::DisplayList::PathProjectionStyle::~PathProjectionStyle(RB::DisplayList::PathProjectionStyle *this)
{
  RBPathRelease(*(this + 12), *(this + 13));
}

{
  RBPathRelease(*(this + 12), *(this + 13));

  JUMPOUT(0x19A8C09E0);
}

void RB::DisplayList::CustomEffectStyle::~CustomEffectStyle(RB::DisplayList::CustomEffectStyle *this)
{
  v2 = *(this + 28);
  *(this + 28) = 0;
  if (v2)
  {
    (**v2)(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    v4 = *(this + 24);
  }

  else
  {
    v4 = (this + 64);
  }

  if (*(this + 25))
  {
    v5 = 0;
    do
    {
      RB::CustomShader::Value::reset_data(v4);
      ++v5;
      v4 += 4;
    }

    while (v5 < *(this + 25));
    v3 = *(this + 24);
  }

  if (v3)
  {
    free(v3);
  }

  v6 = *(this + 7);
  if (v6)
  {
    if (atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      RB::CustomShader::Library::intern_function(v6);
    }
  }
}

{
  v2 = *(this + 28);
  *(this + 28) = 0;
  if (v2)
  {
    (**v2)(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    v4 = *(this + 24);
  }

  else
  {
    v4 = (this + 64);
  }

  if (*(this + 25))
  {
    v5 = 0;
    do
    {
      RB::CustomShader::Value::reset_data(v4);
      ++v5;
      v4 += 4;
    }

    while (v5 < *(this + 25));
    v3 = *(this + 24);
  }

  if (v3)
  {
    free(v3);
  }

  v6 = *(this + 7);
  if (v6 && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::CustomShader::Library::intern_function(v6);
  }

  JUMPOUT(0x19A8C09E0);
}

void RB::DisplayList::PredicateStyle::~PredicateStyle(RB::DisplayList::PredicateStyle *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = *(this + 10);
  }

  else
  {
    v3 = (this + 56);
  }

  if (*(this + 22))
  {
    v4 = 0;
    do
    {
      RB::DisplayList::Predicate::Term::~Term(v3);
      ++v4;
      v3 = (v5 + 24);
    }

    while (v4 < *(this + 22));
    v2 = *(this + 10);
  }

  if (v2)
  {
    free(v2);
  }
}

{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = *(this + 10);
  }

  else
  {
    v3 = (this + 56);
  }

  if (*(this + 22))
  {
    v4 = 0;
    do
    {
      RB::DisplayList::Predicate::Term::~Term(v3);
      ++v4;
      v3 = (v5 + 24);
    }

    while (v4 < *(this + 22));
    v2 = *(this + 10);
  }

  if (v2)
  {
    free(v2);
  }

  JUMPOUT(0x19A8C09E0);
}

void RB::DisplayList::TransformStyle::~TransformStyle(RB::DisplayList::TransformStyle *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    v3 = *(this + 12);
  }

  else
  {
    v3 = (this + 56);
  }

  if (*(this + 26))
  {
    v4 = 0;
    do
    {
      RB::DisplayList::Transform::Term::~Term(v3);
      ++v4;
      v3 = (v5 + 40);
    }

    while (v4 < *(this + 26));
    v2 = *(this + 12);
  }

  if (v2)
  {
    free(v2);
  }
}

{
  v2 = *(this + 12);
  if (v2)
  {
    v3 = *(this + 12);
  }

  else
  {
    v3 = (this + 56);
  }

  if (*(this + 26))
  {
    v4 = 0;
    do
    {
      RB::DisplayList::Transform::Term::~Term(v3);
      ++v4;
      v3 = (v5 + 40);
    }

    while (v4 < *(this + 26));
    v2 = *(this + 12);
  }

  if (v2)
  {
    free(v2);
  }

  JUMPOUT(0x19A8C09E0);
}

void RB::DisplayList::AnimationStyle::~AnimationStyle(RB::DisplayList::AnimationStyle *this)
{
  v1 = *(this + 10);
  if (v1)
  {
    free(v1);
  }
}

{
  v1 = *(this + 10);
  if (v1)
  {
    free(v1);
  }

  JUMPOUT(0x19A8C09E0);
}

RB::DisplayList::Transform::Term *RB::vector<RB::DisplayList::Transform::Term,1ul,unsigned int>::~vector(RB::DisplayList::Transform::Term *a1)
{
  v1 = a1;
  v2 = *(a1 + 5);
  if (v2)
  {
    a1 = *(a1 + 5);
  }

  if (*(v1 + 12))
  {
    v3 = 0;
    do
    {
      RB::DisplayList::Transform::Term::~Term(a1);
      ++v3;
      a1 = (v4 + 40);
    }

    while (v3 < *(v1 + 12));
    v2 = *(v1 + 5);
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

void *RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Projection>::encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x6AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x32uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::GeometryStyle::Projection::encode((a1 + 7), a2);
  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

uint64_t RB::DisplayList::GenericEffect<RB::GlassHighlightEffect>::append_color_fn(uint64_t a1, RB::ColorMatrixFn *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  if (*(a1 + 72) == 1)
  {
    RB::Heap::emplace<RB::DisplayList::GenericEffect<RB::GlassHighlightEffect>,RB::DisplayList::GenericEffect<RB::GlassHighlightEffect> const&,RB::DisplayList::Contents &>((*(a4 + 8) + 16), a1);
    v6 = v7;
    *(v7 + 72) = 0;
  }

  RB::Fill::Color::append_color_fn((v6 + 16), a2, a3);
  return v6;
}

uint64_t RB::DisplayList::GenericEffect<RB::GlassHighlightEffect>::apply_transform(uint64_t a1, RB::DisplayList::Contents *a2, RB::DisplayList::Transform *a3, __n128 a4)
{
  v6 = a1;
  if (*(a1 + 72) == 1)
  {
    a4 = RB::Heap::emplace<RB::DisplayList::GenericEffect<RB::GlassHighlightEffect>,RB::DisplayList::GenericEffect<RB::GlassHighlightEffect> const&,RB::DisplayList::Contents &>((a2 + 16), a1);
    v6 = v7;
    *(v7 + 72) = 0;
  }

  RB::GlassHighlightEffect::apply_transform((v6 + 16), a2, a3, a4);
  return v6;
}

unint64_t RB::DisplayList::GenericEffect<RB::GlassHighlightEffect>::color_info(float16x4_t *a1, uint64_t a2)
{
  result = RB::Fill::Color::color_info(a1 + 2);
  *a2 = result;
  *(a2 + 4) = WORD2(result);
  return result;
}

__n128 RB::Heap::emplace<RB::DisplayList::GenericEffect<RB::GlassHighlightEffect>,RB::DisplayList::GenericEffect<RB::GlassHighlightEffect> const&,RB::DisplayList::Contents &>(RB::Heap *this, uint64_t a2)
{
  v4 = *(this + 3);
  v5 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v5 + 80 > v4)
  {
    v5 = RB::Heap::alloc_slow(this, 0x50uLL, 7);
  }

  else
  {
    *(this + 2) = v5 + 80;
  }

  *v5 = &unk_1F0A3F3E0;
  result = *(a2 + 16);
  v7 = *(a2 + 32);
  v8 = *(a2 + 48);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 32) = v7;
  *(v5 + 48) = v8;
  *(v5 + 16) = result;
  *(v5 + 72) = 1;
  return result;
}

__n128 RB::Heap::emplace<RB::DisplayList::GenericEffect<RB::GlassDisplacementEffect>,RB::DisplayList::GenericEffect<RB::GlassDisplacementEffect> const&,RB::DisplayList::Contents &>(RB::Heap *this, uint64_t a2)
{
  v4 = *(this + 3);
  v5 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v5 + 56 > v4)
  {
    v5 = RB::Heap::alloc_slow(this, 0x38uLL, 7);
  }

  else
  {
    *(this + 2) = v5 + 56;
  }

  *v5 = &unk_1F0A3F498;
  result = *(a2 + 16);
  *(v5 + 30) = *(a2 + 30);
  *(v5 + 16) = result;
  *(v5 + 48) = 1;
  return result;
}

RB::DisplayList::PredicateStyle *RB::DisplayList::PredicateStyle::PredicateStyle(RB::DisplayList::PredicateStyle *this, const RB::DisplayList::Predicate *a2, char a3)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = &unk_1F0A39E30;
  v5 = this + 56;
  *(this + 10) = 0;
  *(this + 11) = 0x100000000;
  if (*(a2 + 3))
  {
    v6 = *(a2 + 3);
  }

  else
  {
    v6 = a2;
  }

  v7 = *(a2 + 8);
  v8 = v7;
  if (v7 >= 2)
  {
    RB::vector<RB::DisplayList::Predicate::Term,1ul,unsigned int>::reserve_slow(this + 56, v7);
    v9 = *(this + 10);
    v10 = *(this + 22);
  }

  else
  {
    if (!v7)
    {
      v13 = 0;
      goto LABEL_13;
    }

    v9 = 0;
    v10 = 0;
  }

  if (!v9)
  {
    v9 = v5;
  }

  v11 = &v9[24 * v10];
  do
  {
    v12 = RB::DisplayList::Predicate::Term::Term(v11, v6);
    v6 = (v6 + 24);
    v11 = (v12 + 24);
    --v8;
  }

  while (v8);
  v13 = *(this + 22);
LABEL_13:
  *(this + 22) = v13 + v7;
  *(this + 96) = a3;
  return this;
}

RB::DisplayList::TransformStyle *RB::DisplayList::TransformStyle::TransformStyle(RB::DisplayList::TransformStyle *this, const RB::DisplayList::Transform *a2)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = &unk_1F0A39DA8;
  v3 = this + 56;
  *(this + 12) = 0;
  *(this + 13) = 0x100000000;
  if (*(a2 + 5))
  {
    v4 = *(a2 + 5);
  }

  else
  {
    v4 = a2;
  }

  v5 = *(a2 + 12);
  v6 = v5;
  if (v5 >= 2)
  {
    RB::vector<RB::DisplayList::Transform::Term,1ul,unsigned int>::reserve_slow(this + 56, v5);
    v7 = *(this + 12);
    v8 = *(this + 26);
  }

  else
  {
    if (!v5)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v7 = 0;
    v8 = 0;
  }

  if (!v7)
  {
    v7 = v3;
  }

  v9 = &v7[40 * v8];
  do
  {
    v10 = RB::DisplayList::Transform::Term::Term(v9, v4);
    v4 = (v4 + 40);
    v9 = (v10 + 40);
    --v6;
  }

  while (v6);
  v11 = *(this + 26);
LABEL_13:
  *(this + 26) = v11 + v5;
  return this;
}

void *RB::vector<RB::DisplayList::Style const*,64ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 131) + (*(__dst + 131) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 131) + (*(__dst + 131) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,8ul>(*(__dst + 64), __dst, 0x40u, __dst + 131, v3);
  *(__dst + 64) = result;
  return result;
}

__int16 RB::Decoder::emplace<RB::DisplayList::FilterStyle<RB::Filter::LuminanceCurve>>@<H0>(uint64_t a1@<X0>)
{
  v1 = *(a1 + 64);
  v2 = (v1[2] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v2 + 112 > v1[3])
  {
    v2 = RB::Heap::alloc_slow(v1, 0x70uLL, 15);
  }

  else
  {
    v1[2] = v2 + 112;
  }

  *(v2 + 48) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = &unk_1F0A3D3B8;
  *(v2 + 64) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 94) = 0;
  result = COERCE_UNSIGNED_INT(1.0);
  *(v2 + 102) = COERCE_UNSIGNED_INT(1.0);
  *(v2 + 104) = 0;
  *(v2 + 108) = 0;
  return result;
}

double RB::Decoder::emplace<RB::DisplayList::FilterStyle<RB::Filter::Custom>>(uint64_t a1)
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

  *(v2 + 48) = 0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = &unk_1F0A3D330;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  *(v2 + 224) = 4;
  *(v2 + 232) = 0;
  *(v2 + 240) = xmmword_195E42760;
  *(v2 + 256) = xmmword_195E42770;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0u;
  return result;
}

double RB::DisplayList::FilterStyle<RB::Filter::ColorMatrix>::bounds(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
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

void *RB::DisplayList::FilterStyle<RB::Filter::ColorMatrix>::encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x32uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::Filter::ColorMatrix::encode((a1 + 7), a2);
  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::FilterStyle<RB::Filter::ColorMatrix>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "filter");
  RB::Filter::ColorMatrix::print((a1 + 7), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

unint64_t RB::Heap::emplace<RB::DisplayList::FilterStyle<RB::Filter::ColorMatrix>,RB::Filter::ColorMatrix const&,RB::DisplayList::Builder &>(size_t *a1, RB::Filter::ColorMatrix *a2, RB::DisplayList::Builder *a3)
{
  v5 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v5 + 72 > a1[3])
  {
    v5 = RB::Heap::alloc_slow(a1, 0x48uLL, 7);
  }

  else
  {
    a1[2] = v5 + 72;
  }

  *(v5 + 48) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = &unk_1F0A3D4C8;
  RB::Filter::ColorMatrix::ColorMatrix((v5 + 56), a2, a3);
  return v5;
}

double RB::Decoder::emplace<RB::DisplayList::ProjectionStyle>(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = (v1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v2 + 96 > v1[3])
  {
    v2 = RB::Heap::alloc_slow(v1, 0x60uLL, 7);
  }

  else
  {
    v1[2] = v2 + 96;
  }

  *(v2 + 48) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 88) = 1065353216;
  *&result = 1065353216;
  *(v2 + 72) = xmmword_195E428C0;
  *(v2 + 56) = xmmword_195E428C0;
  *v2 = &unk_1F0A39D20;
  return result;
}

double RB::Decoder::emplace<RB::DisplayList::AlphaThresholdStyle>(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = (v1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v2 + 80 > v1[3])
  {
    v2 = RB::Heap::alloc_slow(v1, 0x50uLL, 7);
  }

  else
  {
    v1[2] = v2 + 80;
  }

  *(v2 + 48) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = &unk_1F0A396C0;
  result = 1.40444776e306;
  *(v2 + 56) = 0x7F80000000000000;
  *(v2 + 64) = 0x3C00000000000000;
  *(v2 + 72) = 0;
  *(v2 + 76) = 0;
  *(v2 + 78) = 3;
  return result;
}

double RB::Decoder::emplace<RB::DisplayList::AlphaGradientStyle>(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = (v1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v2 + 136 > v1[3])
  {
    v2 = RB::Heap::alloc_slow(v1, 0x88uLL, 7);
  }

  else
  {
    v1[2] = v2 + 136;
  }

  *(v2 + 48) = 0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = &unk_1F0A39748;
  *(v2 + 56) = 0x3F80000000000000;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 107) = 0u;
  *(v2 + 123) = 1;
  *(v2 + 128) = 3;
  return result;
}

double RB::Decoder::emplace<RB::DisplayList::CustomEffectStyle>(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = (v1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v2 + 272 > v1[3])
  {
    v2 = RB::Heap::alloc_slow(v1, 0x110uLL, 7);
  }

  else
  {
    v1[2] = v2 + 272;
  }

  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *v2 = &unk_1F0A397D0;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 4;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 264) = 0;
  return result;
}

double RB::Decoder::emplace<RB::DisplayList::GlassHighlightStyle>(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = (v1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v2 + 112 > v1[3])
  {
    v2 = RB::Heap::alloc_slow(v1, 0x70uLL, 7);
  }

  else
  {
    v1[2] = v2 + 112;
  }

  *(v2 + 48) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = &unk_1F0A3F2D0;
  *(v2 + 56) = 0x3C00000000000000;
  *(v2 + 64) = 0;
  *(v2 + 68) = 0;
  result = 0.0078125;
  *(v2 + 72) = 0x3F80000000000000;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 80) = 0;
  *(v2 + 104) = 3;
  return result;
}

double RB::Decoder::emplace<RB::DisplayList::GlassDisplacementStyle>(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = (v1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v2 + 88 > v1[3])
  {
    v2 = RB::Heap::alloc_slow(v1, 0x58uLL, 7);
  }

  else
  {
    v1[2] = v2 + 88;
  }

  *(v2 + 48) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = &unk_1F0A3F358;
  result = 0.0078125;
  *(v2 + 56) = 0x3F80000000000000;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 84) = 3;
  return result;
}

double RB::Decoder::emplace<RB::DisplayList::ColorFilterStyle<RB::ColorStyle::LuminanceToAlpha>>(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = (v1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v2 + 64 > v1[3])
  {
    v2 = RB::Heap::alloc_slow(v1, 0x40uLL, 7);
  }

  else
  {
    v1[2] = v2 + 64;
  }

  *(v2 + 56) = 0;
  result = 0.0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 8) = 0u;
  *v2 = &unk_1F0A398E0;
  return result;
}

unint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMultiply>::decode(uint64_t a1, RB::ProtobufDecoder *this)
{
  result = RB::ProtobufDecoder::next_field(this);
  if (result)
  {
    v5 = result;
    while (RB::ColorStyle::ColorMultiply::decode_field((a1 + 56), this, v5))
    {
LABEL_17:
      result = RB::ProtobufDecoder::next_field(this);
      v5 = result;
      if (!result)
      {
        return result;
      }
    }

    v6 = v5 >> 3;
    if ((v5 >> 3) == 10)
    {
      if (RB::ProtobufDecoder::BOOL_field(this, v5))
      {
        v8 = 4;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      if (v6 != 9)
      {
        if (v6 != 8)
        {
          RB::ProtobufDecoder::skip_field(this, v5);
          goto LABEL_17;
        }

        v7 = *(a1 + 72) | RB::ProtobufDecoder::BOOL_field(this, v5);
        goto LABEL_15;
      }

      if (RB::ProtobufDecoder::BOOL_field(this, v5))
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }
    }

    v7 = *(a1 + 72) | v8;
LABEL_15:
    *(a1 + 72) = v7;
    goto LABEL_17;
  }

  return result;
}

unint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::HueRotation>::decode(uint64_t a1, RB::ProtobufDecoder *this)
{
  result = RB::ProtobufDecoder::next_field(this);
  if (result)
  {
    v5 = result;
    while (RB::ColorStyle::HueRotation::decode_field((a1 + 56), this, v5))
    {
LABEL_17:
      result = RB::ProtobufDecoder::next_field(this);
      v5 = result;
      if (!result)
      {
        return result;
      }
    }

    v6 = v5 >> 3;
    if ((v5 >> 3) == 10)
    {
      if (RB::ProtobufDecoder::BOOL_field(this, v5))
      {
        v8 = 4;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      if (v6 != 9)
      {
        if (v6 != 8)
        {
          RB::ProtobufDecoder::skip_field(this, v5);
          goto LABEL_17;
        }

        v7 = *(a1 + 60) | RB::ProtobufDecoder::BOOL_field(this, v5);
        goto LABEL_15;
      }

      if (RB::ProtobufDecoder::BOOL_field(this, v5))
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }
    }

    v7 = *(a1 + 60) | v8;
LABEL_15:
    *(a1 + 60) = v7;
    goto LABEL_17;
  }

  return result;
}

unint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::LuminanceToAlpha>::decode(uint64_t a1, RB::ProtobufDecoder *this)
{
  result = RB::ProtobufDecoder::next_field(this);
  if (result)
  {
    v5 = result;
    while (1)
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) == 10)
      {
        break;
      }

      if (v6 == 9)
      {
        if (RB::ProtobufDecoder::BOOL_field(this, v5))
        {
          v8 = 2;
        }

        else
        {
          v8 = 0;
        }

LABEL_13:
        v7 = *(a1 + 60) | v8;
        goto LABEL_14;
      }

      if (v6 != 8)
      {
        RB::ProtobufDecoder::skip_field(this, v5);
        goto LABEL_16;
      }

      v7 = *(a1 + 60) | RB::ProtobufDecoder::BOOL_field(this, v5);
LABEL_14:
      *(a1 + 60) = v7;
LABEL_16:
      result = RB::ProtobufDecoder::next_field(this);
      v5 = result;
      if (!result)
      {
        return result;
      }
    }

    if (RB::ProtobufDecoder::BOOL_field(this, v5))
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_13;
  }

  return result;
}

unint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorMonochrome>::decode(uint64_t a1, RB::ProtobufDecoder *this)
{
  result = RB::ProtobufDecoder::next_field(this);
  if (result)
  {
    v5 = result;
    while ((RB::ColorStyle::ColorMonochrome::decode_field((a1 + 56), this, v5) & 1) != 0)
    {
LABEL_17:
      result = RB::ProtobufDecoder::next_field(this);
      v5 = result;
      if (!result)
      {
        return result;
      }
    }

    v6 = v5 >> 3;
    if ((v5 >> 3) == 10)
    {
      if (RB::ProtobufDecoder::BOOL_field(this, v5))
      {
        v8 = 4;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      if (v6 != 9)
      {
        if (v6 != 8)
        {
          RB::ProtobufDecoder::skip_field(this, v5);
          goto LABEL_17;
        }

        v7 = *(a1 + 80) | RB::ProtobufDecoder::BOOL_field(this, v5);
        goto LABEL_15;
      }

      if (RB::ProtobufDecoder::BOOL_field(this, v5))
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }
    }

    v7 = *(a1 + 80) | v8;
LABEL_15:
    *(a1 + 80) = v7;
    goto LABEL_17;
  }

  return result;
}

RB::DisplayList::AnimationStyle *RB::DisplayList::AnimationStyle::AnimationStyle(RB::DisplayList::AnimationStyle *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = &unk_1F0A39F40;
  *(this + 10) = 0;
  *(this + 11) = 0x600000000;
  uuid_clear(this + 96);
  *(this + 28) = 273;
  return this;
}

void sub_195E063B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    free(v3);
  }

  _Unwind_Resume(exception_object);
}

double RB::Decoder::emplace<RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation>>(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = (v1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v2 + 72 > v1[3])
  {
    v2 = RB::Heap::alloc_slow(v1, 0x48uLL, 7);
  }

  else
  {
    v1[2] = v2 + 72;
  }

  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = &unk_1F0A39528;
  *(v2 + 64) = 0;
  return result;
}

double RB::Decoder::emplace<RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Translation>>(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = (v1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v2 + 64 > v1[3])
  {
    v2 = RB::Heap::alloc_slow(v1, 0x40uLL, 7);
  }

  else
  {
    v1[2] = v2 + 64;
  }

  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = &unk_1F0A36FF8;
  return result;
}

double RB::Decoder::emplace<RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation3D>>(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = (v1[2] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v2 + 128 > v1[3])
  {
    v2 = RB::Heap::alloc_slow(v1, 0x80uLL, 15);
  }

  else
  {
    v1[2] = v2 + 128;
  }

  *(v2 + 48) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = &unk_1F0A39638;
  *(v2 + 64) = 0;
  result = 0.0;
  *(v2 + 80) = xmmword_195E44AA0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0x7FC0000000000000;
  return result;
}

__n128 RB::Heap::emplace<RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Projection>,RB::GeometryStyle::Projection const&>(RB::Heap *this, uint64_t a2)
{
  v4 = *(this + 3);
  v5 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v5 + 96 > v4)
  {
    v5 = RB::Heap::alloc_slow(this, 0x60uLL, 7);
  }

  else
  {
    *(this + 2) = v5 + 96;
  }

  *(v5 + 48) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = &unk_1F0A37080;
  result = *a2;
  v7 = *(a2 + 16);
  *(v5 + 88) = *(a2 + 32);
  *(v5 + 72) = v7;
  *(v5 + 56) = result;
  return result;
}

int32x2_t *RB::render_masks_coverage(int32x2_t *result, int32x2_t *a2, unint64_t a3, uint64_t a4, RB::Buffer *a5, char a6, float a7)
{
  if (a5)
  {
    _S8 = a7;
    v13 = result;
    if (result[16].i32[1] == 2)
    {
      v14 = 131082;
    }

    else
    {
      v14 = 10;
    }

    v26 = result[14];
    v15 = result[15].i32[0];
    result[25].i32[1] = RB::RenderFrame::buffer_id(*(*result + 16), *a4);
    v13[26] = vmovn_s64(*(a4 + 8));
    v16 = RB::RenderFrame::buffer_id(*(*v13 + 16), a5);
    v13[27].i32[1] = 0;
    v13[28].i32[0] = 0;
    v13[27].i32[0] = v16;
    RB::RenderFrame::alloc_buffer_region(*(*v13 + 16), 0x20, 4uLL, 0, &v27);
    v17 = v27;
    if (v27)
    {
      v18 = vneg_f32(v26);
      v18.i32[0] = 0;
      __asm { FCVT            H2, S8 }

      v24 = *(v27 + 7) + v28.i64[0];
      *v24 = v26.u32[0];
      *(v24 + 8) = v18;
      __asm { FMOV            V0.2S, #-1.0 }

      *(v24 + 16) = -_D0;
      *(v24 + 24) = v15;
      *(v24 + 28) = _H2;
    }

    else
    {
      v27 = 0;
      v28 = 0uLL;
    }

    v13[24].i32[0] = RB::RenderFrame::buffer_id(*(*v13 + 16), v17);
    *(v13 + 196) = vmovn_s64(v28);
    result = RB::RenderPass::draw_indexed_primitives(v13, (v14 | ((a6 & 0x3F) << 32)), 4, **(*v13 + 16) + 136, 4uLL, a3, *a2, a2[1]);
    *(&v13[25] + 4) = 0;
    *(&v13[26] + 4) = 0;
    *(&v13[27] + 4) = 0;
  }

  return result;
}

void sub_195E0674C(_Unwind_Exception *a1)
{
  *(v1 + 208) = 0;
  *(v1 + 204) = 0;
  _Unwind_Resume(a1);
}

int32x2_t *RB::render_masks(int32x2_t *result, int32x2_t *a2, unint64_t a3, uint64_t a4, RB::Buffer *a5, float64x2_t *a6, float32x2_t *a7, int a8, float32x4_t a9, char a10)
{
  if (a5)
  {
    v10 = a9.f32[0];
    v17 = result;
    RB::Fill::Gradient::set_gradient(a7, (v36 + 12), result, a6, a9);
    if (v17[16].i32[1] == 2)
    {
      v18 = 131084;
    }

    else
    {
      v18 = 12;
    }

    v34 = v18;
    RB::Fill::Gradient::set_fill_state(a7, &v34, v17, v10);
    if (a8)
    {
      v19 = 0x10000;
    }

    else
    {
      v19 = 0;
    }

    LODWORD(v34) = v34 & 0xFFFEFFFF | v19;
    HIDWORD(v34) = HIDWORD(v34) & 0xFFFFFFC0 | a10 & 0x3F;
    v20 = v17[14];
    v21 = vneg_f32(v20);
    v21.i32[0] = 0;
    *&v35 = v20.u32[0];
    *(&v35 + 1) = v21;
    __asm { FMOV            V0.2S, #-1.0 }

    *v36 = -_D0;
    DWORD2(v36[0]) = v17[15].i32[0];
    v17[25].i32[1] = RB::RenderFrame::buffer_id(*(*v17 + 16), *a4);
    v17[26] = vmovn_s64(*(a4 + 8));
    v27 = RB::RenderFrame::buffer_id(*(*v17 + 16), a5);
    v17[27].i32[1] = 0;
    v17[28].i32[0] = 0;
    v17[27].i32[0] = v27;
    RB::RenderFrame::alloc_buffer_region(*(*v17 + 16), 0x54, 4uLL, 0, &v38);
    v28 = v38;
    if (v38)
    {
      v29 = *(v38 + 7) + v39.i64[0];
      v30 = v35;
      *(v29 + 16) = v36[0];
      v32 = v36[2];
      v31 = v36[3];
      v33 = v36[1];
      *(v29 + 80) = v37;
      *(v29 + 48) = v32;
      *(v29 + 64) = v31;
      *(v29 + 32) = v33;
      *v29 = v30;
    }

    else
    {
      v38 = 0;
      v39 = 0uLL;
    }

    v17[24].i32[0] = RB::RenderFrame::buffer_id(*(*v17 + 16), v28);
    *(v17 + 196) = vmovn_s64(v39);
    result = RB::RenderPass::draw_indexed_primitives(v17, v34, 4, **(*v17 + 16) + 136, 4uLL, a3, *a2, a2[1]);
    v17[29].i32[1] = 0;
    *&v17[25].u8[4] = 0u;
    *&v17[27].u8[4] = 0u;
  }

  return result;
}

void sub_195E06950(_Unwind_Exception *a1)
{
  *(v1 + 208) = 0;
  *(v1 + 204) = 0;
  _Unwind_Resume(a1);
}

int32x2_t *RB::render_masks(int32x2_t *result, int32x2_t *a2, unint64_t a3, uint64_t a4, RB::Buffer *a5, uint64_t a6, uint64_t a7, int a8, char a9)
{
  if (a5)
  {
    v15 = result;
    if (result[16].i32[1] == 2)
    {
      v16 = 131085;
    }

    else
    {
      v16 = 13;
    }

    v26 = v16;
    RB::RenderState::set_image(&v26, a6 + 28, result[16].i8[0]);
    if (a8)
    {
      v17 = 0x10000;
    }

    else
    {
      v17 = 0;
    }

    LODWORD(v26) = v26 & 0xFFFEFFFF | v17;
    HIDWORD(v26) = HIDWORD(v26) & 0xFFFFFFC0 | a9 & 0x3F;
    *a6 = *&v15[14];
    LODWORD(v18) = 0;
    *(&v18 + 1) = -*&v15[14].i32[1];
    __asm { FMOV            V0.2S, #-1.0 }

    *(a6 + 8) = v18;
    *(a6 + 16) = -_D0;
    *(a6 + 24) = v15[15].i32[0];
    v15[25].i32[1] = RB::RenderFrame::buffer_id(*(*v15 + 16), *a4);
    v15[26] = vmovn_s64(*(a4 + 8));
    v24 = RB::RenderFrame::buffer_id(*(*v15 + 16), a5);
    v15[27].i32[1] = 0;
    v15[28].i32[0] = 0;
    v15[27].i32[0] = v24;
    RB::Fill::set_image_globals(v15, a6, 0xBC, 4uLL, &v26, v25);
    result = RB::RenderPass::draw_indexed_primitives(v15, v26, 4, **(*v15 + 16) + 136, 4uLL, a3, *a2, a2[1]);
    *(&v15[25] + 4) = 0;
    *(&v15[26] + 4) = 0;
    *(&v15[27] + 4) = 0;
  }

  return result;
}

void sub_195E06ACC(_Unwind_Exception *a1)
{
  *(v1 + 208) = 0;
  *(v1 + 204) = 0;
  _Unwind_Resume(a1);
}

char *RB::vector<std::pair<RB::objc_ptr<RBSymbolAnimator *>,RB::objc_ptr<objc_object  {objcproto24RBSymbolAnimatorObserver}*>>,4ul,unsigned long>::~vector(char *a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  if (*(a1 + 9))
  {
    v4 = 0;
    v5 = (v3 + 8);
    do
    {

      ++v4;
      v5 += 2;
    }

    while (v4 < *(a1 + 9));
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_195E07DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  RB::Symbol::Presentation::~Presentation(va);
  _Unwind_Resume(a1);
}

void sub_195E07FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double RBSymbolUpdateBoundingRect(RB::Symbol::Presentation *a1)
{
  v1 = RB::Symbol::Presentation::bounding_rect(a1);
  v2.i32[0] = 0;
  v4 = vmvn_s8(vceqz_f32(v3));
  *v5.i8 = vpmin_u32(v4, v4);
  *&result = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v2, v5), 0), vcvtq_f64_f32(*&v1), *MEMORY[0x1E695F050]).u64[0];
  return result;
}

uint64_t RBSymbolUpdateGroupSize(uint64_t a1, int a2)
{
  v2 = a1 + 8;
  if (*(a1 + 1000))
  {
    v2 = *(a1 + 1000);
  }

  v3 = v2 + 496 * (*(a1 + 1008) + ~a2);
  v4 = *(v3 + 472);
  if (v4)
  {
    return *(v4 + 8);
  }

  else
  {
    return *(v3 + 448);
  }
}

float RBSymbolUpdateLayerColor(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
}

float RBSymbolUpdateLayerDrawingOpacity(uint64_t a1)
{
  v1 = *(*a1 + 1000);
  if (!v1)
  {
    v1 = *a1 + 8;
  }

  v2 = v1 + 496 * (*(*a1 + 1008) + ~*(a1 + 8));
  v3 = *(a1 + 16);
  v4 = *(v2 + 472);
  if (!v4)
  {
    goto LABEL_6;
  }

  v3 = (*v4 + 8 * v3);
  v5 = v3[1];
  result = 0.0;
  if (!v5)
  {
    return result;
  }

  LODWORD(v3) = *v3;
  if (v5 != 1)
  {
    v9 = v2 + 8;
    v10 = *(v2 + 440);
    if (!v10)
    {
      v10 = v9;
    }

    while (((*(v10 + 144 * v3 + 32) * *(v10 + 144 * v3 + 40)) * *(*(v10 + 144 * v3) + 76)) <= 0.0)
    {
      LODWORD(v3) = v3 + 1;
      if (!--v5)
      {
        return result;
      }
    }

    return 1.0;
  }

  else
  {
LABEL_6:
    v7 = v2 + 8;
    v8 = *(v2 + 440);
    if (v8)
    {
      v7 = v8;
    }

    return (*(v7 + 144 * v3 + 32) * *(v7 + 144 * v3 + 40)) * *(*(v7 + 144 * v3) + 76);
  }
}

float RBSymbolUpdateLayerErasingOpacity(uint64_t a1)
{
  v1 = *(*a1 + 1000);
  if (!v1)
  {
    v1 = *a1 + 8;
  }

  v2 = v1 + 496 * (*(*a1 + 1008) + ~*(a1 + 8));
  v3 = *(a1 + 16);
  v4 = *(v2 + 472);
  if (!v4)
  {
    goto LABEL_6;
  }

  v3 = (*v4 + 8 * v3);
  v5 = v3[1];
  result = 0.0;
  if (!v5)
  {
    return result;
  }

  LODWORD(v3) = *v3;
  if (v5 != 1)
  {
    v10 = v2 + 8;
    v11 = *(v2 + 440);
    if (!v11)
    {
      v11 = v10;
    }

    while (1)
    {
      v12 = (v11 + 144 * v3);
      if (*(*v12 + 104))
      {
        v13 = *(*v12 + 76) <= 0.0 ? v12[10] * v12[9] : v12[10];
        if (v13 > 0.0)
        {
          break;
        }
      }

      LODWORD(v3) = v3 + 1;
      if (!--v5)
      {
        return result;
      }
    }

    return 1.0;
  }

  else
  {
LABEL_6:
    v7 = v2 + 8;
    v8 = *(v2 + 440);
    if (v8)
    {
      v7 = v8;
    }

    v9 = (v7 + 144 * v3);
    result = 0.0;
    if (*(*v9 + 104))
    {
      if (*(*v9 + 76) <= 0.0)
      {
        return v9[10] * v9[9];
      }

      else
      {
        return v9[10];
      }
    }
  }

  return result;
}

uint64_t RBSymbolUpdateLayerDefaultColor(__int128 *a1)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  if ((*(*v1 + 104) & 0x3C0000) == 0x240000)
  {
    return *(*v1 + 16);
  }

  else
  {
    return 0;
  }
}

float RBSymbolUpdateLayerModelColor(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
}

uint64_t RBSymbolUpdateLayerModelFill(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
}

double RBSymbolUpdateLayerGetGradientAxis(__int128 *a1)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  return RB::Symbol::Glyph::Layer::gradient_axis(*v1);
}

double RBSymbolUpdateLayerFillRect(__int128 *a1)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  v3 = *(*a1 + 1000);
  if (!v3)
  {
    v3 = *a1 + 8;
  }

  return RB::Symbol::Presentation::Layer::fill_rect(v2, (v3 + 496 * (*(*a1 + 1008) + ~*(a1 + 2)))).f32[0];
}

void RBSymbolUpdateLayerFillTransform(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  *&v5 = RB::Symbol::Presentation::Layer::transform(v4, *a1, 0);
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
}

void sub_195E086E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit((a10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      RBSymbolUpdateLayerPath_cold_2();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RBSymbolUpdateLayerClip(uint64_t a1, _RBDrawingState *a2, int a3, char a4, float a5)
{
  v7 = *a1;
  v8 = *a1 + 8;
  if (*(*a1 + 1000))
  {
    v8 = *(*a1 + 1000);
  }

  v9 = v8 + 496 * (*(*a1 + 1008) + ~*(a1 + 8));
  v10 = *(a1 + 16);
  v11 = *(v9 + 472);
  if (v11)
  {
    v12 = (*v11 + 8 * v10);
    LODWORD(v10) = *v12;
    v42 = v12[1];
    v44 = v42 > 1;
  }

  else
  {
    v44 = 0;
    v42 = 1;
  }

  v53 = *(a2 + 21);
  if (a4)
  {
    v13 = v10 + v42;
    v14 = *(v9 + 448);
    if (v13 < v14)
    {
      v15 = 144 * v13 + 72;
      do
      {
        if (*(v9 + 440))
        {
          v16 = *(v9 + 440);
        }

        else
        {
          v16 = v9 + 8;
        }

        v17 = (v16 + v15 - 72);
        if (*(*v17 + 104))
        {
          v18 = v16 + v15;
          v19 = *(*v17 + 76) <= 0.0 ? *(v18 - 32) * *(v18 - 36) : *(v18 - 32);
          if (v19 > 0.0)
          {
            RB::Symbol::Presentation::Layer::set_animation_layer((v16 + v15 - 72), a2, v9);
            v20 = *(v9 + 456);
            v21 = *(v16 + v15 - 16);
            v48 = *(v16 + v15);
            v49 = v20;
            v50 = v21;
            v51 = v19;
            v52 = *(v16 + v15 - 28);
            v22 = *v17;
            v23.f64[0] = RB::Symbol::Presentation::Layer::transform(v17, v7, 0);
            v45 = v23;
            v46 = v24;
            v47 = v25;
            RB::Symbol::Glyph::Layer::clip(v22, a2, 1, &v48, &v45, v7);
            v14 = *(v9 + 448);
          }
        }

        ++v13;
        v15 += 144;
      }

      while (v13 < v14);
    }
  }

  v26 = a2;
  if (v42 >= 2)
  {
    v26 = RBDrawingStateBeginLayer(a2, 0);
  }

  if (v10 < v10 + v42)
  {
    v27 = 144 * v10 + 72;
    v28 = v42;
    do
    {
      v29 = *(v9 + 440);
      if (!v29)
      {
        v29 = v9 + 8;
      }

      v30 = (v29 + v27);
      v31 = (v29 + v27 - 72);
      v32 = a5;
      if (v44)
      {
        v33 = 0.0;
        if (*(*v31 + 104))
        {
          v34 = v29 + v27;
          if (*(*v31 + 76) <= 0.0)
          {
            v33 = *(v34 - 32) * *(v34 - 36);
          }

          else
          {
            v33 = *(v34 - 32);
          }
        }

        v32 = v33 * a5;
      }

      v35.f64[0] = RB::Symbol::Presentation::Layer::transform(v31, v7, 0);
      v45 = v35;
      v46 = v36;
      v47 = v37;
      RB::Symbol::Presentation::Layer::set_animation_layer(v31, v26, v9);
      v38 = *(v9 + 456);
      v39 = v30[-2].i32[0];
      v48 = *v30;
      v49 = v38;
      v50 = v39;
      v51 = v32;
      v52 = v30[-4].i32[1];
      v40 = *v31;
      if (v26 == a2)
      {
        RB::Symbol::Glyph::Layer::clip(v40, a2, a3, &v48, &v45, v7);
      }

      else
      {
        RB::Symbol::Glyph::Layer::draw(v40, v26, 0, &v48, &v45, v7, 1.0, 1.0, 1.0, 1.0);
      }

      v27 += 144;
      --v28;
    }

    while (v28);
  }

  if (v42 > 1)
  {
    RBDrawingStateClipLayer(a2, v26, a3, 1.0);
  }

  return RB::DisplayList::State::set_animation_layer(a2, &v53);
}

void std::default_delete<RB::Symbol::Animation::Timing>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 24);
    if (v2)
    {
      free(v2);
    }

    JUMPOUT(0x19A8C09E0);
  }
}

void *RB::vector<objc_object  {objcproto24RBSymbolAnimatorObserver}*,2ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 7) + (*(__dst + 7) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 7) + (*(__dst + 7) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,8ul>(*(__dst + 2), __dst, 2u, __dst + 7, v3);
  *(__dst + 2) = result;
  return result;
}

void *RB::vector<std::pair<RB::objc_ptr<RBSymbolAnimator *>,RB::objc_ptr<objc_object  {objcproto24RBSymbolAnimatorObserver}*>>,4ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 10) + (*(__dst + 10) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 10) + (*(__dst + 10) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,16ul>(*(__dst + 8), __dst, 4uLL, __dst + 10, v3);
  *(__dst + 8) = result;
  return result;
}

void *std::pair<RB::objc_ptr<RBSymbolAnimator *>,RB::objc_ptr<objc_object  {objcproto24RBSymbolAnimatorObserver}*>>::pair[abi:nn200100](void *a1, id *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1;
}

void RB::ColorStyle::ColorMultiply::color_matrix(void *a1, void *a2, unsigned __int16 a3, char a4, float32_t a5)
{
  v11[0] = *a1;
  *(v11 + 6) = *(a1 + 6);
  v8 = RB::color_flags_space(a4, a3);
  if ((v8 & 0x100) != 0)
  {
    v9.f32[0] = a5;
    RB::Fill::Color::convert(v11, v8, v9);
  }

  v10 = v11[0];
  if ((a4 & 4) != 0)
  {
    v10.i16[2] = WORD2(v11[0]);
    v10.i16[3] = COERCE_UNSIGNED_INT(1.0);
    v10 = vmul_n_f16(v10, *(v11 + 3));
  }

  RB::ColorMatrix::set_color(a2, *&v10);
}

BOOL RB::ColorStyle::ColorMultiply::test(uint64_t a1, int a2, int a3)
{
  result = 1;
  if (a2 > 3)
  {
    if ((a2 - 4) >= 4)
    {
      return result;
    }

    return 0;
  }

  switch(a2)
  {
    case 0:
      return 0;
    case 1:
      if (a3 < 0)
      {
        return result;
      }

      _ZF = *(a1 + 6) == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
      break;
    case 2:
      __asm { FCMP            H0, #0 }

      break;
    default:
      return result;
  }

  return _ZF;
}

void RB::ColorStyle::ColorMultiply::mix(RB::ColorStyle::ColorMultiply *this, const RB::ColorStyle::ColorMultiply *a2, float32x4_t a3)
{
  if (a2)
  {
    *v3 = *a2;
    *&v3[6] = *(a2 + 6);
  }

  else
  {
    *v3 = 0x3C003C003C003C00;
    *&v3[12] = 0;
    *&v3[8] = 0;
  }

  RB::Fill::Color::mix(this, v3, 0, a3);
}

void *RB::ColorStyle::ColorMultiply::encode(RB::ColorStyle::ColorMultiply *this, RB::Encoder *a2)
{
  RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::Fill::Color::encode(this, a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

BOOL RB::ColorStyle::ColorMultiply::decode_field(RB::Fill::Color *a1, RB::ProtobufDecoder *this, uint64_t a3)
{
  v3 = a3 & 0x7FFFFFFF8;
  if ((a3 & 0x7FFFFFFF8) == 8)
  {
    if ((a3 & 7) == 2)
    {
      RB::ProtobufDecoder::begin_message(this);
      RB::Fill::Color::decode(a1, this);
      RB::ProtobufDecoder::end_message(this);
    }

    else
    {
      *(this + 56) = 1;
      *this = *(this + 1);
    }
  }

  return v3 == 8;
}

void RB::ColorStyle::ColorMultiply::print(RB::ColorStyle::ColorMultiply *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "color-multiply");
  RB::Fill::Color::print(this, a2);

  RB::SexpString::pop(a2);
}

uint64_t RB::ColorStyle::AlphaMultiply::color_matrix(void *a1, uint64_t a2, unsigned __int16 a3, char a4, float32_t a5)
{
  v13[0] = *a1;
  *(v13 + 6) = *(a1 + 6);
  v8 = RB::color_flags_space(a4, a3);
  if ((v8 & 0x100) != 0)
  {
    v9.f32[0] = a5;
    RB::Fill::Color::convert(v13, v8, v9);
  }

  v11 = v13[0];
  if ((a4 & 4) != 0)
  {
    v11.i16[2] = WORD2(v13[0]);
    v11.i16[3] = COERCE_UNSIGNED_INT(1.0);
    v10 = *(v13 + 6);
    v11 = vmul_n_f16(v11, *(v13 + 3));
  }

  return RB::ColorMatrix::set_alpha_multiply(a2, (a4 & 4) != 0, v11, v10);
}

BOOL RB::ColorStyle::AlphaMultiply::test(uint64_t a1, unsigned int a2, int a3)
{
  result = 1;
  if (a2 <= 7)
  {
    if (((1 << a2) & 0xE9) != 0)
    {
      return 0;
    }

    if (a2 == 1)
    {
      if (a3 < 0)
      {
        return result;
      }

      return *(a1 + 6) == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
    }

    else
    {
      if (a2 != 2)
      {
        return result;
      }

      __asm { FCMP            H0, #0 }
    }

    return _ZF;
  }

  return result;
}

void RB::ColorStyle::AlphaMultiply::mix(RB::ColorStyle::AlphaMultiply *this, const RB::ColorStyle::AlphaMultiply *a2, float32x4_t a3)
{
  if (a2)
  {
    v3[0] = *a2;
    *(v3 + 6) = *(a2 + 6);
    RB::Fill::Color::mix(this, v3, 0, a3);
  }
}

void RB::ColorStyle::AlphaMultiply::print(RB::ColorStyle::AlphaMultiply *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "alpha-multiply");
  RB::Fill::Color::print(this, a2);

  RB::SexpString::pop(a2);
}

BOOL RB::ColorStyle::HueRotation::test(float *a1, int a2)
{
  if ((a2 - 2) < 6)
  {
    return 0;
  }

  if (a2)
  {
    return 1;
  }

  return *a1 == 0.0;
}

float RB::ColorStyle::HueRotation::mix(float *a1, float *a2, float a3)
{
  if (a2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 0.0;
  }

  result = *a1 + ((v3 - *a1) * a3);
  *a1 = result;
  return result;
}

int *RB::ColorStyle::HueRotation::encode(int *this, RB::Encoder *a2)
{
  v2 = *this;
  if (*this != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0xDuLL);

    return RB::ProtobufEncoder::encode_fixed32(a2, v2);
  }

  return this;
}

BOOL RB::ColorStyle::HueRotation::decode_field(float *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 & 0x7FFFFFFF8;
  if ((a3 & 0x7FFFFFFF8) == 8)
  {
    *a1 = RB::ProtobufDecoder::float_field(a2, a3);
  }

  return v3 == 8;
}

void RB::ColorStyle::HueRotation::print(RB::ColorStyle::HueRotation *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "hue-rotation");
  RB::SexpString::printf(a2, 0, "(angle %g deg)", *this * 57.2957795);

  RB::SexpString::pop(a2);
}

float RB::ColorStyle::Saturation::mix(float *a1, float *a2, float a3)
{
  if (a2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 1.0;
  }

  result = *a1 + ((v3 - *a1) * a3);
  *a1 = result;
  return result;
}

int *RB::ColorStyle::Saturation::encode(int *this, RB::Encoder *a2)
{
  v2 = *this;
  if (*this != 1.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0xDuLL);

    return RB::ProtobufEncoder::encode_fixed32(a2, v2);
  }

  return this;
}

void RB::ColorStyle::Saturation::print(RB::ColorStyle::Saturation *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "saturation");
  RB::SexpString::printf(a2, 0, "(amount %g)", *this);

  RB::SexpString::pop(a2);
}

void RB::ColorStyle::Brightness::print(RB::ColorStyle::Brightness *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "brightness");
  RB::SexpString::printf(a2, 0, "(amount %g)", *this);

  RB::SexpString::pop(a2);
}

void RB::ColorStyle::Contrast::print(RB::ColorStyle::Contrast *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "contrast");
  RB::SexpString::printf(a2, 0, "(amount %g)", *this);

  RB::SexpString::pop(a2);
}

void RB::ColorStyle::LuminanceToAlpha::print(RB::ColorStyle::LuminanceToAlpha *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "luminance-to-alpha");

  RB::SexpString::pop(a2);
}

void RB::ColorStyle::ColorMonochrome::color_matrix(uint64_t a1, void *a2, unsigned __int16 a3, char a4, float32_t a5)
{
  v12[0] = *a1;
  *(v12 + 6) = *(a1 + 6);
  v9 = RB::color_flags_space(a4, a3);
  if ((v9 & 0x100) != 0)
  {
    v10.f32[0] = a5;
    *v10.i64 = RB::Fill::Color::convert(v12, v9, v10);
  }

  v11 = v12[0];
  if ((a4 & 4) != 0)
  {
    v11.i16[2] = WORD2(v12[0]);
    v11.i16[3] = COERCE_UNSIGNED_INT(1.0);
    v10.i32[1] = *(&v12[1] + 2);
    v11 = vmul_n_f16(v11, *(v12 + 3));
  }

  v10.i32[0] = *(a1 + 16);
  RB::ColorMatrix::set_color_monochrome(a2, *v10.i64, v11, *(a1 + 20));
}

BOOL RB::ColorStyle::ColorMonochrome::test(uint64_t a1, int a2)
{
  result = 1;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1 || *(a1 + 16) == 0.0)
      {
        return result;
      }

      return *(a1 + 6) == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
    }

    else
    {
      return *(a1 + 16) == 0.0;
    }
  }

  if ((a2 - 2) < 4 || a2 == 7)
  {
    return 0;
  }

  return result;
}

float32_t RB::ColorStyle::ColorMonochrome::mix(float32x2_t *this, float32x2_t *a2, float32x4_t a3)
{
  if (a2)
  {
    v6 = a3.f32[0];
    RB::Fill::Color::mix(this, a2, 0, a3);
    *a3.f32 = vmla_n_f32(this[2], vsub_f32(a2[2], this[2]), v6);
    this[2] = *a3.f32;
  }

  else
  {
    a3.f32[0] = this[2].f32[0] - (this[2].f32[0] * a3.f32[0]);
    this[2].i32[0] = a3.i32[0];
  }

  return a3.f32[0];
}

short float *RB::ColorStyle::ColorMonochrome::encode(short float *this, RB::Encoder *a2)
{
  v3 = this;
  v4 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
  if (*this != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
  {
    goto LABEL_8;
  }

  if (this[1] != v4)
  {
    goto LABEL_8;
  }

  if (this[2] != v4)
  {
    goto LABEL_8;
  }

  if (this[3] != v4)
  {
    goto LABEL_8;
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    goto LABEL_8;
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
LABEL_8:
    RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::Fill::Color::encode(v3, a2);
    this = RB::ProtobufEncoder::end_length_delimited(a2);
  }

  v11 = *(v3 + 4);
  if (*&v11 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x15uLL);
    this = RB::ProtobufEncoder::encode_fixed32(a2, v11);
  }

  v12 = *(v3 + 5);
  if (*&v12 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x1DuLL);

    return RB::ProtobufEncoder::encode_fixed32(a2, v12);
  }

  return this;
}

uint64_t RB::ColorStyle::ColorMonochrome::decode_field(float *a1, RB::ProtobufDecoder *this, unint64_t a3)
{
  v5 = a3 >> 3;
  if ((a3 >> 3) == 3)
  {
    a1[5] = RB::ProtobufDecoder::float_field(this, a3);
    return 1;
  }

  if (v5 == 2)
  {
    a1[4] = RB::ProtobufDecoder::float_field(this, a3);
    return 1;
  }

  if (v5 != 1)
  {
    return 0;
  }

  if ((a3 & 7) == 2)
  {
    RB::ProtobufDecoder::begin_message(this);
    RB::Fill::Color::decode(a1, this);
    RB::ProtobufDecoder::end_message(this);
    return 1;
  }

  result = 1;
  *(this + 56) = 1;
  *this = *(this + 1);
  return result;
}

void RB::ColorStyle::ColorMonochrome::print(RB::ColorStyle::ColorMonochrome *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "color-monochrome");
  RB::SexpString::printf(a2, 0, "(amount %g)", *(this + 4));
  v4 = *(this + 5);
  if (v4 != 0.0)
  {
    RB::SexpString::printf(a2, 0, "(bias %g)", v4);
  }

  RB::Fill::Color::print(this, a2);

  RB::SexpString::pop(a2);
}

BOOL RB::ColorStyle::ColorInvert::test(float *a1, int a2)
{
  result = 1;
  if (a2 > 5)
  {
    if (a2 == 6)
    {
      return *a1 != 0.0;
    }

    if (a2 == 7)
    {
      return 0;
    }
  }

  else
  {
    if ((a2 - 2) < 4)
    {
      return 0;
    }

    if (!a2)
    {
      return *a1 == 0.0;
    }
  }

  return result;
}

void RB::ColorStyle::ColorInvert::print(RB::ColorStyle::ColorInvert *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "color-invert");
  RB::SexpString::printf(a2, 0, "(amount %g)", *this);

  RB::SexpString::pop(a2);
}

uint64_t RB::ColorStyle::Matrix::test@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W8>)
{
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        v12 = vmvn_s8(vceqz_f16(*(a1 + 32)));
        v12.i16[0] = vmaxv_u16(v12);
        a4 = (v12.i32[0] >> 15) & 1;
      }

      else if (a2 == 7)
      {
        __asm { FCMP            H0, #0 }

        if (_ZF)
        {
          LOBYTE(a4) = 0;
        }

        else
        {
          LOBYTE(a4) = 1;
        }
      }

      return a4 & 1;
    }

    if (a2 == 4)
    {

      return RB::ColorMatrix::is_alpha_multiply(a1, (a3 & 4) != 0);
    }

    else
    {

      return RB::ColorMatrix::is_alpha_color_dependent(a1);
    }
  }

  else if (a2 > 1)
  {
    if (a2 == 2)
    {

      return RB::ColorMatrix::is_alpha_zero(a1);
    }

    else
    {

      return RB::ColorMatrix::is_diagonal(a1);
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if ((a3 & 0x80000000) == 0)
        {

          return RB::ColorMatrix::is_alpha_identity(a1);
        }

        v16 = v4;
        v17 = v5;
        v13 = *(a1 + 16);
        v14[0] = *a1;
        v14[1] = v13;
        v15 = *(a1 + 32);
        RB::ColorMatrix::remove_alpha_factor(v14, (a3 & 4) != 0);
        LOBYTE(a4) = RB::ColorMatrix::is_alpha_identity(v14);
      }

      return a4 & 1;
    }

    return RB::ColorMatrix::is_identity(a1);
  }
}

void RB::ColorStyle::Matrix::print(float16x4_t *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "color-matrix");
  RB::ColorMatrix::print(this, a2);

  RB::SexpString::pop(a2);
}

uint64_t RB::Filter::NarrowBlurKernel::max_kernel_15(RB::Filter::NarrowBlurKernel *this)
{
  {
    RB::Filter::NarrowBlurKernel::max_kernel_15(void)::$_0::operator()();
  }

  return RB::Filter::NarrowBlurKernel::max_kernel_15(void)::kernel;
}

uint64_t RB::Filter::GaussianBlur::append(float32x2_t *a1, int a2, float32x2_t *a3)
{
  if (a2 != 5 || a1[3].i32[0] != a3[3].i32[0])
  {
    return 0;
  }

  *a1 = vsqrt_f32(vmla_f32(vmul_f32(*a3, *a3), *a1, *a1));
  return 1;
}

uint64_t RB::Filter::GaussianBlur::can_mix(float32x2_t *this, RB::DisplayList::Interpolator::Contents *a2, float32x2_t *a3)
{
  if (a3)
  {
    if (this[3].i32[0] == a3[3].i32[0])
    {
      v3 = vceq_f32(*this, *a3);
      if ((vpmin_u32(v3, v3).u32[0] & 0x80000000) != 0 && (v4 = vand_s8(vceq_f32(this[2], a3[2]), vceq_f32(this[1], a3[1])), (vpmin_u32(v4, v4).u32[0] & 0x80000000) != 0))
      {
        v5 = 4;
      }

      else
      {
        v5 = 1;
      }

      v6 = this[4];
      v7 = a3[4];
      if (v6)
      {
        if (v7)
        {
          v11[1] = 0;
          v11[2] = 0;
          v11[0] = 0xFFFFFFF000000000;
          v12 = 0;
          v13 = 1;
          v14 = 0;
          (*(**&v6 + 200))(v6, a2, v11);
          type = RB::DisplayList::Interpolator::Op::get_type(v11);
          if (type >= v5)
          {
            return v5;
          }

          else
          {
            return type;
          }
        }
      }

      else if (!*&v7)
      {
        return v5;
      }
    }

    return 0;
  }

  v9 = vceqz_f32(*this);
  if (vpmin_u32(v9, v9).i32[0] >= 0)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

float32x2_t RB::Filter::GaussianBlur::mix(RB::Filter::GaussianBlur *this, const State *a2, float32x2_t *a3, const RB::DisplayList::CachedTransform *a4)
{
  v20[12] = *MEMORY[0x1E69E9840];
  v6 = *this;
  if (a3)
  {
    result = vmla_n_f32(*&v6, vsub_f32(*a3, *&v6), COERCE_FLOAT(*&a2->var0));
    *this = *&result;
    if (*(this + 25))
    {
      *&result = RB::mix(*(this + 8), *(this + 16), a3[1], a3[2], *&a2->var0);
      *(this + 1) = *&result;
      *(this + 2) = v10;
    }

    if (*(this + 4) && *&a3[4])
    {
      v11 = *a4;
      v14[0] = xmmword_195E42760;
      v14[1] = xmmword_195E42770;
      v15 = 0;
      v16 = 0;
      RB::DisplayList::CachedTransform::CachedTransform(v17, v11, v14, 0, 0);
      v12 = (*(**(this + 4) + 208))(*(this + 4), a2, *&a3[4], v17);
      v13 = *(this + 4);
      *(this + 4) = v12;
      if (v13)
      {
        (**v13)(v13);
      }

      RB::UntypedTable::~UntypedTable(v20);
      RB::UntypedTable::~UntypedTable(&v19);
      RB::Heap::~Heap(&v18);
    }
  }

  else
  {
    result = vmls_lane_f32(*&v6, *&v6, *&a2->var0, 0);
    *this = *&result;
  }

  return result;
}

void sub_195E09E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  RB::DisplayList::CachedTransform::~CachedTransform(va);
  _Unwind_Resume(a1);
}

void RB::Filter::GaussianBlur::render_variable(uint64_t a1, uint64_t a2, RB::RenderPass *a3, int32x2_t a4)
{
  v114 = *MEMORY[0x1E69E9840];
  v6 = vaddv_f32(*a1) * 0.305;
  if (v6 >= 0.5)
  {
    v10 = *(a3 + 168);
    v11 = *(a3 + 176);
    v12 = vcvt_f32_s32(v11);
    v13 = *(a1 + 24);
    if ((v13 & 0x100) != 0)
    {
      *v112 = *(a1 + 8);
      v15.i32[1] = HIDWORD(v112[0]);
      v16 = vsub_s32(a4, v10);
      v15.f32[0] = v16.i32[0];
      RB::Rect::translate(v112, v15, v16.i32[1]);
      v14 = vmaxnm_f32(v112[0], 0);
      v12 = vminnm_f32(v12, vadd_f32(v112[1], v112[0]));
      v13 = *(a1 + 24);
    }

    else
    {
      v14 = 0;
    }

    v17 = 17;
    if ((v13 & 4) == 0)
    {
      v17 = 0;
    }

    if ((v13 & 2) != 0)
    {
      v18 = 257;
    }

    else
    {
      v18 = v17 | ((v13 & 4) << 6);
    }

    RB::RenderPass::WorkingSpace::WorkingSpace(v112, a3, v18, v13 & 1, 0);
    v19.n128_u64[0] = vsub_s32((*&vshr_n_s32(vadd_s32(vadd_s32(v10, v11), 0x7F0000007FLL), 1uLL) & 0xFFFFFFC0FFFFFFC0), (*&vshr_n_s32(vadd_s32(v10, 0x7E0000007ELL), 1uLL) & 0xFFFFFFC0FFFFFFC0));
    v91 = v19;
    v21 = vcvtms_u32_f32(log2f(v6)) + 2;
    v22 = v91.n128_u32[1];
    if (v91.n128_i32[1] <= v91.n128_i32[0])
    {
      v22 = v91.n128_u32[0];
    }

    v23 = 32 - __clz(v22);
    if (v23 >= v21)
    {
      v24 = v21;
    }

    else
    {
      v24 = v23;
    }

    v25 = *(a3 + 2);
    v26 = RB::pixel_format_traits(v25, v20);
    if (v26[8])
    {
      v27 = v26[8];
    }

    else
    {
      v27 = v25;
    }

    RB::RenderFrame::alloc_texture(*(*a3 + 16), v27, v24, v113, 1, 1, &v109, v91);
    if (v109)
    {
      RB::RenderFrame::flush_pass(*(*a3 + 16), a3, 1);
      v29 = v112[1];
      v30 = v112[0];
      if (v112[1])
      {
        v31 = v112[1];
      }

      else
      {
        v31 = v112[0];
      }

      v32 = vcvt_f32_s32(v10);
      v89 = v32;
      if (v24)
      {
        v86 = a4;
        v87 = v6;
        v88 = v10;
        v4.i32[0] = 0;
        v33 = 0;
        v34 = *(v31 + 1);
        v35 = v34[8];
        v36 = v12;
        __asm { FMOV            V1.4S, #0.25 }

        v90 = _Q1;
        v42 = v32;
        v43 = v14;
        do
        {
          RB::RenderPass::RenderPass(&v96, *a3, v109, v33, 1, 9, 0);
          v44 = vshl_s32(vadd_s32(*(v109 + 64), vdup_n_s32(~(-1 << v33))), vneg_s32(vdup_n_s32(v33)));
          v45.n128_u64[0] = vmin_s32(vadd_s32(v44, 0x100000001), v44);
          v103 = 0;
          v104 = v45.n128_u64[0];
          RB::RenderPass::set_extra_attachments(&v96, MTLPixelFormatInvalid, v45);
          RB::Coverage::set_plane(v92, &v96, v46);
          v47 = vcvt_f32_s32(v35);
          v48 = vrecpe_f32(v47);
          v49 = vmul_f32(vrecps_f32(v47, v48), v48);
          v50 = vmul_f32(v49, vrecps_f32(v47, v49));
          *&v92[28] = vadd_f32(v50, v50);
          *&v92[36] = vmul_f32(v50, v42);
          *&v92[44] = vmul_f32(v50, vadd_f32(vadd_f32(v43, v42), 0x3F0000003F000000));
          *&v92[52] = vmul_f32(v50, vadd_f32(vadd_f32(v36, v42), 0xBF000000BF000000));
          HIDWORD(v95) = v33 - (v33 != 0);
          *&v92[60] = COERCE_UNSIGNED_INT(-v50.f32[0]);
          v51 = vneg_f32(v50);
          v51.i32[0] = 0;
          *&v92[68] = v51;
          *&v92[76] = v50.u32[0];
          v50.i32[0] = 0;
          *&v92[84] = v50;
          *&v94[12] = v90;
          if (*(a3 + 33) == 2)
          {
            v52 = 252313630;
          }

          else
          {
            v52 = 252182558;
          }

          RB::RenderFrame::alloc_buffer_region(*(v96 + 16), 0xA0, 4uLL, 0, &v110);
          v53 = v110;
          if (v110)
          {
            v54 = (*(v110 + 7) + v111.i64[0]);
            v55 = *v92;
            v54[1] = *&v92[16];
            v56 = *&v92[80];
            v58 = *&v92[32];
            v57 = *&v92[48];
            v54[4] = *&v92[64];
            v54[5] = v56;
            v54[2] = v58;
            v54[3] = v57;
            v59 = v95;
            v61 = v93;
            v60 = *v94;
            v54[8] = *&v94[16];
            v54[9] = v59;
            v54[6] = v61;
            v54[7] = v60;
            *v54 = v55;
          }

          else
          {
            v111 = 0uLL;
            v110 = 0;
          }

          v105 = RB::RenderFrame::buffer_id(*(v96 + 16), v53);
          v106 = vmovn_s64(v111);
          if (v33)
          {
            v62 = v109;
          }

          else
          {
            v62 = v34;
          }

          RB::RenderPass::set_texture(&v96, 0, v62, MTLPixelFormatInvalid);
          RB::RenderPass::draw_indexed_primitives(&v96, v52, 4, **(v96 + 16) + 136, 4uLL, 1uLL, 0xC0000001C0000001, 0x7FFFFFFF7FFFFFFFLL);
          v63.i32[0] = v33;
          v64 = vdup_lane_s32(vceq_s32(v63, v4), 0);
          v42 = vbsl_s8(v64, v14, vrndm_f32(vmul_f32(v42, 0x3F0000003F000000)));
          v35 = vbsl_s8(v64, v91.n128_u64[0], vshr_n_s32(vadd_s32(v35, 0x100000001), 1uLL));
          v43 = vrndm_f32(vmul_f32(v43, 0x3F0000003F000000));
          v36 = vrndp_f32(vmul_f32(v36, 0x3F0000003F000000));
          v107 = 0;
          v108 = 0;
          RB::RenderPass::~RenderPass(&v96);
          v33 = (v33 + 1);
        }

        while (v24 != v33);
        v29 = v112[1];
        v30 = v112[0];
        v10 = v88;
        v6 = v87;
        a4 = v86;
      }

      if (v29)
      {
        v65 = v29;
      }

      else
      {
        v65 = v30;
      }

      (*(**(a1 + 32) + 168))(*(a1 + 32), a2, v65, 0, 19, *&a4);
      if (v112[1])
      {
        v67 = v112[1];
      }

      else
      {
        v67 = v112[0];
      }

      RB::Coverage::set_plane(&v96, v67, v66);
      *&v97[12] = 0x3F0000003F000000;
      *&v97[20] = vmul_f32(v89, 0xBF000000BF000000);
      *&v97[28] = v14;
      *&v97[36] = v12;
      v68 = vcvt_f32_s32(*(v109 + 64));
      v69 = vrecpe_f32(v68);
      v70 = vmul_f32(vrecps_f32(v68, v69), v69);
      *&v97[44] = vmul_f32(v70, vrecps_f32(v68, v70));
      HIDWORD(v102) = 0;
      *(&v100 + 3) = v6;
      v71 = *(a1 + 24);
      if (v67[16].i32[1] == 2)
      {
        v72 = 131102;
      }

      else
      {
        v72 = 30;
      }

      RB::RenderFrame::alloc_buffer_region(*(*v67 + 16), 0xA0, 4uLL, 0, v92);
      v73 = *v92;
      if (*v92)
      {
        v74 = (*(*v92 + 56) + *&v92[8]);
        v75 = v96;
        v74[1] = *v97;
        v76 = v98;
        v78 = *&v97[16];
        v77 = *&v97[32];
        v74[4] = *&v97[48];
        v74[5] = v76;
        v74[2] = v78;
        v74[3] = v77;
        v79 = v102;
        v81 = v99;
        v80 = v100;
        v74[8] = v101;
        v74[9] = v79;
        v74[6] = v81;
        v74[7] = v80;
        *v74 = v75;
      }

      else
      {
        memset(v92, 0, 24);
      }

      v67[24].i32[0] = RB::RenderFrame::buffer_id(*(*v67 + 16), v73);
      *(v67 + 196) = vmovn_s64(*&v92[8]);
      RB::RenderPass::set_texture(v67, 0, v109, MTLPixelFormatInvalid);
      RB::RenderPass::draw_indexed_primitives(v67, ((v71 << 20) & 0x800000 | ((v71 & 1) << 22) | 0xF1C0000 | v72), 4, **(*v67 + 16) + 136, 4uLL, 1uLL, v10, v11);
      v67[30].i32[0] = 0;
      v67[30].i8[4] = 0;
      RB::Texture::make_aliasable(v109);
    }

    v82 = RB::RenderPass::WorkingSpace::commit(v112, v28);
    v83 = v109;
    if (v109)
    {
      v84 = *(v109 + 2) - 1;
      *(v109 + 2) = v84;
      if (!v84)
      {
        (*(*v83 + 8))(v83, v82);
      }
    }

    v85 = v112[1];
    v112[1] = 0;
    if (v85)
    {
      RB::RenderPass::~RenderPass(v85);
    }
  }
}

void sub_195E0A528(_Unwind_Exception *a1)
{
  *(v1 + 240) = 0;
  *(v1 + 244) = 0;
  v3 = STACK[0x210];
  if (STACK[0x210])
  {
    v4 = v3[2] - 1;
    v3[2] = v4;
    if (!v4)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v5 = STACK[0x238];
  STACK[0x238] = 0;
  if (v5)
  {
    RB::RenderPass::~RenderPass(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t RB::Filter::GaussianBlur::prepare_encode(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 232))();
  }

  return result;
}

void *RB::Filter::GaussianBlur::encode(void *this, RB::Encoder *a2)
{
  v3 = this;
  if (COERCE_FLOAT(*this) != 0.0)
  {
    v10 = *this;
    RB::ProtobufEncoder::encode_varint(a2, 0xDuLL);
    this = RB::ProtobufEncoder::encode_fixed32(a2, v10);
  }

  v4 = *(v3 + 6);
  if ((v4 & 0x100) != 0)
  {
    this = RB::ProtobufEncoder::float4_field(a2, 2, *(v3 + 1));
    v4 = *(v3 + 6);
    if ((v4 & 1) == 0)
    {
LABEL_5:
      if ((v4 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_5;
  }

  RB::ProtobufEncoder::encode_varint(a2, 0x18uLL);
  this = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  v4 = *(v3 + 6);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);
  this = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  v4 = *(v3 + 6);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_22:
  RB::ProtobufEncoder::encode_varint(a2, 0x28uLL);
  this = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  if ((v3[3] & 8) != 0)
  {
LABEL_8:
    RB::ProtobufEncoder::encode_varint(a2, 0x30uLL);
    this = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

LABEL_9:
  v5 = v3[4];
  if (v5)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x3AuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    (*(*v5 + 240))(v5, a2);
    this = RB::ProtobufEncoder::end_length_delimited(a2);
  }

  v6 = (*(v3 + 6) >> 4) & 3;
  if (v6)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x40uLL);
    this = RB::ProtobufEncoder::encode_varint(a2, v6);
  }

  v7 = *v3;
  LODWORD(v8) = HIDWORD(*v3);
  if (COERCE_FLOAT(*v3) != v8)
  {
    *&v9 = v8 / *&v7;
    if ((v8 / *&v7) != 0.0)
    {
      RB::ProtobufEncoder::encode_varint(a2, 0x4DuLL);

      return RB::ProtobufEncoder::encode_fixed32(a2, v9);
    }
  }

  return this;
}

float RB::Filter::GaussianBlur::decode(RB::Filter::GaussianBlur *this, RB::Decoder *a2)
{
  field = RB::ProtobufDecoder::next_field(a2);
  if (field)
  {
    v5 = field;
    v6 = 1.0;
    v18 = 0.0;
    while (1)
    {
      v7 = v5 >> 3;
      if ((v5 >> 3) <= 4)
      {
        if (v7 > 2)
        {
          if (v7 != 3)
          {
            if (v7 != 4)
            {
              goto LABEL_40;
            }

            *(this + 6) &= ~2u;
            if (RB::ProtobufDecoder::BOOL_field(a2, v5))
            {
              v10 = 2;
            }

            else
            {
              v10 = 0;
            }

            goto LABEL_34;
          }

          *(this + 6) &= ~1u;
          v9 = *(this + 6) | RB::ProtobufDecoder::BOOL_field(a2, v5);
LABEL_35:
          *(this + 6) = v9;
          goto LABEL_36;
        }

        if (v7 != 1)
        {
          if (v7 != 2)
          {
            goto LABEL_40;
          }

          v8 = RB::ProtobufDecoder::float4_field(a2, v5);
          if ((vmaxvq_u32(vmvnq_s8(vceqzq_f32(v8))) & 0x80000000) != 0)
          {
            *(this + 8) = v8;
            v9 = *(this + 6) | 0x100;
          }

          else
          {
            v9 = *(this + 6) & 0xFFFFFEFF;
          }

          goto LABEL_35;
        }

        v18 = RB::ProtobufDecoder::float_field(a2, v5);
      }

      else
      {
        if (v7 <= 6)
        {
          if (v7 == 5)
          {
            *(this + 6) &= ~4u;
            if (RB::ProtobufDecoder::BOOL_field(a2, v5))
            {
              v10 = 4;
            }

            else
            {
              v10 = 0;
            }
          }

          else
          {
            if (v7 != 6)
            {
LABEL_40:
              RB::ProtobufDecoder::skip_field(a2, v5);
              goto LABEL_36;
            }

            *(this + 6) &= ~8u;
            if (RB::ProtobufDecoder::BOOL_field(a2, v5))
            {
              v10 = 8;
            }

            else
            {
              v10 = 0;
            }
          }

LABEL_34:
          v9 = *(this + 6) | v10;
          goto LABEL_35;
        }

        if (v7 == 7)
        {
          if ((v5 & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(a2);
            v12 = RB::DisplayList::Item::decode(a2, v11);
            if (v12)
            {
              v13 = v12;
              v14 = *(this + 4);
              *(this + 4) = v13;
              if (v14)
              {
                (**v14)(v14);
              }
            }

            RB::ProtobufDecoder::end_message(a2);
          }

          else
          {
            *(a2 + 56) = 1;
            *a2 = *(a2 + 1);
          }

          goto LABEL_36;
        }

        if (v7 == 8)
        {
          *(this + 6) &= 0xFFFFFFCF;
          v15 = RB::ProtobufDecoder::uint_field(a2, v5);
          if (v15 > 3)
          {
            goto LABEL_36;
          }

          v9 = *(this + 6) | (16 * v15);
          goto LABEL_35;
        }

        if (v7 != 9)
        {
          goto LABEL_40;
        }

        v6 = RB::ProtobufDecoder::float_field(a2, v5);
      }

LABEL_36:
      v5 = RB::ProtobufDecoder::next_field(a2);
      if (!v5)
      {
        goto LABEL_44;
      }
    }
  }

  v18 = 0.0;
  v6 = 1.0;
LABEL_44:
  *&v16 = v18;
  result = v18 * v6;
  *(&v16 + 1) = v18 * v6;
  *this = v16;
  return result;
}

void RB::Filter::GaussianBlur::print(RB::Filter::GaussianBlur *this, RB::SexpString *a2, uint64_t a3)
{
  if (*(this + 4))
  {
    v6 = "variable-blur";
  }

  else
  {
    v6 = "blur";
  }

  RB::SexpString::push(a2, v6);
  v7 = *(this + 6);
  if ((v7 & 2) != 0)
  {
    v8 = "linear";
  }

  else
  {
    if ((v7 & 4) == 0)
    {
      goto LABEL_9;
    }

    v8 = "non-linear";
  }

  RB::SexpString::print(a2, 0, v8);
LABEL_9:
  v9 = *(this + 6);
  if ((v9 & 1) == 0)
  {
    if ((v9 & 8) == 0)
    {
      goto LABEL_11;
    }

LABEL_20:
    RB::SexpString::print(a2, 0, "dither");
    if ((*(this + 6) & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  RB::SexpString::print(a2, 0, "opaque");
  v9 = *(this + 6);
  if ((v9 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  if ((v9 & 0x100) != 0)
  {
LABEL_12:
    RB::SexpString::printf(a2, 1, "(bounds %g %g %g %g)", COERCE_FLOAT(*(this + 1)), COERCE_FLOAT(HIDWORD(*(this + 1))), COERCE_FLOAT(*(this + 2)), COERCE_FLOAT(HIDWORD(*(this + 2))));
  }

LABEL_13:
  RB::SexpString::printf(a2, 1, "(radius %g %g)", COERCE_FLOAT(*this), COERCE_FLOAT(HIDWORD(*this)));
  if ((a3 & 1) == 0 && *(this + 4))
  {
    v10 = RB::SexpString::push(a2, "variable-mask");
    (*(**(this + 4) + 248))(*(this + 4), a2, a3, v10);
    RB::SexpString::pop(a2);
  }

  RB::SexpString::pop(a2);
}

double RB::GeometryStyle::Rotation::mix(float32x2_t *this, const RB::GeometryStyle::Rotation *a2, double result)
{
  v3 = *this;
  if (a2)
  {
    *this = v3 + (*a2 - v3) * *&result;
    this[1] = vmla_n_f32(this[1], vsub_f32(*(a2 + 8), this[1]), *&result);
  }

  else
  {
    result = v3 - v3 * *&result;
    *this = result;
  }

  return result;
}

void *RB::GeometryStyle::Rotation::encode(RB::GeometryStyle::Rotation *this, RB::Encoder *a2)
{
  v4 = *this;
  if (*this != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 9uLL);
    RB::ProtobufEncoder::encode_fixed64(a2, v4);
  }

  v5 = *(this + 1);

  return RB::ProtobufEncoder::float2_field(a2, 2, v5);
}

unint64_t RB::GeometryStyle::Rotation::decode(RB::GeometryStyle::Rotation *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v6 = result;
    do
    {
      if ((v6 >> 3) == 2)
      {
        *(this + 1) = RB::ProtobufDecoder::float2_field(a2, v6, v5).n128_u64[0];
      }

      else if ((v6 >> 3) == 1)
      {
        *this = RB::ProtobufDecoder::double_field(a2, v6);
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

void RB::GeometryStyle::Rotation::print(RB::GeometryStyle::Rotation *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "rotation");
  RB::SexpString::printf(a2, 0, "(angle %g)", *this);
  RB::SexpString::printf(a2, 0, "(anchor %g %g)", COERCE_FLOAT(*(this + 1)), COERCE_FLOAT(HIDWORD(*(this + 1))));

  RB::SexpString::pop(a2);
}

double RB::GeometryStyle::Scale::set_affine_transform(float32x2_t *this, float64x2_t *a2)
{
  v2 = this[1];
  v3.f64[0] = 0.0;
  *&v4 = COERCE_FLOAT(*this);
  v3.f64[1] = COERCE_FLOAT(HIDWORD(*this));
  result = -v2.f32[0];
  *a2 = v4;
  a2[1] = v3;
  a2[2] = vmlaq_n_f64(vmlaq_n_f64(vcvtq_f64_f32(v2), v3, -v2.f32[1]), v4, result);
  return result;
}

float32x2_t *RB::GeometryStyle::Scale::mix(float32x2_t *this, float32x2_t *a2, float a3)
{
  v3 = *this;
  if (a2)
  {
    *this = vmla_n_f32(v3, vsub_f32(*a2, v3), a3);
    this[1] = vmla_n_f32(this[1], vsub_f32(a2[1], this[1]), a3);
  }

  else
  {
    __asm { FMOV            V2.2S, #1.0 }

    *this = vmla_n_f32(v3, vsub_f32(_D2, v3), a3);
  }

  return this;
}

void *RB::GeometryStyle::Scale::encode(RB::GeometryStyle::Scale *this, RB::Encoder *a2)
{
  RB::ProtobufEncoder::float2_field(a2, 1, *this);
  v4 = *(this + 1);

  return RB::ProtobufEncoder::float2_field(a2, 2, v4);
}

unint64_t RB::GeometryStyle::Scale::decode(RB::GeometryStyle::Scale *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v6 = result;
    do
    {
      if ((v6 >> 3) == 2)
      {
        *(this + 1) = RB::ProtobufDecoder::float2_field(a2, v6, v5).n128_u64[0];
      }

      else if ((v6 >> 3) == 1)
      {
        *this = RB::ProtobufDecoder::float2_field(a2, v6, v5).n128_u64[0];
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

void RB::GeometryStyle::Scale::print(RB::GeometryStyle::Scale *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "scale");
  RB::SexpString::printf(a2, 0, "(scale %g %g)", COERCE_FLOAT(*this), COERCE_FLOAT(HIDWORD(*this)));
  RB::SexpString::printf(a2, 0, "(anchor %g %g)", COERCE_FLOAT(*(this + 1)), COERCE_FLOAT(HIDWORD(*(this + 1))));

  RB::SexpString::pop(a2);
}

float64x2_t RB::GeometryStyle::Translation::set_affine_transform(float32x2_t *this, RB::AffineTransform *a2)
{
  result = vcvtq_f64_f32(*this);
  *a2 = xmmword_195E42760;
  *(a2 + 1) = xmmword_195E42770;
  *(a2 + 2) = result;
  return result;
}

float32x2_t *RB::GeometryStyle::Translation::mix(float32x2_t *this, float32x2_t *a2, float a3)
{
  if (a2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 0;
  }

  *this = vmla_n_f32(*this, vsub_f32(v3, *this), a3);
  return this;
}

uint64_t RB::GeometryStyle::Translation::decode(RB::GeometryStyle::Translation *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v6 = result;
    do
    {
      if ((v6 & 0x7FFFFFFF8) == 8)
      {
        *this = RB::ProtobufDecoder::float2_field(a2, v6, v5).n128_u64[0];
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

BOOL RB::GeometryStyle::Rotation3D::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 48) == *(a2 + 48) && (v2 = vandq_s8(vceqq_f32(*(a1 + 32), *(a2 + 32)), vceqq_f32(*(a1 + 16), *(a2 + 16))), v2.i32[3] = v2.i32[2], (vminvq_u32(v2) & 0x80000000) != 0))
  {
    return *(a1 + 52) == *(a2 + 52);
  }

  else
  {
    return 0;
  }
}

double RB::GeometryStyle::Rotation3D::set_projection_matrix(RB::GeometryStyle::Rotation3D *this, float32x4_t *a2)
{
  v4 = *(MEMORY[0x1E69792E8] + 80);
  v32[4] = *(MEMORY[0x1E69792E8] + 64);
  v33 = v4;
  v5 = *(MEMORY[0x1E69792E8] + 112);
  v34 = *(MEMORY[0x1E69792E8] + 96);
  v35 = v5;
  v6 = *(MEMORY[0x1E69792E8] + 16);
  v32[0] = *MEMORY[0x1E69792E8];
  v32[1] = v6;
  v7 = *(MEMORY[0x1E69792E8] + 48);
  v32[2] = *(MEMORY[0x1E69792E8] + 32);
  v32[3] = v7;
  *(&v33 + 1) = (-1.0 / *(this + 12));
  CATransform3DMakeTranslation_(MEMORY[0x1E69792E8], COERCE_FLOAT(*(this + 2)), COERCE_FLOAT(HIDWORD(*(this + 4))), COERCE_FLOAT(*(this + 5)));
  MEMORY[0x19A8BED80](&v31, v32, &v31);
  CATransform3DRotate_(v8, &v31, *this, COERCE_FLOAT(*(this + 1)), COERCE_FLOAT(HIDWORD(*(this + 2))), COERCE_FLOAT(*(this + 3)));
  CATransform3DTranslate_(v9, &v31, -COERCE_FLOAT(*(this + 2)), -COERCE_FLOAT(HIDWORD(*(this + 4))), -COERCE_FLOAT(*(this + 5)));
  v16 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v31.m11), *&v31.m14);
  v13.f64[0] = v31.m22;
  v14.i64[0] = *&v31.m44;
  v13.f64[1] = v31.m24;
  v15 = vcvt_hight_f32_f64(vcvt_f32_f64(v13), *&v31.m41);
  *a2 = v16;
  a2[1] = v15;
  *v16.i32 = *v14.i64;
  a2[2].i32[0] = v16.i32[0];
  v16.i32[0] = *(this + 13);
  if ((v16.i32[0] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v30 = 0x3F80000000000000;
    v28 = 1065353216;
    v27 = xmmword_195E47750;
    v29 = v16.i32[0];
    *v17.i32 = RB::operator*(&v27, a2, v24, v16, v14, v10, v11, v12);
    RB::operator*(v24, &v27, v25, v17, v18, v19, v20, v21);
    v16.i64[0] = v25[0].i64[0];
    v22 = v25[1];
    *a2 = v25[0];
    a2[1] = v22;
    a2[2].i32[0] = v26;
  }

  return *v16.i64;
}

double RB::GeometryStyle::Rotation3D::mix(RB::GeometryStyle::Rotation3D *this, float32x4_t *a2, double result)
{
  v3 = *this;
  if (a2)
  {
    *this = v3 + (*a2->i64 - v3) * *&result;
    v4 = *(this + 2);
    *(this + 1) = vmlaq_n_f32(*(this + 1), vsubq_f32(a2[1], *(this + 1)), *&result);
    *(this + 2) = vmlaq_n_f32(v4, vsubq_f32(a2[2], v4), *&result);
    v5 = *(this + 13);
    *(this + 12) = *(this + 12) + ((a2[3].f32[0] - *(this + 12)) * *&result);
    if ((LODWORD(v5) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      *&result = v5 + ((a2[3].f32[1] - v5) * *&result);
      *(this + 13) = LODWORD(result);
    }
  }

  else
  {
    result = v3 - v3 * *&result;
    *this = result;
  }

  return result;
}

void *RB::GeometryStyle::Rotation3D::encode(float32x4_t *this, RB::Encoder *a2)
{
  v4 = this->i64[0];
  if (*this->i64 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 9uLL);
    RB::ProtobufEncoder::encode_fixed64(a2, v4);
  }

  RB::ProtobufEncoder::float3_field(a2, 2, this[1]);
  result = RB::ProtobufEncoder::float3_field(a2, 3, this[2]);
  v6 = this[3].i32[0];
  if (*&v6 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x25uLL);
    result = RB::ProtobufEncoder::encode_fixed32(a2, v6);
  }

  v7 = this[3].i32[1];
  if (*&v7 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x2DuLL);

    return RB::ProtobufEncoder::encode_fixed32(a2, v7);
  }

  return result;
}

unint64_t RB::GeometryStyle::Rotation3D::decode(__n128 *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) <= 2)
      {
        if (v6 == 1)
        {
          this->n128_f64[0] = RB::ProtobufDecoder::double_field(a2, v5);
        }

        else
        {
          if (v6 != 2)
          {
LABEL_14:
            RB::ProtobufDecoder::skip_field(a2, v5);
            goto LABEL_15;
          }

          this[1] = RB::ProtobufDecoder::float3_field(a2, v5);
        }
      }

      else
      {
        switch(v6)
        {
          case 3:
            this[2] = RB::ProtobufDecoder::float3_field(a2, v5);
            break;
          case 4:
            this[3].n128_f32[0] = RB::ProtobufDecoder::float_field(a2, v5);
            break;
          case 5:
            this[3].n128_f32[1] = RB::ProtobufDecoder::float_field(a2, v5);
            break;
          default:
            goto LABEL_14;
        }
      }

LABEL_15:
      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void RB::GeometryStyle::Rotation3D::print(RB::GeometryStyle::Rotation3D *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "rotation3d");
  RB::SexpString::printf(a2, 0, "(angle %g)", *this);
  RB::SexpString::printf(a2, 0, "(axis %g %g %g)", COERCE_FLOAT(*(this + 1)), COERCE_FLOAT(HIDWORD(*(this + 2))), COERCE_FLOAT(*(this + 3)));
  RB::SexpString::printf(a2, 0, "(anchor %g %g %g)", COERCE_FLOAT(*(this + 2)), COERCE_FLOAT(HIDWORD(*(this + 4))), COERCE_FLOAT(*(this + 5)));
  RB::SexpString::printf(a2, 0, "(perspective %g)", *(this + 12));
  if ((*(this + 13) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    RB::SexpString::printf(a2, 0, "(flip-width %g)", *(this + 13));
  }

  RB::SexpString::pop(a2);
}

CGAffineTransform *RB::GeometryStyle::Affine::mix(CGAffineTransform *this, uint64_t a2, const RB::AffineTransform *a3, float a4)
{
  if (a2)
  {
    v5 = *(a2 + 16);
    v10 = *a2;
    v11 = v5;
    v12 = *(a2 + 32);
  }

  else
  {
    v10 = xmmword_195E42760;
    v11 = xmmword_195E42770;
    v12 = 0uLL;
  }

  result = RB::mix(this, &v10, a3, a4);
  *&this->a = v7;
  *&this->c = v8;
  *&this->tx = v9;
  return result;
}

float32_t RB::GeometryStyle::Projection::mix(float32x4_t *a1, float32x4_t *a2, float a3)
{
  if (a2)
  {

    return RB::ProjectionMatrix::mix(a1, a2, a3);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7 = 1065353216;
    v6[0] = xmmword_195E428C0;
    v6[1] = xmmword_195E428C0;
    return RB::ProjectionMatrix::mix(a1, v6, a3);
  }
}

void RB::DisplayList::LayerTask::print_items(RB::DisplayList::LayerTask *this, RB::SexpString *a2)
{
  if (*(this + 20))
  {
    v4 = RB::SexpString::push(a2, "items");
    for (i = *(this + 20); i; i = *i)
    {
      (*(*i[1] + 248))(i[1], a2, 1, v4);
    }

    RB::SexpString::pop(a2);
  }

  if (*(this + 21))
  {
    v6 = RB::SexpString::push(a2, "filters");
    for (j = *(this + 21); j; j = j[1])
    {
      (*(*j + 120))(j, a2, 1, v6);
    }

    RB::SexpString::pop(a2);
  }
}

uint64_t RB::vector<RB::refcounted_ptr<RB::RenderTask>,32ul,unsigned int>::~vector(uint64_t a1)
{
  v2 = *(a1 + 256);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  if (*(a1 + 264))
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        v6 = v5[2] - 1;
        v5[2] = v6;
        if (!v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      ++v4;
    }

    while (v4 < *(a1 + 264));
    v2 = *(a1 + 256);
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

uint64_t RB::vector<RB::refcounted_ptr<RB::DisplayList::RenderState::RootTexture>,8ul,unsigned int>::~vector(uint64_t a1)
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
      if (v5)
      {
        v6 = v5[2] - 1;
        v5[2] = v6;
        if (!v6)
        {
          (*(*v5 + 8))(v5);
        }
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

uint64_t RB::DisplayList::Item::prepare_task(uint64_t a1, MTLPixelFormat a2)
{
  result = (*(*a1 + 160))(a1);
  if ((*(a1 + 46) & 0xC0) == 0x40)
  {
    v5 = *(a2 + 1456);
    v6 = *(a1 + 48);
    v13 = v5[2];
    v12[0] = 0;
    v12[1] = 0;
    v11 = 0;
    result = RB::DisplayList::Layer::compute_roi(v6, 0, &v13, v12, &v11, v5 + 1, v13);
    if (result)
    {
      v8 = v5->n128_i64[1];
      RB::DisplayList::Layer::make_task(v6, a2, v12, v11, 0, 0, &v10, v13.n128_f64[0], v13.n128_f64[1], *(v8 + 128), v7);
      RB::DisplayList::LayerTask::add_task(v8, a2, a1, 0, &v10);
      result = v10;
      if (v10)
      {
        v9 = *(v10 + 8) - 1;
        *(v10 + 8) = v9;
        if (!v9)
        {
          return (*(*result + 8))(result);
        }
      }
    }
  }

  return result;
}

void sub_195E0BB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    RB::DisplayList::Item::prepare_task(a9);
  }

  _Unwind_Resume(exception_object);
}

int32x2_t *RB::DisplayList::BackdropColorMatrixItem::render(uint64_t a1, uint64_t a2, int32x2_t *a3, int a4, int a5)
{
  v5 = a4;
  v6 = a3;
  v15[3] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 48);
  if (!v7)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    v7 = v15;
    v15[0] = 0;
    v15[1] = 0;
  }

  _H0 = *(a1 + 44);
  __asm { FCVT            S0, H0 }

  return RB::Filter::ColorMatrix::render(v7, v6, *(a2 + 1072), a5, v5, _S0);
}

unsigned __int8 *RB::DisplayList::CustomItem::render(uint64_t a1, double a2, uint64_t a3, int32x2_t *a4, int a5, char a6)
{
  v8 = 38;
  if (a4[16].i32[1] == 2)
  {
    v8 = 131110;
  }

  v9 = a6 & 0x3F;
  v10 = 0x10000;
  if (!a5)
  {
    v10 = 0;
  }

  v11 = v10 | v8;
  v12 = *(a1 + 56);
  v13.i64[0] = SLODWORD(a2);
  v13.i64[1] = SHIDWORD(a2);
  v14 = v12[1];
  v15 = vaddq_f64(v12[2], vcvtq_f64_s64(v13));
  v28[0] = *v12;
  v28[1] = v14;
  v28[2] = v15;
  v16 = RB::operator*(v28, *(a1 + 64), *(a1 + 72));
  RB::Bounds::Bounds(v27, v16, v17, v18, v19);
  _H2 = *(a1 + 44);
  __asm { FCVT            S2, H2 }

  return RB::RenderPass::draw_custom(a4, (v11 | (v9 << 32)), *(a1 + 48), v28, *(a1 + 80), v27[0], v27[1], _S2);
}

void RB::DisplayList::SpillItem::print(RB::DisplayList::SpillItem *this, RB::SexpString *a2, uint64_t a3)
{
  if (*(this + 64))
  {
    v6 = "spill";
  }

  else
  {
    v6 = "unspill";
  }

  RB::SexpString::push(a2, v6);
  RB::DisplayList::Item::print(this, a2, a3);
  if (*(this + 9))
  {
    v7 = RB::SexpString::push(a2, "filters");
    for (i = *(this + 9); i; i = i[1])
    {
      *(a2 + 40) = 1;
      (*(*i + 120))(i, a2, a3, v7);
    }

    RB::SexpString::pop(a2);
  }

  RB::SexpString::pop(a2);
}

void RB::DisplayList::RenderState::RootTexture::~RootTexture(id *this)
{

  RB::RenderTaskTexture::~RenderTaskTexture(this);
}

{

  RB::RenderTaskTexture::~RenderTaskTexture(this);

  JUMPOUT(0x19A8C09E0);
}

void RB::DisplayList::RenderState::PackedTexture::~PackedTexture(RB::DisplayList::RenderState::PackedTexture *this)
{
  RB::RenderTaskTexture::~RenderTaskTexture(this);

  JUMPOUT(0x19A8C09E0);
}

_DWORD *RB::Refcount<RB::RenderTask,unsigned int>::release(_DWORD *result)
{
  v1 = result[2] - 1;
  result[2] = v1;
  if (!v1)
  {
    return (*(*result + 8))();
  }

  return result;
}

void RB::DisplayList::LayerTask::~LayerTask(RB::DisplayList::LayerTask *this)
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

  v7 = *(this + 7);
  if (v7)
  {
    v8 = v7[2] - 1;
    v7[2] = v8;
    if (!v8)
    {
      (*(*v7 + 8))(v7);
    }
  }
}

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

  v7 = *(this + 7);
  if (v7)
  {
    v8 = v7[2] - 1;
    v7[2] = v8;
    if (!v8)
    {
      (*(*v7 + 8))(v7);
    }
  }

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,0>(a1, a2, a3);
  result = std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(a4, a3);
  if ((result & 0x80) != 0)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    v10 = a3[1];
    v11 = a3[2];
    v12 = a4[2];
    a3[1] = a4[1];
    a3[2] = v12;
    a4[1] = v10;
    a4[2] = v11;
    result = std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(a3, a2);
    if ((result & 0x80) != 0)
    {
      v13 = *a2;
      *a2 = *a3;
      *a3 = v13;
      v14 = a2[1];
      v15 = a2[2];
      v16 = a3[2];
      a2[1] = a3[1];
      a2[2] = v16;
      a3[1] = v14;
      a3[2] = v15;
      result = std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(a2, a1);
      if ((result & 0x80) != 0)
      {
        v17 = *a1;
        *a1 = *a2;
        *a2 = v17;
        v18 = a1[1];
        v19 = a1[2];
        v20 = a2[2];
        a1[1] = a2[1];
        a1[2] = v20;
        a2[1] = v18;
        a2[2] = v19;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,0>(a1, a2, a3, a4);
  result = std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(a5, a4);
  if ((result & 0x80) != 0)
  {
    v11 = *a4;
    *a4 = *a5;
    *a5 = v11;
    v12 = a4[1];
    v13 = a4[2];
    v14 = a5[2];
    a4[1] = a5[1];
    a4[2] = v14;
    a5[1] = v12;
    a5[2] = v13;
    result = std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(a4, a3);
    if ((result & 0x80) != 0)
    {
      v15 = *a3;
      *a3 = *a4;
      *a4 = v15;
      v16 = a3[1];
      v17 = a3[2];
      v18 = a4[2];
      a3[1] = a4[1];
      a3[2] = v18;
      a4[1] = v16;
      a4[2] = v17;
      result = std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(a3, a2);
      if ((result & 0x80) != 0)
      {
        v19 = *a2;
        *a2 = *a3;
        *a3 = v19;
        v20 = a2[1];
        v21 = a2[2];
        v22 = a3[2];
        a2[1] = a3[1];
        a2[2] = v22;
        a3[1] = v20;
        a3[2] = v21;
        result = std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(a2, a1);
        if ((result & 0x80) != 0)
        {
          v23 = *a1;
          *a1 = *a2;
          *a2 = v23;
          v24 = a1[1];
          v25 = a1[2];
          v26 = a2[2];
          a1[1] = a2[1];
          a1[2] = v26;
          a2[1] = v24;
          a2[2] = v25;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *>(uint64_t result, unint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 24);
    if ((result + 24) != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v4;
        result = std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(v4, v6);
        if ((result & 0x80) != 0)
        {
          v8 = *v7;
          v9 = v6[4];
          v10 = v6[5];
          v11 = v5;
          v12 = *v6;
          while (1)
          {
            v13 = (v3 + v11);
            v14 = *(v3 + v11 + 8);
            v15 = *(v3 + v11 + 16);
            v13[3] = v12;
            v13[4] = v14;
            v13[5] = v15;
            if (!v11)
            {
              v16 = v3;
              goto LABEL_14;
            }

            v16 = v6;
            v12 = *(v13 - 3);
            v17 = v8 < v12;
            if (v8 == v12)
            {
              v18 = *(v3 + v11 - 16);
              v19 = v9 == v18;
              v17 = v9 < v18;
              if (v19)
              {
                v20 = *(v3 + v11 - 8);
                v19 = v10 == v20;
                v17 = v10 < v20;
                if (v19)
                {
                  break;
                }
              }
            }

            v6 -= 3;
            v11 -= 24;
            if (!v17)
            {
              goto LABEL_14;
            }
          }

          v16 = (v3 + v11);
LABEL_14:
          *v16 = v8;
          v16[1] = v9;
          v16[2] = v10;
        }

        v4 = v7 + 3;
        v5 += 24;
        v6 = v7;
      }

      while (v7 + 3 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *>(uint64_t result, unint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 24);
    if ((result + 24) != a2)
    {
      v5 = (result + 8);
      do
      {
        v6 = v4;
        result = std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(v4, v3);
        if ((result & 0x80) != 0)
        {
          v7 = *v6;
          v8 = v3[4];
          v9 = v3[5];
          v10 = v5;
          v11 = *v3;
          do
          {
            v12 = v10;
            v13 = *v10;
            v14 = v10[1];
            v12[2] = v11;
            v12[3] = v13;
            v12[4] = v14;
            v11 = *(v12 - 4);
            v15 = v7 < v11;
            if (v7 == v11)
            {
              v16 = *(v12 - 3);
              v17 = v8 == v16;
              v15 = v8 < v16;
              if (v17)
              {
                v18 = *(v12 - 2);
                v17 = v9 == v18;
                v15 = v9 < v18;
                if (v17)
                {
                  break;
                }
              }
            }

            v10 = v12 - 3;
          }

          while (v15);
          *(v12 - 1) = v7;
          *v12 = v8;
          v12[1] = v9;
        }

        v4 = v6 + 3;
        v5 += 3;
        v3 = v6;
      }

      while (v6 + 3 != a2);
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,std::__less<void,void> &>(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a2 - 3);
  v6 = *a1 == v5;
  v7 = *a1 < v5;
  if (v6 && (v8 = *(a2 - 2), v6 = v3 == v8, v7 = v3 < v8, v6))
  {
    if (v4 < *(a2 - 1))
    {
LABEL_16:
      for (i = a1 + 3; ; i += 3)
      {
        v12 = v2 < *i;
        if (v2 == *i && (v13 = i[1], v6 = v3 == v13, v12 = v3 < v13, v6))
        {
          if (v4 < i[2])
          {
            goto LABEL_24;
          }
        }

        else if (v12)
        {
          goto LABEL_24;
        }
      }
    }
  }

  else if (v7)
  {
    goto LABEL_16;
  }

  for (i = a1 + 3; i < a2; i += 3)
  {
    v10 = v2 < *i;
    if (v2 == *i && (v11 = i[1], v6 = v3 == v11, v10 = v3 < v11, v6))
    {
      if (v4 < i[2])
      {
        break;
      }
    }

    else if (v10)
    {
      break;
    }
  }

LABEL_24:
  if (i < a2)
  {
    v14 = (a2 - 3);
    do
    {
      a2 = v14;
      v15 = v2 < *v14;
      if (v2 == *v14)
      {
        v16 = v14[1];
        v6 = v3 == v16;
        v15 = v3 < v16;
        if (v6)
        {
          v17 = v14[2];
          v6 = v4 == v17;
          v15 = v4 < v17;
          if (v6)
          {
            break;
          }
        }
      }

      v14 -= 3;
    }

    while (v15);
  }

  if (i < a2)
  {
    v18 = *i;
    v19 = *a2;
    do
    {
      *i = v19;
      *a2 = v18;
      v20 = i[1];
      v21 = i[2];
      v22 = a2[2];
      i[1] = a2[1];
      i[2] = v22;
      a2[1] = v20;
      a2[2] = v21;
      do
      {
        while (1)
        {
          v23 = i[3];
          i += 3;
          v18 = v23;
          v24 = v2 < v23;
          if (v2 != v23)
          {
            break;
          }

          v25 = i[1];
          v6 = v3 == v25;
          v24 = v3 < v25;
          if (!v6)
          {
            break;
          }

          if (v4 < i[2])
          {
            goto LABEL_40;
          }
        }
      }

      while (!v24);
LABEL_40:
      v26 = (a2 - 3);
      do
      {
        a2 = v26;
        v19 = *v26;
        v27 = v2 < *v26;
        if (v2 == *v26)
        {
          v28 = v26[1];
          v6 = v3 == v28;
          v27 = v3 < v28;
          if (v6)
          {
            v29 = v26[2];
            v6 = v4 == v29;
            v27 = v4 < v29;
            if (v6)
            {
              break;
            }
          }
        }

        v26 -= 3;
      }

      while (v27);
    }

    while (i < a2);
  }

  if (i - 3 != a1)
  {
    *a1 = *(i - 3);
    v30 = *(i - 1);
    a1[1] = *(i - 2);
    a1[2] = v30;
  }

  *(i - 3) = v2;
  *(i - 2) = v3;
  *(i - 1) = v4;
  return i;
}

unint64_t *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,std::__less<void,void> &>(unint64_t *a1, unint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  do
  {
    v6 = v2;
    v7 = a1 + v2;
    v8 = *(v7 + 3);
    v9 = v8 < v3;
    if (v8 == v3)
    {
      v10 = *(v7 + 4);
      v11 = v10 == v4;
      v9 = v10 < v4;
      if (v11)
      {
        v12 = *(a1 + v6 + 40);
        v11 = v12 == v5;
        v9 = v12 < v5;
        if (v11)
        {
          break;
        }
      }
    }

    v2 = v6 + 24;
  }

  while (v9);
  v13 = a1 + v6 + 24;
  if (v6)
  {
    do
    {
      while (1)
      {
        v14 = *(a2 - 3);
        a2 -= 3;
        v15 = v14 < v3;
        if (v14 != v3)
        {
          break;
        }

        v16 = a2[1];
        v11 = v16 == v4;
        v15 = v16 < v4;
        if (!v11)
        {
          break;
        }

        if (a2[2] < v5)
        {
          goto LABEL_27;
        }
      }
    }

    while (!v15);
  }

  else if (v13 < a2)
  {
    do
    {
      while (1)
      {
        v17 = *(a2 - 3);
        a2 -= 3;
        v18 = v17 < v3;
        if (v17 == v3)
        {
          v19 = a2[1];
          v11 = v19 == v4;
          v18 = v19 < v4;
          if (v11)
          {
            break;
          }
        }

        if (v13 >= a2 || v18)
        {
          goto LABEL_27;
        }
      }
    }

    while (a2[2] >= v5 && v13 < a2);
  }

LABEL_27:
  if (v13 >= a2)
  {
    v22 = v13;
  }

  else
  {
    v21 = *a2;
    v22 = v13;
    v23 = a2;
    do
    {
      *v22 = v21;
      *v23 = v8;
      v24 = v22[1];
      v25 = v22[2];
      v26 = v23[2];
      v22[1] = v23[1];
      v22[2] = v26;
      v23[1] = v24;
      v23[2] = v25;
      do
      {
        while (1)
        {
          v27 = v22[3];
          v22 += 3;
          v8 = v27;
          v28 = v27 < v3;
          if (v27 == v3)
          {
            v29 = v22[1];
            v11 = v29 == v4;
            v28 = v29 < v4;
            if (v11)
            {
              break;
            }
          }

          if (!v28)
          {
            goto LABEL_38;
          }
        }
      }

      while (v22[2] < v5);
      do
      {
LABEL_38:
        while (1)
        {
          v30 = *(v23 - 3);
          v23 -= 3;
          v21 = v30;
          v31 = v30 < v3;
          if (v30 == v3)
          {
            v32 = v23[1];
            v11 = v32 == v4;
            v31 = v32 < v4;
            if (v11)
            {
              break;
            }
          }

          if (v31)
          {
            goto LABEL_42;
          }
        }
      }

      while (v23[2] >= v5);
LABEL_42:
      ;
    }

    while (v22 < v23);
  }

  if (v22 - 3 != a1)
  {
    *a1 = *(v22 - 3);
    v33 = *(v22 - 1);
    a1[1] = *(v22 - 2);
    a1[2] = v33;
  }

  *(v22 - 3) = v3;
  *(v22 - 2) = v4;
  *(v22 - 1) = v5;
  return v22 - 3;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *>(uint64_t *a1, uint64_t *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        if ((std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(a2 - 3, a1) & 0x80) != 0)
        {
          v5 = *a1;
          *a1 = *(a2 - 3);
          *(a2 - 3) = v5;
          v6 = a1[1];
          v7 = a1[2];
          v8 = *(a2 - 1);
          a1[1] = *(a2 - 2);
          a1[2] = v8;
          *(a2 - 2) = v6;
          *(a2 - 1) = v7;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,0>(a1, a1 + 3, a2 - 3);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,0>(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
      return 1;
  }

LABEL_11:
  v9 = a1 + 6;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,0>(a1, a1 + 3, a1 + 6);
  v10 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    if ((std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(v10, v9) & 0x80) != 0)
    {
      v13 = *v10;
      v14 = v10[1];
      v15 = v10[2];
      v16 = v11;
      v17 = *v9;
      while (1)
      {
        v18 = (a1 + v16);
        v19 = *(a1 + v16 + 56);
        v20 = *(a1 + v16 + 64);
        v18[9] = v17;
        v18[10] = v19;
        v18[11] = v20;
        if (v16 == -48)
        {
          v21 = a1;
          goto LABEL_23;
        }

        v21 = v9;
        v17 = v18[3];
        v22 = v13 < v17;
        if (v13 == v17)
        {
          v23 = *(a1 + v16 + 32);
          v24 = v14 == v23;
          v22 = v14 < v23;
          if (v24)
          {
            v25 = *(a1 + v16 + 40);
            v24 = v15 == v25;
            v22 = v15 < v25;
            if (v24)
            {
              break;
            }
          }
        }

        v9 -= 3;
        v16 -= 24;
        if (!v22)
        {
          goto LABEL_23;
        }
      }

      v21 = (a1 + v16 + 48);
LABEL_23:
      *v21 = v13;
      v21[1] = v14;
      v21[2] = v15;
      if (++v12 == 8)
      {
        return v10 + 3 == a2;
      }
    }

    v9 = v10;
    v11 += 24;
    v10 += 3;
    if (v10 == a2)
    {
      return 1;
    }
  }
}

unint64_t *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[3 * v10];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *>(a1, a4, v9, v12);
        v12 -= 3;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if ((std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(v13, a1) & 0x80) != 0)
        {
          v14 = *v13;
          *v13 = *a1;
          *a1 = v14;
          v15 = v13[1];
          v16 = v13[2];
          v17 = a1[2];
          v13[1] = a1[1];
          v13[2] = v17;
          a1[1] = v15;
          a1[2] = v16;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *>(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v19 = a2 - 3;
      do
      {
        v21 = *a1;
        v20 = a1[1];
        v22 = a1[2];
        v23 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *>(a1, a4, v18);
        if (v19 == v23)
        {
          *v23 = v21;
          v23[1] = v20;
          v23[2] = v22;
        }

        else
        {
          *v23 = *v19;
          v24 = v19[2];
          v23[1] = v19[1];
          v23[2] = v24;
          *v19 = v21;
          v19[1] = v20;
          v19[2] = v22;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *>(a1, (v23 + 3), a4, 0xAAAAAAAAAAAAAAABLL * (v23 + 3 - a1));
        }

        v19 -= 3;
      }

      while (v18-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
    {
      v9 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
      v10 = (result + 24 * v9);
      v11 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
      if (v11 < a3 && (std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>((result + 24 * v9), v10 + 3) & 0x80u) != 0)
      {
        v10 += 3;
        v9 = v11;
      }

      result = std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(v10, a4);
      if ((result & 0x80) == 0)
      {
        v12 = *a4;
        v13 = a4[1];
        v22 = a4[2];
        *a4 = *v10;
        v14 = v10[2];
        a4[1] = v10[1];
        a4[2] = v14;
        if (v7 >= v9)
        {
          do
          {
            v16 = 2 * v9;
            v9 = (2 * v9) | 1;
            v15 = (v6 + 24 * v9);
            v17 = v16 + 2;
            if (v16 + 2 < a3)
            {
              result = std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>((v6 + 24 * v9), v15 + 3);
              if ((result & 0x80u) != 0)
              {
                v15 += 3;
                v9 = v17;
              }
            }

            v18 = *v15 < v12;
            if (*v15 == v12 && (v19 = v15[1], v20 = v19 == v13, v18 = v19 < v13, v20))
            {
              if (v15[2] < v22)
              {
                goto LABEL_8;
              }
            }

            else if (v18)
            {
              goto LABEL_8;
            }

            *v10 = *v15;
            v21 = v15[2];
            v10[1] = v15[1];
            v10[2] = v21;
            v10 = v15;
          }

          while (v7 >= v9);
        }

        else
        {
LABEL_8:
          v15 = v10;
        }

        *v15 = v12;
        v15[1] = v13;
        v15[2] = v22;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[3 * v5];
    v8 = v7 + 3;
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 < a3)
    {
      v11 = v7 + 6;
      if ((std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(v7 + 3, v7 + 6) & 0x80u) != 0)
      {
        v8 = v11;
        v9 = v10;
      }
    }

    *a1 = *v8;
    v12 = v8[2];
    a1[1] = v8[1];
    a1[2] = v12;
    a1 = v8;
    v5 = v9;
  }

  while (v9 <= v6);
  return v8;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = result;
    v6 = (a4 - 2) >> 1;
    v7 = (result + 24 * v6);
    v8 = (a2 - 24);
    result = std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(v7, (a2 - 24));
    if ((result & 0x80) != 0)
    {
      v9 = *(a2 - 24);
      v10 = *(a2 - 16);
      v11 = *(a2 - 8);
      v12 = *v7;
      do
      {
        v13 = v8;
        v8 = v7;
        *v13 = v12;
        v14 = v7[2];
        v13[1] = v7[1];
        v13[2] = v14;
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (v5 + 24 * v6);
        v12 = *v7;
        v15 = *v7 < v9;
        if (*v7 == v9)
        {
          v16 = v7[1];
          v17 = v16 == v10;
          v15 = v16 < v10;
          if (v17)
          {
            v18 = v7[2];
            v17 = v18 == v11;
            v15 = v18 < v11;
            if (v17)
            {
              break;
            }
          }
        }
      }

      while (v15);
      *v8 = v9;
      v8[1] = v10;
      v8[2] = v11;
    }
  }

  return result;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZNK2RB11DisplayList5Layer9make_taskERNS3_11RenderStateENS2_6BoundsERKS7_PS8_jfPKNS3_4ItemEPKDv4_fE3__0PNS_4pairISD_jEEEEbT1_SM_T0_(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *(a1 + 16);
      v6 = *a1;
      v7 = *(a2 - 16);
      if (v5 < *a1)
      {
        if (v7 >= v5)
        {
          *a1 = v5;
          *(a1 + 16) = v6;
          v29 = *(a1 + 8);
          *(a1 + 8) = *(a1 + 24);
          *(a1 + 24) = v29;
          v30 = *(a2 - 16);
          if (v30 < v6)
          {
            *(a1 + 16) = v30;
            *(a2 - 16) = v6;
            *(a1 + 24) = *(a2 - 8);
            *(a2 - 8) = v29;
          }

          return 1;
        }

        *a1 = v7;
        *(a2 - 16) = v6;
        goto LABEL_13;
      }

      if (v7 >= v5)
      {
        return 1;
      }

      *(a1 + 16) = v7;
      *(a2 - 16) = v5;
      v18 = *(a1 + 24);
      *(a1 + 24) = *(a2 - 8);
      *(a2 - 8) = v18;
      v19 = *(a1 + 16);
      v20 = *a1;
      if (v19 >= *a1)
      {
        return 1;
      }

      *a1 = v19;
      *(a1 + 16) = v20;
      v21 = *(a1 + 8);
      v22 = *(a1 + 24);
LABEL_52:
      *(a1 + 8) = v22;
      *(a1 + 24) = v21;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZNK2RB11DisplayList5Layer9make_taskERNS3_11RenderStateENS2_6BoundsERKS7_PS8_jfPKNS3_4ItemEPKDv4_fE3__0PNS_4pairISD_jEELi0EEEvT1_SM_SM_SM_SM_T0_(a1, (a1 + 16), (a1 + 32), (a1 + 48), (a2 - 16));
        return 1;
      }

      goto LABEL_14;
    }

    v14 = *(a1 + 16);
    v15 = *a1;
    v16 = *(a1 + 32);
    if (v14 >= *a1)
    {
      if (v16 < v14)
      {
        *(a1 + 16) = v16;
        *(a1 + 32) = v14;
        v26 = *(a1 + 24);
        v27 = *(a1 + 40);
        *(a1 + 24) = v27;
        *(a1 + 40) = v26;
        if (v16 < v15)
        {
          *a1 = v16;
          *(a1 + 16) = v15;
          v28 = *(a1 + 8);
          *(a1 + 8) = v27;
          *(a1 + 24) = v28;
        }

        goto LABEL_48;
      }
    }

    else
    {
      if (v16 < v14)
      {
        *a1 = v16;
        *(a1 + 32) = v15;
        v17 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 40);
LABEL_46:
        *(a1 + 40) = v17;
        v14 = v15;
        goto LABEL_48;
      }

      *a1 = v14;
      *(a1 + 16) = v15;
      v17 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 24) = v17;
      if (v16 < v15)
      {
        *(a1 + 16) = v16;
        *(a1 + 32) = v15;
        *(a1 + 24) = *(a1 + 40);
        goto LABEL_46;
      }
    }

    v14 = v16;
LABEL_48:
    v41 = *(a2 - 16);
    if (v41 >= v14)
    {
      return 1;
    }

    *(a1 + 32) = v41;
    *(a2 - 16) = v14;
    v42 = *(a1 + 40);
    *(a1 + 40) = *(a2 - 8);
    *(a2 - 8) = v42;
    v43 = *(a1 + 32);
    v44 = *(a1 + 16);
    if (v43 >= v44)
    {
      return 1;
    }

    *(a1 + 16) = v43;
    *(a1 + 32) = v44;
    v45 = *(a1 + 24);
    v22 = *(a1 + 40);
    *(a1 + 24) = v22;
    *(a1 + 40) = v45;
    v46 = *a1;
    if (v43 >= *a1)
    {
      return 1;
    }

    *a1 = v43;
    *(a1 + 16) = v46;
    v21 = *(a1 + 8);
    goto LABEL_52;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 16);
    v4 = *a1;
    if (v3 < *a1)
    {
      *a1 = v3;
      *(a2 - 16) = v4;
LABEL_13:
      v8 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 8);
      *(a2 - 8) = v8;
    }

    return 1;
  }

LABEL_14:
  v9 = (a1 + 32);
  v10 = *(a1 + 32);
  v11 = *(a1 + 16);
  v12 = *a1;
  if (v11 >= *a1)
  {
    if (v10 < v11)
    {
      *(a1 + 16) = v10;
      *(a1 + 32) = v11;
      v23 = *(a1 + 24);
      v24 = *(a1 + 40);
      *(a1 + 24) = v24;
      *(a1 + 40) = v23;
      if (v10 < v12)
      {
        *a1 = v10;
        *(a1 + 16) = v12;
        v25 = *(a1 + 8);
        *(a1 + 8) = v24;
        *(a1 + 24) = v25;
      }
    }
  }

  else if (v10 >= v11)
  {
    *a1 = v11;
    *(a1 + 16) = v12;
    v31 = *(a1 + 8);
    *(a1 + 8) = *(a1 + 24);
    *(a1 + 24) = v31;
    if (v10 < v12)
    {
      *(a1 + 16) = v10;
      *(a1 + 32) = v12;
      *(a1 + 24) = *(a1 + 40);
      *(a1 + 40) = v31;
    }
  }

  else
  {
    *a1 = v10;
    *(a1 + 32) = v12;
    v13 = *(a1 + 8);
    *(a1 + 8) = *(a1 + 40);
    *(a1 + 40) = v13;
  }

  v32 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = *v32;
    v36 = *v9;
    if (*v32 < *v9)
    {
      v37 = *(v32 + 8);
      v38 = v33;
      while (1)
      {
        v39 = a1 + v38;
        *(v39 + 48) = v36;
        *(v39 + 56) = *(a1 + v38 + 40);
        if (v38 == -32)
        {
          break;
        }

        v36 = *(v39 + 16);
        v38 -= 16;
        if (v35 >= v36)
        {
          v40 = a1 + v38 + 48;
          goto LABEL_41;
        }
      }

      v40 = a1;
LABEL_41:
      *v40 = v35;
      *(v40 + 8) = v37;
      if (++v34 == 8)
      {
        return v32 + 16 == a2;
      }
    }

    v9 = v32;
    v33 += 16;
    v32 += 16;
    if (v32 == a2)
    {
      return 1;
    }
  }
}

uint64_t RB::Refcount<RB::RenderTask,unsigned int>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t RB::vector<RB::DisplayList::RenderState::DetachedInfo,0ul,unsigned int>::~vector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 35;
    do
    {
      if (*v5)
      {
        free(*v5);
        v3 = *(a1 + 8);
      }

      ++v4;
      v5 += 42;
    }

    while (v4 < v3);
    v2 = *a1;
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

uint64_t RB::ProtobufEncoder::uuid_field(RB::ProtobufEncoder *this, uint64_t a2, const UUID *uu)
{
  result = uuid_is_null(uu);
  if (!result)
  {
    RB::ProtobufEncoder::encode_varint(this, (8 * a2) | 2);

    return RB::ProtobufEncoder::encode_data(this, uu, 0x10uLL);
  }

  return result;
}

unsigned int *RB::Identity::encode(unsigned int *this, RB::Encoder *a2)
{
  v2 = *this;
  if (v2)
  {
    v4 = this;
    RB::ProtobufEncoder::encode_varint(a2, 8uLL);
    RB::ProtobufEncoder::encode_varint(a2, v2);

    return RB::ProtobufEncoder::uuid_field(a2, 2, (v4 + 1));
  }

  return this;
}

__n128 RB::Identity::decode(RB::Identity *this, RB::Decoder *a2)
{
  field = RB::ProtobufDecoder::next_field(a2);
  if (!field)
  {
LABEL_12:
    result = *(a2 + 12);
    *(this + 4) = result;
    return result;
  }

  v5 = field;
  v6 = 0;
  do
  {
    while ((v5 >> 3) != 1)
    {
      if ((v5 >> 3) != 2)
      {
        RB::ProtobufDecoder::skip_field(a2, v5);
        goto LABEL_7;
      }

      RB::ProtobufDecoder::uuid_field(a2, v5, (this + 4));
      v5 = RB::ProtobufDecoder::next_field(a2);
      v6 = 1;
      if (!v5)
      {
        return result;
      }
    }

    *this = RB::ProtobufDecoder::uint_field(a2, v5);
LABEL_7:
    v5 = RB::ProtobufDecoder::next_field(a2);
  }

  while (v5);
  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

_DWORD *RB::TextIdentity::copy_atoms(RB::TextIdentity *this, RB::Heap *a2, unsigned int a3, unsigned int a4)
{
  v4 = *this >> 2;
  v5 = v4 >= a3;
  v6 = v4 - a3;
  if (v6 == 0 || !v5)
  {
    return 0;
  }

  v7 = v6 >= a4 ? a4 : v6;
  if (!v7)
  {
    return 0;
  }

  v10 = v7;
  v11 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = &v11[v10 + 1];
  if (v12 > *(a2 + 3))
  {
    v11 = RB::Heap::alloc_slow(a2, v10 * 4 + 4, 3);
  }

  else
  {
    *(a2 + 2) = v12;
  }

  *v11 = 4 * v7;
  memmove(v11 + 1, this + 4 * a3 + 4, 4 * v7);
  return v11;
}

void *RB::TextIdentity::encode(RB::TextIdentity *this, RB::Encoder *a2)
{
  result = RB::ProtobufEncoder::packed_uint32_field(a2, 1, this + 1, *this >> 2);
  v5 = *this;
  if (*this)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x10uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
    v5 = *this;
  }

  if ((v5 & 2) != 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x18uLL);

    return RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

  return result;
}

_DWORD *RB::TextIdentity::decode(size_t **this, RB::Decoder *a2)
{
  v3 = 0;
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = 0x10000000000;
  while (1)
  {
    field = RB::ProtobufDecoder::next_field(this);
    if (!field)
    {
      break;
    }

    v5 = field >> 3;
    if ((field >> 3) == 1)
    {
      v6 = RB::ProtobufDecoder::uint_field(this, field);
      v7 = v18;
      if (HIDWORD(v18) < (v18 + 1))
      {
        RB::vector<unsigned int,256ul,unsigned int>::reserve_slow(__dst, v18 + 1);
        v7 = v18;
      }

      v8 = v17;
      if (!v17)
      {
        v8 = __dst;
      }

      *&v8[4 * v7] = v6;
      LODWORD(v18) = v18 + 1;
    }

    else if (v5 == 2)
    {
      v3 |= RB::ProtobufDecoder::BOOL_field(this, field);
    }

    else if (v5 == 3)
    {
      if (RB::ProtobufDecoder::BOOL_field(this, field))
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      v3 |= v9;
    }

    else
    {
      RB::ProtobufDecoder::skip_field(this, field);
    }
  }

  v10 = v18;
  if (v18 | v3)
  {
    v12 = this[8];
    v13 = 4 * v18 + 4;
    v11 = ((v12[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v11 + v13 > v12[3])
    {
      v11 = RB::Heap::alloc_slow(v12, v13, 3);
    }

    else
    {
      v12[2] = v11 + v13;
    }

    *v11 = v3 & 3 | (4 * v10);
    if (v18)
    {
      if (v17)
      {
        v14 = v17;
      }

      else
      {
        v14 = __dst;
      }

      memmove(v11 + 1, v14, 4 * v18);
    }
  }

  else
  {
    v11 = 0;
  }

  if (v17)
  {
    free(v17);
  }

  return v11;
}

void sub_195E0D7E4(_Unwind_Exception *a1)
{
  if (STACK[0x408])
  {
    free(STACK[0x408]);
  }

  _Unwind_Resume(a1);
}

void RB::TextIdentity::print(RB::TextIdentity *this, RB::SexpString *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  RB::SexpString::push(a2, "text-identity");
  v4 = *this;
  if (*this)
  {
    RB::SexpString::print(a2, 0, "right-to-left");
    v4 = *this;
  }

  if ((v4 & 2) != 0)
  {
    RB::SexpString::print(a2, 0, "non-contiguous");
    v4 = *this;
  }

  if (v4 >= 4)
  {
    v5 = 0;
    memset(&v17, 0, sizeof(v17));
    v6 = this + 4;
    v7 = v4 >> 2;
    do
    {
      if (v5 + 1 >= v7)
      {
        goto LABEL_15;
      }

      v8 = v7;
      v9 = v5;
      v10 = v5 + 1;
      v11 = *&v6[4 * v5] + 1;
      v12 = (this + 4 * v5 + 8);
      while (1)
      {
        v13 = *v12++;
        if (v11 != v13)
        {
          break;
        }

        ++v10;
        ++v11;
        if (v8 == v10)
        {
          goto LABEL_13;
        }
      }

      LODWORD(v8) = v10;
LABEL_13:
      if (v8 <= v5 + 1)
      {
LABEL_15:
        snprintf_l(__s, 0x40uLL, 0, "%u", *&v6[4 * v5]);
      }

      else
      {
        v5 = v8 - 1;
        snprintf_l(__s, 0x40uLL, 0, "(%u . %u)", *&v6[4 * v9], *&v6[4 * (v8 - 1)]);
      }

      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v17.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::string::push_back(&v17, 32);
      }

      v15 = strlen(__s);
      std::string::append(&v17, __s, v15);
      ++v5;
      v7 = *this >> 2;
    }

    while (v5 < v7);
    v16 = v17.__r_.__value_.__r.__words[0];
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v17;
    }

    RB::SexpString::printf(a2, 0, "(char-indices %s)", v16);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  RB::SexpString::pop(a2);
}

void sub_195E0DA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *RB::AnimationLayer::encode(void *this, RB::Encoder *a2)
{
  v3 = this;
  v4 = *this;
  if (v4)
  {
    RB::ProtobufEncoder::encode_varint(a2, 8uLL);
    this = RB::ProtobufEncoder::encode_varint(a2, v4);
  }

  v5 = *(v3 + 1);
  if (v5 != 1)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x10uLL);

    return RB::ProtobufEncoder::encode_varint(a2, v5);
  }

  return this;
}

unint64_t RB::AnimationLayer::decode(RB::AnimationLayer *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      if ((v5 >> 3) == 2)
      {
        *(this + 1) = RB::ProtobufDecoder::uint_field(a2, v5);
      }

      else if ((v5 >> 3) == 1)
      {
        *this = RB::ProtobufDecoder::uint_field(a2, v5);
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

void *RB::vector<unsigned int,256ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 259) + (*(__dst + 259) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 259) + (*(__dst + 259) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,4ul>(*(__dst + 128), __dst, 0x100u, __dst + 259, v3);
  *(__dst + 128) = result;
  return result;
}

RB::Transition *RB::Transition::Transition(RB::Transition *this, const RB::Transition *a2)
{
  *(this + 2) = 1;
  *this = &unk_1F0A37220;
  v4 = *(a2 + 12);
  *(this + 5) = *(a2 + 5);
  *(this + 12) = v4;
  v5 = this + 24;
  *(this + 5) = 0;
  *(this + 6) = 0x400000000;
  if (*(a2 + 5))
  {
    v6 = *(a2 + 5);
  }

  else
  {
    v6 = (a2 + 24);
  }

  v7 = *(a2 + 12);
  v8 = v7;
  if (v7 >= 5)
  {
    RB::vector<RB::Symbol::Tag,4ul,unsigned int>::reserve_slow(this + 24, v7);
    v9 = *(this + 5);
    v10 = *(this + 12);
  }

  else
  {
    if (!v7)
    {
      v13 = 0;
      goto LABEL_13;
    }

    v9 = 0;
    v10 = 0;
  }

  if (!v9)
  {
    v9 = v5;
  }

  v11 = &v9[4 * v10];
  do
  {
    v12 = *v6++;
    *v11 = v12;
    v11 += 4;
    --v8;
  }

  while (v8);
  v13 = *(this + 12);
LABEL_13:
  *(this + 12) = v13 + v7;
  *(this + 10) = 0;
  *(this + 11) = 0x600000000;
  if (*(a2 + 10))
  {
    v14 = *(a2 + 10);
  }

  else
  {
    v14 = (a2 + 56);
  }

  v15 = *(a2 + 22);
  if (v15 >= 7)
  {
    RB::vector<RB::Animation::TermOrArg,6ul,unsigned int>::reserve_slow(this + 56, v15);
    v16 = *(this + 10);
    v17 = *(this + 22);
  }

  else
  {
    if (!v15)
    {
      v21 = 0;
      goto LABEL_25;
    }

    v16 = 0;
    v17 = 0;
  }

  if (!v16)
  {
    v16 = this + 56;
  }

  v18 = &v16[4 * v17];
  v19 = v15;
  do
  {
    v20 = *v14++;
    *v18 = v20;
    v18 += 4;
    --v19;
  }

  while (v19);
  v21 = *(this + 22);
LABEL_25:
  *(this + 22) = v21 + v15;
  return this;
}

void sub_195E0E03C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    free(v3);
  }

  v4 = *(v1 + 40);
  if (v4)
  {
    free(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RBUUIDInitFromNSUUID(void *a1)
{
  v2[2] = *MEMORY[0x1E69E9840];
  [a1 getUUIDBytes:v2];
  return v2[0];
}

uint64_t RB::Symbol::Animator::rendering_options(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  v2 = *(*&this[2]._os_unfair_lock_opaque + 105);
  os_unfair_lock_unlock(this);
  return v2;
}

uint64_t RB::Symbol::Animator::flips_rtl(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  v2 = (*(*&this[2]._os_unfair_lock_opaque + 104) >> 25) & 1;
  os_unfair_lock_unlock(this);
  return v2;
}

double RB::Symbol::Animator::transform(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  v2 = *(*&this[2]._os_unfair_lock_opaque + 80);
  os_unfair_lock_unlock(this);
  return v2;
}

BOOL RB::Symbol::Animator::set_transform(os_unfair_lock_s *this, const Transform *a2)
{
  os_unfair_lock_lock(this);
  v4 = vand_s8(vceq_f32(*(*&this[2]._os_unfair_lock_opaque + 88), *&a2->_terms._p[8]), vceq_f32(*(*&this[2]._os_unfair_lock_opaque + 80), *a2->_terms._p));
  v5 = vpmin_u32(v4, v4).u32[0];
  if ((v5 & 0x80000000) == 0)
  {
    RB::Symbol::Model::copy_on_write(&this[2]);
    *(*&this[2]._os_unfair_lock_opaque + 80) = *a2->_terms._p;
    ++this[15]._os_unfair_lock_opaque;
  }

  os_unfair_lock_unlock(this);
  return v5 >= 0;
}

float RB::Symbol::Animator::color(uint64_t a1, int a2)
{
  v3 = RB::Symbol::Model::style_color_index(a2);
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  if (v3 >= *(v4 + 32))
  {
    v5 = &RBColorNull;
  }

  else
  {
    v5 = (*(v4 + 24) + 16 * v3);
  }

  v6 = *v5;
  os_unfair_lock_unlock(a1);
  return v6;
}

uint64_t RB::Symbol::Animator::set_color(uint64_t a1, int a2, float32x4_t *a3)
{
  v5 = RB::Symbol::Model::style_color_index(a2);
  if (v5 != -1)
  {
    v6 = v5;
    os_unfair_lock_lock(a1);
    v8 = (a1 + 8);
    v7 = *(a1 + 8);
    if (v6 >= *(v7 + 32))
    {
      if (a3->f32[3] == -32768.0)
      {
        goto LABEL_4;
      }
    }

    else if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*(*(v7 + 24) + 16 * v6), *a3)))) & 1) == 0)
    {
LABEL_4:
      v9 = 0;
LABEL_9:
      os_unfair_lock_unlock(a1);
      return v9;
    }

    RB::Symbol::Model::copy_on_write(a1 + 8);
    v10 = *v8;
    v11 = (*v8 + 24);
    v13 = (*v8 + 32);
    for (i = *v13; v6 >= *v13; i = *v13)
    {
      if (*(v10 + 36) < i + 1)
      {
        RB::vector<RBColor,0ul,unsigned int>::reserve_slow(v11, i + 1);
        i = *v13;
      }

      *(*v11 + 16 * i) = RBColorNull;
      ++*v13;
      v10 = *v8;
      v11 = (*v8 + 24);
      v13 = (*v8 + 32);
    }

    *(*v11 + 16 * v6) = *a3;
    ++*(*(a1 + 8) + 100);
    ++*(a1 + 60);
    v9 = 1;
    goto LABEL_9;
  }

  return 0;
}

void RB::Symbol::Animator::fill(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = RB::Symbol::Model::style_color_index(a2);
  os_unfair_lock_lock(a1);
  v6 = *(a1 + 8);
  if (v5 >= *(v6 + 48))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(*(v6 + 40) + 8 * v5);
  }

  *a3 = v7;

  os_unfair_lock_unlock(a1);
}

uint64_t RB::Symbol::Animator::set_fill(uint64_t a1, int a2, void *a3)
{
  v5 = RB::Symbol::Model::style_color_index(a2);
  if (v5 != -1)
  {
    v6 = v5;
    os_unfair_lock_lock(a1);
    v8 = (a1 + 8);
    v7 = *(a1 + 8);
    if (v6 >= *(v7 + 48))
    {
      if (!a3)
      {
        goto LABEL_4;
      }
    }

    else if (*(*(v7 + 40) + 8 * v6) == a3)
    {
LABEL_4:
      v9 = 0;
LABEL_13:
      os_unfair_lock_unlock(a1);
      return v9;
    }

    RB::Symbol::Model::copy_on_write(a1 + 8);
    v10 = *v8;
    v11 = (*v8 + 40);
    v13 = (*v8 + 48);
    v12 = *v13;
    while (v6 >= v12)
    {
      v14 = v12 + 1;
      if (*(v10 + 52) < v12 + 1)
      {
        RB::vector<RB::objc_ptr<void({block_pointer})(RBFill *,CGRect)>,0ul,unsigned int>::reserve_slow(v11, v14);
        v12 = *v13;
        v10 = *v8;
        v14 = *v13 + 1;
      }

      *(*v11 + 8 * v12) = 0;
      *v13 = v14;
      v13 = (v10 + 48);
      v12 = *(v10 + 48);
      v11 = (v10 + 40);
    }

    v15 = *v11;
    v16 = [a3 copy];

    *(v15 + 8 * v6) = v16;
    ++*(*(a1 + 8) + 100);
    ++*(a1 + 60);
    v9 = 1;
    goto LABEL_13;
  }

  return 0;
}

BOOL RB::Symbol::Animator::set_alpha(os_unfair_lock_t lock, const float *a2, unint64_t a3)
{
  for (i = 0; i != 4; ++i)
  {
    if (i >= a3)
    {
      if (i)
      {
        LOBYTE(v5) = *(&v9 + i - 1);
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }

    else
    {
      v5 = ((a2[i] * 255.0) + 0.5);
    }

    *(&v9 + i) = v5;
  }

  os_unfair_lock_lock(lock);
  v6 = *(*&lock[2]._os_unfair_lock_opaque + 108);
  v7 = v9;
  if (v6 != v9)
  {
    RB::Symbol::Model::copy_on_write(&lock[2]);
    *(*&lock[2]._os_unfair_lock_opaque + 108) = v9;
    ++lock[15]._os_unfair_lock_opaque;
  }

  os_unfair_lock_unlock(lock);
  return v6 != v7;
}

uint64_t RB::Symbol::Animator::hidden(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  v2 = HIBYTE(*(*&this[2]._os_unfair_lock_opaque + 104)) & 1;
  os_unfair_lock_unlock(this);
  return v2;
}

uint64_t RB::Symbol::Animator::scale_level(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  v2 = ((*(*&this[2]._os_unfair_lock_opaque + 104) << 8) >> 24);
  os_unfair_lock_unlock(this);
  return v2;
}

double RB::Symbol::Animator::anchor_point(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  v2 = *(*&this[2]._os_unfair_lock_opaque + 56);
  os_unfair_lock_unlock(this);
  return v2;
}

double RB::Symbol::Animator::position(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  v2 = *(*&this[2]._os_unfair_lock_opaque + 64);
  os_unfair_lock_unlock(this);
  return v2;
}

double RB::Symbol::Animator::size(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  v2 = *(*&this[2]._os_unfair_lock_opaque + 72);
  os_unfair_lock_unlock(this);
  return v2;
}

double RB::Symbol::Animator::presentation_position(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  v2 = *&this[12]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this);
  return v2;
}

void RB::Symbol::Animator::remove_animation_at_index(RB::Symbol::Animator *this, uint64_t a2, char a3)
{
  v5 = 88 * a2;
  RB::Symbol::Animation::send_completion((*(this + 2) + 88 * a2), a3);
  v6 = *(this + 2) + v5;
  v7 = *(v6 + 80);
  if (v7 && atomic_fetch_add_explicit((v7 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::Symbol::Model::copy_on_write(v7);
  }

  v8 = *(v6 + 72);
  *(v6 + 72) = 0;
  if (v8)
  {
    std::default_delete<RB::Symbol::Animation::Timing>::operator()[abi:nn200100](v6 + 72, v8);
  }

  v9 = *(this + 3) - 1;
  *(this + 3) = v9;
  v10 = v9 - a2;
  if (v10)
  {
    memmove(v6, (v6 + 88), 88 * v10);
  }

  ++*(this + 15);
}

void RB::Symbol::Animator::remove_finished_animations_locked(RB::Symbol::Animator *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v3 = 0;
    do
    {
      if ((*(*(this + 2) + 88 * v3 + 13) & 0x20) != 0)
      {
        RB::Symbol::Animator::remove_animation_at_index(this, v3, 1);
        v1 = *(this + 3);
      }

      else
      {
        ++v3;
      }
    }

    while (v3 < v1);
  }
}

BOOL RB::Symbol::Animator::remove_animation_by_id(os_unfair_lock_s *this, int a2)
{
  os_unfair_lock_lock(this);
  v4 = *&this[6]._os_unfair_lock_opaque;
  if (!v4)
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v5 = *&this[4]._os_unfair_lock_opaque;
  if (*v5 != a2)
  {
    v6 = 0;
    v8 = v5 + 22;
    while (v4 - 1 != v6)
    {
      v9 = *v8;
      v8 += 22;
      ++v6;
      if (v9 == a2)
      {
        v7 = v6 < v4;
        goto LABEL_8;
      }
    }

    goto LABEL_9;
  }

  v6 = 0;
  v7 = 1;
LABEL_8:
  RB::Symbol::Animator::remove_animation_at_index(this, v6, 0);
LABEL_10:
  os_unfair_lock_unlock(this);
  return v7;
}

uint64_t RB::Symbol::Animator::remove_animations_by_mask(os_unfair_lock_s *this, unsigned int a2)
{
  os_unfair_lock_lock(this);
  v4 = 0;
  v5 = 0;
  while (v4 < *&this[6]._os_unfair_lock_opaque)
  {
    if ((a2 >> *(*&this[4]._os_unfair_lock_opaque + 88 * v4 + 4)))
    {
      v5 = 1;
      RB::Symbol::Animator::remove_animation_at_index(this, v4, 0);
    }

    else
    {
      ++v4;
    }
  }

  os_unfair_lock_unlock(this);
  return v5 & 1;
}

BOOL RB::Symbol::Animator::cancel_animation_at_index(RB::Symbol::Animator *this, uint64_t a2)
{
  v2 = *(this + 2);
  v3 = (v2 + 88 * a2);
  v4 = *(this + 5);
  v5 = v3[6] > v4 || v4 == 0.0;
  if (v5)
  {
    RB::Symbol::Animator::remove_animation_at_index(this, a2, 0);
  }

  else
  {
    v6 = (v2 + 88 * a2 + 168);
    if ((a2 + 1) >= *(this + 3))
    {
      v6 = (this + 8);
    }

    RB::Symbol::Animation::cancel(v3, *&v4, *v6);
  }

  return v5;
}

uint64_t RB::Symbol::Animator::cancel_animation_by_id(os_unfair_lock_s *this, unsigned int a2)
{
  os_unfair_lock_lock(this);
  v4 = *&this[6]._os_unfair_lock_opaque;
  if (!v4)
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v5 = *&this[4]._os_unfair_lock_opaque;
  if (*v5 != a2)
  {
    v6 = 0;
    v8 = v5 + 22;
    while (v4 - 1 != v6)
    {
      v9 = *v8;
      v8 += 22;
      ++v6;
      if (v9 == a2)
      {
        v7 = v6 < v4;
        goto LABEL_8;
      }
    }

    goto LABEL_9;
  }

  v6 = 0;
  v7 = 1;
LABEL_8:
  a2 = RB::Symbol::Animator::cancel_animation_at_index(this, v6);
LABEL_10:
  os_unfair_lock_unlock(this);
  return v7 & a2;
}

uint64_t RB::Symbol::Animator::cancel_animations_by_mask(os_unfair_lock_s *this, unsigned int a2)
{
  os_unfair_lock_lock(this);
  v4 = 0;
  v5 = 0;
LABEL_2:
  v6 = v5;
  while (1)
  {
    v5 = v6;
    if (v4 >= *&this[6]._os_unfair_lock_opaque)
    {
      break;
    }

    if ((a2 >> *(*&this[4]._os_unfair_lock_opaque + 88 * v4 + 4)))
    {
      v7 = RB::Symbol::Animator::cancel_animation_at_index(this, v4);
      v6 = 1;
      if (v7)
      {
        continue;
      }
    }

    ++v4;
    goto LABEL_2;
  }

  os_unfair_lock_unlock(this);
  return v5 & 1;
}