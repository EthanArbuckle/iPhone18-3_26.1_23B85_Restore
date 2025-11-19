unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>::append_alpha_gradient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 72) != 3)
  {
    return 0;
  }

  v3 = vceq_f32(*a3, 0x3F80000000000000);
  if ((vpmin_u32(v3, v3).u32[0] & 0x80000000) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 46) & 0x3F;
  v7 = *(a2 + 8);
  v8 = *(a1 + 110) * *(a1 + 44);
  v4 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeI11RBStrokeRefEENS_4Fill8GradientEEEJRS7_RKS9_RPKNS_15AffineTransformEDF16_RNS_9BlendModeEEEEPT_DpOT0_((v7 + 16), a1 + 56, (a3 + 8), (a1 + 48), &v8, &v9);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 40) = *(a1 + 40);
  (**a1)(a1);
  return v4;
}

float RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>::min_scale(uint64_t a1)
{
  result = 0.0;
  if (!*(a1 + 88) && *(a1 + 92) == 1)
  {
    return 1.0;
  }

  return result;
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>::has_no_effect(uint64_t a1)
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

void **RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>::prepare(void **result, uint64_t a2)
{
  if (*(result + 88) == 1)
  {
    return RBStrokeRef::prepare(result + 8, *(a2 + 1072));
  }

  return result;
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>::render(uint64_t a1, double a2, uint64_t a3, uint64_t *a4, int a5, int a6)
{
  v10 = *(a1 + 48);
  v11.i64[0] = SLODWORD(a2);
  v11.i64[1] = SHIDWORD(a2);
  v12 = *(v10 + 16);
  v13 = vaddq_f64(*(v10 + 32), vcvtq_f64_s64(v11));
  v15[0] = *v10;
  v15[1] = v12;
  v15[2] = v13;
  v14 = *(a1 + 44);
  RB::Coverage::Stroke<RBStrokeRef>::get_info((a1 + 56), a4, v19);
  LOWORD(v16) = *(a1 + 104);
  *(&v16 + 2) = *(a1 + 106);
  *(&v16 + 3) = *(a1 + 110) * v14;
  v17 = *(a1 + 112);
  v18 = *(a1 + 116);
  RB::render_stroke(a4, v15, a1 + 56, v19, &v16, a5, a6);
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>::render(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 24);
  _H0 = *(a1 + 44);
  __asm { FCVT            S8, H0 }

  v11 = *(a1 + 46) & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(&v19, v12, v13, v14, v15);
  if (*(a2 + 88) != v5 || !RB::Bounds::contains((a2 + 96), *&v19, *(&v19 + 8)))
  {
    v16 = 0;
LABEL_10:
    RB::CGContext::update_state_slow(a2, v4, v5, v11, &v19, v16, _S8);
    return RBStrokeRef::clip(a1 + 64);
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

  return RBStrokeRef::clip(a1 + 64);
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>::prepare_mix(uint64_t a1, RB::DisplayList::Interpolator::Contents *a2, unint64_t *a3, uint64_t a4)
{
  result = (*(*a4 + 16))(a4);
  if (result == 4210689)
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
        if (*(a1 + 88) == *(a4 + 88) && *(a1 + 89) == *(a4 + 89) && *(a1 + 90) == *(a4 + 90) && *(a1 + 91) == *(a4 + 91) && *(a1 + 92) == *(a4 + 92) && *(a1 + 96) == *(a4 + 96))
        {
          result = RBStrokeRef::can_mix((a1 + 64), (a4 + 64));
          if (result)
          {
            v12 = result;
            can_mix = RB::Fill::Color::can_mix((a1 + 104), (a4 + 104));

            return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v12, can_mix);
          }
        }
      }
    }
  }

  return result;
}

float32x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v15[0] = v10;
  v15[1] = v11;
  v15[2] = v12;
  v8[6] = RB::DisplayList::CachedTransform::transform_ctm(a4, v15);
  v13.i32[0] = *(a2 + 16);
  RB::Fill::Color::mix(&v8[13], a3 + 104, 3, v13);
  RB::operator*(a1[6], a4 + 68);
  RB::operator*(*(a3 + 48), a4 + 68);
  v8[12].f32[0] = v8[12].f32[0] + ((*(a3 + 96) - v8[12].f32[0]) * *(a2 + 16));
  v8[9] = 0x100000001000000;
  v8[10] = vneg_f32(0x80000000800000);
  if ((v8[5].i16[3] & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    v8[5].i16[3] |= 0x2000u;
  }

  return v8;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>::prepare_encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Item::prepare_encode(a1, a2);

  return RBStrokeRef::prepare_encode(a1 + 8, (a1 + 7), a2);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>::encode(void *a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Stroke<RBStrokeRef>>(this, 1, (a1 + 7));
  RB::Encoder::typed_message_field<RB::Fill::Color>(this, 2, (a1 + 13));
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

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Stroke<RBStrokeRef>>();
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeI11RBStrokeRefEENS_4Fill5ColorEEEJRS0_RKS7_RKS9_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v15 + 120 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0x78uLL, 7);
  }

  else
  {
    *(this + 2) = v15 + 120;
  }

  _H0 = *a6;
  __asm { FCVT            S0, H0 }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Color>::GenericItem1(v15, _S0, a2, a3, a4, *a5, *a7, 0);
  *result = &unk_1F0A3C6A8;
  return result;
}

uint64_t RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>,RB::Heap&,RB::Coverage::Stroke<RBStrokeRef>&,float &,RB::ClipMode &,RB::AffineTransform const*&>(size_t *a1, uint64_t a2, uint64_t a3, int *a4, _DWORD *a5, uint64_t *a6)
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

void sub_195DA0CDC(_Unwind_Exception *a1)
{
  *(v1 + 56) = v2;

  _Unwind_Resume(a1);
}

unint64_t _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeI11RBStrokeRefEENS_4Fill8GradientEEEJRS7_RKS9_RPKNS_15AffineTransformEDF16_RNS_9BlendModeEEEEPT_DpOT0_(size_t *a1, uint64_t a2, __int128 *a3, uint64_t *a4, __int16 *a5, _WORD *a6)
{
  v11 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v11 + 168 > a1[3])
  {
    v11 = RB::Heap::alloc_slow(a1, 0xA8uLL, 7);
  }

  else
  {
    a1[2] = v11 + 168;
  }

  v12 = *a4;
  v13 = *a5;
  v14 = *a6;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 40) = 0;
  *(v11 + 32) = 0;
  *(v11 + 44) = v13;
  *(v11 + 46) = v14 & 0x3F;
  *v11 = &unk_1F0A3ACB0;
  *(v11 + 48) = v12;
  *(v11 + 56) = &unk_1F0A383A8;
  *(v11 + 64) = *(a2 + 8);
  v15 = *(a2 + 28);
  *(v11 + 72) = *(a2 + 16);
  *(v11 + 84) = v15;
  v16 = *a3;
  v17 = a3[1];
  v18 = a3[2];
  *(v11 + 152) = a3[3];
  *(v11 + 136) = v18;
  *(v11 + 120) = v17;
  *(v11 + 104) = v16;
  *v11 = &unk_1F0A3C378;
  return v11;
}

uint64_t RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>::~GenericItem(uint64_t a1)
{
  *a1 = &unk_1F0A3ACB0;
  *(a1 + 56) = &unk_1F0A383A8;

  return a1;
}

void RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>::~GenericItem(uint64_t a1)
{
  *a1 = &unk_1F0A3ACB0;
  *(a1 + 56) = &unk_1F0A383A8;

  JUMPOUT(0x19A8C09E0);
}

__n128 RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>::copy(__n128 *a1, uint64_t a2, char a3)
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
  v7 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeI11RBStrokeRefEENS_4Fill8GradientEEEJRS0_RKS7_RKS9_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v4 + 16), (v4 + 16), &a1[3].n128_i64[1], &a1[6].n128_i64[1], &a1[3], &a1[2].n128_i16[6], &v9);
  result = a1[1];
  v7[1] = result;
  v7[2].n128_u64[0] = a1[2].n128_u64[0];
  v7[2].n128_u32[2] = a1[2].n128_u32[2];
  v7[2].n128_u16[7] |= a1[2].n128_u16[7] & 0x7000 | v6;
  return result;
}

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>::make_clip(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v23 = 0.0;
  v24 = a3;
  if (!RB::Fill::Gradient::get_alpha((a1 + 104), &v23))
  {
    return RB::DisplayList::Item::make_clip(a1, a2, a3, a4, a5);
  }

  v10 = *(a2 + 8);
  _H0 = *(a1 + 44);
  __asm { FCVT            S0, H0 }

  v22 = _S0 * (a5 * v23);
  v17 = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>,RB::Heap&,RB::Coverage::Stroke<RBStrokeRef>&,float &,RB::ClipMode &,RB::AffineTransform const*&>((v10 + 16), v10 + 16, a1 + 56, &v22, &v24, (a1 + 48));
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

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>::color_info(uint64_t a1, float a2, float a3)
{
  LOWORD(a2) = *(a1 + 152);
  LOWORD(a3) = *(a1 + 154);
  if (*&a3 >= *&a2 || *&a3 == COERCE_SHORT_FLOAT(0))
  {
    LOWORD(a3) = *(a1 + 152);
  }

  return (LODWORD(a2) << 16) | (LODWORD(a3) << 32) | *(a1 + 164);
}

float RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>::min_scale(uint64_t a1)
{
  result = 0.0;
  if (!*(a1 + 88) && *(a1 + 92) == 1)
  {
    return 1.0;
  }

  return result;
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>::has_no_effect(uint64_t a1)
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

void **RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>::prepare(void **result, uint64_t a2)
{
  if (*(result + 88) == 1)
  {
    return RBStrokeRef::prepare(result + 8, *(a2 + 1072));
  }

  return result;
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>::render(int32x2_t *a1, double a2, uint64_t a3, uint64_t *a4, int a5, int a6)
{
  v10 = a1[6];
  v11.i64[0] = SLODWORD(a2);
  v11.i64[1] = SHIDWORD(a2);
  v12 = *(*&v10 + 16);
  _Q0 = vaddq_f64(*(*&v10 + 32), vcvtq_f64_s64(v11));
  v19[0] = **&v10;
  v19[1] = v12;
  v19[2] = _Q0;
  LOWORD(_Q0.f64[0]) = a1[5].i16[2];
  __asm { FCVT            S8, H0 }

  RB::Coverage::Stroke<RBStrokeRef>::get_info(a1 + 7, a4, v20);
  RB::render_stroke(a4, v19, &a1[7], v20, &a1[13], a5, a6, _S8);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>::render(float32x2_t *a1, uint64_t a2)
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
  RBStrokeRef::clip(&a1[8]);
  v23[0] = xmmword_195E42760;
  v23[1] = xmmword_195E42770;
  v24 = 0;
  v25 = 0;
  v18 = RB::Coverage::Stroke<RBStrokeRef>::bounds(&a1[7], v23);
  RB::Bounds::Bounds(&v26, v18, v19, v20, v21);
  *v22.f32 = v26;
  RB::Fill::Gradient::fill(a1 + 13, a2, v22);
  RB::CGContext::restore(a2);
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>::prepare_mix(uint64_t a1, RB::DisplayList::Interpolator::Contents *a2, unint64_t *a3, uint64_t a4)
{
  result = (*(*a4 + 16))(a4);
  if (result == 8404993)
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
        if (*(a1 + 88) == *(a4 + 88) && *(a1 + 89) == *(a4 + 89) && *(a1 + 90) == *(a4 + 90) && *(a1 + 91) == *(a4 + 91) && *(a1 + 92) == *(a4 + 92) && *(a1 + 96) == *(a4 + 96))
        {
          result = RBStrokeRef::can_mix((a1 + 64), (a4 + 64));
          if (result)
          {
            v13 = result;
            can_mix = RB::Fill::Gradient::can_mix((a1 + 104), (a4 + 104), v12);

            return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v13, can_mix);
          }
        }
      }
    }
  }

  return result;
}

float32x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v15[0] = v10;
  v15[1] = v11;
  v15[2] = v12;
  v8[6] = RB::DisplayList::CachedTransform::transform_ctm(a4, v15);
  v13.i32[0] = *(a2 + 16);
  RB::Fill::Gradient::mix(&v8[13], *(a2 + 8), (a3 + 104), v13, (*(*&a4->f64[0] + 8) + 16));
  RB::operator*(a1[6], a4 + 68);
  RB::operator*(*(a3 + 48), a4 + 68);
  v8[12].f32[0] = v8[12].f32[0] + ((*(a3 + 96) - v8[12].f32[0]) * *(a2 + 16));
  v8[9] = 0x100000001000000;
  v8[10] = vneg_f32(0x80000000800000);
  if ((v8[5].i16[3] & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    v8[5].i16[3] |= 0x2000u;
  }

  return v8;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>::prepare_encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Item::prepare_encode(a1, a2);

  return RBStrokeRef::prepare_encode(a1 + 8, (a1 + 7), a2);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>::encode(void *a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Stroke<RBStrokeRef>>(this, 1, (a1 + 7));
  RB::Encoder::typed_message_field<RB::Fill::Gradient>(this, 2, (a1 + 13));
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

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Stroke<RBStrokeRef>>();
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeI11RBStrokeRefEENS_4Fill8GradientEEEJRS0_RKS7_RKS9_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, RB::Heap *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v15 + 168 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0xA8uLL, 7);
  }

  else
  {
    *(this + 2) = v15 + 168;
  }

  _H0 = *a6;
  __asm { FCVT            S0, H0 }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>::GenericItem1(v15, a2, a3, a4, *a5, *a7, 0, _S0);
  *result = &unk_1F0A3C378;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>::GenericItem1(uint64_t a1, RB::Heap *a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6, __int16 a7, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F;
  *a1 = &unk_1F0A3ACB0;
  *(a1 + 48) = a5;
  *(a1 + 56) = &unk_1F0A383A8;
  *(a1 + 64) = *(a3 + 8);
  *(a1 + 72) = *(a3 + 16);
  *(a1 + 88) = *(a3 + 32);
  *(a1 + 89) = *(a3 + 33);
  *(a1 + 91) = *(a3 + 35);
  *(a1 + 92) = *(a3 + 36);
  *(a1 + 96) = *(a3 + 40);
  RB::Fill::Gradient::Gradient((a1 + 104), a4, a7, a2);
  return a1;
}

void sub_195DA1A10(_Unwind_Exception *a1)
{
  *(v1 + 56) = v2;

  _Unwind_Resume(a1);
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>,RB::Heap&,RB::Coverage::Stroke<RBStrokeRef> const&,RB::Fill::Gradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, RB::Heap *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, float *a6, _DWORD *a7, __int16 *a8)
{
  v16 = *(this + 3);
  v17 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v17 + 168 > v16)
  {
    v17 = RB::Heap::alloc_slow(this, 0xA8uLL, 7);
  }

  else
  {
    *(this + 2) = v17 + 168;
  }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Gradient>::GenericItem1(v17, a2, a3, a4, *a5, *a7, *a8, *a6);
  *result = &unk_1F0A3C378;
  return result;
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>,RB::Heap&,RB::Coverage::Stroke<RBStrokeRef> const&,RB::Fill::MeshGradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, RB::Heap *a2, uint64_t a3, uint64_t a4, uint64_t *a5, float *a6, _DWORD *a7, __int16 *a8)
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

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>::GenericItem1(v17, a2, a3, a4, *a5, *a7, *a8, *a6);
  *result = &unk_1F0A3E498;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>::GenericItem1(uint64_t a1, RB::Heap *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, __int16 a7, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F | 0x4000;
  *a1 = &unk_1F0A3E5A8;
  *(a1 + 48) = a5;
  *(a1 + 56) = &unk_1F0A383A8;
  *(a1 + 64) = *(a3 + 8);
  *(a1 + 72) = *(a3 + 16);
  *(a1 + 88) = *(a3 + 32);
  *(a1 + 89) = *(a3 + 33);
  *(a1 + 91) = *(a3 + 35);
  *(a1 + 92) = *(a3 + 36);
  *(a1 + 96) = *(a3 + 40);
  RB::Fill::MeshGradient::MeshGradient(a1 + 104, a4, a7, a2);
  return a1;
}

void sub_195DA1C9C(_Unwind_Exception *a1)
{
  *(v1 + 56) = v2;

  _Unwind_Resume(a1);
}

uint64_t RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>::~GenericItem(uint64_t a1)
{
  *a1 = &unk_1F0A3E5A8;
  v2 = *(a1 + 112);
  if (v2 && atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::MeshGradient>::~GenericItem();
  }

  *(a1 + 56) = &unk_1F0A383A8;

  return a1;
}

void RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>::~GenericItem(uint64_t a1)
{
  *a1 = &unk_1F0A3E5A8;
  v2 = *(a1 + 112);
  if (v2 && atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::MeshGradient>::~GenericItem();
  }

  *(a1 + 56) = &unk_1F0A383A8;

  JUMPOUT(0x19A8C09E0);
}

__n128 RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>::copy(__n128 *a1, uint64_t a2, char a3)
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
  v7 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeI11RBStrokeRefEENS_4Fill12MeshGradientEEEJRS0_RKS7_RKS9_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v4 + 16), (v4 + 16), &a1[3].n128_i64[1], &a1[6].n128_i64[1], &a1[3], &a1[2].n128_i16[6], &v9);
  result = a1[1];
  v7[1] = result;
  v7[2].n128_u64[0] = a1[2].n128_u64[0];
  v7[2].n128_u32[2] = a1[2].n128_u32[2];
  v7[2].n128_u16[7] |= a1[2].n128_u16[7] & 0x7000 | v6;
  return result;
}

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>::make_clip(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v23 = 0.0;
  v24 = a3;
  if (!RB::Fill::MeshGradient::get_alpha((a1 + 104), &v23))
  {
    return RB::DisplayList::Item::make_clip(a1, a2, a3, a4, a5);
  }

  v10 = *(a2 + 8);
  _H0 = *(a1 + 44);
  __asm { FCVT            S0, H0 }

  v22 = _S0 * (a5 * v23);
  v17 = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>,RB::Heap&,RB::Coverage::Stroke<RBStrokeRef>&,float &,RB::ClipMode &,RB::AffineTransform const*&>((v10 + 16), v10 + 16, a1 + 56, &v22, &v24, (a1 + 48));
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

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>::color_info(uint64_t a1, float a2, float a3)
{
  LOWORD(a2) = *(a1 + 140);
  LOWORD(a3) = *(a1 + 142);
  if (*&a3 >= *&a2 || *&a3 == COERCE_SHORT_FLOAT(0))
  {
    LOWORD(a3) = *(a1 + 140);
  }

  return (LODWORD(a2) << 16) | (LODWORD(a3) << 32) | *(a1 + 148);
}

float RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>::min_scale(uint64_t a1)
{
  result = 0.0;
  if (!*(a1 + 88) && *(a1 + 92) == 1)
  {
    return 1.0;
  }

  return result;
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>::has_no_effect(uint64_t a1)
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

void **RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>::prepare(void **result, uint64_t a2)
{
  if (*(result + 88) == 1)
  {
    return RBStrokeRef::prepare(result + 8, *(a2 + 1072));
  }

  return result;
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>::render(uint64_t a1, double a2, uint64_t a3, uint64_t *a4, char a5, int a6)
{
  v10 = *(a1 + 48);
  v11.i64[0] = SLODWORD(a2);
  v11.i64[1] = SHIDWORD(a2);
  v12 = *(v10 + 16);
  _Q0 = vaddq_f64(*(v10 + 32), vcvtq_f64_s64(v11));
  v19[0] = *v10;
  v19[1] = v12;
  v19[2] = _Q0;
  LOWORD(_Q0.f64[0]) = *(a1 + 44);
  __asm { FCVT            S8, H0 }

  RB::Coverage::Stroke<RBStrokeRef>::get_info((a1 + 56), a4, v20);
  RB::render_stroke(a4, v19, a1 + 56, v20, (a1 + 104), a5, a6, _S8);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>::render(int32x2_t *a1, uint64_t a2)
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
  RBStrokeRef::clip(&a1[8]);
  v22[0] = xmmword_195E42760;
  v22[1] = xmmword_195E42770;
  v23 = 0;
  v24 = 0;
  v18 = RB::Coverage::Stroke<RBStrokeRef>::bounds(&a1[7], v22);
  RB::Bounds::Bounds(v25, v18, v19, v20, v21);
  RB::Fill::MeshGradient::fill(a1 + 13, a2, v25[0], v25[1]);
  RB::CGContext::restore(a2);
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>::prepare_mix(uint64_t a1, RB::DisplayList::Interpolator::Contents *a2, unint64_t *a3, uint64_t a4)
{
  result = (*(*a4 + 16))(a4);
  if (result == 20987905)
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
        if (*(a1 + 88) == *(a4 + 88) && *(a1 + 89) == *(a4 + 89) && *(a1 + 90) == *(a4 + 90) && *(a1 + 91) == *(a4 + 91) && *(a1 + 92) == *(a4 + 92) && *(a1 + 96) == *(a4 + 96))
        {
          result = RBStrokeRef::can_mix((a1 + 64), (a4 + 64));
          if (result)
          {
            v13 = result;
            can_mix = RB::Fill::MeshGradient::can_mix((a1 + 104), (a4 + 104), v12);

            return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v13, can_mix);
          }
        }
      }
    }
  }

  return result;
}

float32x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v15[0] = v10;
  v15[1] = v11;
  v15[2] = v12;
  v8[6] = RB::DisplayList::CachedTransform::transform_ctm(a4, v15);
  v13.i32[0] = *(a2 + 16);
  RB::Fill::MeshGradient::mix(&v8[13], *(a2 + 8), (a3 + 104), v13, (*(*&a4->f64[0] + 8) + 16));
  RB::operator*(a1[6], a4 + 68);
  RB::operator*(*(a3 + 48), a4 + 68);
  v8[12].f32[0] = v8[12].f32[0] + ((*(a3 + 96) - v8[12].f32[0]) * *(a2 + 16));
  v8[9] = 0x100000001000000;
  v8[10] = vneg_f32(0x80000000800000);
  if ((v8[5].i16[3] & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    v8[5].i16[3] |= 0x2000u;
  }

  return v8;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>::prepare_encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Item::prepare_encode(a1, a2);

  return RBStrokeRef::prepare_encode(a1 + 8, (a1 + 7), a2);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>::encode(void *a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Stroke<RBStrokeRef>>(this, 1, (a1 + 7));
  RB::Encoder::typed_message_field<RB::Fill::MeshGradient>(this, 2, (a1 + 13));
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

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Stroke<RBStrokeRef>>();
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeI11RBStrokeRefEENS_4Fill12MeshGradientEEEJRS0_RKS7_RKS9_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, RB::Heap *a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v15 + 152 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0x98uLL, 7);
  }

  else
  {
    *(this + 2) = v15 + 152;
  }

  _H0 = *a6;
  __asm { FCVT            S0, H0 }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::MeshGradient>::GenericItem1(v15, a2, a3, a4, *a5, *a7, 0, _S0);
  *result = &unk_1F0A3E498;
  return result;
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Image<RB::ImageTexture>>,RB::Heap&,RB::Coverage::Stroke<RBStrokeRef> const&,RB::Fill::Image<RB::ImageTexture> const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, RB::Heap *a2, uint64_t a3, uint64_t a4, uint64_t *a5, float *a6, _DWORD *a7, __int16 *a8)
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

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Image<RB::ImageTexture>>::GenericItem1(v17, a2, a3, a4, *a5, *a7, *a8, *a6);
  *result = &unk_1F0A3C598;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Image<RB::ImageTexture>>::GenericItem1(uint64_t a1, RB::Heap *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, __int16 a7, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F;
  *a1 = &unk_1F0A3AED0;
  *(a1 + 48) = a5;
  *(a1 + 56) = &unk_1F0A383A8;
  *(a1 + 64) = *(a3 + 8);
  *(a1 + 72) = *(a3 + 16);
  *(a1 + 88) = *(a3 + 32);
  *(a1 + 89) = *(a3 + 33);
  *(a1 + 91) = *(a3 + 35);
  *(a1 + 92) = *(a3 + 36);
  *(a1 + 96) = *(a3 + 40);
  RB::ImageTexture::ImageTexture((a1 + 104), a4, a2);
  v18 = *(a4 + 48);
  v19 = *(a4 + 64);
  v20 = *(a4 + 80);
  v21 = *(a4 + 96);
  *(a1 + 200) = v21;
  v22 = *(a4 + 16);
  *(a1 + 136) = *(a4 + 32);
  *(a1 + 120) = v22;
  *(a1 + 184) = v20;
  *(a1 + 168) = v19;
  *(a1 + 152) = v18;
  if ((v21 & 0x100) == 0)
  {
    *(a1 + 200) = a7;
  }

  return a1;
}

void sub_195DA29E8(_Unwind_Exception *a1)
{
  *(v1 + 56) = v2;

  _Unwind_Resume(a1);
}

uint64_t RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Image<RB::ImageTexture>>::~GenericItem(uint64_t a1)
{
  *a1 = &unk_1F0A3AED0;
  *(a1 + 56) = &unk_1F0A383A8;

  return a1;
}

void RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Image<RB::ImageTexture>>::~GenericItem(uint64_t a1)
{
  *a1 = &unk_1F0A3AED0;
  *(a1 + 56) = &unk_1F0A383A8;

  JUMPOUT(0x19A8C09E0);
}

__n128 RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Image<RB::ImageTexture>>::copy(__n128 *a1, uint64_t a2, char a3)
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
  v7 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeI11RBStrokeRefEENS_4Fill5ImageINS_12ImageTextureEEEEEJRS0_RKS7_RKSB_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v4 + 16), (v4 + 16), &a1[3].n128_i64[1], &a1[6].n128_i64[1], &a1[3], &a1[2].n128_i16[6], &v9);
  result = a1[1];
  v7[1] = result;
  v7[2].n128_u64[0] = a1[2].n128_u64[0];
  v7[2].n128_u32[2] = a1[2].n128_u32[2];
  v7[2].n128_u16[7] |= a1[2].n128_u16[7] & 0x7000 | v6;
  return result;
}

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Image<RB::ImageTexture>>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Image<RB::ImageTexture>>::make_clip(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v20 = a3;
  if (*(a1 + 116) == 1)
  {
    v7 = *(a2 + 8);
    _H1 = *(a1 + 44);
    __asm { FCVT            S1, H1 }

    v19 = _S1 * a5;
    v14 = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Stroke<RBStrokeRef>>,RB::Heap&,RB::Coverage::Stroke<RBStrokeRef>&,float &,RB::ClipMode &,RB::AffineTransform const*&>((v7 + 16), v7 + 16, a1 + 56, &v19, &v20, (a1 + 48));
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

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Image<RB::ImageTexture>>::has_no_effect(uint64_t a1)
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

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Image<RB::ImageTexture>>::prepare(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == 1)
  {
    RBStrokeRef::prepare((a1 + 64), *(a2 + 1072));
  }

  v4 = *(a2 + 1072);
  v5 = *(a1 + 48);

  return RB::ImageTexture::prepare(a1 + 104, v4, (a1 + 120), v5, 0);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Image<RB::ImageTexture>>::render(int32x2_t *a1, double a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v10 = a1[6];
  v11.i64[0] = SLODWORD(a2);
  v11.i64[1] = SHIDWORD(a2);
  v12 = v10[1];
  _Q0 = vaddq_f64(v10[2], vcvtq_f64_s64(v11));
  v19[0] = *v10;
  v19[1] = v12;
  v19[2] = _Q0;
  LOWORD(_Q0.f64[0]) = a1[5].i16[2];
  __asm { FCVT            S8, H0 }

  RB::Coverage::Stroke<RBStrokeRef>::get_info(a1 + 7, a4, v22);
  RB::Fill::Image<RB::ImageTexture>::set_image(&a1[13], &v21, a4, v19, _S8);
  RB::render_stroke(a4, v19, &a1[7], v22, &v20, &a1[15], a5, a6);
  *(a4 + 240) = 0;
  *(a4 + 244) = 0;
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Image<RB::ImageTexture>>::render(uint64_t a1, uint64_t a2)
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
  RBStrokeRef::clip(a1 + 64);
  v25[0] = xmmword_195E42760;
  v25[1] = xmmword_195E42770;
  v26 = 0;
  v27 = 0;
  v18 = RB::Coverage::Stroke<RBStrokeRef>::bounds((a1 + 56), v25);
  RB::Bounds::Bounds(&v28, v18, v19, v20, v21);
  v22 = v28;
  v23 = RB::ImageTexture::cg_image((a1 + 104));
  if (v23)
  {
    *v24.f32 = v22;
    RB::Fill::ImageData::fill((a1 + 120), a2, v23, v24);
  }

  RB::CGContext::restore(a2);
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Image<RB::ImageTexture>>::prepare_mix(uint64_t a1, RB::DisplayList::Interpolator::Contents *a2, unint64_t *a3, uint64_t a4)
{
  result = (*(*a4 + 16))(a4);
  if (result == 12599297)
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
        if (*(a1 + 88) == *(a4 + 88) && *(a1 + 89) == *(a4 + 89) && *(a1 + 90) == *(a4 + 90) && *(a1 + 91) == *(a4 + 91) && *(a1 + 92) == *(a4 + 92) && *(a1 + 96) == *(a4 + 96))
        {
          result = RBStrokeRef::can_mix((a1 + 64), (a4 + 64));
          if (result)
          {
            v12 = result;
            can_mix = RB::ImageTexture::can_mix((a1 + 104), (a4 + 104));
            if (can_mix)
            {
              v14 = can_mix;
              v15 = RB::Fill::ImageData::can_mix((a1 + 120), (a4 + 120));
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
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Image<RB::ImageTexture>>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v15[0] = v10;
  v15[1] = v11;
  v15[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v15);
  v13.i32[0] = *(a2 + 16);
  RB::Fill::ImageData::mix((v8 + 120), *(a2 + 8), (a3 + 120), v13);
  RB::operator*(a1[6], a4 + 68);
  RB::operator*(*(a3 + 48), a4 + 68);
  *(v8 + 96) = *(v8 + 96) + ((*(a3 + 96) - *(v8 + 96)) * *(a2 + 16));
  *(v8 + 72) = 0x100000001000000;
  *(v8 + 80) = vneg_f32(0x80000000800000);
  if ((*(v8 + 46) & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Image<RB::ImageTexture>>::prepare_encode(uint64_t a1, RB::Encoder *a2)
{
  RB::DisplayList::Item::prepare_encode(a1, a2);
  RBStrokeRef::prepare_encode((a1 + 64), a1 + 56, a2);

  return RB::ImageTexture::prepare_encode((a1 + 104), a2);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Image<RB::ImageTexture>>::encode(RB::DisplayList::Item *a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Stroke<RBStrokeRef>>(this, 1, a1 + 56);
  RB::Encoder::typed_message_field<RB::Fill::Image<RB::ImageTexture>>(this, 2, a1 + 104);
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

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Image<RB::ImageTexture>>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Stroke<RBStrokeRef>>();
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeI11RBStrokeRefEENS_4Fill5ImageINS_12ImageTextureEEEEEJRS0_RKS7_RKSB_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, RB::Heap *a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
{
  v14 = *(this + 3);
  v15 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v15 + 208 > v14)
  {
    v15 = RB::Heap::alloc_slow(this, 0xD0uLL, 7);
  }

  else
  {
    *(this + 2) = v15 + 208;
  }

  _H0 = *a6;
  __asm { FCVT            S0, H0 }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Image<RB::ImageTexture>>::GenericItem1(v15, a2, a3, a4, *a5, *a7, 0, _S0);
  *result = &unk_1F0A3C598;
  return result;
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Custom>,RB::Heap&,RB::Coverage::Stroke<RBStrokeRef> const&,RB::Fill::Custom const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, float *a6, _DWORD *a7)
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

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Custom>::GenericItem1(v15, *a6, a2, a3, a4, *a5, *a7);
  *result = &unk_1F0A3C488;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Custom>::GenericItem1(uint64_t a1, float _S0, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a7 & 0x3F;
  *a1 = &unk_1F0A3ADC0;
  *(a1 + 48) = a6;
  *(a1 + 56) = &unk_1F0A383A8;
  *(a1 + 64) = *(a4 + 8);
  *(a1 + 72) = *(a4 + 16);
  *(a1 + 88) = *(a4 + 32);
  *(a1 + 89) = *(a4 + 33);
  *(a1 + 91) = *(a4 + 35);
  *(a1 + 92) = *(a4 + 36);
  *(a1 + 96) = *(a4 + 40);
  RB::Fill::Custom::Custom((a1 + 112), a5);
  return a1;
}

void sub_195DA3764(_Unwind_Exception *a1)
{
  *(v1 + 56) = v2;

  _Unwind_Resume(a1);
}

uint64_t RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Custom>::~GenericItem(uint64_t a1)
{
  *a1 = &unk_1F0A3ADC0;

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

  *(a1 + 56) = &unk_1F0A383A8;

  return a1;
}

void RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Custom>::~GenericItem(uint64_t a1)
{
  *a1 = &unk_1F0A3ADC0;

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

  *(a1 + 56) = &unk_1F0A383A8;

  JUMPOUT(0x19A8C09E0);
}

__n128 RB::DisplayList::GenericItem<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Custom>::copy(__n128 *a1, uint64_t a2, char a3)
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
  v7 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeI11RBStrokeRefEENS_4Fill6CustomEEEJRS0_RKS7_RKS9_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v4 + 16), v4 + 16, &a1[3].n128_i64[1], &a1[7], &a1[3], &a1[2].n128_i16[6], &v9);
  result = a1[1];
  v7[1] = result;
  v7[2].n128_u64[0] = a1[2].n128_u64[0];
  v7[2].n128_u32[2] = a1[2].n128_u32[2];
  v7[2].n128_u16[7] |= a1[2].n128_u16[7] & 0x7000 | v6;
  return result;
}

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Custom>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

float RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Custom>::min_scale(uint64_t a1)
{
  result = 0.0;
  if (!*(a1 + 88) && *(a1 + 92) == 1)
  {
    return 1.0;
  }

  return result;
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Custom>::has_no_effect(uint64_t a1)
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

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Custom>::prepare(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == 1)
  {
    RBStrokeRef::prepare((a1 + 64), *(a2 + 1072));
  }

  v4 = *(a2 + 1072);
  v5 = *(a1 + 48);

  return RB::Fill::Custom::prepare((a1 + 112), v4, v5);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Custom>::render(int32x2_t *a1, double a2, uint64_t a3, uint64_t *a4, int a5, int a6)
{
  v10 = a1[6];
  v11.i64[0] = SLODWORD(a2);
  v11.i64[1] = SHIDWORD(a2);
  v12 = *(*&v10 + 16);
  _Q0 = vaddq_f64(*(*&v10 + 32), vcvtq_f64_s64(v11));
  v19[0] = **&v10;
  v19[1] = v12;
  v19[2] = _Q0;
  LOWORD(_Q0.f64[0]) = a1[5].i16[2];
  __asm { FCVT            S8, H0 }

  RB::Coverage::Stroke<RBStrokeRef>::get_info(a1 + 7, a4, v20);
  RB::render_stroke(a4, v19, &a1[7], v20, &a1[14], a5, a6, _S8);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Custom>::render(uint64_t a1, uint64_t a2)
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
  RBStrokeRef::clip(a1 + 64);
  v22[0] = xmmword_195E42760;
  v22[1] = xmmword_195E42770;
  v23 = 0;
  v24 = 0;
  v18 = RB::Coverage::Stroke<RBStrokeRef>::bounds((a1 + 56), v22);
  RB::Bounds::Bounds(&v25, v18, v19, v20, v21);
  RB::Fill::Custom::fill(a1 + 112, a2);
  RB::CGContext::restore(a2);
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Custom>::prepare_mix(uint64_t a1, RB::DisplayList::Interpolator::Contents *a2, unint64_t *a3, uint64_t a4)
{
  result = (*(*a4 + 16))(a4);
  if (result == 16793601)
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
        if (*(a1 + 88) == *(a4 + 88) && *(a1 + 89) == *(a4 + 89) && *(a1 + 90) == *(a4 + 90) && *(a1 + 91) == *(a4 + 91) && *(a1 + 92) == *(a4 + 92) && *(a1 + 96) == *(a4 + 96))
        {
          result = RBStrokeRef::can_mix((a1 + 64), (a4 + 64));
          if (result)
          {
            v12 = result;
            can_mix = RB::Fill::Custom::can_mix((a1 + 112), (a4 + 112));

            return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v12, can_mix);
          }
        }
      }
    }
  }

  return result;
}

float32x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Custom>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v14[0] = v10;
  v14[1] = v11;
  v14[2] = v12;
  v8[6] = RB::DisplayList::CachedTransform::transform_ctm(a4, v14);
  RB::Fill::Custom::mix(&v8[14], *(a2 + 8), (a3 + 112), *(a2 + 16), (*(*&a4->f64[0] + 8) + 16));
  RB::operator*(a1[6], a4 + 68);
  RB::operator*(*(a3 + 48), a4 + 68);
  v8[12].f32[0] = v8[12].f32[0] + ((*(a3 + 96) - v8[12].f32[0]) * *(a2 + 16));
  v8[9] = 0x100000001000000;
  v8[10] = vneg_f32(0x80000000800000);
  if ((v8[5].i16[3] & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    v8[5].i16[3] |= 0x2000u;
  }

  return v8;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Custom>::prepare_encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Item::prepare_encode(a1, a2);
  RBStrokeRef::prepare_encode(a1 + 8, (a1 + 7), a2);

  return RB::Fill::Custom::prepare_encode((a1 + 14), a2);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Custom>::encode(void *a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Stroke<RBStrokeRef>>(this, 1, (a1 + 7));
  RB::Encoder::typed_message_field<RB::Fill::Custom>(this, 2, (a1 + 14));
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

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Custom>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Stroke<RBStrokeRef>>();
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeI11RBStrokeRefEENS_4Fill6CustomEEEJRS0_RKS7_RKS9_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
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

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RBStrokeRef>,RB::Fill::Custom>::GenericItem1(v15, _S0, a2, a3, a4, *a5, *a7);
  *result = &unk_1F0A3C488;
  return result;
}

double RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation>::bounds(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9[0] = xmmword_195E42760;
  v9[1] = xmmword_195E42770;
  v10 = 0;
  v11 = 0;
  RB::GeometryStyle::Rotation::set_affine_transform((a1 + 56), v9);
  return RB::DisplayList::affine_style_bounds(a2, a1, a3, a4, v9);
}

void RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation>::map_roi(uint64_t a1, float32x2_t *a2, float64x2_t *a3)
{
  v7[0] = xmmword_195E42760;
  v7[1] = xmmword_195E42770;
  v8 = 0;
  v9 = 0;
  RB::GeometryStyle::Rotation::set_affine_transform((a1 + 56), v7);
  RB::DisplayList::affine_style_roi(a2, a3, v7, *(a1 + 16), v6);
}

uint64_t RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation>::can_mix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && *(a1 + 56) == *(a3 + 56) && (v3 = vceq_f32(*(a1 + 64), *(a3 + 64)), (vpmin_u32(v3, v3).u32[0] & 0x80000000) != 0))
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

float32x2_t *RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation>::mix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = RB::Heap::emplace<RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation>,RB::GeometryStyle::Rotation const&>((*(*a4 + 8) + 16), (a1 + 56));
  v8 = v6;
  if (a3)
  {
    v9 = (a3 + 56);
  }

  else
  {
    v9 = 0;
  }

  v7.n128_u32[0] = *(a2 + 16);
  RB::GeometryStyle::Rotation::mix(v6 + 7, v9, v7.n128_f64[0]);
  return v8;
}

void *RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation>::encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x6AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::GeometryStyle::Rotation::encode((a1 + 7), a2);
  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "geometry");
  RB::GeometryStyle::Rotation::print((a1 + 7), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

__n128 RB::Heap::emplace<RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation>,RB::GeometryStyle::Rotation const&>(RB::Heap *this, __n128 *a2)
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
  *v5 = &unk_1F0A39528;
  result = *a2;
  *(v5 + 56) = *a2;
  return result;
}

unsigned __int8 *RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Scale>::draw(uint64_t a1, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  *(a4 + 2) = *(a1 + 32);
  v11[0] = xmmword_195E42760;
  v11[1] = xmmword_195E42770;
  v12 = 0;
  v13 = 0;
  RB::GeometryStyle::Scale::set_affine_transform((a1 + 56), v11);
  return RB::DisplayList::Builder::affine_style_draw(a2, a3, a4, a5, v11, *(a1 + 16), *(a1 + 24));
}

double RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Scale>::bounds(float32x2_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9[0] = xmmword_195E42760;
  v9[1] = xmmword_195E42770;
  v10 = 0;
  v11 = 0;
  RB::GeometryStyle::Scale::set_affine_transform(a1 + 7, v9);
  return RB::DisplayList::affine_style_bounds(a2, a1, a3, a4, v9);
}

void RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Scale>::map_roi(uint64_t a1, float32x2_t *a2, float64x2_t *a3)
{
  v7[0] = xmmword_195E42760;
  v7[1] = xmmword_195E42770;
  v8 = 0;
  v9 = 0;
  RB::GeometryStyle::Scale::set_affine_transform((a1 + 56), v7);
  RB::DisplayList::affine_style_roi(a2, a3, v7, *(a1 + 16), v6);
}

uint64_t RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Scale>::can_mix(float32x2_t *a1, uint64_t a2, float32x2_t *a3)
{
  if (a3 && (v3 = vand_s8(vceq_f32(a1[8], a3[8]), vceq_f32(a1[7], a3[7])), (vpmin_u32(v3, v3).u32[0] & 0x80000000) != 0))
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

float32x2_t *RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Scale>::mix(uint64_t a1, uint64_t a2, float32x2_t *a3, uint64_t a4)
{
  RB::Heap::emplace<RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Scale>,RB::GeometryStyle::Scale const&>((*(*a4 + 8) + 16), (a1 + 56));
  v7 = v6;
  if (a3)
  {
    v8 = a3 + 7;
  }

  else
  {
    v8 = 0;
  }

  RB::GeometryStyle::Scale::mix(v6 + 7, v8, *(a2 + 16));
  return v7;
}

void *RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Scale>::encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x6AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::GeometryStyle::Scale::encode((a1 + 7), a2);
  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Scale>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "geometry");
  RB::GeometryStyle::Scale::print((a1 + 7), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

__n128 RB::Heap::emplace<RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Scale>,RB::GeometryStyle::Scale const&>(RB::Heap *this, __n128 *a2)
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
  *v5 = &unk_1F0A395B0;
  result = *a2;
  *(v5 + 56) = *a2;
  return result;
}

unsigned __int8 *RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Translation>::draw(uint64_t a1, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  *(a4 + 2) = *(a1 + 32);
  v11[0] = xmmword_195E42760;
  v11[1] = xmmword_195E42770;
  v12 = 0;
  v13 = 0;
  RB::GeometryStyle::Translation::set_affine_transform((a1 + 56), v11);
  return RB::DisplayList::Builder::affine_style_draw(a2, a3, a4, a5, v11, *(a1 + 16), *(a1 + 24));
}

double RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Translation>::bounds(float32x2_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9[0] = xmmword_195E42760;
  v9[1] = xmmword_195E42770;
  v10 = 0;
  v11 = 0;
  RB::GeometryStyle::Translation::set_affine_transform(a1 + 7, v9);
  return RB::DisplayList::affine_style_bounds(a2, a1, a3, a4, v9);
}

void RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Translation>::map_roi(uint64_t a1, float32x2_t *a2, float64x2_t *a3)
{
  v7[0] = xmmword_195E42760;
  v7[1] = xmmword_195E42770;
  v8 = 0;
  v9 = 0;
  RB::GeometryStyle::Translation::set_affine_transform((a1 + 56), v7);
  RB::DisplayList::affine_style_roi(a2, a3, v7, *(a1 + 16), v6);
}

uint64_t RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Translation>::can_mix(float32x2_t *a1, uint64_t a2, float32x2_t *a3)
{
  if (a3 && (v3 = vceq_f32(a1[7], a3[7]), (vpmin_u32(v3, v3).u32[0] & 0x80000000) != 0))
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

float32x2_t *RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Translation>::mix(uint64_t a1, uint64_t a2, float32x2_t *a3, uint64_t a4)
{
  RB::Heap::emplace<RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Translation>,RB::GeometryStyle::Translation const&>((*(*a4 + 8) + 16), (a1 + 56));
  v7 = v6;
  if (a3)
  {
    v8 = a3 + 7;
  }

  else
  {
    v8 = 0;
  }

  RB::GeometryStyle::Translation::mix(v6 + 7, v8, *(a2 + 16));
  return v7;
}

void *RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Translation>::encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x6AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x22uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::GeometryStyle::Translation::encode((a1 + 7), a2);
  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Translation>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "geometry");
  RB::GeometryStyle::Translation::print((a1 + 7), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

double RB::Heap::emplace<RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Translation>,RB::GeometryStyle::Translation const&>(RB::Heap *this, void *a2)
{
  v4 = *(this + 3);
  v5 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v5 + 64 > v4)
  {
    v5 = RB::Heap::alloc_slow(this, 0x40uLL, 7);
  }

  else
  {
    *(this + 2) = v5 + 64;
  }

  *(v5 + 48) = 0;
  result = 0.0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = &unk_1F0A36FF8;
  *(v5 + 56) = *a2;
  return result;
}

unsigned __int8 *RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation3D>::draw(uint64_t a1, size_t **a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  *(a4 + 2) = *(a1 + 32);
  v12 = 1065353216;
  v11[0] = xmmword_195E428C0;
  v11[1] = xmmword_195E428C0;
  RB::GeometryStyle::Rotation3D::set_projection_matrix((a1 + 64), v11);
  return RB::DisplayList::Builder::projection_style_draw(a2, a3, a4, a5, v11, *(a1 + 16), *(a1 + 24));
}

double RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation3D>::bounds(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v10 = 1065353216;
  v9[0] = xmmword_195E428C0;
  v9[1] = xmmword_195E428C0;
  RB::GeometryStyle::Rotation3D::set_projection_matrix((a1 + 64), v9);
  return RB::DisplayList::projection_style_bounds(a2, a1, a3, a4, v9);
}

uint32x2_t RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation3D>::map_roi(uint64_t a1, float32x2_t *a2, float64x2_t *a3)
{
  v9 = 1065353216;
  v8[0] = xmmword_195E428C0;
  v8[1] = xmmword_195E428C0;
  RB::GeometryStyle::Rotation3D::set_projection_matrix((a1 + 64), v8);
  return RB::DisplayList::projection_style_roi(a2, a3, v8, *(a1 + 16), v6);
}

uint64_t RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation3D>::can_mix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && RB::GeometryStyle::Rotation3D::operator==(a1 + 64, a3 + 64))
  {
    return 4;
  }

  if (a3)
  {
    v6 = (a3 + 64);
  }

  else
  {
    v6 = 0;
  }

  return RB::GeometryStyle::Rotation3D::can_mix((a1 + 64), v6);
}

uint64_t RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation3D>::mix(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4)
{
  v7 = RB::Heap::emplace<RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation3D>,RB::GeometryStyle::Rotation3D const&>((*(*a4 + 8) + 16), a1 + 64);
  v8 = v6;
  if (a3)
  {
    v9 = a3 + 4;
  }

  else
  {
    v9 = 0;
  }

  v7.n128_u32[0] = *(a2 + 16);
  RB::GeometryStyle::Rotation3D::mix((v6 + 64), v9, v7.n128_f64[0]);
  return v8;
}

void *RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation3D>::encode(float32x4_t *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x6AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x1AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::GeometryStyle::Rotation3D::encode(a1 + 4, a2);
  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation3D>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "geometry");
  RB::GeometryStyle::Rotation3D::print((a1 + 8), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

__n128 RB::Heap::emplace<RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Rotation3D>,RB::GeometryStyle::Rotation3D const&>(RB::Heap *this, uint64_t a2)
{
  v4 = *(this + 3);
  v5 = (*(this + 2) + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v5 + 128 > v4)
  {
    v5 = RB::Heap::alloc_slow(this, 0x80uLL, 15);
  }

  else
  {
    *(this + 2) = v5 + 128;
  }

  *(v5 + 48) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = &unk_1F0A39638;
  result = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 48);
  *(v5 + 96) = *(a2 + 32);
  *(v5 + 112) = v8;
  *(v5 + 64) = result;
  *(v5 + 80) = v7;
  return result;
}

unsigned __int8 *RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Affine>::draw(uint64_t a1, RB::DisplayList::Builder *this, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  *(a4 + 2) = *(a1 + 32);
  v5 = *(a1 + 80);
  v7[0] = *(a1 + 64);
  v7[1] = v5;
  v7[2] = *(a1 + 96);
  return RB::DisplayList::Builder::affine_style_draw(this, a3, a4, a5, v7, *(a1 + 16), *(a1 + 24));
}

double RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Affine>::bounds(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(a1 + 80);
  v6[0] = *(a1 + 64);
  v6[1] = v4;
  v6[2] = *(a1 + 96);
  return RB::DisplayList::affine_style_bounds(a2, a1, a3, a4, v6);
}

void RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Affine>::map_roi(uint64_t a1, float32x2_t *this, float64x2_t *a3, uint64_t a4, const RB::AffineTransform *a5)
{
  v5 = *(a1 + 80);
  v6[0] = *(a1 + 64);
  v6[1] = v5;
  v6[2] = *(a1 + 96);
  RB::DisplayList::affine_style_roi(this, a3, v6, *(a1 + 16), a5);
}

uint64_t RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Affine>::can_mix(float64x2_t *a1, uint64_t a2, float64x2_t *a3)
{
  if (a3)
  {
    v3 = vandq_s8(vandq_s8(vceqq_f64(a1[5], a3[5]), vceqq_f64(a1[4], a3[4])), vceqq_f64(a1[6], a3[6]));
    if ((vandq_s8(vdupq_laneq_s64(v3, 1), v3).u64[0] & 0x8000000000000000) != 0)
    {
      return 4;
    }
  }

  if (a3)
  {
    v4 = &a3[4];
  }

  else
  {
    v4 = 0;
  }

  return RB::GeometryStyle::Affine::can_mix(&a1[4], v4, a3);
}

uint64_t RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Affine>::mix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  RB::Heap::emplace<RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Affine>,RB::GeometryStyle::Affine const&>((*(*a4 + 8) + 16), a1 + 64);
  v8 = v6;
  if (a3)
  {
    v9 = a3 + 64;
  }

  else
  {
    v9 = 0;
  }

  RB::GeometryStyle::Affine::mix((v6 + 64), v9, v7, *(a2 + 16));
  return v8;
}

void *RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Affine>::encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x6AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x2AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::GeometryStyle::Affine::encode((a1 + 8), a2);
  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Affine>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "geometry");
  RB::GeometryStyle::Affine::print((a1 + 8), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

__n128 RB::Heap::emplace<RB::DisplayList::GeometryMatrixStyle<RB::GeometryStyle::Affine>,RB::GeometryStyle::Affine const&>(RB::Heap *this, uint64_t a2)
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
  *v5 = &unk_1F0A36F70;
  result = *a2;
  v7 = *(a2 + 32);
  *(v5 + 80) = *(a2 + 16);
  *(v5 + 96) = v7;
  *(v5 + 64) = result;
  return result;
}

unint64_t RB::DisplayList::ItemFactory::Inner<RB::Coverage::Primitive>::operator()<RB::Fill::MeshGradient>(__int128 **a1, uint64_t a2)
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

  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::MeshGradient>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::MeshGradient const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v3, *v3, a1[1], a2, v3 + 1, v3 + 4, v3 + 10, v3 + 12);
  v5 = *a1;
  _S0 = *(*a1 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 150) = _H0;
  }

  *(v5 + 7) = result;
  if (v5[3])
  {
LABEL_3:
    *(result + 46) |= 0x2000u;
  }

  return result;
}

double RB::DisplayList::FilterStyle<RB::Filter::Distance>::bounds(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v17[0] = RB::DisplayList::Style::next_bounds(a1, a2, a3, a4);
  v17[1] = v5;
  v14[0] = xmmword_195E42760;
  v14[1] = xmmword_195E42770;
  v15 = 0;
  v16 = 0;
  *&v6 = *&RB::Rect::move(v17, v14, a1[2]);
  RB::Filter::Distance::dod((a1 + 7), v17, v6, v7, v8, v9, v10, v11);
  RB::Rect::move_identity(v17, v14);
  v12 = a1[3];
  if (v12)
  {
    RB::Rect::intersect(v17, *(v12 + 16), *(v12 + 24));
  }

  return *v17;
}

uint64_t RB::DisplayList::FilterStyle<RB::Filter::Distance>::can_mix(float32x2_t *a1, RB::DisplayList::Interpolator::Contents *a2, float32x2_t *a3)
{
  if (a3)
  {
    v3 = a3 + 7;
  }

  else
  {
    v3 = 0;
  }

  return RB::Filter::Distance::can_mix(a1 + 7, a2, v3);
}

float32x2_t *RB::DisplayList::FilterStyle<RB::Filter::Distance>::mix(uint64_t a1, const State *a2, float32x2_t *a3, const RB::DisplayList::CachedTransform *a4)
{
  RB::Heap::emplace<RB::DisplayList::FilterStyle<RB::Filter::Distance>,RB::Filter::Distance const&,RB::DisplayList::Builder &>((*(*a4 + 8) + 16), a1 + 56);
  v8 = v7;
  if (a3)
  {
    v9 = a3 + 7;
  }

  else
  {
    v9 = 0;
  }

  RB::Filter::Distance::mix(v7 + 7, a2, v9, a4);
  return v8;
}

void *RB::DisplayList::FilterStyle<RB::Filter::Distance>::encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x32uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x32uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::Filter::Distance::encode((a1 + 7), a2);
  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::FilterStyle<RB::Filter::Distance>::print(uint64_t a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "filter");
  RB::Filter::Distance::print((a1 + 56), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

RB::DisplayList::Item *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::HueRotation>::draw(uint64_t a1, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  result = RB::ColorStyle::HueRotation::test((a1 + 56), 0);
  if ((result & 1) == 0)
  {
    v11 = *(a2 + 1);
    v12 = *(a1 + 56);
    v13 = (v11[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v13 + 24 > v11[5])
    {
      v13 = RB::Heap::alloc_slow(v11 + 2, 0x18uLL, 7);
    }

    else
    {
      v11[4] = v13 + 24;
    }

    *v13 = &unk_1F0A3E7D0;
    *(v13 + 8) = 0;
    *(v13 + 16) = v12;
    result = RB::DisplayList::Builder::apply_color_matrix_fn(a2, a4, v13, *(a1 + 60), *(a1 + 16), *(a1 + 24));
    a4 = result;
  }

  if (a4)
  {
    *(a4 + 2) = *(a1 + 32);

    return RB::DisplayList::Builder::draw(a2, a4, a3, a5);
  }

  return result;
}

uint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::HueRotation>::can_mix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && *(a1 + 56) == *(a3 + 56))
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::HueRotation>::mix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  RB::Heap::emplace<RB::DisplayList::ColorFilterStyle<RB::ColorStyle::HueRotation>,RB::ColorStyle::HueRotation const&,unsigned int const&>((*(*a4 + 8) + 16), (a1 + 56), (a1 + 60));
  v7 = v6;
  if (a3)
  {
    v8 = (a3 + 56);
  }

  else
  {
    v8 = 0;
  }

  RB::ColorStyle::HueRotation::mix((v6 + 56), v8, *(a2 + 16));
  return v7;
}

void *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::HueRotation>::encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  v5 = a1;
  RB::ProtobufEncoder::encode_varint(a2, 0x52uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::DisplayList::ColorFilterStyle<RB::ColorStyle::HueRotation>::encode(RB::Encoder &)const::{lambda(RB::ColorStyle::HueRotation &)#1}::operator()<RB::Encoder>(&v5, a2);
  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::ColorFilterStyle<RB::ColorStyle::HueRotation>::print(uint64_t a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "color");
  v6 = *(a1 + 60);
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
  if ((*(a1 + 60) & 4) != 0)
  {
    RB::SexpString::print(this, 0, "premultiplied");
  }

  RB::ColorStyle::HueRotation::print((a1 + 56), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

double RB::Heap::emplace<RB::DisplayList::ColorFilterStyle<RB::ColorStyle::HueRotation>,RB::ColorStyle::HueRotation const&,unsigned int const&>(RB::Heap *this, _DWORD *a2, int *a3)
{
  v6 = *(this + 3);
  v7 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v7 + 64 > v6)
  {
    v7 = RB::Heap::alloc_slow(this, 0x40uLL, 7);
  }

  else
  {
    *(this + 2) = v7 + 64;
  }

  v8 = *a3;
  *(v7 + 48) = 0;
  result = 0.0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = &unk_1F0A39B00;
  *(v7 + 56) = *a2;
  *(v7 + 60) = v8;
  return result;
}

unint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::HueRotation>::copy(uint64_t a1, size_t *a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = (**v4)(v4, a2);
  }

  else
  {
    v5 = 0;
  }

  result = (a2[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (result + 24 > a2[3])
  {
    result = RB::Heap::alloc_slow(a2, 0x18uLL, 7);
  }

  else
  {
    a2[2] = result + 24;
  }

  *result = &unk_1F0A3E7D0;
  *(result + 8) = v5;
  *(result + 16) = *(a1 + 16);
  return result;
}

void RB::ColorStyle::MatrixFn<RB::ColorStyle::HueRotation>::color_matrix(uint64_t a1, float32x2_t *this, unsigned __int16 a3, uint64_t a4, float a5)
{
  RB::ColorMatrix::set_hue_rotate(this, *(a1 + 16));
  v10 = *(a1 + 8);
  if (v10)
  {
    (*(*v10 + 8))(v10, v14, a3, a4, a5);
    RB::operator*(v14, this, v12);
    v11 = v12[1];
    *this->f32 = v12[0];
    *this[2].f32 = v11;
    this[4] = v13;
  }
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::HueRotation>::color_info(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::HueRotation>::test(uint64_t a1, unsigned int a2)
{
  v4 = RB::ColorStyle::HueRotation::test((a1 + 16), a2);
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

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::HueRotation>::print(uint64_t a1, RB::SexpString *a2)
{
  RB::ColorStyle::HueRotation::print((a1 + 16), a2);
  result = *(a1 + 8);
  if (result)
  {
    v4 = *(*result + 32);

    return v4();
  }

  return result;
}

void *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::HueRotation>::encode(RB::Encoder &)const::{lambda(RB::ColorStyle::HueRotation &)#1}::operator()<RB::Encoder>(uint64_t *a1, RB::ProtobufEncoder *this)
{
  v3 = *a1;
  RB::ProtobufEncoder::encode_varint(this, 0x1AuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::ColorStyle::HueRotation::encode((v3 + 56), this);
  v4 = *(v3 + 60);
  if (v4)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x40uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
    v4 = *(v3 + 60);
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
  if ((*(v3 + 60) & 4) != 0)
  {
LABEL_4:
    RB::ProtobufEncoder::encode_varint(this, 0x50uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
  }

LABEL_5:

  return RB::ProtobufEncoder::end_length_delimited(this);
}

RB::DisplayList::Item *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Saturation>::draw(uint64_t a1, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  result = RB::ColorStyle::HueRotation::test((a1 + 56), 0);
  if ((result & 1) == 0)
  {
    v11 = *(a2 + 1);
    v12 = *(a1 + 56);
    v13 = (v11[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v13 + 24 > v11[5])
    {
      v13 = RB::Heap::alloc_slow(v11 + 2, 0x18uLL, 7);
    }

    else
    {
      v11[4] = v13 + 24;
    }

    *v13 = &unk_1F0A3E808;
    *(v13 + 8) = 0;
    *(v13 + 16) = v12;
    result = RB::DisplayList::Builder::apply_color_matrix_fn(a2, a4, v13, *(a1 + 60), *(a1 + 16), *(a1 + 24));
    a4 = result;
  }

  if (a4)
  {
    *(a4 + 2) = *(a1 + 32);

    return RB::DisplayList::Builder::draw(a2, a4, a3, a5);
  }

  return result;
}

uint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Saturation>::can_mix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && *(a1 + 56) == *(a3 + 56))
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Saturation>::mix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  RB::Heap::emplace<RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Saturation>,RB::ColorStyle::Saturation const&,unsigned int const&>((*(*a4 + 8) + 16), (a1 + 56), (a1 + 60));
  v7 = v6;
  if (a3)
  {
    v8 = (a3 + 56);
  }

  else
  {
    v8 = 0;
  }

  RB::ColorStyle::Saturation::mix((v6 + 56), v8, *(a2 + 16));
  return v7;
}

void *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Saturation>::encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  v5 = a1;
  RB::ProtobufEncoder::encode_varint(a2, 0x52uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Saturation>::encode(RB::Encoder &)const::{lambda(RB::ColorStyle::Saturation &)#1}::operator()<RB::Encoder>(&v5, a2);
  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Saturation>::print(uint64_t a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "color");
  v6 = *(a1 + 60);
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
  if ((*(a1 + 60) & 4) != 0)
  {
    RB::SexpString::print(this, 0, "premultiplied");
  }

  RB::ColorStyle::Saturation::print((a1 + 56), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

double RB::Heap::emplace<RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Saturation>,RB::ColorStyle::Saturation const&,unsigned int const&>(RB::Heap *this, _DWORD *a2, int *a3)
{
  v6 = *(this + 3);
  v7 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v7 + 64 > v6)
  {
    v7 = RB::Heap::alloc_slow(this, 0x40uLL, 7);
  }

  else
  {
    *(this + 2) = v7 + 64;
  }

  v8 = *a3;
  *(v7 + 48) = 0;
  result = 0.0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = &unk_1F0A39C10;
  *(v7 + 56) = *a2;
  *(v7 + 60) = v8;
  return result;
}

unint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::Saturation>::copy(uint64_t a1, size_t *a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = (**v4)(v4, a2);
  }

  else
  {
    v5 = 0;
  }

  result = (a2[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (result + 24 > a2[3])
  {
    result = RB::Heap::alloc_slow(a2, 0x18uLL, 7);
  }

  else
  {
    a2[2] = result + 24;
  }

  *result = &unk_1F0A3E808;
  *(result + 8) = v5;
  *(result + 16) = *(a1 + 16);
  return result;
}

void RB::ColorStyle::MatrixFn<RB::ColorStyle::Saturation>::color_matrix(uint64_t a1, float32x2_t *this, unsigned __int16 a3, uint64_t a4, float a5, double a6, double a7, double a8, double a9, float32x4_t a10, float32x4_t a11)
{
  RB::ColorMatrix::set_saturate(this, *(a1 + 16), a6, a7, a8, a9, a10, a11);
  v16 = *(a1 + 8);
  if (v16)
  {
    (*(*v16 + 8))(v16, v20, a3, a4, a5);
    RB::operator*(v20, this, v18);
    v17 = v18[1];
    *this->f32 = v18[0];
    *this[2].f32 = v17;
    this[4] = v19;
  }
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::Saturation>::color_info(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::Saturation>::test(uint64_t a1, unsigned int a2)
{
  v4 = RB::ColorStyle::HueRotation::test((a1 + 16), a2);
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

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::Saturation>::print(uint64_t a1, RB::SexpString *a2)
{
  RB::ColorStyle::Saturation::print((a1 + 16), a2);
  result = *(a1 + 8);
  if (result)
  {
    v4 = *(*result + 32);

    return v4();
  }

  return result;
}

void *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Saturation>::encode(RB::Encoder &)const::{lambda(RB::ColorStyle::Saturation &)#1}::operator()<RB::Encoder>(uint64_t *a1, RB::ProtobufEncoder *this)
{
  v3 = *a1;
  RB::ProtobufEncoder::encode_varint(this, 0x22uLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::ColorStyle::Saturation::encode((v3 + 56), this);
  v4 = *(v3 + 60);
  if (v4)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x40uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
    v4 = *(v3 + 60);
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
  if ((*(v3 + 60) & 4) != 0)
  {
LABEL_4:
    RB::ProtobufEncoder::encode_varint(this, 0x50uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
  }

LABEL_5:

  return RB::ProtobufEncoder::end_length_delimited(this);
}

RB::DisplayList::Item *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Brightness>::draw(uint64_t a1, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  result = RB::ColorStyle::HueRotation::test((a1 + 56), 0);
  if ((result & 1) == 0)
  {
    v11 = *(a2 + 1);
    v12 = *(a1 + 56);
    v13 = (v11[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v13 + 24 > v11[5])
    {
      v13 = RB::Heap::alloc_slow(v11 + 2, 0x18uLL, 7);
    }

    else
    {
      v11[4] = v13 + 24;
    }

    *v13 = &unk_1F0A3E840;
    *(v13 + 8) = 0;
    *(v13 + 16) = v12;
    result = RB::DisplayList::Builder::apply_color_matrix_fn(a2, a4, v13, *(a1 + 60), *(a1 + 16), *(a1 + 24));
    a4 = result;
  }

  if (a4)
  {
    *(a4 + 2) = *(a1 + 32);

    return RB::DisplayList::Builder::draw(a2, a4, a3, a5);
  }

  return result;
}

uint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Brightness>::can_mix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && *(a1 + 56) == *(a3 + 56))
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Brightness>::mix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  RB::Heap::emplace<RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Brightness>,RB::ColorStyle::Brightness const&,unsigned int const&>((*(*a4 + 8) + 16), (a1 + 56), (a1 + 60));
  v7 = v6;
  if (a3)
  {
    v8 = (a3 + 56);
  }

  else
  {
    v8 = 0;
  }

  RB::ColorStyle::HueRotation::mix((v6 + 56), v8, *(a2 + 16));
  return v7;
}

void *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Brightness>::encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  v5 = a1;
  RB::ProtobufEncoder::encode_varint(a2, 0x52uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Brightness>::encode(RB::Encoder &)const::{lambda(RB::ColorStyle::Brightness &)#1}::operator()<RB::Encoder>(&v5, a2);
  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Brightness>::print(uint64_t a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "color");
  v6 = *(a1 + 60);
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
  if ((*(a1 + 60) & 4) != 0)
  {
    RB::SexpString::print(this, 0, "premultiplied");
  }

  RB::ColorStyle::Brightness::print((a1 + 56), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

double RB::Heap::emplace<RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Brightness>,RB::ColorStyle::Brightness const&,unsigned int const&>(RB::Heap *this, _DWORD *a2, int *a3)
{
  v6 = *(this + 3);
  v7 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v7 + 64 > v6)
  {
    v7 = RB::Heap::alloc_slow(this, 0x40uLL, 7);
  }

  else
  {
    *(this + 2) = v7 + 64;
  }

  v8 = *a3;
  *(v7 + 48) = 0;
  result = 0.0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = &unk_1F0A39C98;
  *(v7 + 56) = *a2;
  *(v7 + 60) = v8;
  return result;
}

unint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::Brightness>::copy(uint64_t a1, size_t *a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = (**v4)(v4, a2);
  }

  else
  {
    v5 = 0;
  }

  result = (a2[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (result + 24 > a2[3])
  {
    result = RB::Heap::alloc_slow(a2, 0x18uLL, 7);
  }

  else
  {
    a2[2] = result + 24;
  }

  *result = &unk_1F0A3E840;
  *(result + 8) = v5;
  *(result + 16) = *(a1 + 16);
  return result;
}

void RB::ColorStyle::MatrixFn<RB::ColorStyle::Brightness>::color_matrix(uint64_t a1, __n64 *this, unsigned __int16 a3, uint64_t a4, int16x4_t a5)
{
  v6 = *a5.i32;
  a5.i32[0] = *(a1 + 16);
  RB::ColorMatrix::set_brightness(this, a5);
  v10 = *(a1 + 8);
  if (v10)
  {
    (*(*v10 + 8))(v10, v14, a3, a4, v6);
    RB::operator*(v14, this, v12);
    v11 = v12[1];
    *this->n64_u64 = v12[0];
    *this[2].n64_u64 = v11;
    this[4].n64_u64[0] = v13;
  }
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::Brightness>::color_info(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::Brightness>::test(uint64_t a1, unsigned int a2)
{
  v4 = RB::ColorStyle::HueRotation::test((a1 + 16), a2);
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

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::Brightness>::print(uint64_t a1, RB::SexpString *a2)
{
  RB::ColorStyle::Brightness::print((a1 + 16), a2);
  result = *(a1 + 8);
  if (result)
  {
    v4 = *(*result + 32);

    return v4();
  }

  return result;
}

void *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Brightness>::encode(RB::Encoder &)const::{lambda(RB::ColorStyle::Brightness &)#1}::operator()<RB::Encoder>(uint64_t *a1, RB::ProtobufEncoder *this)
{
  v3 = *a1;
  RB::ProtobufEncoder::encode_varint(this, 0x2AuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::ColorStyle::Saturation::encode((v3 + 56), this);
  v4 = *(v3 + 60);
  if (v4)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x40uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
    v4 = *(v3 + 60);
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
  if ((*(v3 + 60) & 4) != 0)
  {
LABEL_4:
    RB::ProtobufEncoder::encode_varint(this, 0x50uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
  }

LABEL_5:

  return RB::ProtobufEncoder::end_length_delimited(this);
}

RB::DisplayList::Item *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Contrast>::draw(uint64_t a1, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  result = RB::ColorStyle::HueRotation::test((a1 + 56), 0);
  if ((result & 1) == 0)
  {
    v11 = *(a2 + 1);
    v12 = *(a1 + 56);
    v13 = (v11[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v13 + 24 > v11[5])
    {
      v13 = RB::Heap::alloc_slow(v11 + 2, 0x18uLL, 7);
    }

    else
    {
      v11[4] = v13 + 24;
    }

    *v13 = &unk_1F0A3E878;
    *(v13 + 8) = 0;
    *(v13 + 16) = v12;
    result = RB::DisplayList::Builder::apply_color_matrix_fn(a2, a4, v13, *(a1 + 60), *(a1 + 16), *(a1 + 24));
    a4 = result;
  }

  if (a4)
  {
    *(a4 + 2) = *(a1 + 32);

    return RB::DisplayList::Builder::draw(a2, a4, a3, a5);
  }

  return result;
}

uint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Contrast>::can_mix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && *(a1 + 56) == *(a3 + 56))
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Contrast>::mix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  RB::Heap::emplace<RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Contrast>,RB::ColorStyle::Contrast const&,unsigned int const&>((*(*a4 + 8) + 16), (a1 + 56), (a1 + 60));
  v7 = v6;
  if (a3)
  {
    v8 = (a3 + 56);
  }

  else
  {
    v8 = 0;
  }

  RB::ColorStyle::Saturation::mix((v6 + 56), v8, *(a2 + 16));
  return v7;
}

void *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Contrast>::encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  v5 = a1;
  RB::ProtobufEncoder::encode_varint(a2, 0x52uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Contrast>::encode(RB::Encoder &)const::{lambda(RB::ColorStyle::Contrast &)#1}::operator()<RB::Encoder>(&v5, a2);
  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Contrast>::print(uint64_t a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "color");
  v6 = *(a1 + 60);
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
  if ((*(a1 + 60) & 4) != 0)
  {
    RB::SexpString::print(this, 0, "premultiplied");
  }

  RB::ColorStyle::Contrast::print((a1 + 56), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

double RB::Heap::emplace<RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Contrast>,RB::ColorStyle::Contrast const&,unsigned int const&>(RB::Heap *this, _DWORD *a2, int *a3)
{
  v6 = *(this + 3);
  v7 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v7 + 64 > v6)
  {
    v7 = RB::Heap::alloc_slow(this, 0x40uLL, 7);
  }

  else
  {
    *(this + 2) = v7 + 64;
  }

  v8 = *a3;
  *(v7 + 48) = 0;
  result = 0.0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = &unk_1F0A39858;
  *(v7 + 56) = *a2;
  *(v7 + 60) = v8;
  return result;
}

unint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::Contrast>::copy(uint64_t a1, size_t *a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = (**v4)(v4, a2);
  }

  else
  {
    v5 = 0;
  }

  result = (a2[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (result + 24 > a2[3])
  {
    result = RB::Heap::alloc_slow(a2, 0x18uLL, 7);
  }

  else
  {
    a2[2] = result + 24;
  }

  *result = &unk_1F0A3E878;
  *(result + 8) = v5;
  *(result + 16) = *(a1 + 16);
  return result;
}

void RB::ColorStyle::MatrixFn<RB::ColorStyle::Contrast>::color_matrix(uint64_t a1, __n64 *this, unsigned __int16 a3, uint64_t a4, float a5)
{
  RB::ColorMatrix::set_contrast(this, *(a1 + 16));
  v10 = *(a1 + 8);
  if (v10)
  {
    (*(*v10 + 8))(v10, v14, a3, a4, a5);
    RB::operator*(v14, this, v12);
    v11 = v12[1];
    *this->n64_u64 = v12[0];
    *this[2].n64_u64 = v11;
    this[4].n64_u64[0] = v13;
  }
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::Contrast>::color_info(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::Contrast>::test(uint64_t a1, unsigned int a2)
{
  v4 = RB::ColorStyle::HueRotation::test((a1 + 16), a2);
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

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::Contrast>::print(uint64_t a1, RB::SexpString *a2)
{
  RB::ColorStyle::Contrast::print((a1 + 16), a2);
  result = *(a1 + 8);
  if (result)
  {
    v4 = *(*result + 32);

    return v4();
  }

  return result;
}

void *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::Contrast>::encode(RB::Encoder &)const::{lambda(RB::ColorStyle::Contrast &)#1}::operator()<RB::Encoder>(uint64_t *a1, RB::ProtobufEncoder *this)
{
  v3 = *a1;
  RB::ProtobufEncoder::encode_varint(this, 0x32uLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::ColorStyle::Saturation::encode((v3 + 56), this);
  v4 = *(v3 + 60);
  if (v4)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x40uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
    v4 = *(v3 + 60);
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
  if ((*(v3 + 60) & 4) != 0)
  {
LABEL_4:
    RB::ProtobufEncoder::encode_varint(this, 0x50uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
  }

LABEL_5:

  return RB::ProtobufEncoder::end_length_delimited(this);
}

uint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::LuminanceToAlpha>::draw(uint64_t a1, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  result = RB::ColorStyle::LuminanceToAlpha::test(a1 + 56, 0);
  if ((result & 1) == 0)
  {
    v11 = *(a2 + 1);
    v12 = ((v11[4] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v12 + 24 > v11[5])
    {
      v12 = RB::Heap::alloc_slow(v11 + 2, 0x18uLL, 7);
    }

    else
    {
      v11[4] = v12 + 24;
    }

    *v12 = &unk_1F0A3E8B0;
    *(v12 + 1) = 0;
    result = RB::DisplayList::Builder::apply_color_matrix_fn(a2, a4, v12, *(a1 + 60), *(a1 + 16), *(a1 + 24));
    a4 = result;
  }

  if (a4)
  {
    *(a4 + 2) = *(a1 + 32);

    return RB::DisplayList::Builder::draw(a2, a4, a3, a5);
  }

  return result;
}

void *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::LuminanceToAlpha>::encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  v5 = a1;
  RB::ProtobufEncoder::encode_varint(a2, 0x52uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::DisplayList::ColorFilterStyle<RB::ColorStyle::LuminanceToAlpha>::encode(RB::Encoder &)const::{lambda(RB::ColorStyle::LuminanceToAlpha &)#1}::operator()<RB::Encoder>(&v5, a2);
  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::ColorFilterStyle<RB::ColorStyle::LuminanceToAlpha>::print(uint64_t a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "color");
  v6 = *(a1 + 60);
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
  if ((*(a1 + 60) & 4) != 0)
  {
    RB::SexpString::print(this, 0, "premultiplied");
  }

  RB::ColorStyle::LuminanceToAlpha::print((a1 + 56), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

double RB::Heap::emplace<RB::DisplayList::ColorFilterStyle<RB::ColorStyle::LuminanceToAlpha>,RB::ColorStyle::LuminanceToAlpha const&,unsigned int const&>(RB::Heap *this, uint64_t a2, int *a3)
{
  v5 = *(this + 3);
  v6 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v6 + 64 > v5)
  {
    v6 = RB::Heap::alloc_slow(this, 0x40uLL, 7);
  }

  else
  {
    *(this + 2) = v6 + 64;
  }

  v7 = *a3;
  *(v6 + 48) = 0;
  result = 0.0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = &unk_1F0A398E0;
  *(v6 + 60) = v7;
  return result;
}

void *RB::ColorStyle::MatrixFn<RB::ColorStyle::LuminanceToAlpha>::copy(uint64_t a1, size_t *a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = (**v3)(v3, a2);
  }

  else
  {
    v4 = 0;
  }

  result = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((result + 3) > a2[3])
  {
    result = RB::Heap::alloc_slow(a2, 0x18uLL, 7);
  }

  else
  {
    a2[2] = (result + 3);
  }

  *result = &unk_1F0A3E8B0;
  result[1] = v4;
  return result;
}

void RB::ColorStyle::MatrixFn<RB::ColorStyle::LuminanceToAlpha>::color_matrix(uint64_t a1, RB::ColorMatrix *this, unsigned __int16 a3, uint64_t a4, float a5)
{
  RB::ColorMatrix::set_luminance_to_alpha(this);
  v10 = *(a1 + 8);
  if (v10)
  {
    (*(*v10 + 8))(v10, v14, a3, a4, a5);
    RB::operator*(v14, this, v12);
    v11 = v12[1];
    *this = v12[0];
    *(this + 1) = v11;
    *(this + 4) = v13;
  }
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::LuminanceToAlpha>::color_info(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::LuminanceToAlpha>::test(uint64_t a1, unsigned int a2)
{
  v4 = RB::ColorStyle::LuminanceToAlpha::test(a1 + 16, a2);
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

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::LuminanceToAlpha>::print(uint64_t a1, RB::SexpString *a2)
{
  RB::ColorStyle::LuminanceToAlpha::print((a1 + 16), a2);
  result = *(a1 + 8);
  if (result)
  {
    v4 = *(*result + 32);

    return v4();
  }

  return result;
}

void *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::LuminanceToAlpha>::encode(RB::Encoder &)const::{lambda(RB::ColorStyle::LuminanceToAlpha &)#1}::operator()<RB::Encoder>(uint64_t *a1, RB::ProtobufEncoder *this)
{
  v3 = *a1;
  RB::ProtobufEncoder::encode_varint(this, 0x3AuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  v4 = *(v3 + 60);
  if (v4)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x40uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
    v4 = *(v3 + 60);
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
  if ((*(v3 + 60) & 4) != 0)
  {
LABEL_4:
    RB::ProtobufEncoder::encode_varint(this, 0x50uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
  }

LABEL_5:

  return RB::ProtobufEncoder::end_length_delimited(this);
}

RB::DisplayList::Item *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorInvert>::draw(uint64_t a1, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  result = RB::ColorStyle::ColorInvert::test((a1 + 56), 0);
  if ((result & 1) == 0)
  {
    v11 = *(a2 + 1);
    v12 = *(a1 + 56);
    v13 = (v11[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v13 + 24 > v11[5])
    {
      v13 = RB::Heap::alloc_slow(v11 + 2, 0x18uLL, 7);
    }

    else
    {
      v11[4] = v13 + 24;
    }

    *v13 = &unk_1F0A3E8E8;
    *(v13 + 8) = 0;
    *(v13 + 16) = v12;
    result = RB::DisplayList::Builder::apply_color_matrix_fn(a2, a4, v13, *(a1 + 60), *(a1 + 16), *(a1 + 24));
    a4 = result;
  }

  if (a4)
  {
    *(a4 + 2) = *(a1 + 32);

    return RB::DisplayList::Builder::draw(a2, a4, a3, a5);
  }

  return result;
}

uint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorInvert>::can_mix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && *(a1 + 56) == *(a3 + 56))
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorInvert>::mix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  RB::Heap::emplace<RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorInvert>,RB::ColorStyle::ColorInvert const&,unsigned int const&>((*(*a4 + 8) + 16), (a1 + 56), (a1 + 60));
  v7 = v6;
  if (a3)
  {
    v8 = (a3 + 56);
  }

  else
  {
    v8 = 0;
  }

  RB::ColorStyle::HueRotation::mix((v6 + 56), v8, *(a2 + 16));
  return v7;
}

void *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorInvert>::encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  v5 = a1;
  RB::ProtobufEncoder::encode_varint(a2, 0x52uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorInvert>::encode(RB::Encoder &)const::{lambda(RB::ColorStyle::ColorInvert &)#1}::operator()<RB::Encoder>(&v5, a2);
  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorInvert>::print(uint64_t a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "color");
  v6 = *(a1 + 60);
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
  if ((*(a1 + 60) & 4) != 0)
  {
    RB::SexpString::print(this, 0, "premultiplied");
  }

  RB::ColorStyle::ColorInvert::print((a1 + 56), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

double RB::Heap::emplace<RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorInvert>,RB::ColorStyle::ColorInvert const&,unsigned int const&>(RB::Heap *this, _DWORD *a2, int *a3)
{
  v6 = *(this + 3);
  v7 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v7 + 64 > v6)
  {
    v7 = RB::Heap::alloc_slow(this, 0x40uLL, 7);
  }

  else
  {
    *(this + 2) = v7 + 64;
  }

  v8 = *a3;
  *(v7 + 48) = 0;
  result = 0.0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = &unk_1F0A39B88;
  *(v7 + 56) = *a2;
  *(v7 + 60) = v8;
  return result;
}

unint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::ColorInvert>::copy(uint64_t a1, size_t *a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = (**v4)(v4, a2);
  }

  else
  {
    v5 = 0;
  }

  result = (a2[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (result + 24 > a2[3])
  {
    result = RB::Heap::alloc_slow(a2, 0x18uLL, 7);
  }

  else
  {
    a2[2] = result + 24;
  }

  *result = &unk_1F0A3E8E8;
  *(result + 8) = v5;
  *(result + 16) = *(a1 + 16);
  return result;
}

void RB::ColorStyle::MatrixFn<RB::ColorStyle::ColorInvert>::color_matrix(uint64_t a1, __n64 *this, unsigned __int16 a3, uint64_t a4, double a5)
{
  v6 = *&a5;
  LODWORD(a5) = *(a1 + 16);
  RB::ColorMatrix::set_color_invert(this, a5);
  v10 = *(a1 + 8);
  if (v10)
  {
    (*(*v10 + 8))(v10, v14, a3, a4, v6);
    RB::operator*(v14, this, v12);
    v11 = v12[1];
    *this->n64_u64 = v12[0];
    *this[2].n64_u64 = v11;
    this[4].n64_u64[0] = v13;
  }
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::ColorInvert>::color_info(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::ColorInvert>::test(uint64_t a1, unsigned int a2)
{
  v4 = RB::ColorStyle::ColorInvert::test((a1 + 16), a2);
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

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::ColorInvert>::print(uint64_t a1, RB::SexpString *a2)
{
  RB::ColorStyle::ColorInvert::print((a1 + 16), a2);
  result = *(a1 + 8);
  if (result)
  {
    v4 = *(*result + 32);

    return v4();
  }

  return result;
}

void *RB::DisplayList::ColorFilterStyle<RB::ColorStyle::ColorInvert>::encode(RB::Encoder &)const::{lambda(RB::ColorStyle::ColorInvert &)#1}::operator()<RB::Encoder>(uint64_t *a1, RB::ProtobufEncoder *this)
{
  v3 = *a1;
  RB::ProtobufEncoder::encode_varint(this, 0x4AuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::ColorStyle::HueRotation::encode((v3 + 56), this);
  v4 = *(v3 + 60);
  if (v4)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x40uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
    v4 = *(v3 + 60);
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
  if ((*(v3 + 60) & 4) != 0)
  {
LABEL_4:
    RB::ProtobufEncoder::encode_varint(this, 0x50uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
  }

LABEL_5:

  return RB::ProtobufEncoder::end_length_delimited(this);
}

unsigned __int8 *RB::DisplayList::FilterStyle<RB::Filter::RGBACurves>::draw(void *a1, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  v10 = a1[2];
  v11 = a1[3];
  RB::Heap::emplace<RB::DisplayList::GenericFilter<RB::Filter::RGBACurves>,RB::Filter::RGBACurves const&,RB::DisplayList::Builder &>((*(a2 + 1) + 16), (a1 + 8));
  result = RB::DisplayList::Builder::apply_filter_(a2, a4, v12, v10, v11);
  if (result)
  {
    *(result + 2) = a1[4];

    return RB::DisplayList::Builder::draw(a2, result, a3, a5);
  }

  return result;
}

double RB::DisplayList::FilterStyle<RB::Filter::RGBACurves>::bounds(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
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

uint64_t RB::DisplayList::FilterStyle<RB::Filter::RGBACurves>::can_mix(float32x4_t *a1, uint64_t a2, float32x4_t *a3)
{
  if (a3)
  {
    v3 = a3 + 4;
  }

  else
  {
    v3 = 0;
  }

  return RB::Filter::RGBACurves::can_mix(a1 + 4, a2, v3);
}

float32x4_t *RB::DisplayList::FilterStyle<RB::Filter::RGBACurves>::mix(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4)
{
  RB::Heap::emplace<RB::DisplayList::FilterStyle<RB::Filter::RGBACurves>,RB::Filter::RGBACurves const&,RB::DisplayList::Builder &>((*(*a4 + 8) + 16), a1 + 64);
  v7 = v6;
  if (a3)
  {
    v8 = a3 + 4;
  }

  else
  {
    v8 = 0;
  }

  RB::Filter::RGBACurves::mix(v6 + 4, a2, v8);
  return v7;
}

void *RB::DisplayList::FilterStyle<RB::Filter::RGBACurves>::encode(float32x4_t *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x32uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x2AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::Filter::RGBACurves::encode(a1 + 4, a2);
  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::FilterStyle<RB::Filter::RGBACurves>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "filter");
  RB::Filter::RGBACurves::print((a1 + 8), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

__n128 RB::Heap::emplace<RB::DisplayList::FilterStyle<RB::Filter::RGBACurves>,RB::Filter::RGBACurves const&,RB::DisplayList::Builder &>(RB::Heap *this, uint64_t a2)
{
  v4 = *(this + 3);
  v5 = (*(this + 2) + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v5 + 144 > v4)
  {
    v5 = RB::Heap::alloc_slow(this, 0x90uLL, 15);
  }

  else
  {
    *(this + 2) = v5 + 144;
  }

  *(v5 + 48) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = &unk_1F0A37198;
  *(v5 + 64) = *a2;
  result = *(a2 + 16);
  v7 = *(a2 + 32);
  v8 = *(a2 + 64);
  *(v5 + 112) = *(a2 + 48);
  *(v5 + 128) = v8;
  *(v5 + 80) = result;
  *(v5 + 96) = v7;
  return result;
}

__n128 RB::Heap::emplace<RB::DisplayList::GenericFilter<RB::Filter::RGBACurves>,RB::Filter::RGBACurves const&,RB::DisplayList::Builder &>(RB::Heap *this, uint64_t a2)
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

  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *v5 = &unk_1F0A37108;
  *(v5 + 32) = *a2;
  result = *(a2 + 16);
  v7 = *(a2 + 32);
  v8 = *(a2 + 64);
  *(v5 + 80) = *(a2 + 48);
  *(v5 + 96) = v8;
  *(v5 + 48) = result;
  *(v5 + 64) = v7;
  return result;
}

void RB::DisplayList::FilterStyle<RB::Filter::Custom>::~FilterStyle(uint64_t a1)
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

  JUMPOUT(0x19A8C09E0);
}

BOOL RB::DisplayList::FilterStyle<RB::Filter::Custom>::can_mix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (a3 + 64);
  }

  else
  {
    v3 = 0;
  }

  return RB::Filter::Custom::can_mix((a1 + 64), a2, v3);
}

unint64_t RB::DisplayList::FilterStyle<RB::Filter::Custom>::mix(uint64_t a1, float32_t *a2, uint64_t a3, const RB::DisplayList::CachedTransform *a4)
{
  v7 = RB::Heap::emplace<RB::DisplayList::FilterStyle<RB::Filter::Custom>,RB::Filter::Custom const&,RB::DisplayList::Builder &>((*(*a4 + 8) + 16), a1 + 64);
  v8 = v7;
  if (a3)
  {
    v9 = (a3 + 64);
  }

  else
  {
    v9 = 0;
  }

  RB::Filter::Custom::mix((v7 + 64), a2, v9, a4);
  return v8;
}

void *RB::DisplayList::FilterStyle<RB::Filter::Custom>::prepare_encode(uint64_t a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::prepare_encode(a1, a2);

  return RB::Filter::Custom::prepare_encode((a1 + 64), a2);
}

void *RB::DisplayList::FilterStyle<RB::Filter::Custom>::encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x32uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x22uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::Filter::Custom::encode((a1 + 8), a2);
  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::FilterStyle<RB::Filter::Custom>::print(uint64_t a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "filter");
  RB::Filter::Custom::print((a1 + 64), this);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

unint64_t RB::Heap::emplace<RB::DisplayList::FilterStyle<RB::Filter::Custom>,RB::Filter::Custom const&,RB::DisplayList::Builder &>(size_t *a1, uint64_t a2)
{
  v3 = (a1[2] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v3 + 304 > a1[3])
  {
    v3 = RB::Heap::alloc_slow(a1, 0x130uLL, 15);
  }

  else
  {
    a1[2] = v3 + 304;
  }

  *(v3 + 48) = 0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = &unk_1F0A3D330;
  *(v3 + 64) = *a2;
  RB::CustomShader::Closure::Closure((v3 + 72), (a2 + 8));
  v4 = *(a2 + 176);
  v5 = *(a2 + 192);
  v6 = *(a2 + 224);
  *(v3 + 272) = *(a2 + 208);
  *(v3 + 288) = v6;
  *(v3 + 240) = v4;
  *(v3 + 256) = v5;
  return v3;
}

void RB::DisplayList::GenericFilter<RB::Filter::Custom>::~GenericFilter(uint64_t a1)
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

  JUMPOUT(0x19A8C09E0);
}

uint64_t RB::ObjcEncoderDelegate::encode_message_f<NSData * RB::ObjcEncoderDelegate::encode_message<RB::DisplayList::Contents>(RB::DisplayList::Contents const&)::{lambda(RB::DisplayList::Contents&)#1},NSData * RB::ObjcEncoderDelegate::encode_message<RB::DisplayList::Contents>(RB::DisplayList::Contents const&)::{lambda(RB::DisplayList::Contents&)#2}>(id *a1, RB::DisplayList::Contents **a2, RB::DisplayList::Contents **a3)
{
  RB::ObjcEncoderDelegate::font_set(a1, &v16);
  v6 = v16;
  *v8 = 0u;
  *v9 = 0u;
  v10 = 0u;
  v11 = 0;
  v12 = a1;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1u, memory_order_relaxed);
  }

  v13 = v6;
  v14 = 0;
  RB::UntypedTable::UntypedTable(v15, 0, 0, 0, 0);
  v15[16] = atomic_fetch_add_explicit(&RB::Encoder::_last_encoder_id, 1u, memory_order_relaxed) + 1;
  v15[17] = 0;
  RB::DisplayList::Contents::prepare_encode(*a2, v8);
  RB::Encoder::prepare_fonts(v8);
  RB::DisplayList::Contents::encode(*a3, v8);
  if ((v11 & 1) == 0)
  {
    operator new();
  }

  RB::UntypedTable::~UntypedTable(v15);
  if (v13 && atomic_fetch_add_explicit((v13 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBEncoderSet init];
  }

  if (v9[1])
  {
    free(v9[1]);
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  if (v16 && atomic_fetch_add_explicit((v16 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBEncoderSet init];
  }

  return 0;
}

void sub_195DA8C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a25)
  {
    RB::ObjcEncoderDelegate::encode_message_f<NSData * RB::ObjcEncoderDelegate::encode_message<RB::DisplayList::Contents>(RB::DisplayList::Contents const&)::{lambda(RB::DisplayList::Contents&)#1},NSData * RB::ObjcEncoderDelegate::encode_message<RB::DisplayList::Contents>(RB::DisplayList::Contents const&)::{lambda(RB::DisplayList::Contents&)#2}>(a25);
  }

  RB::ProtobufEncoder::~ProtobufEncoder(&a17);
  v27 = *(v25 - 40);
  if (v27)
  {
    if (atomic_fetch_add_explicit((v27 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      [RBEncoderSet init];
    }
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN2RB19ObjcEncoderDelegate16encode_message_fIZNS0_14encode_messageINS_11DisplayList8ContentsEEEP6NSDataRKT_EUlRS7_E_ZNS2_IS4_EES6_S9_EUlSA_E0_EES6_S9_RKT0__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*v1)
    {
      free(*v1);
    }

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

void RB::Path::Renderer::render(uint64_t a1, void (**a2)(void, int32x2_t **, uint64_t, double, double), void (**a3)(void, int32x2_t **, uint64_t, double, double), char a4, unsigned int a5, float a6)
{
  v8[0] = &unk_1F0A377C8;
  v8[1] = a2;
  v8[2] = a3;
  v9 = a4;
  v10 = a6;
  v11 = a5;
  may_discard_shape = RB::may_discard_shape(a5, *(a1 + 9));
  RB::Path::Renderer::resolve(a1, v8, may_discard_shape);
}

{
  v8[0] = &unk_1F0A377E0;
  v8[1] = a2;
  v8[2] = a3;
  v9 = a4;
  v10 = a6;
  v11 = a5;
  may_discard_shape = RB::may_discard_shape(a5, *(a1 + 9));
  RB::Path::Renderer::resolve(a1, v8, may_discard_shape);
}

void RB::Path::Renderer::render(int32x2_t **a1, void (**a2)(void, int32x2_t **, uint64_t, double, double), void (**a3)(void, int32x2_t **, uint64_t, double, double), char a4, int a5, float a6)
{
  v6[0] = &unk_1F0A3E920;
  v6[1] = a2;
  v6[2] = a3;
  v7 = a4;
  v8 = a6;
  v9 = a5;
  RB::Path::Renderer::resolve(a1, v6, 1);
}

int32x2_t *RB::Path::Renderer::render(RB::Fill::Gradient const&,RB::AffineTransform const&,BOOL,float,RB::BlendMode)::Paint::fill(uint64_t a1, float32x2_t **a2, __int16 a3, int32x2_t a4, int32x2_t a5)
{
  v7 = a4;
  a4.i32[0] = 0;
  v9 = *a2;
  v10 = vceq_s32(a5, 0x8000000080000000);
  v11 = vdup_lane_s32(vcgt_s32(a4, vpmin_u32(v10, v10)), 0);
  RB::Coverage::set_plane(&v22, *a2, vbsl_s8(v11, 0x100000001000000, vcvt_f32_s32(v7)), COERCE_DOUBLE(vbsl_s8(v11, vneg_f32(0x80000000800000), vcvt_f32_s32(a5))));
  v12.i32[0] = *(a1 + 28);
  RB::Fill::Gradient::set_gradient(*(a1 + 8), (v23 + 12), v9, *(a1 + 16), v12);
  RB::RenderFrame::alloc_buffer_region(*(*v9 + 16), 0x54, 4uLL, 0, &v25);
  v13 = v25;
  if (v25)
  {
    v14 = *(v25 + 7) + v26.i64[0];
    v15 = v22;
    *(v14 + 16) = v23[0];
    v16 = v23[3];
    v17 = v23[2];
    v18 = v23[1];
    *(v14 + 80) = v24;
    *(v14 + 48) = v17;
    *(v14 + 64) = v16;
    *(v14 + 32) = v18;
    *v14 = v15;
  }

  else
  {
    v25 = 0;
    v26 = 0uLL;
  }

  v9[24].i32[0] = RB::RenderFrame::buffer_id(*(*v9 + 16), v13);
  *(&v9[24] + 4) = vmovn_s64(v26);
  if (v9[16].i32[1] == 2)
  {
    v19 = 131091;
  }

  else
  {
    v19 = 19;
  }

  v25 = (v19 & 0xFFFF003F | ((a3 & 0x3FF) << 6));
  RB::Fill::Gradient::set_fill_state(*(a1 + 8), &v25, v9, *(a1 + 28));
  v20 = HIDWORD(v25) & 0xFFFFFFC0 | *(a1 + 32) & 0x3F;
  LODWORD(v25) = v25 & 0xFFFEFFFF | ((*(a1 + 24) & 1) << 16);
  HIDWORD(v25) = v20;
  result = RB::RenderPass::draw_indexed_primitives(v9, v25, 4, **(*v9 + 16) + 136, 4uLL, 1uLL, v7, a5);
  v9[29] = 0;
  v9[28].i32[1] = 0;
  return result;
}

void RB::Path::Renderer::render(RB::Fill::MeshGradient const&,RB::AffineTransform const&,BOOL,float,RB::BlendMode)::Paint::fill(uint64_t a1, RB::RenderPass **a2, __int16 a3, int32x2_t a4, int32x2_t a5)
{
  v5[0] = a4;
  v5[1] = a5;
  RB::render_mesh_gradient(*a2, *(a1 + 16), *(a1 + 8), a3, *(a1 + 24), *(a1 + 32), v5, *(a1 + 28));
}

int32x2_t *RB::Path::Renderer::render(RB::Shader::Globals<RB::Shader::PlaneGlobals,RB::Shader::ImageGlobals> &,BOOL,RB::BlendMode)::Paint::fill(uint64_t a1, float32x2_t **a2, __int16 a3, int32x2_t a4, int32x2_t a5)
{
  v7 = a4;
  a4.i32[0] = 0;
  v9 = *a2;
  v10 = vceq_s32(a5, 0x8000000080000000);
  v11 = vdup_lane_s32(vcgt_s32(a4, vpmin_u32(v10, v10)), 0);
  RB::Coverage::set_plane(*(a1 + 8), *a2, vbsl_s8(v11, 0x100000001000000, vcvt_f32_s32(v7)), COERCE_DOUBLE(vbsl_s8(v11, vneg_f32(0x80000000800000), vcvt_f32_s32(a5))));
  if (v9[16].i32[1] == 2)
  {
    v12 = 131093;
  }

  else
  {
    v12 = 21;
  }

  v16 = (v12 & 0xFFFF003F | ((a3 & 0x3FF) << 6));
  RB::RenderState::set_image(&v16, *(a1 + 8) + 28, v9[16].i8[0]);
  v13 = HIDWORD(v16) & 0xFFFFFFC0 | *(a1 + 20) & 0x3F;
  LODWORD(v16) = v16 & 0xFFFEFFFF | ((*(a1 + 16) & 1) << 16);
  HIDWORD(v16) = v13;
  RB::Fill::set_image_globals(v9, *(a1 + 8), 0xBC, 4uLL, &v16, v14);
  return RB::RenderPass::draw_indexed_primitives(v9, v16, 4, **(*v9 + 16) + 136, 4uLL, 1uLL, v7, a5);
}

void RB::Path::Renderer::render(RB::Fill::Custom const&,RB::AffineTransform const&,BOOL,float,RB::BlendMode)::Paint::fill(uint64_t a1, RB::RenderPass **a2, __int16 a3, int32x2_t a4, int32x2_t a5)
{
  v9 = *a2;
  v10 = RB::Fill::Custom::function(*(a1 + 8), *a2);
  if (v10)
  {
    v11 = v10;
    RB::RenderFrame::alloc_buffer_region(*(*v9 + 16), (*(v10 + 28) + 56), 4uLL, 0, &v19);
    if (v19)
    {
      v12.i32[0] = 0;
      v13 = *(v19 + 7) + v20.i64[0];
      v14 = vceq_s32(a5, 0x8000000080000000);
      v15 = vdup_lane_s32(vcgt_s32(v12, vpmin_u32(v14, v14)), 0);
      RB::Coverage::set_plane(v13, v9, vbsl_s8(v15, 0x100000001000000, vcvt_f32_s32(a4)), COERCE_DOUBLE(vbsl_s8(v15, vneg_f32(0x80000000800000), vcvt_f32_s32(a5))));
      if (RB::Fill::Custom::set_custom(*(a1 + 8), (v13 + 28), v11, v13 + 56, v9, *(a1 + 16), *(a1 + 28)))
      {
        *(v9 + 48) = RB::RenderFrame::buffer_id(*(*v9 + 16), v19);
        *(v9 + 196) = vmovn_s64(v20);
        if (*(v9 + 33) == 2)
        {
          v16 = 131094;
        }

        else
        {
          v16 = 22;
        }

        v18 = (v16 & 0xFFFF003F | ((a3 & 0x3FF) << 6));
        RB::Fill::Custom::set_fill_state(*(a1 + 8), &v18, v11, v9);
        v17 = HIDWORD(v18) & 0xFFFFFFC0 | *(a1 + 32) & 0x3F;
        LODWORD(v18) = v18 & 0xFFFEFFFF | ((*(a1 + 24) & 1) << 16);
        HIDWORD(v18) = v17;
        RB::RenderPass::draw_indexed_primitives(v9, v18, 4, **(*v9 + 16) + 136, 4uLL, 1uLL, a4, a5);
        RB::Fill::Custom::reset_custom(*(a1 + 8), v9);
      }
    }
  }
}

uint64_t RB::CommitMarker::Observer::test_displayed(RB::CommitMarker::Observer *this, int a2, CFTimeInterval a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(this + 40))
  {
    return 1;
  }

  os_unfair_lock_lock(this + 8);
  v7 = *(this + 9);
  if (v7 == -1)
  {
    os_unfair_lock_unlock(this + 8);
    return 0;
  }

  else
  {
    if (a3 < 0.0)
    {
      a3 = CACurrentMediaTime();
    }

    v8 = *(this + 3) - a3;
    os_unfair_lock_unlock(this + 8);
    if (v8 <= 0.0)
    {
      goto LABEL_7;
    }

    v10 = 0.0;
    if (a2)
    {
      v10 = v8;
    }

    v9 = [*(this + 2) waitForCommitId:v7 timeout:v10];
    if ((v9 & 1) != 0 || a2)
    {
LABEL_7:
      v3 = 1;
      *(this + 40) = 1;
    }

    else
    {
      v3 = 0;
    }

    v11 = RB::shared_surface_log(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134219266;
      v12 = "tested";
      if (a2)
      {
        v12 = "waited";
      }

      v13 = "in-flight";
      if (v3)
      {
        v13 = "done";
      }

      v14 = *(this + 3);
      v18 = *(this + 2);
      v19 = 2082;
      v20 = v12;
      v21 = 1024;
      v22 = v7;
      if (v8 > 0.0)
      {
        v15 = v13;
      }

      else
      {
        v15 = "deadline-passed";
      }

      v23 = 2082;
      v24 = v15;
      v25 = 2048;
      v26 = a3;
      v27 = 2048;
      v28 = v14;
      _os_log_impl(&dword_195CE8000, v11, OS_LOG_TYPE_DEFAULT, "%p: %{public}s for %u -> %{public}s (%f vs %f)\n", &v17, 0x3Au);
    }
  }

  return v3;
}

uint64_t RB::Refcount<RB::CommitMarker::Observer,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return [(RBCommitObserverArray *)result .cxx_destruct];
  }

  return result;
}

char *RB::FontMixer::get_info(RB::FontMixer *this, CGFont *a2, CGFont *a3)
{
  Identifier = CGFontGetIdentifier();
  v7 = CGFontGetIdentifier();
  v8 = 0;
  v9 = 0;
  v10 = ~((v7 ^ Identifier) << 32) + (v7 ^ Identifier);
  v11 = (v10 ^ (v10 >> 22)) + ~((v10 ^ (v10 >> 22)) << 13);
  v12 = (9 * (v11 ^ (v11 >> 8))) ^ ((9 * (v11 ^ (v11 >> 8))) >> 15);
  v13 = (v12 - 1) ^ ((v12 + ~(v12 << 27)) >> 31);
  v14 = 4 * (v13 & 7);
  v15 = this + 128 * (v13 & 7) + 16;
  v16 = (this + 24);
  v17 = 0x80000000;
  do
  {
    if (*v15 == Identifier)
    {
      v18 = *(this + 1);
      if (*(v15 + 1) == v7)
      {
        *(this + 1) = v18 + 1;
        *(v15 + 2) = v18 + 1;
        return v15;
      }
    }

    else
    {
      v18 = *(this + 1);
    }

    v19 = *v16;
    v16 += 8;
    v20 = v18 - v19;
    if (v18 - v19 > v17)
    {
      v9 = v8;
      v17 = v20;
    }

    ++v8;
    v15 += 32;
  }

  while (v8 != 4);
  v15 = this + 32 * v9 + 32 * v14 + 16;
  *v15 = Identifier | (v7 << 32);
  *(this + 1) = v18 + 1;
  *(v15 + 2) = v18 + 1;
  *(v15 + 6) = 0;
  v21 = [RBDecodedFontMetadata fontMetadata:a2];
  if (v21)
  {
    v22 = [(RBDecodedFontMetadata *)v21 fontUID];
    if (v22)
    {
      v23 = CFRetain(v22);
    }

    else
    {
      v23 = 0;
    }

    v15[13] = 1;
  }

  else
  {
    v23 = CGFontCopyName();
  }

  v24 = [RBDecodedFontMetadata fontMetadata:a3];
  if (v24)
  {
    v25 = [(RBDecodedFontMetadata *)v24 fontUID];
    if (v25)
    {
      v26 = CFRetain(v25);
    }

    else
    {
      v26 = 0;
    }

    v15[13] = 1;
    if (v23)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = CGFontCopyName();
    if (v23)
    {
LABEL_23:
      if (v26)
      {
        if (CFEqual(v23, v26))
        {
          v15[12] = 1;
          *(v15 + 3) = CGFontGetVariationAxes();
        }

        CFRelease(v26);
      }

      v27 = v23;
      goto LABEL_28;
    }
  }

  if (v26)
  {
    v27 = v26;
LABEL_28:
    CFRelease(v27);
  }

  return v15;
}

void sub_195DA98B4(_Unwind_Exception *a1)
{
  CFRelease(v1);
  CFRelease(v2);
  _Unwind_Resume(a1);
}

CFTypeRef *RB::cf_ptr<RB::cf_ptr<CGFont *>>::~cf_ptr(CFTypeRef *a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    if (*a1)
    {
      CFRelease(*a1);
    }
  }

  return a1;
}

void sub_195DA9918(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    CFRelease(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<RB::vector<RB::Symbol::Presentation::KeyframeInfo,0ul,unsigned long>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    if (*(v2 + 8))
    {
      v4 = 0;
      v5 = v3 + 2;
      do
      {
        std::unique_ptr<RB::Symbol::KeyframeStorage>::reset[abi:nn200100](v5, 0);
        ++v4;
        v5 += 3;
      }

      while (v4 < *(v2 + 8));
      v3 = *v2;
    }

    if (v3)
    {
      free(v3);
    }

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

void RB::Symbol::Presentation::apply_interpolations(RB::Symbol::Presentation *this)
{
  v152 = *MEMORY[0x1E69E9840];
  v1 = *(this + 252);
  if (v1 >= 2)
  {
    v2 = this;
    v3 = this + 8;
    v146 = 0;
    v4 = (v1 - 1);
    v127 = this;
    v124 = this + 8;
    while (1)
    {
      v5 = v1 - 1;
      if (*(v2 + 125))
      {
        v6 = *(v2 + 125);
      }

      else
      {
        v6 = v3;
      }

      v7 = &v6[496 * v5];
      v8 = *(v7 + 58);
      if (!v8)
      {
        goto LABEL_164;
      }

      v9 = *(v2 + 252);
      if (v1 + 1 != v9)
      {
        if (v5 < v9)
        {
          v17 = *v8;
          if (*v8 < 0.0)
          {
            v17 = 0.0;
          }

          if (v17 > 1.0)
          {
            v17 = 1.0;
          }

          v18 = v4;
          do
          {
            if (v18 == v5)
            {
              v19 = v17;
            }

            else
            {
              v19 = 1.0 - v17;
            }

            v20 = &v6[496 * v18];
            v21 = v20 + 8;
            if (*(v20 + 55))
            {
              v21 = *(v20 + 55);
            }

            v22 = *(v20 + 112);
            if (v22)
            {
              v23 = (v21 + 40);
              v24 = 144 * v22;
              do
              {
                *v23 = *v23 * v19;
                v23 += 36;
                v24 -= 144;
              }

              while (v24);
            }

            ++v18;
          }

          while (v9 != v18);
        }

        goto LABEL_163;
      }

      v10 = &v6[496 * v1];
      v129 = *(v7 + 58);
      if (*(v8 + 8) == 1 && (this = *(*v10 + 16)) != 0 && *(*v7 + 16) && ((*(*v7 + 104) ^ *(*v10 + 104)) & 0x20000FF) == 0)
      {
        this = [(RB::Symbol::Presentation *)this canBeInterpolatedWith:?];
        v126 = this;
      }

      else
      {
        v126 = 0;
      }

      v11 = *(v10 + 112);
      v131 = (v10 + 8);
      v132 = (v7 + 8);
      v12 = (*(v7 + 112) + v11);
      v145 = 0;
      v128 = &v6[496 * v1];
      v125 = v4;
      v130 = v1;
      if (v12 <= 0x200)
      {
        MEMORY[0x1EEE9AC00](this, 8 * v12);
        v13 = &v123 - ((v25 + 15) & 0xFFFFFFFF0);
        bzero(v13, v25);
        v143 = v13;
        v144 = 0;
      }

      else
      {
        v13 = malloc_type_malloc(8 * v12, 0x1000040789AEA99uLL);
        v143 = v13;
        v144 = 1;
        if (!v13)
        {
          v14 = 0;
          v15 = v127;
          v16 = v126;
          goto LABEL_88;
        }
      }

      v147 = &v143;
      v148 = &v145;
      v149 = v12;
      v26 = *(v10 + 112);
      v27 = *(v7 + 112);
      if (*&v6[496 * v1 + 440])
      {
        v28 = *&v6[496 * v1 + 440];
      }

      else
      {
        v28 = v131;
      }

      if (*(v7 + 55))
      {
        v29 = *(v7 + 55);
      }

      else
      {
        v29 = v132;
      }

      v30 = *(v129 + 12);
      if (v30)
      {
        v31 = *(v129 + 16);
        if (v26)
        {
          v32 = 0;
          v33 = *v28;
          v34 = *(v129 + 12) & 0x3FF;
          v35 = v145;
          while ((v34 & *(v33 + 104)) == v31)
          {
            if (v35 < v12)
            {
              v36 = &v13[8 * v35++];
              v145 = v35;
              *v36 = v32;
              *(v36 + 2) = 1;
            }

            if (v26 == ++v32)
            {
              v37 = 0;
              v32 = v26;
              goto LABEL_49;
            }
          }

          v37 = v26 - v32;
          v45 = v26 - 1;
          do
          {
            if ((v34 & *(v28[18 * v45] + 104)) != v31)
            {
              break;
            }

            --v45;
            --v37;
          }

          while (v37);
        }

        else
        {
          v37 = 0;
          v32 = 0;
        }

LABEL_49:
        if (v27)
        {
          v39 = 0;
          v40 = *v29;
          v41 = v30 & 0x3FF;
          v42 = v145;
          v43 = v149;
          while ((v41 & *(v40 + 104)) == v31)
          {
            if (v42 < v43)
            {
              v44 = &v13[8 * v42++];
              v145 = v42;
              *v44 = v39;
              *(v44 + 2) = 0;
            }

            if (v27 == ++v39)
            {
              goto LABEL_55;
            }
          }

          v38 = v27 - v39;
          v46 = v27 - 1;
          do
          {
            if ((v41 & *(v29[18 * v46] + 104)) != v31)
            {
              break;
            }

            --v46;
            --v38;
          }

          while (v38);
          v27 = v39;
        }

        else
        {
LABEL_55:
          v38 = 0;
        }

        v26 = v37;
      }

      else
      {
        v32 = 0;
        v38 = *(v7 + 112);
        v27 = 0;
      }

      v133 = &v147;
      v134 = __PAIR64__(v27, v32);
      v47 = v27;
      if (!RB::lcs_diff<RB::Symbol::Presentation::Layer,RB::Symbol::Presentation::apply_interpolations(void)::$_2,RB::Symbol::Presentation::apply_interpolations(void)::$_3>(v26, v28, v38, v29, &v133))
      {
        if (v26)
        {
          v49 = v147;
          v48 = v148;
          v50 = *v148;
          v51 = v32;
          v52 = v26;
          do
          {
            if (v50 < v149)
            {
              v53 = v50 + 1;
              *v48 = v50 + 1;
              v54 = *v49 + 8 * v50;
              *v54 = v51;
              *(v54 + 4) = 257;
              v50 = v53;
            }

            ++v51;
            --v52;
          }

          while (v52);
        }

        if (v38)
        {
          v56 = v147;
          v55 = v148;
          v57 = *v148;
          v58 = v47;
          v59 = v38;
          do
          {
            if (v57 < v149)
            {
              v60 = v57 + 1;
              *v55 = v57 + 1;
              v61 = *v56 + 8 * v57;
              *v61 = v58;
              *(v61 + 4) = 256;
              v57 = v60;
            }

            ++v58;
            --v59;
          }

          while (v59);
        }
      }

      v16 = v126;
      if (*(v129 + 12))
      {
        v62 = v32 + v26;
        v63 = v128;
        v64 = *(v128 + 112);
        if (v32 + v26 < v64)
        {
          v66 = v147;
          v65 = v148;
          v67 = *v148;
          do
          {
            if (v67 < v149)
            {
              *v65 = v67 + 1;
              v68 = *v66 + 8 * v67;
              *v68 = v62;
              *(v68 + 4) = 1;
              v64 = *(v63 + 112);
              ++v67;
            }

            ++v62;
          }

          while (v62 < v64);
        }

        v69 = v47 + v38;
        v70 = *(v7 + 112);
        if (v47 + v38 < v70)
        {
          v72 = v147;
          v71 = v148;
          v73 = *v148;
          do
          {
            if (v73 < v149)
            {
              *v71 = v73 + 1;
              v74 = *v72 + 8 * v73;
              *v74 = v69;
              *(v74 + 4) = 0;
              v70 = *(v7 + 112);
              ++v73;
            }

            ++v69;
          }

          while (v69 < v70);
        }
      }

      v14 = v143;
      v15 = v127;
      v10 = v128;
LABEL_88:
      v75 = *v129;
      if (*v129 < 0.0)
      {
        v75 = 0.0;
      }

      v150 = 0;
      v151 = 0x300000000;
      if (v75 <= 1.0)
      {
        v76 = v75;
      }

      else
      {
        v76 = 1.0;
      }

      v133 = v15;
      v134 = v10;
      v135 = &v6[496 * v5];
      v136 = v129;
      v137 = &v147;
      v138 = &v142 + 4;
      v139 = &v142;
      v140 = v16;
      v141 = &v146;
      v142 = 0;
      if (v145)
      {
        v77 = &v14[2 * v145];
        do
        {
          if (*(v14 + 4))
          {
            v78 = *v14;
          }

          else
          {
            v78 = -1;
          }

          if (*(v14 + 4))
          {
            v79 = -1;
          }

          else
          {
            v79 = *v14;
          }

          while (1)
          {
            v80 = v142;
            v81 = HIDWORD(v142);
            if (HIDWORD(v142) >= v78 || v142 >= v79)
            {
              break;
            }

            RB::Symbol::Presentation::apply_interpolations(void)::$_4::operator()(&v133);
          }

          if (*(v14 + 4) == 1)
          {
            ++HIDWORD(v142);
            v84 = v130;
            v83 = v131;
          }

          else
          {
            LODWORD(v142) = v142 + 1;
            v84 = v5;
            v83 = v132;
            v81 = v80;
          }

          if (*&v6[496 * v84 + 440])
          {
            v85 = *&v6[496 * v84 + 440];
          }

          else
          {
            v85 = v83;
          }

          v86 = v151;
          if (HIDWORD(v151) < (v151 + 1))
          {
            RB::vector<RB::Symbol::Presentation::Layer,3ul,unsigned int>::reserve_slow(&v147, v151 + 1);
            v86 = v151;
          }

          v87 = &v85[18 * v81];
          v88 = v150;
          if (!v150)
          {
            v88 = &v147;
          }

          v89 = &v88[18 * v86];
          *v89 = *v87;
          v89[1] = v87[1];
          v90 = *(v87 + 1);
          v91 = *(v87 + 2);
          v92 = *(v87 + 4);
          *(v89 + 3) = *(v87 + 3);
          *(v89 + 4) = v92;
          *(v89 + 1) = v90;
          *(v89 + 2) = v91;
          v93 = *(v87 + 5);
          v94 = *(v87 + 6);
          v95 = *(v87 + 8);
          *(v89 + 7) = *(v87 + 7);
          *(v89 + 8) = v95;
          *(v89 + 5) = v93;
          *(v89 + 6) = v94;
          v96 = v151;
          LODWORD(v151) = v151 + 1;
          if (*(v14 + 5) == 1)
          {
            v97 = v150;
            if (!v150)
            {
              v97 = &v147;
            }

            if (*(v14 + 4))
            {
              v98 = 1.0 - v76;
            }

            else
            {
              v98 = v76;
            }

            *&v97[18 * v96 + 5] = *&v97[18 * v96 + 5] * v98;
          }

          v14 += 2;
        }

        while (v14 != v77);
      }

      v3 = v124;
      v99 = v128;
      while (HIDWORD(v142) < *(v99 + 112))
      {
        v100 = *(v7 + 112);
        if (v142 >= v100)
        {
          goto LABEL_129;
        }

        RB::Symbol::Presentation::apply_interpolations(void)::$_4::operator()(&v133);
      }

      v100 = *(v7 + 112);
LABEL_129:
      v2 = v127;
      v101 = *(v7 + 55);
      *(v7 + 55) = v150;
      v150 = v101;
      *(v7 + 112) = v151;
      LODWORD(v151) = v100;
      v102 = *(v7 + 113);
      *(v7 + 113) = HIDWORD(v151);
      HIDWORD(v151) = v102;
      RB::vector<RB::Symbol::Presentation::Layer,3ul,unsigned int>::swap_inline(v132, &v147);
      v103 = *(v2 + 125);
      if (v103)
      {
        v104 = *(v2 + 125);
      }

      else
      {
        v104 = v3;
      }

      v105 = &v104[496 * v5 + 496];
      v106 = *v105;
      if (*v105)
      {
        v107 = *(v2 + 550);
        v108 = v107 + 1;
        if (*(v2 + 551) < v107 + 1)
        {
          RB::vector<RB::objc_ptr<void({block_pointer})(RBFill *,CGRect)>,0ul,unsigned int>::reserve_slow(v2 + 2192, v108);
          v107 = *(v2 + 550);
          v106 = *v105;
          v103 = *(v2 + 125);
          v108 = v107 + 1;
        }

        *(*(v2 + 274) + 8 * v107) = v106;
        *v105 = 0;
        *(v2 + 550) = v108;
      }

      v109 = *(v105 + 456);
      if (v103)
      {
        v110 = v103;
      }

      else
      {
        v110 = v3;
      }

      *(v105 + 456) = 0;
      *(v105 + 464) = 0;
      if (v109)
      {
        std::default_delete<RB::vector<RB::Symbol::Glyph::StrokeRange,4ul,unsigned int>>::operator()[abi:nn200100](v105 + 456, v109);
      }

      v111 = v105 + 8;
      v112 = *(v105 + 440);
      if (v112)
      {
        v111 = *(v105 + 440);
      }

      if (*(v105 + 448))
      {
        v113 = 0;
        v114 = (v111 + 8);
        do
        {
          v115 = *v114;
          v114 += 18;

          ++v113;
        }

        while (v113 < *(v105 + 448));
        v112 = *(v105 + 440);
      }

      if (v112)
      {
        free(v112);
      }

      v116 = *v105;
      if (*v105 && atomic_fetch_add_explicit((v116 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::Symbol::Presentation::Presentation(v116);
      }

      v117 = (*(v2 + 252) - 1);
      *(v2 + 252) = v117;
      v118 = v117 - 0xEF7BDEF7BDEF7BDFLL * ((v105 - v110) >> 4);
      if (v118)
      {
        memmove(v105, (v105 + 496), 496 * v118);
      }

      this = v150;
      v119 = &v147;
      if (v150)
      {
        v119 = v150;
      }

      if (v151)
      {
        v120 = 0;
        v121 = (v119 + 1);
        v4 = v125;
        do
        {
          v122 = *v121;
          v121 += 18;

          ++v120;
        }

        while (v120 < v151);
        this = v150;
        if (!v150)
        {
          goto LABEL_161;
        }

LABEL_160:
        free(this);
        goto LABEL_161;
      }

      v4 = v125;
      if (v150)
      {
        goto LABEL_160;
      }

LABEL_161:
      if (v144 == 1)
      {
        free(v143);
      }

LABEL_163:
      *(v7 + 58) = 0;
      v7[488] = 1;
LABEL_164:
      --v4;
      v1 = v5;
      if (!v5)
      {

        return;
      }
    }
  }
}

void RB::Symbol::Presentation::print(RB::Symbol::Presentation *this, RB::SexpString *a2, os_unfair_lock_t lock, char a4)
{
  if (a4)
  {
    locka = 0;
  }

  else
  {
    os_unfair_lock_lock(lock);
    locka = lock;
  }

  RB::SexpString::push(a2, "symbol-presentation");
  RB::SexpString::printf(a2, 0, "(time %.4f)", *&lock[10]._os_unfair_lock_opaque);
  v6 = *(this + 270);
  if (v6 != 0.0)
  {
    RB::SexpString::printf(a2, 0, "(max-velocity %d)", (v6 + 0.5));
  }

  v7 = *(this + 64);
  v8 = *(this + 66);
  v9 = vandq_s8(vandq_s8(vceqq_f64(*(this + 65), xmmword_195E42770), vceqq_f64(v7, xmmword_195E42760)), vceqzq_f64(v8));
  if ((vandq_s8(vdupq_laneq_s64(v9, 1), v9).u64[0] & 0x8000000000000000) == 0)
  {
    RB::SexpString::printf(a2, 0, "(transform %g %g %g %g %.2f %.2f)", v7.f64[0], v7.f64[1], *(this + 130), *(this + 131), v8.f64[0], v8.f64[1]);
  }

  if (*&lock[6]._os_unfair_lock_opaque)
  {
    RB::SexpString::push(a2, "animations");
    v10 = *&lock[6]._os_unfair_lock_opaque;
    if (v10)
    {
      v11 = *&lock[4]._os_unfair_lock_opaque;
      v12 = v11 + 88 * v10;
      do
      {
        v13 = *(v11 + 4);
        v14 = "unknown";
        if (v13 <= 0xE)
        {
          v14 = off_1E744CA68[v13];
        }

        RB::SexpString::push(a2, v14);
        RB::SexpString::printf(a2, 0, "(id %u)", *v11);
        if ((*(v11 + 48) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          RB::SexpString::printf(a2, 0, "(begin %.4f)", *(v11 + 48));
        }

        v15 = *(v11 + 24);
        if (v15 != 1.0)
        {
          RB::SexpString::printf(a2, 0, "(speed %g)", v15);
        }

        v16 = *(v11 + 12);
        if ((v16 & 0x800) != 0)
        {
          RB::SexpString::printf(a2, 0, "(repeat %g)", *(v11 + 28));
          v16 = *(v11 + 12);
        }

        if ((v16 & 0xF800B010) != 0)
        {
          RB::SexpString::push(a2, "flags");
          v17 = &unk_1E744C7D0;
          v18 = 28;
          do
          {
            if ((*(v17 - 2) >> *(v11 + 4)))
            {
              v19 = *(v17 - 1);
              v20 = *(v11 + 12);
              if (v19 ? (v20 & v19) == *v17 : v20 & *v17)
              {
                RB::SexpString::print(a2, 0, *(v17 + 1));
              }
            }

            v17 += 24;
            --v18;
          }

          while (v18);
          RB::SexpString::pop(a2);
        }

        v22 = *(v11 + 40);
        v23 = vmvn_s8(vceqz_f32(v22));
        if ((vpmax_u32(v23, v23).u32[0] & 0x80000000) != 0)
        {
          RB::SexpString::printf(a2, 0, "(axis (%g . %g))", v22.f32[0], v22.f32[1]);
        }

        v24 = *(this + 273);
        if (v24)
        {
          v25 = v24[1];
          if (v25)
          {
            v26 = *v24;
            v27 = *v24 + 24 * v25;
            do
            {
              if (*v26 == *v11)
              {
                RB::SexpString::push(a2, "keyframes");
                v28 = *(v26 + 4);
                if ((v28 & 0x300) != 0)
                {
                  if ((v28 & 0x100) != 0)
                  {
                    v29 = "from";
                  }

                  else
                  {
                    v29 = "to";
                  }

                  RB::SexpString::printf(a2, 0, "(symbol %s)", v29);
                }

                v30 = *(v26 + 8);
                if (!v30)
                {
                  v30 = RB::Symbol::KeyframeStorage::commit(*(v26 + 16));
                }

                for (i = *v30; (i & 0x1F) != 0; i = v32)
                {
                  RB::Symbol::Keyframes::print(v30, a2, *(v26 + 4), *(v26 + 16));
                  v32 = *(v30 + 24);
                  v30 = (v30 + 24);
                }

                RB::SexpString::pop(a2);
              }

              v26 += 24;
            }

            while (v26 != v27);
          }
        }

        RB::SexpString::pop(a2);
        v11 += 88;
      }

      while (v11 != v12);
    }

    RB::SexpString::pop(a2);
  }

  if (*(this + 252))
  {
    RB::SexpString::push(a2, "symbols");
    v33 = *(this + 252);
    __asm { FMOV            V12.2S, #1.0 }

    while (v33)
    {
      --v33;
      v39 = *(this + 125);
      if (!v39)
      {
        v39 = this + 8;
      }

      v40 = &v39[496 * v33];
      v41 = RB::Symbol::Model::glyph_info(*v40);
      [*&(*v40)[2] pointSize];
      RB::SexpString::printf(a2, 0, "(size %g)", v42);
      v43 = *(v41 + 24);
      v44 = "unknown";
      if (v43 <= 5)
      {
        v44 = off_1E744CAE0[v43];
      }

      RB::SexpString::printf(a2, 0, "(mode %s)", v44);
      if (((*v40)[12].i32[0] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        RB::SexpString::printf(a2, 0, "(value-index %g)", (*v40)[12].f32[0]);
      }

      RB::SexpString::printf(a2, 0, "(alignment-rect %.2f %.2f %.2f %.2f)", COERCE_FLOAT(*(v41 + 72)), COERCE_FLOAT(HIDWORD(*(v41 + 72))), COERCE_FLOAT(*(v41 + 80)), COERCE_FLOAT(HIDWORD(*(v41 + 80))));
      v45 = *v40;
      v46 = (*v40)[8];
      v47 = vmvn_s8(vceqz_f32(v46));
      if ((vpmax_u32(v47, v47).u32[0] & 0x80000000) != 0)
      {
        RB::SexpString::printf(a2, 0, "(position %.2f %.2f)", v46.f32[0], v46.f32[1]);
        v45 = *v40;
      }

      v48 = *(v45 + 56);
      v49 = vmvn_s8(vceq_f32(v48, 0x3F0000003F000000));
      if ((vpmax_u32(v49, v49).u32[0] & 0x80000000) != 0)
      {
        RB::SexpString::printf(a2, 0, "(anchor-point %.2f %.2f)", v48.f32[0], v48.f32[1]);
      }

      if (*(v40 + 112))
      {
        RB::SexpString::push(a2, "layers");
        if (v40[55])
        {
          v50 = v40[55];
        }

        else
        {
          v50 = (v40 + 1);
        }

        v51 = *(v40 + 112);
        if (v51)
        {
          v52 = &v50[18 * v51];
          do
          {
            v53 = (*(*v50 + 26) >> 18) & 0xF;
            v54 = "unknown";
            if (v53 <= 0xC)
            {
              v54 = off_1E744CB10[v53];
            }

            *&v56 = RB::SexpString::push(a2, v54).u64[0];
            v57 = *v50;
            if (*(*v50 + 12))
            {
              v58 = RB::Symbol::GlyphCache::shared(v55);
              memset(__p, 0, 41);
              if ((*v50)[5])
              {
                v59 = (*v50)[5];
              }

              else
              {
                v59 = (*v50 + 3);
              }

              v60 = *(*v50 + 12);
              if (v60)
              {
                v61 = v58;
                v62 = 4 * v60;
                do
                {
                  v63 = [RB::Symbol::GlyphCache::tag(v61 *v59)];
                  RB::SexpString::print(__p, 0, v63);
                  ++v59;
                  v62 -= 4;
                }

                while (v62);
                v64 = __p;
                if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v64 = __p[0].__r_.__value_.__r.__words[0];
                }
              }

              else
              {
                v64 = __p;
              }

              RB::SexpString::printf(a2, 0, "(tags %s)", v64);
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }

              v57 = *v50;
            }

            if ((v57[13] & 0x3C0000) == 0x240000)
            {
              RB::SexpString::printf(a2, 0, "(color %s)", [(RB::Symbol::Glyph::Sublayers *)v57[1] UTF8String]);
              v57 = *v50;
            }

            v65 = *(v57 + 18);
            if (v65)
            {
              RB::SexpString::printf(a2, 0, "(timing-group %u)", v65);
            }

            if (v50[1])
            {
              RB::SexpString::print(a2, 0, "(draw-fill)");
            }

            v66 = *(v50 + 7);
            if (v66 != -32768.0)
            {
              RB::SexpString::printf(a2, 0, "(draw-color %.2g %.2g %.2g %.2f)", *(v50 + 4), *(v50 + 5), *(v50 + 6), v66);
            }

            v67 = *(v50 + 8);
            if (v67 != 1.0)
            {
              RB::SexpString::printf(a2, 0, "(draw-alpha %.2g)", v67);
            }

            if ((*v50)[13])
            {
              v68 = *(*v50 + 19) <= 0.0 ? *(v50 + 10) * *(v50 + 9) : *(v50 + 10);
              if (v68 != 0.0)
              {
                RB::SexpString::printf(a2, 0, "(clip-alpha %.2g)", v68);
              }
            }

            v69 = *(v50 + 11);
            if (v69 != 0.0)
            {
              RB::SexpString::printf(a2, 0, "(bg-alpha %.2g)", v69);
            }

            v70 = *(v50 + 12);
            if (v70 != 1.0)
            {
              RB::SexpString::printf(a2, 0, "(scale %.2f)", v70);
            }

            v71 = *(v50 + 13);
            if (v71 != 1.0)
            {
              RB::SexpString::printf(a2, 0, "(badge-scale %.2f)", v71);
            }

            v72 = *(v50 + 14);
            if (v72 != 1.0)
            {
              RB::SexpString::printf(a2, 0, "(stroke-attachment-scale %.2f)", v72);
            }

            v73 = *(v50 + 15);
            if (v73 != 0.0)
            {
              RB::SexpString::printf(a2, 0, "(symbol-rotation %.2f deg)", (v73 * 180.0) * 0.318309886);
            }

            v74 = *(v50 + 16);
            if (v74 != 0.0)
            {
              RB::SexpString::printf(a2, 0, "(layer-rotation %.2f deg)", (v74 * 180.0) * 0.318309886);
            }

            v75 = v50[15];
            v76 = vmvn_s8(vceq_f32(v75, _D12));
            if ((vpmax_u32(v76, v76).u32[0] & 0x80000000) != 0)
            {
              RB::SexpString::printf(a2, 0, "(size-scale %.2f %.2f)", v75.f32[0], v75.f32[1]);
            }

            v77 = v50[11];
            v78 = vmvn_s8(vceqz_f32(v77));
            if ((vpmax_u32(v78, v78).u32[0] & 0x80000000) != 0)
            {
              RB::SexpString::printf(a2, 0, "(translation %g %g)", v77.f32[0], v77.f32[1]);
            }

            v79 = v50[9];
            v80 = vmvn_s8(vceq_f32(v79, 0x3F80000000000000));
            if ((vpmax_u32(v80, v80).u32[0] & 0x80000000) != 0)
            {
              RB::SexpString::printf(a2, 0, "(stroke-range %g %g)", v79.f32[0], v79.f32[1]);
            }

            if (((*v50)[13] & 0x30000000) == 0x20000000)
            {
              RB::Symbol::Glyph::Sublayers::print(**v50, a2);
            }

            RB::SexpString::pop(a2);
            v50 += 18;
          }

          while (v50 != v52);
        }

        RB::SexpString::pop(a2);
      }

      if (v40[59])
      {
        RB::SexpString::push(a2, "merged-layers");
        v81 = v40[59];
        v82 = v81[1];
        if (v82)
        {
          v83 = *v81;
          v84 = *v81 + 8 * *&v82;
          do
          {
            RB::SexpString::printf(a2, 0, "(%d . %d)", *v83, v83[1]);
            v83 += 2;
          }

          while (v83 != v84);
        }

        RB::SexpString::pop(a2);
      }

      RB::SexpString::pop(a2);
    }

    RB::SexpString::pop(a2);
  }

  RB::SexpString::pop(a2);
  if ((a4 & 1) == 0)
  {
    os_unfair_lock_unlock(locka);
  }
}

void sub_195DAAE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_unfair_lock_t lock, int a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if ((a17 & 1) == 0)
  {
    os_unfair_lock_unlock(lock);
  }

  _Unwind_Resume(exception_object);
}

double RB::Symbol::Presentation::bounding_rect(RB::Symbol::Presentation *this)
{
  v11[0] = 0;
  v11[1] = 0;
  if (*(this + 125))
  {
    v1 = *(this + 125);
  }

  else
  {
    v1 = this + 8;
  }

  v2 = *(this + 252);
  if (!v2)
  {
    return 0.0;
  }

  v4 = &v1[496 * v2];
  do
  {
    if (*(v1 + 55))
    {
      v5 = *(v1 + 55);
    }

    else
    {
      v5 = (v1 + 8);
    }

    v6 = *(v1 + 112);
    if (v6)
    {
      v7 = 144 * v6;
      do
      {
        if (((v5[4].f32[0] * v5[5].f32[0]) * *(*v5 + 76)) > 0.0)
        {
          RB::Symbol::Presentation::Layer::bounding_rect(v5, this, v1);
          RB::Rect::Union(v11, v8, v9);
        }

        v5 += 18;
        v7 -= 144;
      }

      while (v7);
    }

    v1 += 496;
  }

  while (v1 != v4);
  return *v11;
}

void RB::Symbol::Presentation::Layer::bounding_rect(float32x2_t *this, const RB::Symbol::Presentation *a2, const RB::Symbol::Presentation::Symbol *a3)
{
  if ((*(a3 + 488) & 1) != 0 || this[7].f32[1] != 0.0 || this[8].f32[0] != 0.0 || (*(*this + 108) & 2) != 0 && *(a3 + 57))
  {
    v5 = *this;
    v18[0] = this[9];
    v18[1] = *(a3 + 456);
    v19 = this[7].i32[0];
    v6 = RB::Symbol::Glyph::Layer::content_bounds(v5, v18);
    v8 = v7;
    v9.f64[0] = RB::Symbol::Presentation::Layer::transform(this, a2, 0);
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v12 = v6;
    v13 = v8;
  }

  else
  {
    v14 = *(RB::Symbol::Model::glyph_info(*a3) + 80);
    v15.f64[0] = RB::Symbol::Presentation::Layer::transform(this, a2, 0);
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v12 = 0;
    v13 = v14;
  }

  RB::operator*(&v20, v12, v13);
}

float32x2_t RB::Symbol::Presentation::Layer::fill_rect(RB::Symbol::Presentation::Layer *this, const RB::Symbol::Presentation::Symbol *a2)
{
  v3 = *this;
  if (*(v3 + 108))
  {
    v5[0] = *(this + 72);
    v5[1] = *(a2 + 456);
    v6 = *(this + 14);
    return RB::Symbol::Glyph::Layer::content_bounds(v3, v5);
  }

  else
  {
    RB::Symbol::Model::glyph_info(*a2);
    return 0;
  }
}

BOOL RB::lcs_diff<RB::Symbol::Presentation::Layer,RB::Symbol::Presentation::apply_interpolations(void)::$_2,RB::Symbol::Presentation::apply_interpolations(void)::$_3>(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v86 = *MEMORY[0x1E69E9840];
  if (a1 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = a1;
  }

  if (v10 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v13 = a2;
    v14 = a4;
    while (1)
    {
      v15 = *v13;
      v16 = *(*v13 + 104);
      v17 = *(*v14 + 104);
      if ((v17 ^ v16) & 0x3C0000) != 0 || v13[1] != v14[1] || ((v16 ^ v17))
      {
        break;
      }

      if ((v16 & 0x3C0000) == 0x240000)
      {
        a1 = [*(v15 + 8) isEqualToString:*(*v14 + 8)];
        if (!a1)
        {
          break;
        }

        v15 = *v13;
        v16 = *(*v13 + 104);
      }

      if ((v16 & 0x3C0000) == 0x300000 && *(v15 + 16) != *(*v14 + 16))
      {
        break;
      }

      ++v11;
      v14 += 18;
      v13 += 18;
      if (v10 == v11)
      {
        v11 = v10;
        break;
      }
    }

    v8 = a2;
  }

  if (v11 < v9 && v11 < v7)
  {
    v18 = &v8[18 * v9 - 18];
    v19 = &a4[18 * v7 - 18];
    do
    {
      v20 = *v18;
      v21 = *(*v18 + 104);
      v22 = *(*v19 + 104);
      if ((v22 ^ v21) & 0x3C0000) != 0 || v18[1] != v19[1] || ((v21 ^ v22))
      {
        break;
      }

      if ((v21 & 0x3C0000) == 0x240000)
      {
        a1 = [*(v20 + 8) isEqualToString:*(*v19 + 8)];
        if (!a1)
        {
          break;
        }

        v20 = *v18;
        v21 = *(*v18 + 104);
      }

      if ((v21 & 0x3C0000) == 0x300000 && *(v20 + 16) != *(*v19 + 16))
      {
        break;
      }

      --v9;
      --v7;
      if (v11 >= v9)
      {
        break;
      }

      v18 -= 18;
      v19 -= 18;
    }

    while (v11 < v7);
  }

  v80 = a4;
  if (v9 + v7 >= 32)
  {
    v23 = 32;
  }

  else
  {
    v23 = v9 + v7;
  }

  if (v11 == v7)
  {
    v24 = v9 - 1;
  }

  else
  {
    v24 = v9 + 1;
  }

  if (v11 == v9)
  {
    v25 = v9 + 1;
  }

  else
  {
    v25 = v9 - 1;
  }

  if (v11 == v9 && v11 == v7)
  {
    LOBYTE(v26) = 1;
    return v26;
  }

  if (v9 + v7 < 1 || (v9 <= v7 ? (v27 = v7) : (v27 = v9), v27 >= 0x8000 || (v27 & 0x7000000000000000) != 0))
  {
    LOBYTE(v26) = 0;
    return v26;
  }

  v71 = v23;
  v29 = (16 * v27) | 8;
  v67 = v29;
  if (v29 <= 0x1000)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    v32 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
    v77 = &v65 - v32;
    bzero(&v65 - v32, v29);
    MEMORY[0x1EEE9AC00](v33, v34);
    v78 = &v65 - v32;
    bzero(&v65 - v32, v29);
  }

  else
  {
    v30 = malloc_type_malloc((16 * v27) | 8, 0x100004000313F17uLL);
    v77 = v30;
    v78 = malloc_type_malloc(v29, 0x2004093837F09uLL);
    if (!v30)
    {
      LOBYTE(v26) = 0;
      v31 = v78;
      goto LABEL_119;
    }

    if (!v78)
    {
      LOBYTE(v26) = 0;
      v31 = 0;
      v30 = v77;
      goto LABEL_119;
    }
  }

  v74 = v8;
  v66 = a5;
  RB::Heap::Heap(v82, v85, 1024, 0);
  v30 = v77;
  v31 = v78;
  *&v77[8 * v9] = v11;
  v31[v9] = 0;
  if (v71 <= 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v71;
  }

  v69 = -v9;
  v70 = v35;
  v26 = 1;
  v36 = 1;
  do
  {
    v72 = v36;
    if (v25 <= v24)
    {
      v68 = v26;
      v76 = v36 + v9;
      v73 = v36 + v9 - 1;
      v79 = v9 - v36;
      v75 = v9 - v36 + 1;
      v38 = v69 + v25;
      v37 = v25;
      while (1)
      {
        v39 = (v83 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v39 + 32 > v84)
        {
          v39 = RB::Heap::alloc_slow(v82, 0x20uLL, 7);
        }

        else
        {
          v83 = v39 + 32;
        }

        v81 = v24;
        if (v25 == v79)
        {
          break;
        }

        if (v25 == v76)
        {
          v43 = 0;
          v40 = v73;
          v42 = *&v30[8 * v73];
        }

        else
        {
          v40 = v25 + 1;
          v41 = *&v30[8 * v25 + 8];
          v42 = *&v30[8 * v25 - 8];
          if (v41 >= v42)
          {
            goto LABEL_69;
          }

          v43 = 0;
          v40 = v25 - 1;
        }

LABEL_74:
        *v39 = v31[v40];
        *(v39 + 8) = v43;
        v44 = v25 - v9 + v42;
        *(v39 + 16) = v42 - 1;
        *(v39 + 24) = v44 - 1;
        v31[v25] = v39;
        if (v42 < v9 && v44 < v7)
        {
          v46 = &v74[18 * v42];
          v47 = &v80[18 * v42 + 18 * v38];
          while (1)
          {
            v48 = *v46;
            v49 = *(*v46 + 104);
            v50 = *(*v47 + 104);
            if ((v50 ^ v49) & 0x3C0000) != 0 || v46[1] != v47[1] || ((v49 ^ v50))
            {
              break;
            }

            if ((v49 & 0x3C0000) == 0x240000)
            {
              if (![*(v48 + 8) isEqualToString:*(*v47 + 8)])
              {
                break;
              }

              v48 = *v46;
              v49 = *(*v46 + 104);
            }

            if (((v49 & 0x3C0000) != 0x300000 || *(v48 + 16) == *(*v47 + 16)) && ++v42 < v9)
            {
              ++v44;
              v46 += 18;
              v47 += 18;
              if (v42 + v38 < v7)
              {
                continue;
              }
            }

            v44 = v38 + v42;
            break;
          }

          v30 = v77;
          v31 = v78;
        }

        *&v30[8 * v25] = v42;
        if (v42 == v9 && v44 == v7)
        {
          v52 = v31[v25];
          if (v52)
          {
            v53 = 0;
            LOBYTE(v26) = v68;
            do
            {
              v54 = v52;
              v52 = *v52;
              *v54 = v53;
              v53 = v54;
            }

            while (v52);
            v55 = v66;
            v56 = *v66;
            v57 = *(*v66 + 8);
            v58 = *v57;
            do
            {
              if (v58 < *(v56 + 16))
              {
                v59 = *(v54 + 2) == 1;
                if (*(v54 + 2) == 1)
                {
                  v60 = 2;
                }

                else
                {
                  v60 = 3;
                }

                v61 = v54[v60];
                if (*(v54 + 2) == 1)
                {
                  v62 = 8;
                }

                else
                {
                  v62 = 12;
                }

                v63 = *(v55 + v62) + v61;
                v64 = **v56 + 8 * v58++;
                *v57 = v58;
                *v64 = v63;
                *(v64 + 4) = v59;
                *(v64 + 5) = 1;
              }

              v54 = *v54;
            }

            while (v54);
          }

          else
          {
            LOBYTE(v26) = v68;
          }

          goto LABEL_116;
        }

        v51 = v25 + 2;
        if (v42 == v9)
        {
          v37 = v25 + 2;
        }

        v24 = v81;
        if (v44 == v7)
        {
          v24 = v25 - 2;
        }

        v38 += 2;
        v25 += 2;
        if (v51 > v24)
        {
          goto LABEL_62;
        }
      }

      v40 = v75;
      v41 = *&v30[8 * v75];
LABEL_69:
      v42 = v41 + 1;
      v43 = 1;
      goto LABEL_74;
    }

    v37 = v25;
LABEL_62:
    v25 = v37 - 1;
    ++v24;
    v36 = v72 + 1;
    v26 = v72 < v71;
  }

  while (v72 != v70);
LABEL_116:
  RB::Heap::~Heap(v82);
  if (v67 > 0x1000)
  {
LABEL_119:
    free(v31);
    free(v30);
  }

  return v26;
}

void sub_195DAB77C(_Unwind_Exception *a1)
{
  RB::Heap::~Heap((v1 + 136));
  if (*(v1 + 16) > 0x1000uLL)
  {
    free(*(v1 + 104));
    free(*(v1 + 96));
  }

  _Unwind_Resume(a1);
}

float32x2_t RB::Symbol::Presentation::apply_interpolations(void)::$_4::operator()(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 + 1;
  if (v2[55])
  {
    v4 = v2[55];
  }

  v5 = &v4[18 * *a1[5]];
  v6 = a1[2];
  v7 = v6 + 1;
  if (v6[55])
  {
    v7 = v6[55];
  }

  v8 = &v7[18 * *a1[6]];
  v9 = v2[57];
  v10 = v5[7].i32[0];
  v53[0] = v5[9];
  v53[1] = v9;
  v54 = v10;
  v55 = 1065353216;
  v56 = v5[5].i32[1];
  v11 = v6[57];
  v12 = v8[7].i32[0];
  v49[0] = v8[9];
  v49[1] = v11;
  v50 = v12;
  v51 = 1065353216;
  v52 = v8[5].i32[1];
  v13.f64[0] = RB::Symbol::Presentation::Layer::transform(v5, 0, 0);
  v48[0] = v13;
  v48[1] = v14;
  v48[2] = v15;
  v16.f64[0] = RB::Symbol::Presentation::Layer::transform(v8, 0, 0);
  v47[0] = v16;
  v47[1] = v17;
  v47[2] = v18;
  v19 = (*(v3 + 1120) + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v19 + 112) > *(v3 + 1128))
  {
    v19 = RB::Heap::alloc_slow((v3 + 1104), 0x70uLL, 7);
  }

  else
  {
    *(v3 + 1120) = v19 + 112;
  }

  *(v19 + 40) = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *(v19 + 48) = 0x400000000;
  *(v19 + 56) = 0;
  HIDWORD(v20) = 0;
  *(v19 + 60) = 1065353216;
  *(v19 + 68) = 2139095040;
  *(v19 + 76) = 1065353216;
  *(v19 + 84) = -3175874560;
  *(v19 + 96) = 0;
  *(v19 + 104) = 73924608;
  *(v19 + 108) &= 0xFCu;
  v21 = *(v3 + 2232);
  v22 = v21 + 1;
  if (*(v3 + 2236) < v21 + 1)
  {
    RB::vector<RB::objc_ptr<void({block_pointer})(RBFill *,CGRect)>,0ul,unsigned int>::reserve_slow(v3 + 2224, v22);
    v21 = *(v3 + 2232);
    v22 = v21 + 1;
  }

  *(*(v3 + 2224) + 8 * v21) = v19;
  *(v3 + 2232) = v22;
  v46 = 0;
  LODWORD(v20) = *a1[3];
  RB::Symbol::Glyph::Layer::mix_layers(v19, *v5, *v8, v53, v49, v48, v47, v3, v20, *(a1 + 56), a1[8], &v46);
  v23 = a1[4];
  v24 = *(v23 + 440);
  if (*(v23 + 444) < v24 + 1)
  {
    RB::vector<RB::Symbol::Presentation::Layer,3ul,unsigned int>::reserve_slow(a1[4], v24 + 1);
    v24 = *(v23 + 440);
  }

  v25 = *(v23 + 432);
  if (!v25)
  {
    v25 = v23;
  }

  v26 = v25 + 144 * v24;
  *v26 = v19;
  *(v26 + 8) = 0;
  *(v26 + 16) = RBColorNull;
  *(v26 + 32) = xmmword_195E444D0;
  *(v26 + 48) = xmmword_195E444D0;
  *(v26 + 64) = 0;
  *(v26 + 72) = 0x3F80000000000000;
  *(v26 + 88) = 0u;
  *(v26 + 104) = 0u;
  __asm { FMOV            V0.2S, #1.0 }

  *(v26 + 120) = _D0;
  *(v26 + 128) = 0;
  *(v26 + 136) = 0;
  ++*(v23 + 440);
  v32 = a1[4];
  v33 = *(v32 + 432);
  if (!v33)
  {
    v33 = a1[4];
  }

  v34 = v33 + 144 * (*(v32 + 440) - 1);
  if (v5[1])
  {
    v35 = v8[1];
    v36 = *(v34 + 8);
    if (v36 != v35)
    {

      *(v34 + 8) = v35;
    }
  }

  else
  {
    v37 = *a1[3];
    v38 = v8[3].f32[1];
    if (v5[3].f32[1] == -32768.0 && v38 == -32768.0)
    {
      v39 = RBColorNull;
    }

    else
    {
      *v58 = vcvt_f16_f32(*v5[2].f32);
      *&v58[8] = 0;
      *&v58[12] = 273;
      *v40.f32 = v8[2];
      v40.i32[2] = v8[3].i32[0];
      v40.f32[3] = v38;
      *v57 = vcvt_f16_f32(v40);
      *&v57[8] = 0;
      *&v57[12] = 273;
      if (RB::Fill::Color::can_mix(v58, v57))
      {
        v41.i32[0] = v37;
        RB::Fill::Color::mix(v58, v57, 3, v41);
      }

      else
      {
        *v58 = *v57;
        *&v58[6] = *&v57[6];
      }

      v39 = vcvtq_f32_f16(*v58);
    }

    *(v34 + 16) = v39;
  }

  v42 = *a1[3];
  *(v34 + 32) = vmla_n_f32(v5[4], vsub_f32(v8[4], v5[4]), v42);
  *(v34 + 40) = v5[5].f32[0] + ((v8[5].f32[0] - v5[5].f32[0]) * v42);
  *(v34 + 80) = vmla_n_f32(v5[10], vsub_f32(v8[10], v5[10]), v42);
  *(v34 + 96) = vmla_n_f32(v5[12], vsub_f32(v8[12], v5[12]), *a1[3]);
  *(v34 + 104) = vmla_n_f32(v5[13], vsub_f32(v8[13], v5[13]), *a1[3]);
  *(v34 + 112) = vmla_n_f32(v5[14], vsub_f32(v8[14], v5[14]), *a1[3]);
  if ((v46 & 1) == 0)
  {
    v43 = vmla_n_f32(v5[11], vsub_f32(v8[11], v5[11]), *a1[3]);
    *(v34 + 88) = v43;
    v43.i32[0] = *a1[3];
    *(v34 + 48) = vmlaq_n_f32(*v5[6].f32, vsubq_f32(*v8[6].f32, *v5[6].f32), *v43.i32);
    *(v34 + 120) = vmla_f32(v5[15], *&vdupq_lane_s32(v43, 0), vsub_f32(v8[15], v5[15]));
    *(v34 + 136) = v5[17].f32[0] + (*a1[3] * (v8[17].f32[0] - v5[17].f32[0]));
  }

  result = vmaxnm_f32(v5[16], v8[16]);
  *(v34 + 128) = result;
  v45 = a1[6];
  ++*a1[5];
  ++*v45;
  return result;
}

float32x2_t RB::Symbol::Presentation::Layer::add_velocity(float32x2_t *a1, float32x2_t a2)
{
  result = vmaxnm_f32(vabs_f32(a2), a1[16]);
  a1[16] = result;
  return result;
}

float32x2_t RB::Symbol::Presentation::Layer::add_scale_velocity(float32x2_t *this, float a2)
{
  result = vadd_f32(vabs_f32(vmul_n_f32(this[12], a2)), this[16]);
  this[16] = result;
  return result;
}

float32x2_t RB::Symbol::Presentation::Layer::add_stroke_velocity(float32x2_t *this, float a2, RB::Symbol::Model **a3)
{
  result = vmaxnm_f32(vabs_f32(vmul_n_f32(*(RB::Symbol::Model::glyph_info(*a3) + 80), a2)), this[16]);
  this[16] = result;
  return result;
}

uint64_t RB::Symbol::Presentation::Symbol::append_layer_path(RB::Symbol::Presentation::Symbol *this, float32x2_t *a2, RB::Path::Storage *a3, const RB::Symbol::Presentation *a4)
{
  v7.f64[0] = RB::Symbol::Presentation::Layer::transform(a2, a4, 0);
  v8 = *a2;
  v9 = *(*a2 + 60);
  v21 = vmulq_n_f64(v7, v9);
  v22 = vmulq_n_f64(v10, v9);
  v23 = v11;
  v12 = vceqzq_f64(v11);
  v13 = vandq_s8(vandq_s8(vceqq_f64(v21, xmmword_195E42760), v12), vceqq_f64(v22, xmmword_195E42770));
  v14 = vdupq_laneq_s64(v13, 1);
  v15 = vandq_s8(v14, v13).u64[0];
  if ((v15 & 0x8000000000000000) == 0)
  {
    RB::Path::Storage::append_element(a3, 0x11, 0, &v21);
    v8 = *a2;
  }

  v19[0] = a2[9];
  v19[1] = *(this + 456);
  v20 = a2[7].i32[0];
  appended = RB::Symbol::Glyph::Layer::append_path(v8, a3, v19, COERCE_DOUBLE(__PAIR64__(v19[0].u32[1], v20)), *v14.i64, *v12.i8);
  v17 = appended;
  if ((v15 & 0x8000000000000000) == 0 && appended)
  {
    RB::Path::Storage::append_element(a3, 0x10, 0, 0);
  }

  return v17;
}

uint64_t *std::unique_ptr<RB::Symbol::KeyframeStorage>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 2320);
    if (v3)
    {
      free(v3);
    }

    v4 = *(v2 + 768);
    if (v4)
    {
      free(v4);
    }

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

uint64_t RB::Symbol::Presentation::take_path(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 2216);
  if (*(a1 + 2220) < v4 + 1)
  {
    RB::vector<RBColor,0ul,unsigned int>::reserve_slow(a1 + 2208, v4 + 1);
    v4 = *(a1 + 2216);
  }

  v5 = (*(a1 + 2208) + 16 * v4);
  result = RBPathRetain(*a2, a2[1]);
  *v5 = result;
  v5[1] = v7;
  ++*(a1 + 2216);
  return result;
}

{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 2216);
  v5 = v4 + 1;
  if (*(a1 + 2220) < v4 + 1)
  {
    RB::vector<RBColor,0ul,unsigned int>::reserve_slow(a1 + 2208, v5);
    v4 = *(a1 + 2216);
    v5 = v4 + 1;
  }

  v6 = (*(a1 + 2208) + 16 * v4);
  *v6 = v3;
  v6[1] = &RB::Path::Object::callbacks;
  *(a1 + 2216) = v5;
  return *(*(a1 + 2208) + 16 * v4);
}

void RB::Symbol::KeyframeStorage::~KeyframeStorage(RB::Symbol::KeyframeStorage *this)
{
  v2 = *(this + 290);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 96);
  if (v3)
  {
    free(v3);
  }
}

RB::Symbol::KeyframeStorage *RB::Symbol::KeyframeStorage::KeyframeStorage(RB::Symbol::KeyframeStorage *this, const RB::Symbol::KeyframeStorage *a2)
{
  *(this + 96) = 0;
  *(this + 97) = 0x4000000000;
  if (*(a2 + 96))
  {
    v4 = *(a2 + 96);
  }

  else
  {
    v4 = a2;
  }

  v5 = *(a2 + 194);
  v6 = v5;
  if (v5 >= 0x41)
  {
    RB::vector<RB::Symbol::Keyframes::Value,64ul,unsigned int>::reserve_slow(this, v5);
    v7 = *(this + 96);
    v8 = *(this + 194);
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
    v7 = this;
  }

  v9 = v7 + 12 * v8;
  do
  {
    v10 = *v4;
    *(v9 + 2) = *(v4 + 2);
    *v9 = v10;
    v9 += 12;
    v4 = (v4 + 12);
    --v6;
  }

  while (v6);
  v11 = *(this + 194);
LABEL_13:
  *(this + 194) = v11 + v5;
  *(this + 290) = 0;
  *(this + 291) = 0x4000000000;
  if (*(a2 + 290))
  {
    v12 = *(a2 + 290);
  }

  else
  {
    v12 = a2 + 784;
  }

  v13 = *(a2 + 582);
  if (v13 >= 0x41)
  {
    RB::vector<RB::Symbol::Keyframes,64ul,unsigned int>::reserve_slow(this + 784, *(a2 + 582));
    v14 = *(this + 290);
    v15 = *(this + 582);
  }

  else
  {
    if (!v13)
    {
      v19 = 0;
      goto LABEL_25;
    }

    v14 = 0;
    v15 = 0;
  }

  if (!v14)
  {
    v14 = this + 784;
  }

  v16 = &v14[24 * v15];
  v17 = v13;
  do
  {
    v18 = *v12;
    *(v16 + 2) = *(v12 + 2);
    *v16 = v18;
    v16 += 24;
    v12 += 24;
    --v17;
  }

  while (v17);
  v19 = *(this + 582);
LABEL_25:
  *(this + 582) = v19 + v13;
  *(this + 2336) = *(a2 + 2336);
  return this;
}

void sub_195DAC10C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 2320);
  if (v3)
  {
    free(v3);
  }

  v4 = *(v1 + 768);
  if (v4)
  {
    free(v4);
  }

  _Unwind_Resume(exception_object);
}

void *RB::vector<RB::Symbol::Keyframes::Value,64ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 195) + (*(__dst + 195) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 195) + (*(__dst + 195) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,12ul>(*(__dst + 96), __dst, 0x40u, __dst + 195, v3);
  *(__dst + 96) = result;
  return result;
}

void *RB::details::realloc_vector<unsigned int,12ul>(void *__src, void *__dst, unsigned int a3, _DWORD *a4, unsigned int a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      LODWORD(v9) = a3;
      memcpy(__dst, __src, 12 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(12 * a5);
    v9 = v8 / 0xC;
    if (*a4 != (v8 / 0xC))
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 12 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

void *RB::vector<RB::Symbol::Keyframes,64ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 387) + (*(__dst + 387) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 387) + (*(__dst + 387) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,24ul>(*(__dst + 192), __dst, 0x40u, __dst + 387, v3);
  *(__dst + 192) = result;
  return result;
}

void *RB::details::realloc_vector<unsigned int,24ul>(void *__src, void *__dst, unsigned int a3, _DWORD *a4, unsigned int a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      LODWORD(v9) = a3;
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
    if (*a4 != (v8 / 0x18))
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

char *RB::vector<RB::Symbol::Presentation::Layer,3ul,unsigned int>::~vector(char *a1)
{
  v2 = *(a1 + 54);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  if (*(a1 + 110))
  {
    v4 = 0;
    v5 = (v3 + 8);
    do
    {
      v6 = *v5;
      v5 += 18;

      ++v4;
    }

    while (v4 < *(a1 + 110));
    v2 = *(a1 + 54);
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

RB::Symbol::Presentation::Symbol *RB::vector<RB::Symbol::Presentation::Symbol,2ul,unsigned int>::~vector(RB::Symbol::Presentation::Symbol *a1)
{
  v1 = a1;
  v2 = *(a1 + 124);
  if (v2)
  {
    a1 = *(a1 + 124);
  }

  if (*(v1 + 250))
  {
    v3 = 0;
    do
    {
      RB::Symbol::Presentation::Symbol::~Symbol(a1);
      ++v3;
      a1 = (v4 + 496);
    }

    while (v3 < *(v1 + 250));
    v2 = *(v1 + 124);
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

void RB::Symbol::Presentation::Symbol::~Symbol(RB::Symbol::Presentation::Symbol *this)
{
  v2 = *(this + 57);
  *(this + 57) = 0;
  *(this + 58) = 0;
  if (v2)
  {
    std::default_delete<RB::vector<RB::Symbol::Glyph::StrokeRange,4ul,unsigned int>>::operator()[abi:nn200100](this + 456, v2);
  }

  v3 = this + 8;
  v4 = *(this + 55);
  if (v4)
  {
    v3 = *(this + 55);
  }

  if (*(this + 112))
  {
    v5 = 0;
    v6 = (v3 + 8);
    do
    {
      v7 = *v6;
      v6 += 18;

      ++v5;
    }

    while (v5 < *(this + 112));
    v4 = *(this + 55);
  }

  if (v4)
  {
    free(v4);
  }

  v8 = *this;
  if (*this)
  {
    if (atomic_fetch_add_explicit((v8 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      RB::Symbol::Model::copy_on_write(v8);
    }
  }
}

void std::default_delete<RB::vector<RB::Symbol::Glyph::StrokeRange,4ul,unsigned int>>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 96);
    if (v2)
    {
      free(v2);
    }

    JUMPOUT(0x19A8C09E0);
  }
}

uint64_t RB::vector<RB::refcounted_ptr<RB::Symbol::Model const>,0ul,unsigned int>::~vector(uint64_t a1)
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
        RB::Symbol::Model::copy_on_write(v4);
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

uint64_t RB::vector<RB::path_ptr,0ul,unsigned int>::~vector(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = 0;
    v4 = v2 + 1;
    do
    {
      RBPathRelease(*(v4 - 1), *v4);
      ++v3;
      v4 += 2;
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

uint64_t RB::vector<std::unique_ptr<RB::Symbol::Glyph::Layer,RB::Destroy<RB::Symbol::Glyph::Layer>>,0ul,unsigned int>::~vector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = v2[i];
      v2[i] = 0;
      if (v5)
      {
        RB::Symbol::Glyph::Layer::~Layer(v5);
        v3 = *(a1 + 8);
      }
    }

    v2 = *a1;
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

void *RB::vector<RB::Symbol::Presentation::Symbol,2ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 251) + (*(__dst + 251) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 251) + (*(__dst + 251) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,496ul>(*(__dst + 124), __dst, 2u, __dst + 251, v3);
  *(__dst + 124) = result;
  return result;
}

void *RB::details::realloc_vector<unsigned int,496ul>(void *__src, void *__dst, unsigned int a3, _DWORD *a4, unsigned int a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      LODWORD(v9) = a3;
      memcpy(__dst, __src, 496 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(496 * a5);
    v9 = v8 / 0x1F0;
    if (*a4 != (v8 / 0x1F0))
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 496 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

void *RB::vector<RB::Symbol::Glyph::StrokeRange,4ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 27) + (*(__dst + 27) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 27) + (*(__dst + 27) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,24ul>(*(__dst + 12), __dst, 4u, __dst + 27, v3);
  *(__dst + 12) = result;
  return result;
}

void *RB::vector<RB::Symbol::Presentation::Layer,3ul,unsigned int>::swap_inline(void *result, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2[54];
  v3 = result[54];
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
    v6 = result;
    memcpy(__dst, a2, sizeof(__dst));
    memcpy(a2, v6, 0x1B0uLL);
    result = memcpy(v6, __dst, 0x1B0uLL);
    if (v3)
    {
      if (v2)
      {
        return result;
      }
    }

    else
    {
      v6[54] = 0;
      if (v2)
      {
        return result;
      }
    }

    a2[54] = 0;
  }

  return result;
}

uint64_t RB::vector<std::pair<unsigned int,RB::objc_ptr<void({block_pointer})(NSError *)>>,0ul,unsigned int>::~vector(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = 0;
    v4 = v2 + 1;
    do
    {
      v5 = *v4;
      v4 += 2;

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

void RB::CustomShader::Library::~Library(RB::CustomShader::Library *this)
{
  *this = &unk_1F0A390B0;
  os_unfair_lock_lock(this + 12);
  v2 = *(this + 17);
  if (!v2)
  {
    v2 = this + 120;
  }

  v3 = *(this + 36);
  if (v3)
  {
    v4 = (v2 + 8);
    v5 = 16 * v3;
    do
    {
      (*v4)(this, *(v4 - 1));
      v4 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  os_unfair_lock_unlock(this + 12);
  v6 = *(this + 19);
  if (*(this + 40))
  {
    v7 = 0;
    v8 = v6 + 1;
    do
    {
      v9 = *v8;
      v8 += 2;

      ++v7;
    }

    while (v7 < *(this + 40));
    v6 = *(this + 19);
  }

  if (v6)
  {
    free(v6);
  }

  v10 = *(this + 17);
  if (v10)
  {
    free(v10);
  }

  RB::UntypedTable::~UntypedTable((this + 56));
}

{
  RB::CustomShader::Library::~Library(this);

  JUMPOUT(0x19A8C09E0);
}

void sub_195DACA40(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v1 + 48));
  RB::vector<std::pair<unsigned int,RB::objc_ptr<void({block_pointer})(NSError *)>>,0ul,unsigned int>::~vector(v1 + 152);
  v3 = *(v1 + 136);
  if (v3)
  {
    free(v3);
  }

  RB::UntypedTable::~UntypedTable((v1 + 56));

  _Unwind_Resume(a1);
}

void RB::CustomShader::Library::finalize(RB::CustomShader::Library *this)
{
  global_queue = dispatch_get_global_queue(0, 0);

  dispatch_async_f(global_queue, this, RB::CustomShader::Library::finalize(void)::$_0::__invoke);
}

void RB::CustomShader::Library::remove_observer(os_unfair_lock_s *this, void *a2)
{
  os_unfair_lock_lock(this + 12);
  v4 = this + 30;
  if (*&this[34]._os_unfair_lock_opaque)
  {
    v4 = *&this[34]._os_unfair_lock_opaque;
  }

  os_unfair_lock_opaque = this[36]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    v6 = v4 + 2;
    v7 = 16 * os_unfair_lock_opaque;
    while (1)
    {
      v8 = *&v6[-2]._os_unfair_lock_opaque;
      if (v8 == a2)
      {
        break;
      }

      v6 += 4;
      v7 -= 16;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    v9 = os_unfair_lock_opaque - 1;
    v10 = &v4[4 * v9];
    *&v6[-2]._os_unfair_lock_opaque = *v10;
    *v10 = v8;
    v11 = *&v6->_os_unfair_lock_opaque;
    *&v6->_os_unfair_lock_opaque = *(v10 + 1);
    *(v10 + 1) = v11;
    this[36]._os_unfair_lock_opaque = v9;
  }

LABEL_9:

  os_unfair_lock_unlock(this + 12);
}

uint64_t RB::CustomShader::Library::add_error_handler(uint64_t a1, void *a2)
{
  os_unfair_lock_lock((a1 + 48));
  v4 = ++RB::CustomShader::Library::_last_id;
  v5 = [a2 copy];
  v6 = *(a1 + 160);
  v7 = v6 + 1;
  if (*(a1 + 164) < v6 + 1)
  {
    RB::vector<RBColor,0ul,unsigned int>::reserve_slow(a1 + 152, v7);
    v6 = *(a1 + 160);
    v7 = v6 + 1;
  }

  v8 = *(a1 + 152) + 16 * v6;
  *v8 = v4;
  *(v8 + 8) = v5;
  *(a1 + 160) = v7;
  os_unfair_lock_unlock((a1 + 48));
  return v4;
}

void RB::CustomShader::Library::remove_error_handler(os_unfair_lock_s *this, int a2)
{
  os_unfair_lock_lock(this + 12);
  os_unfair_lock_opaque = this[40]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    v5 = *&this[38]._os_unfair_lock_opaque;
    v6 = (v5 + 8);
    v7 = this[40]._os_unfair_lock_opaque;
    while (*(v6 - 2) != a2)
    {
      v6 += 2;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    v8 = v5 + 16 * (os_unfair_lock_opaque - 1);
    *(v6 - 2) = *v8;
    *v8 = a2;
    v9 = *v6;
    *v6 = *(v8 + 8);
    *(v8 + 8) = v9;
    v10 = this[40]._os_unfair_lock_opaque - 1;
    this[40]._os_unfair_lock_opaque = v10;
  }

LABEL_7:

  os_unfair_lock_unlock(this + 12);
}

BOOL RB::CustomShader::Library::call_error_handler(os_unfair_lock_s *this, NSError *a2)
{
  if (!a2)
  {
    return 1;
  }

  os_unfair_lock_lock(this + 12);
  os_unfair_lock_opaque = this[40]._os_unfair_lock_opaque;
  v4 = os_unfair_lock_opaque != 0;
  if (os_unfair_lock_opaque)
  {
    operator new();
  }

  os_unfair_lock_unlock(this + 12);
  return v4;
}

void RB::CustomShader::Library::log_error(os_unfair_lock_s *this, NSError *a2)
{
  v3 = RB::CustomShader::Library::call_error_handler(this, a2);
  if (!v3)
  {
    v4 = RB::error_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      RB::CustomShader::Library::log_error(a2, v4);
    }
  }
}

_DWORD *RB::CustomShader::Library::prepare_encode(_DWORD *this, RB::Encoder *a2)
{
  v3 = this;
  v4 = *(a2 + 7);
  if (v4 || this[6] == 5)
  {
    theData = 0;
    this = RB::UntypedTable::lookup((a2 + 80), this, &theData);
    if (theData != v3)
    {
      v5 = *(a2 + 9);
      *(a2 + 9) = v5 + 1;
      this = RB::UntypedTable::insert((a2 + 80), v3, v5);
      if ((*(a2 + 148) & 1) == 0)
      {
        RB::ProtobufEncoder::encode_varint(a2, 0x7AuLL);
        RB::ProtobufEncoder::begin_length_delimited(a2);
        if (v5)
        {
          RB::ProtobufEncoder::encode_varint(a2, 8uLL);
          RB::ProtobufEncoder::encode_varint(a2, v5);
        }

        RB::ProtobufEncoder::encode_varint(a2, 0x32uLL);
        RB::ProtobufEncoder::begin_length_delimited(a2);
        if (v3[6] == 5)
        {
          RB::ProtobufEncoder::encode_varint(a2, 0x10uLL);
          RB::ProtobufEncoder::encode_varint(a2, 1uLL);
        }

        else
        {
          v6 = [[RBShaderLibrary alloc] initWithLibrary:v3];
          (*(*v4 + 40))(&theData, v4, v6);
          if (theData)
          {
            BytePtr = CFDataGetBytePtr(theData);
            Length = CFDataGetLength(theData);
            if (Length)
            {
              RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
              RB::ProtobufEncoder::encode_data(a2, BytePtr, Length);
            }

            if (theData)
            {
              CFRelease(theData);
            }
          }

          else
          {
            *(a2 + 48) = 1;
          }
        }

        RB::ProtobufEncoder::end_length_delimited(a2);
        return RB::ProtobufEncoder::end_length_delimited(a2);
      }
    }
  }

  else
  {
    *(a2 + 48) = 1;
  }

  return this;
}

RBShaderLibrary *RB::CustomShader::Library::decode(RB::CustomShader::Library *this, RB::Decoder *a2)
{
  v2 = *(this + 9);
  if (!v2)
  {
    return 0;
  }

  field = RB::ProtobufDecoder::next_field(this);
  if (!field)
  {
    return 0;
  }

  v5 = field;
  v6 = 0;
  do
  {
    if ((v5 >> 3) == 2)
    {
      if (RB::ProtobufDecoder::BOOL_field(this, v5))
      {
        v6 = +[RBShaderLibrary systemLibrary];
      }
    }

    else if ((v5 >> 3) == 1)
    {
      v7 = RB::ProtobufDecoder::data_field(this, v5);
      (*(*v2 + 24))(&cf, v2, v7, v8);
      v9 = cf;
      if (cf)
      {
        cf = 0;
        RB::ObjectTable::adopt((this + 168), v9);
        if (cf)
        {
          CFRelease(cf);
        }

        v6 = v9;
      }
    }

    else
    {
      RB::ProtobufDecoder::skip_field(this, v5);
    }

    v5 = RB::ProtobufDecoder::next_field(this);
  }

  while (v5);
  return v6;
}

void sub_195DAD1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void *RB::CustomShader::Library::decode(RB::ProtobufDecoder *this, char a2)
{
  if ((a2 & 7) != 2)
  {
    goto LABEL_12;
  }

  RB::ProtobufDecoder::begin_message(this);
  field = RB::ProtobufDecoder::next_field(this);
  if (!field)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_14;
  }

  v4 = field;
  v5 = 0;
  v6 = 0;
  do
  {
    if ((v4 >> 3) == 2)
    {
      v13 = *this;
      RB::ProtobufDecoder::skip_field(this, v4);
      v6 = v4;
    }

    else if ((v4 >> 3) == 1)
    {
      v5 = RB::ProtobufDecoder::uint_field(this, v4);
    }

    else
    {
      RB::ProtobufDecoder::skip_field(this, v4);
    }

    v4 = RB::ProtobufDecoder::next_field(this);
  }

  while (v4);
  if (!(v5 >> 61))
  {
LABEL_14:
    v15[0] = 0;
    v7 = RB::UntypedTable::lookup((this + 80), (v5 | 0xC000000000000000), v15);
    if ((v5 | 0xC000000000000000) == v15[0])
    {
      goto LABEL_22;
    }

    v8 = v13;
    if (!v6)
    {
      RB::Decoder::saved_shared_field(this, 6, v5, v15, v13);
      LOBYTE(v6) = v16;
      if (!v16)
      {
LABEL_21:
        RB::UntypedTable::insert((this + 80), (v5 | 0xC000000000000000), v7);
LABEL_22:
        RB::ProtobufDecoder::end_message(this);
        if (v7)
        {
          return v7;
        }

        goto LABEL_12;
      }

      v8 = *v15;
    }

    v9 = *this;
    *this = v8;
    if ((v6 & 7) == 2)
    {
      v14 = v9;
      RB::ProtobufDecoder::begin_message(this);
      v11 = RB::CustomShader::Library::decode(this, v10);
      v7 = [(RBDecodedFontMetadata *)v11 fontUID];
      RB::ProtobufDecoder::end_message(this);
      v9 = v14;
    }

    else
    {
      *(this + 56) = 1;
    }

    *this = v9;
    goto LABEL_21;
  }

  RB::ProtobufDecoder::end_message(this);
LABEL_12:
  v7 = 0;
  *(this + 56) = 1;
  *this = *(this + 1);
  return v7;
}

void RB::CustomShader::Function::~Function(id *this)
{
  *this = &unk_1F0A39080;
}

{
  *this = &unk_1F0A39080;

  JUMPOUT(0x19A8C09E0);
}

void *RB::CustomShader::Function::encode(void **this, RB::Encoder *a2)
{
  RB::Encoder::shared_field_f(a2, 1, this[2]);
  v4 = [this[3] UTF8String];
  result = strlen(v4);
  if (result)
  {
    v6 = result;
    RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);

    return RB::ProtobufEncoder::encode_data(a2, v4, v6);
  }

  return result;
}

void RB::CustomShader::Function::decode(RB::ProtobufDecoder *this@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if ((a2 & 7) == 2)
  {
    RB::ProtobufDecoder::begin_message(this);
    field = RB::ProtobufDecoder::next_field(this);
    v6 = 0;
    for (i = 0; field; field = RB::ProtobufDecoder::next_field(this))
    {
      if ((field >> 3) == 2)
      {
        v8 = RB::ProtobufDecoder::data_field(this, field);
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v8 length:v9 encoding:4];

        i = v10;
      }

      else if ((field >> 3) == 1)
      {
        v6 = RB::CustomShader::Library::decode(this, field);
      }

      else
      {
        RB::ProtobufDecoder::skip_field(this, field);
      }
    }

    RB::ProtobufDecoder::end_message(this);
    if (v6 && [i length])
    {
      RB::CustomShader::Library::intern_function(v6, i, a3);
      goto LABEL_14;
    }
  }

  else
  {
    i = 0;
    *(this + 56) = 1;
    *this = *(this + 1);
  }

  *a3 = 0;
LABEL_14:
}

BOOL RB::CustomShader::Closure::operator==(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 != *a2)
  {
    v4 = !v2 || v3 == 0;
    if (v4 || *(v2 + 32) != *(v3 + 32))
    {
      return 0;
    }
  }

  v5 = a1[18];
  if (v5 != a2[18])
  {
    return 0;
  }

  if (a1[17])
  {
    v6 = a1[17];
  }

  else
  {
    v6 = (a1 + 1);
  }

  if (!v5)
  {
    return 1;
  }

  if (a2[17])
  {
    v7 = a2[17];
  }

  else
  {
    v7 = (a2 + 1);
  }

  v8 = 32 * v5 - 32;
  do
  {
    result = RB::CustomShader::Value::operator==(v6, v7);
    if (!result)
    {
      break;
    }

    v6 = (v6 + 32);
    v7 += 32;
    v10 = v8;
    v8 -= 32;
  }

  while (v10);
  return result;
}

uint64_t RB::CustomShader::Value::image(RB::CustomShader::Value *this)
{
  if (*(this + 6) - 7 >= 2)
  {
    return 0;
  }

  else
  {
    return this + 16;
  }
}

uint64_t RB::CustomShader::Closure::marshal_args(void *a1, _DWORD *a2, void *a3, unsigned __int8 a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v89[1] = *MEMORY[0x1E69E9840];
  v9 = a3[12];
  v10 = a1[18];
  if (v9 == v10)
  {
    v85 = 0;
    v86 = 0;
    v87 = 67178752;
    if (a5)
    {
      *v73 = *a5;
      RB::CustomShader::Value::set_bytes(&v85, 4u, 1uLL, v73);
      v9 = a3[12];
    }

    v62 = a2;
    v61 = a4;
    v59 = a7;
    v15 = v8 + 1;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    if (v9)
    {
      v60 = a8;
      v16 = 0;
      v63 = 0;
      v17 = 0;
      v65 = v9;
      v18 = 6;
      __asm { FMOV            V8.2S, #1.0 }

      v24 = xmmword_195E42770;
      v66 = v8;
      while (1)
      {
        if (a3[11])
        {
          v25 = a3[11];
        }

        else
        {
          v25 = a3 + 7;
        }

        v26 = v8[17];
        v27 = v15;
        if (!v26)
        {
          v26 = v15;
        }

        v28 = (v26 + v18);
        v30 = v28 - 6;
        v29 = *v28;
        if (v29 == 6)
        {
          v31 = &v85;
        }

        else
        {
          v31 = (v28 - 6);
        }

        v32 = *(v25 + v17);
        v33 = *(v25 + v17) & 0x3F;
        if (v33 == 4)
        {
          if (v29 == 6)
          {
            v34 = &v87;
          }

          else
          {
            v34 = v28;
          }

          if (*v34 - 7 > 1)
          {
LABEL_52:
            v54 = MEMORY[0x1E696ABC0];
            v83 = *MEMORY[0x1E696A578];
            v55 = MEMORY[0x1E696AEC0];
            v56 = *(*v66 + 24);
            v57 = RB::CustomShader::Value::description(v31);
            v84 = [v55 stringWithFormat:@"Invalid shader argument: %@, #%d: %@, expected %@", v56, v17, v57, RB::Function::Param::description((v25 - v16))];
            RB::CustomShader::Library::log_error(*(*v66 + 16), [v54 errorWithDomain:@"com.apple.RenderBox.RBShaderError" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v84, &v83, 1)}]);
            goto LABEL_53;
          }

          v35 = RB::Function::Info::texture_index((a3 + 5), v17);
          v36 = v35;
          if ((v35 & 0x80000000) == 0 && v35 <= 2)
          {
            if (*v34 - 9 < 0xFFFFFFFE)
            {
              goto LABEL_28;
            }

            v37 = &v85;
            if (v29 != 6)
            {
              v37 = v30;
            }

            *v73 = 0;
            *&v73[8] = _D8;
            *&v73[16] = 0;
            v74 = 0;
            v77 = 1065353216;
            v75 = xmmword_195E428C0;
            v76 = xmmword_195E428C0;
            v78 = 0x3C003C003C003C00;
            v79 = 0x100000000000000;
            v38 = *v34 == 8 ? 768 : 256;
            HIWORD(v79) = v38;
            v39 = *v62;
            v70[0] = xmmword_195E42760;
            v70[1] = xmmword_195E42770;
            v71 = 0;
            v72 = 0;
            v40 = RB::ImageTexture::texture(v37 + 2, v39, v73, v70, 1);
            if (!v40)
            {
LABEL_28:
              v40 = RB::Device::invalid_texture(**(*v62 + 16));
            }

            *(v60 + 8 * v36) = v40;
          }
        }

        else
        {
          v41 = a6 + ((v32 >> 6) & 0x3FFFFFC);
          if ((v32 & 0x40) != 0)
          {
            if (!RB::CustomShader::Value::prepare_array(v31, v33, &v68))
            {
              goto LABEL_52;
            }

            v42 = (v63 + 15);
            if ((v42 >> 31))
            {
              goto LABEL_53;
            }

            v43 = v42 & 0xFFFFFFF0;
            *v41 = v42 & 0xFFFFFFF0;
            v44 = v81;
            if (v82 < v81 + 1)
            {
              RB::vector<RB::CustomShader::Closure::marshal_args(RB::RenderPass &,RB::Function &,RB::ColorSpace,RB::Rect const*,unsigned char *,RB::BufferRegion &,std::array<RB::Texture *,3ul> &)::PendingArg,0ul,unsigned long>::reserve_slow(&v80, v81 + 1);
              v44 = v81;
            }

            v45 = &v80[48 * v44];
            v45->i64[0] = v17;
            v45->i64[1] = v43;
            v24 = v68;
            v46 = v69;
            v45[1] = v68;
            v45[2] = v46;
            ++v81;
            v63 = (v43 + v69.i64[1]);
            if (__CFADD__(v43, v69.i64[1]))
            {
              goto LABEL_53;
            }

            if ((*(v25 + 4 * v17) & 0x80) != 0)
            {
              if (v68.i64[1] >> 31)
              {
                goto LABEL_52;
              }

              *(v41 + 4) = v68.i32[2];
            }
          }

          else
          {
            v24.i32[0] = v62[31];
            if ((RB::CustomShader::Value::convert(v31, v33, v41, v61, v24) & 1) == 0)
            {
              goto LABEL_52;
            }
          }
        }

        ++v17;
        v16 -= 4;
        v18 += 32;
        v8 = v66;
        v15 = v27;
        if (v65 == v17)
        {
          goto LABEL_45;
        }
      }
    }

    v63 = 0;
LABEL_45:
    RB::RenderFrame::alloc_buffer_region(*(*v62 + 16), v63, 4uLL, 0, v73);
    v49 = *v73;
    *v59 = *v73;
    v50 = *&v73[8];
    *(v59 + 8) = *&v73[8];
    if (v49)
    {
      v51 = v80;
      if (!v81)
      {
        v48 = 1;
        if (!v80)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }

      v52 = &v80[48 * v81];
      do
      {
        v53 = v8[17];
        if (!v53)
        {
          v53 = v15;
        }

        v50.i32[0] = v62[31];
        RB::CustomShader::Value::convert(&v53[4 * *v51], v51[16], *(v51 + 4), (*(*v59 + 56) + *(v59 + 8) + *(v51 + 1)), v61, v50);
        v51 += 48;
      }

      while (v51 != v52);
      v48 = 1;
    }

    else
    {
LABEL_53:
      v48 = 0;
    }

    v51 = v80;
    if (!v80)
    {
LABEL_56:
      RB::CustomShader::Value::reset_data(&v85);
      return v48;
    }

LABEL_55:
    free(v51);
    goto LABEL_56;
  }

  v47 = MEMORY[0x1E696ABC0];
  v88 = *MEMORY[0x1E696A578];
  v89[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid number of shader arguments: %@: %d, expected %d", *(*a1 + 24), v10, v9];
  RB::CustomShader::Library::log_error(*(*v8 + 16), [v47 errorWithDomain:@"com.apple.RenderBox.RBShaderError" code:4 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v89, &v88, 1)}]);
  return 0;
}

void sub_195DADC78(_Unwind_Exception *a1)
{
  v3 = *(v1 - 208);
  if (v3)
  {
    free(v3);
  }

  RB::CustomShader::Value::reset_data((v1 - 168));
  _Unwind_Resume(a1);
}

uint64_t RB::CustomShader::Value::prepare_array(unsigned int *a1, int a2, uint64_t a3)
{
  result = 0;
  v5 = *(a1 + 6);
  if (v5 <= 2)
  {
    if (*(a1 + 6))
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {
          if (a2 == 6)
          {
            v6 = *a1;
            v7 = 2 * v6;
            goto LABEL_26;
          }

          return 0;
        }

        return result;
      }

      if (a2 == 5)
      {
        v6 = *a1;
        v7 = v6;
        goto LABEL_26;
      }
    }

    else if (!a2)
    {
      *a3 = 0;
      v9 = *a1;
      *(a3 + 8) = v9;
      *(a3 + 16) = v9;
      goto LABEL_22;
    }

    return 0;
  }

  if (*(a1 + 6) > 4u)
  {
    if (v5 == 5)
    {
      if (a2 == 2)
      {
        *a3 = 3;
        v10 = *a1;
        *(a3 + 8) = v10;
        *(a3 + 16) = v10;
        v9 = 8 * v10;
        goto LABEL_22;
      }
    }

    else
    {
      if (v5 != 9)
      {
        return result;
      }

      if (a2 == 1)
      {
        v8 = *a1;
        *a3 = 2;
        *(a3 + 8) = v8;
        *(a3 + 16) = v8;
        v9 = 4 * v8;
LABEL_22:
        *(a3 + 24) = v9;
        return 1;
      }
    }

    return 0;
  }

  if (v5 == 3)
  {
    if (a2 == 7)
    {
      v6 = *a1;
      v7 = 3 * v6;
      goto LABEL_26;
    }

    return 0;
  }

  if (v5 == 4)
  {
    if (a2 == 8)
    {
      v6 = *a1;
      v7 = 4 * v6;
LABEL_26:
      result = 1;
      *a3 = 1;
      *(a3 + 8) = v6;
      *(a3 + 16) = v7;
      *(a3 + 24) = 4 * v7;
      return result;
    }

    return 0;
  }

  return result;
}

__CFString *RB::CustomShader::Value::description(RB::CustomShader::Value *this)
{
  v3 = *(this + 6);
  if (v3 > 7)
  {
    return @"Unknown";
  }

  v4 = RB::CustomShader::Value::description(void)const::names[v3];
  v5 = *this;
  v6 = MEMORY[0x1E696AEC0];
  if (v5 != 1)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%s[%u]", v4, v5, v1, v2];
  }

  return [v6 stringWithUTF8String:v4];
}

uint64_t RB::CustomShader::Closure::color_info(RB::CustomShader::Closure *this)
{
  v1 = this + 8;
  v2 = *(this + 18);
  if (*(this + 17))
  {
    v1 = *(this + 17);
  }

  if (v2)
  {
    v3 = (v1 + 4);
    v4 = 32 * v2;
    _S0 = 0.0;
    do
    {
      v6 = *v3;
      v3 += 16;
      _H1 = v6;
      __asm { FCVT            S1, H1 }

      if (_S0 < _S1)
      {
        _S0 = _S1;
      }

      v4 -= 32;
    }

    while (v4);
  }

  else
  {
    _S0 = 0.0;
  }

  v13 = _S0 > 1.0;
  __asm { FCVT            H0, S0 }

  return (0x100010000 * LODWORD(_S0)) | (4 * v13);
}

BOOL RB::CustomShader::Closure::can_mix(RB::CustomShader::Closure *this, const RB::CustomShader::Closure *a2)
{
  v2 = *this;
  if (*this)
  {
    LODWORD(v2) = *(v2 + 32);
  }

  v3 = *a2;
  if (*a2)
  {
    LODWORD(v3) = *(v3 + 32);
  }

  return v2 == v3;
}

void RB::CustomShader::Closure::mix(RB::CustomShader::Closure *this, const RB::CustomShader::Closure *a2, float32_t a3)
{
  v3 = *(this + 18);
  if (*(a2 + 18) < v3)
  {
    v3 = *(a2 + 18);
  }

  if (v3)
  {
    v7 = 0;
    v8 = a2 + 8;
    v9 = this + 8;
    do
    {
      v10 = *(this + 17);
      if (!v10)
      {
        v10 = v9;
      }

      v11 = &v10[32 * v7];
      v12 = *(a2 + 17);
      if (!v12)
      {
        v12 = v8;
      }

      v13 = &v12[32 * v7];
      v14 = v11[6];
      if (v11[6])
      {
        v15 = v14 == v13[6];
      }

      else
      {
        v15 = 0;
      }

      if (v15 && *v11 == *v13)
      {
        BytePtr = &RB::CustomShader::Value::data_ptr(void)const::null_image;
        if ((v14 - 7) >= 2)
        {
          BytePtr = (v13 + 16);
          if ((v13[9] & 4) == 0)
          {
            BytePtr = CFDataGetBytePtr(*BytePtr);
          }
        }

        if ((v11[9] & 4) != 0)
        {
          v17 = (v11 + 16);
        }

        else
        {
          v17 = RB::CustomShader::Value::mutable_data_ptr(v11);
        }

        v18 = v11[6];
        if ((v18 - 1) >= 4)
        {
          if (v18 == 5 && *v11)
          {
            v22 = 0;
            do
            {
              v23 = *(v11 + 7);
              v31 = vcvt_f16_f32(*&v17[16 * v22]);
              v33 = 0;
              v34 = v23;
              v32 = *(v11 + 2);
              v24 = *(v13 + 7);
              v25 = *&BytePtr[2 * v22];
              *v25.f32 = vcvt_f16_f32(v25);
              v27 = v25.i64[0];
              v29 = 0;
              v30 = v24;
              v28 = *(v13 + 2);
              v25.f32[0] = a3;
              RB::Fill::Color::mix(&v31, &v27, 3, v25);
              *&v17[16 * v22] = vcvtq_f32_f16(v31);
              if (!v22)
              {
                *(v11 + 7) = v34;
                *(v11 + 2) = v32;
              }

              ++v22;
            }

            while (v22 < *v11);
          }
        }

        else
        {
          v19 = *v11;
          if (v18 == 2)
          {
            v19 = 2 * *v11;
          }

          if (v18 == 3)
          {
            v19 = 3 * *v11;
          }

          if (v18 == 4)
          {
            v20 = (4 * *v11);
          }

          else
          {
            v20 = v19;
          }

          if (v20)
          {
            do
            {
              v21 = *BytePtr;
              BytePtr = (BytePtr + 4);
              *v17 = *v17 + ((v21 - *v17) * a3);
              v17 += 4;
              --v20;
            }

            while (v20);
          }
        }
      }

      ++v7;
      v26 = *(this + 18);
      if (*(a2 + 18) < v26)
      {
        v26 = *(a2 + 18);
      }
    }

    while (v7 < v26);
  }
}

CFDataRef *RB::CustomShader::Value::data_ptr(RB::CustomShader::Value *this)
{
  if (*(this + 6) - 7 < 2)
  {
    return &RB::CustomShader::Value::data_ptr(void)const::null_image;
  }

  v2 = *(this + 9);
  result = (this + 16);
  if ((v2 & 4) == 0)
  {
    return CFDataGetBytePtr(*result);
  }

  return result;
}

UInt8 *RB::CustomShader::Value::mutable_data_ptr(RB::CustomShader::Value *this)
{
  if (*(this + 6) - 7 < 2)
  {
    return 0;
  }

  v1 = (this + 16);
  if ((*(this + 9) & 4) != 0)
  {
    return v1;
  }

  MutableCopy = CFDataCreateMutableCopy(0, 0, *v1);
  if (!MutableCopy)
  {
    return 0;
  }

  v3 = MutableCopy;
  CFRelease(*v1);
  *v1 = v3;

  return CFDataGetMutableBytePtr(v3);
}

void RB::CustomShader::Closure::make_cifilter(uint64_t *a1@<X0>, float32x2_t *a2@<X1>, __int128 *a3@<X2>, unsigned int a4@<W3>, void *a5@<X8>)
{
  v6 = a1[20];
  if (v6)
  {
    v11 = objc_opt_new();
    [v11 setType:rb_shader_type(a4 | 0x100000000)];
    [(RBShader *)v11 setRBClosure:a1];
    v12 = a3[1];
    v23 = *a3;
    v24 = v12;
    v25 = a3[2];
    [v11 setCIFilterCTM:&v23];
    v13.i32[0] = 0;
    v14 = a2[1];
    v15 = vmvn_s8(vceqz_f32(v14));
    *v16.i8 = vpmin_u32(v15, v15);
    v17 = vdupq_lane_s32(*&vcgtq_s32(v13, v16), 0);
    v18 = vbslq_s8(v17, vcvtq_f64_f32(v14), *(MEMORY[0x1E695F050] + 16));
    v19 = vbslq_s8(v17, vcvtq_f64_f32(*a2), *MEMORY[0x1E695F050]);
    *a5 = (*(v6 + 16))(v6, v11, v19, v19.n128_f64[1], v18, v18.n128_f64[1]);
    if (v11)
    {
      [v11 CIFilterCTM];
      v21 = v23;
      v20 = v24;
      v22 = v25;
    }

    else
    {
      v22 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
    }

    *a3 = v21;
    a3[1] = v20;
    a3[2] = v22;
  }

  else
  {
    *a5 = 0;
  }
}

void *RB::CustomShader::Closure::prepare_encode(void *this, RB::Encoder *a2)
{
  v3 = this;
  if (*this)
  {
    this = RB::CustomShader::Library::prepare_encode(*(*this + 16), a2);
  }

  v4 = (v3 + 1);
  v5 = v3[18];
  if (v3[17])
  {
    v4 = v3[17];
  }

  if (v5)
  {
    v6 = 32 * v5;
    v7 = (v4 + 24);
    do
    {
      if (*(v7 - 18) - 7 <= 1)
      {
        this = RB::Encoder::prepare_image(a2, *v7, *(v7 - 1));
      }

      v7 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return this;
}

void ***RB::CustomShader::Closure::encode(void ***this, RB::Encoder *a2)
{
  v3 = this;
  v4 = *this;
  if (*this)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::CustomShader::Function::encode(v4, a2);
    this = RB::ProtobufEncoder::end_length_delimited(a2);
  }

  v5 = v3[18];
  if (v3[17])
  {
    v6 = v3[17];
  }

  else
  {
    v6 = (v3 + 1);
  }

  if (v5)
  {
    v7 = 32 * v5;
    do
    {
      RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);
      RB::ProtobufEncoder::begin_length_delimited(a2);
      RB::CustomShader::Value::encode(v6, a2);
      this = RB::ProtobufEncoder::end_length_delimited(a2);
      v6 += 4;
      v7 -= 32;
    }

    while (v7);
  }

  return this;
}

unint64_t RB::CustomShader::Closure::decode(RB::CustomShader::Closure *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      if ((v5 >> 3) == 2)
      {
        v7 = *(this + 18);
        if (*(this + 19) < (v7 + 1))
        {
          RB::vector<RB::Path::Buffer,4ul,unsigned long>::reserve_slow(this + 8, v7 + 1);
          v7 = *(this + 18);
        }

        v8 = *(this + 17);
        if (!v8)
        {
          v8 = this + 8;
        }

        v9 = &v8[32 * v7];
        *v9 = 0x1100000000000000;
        v9[8] = 1;
        v9[9] = v9[9] & 0xF8 | 4;
        v10 = *(this + 18) + 1;
        *(this + 18) = v10;
        if ((v5 & 7) == 2)
        {
          v11 = *(this + 17);
          if (!v11)
          {
            v11 = this + 8;
          }

          v12 = &v11[32 * v10 - 32];
          RB::ProtobufDecoder::begin_message(a2);
          RB::CustomShader::Value::decode(v12, a2);
          RB::ProtobufDecoder::end_message(a2);
        }

        else
        {
          *(a2 + 56) = 1;
          *a2 = *(a2 + 1);
        }
      }

      else if ((v5 >> 3) == 1)
      {
        RB::CustomShader::Function::decode(a2, v5, &v13);
        v6 = *this;
        *this = v13;
        v13 = v6;
        if (v6 && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          RB::CustomShader::Library::intern_function(v6);
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

  if (!*this)
  {
    *(a2 + 56) = 1;
    *a2 = *(a2 + 1);
  }

  return result;
}

unint64_t RB::CustomShader::Value::set_data(uint64_t a1, int a2, const __CFData *a3)
{
  RB::CustomShader::Value::reset_data(a1);
  result = CFDataGetLength(a3);
  if (HIDWORD(result))
  {
    return result;
  }

  v7 = result;
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      v8 = result >> 3;
      v9 = result / 0xC;
      if (a2 != 3)
      {
        v9 = 0;
      }

      if (a2 != 2)
      {
        LODWORD(v8) = v9;
      }

      goto LABEL_17;
    }

    LODWORD(v8) = result;
    if (a2)
    {
      LODWORD(v8) = 0;
      if (a2 == 1)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    if ((a2 - 4) >= 2)
    {
      if ((a2 - 7) < 2)
      {
        return result;
      }

      LODWORD(v8) = 0;
      if (a2 != 9)
      {
        goto LABEL_17;
      }

LABEL_10:
      v8 = result >> 2;
      goto LABEL_17;
    }

    v8 = result >> 4;
  }

LABEL_17:
  *a1 = v8;
  *(a1 + 6) = a2;
  if (result > 0x10)
  {
    *(a1 + 9) &= ~4u;
    result = CFDataCreateCopy(0, a3);
    *(a1 + 16) = result;
  }

  else
  {
    BytePtr = CFDataGetBytePtr(a3);

    return memcpy((a1 + 16), BytePtr, v7);
  }

  return result;
}

BOOL RB::CustomShader::Value::operator==(RB::CustomShader::Value *this, uint64_t a2)
{
  v2 = *(this + 6);
  if (v2 != *(a2 + 6))
  {
    return 0;
  }

  if (*this != *a2)
  {
    return 0;
  }

  v5 = *(this + 8);
  v6 = *(a2 + 8);
  if (v5 == v6 && v5 != 0)
  {
    v5 = *(this + 7);
    v6 = *(a2 + 7);
  }

  if (v5 != v6 || ((*(a2 + 9) ^ *(this + 9)) & 3) != 0 || *(this + 2) != *(a2 + 4))
  {
    return 0;
  }

  if ((v2 - 7) > 1)
  {
    v10 = RB::CustomShader::Value::data_ptr(this);
    v11 = RB::CustomShader::Value::data_ptr(a2);
    return memcmp(v10, v11, *this * *(&RB::CustomShader::Value::bytes_per_element + *(this + 6))) == 0;
  }

  else
  {
    if (*(this + 2) != *(a2 + 16))
    {
      return 0;
    }

    return *(this + 6) == *(a2 + 24);
  }
}

float RB::CustomShader::Value::float_value(RB::CustomShader::Value *this)
{
  result = 0.0;
  if (*this == 1 && *(this + 6) == 1)
  {
    v2 = *(this + 9);
    if ((v2 & 1) == 0)
    {
      BytePtr = (this + 16);
      if ((v2 & 4) == 0)
      {
        BytePtr = CFDataGetBytePtr(*BytePtr);
      }

      return *BytePtr;
    }
  }

  return result;
}

double RB::CustomShader::Value::float2_value(RB::CustomShader::Value *this)
{
  result = 0.0;
  if (*this == 1 && *(this + 6) == 2)
  {
    v2 = *(this + 9);
    if ((v2 & 1) == 0)
    {
      BytePtr = (this + 16);
      if ((v2 & 4) == 0)
      {
        BytePtr = CFDataGetBytePtr(*BytePtr);
      }

      return *BytePtr;
    }
  }

  return result;
}

void *RB::CustomShader::Value::encode(void *this, RB::Encoder *a2)
{
  v3 = this;
  v4 = *this;
  if (v4 != 1)
  {
    RB::ProtobufEncoder::encode_varint(a2, 8uLL);
    this = RB::ProtobufEncoder::encode_varint(a2, v4);
  }

  v5 = *(v3 + 6);
  if (v5 == 1)
  {
    v6 = 1u;
  }

  else
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x10uLL);
    this = RB::ProtobufEncoder::encode_varint(a2, v5);
    v6 = *(v3 + 6);
    if (v6 - 7 <= 1)
    {
      this = RB::Encoder::image_field(a2, 6, *(v3 + 24), *(v3 + 16));
      goto LABEL_13;
    }
  }

  if ((*(v3 + 9) & 4) != 0)
  {
    v12 = *v3 * *(&RB::CustomShader::Value::bytes_per_element + v6);
    if (v12)
    {
      RB::ProtobufEncoder::encode_varint(a2, 0x1AuLL);
      v10 = (v3 + 16);
      v9 = a2;
      v11 = v12;
      goto LABEL_12;
    }
  }

  else
  {
    BytePtr = CFDataGetBytePtr(*(v3 + 16));
    this = CFDataGetLength(*(v3 + 16));
    if (this)
    {
      v8 = this;
      RB::ProtobufEncoder::encode_varint(a2, 0x1AuLL);
      v9 = a2;
      v10 = BytePtr;
      v11 = v8;
LABEL_12:
      this = RB::ProtobufEncoder::encode_data(v9, v10, v11);
    }
  }

LABEL_13:
  if (*(v3 + 6) == 5 && *(v3 + 8) == 1)
  {
    v13 = rb_color_space(*(v3 + 7) | 0x100u);
    RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);
    this = RB::ProtobufEncoder::encode_varint(a2, v13);
  }

  if (*(v3 + 9))
  {
    if ((*(v3 + 9) & 2) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    RB::ProtobufEncoder::encode_varint(a2, 0x28uLL);
    this = RB::ProtobufEncoder::encode_varint(a2, v14);
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    __asm { FCVT            S8, H0 }

    RB::ProtobufEncoder::encode_varint(a2, 0x3DuLL);

    return RB::ProtobufEncoder::encode_fixed32(a2, _S8);
  }

  return this;
}

void RB::CustomShader::Value::decode(RB::CustomShader::Value *this, RB::Decoder *a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 1;
  v9 = 1;
  while (1)
  {
    v10 = v9;
    field = RB::ProtobufDecoder::next_field(a2);
    if (!field)
    {
      break;
    }

    v12 = field >> 3;
    if ((field >> 3) <= 3)
    {
      switch(v12)
      {
        case 1:
          v8 = RB::ProtobufDecoder::uint_field(a2, field);
          v9 = v10;
          break;
        case 2:
          v9 = RB::ProtobufDecoder::uint_field(a2, field);
          if (v9 > 9)
          {
            *(a2 + 56) = 1;
            *a2 = *(a2 + 1);
            goto LABEL_29;
          }

          break;
        case 3:
          v5 = RB::ProtobufDecoder::data_field(a2, field);
          v4 = v14;
          goto LABEL_29;
        default:
          goto LABEL_16;
      }
    }

    else if (v12 > 5)
    {
      if (v12 == 6)
      {
        v7 = RB::Decoder::image_field(a2, field);
        v23 = v22;
        if (v6 != v22)
        {
          if (v6)
          {
            CFRelease(v6);
          }

          if (v23)
          {
            v6 = CFRetain(v23);
          }

          else
          {
            v6 = 0;
          }
        }
      }

      else
      {
        if (v12 != 7)
        {
          goto LABEL_16;
        }

        _S0 = RB::ProtobufDecoder::float_field(a2, field);
        __asm { FCVT            H0, S0 }

        *(this + 2) = LOWORD(_S0);
      }

LABEL_29:
      v9 = v10;
    }

    else if (v12 == 4)
    {
      v20 = RB::ProtobufDecoder::uint_field(a2, field);
      v21 = rb_color_space(v20);
      v9 = v10;
      if ((v21 & 0x100) != 0)
      {
        if ((*(this + 8) & 1) == 0)
        {
          *(this + 8) = 1;
        }

        *(this + 7) = v21;
        goto LABEL_29;
      }
    }

    else
    {
      if (v12 == 5)
      {
        v13 = RB::ProtobufDecoder::uint_field(a2, field);
        *(this + 9) = (v13 != 0) | (2 * (v13 == 2)) | *(this + 9) & 0xFC;
        goto LABEL_29;
      }

LABEL_16:
      RB::ProtobufDecoder::skip_field(a2, field);
      v9 = v10;
    }
  }

  if ((v10 - 7) <= 1u)
  {
    v24[1] = v6;
    v24[0] = v7;
    RB::CustomShader::Value::set_bytes(this, v10, 1uLL, v24);
    goto LABEL_35;
  }

  if (is_mul_ok(v8, *(&RB::CustomShader::Value::bytes_per_element + v10)) && v4 == v8 * *(&RB::CustomShader::Value::bytes_per_element + v10))
  {
    RB::CustomShader::Value::set_bytes(this, v10, v8, v5);
LABEL_35:
    if (v6)
    {
LABEL_36:
      CFRelease(v6);
    }
  }

  else
  {
    *(a2 + 56) = 1;
    *a2 = *(a2 + 1);
    if (v6)
    {
      goto LABEL_36;
    }
  }
}

void sub_195DAECFC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::Refcount<RB::CustomShader::Library,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return RB::CustomShader::Function::finalize(result);
  }

  return result;
}

uint64_t RB::Refcount<RB::CustomShader::Function,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return RB::CustomShader::Library::intern_function(result);
  }

  return result;
}

uint64_t RB::CustomShader::Library::Library(RB::CustomShader::Library::Type,objc_object *)::$_2::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t RB::CustomShader::Library::finalize(void)::$_0::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void RB::CustomShader::Library::call_error_handler(NSError *)const::$_0::__invoke(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 8 * v5;
    do
    {
      v7 = *v4++;
      (*(v7 + 16))();
      v6 -= 8;
    }

    while (v6);
    v3 = *(a1 + 72);
    if (v3)
    {
      v2 = *(a1 + 72);
    }

    if (*(a1 + 80))
    {
      v8 = 0;
      do
      {
      }

      while (v8 < *(a1 + 80));
      v3 = *(a1 + 72);
    }
  }

  if (v3)
  {
    free(v3);
  }

  JUMPOUT(0x19A8C09E0);
}

void *RB::vector<RB::objc_ptr<void({block_pointer})(NSError *)>,8ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 19) + (*(__dst + 19) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 19) + (*(__dst + 19) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,8ul>(*(__dst + 8), __dst, 8u, __dst + 19, v3);
  *(__dst + 8) = result;
  return result;
}

void *RB::details::realloc_vector<unsigned int,8ul>(void *__src, void *__dst, unsigned int a3, _DWORD *a4, unsigned int a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      LODWORD(v9) = a3;
      memcpy(__dst, __src, 8 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(8 * a5);
    v9 = v8 >> 3;
    if (*a4 != (v8 >> 3))
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 8 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

void *RB::vector<RB::CustomShader::Closure::marshal_args(RB::RenderPass &,RB::Function &,RB::ColorSpace,RB::Rect const*,unsigned char *,RB::BufferRegion &,std::array<RB::Texture *,3ul> &)::PendingArg,0ul,unsigned long>::reserve_slow(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,48ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

void *RB::details::realloc_vector<unsigned long,48ul>(void *a1, unint64_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(48 * a3);
    v6 = v5 / 0x30;
    if (v5 / 0x30 != *a2)
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