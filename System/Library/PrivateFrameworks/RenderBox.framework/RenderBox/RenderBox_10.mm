unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Gradient>::has_no_effect(uint64_t a1)
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

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Gradient>::prepare_mix(float64x2_t **a1, RB::DisplayList::Interpolator::Contents *a2, unint64_t *a3, float64x2_t **a4)
{
  result = (*&(*a4)[1].f64[0])(a4);
  if (result == 8392705)
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
          can_mix = RB::Fill::Gradient::can_mix((a1 + 14), (a4 + 14), v12);

          return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v13, can_mix);
        }
      }
    }
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Gradient>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v15[0] = v10;
  v15[1] = v11;
  v15[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v15);
  v13.i32[0] = *(a2 + 16);
  RB::Fill::Gradient::mix((v8 + 112), *(a2 + 8), (a3 + 112), v13, (*(*&a4->f64[0] + 8) + 16));
  RB::operator*(a1[6], a4 + 68);
  RB::operator*(*(a3 + 48), a4 + 68);
  RB::Coverage::Primitive::mix(v8 + 64, a2, a3 + 64);
  if ((*(v8 + 46) & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Gradient>::encode(float32x4_t *a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Primitive>(this, 1, a1 + 4);
  RB::Encoder::typed_message_field<RB::Fill::Gradient>(this, 2, &a1[7]);
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

void RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Gradient>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Primitive>();
}

__n128 RB::DisplayList::GenericItemCopyVisitor<RB::Fill::Gradient>::visit_<RB::Coverage::Primitive>(void *a1, __int128 *a2)
{
  v3 = a1[3];
  v4 = a1[1];
  v5 = a1[2];
  v9 = *(v5 + 46) & 0x3F;
  v6 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage9PrimitiveENS_4Fill8GradientEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a2, v3, a1 + 4, (v5 + 44), &v9);
  a1[5] = v6;
  v7 = a1[2];
  result = v7[1];
  v6[1] = result;
  v6[2].n128_u64[0] = v7[2].n128_u64[0];
  v6[2].n128_u32[2] = v7[2].n128_u32[2];
  v6[2].n128_u16[7] |= v7[2].n128_u16[7] & 0x7000;
  return result;
}

__n128 RB::DisplayList::GenericItemCopyVisitor<RB::Fill::Gradient>::visit_<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[1];
  v5 = a1[2];
  v9 = *(v5 + 46) & 0x3F;
  v6 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeINS4_14StrokeablePathEEENS_4Fill8GradientEEEJRS0_RKS7_RKS9_RPKNS_15AffineTransformERKDF16_NS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a2, v3, a1 + 4, (v5 + 44), &v9);
  a1[5] = v6;
  v7 = a1[2];
  result = v7[1];
  v6[1] = result;
  v6[2].n128_u64[0] = v7[2].n128_u64[0];
  v6[2].n128_u32[2] = v7[2].n128_u32[2];
  v6[2].n128_u16[7] |= v7[2].n128_u16[7] & 0x7000;
  return result;
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeINS4_14StrokeablePathEEENS_4Fill8GradientEEEJRS0_RKS7_RKS9_RPKNS_15AffineTransformERKDF16_NS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, RB::Heap *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
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

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::GenericItem1(v15, a2, a3, a4, *a5, *a7, 0, _S0);
  *result = &unk_1F0A3BF38;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::GenericItem1(uint64_t a1, RB::Heap *a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6, __int16 a7, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F;
  *a1 = &unk_1F0A3A870;
  *(a1 + 48) = a5;
  *(a1 + 56) = &unk_1F0A38388;
  RB::Coverage::StrokeablePath::StrokeablePath(a1 + 64, a3 + 8, a2);
  *(a1 + 112) = *(a3 + 56);
  *(a1 + 128) = *(a3 + 72);
  *(a1 + 129) = *(a3 + 73);
  *(a1 + 131) = *(a3 + 75);
  *(a1 + 132) = *(a3 + 76);
  *(a1 + 136) = *(a3 + 80);
  RB::Fill::Gradient::Gradient((a1 + 144), a4, a7, a2);
  return a1;
}

void sub_195D6C054(_Unwind_Exception *a1)
{
  v1[7] = v2;
  RBPathRelease(v1[8], v1[9]);
  _Unwind_Resume(a1);
}

void *RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3A870;
  a1[7] = &unk_1F0A38388;
  RBPathRelease(a1[8], a1[9]);
  return a1;
}

void RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3A870;
  a1[7] = &unk_1F0A38388;
  RBPathRelease(a1[8], a1[9]);

  JUMPOUT(0x19A8C09E0);
}

void *RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::copy(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (*(a2 + 8) + 16);
  v5 = *(a1 + 46);
  if (a3 & 2 | v5 & 0x2000 || *(a2 + 288) != 1)
  {
    v8 = 0;
LABEL_6:
    LODWORD(v9[0]) = v5 & 0x3F;
    result = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeINS4_14StrokeablePathEEENS_4Fill8GradientEEEJRS0_RKS7_RKS9_RPKNS_15AffineTransformERKDF16_NS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a1 + 56, (a1 + 144), (a1 + 48), (a1 + 44), v9);
    *(result + 1) = *(a1 + 16);
    result[4] = *(a1 + 32);
    *(result + 10) = *(a1 + 40);
    v7 = *(result + 23) | *(a1 + 46) & 0x7000;
    *(result + 23) = v7;
    goto LABEL_7;
  }

  v9[0] = &unk_1F0A3D7C0;
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

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::make_clip(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v23 = 0.0;
  v24 = a3;
  if (!RB::Fill::Gradient::get_alpha((a1 + 144), &v23))
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

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::color_info(uint64_t a1, float a2, float a3)
{
  LOWORD(a2) = *(a1 + 192);
  LOWORD(a3) = *(a1 + 194);
  if (*&a3 >= *&a2 || *&a3 == COERCE_SHORT_FLOAT(0))
  {
    LOWORD(a3) = *(a1 + 192);
  }

  return (LODWORD(a2) << 16) | (LODWORD(a3) << 32) | *(a1 + 204);
}

float RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::min_scale(uint64_t a1)
{
  result = 0.0;
  if (!*(a1 + 128) && *(a1 + 132) == 1)
  {
    return 1.0;
  }

  return result;
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::has_no_effect(uint64_t a1)
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

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::render(uint64_t a1, int a2, int32x2_t *a3, double a4, int a5, int a6)
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

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::prepare_mix(uint64_t a1, RB::DisplayList::Interpolator::Contents *a2, unint64_t *a3, uint64_t a4)
{
  result = (*(*a4 + 16))(a4);
  if (result == 8400897)
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
            can_mix = RB::Fill::Gradient::can_mix((a1 + 144), (a4 + 144), v13);

            return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v14, can_mix);
          }
        }
      }
    }
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v26[0] = v10;
  v26[1] = v11;
  v26[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v26);
  v13 = (*(*&a4->f64[0] + 8) + 16);
  v14.i32[0] = *(a2 + 16);
  RB::Fill::Gradient::mix((v8 + 144), *(a2 + 8), (a3 + 144), v14, v13);
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
    *&v23 = &unk_1F0A3D7C0;
    *(&v23 + 1) = v13;
    *&v24 = v8;
    *(&v24 + 1) = v8 + 144;
    v25 = *(v8 + 48);
    RB::Coverage::StrokeablePath::simplify(v8 + 64, v8 + 56, &v23);
    if (*(&v25 + 1))
    {
      *v8 = &unk_1F0A3A870;
      *(v8 + 56) = &unk_1F0A38388;
      RBPathRelease(*(v8 + 64), *(v8 + 72));
      v8 = *(&v25 + 1);
    }

    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::encode(void *a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>(this, 1, (a1 + 7));
  RB::Encoder::typed_message_field<RB::Fill::Gradient>(this, 2, (a1 + 18));
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

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>();
}

uint64_t RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath>&,float &,RB::ClipMode &,RB::AffineTransform const*&>(size_t *a1, uint64_t a2, uint64_t a3, int *a4, _DWORD *a5, uint64_t *a6)
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

void sub_195D6CB8C(_Unwind_Exception *a1)
{
  v1[7] = v2;
  RBPathRelease(v1[8], v1[9]);
  _Unwind_Resume(a1);
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeINS4_14StrokeablePathEEENS_4Fill8GradientEEEJRS7_RKS9_RPKNS_15AffineTransformEDF16_RNS_9BlendModeEEEEPT_DpOT0_(RB::Heap *this, uint64_t a2, _OWORD *a3, uint64_t *a4, __int16 *a5, _DWORD *a6)
{
  v12 = *(this + 3);
  v13 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v13 + 208 > v12)
  {
    v13 = RB::Heap::alloc_slow(this, 0xD0uLL, 7);
  }

  else
  {
    *(this + 2) = v13 + 208;
  }

  _H0 = *a5;
  __asm { FCVT            S0, H0 }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::GenericItem1(v13, a2, a3, *a4, *a6, _S0);
  *result = &unk_1F0A3BF38;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Gradient>::GenericItem1(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, char a5, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a5 & 0x3F;
  *a1 = &unk_1F0A3A870;
  *(a1 + 48) = a4;
  *(a1 + 56) = &unk_1F0A38388;
  *(a1 + 64) = RBPathRetain(*(a2 + 8), *(a2 + 16));
  *(a1 + 72) = v14;
  v15 = *(a2 + 40);
  *(a1 + 80) = *(a2 + 24);
  *(a1 + 96) = v15;
  v16 = *(a2 + 68);
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 124) = v16;
  v18 = a3[2];
  v17 = a3[3];
  v19 = a3[1];
  *(a1 + 144) = *a3;
  *(a1 + 160) = v19;
  *(a1 + 176) = v18;
  *(a1 + 192) = v17;
  return a1;
}

void *RB::Encoder::typed_message_field<RB::Fill::Gradient>(RB::Encoder *a1, uint64_t a2, RB::Fill::Gradient *a3)
{
  RB::ProtobufEncoder::encode_varint(a1, (8 * a2) | 2);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RB::ProtobufEncoder::encode_varint(a1, 0x12uLL);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RB::Fill::Gradient::encode(a3, a1);
  RB::ProtobufEncoder::end_length_delimited(a1);

  return RB::ProtobufEncoder::end_length_delimited(a1);
}

void sub_195D6CE74(_Unwind_Exception *exception_object)
{
  v3 = v1[2] - 1;
  v1[2] = v3;
  if (!v3)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *RB::Encoder::typed_message_field<RB::Fill::Color>(RB::Encoder *a1, uint64_t a2, RB::Fill::Color *a3)
{
  RB::ProtobufEncoder::encode_varint(a1, (8 * a2) | 2);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RB::ProtobufEncoder::encode_varint(a1, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RB::Fill::Color::encode(a3, a1);
  RB::ProtobufEncoder::end_length_delimited(a1);

  return RB::ProtobufEncoder::end_length_delimited(a1);
}

void sub_195D6D018(_Unwind_Exception *exception_object)
{
  v3 = v1[2] - 1;
  v1[2] = v3;
  if (!v3)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 RB::DisplayList::GenericItemCopyVisitor<RB::Fill::Color>::visit_<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[1];
  v5 = a1[2];
  v9 = *(v5 + 46) & 0x3F;
  v6 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeINS4_14StrokeablePathEEENS_4Fill5ColorEEEJRS0_RKS7_RKS9_RPKNS_15AffineTransformERKDF16_NS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a2, v3, a1 + 4, (v5 + 44), &v9);
  a1[5] = v6;
  v7 = a1[2];
  result = v7[1];
  v6[1] = result;
  v6[2].n128_u64[0] = v7[2].n128_u64[0];
  v6[2].n128_u32[2] = v7[2].n128_u32[2];
  v6[2].n128_u16[7] |= v7[2].n128_u16[7] & 0x7000;
  return result;
}

void RB::DisplayList::GenericItem<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3ABA0;
  a1[7] = &unk_1F0A38388;
  RBPathRelease(a1[8], a1[9]);

  JUMPOUT(0x19A8C09E0);
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>::make_clip(uint64_t a1, uint64_t a2, int a3, void *a4, float a5)
{
  v22 = a3;
  _H1 = *(a1 + 150);
  __asm { FCVT            S1, H1 }

  v13 = *(a2 + 8);
  _H2 = *(a1 + 44);
  __asm { FCVT            S2, H2 }

  v21 = (_S1 * a5) * _S2;
  v16 = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath>&,float &,RB::ClipMode &,RB::AffineTransform const*&>((v13 + 16), v13 + 16, a1 + 56, &v21, &v22, (a1 + 48));
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

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>::append_alpha_gradient(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = *(a1 + 150) * *(a1 + 44);
  v4 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6StrokeINS4_14StrokeablePathEEENS_4Fill8GradientEEEJRS7_RKS9_RPKNS_15AffineTransformEDF16_RNS_9BlendModeEEEEPT_DpOT0_((v7 + 16), a1 + 56, (a3 + 8), (a1 + 48), &v8, &v9);
  *(v4 + 1) = *(a1 + 16);
  v4[4] = *(a1 + 32);
  *(v4 + 10) = *(a1 + 40);
  (**a1)(a1);
  return v4;
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>::has_no_effect(uint64_t a1)
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

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>::prepare_mix(uint64_t a1, RB::DisplayList::Interpolator::Contents *a2, unint64_t *a3, uint64_t a4)
{
  result = (*(*a4 + 16))(a4);
  if (result == 4206593)
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
            can_mix = RB::Fill::Color::can_mix((a1 + 144), (a4 + 144));

            return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v13, can_mix);
          }
        }
      }
    }
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v26[0] = v10;
  v26[1] = v11;
  v26[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v26);
  v13 = (*(*&a4->f64[0] + 8) + 16);
  v14.i32[0] = *(a2 + 16);
  RB::Fill::Color::mix(v8 + 144, a3 + 144, 3, v14);
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
    *&v23 = &unk_1F0A3D7A0;
    *(&v23 + 1) = v13;
    *&v24 = v8;
    *(&v24 + 1) = v8 + 144;
    v25 = *(v8 + 48);
    RB::Coverage::StrokeablePath::simplify(v8 + 64, v8 + 56, &v23);
    if (*(&v25 + 1))
    {
      *v8 = &unk_1F0A3ABA0;
      *(v8 + 56) = &unk_1F0A38388;
      RBPathRelease(*(v8 + 64), *(v8 + 72));
      v8 = *(&v25 + 1);
    }

    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>::encode(void *a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>(this, 1, (a1 + 7));
  RB::Encoder::typed_message_field<RB::Fill::Color>(this, 2, (a1 + 18));
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

void RB::DisplayList::GenericItem1<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>,RB::Fill::Color>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>();
}

uint64_t RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Path>,RB::Heap&,RB::Coverage::Path&,float &,RB::ClipMode &,RB::AffineTransform const*&>(size_t *a1, size_t *a2, uint64_t a3, int *a4, int *a5, uint64_t *a6)
{
  v11 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v11 + 96 > a1[3])
  {
    v11 = RB::Heap::alloc_slow(a1, 0x60uLL, 7);
  }

  else
  {
    a1[2] = v11 + 96;
  }

  v12 = *a4;
  v13 = *a5;
  v14 = *a6;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 40) = 0;
  *(v11 + 32) = 0;
  *(v11 + 44) = v13;
  *v11 = &unk_1F0A3D298;
  *(v11 + 48) = v14;
  *(v11 + 56) = RBPathRetain(*a3, *(a3 + 8));
  *(v11 + 64) = v15;
  v16 = *(a3 + 16);
  if (v16)
  {
    v17 = ((a2[2] + 15) & 0xFFFFFFFFFFFFFFF0);
    if ((v17 + 3) > a2[3])
    {
      v17 = RB::Heap::alloc_slow(a2, 0x30uLL, 15);
    }

    else
    {
      a2[2] = (v17 + 3);
    }

    v18 = *v16;
    v19 = v16[2];
    v17[1] = v16[1];
    v17[2] = v19;
    *v17 = v18;
  }

  else
  {
    v17 = 0;
  }

  *(v11 + 72) = v17;
  *(v11 + 80) = *(a3 + 24);
  *(v11 + 84) = *(a3 + 28);
  *(v11 + 88) = v12;
  RB::DisplayList::GenericClip<RB::Coverage::Path>::update_bounds(v11);
  return v11;
}

void RB::DisplayList::GenericClip<RB::Coverage::Path>::~GenericClip(uint64_t a1)
{
  RBPathRelease(*(a1 + 56), *(a1 + 64));

  JUMPOUT(0x19A8C09E0);
}

uint64_t RB::DisplayList::GenericClip<RB::Coverage::Path>::can_mix(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v9 = RB::Coverage::Path::can_mix((a1 + 56), v11, (a3 + 56));
  if (v9 >= v8)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t RB::DisplayList::GenericClip<RB::Coverage::Path>::mix(uint64_t a1, float *a2, uint64_t a3, float64x2_t *a4)
{
  v8 = *(*&a4->f64[0] + 8);
  RB::mix(*(a1 + 48), *(a3 + 48), a3, a2[4]);
  v24[0] = v9;
  v24[1] = v10;
  v24[2] = v11;
  v12 = *(a1 + 88);
  v13 = *(a3 + 88);
  v14 = a2[4];
  v15 = *(a1 + 44);
  v16 = RB::DisplayList::CachedTransform::transform_ctm(a4, v24);
  v17 = (v8[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v17 + 96 > v8[5])
  {
    v17 = RB::Heap::alloc_slow(v8 + 2, 0x60uLL, 7);
  }

  else
  {
    v8[4] = v17 + 96;
  }

  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 40) = 0;
  *(v17 + 32) = 0;
  *(v17 + 44) = v15;
  *(v17 + 45) = 0;
  *v17 = &unk_1F0A3D298;
  *(v17 + 48) = v16;
  *(v17 + 56) = RBPathRetain(*(a1 + 56), *(a1 + 64));
  *(v17 + 64) = v18;
  v19 = *(a1 + 72);
  if (v19)
  {
    v20 = ((v8[4] + 15) & 0xFFFFFFFFFFFFFFF0);
    if ((v20 + 3) > v8[5])
    {
      v20 = RB::Heap::alloc_slow(v8 + 2, 0x30uLL, 15);
    }

    else
    {
      v8[4] = (v20 + 3);
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

  *(v17 + 72) = v20;
  *(v17 + 80) = *(a1 + 80);
  *(v17 + 84) = *(a1 + 84);
  *(v17 + 88) = v12 + ((v13 - v12) * v14);
  RB::DisplayList::GenericClip<RB::Coverage::Path>::update_bounds(v17);
  RB::Coverage::Path::mix((v17 + 56), a2, (a3 + 56), *(a1 + 48), *(a3 + 48), v24, (v8 + 2));
  RB::DisplayList::GenericClip<RB::Coverage::Path>::update_bounds(v17);
  return v17;
}

void *RB::DisplayList::GenericClip<RB::Coverage::Path>::encode(uint64_t a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Path>(this, 1, (a1 + 56));
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

  v6 = *(a1 + 88);
  if (*&v6 != 1.0)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x1DuLL);
    RB::ProtobufEncoder::encode_fixed32(this, v6);
  }

  RB::ProtobufEncoder::end_length_delimited(this);

  return RB::DisplayList::Clip::encode(a1, this);
}

void RB::DisplayList::GenericClip<RB::Coverage::Path>::print(uint64_t a1, RB::SexpString *this)
{
  RB::SexpString::push(this, "clip");
  RB::DisplayList::Clip::print(a1, this);
  v4 = *(a1 + 88);
  if (v4 != 1.0)
  {
    RB::SexpString::printf(this, 0, "(alpha %g)", v4);
  }

  RB::SexpString::print_ctm(this, *(a1 + 48));
  RB::XML::print_attributes<RB::Coverage::Path>();
}

uint64_t RB::DisplayList::GenericClipCopyVisitor<RB::Coverage::Path>::visit(uint64_t a1, uint64_t a2)
{
  result = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,float const&,RB::ClipMode &,RB::AffineTransform const*&>(*(a1 + 8), *(a1 + 8), a2, (*(a1 + 16) + 88), (a1 + 24), (a1 + 32));
  *(a1 + 40) = result;
  return result;
}

void RB::Path::ImmediateRenderer::~ImmediateRenderer(RB::Path::ImmediateRenderer *this)
{
  if (*(this + 288) == 1)
  {
    RB::Path::Accumulator::commit_buffer((this + 8));
  }

  v2 = *(this + 32);
  if (v2)
  {
    free(v2);
  }
}

void sub_195D6DF38(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 256);
  if (v3)
  {
    free(v3);
  }

  _Unwind_Resume(exception_object);
}

void *RB::Encoder::typed_message_field<RB::Coverage::Path>(RB::Encoder *a1, uint64_t a2, RBPath *a3)
{
  RB::ProtobufEncoder::encode_varint(a1, (8 * a2) | 2);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RB::ProtobufEncoder::encode_varint(a1, 0x12uLL);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RB::Coverage::Path::encode(a3, a1);
  RB::ProtobufEncoder::end_length_delimited(a1);

  return RB::ProtobufEncoder::end_length_delimited(a1);
}

void sub_195D6E0B0(_Unwind_Exception *exception_object)
{
  v3 = v1[2] - 1;
  v1[2] = v3;
  if (!v3)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage4PathENS_4Fill8GradientEEEJRS5_RKS7_RPKNS_15AffineTransformEDF16_RNS_9BlendModeEEEEPT_DpOT0_(size_t *a1, uint64_t *a2, _OWORD *a3, uint64_t *a4, __int16 *a5, _WORD *a6)
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
  *(v11 + 46) = v14 & 0x3F;
  *v11 = &unk_1F0A3B530;
  *(v11 + 48) = v12;
  *(v11 + 56) = RBPathRetain(*a2, a2[1]);
  *(v11 + 64) = v15;
  v16 = *(a2 + 22);
  *(v11 + 72) = a2[2];
  *(v11 + 78) = v16;
  v17 = a3[2];
  v18 = a3[3];
  v19 = a3[1];
  *(v11 + 88) = *a3;
  *(v11 + 136) = v18;
  *(v11 + 120) = v17;
  *(v11 + 104) = v19;
  *v11 = &unk_1F0A3CBF8;
  return v11;
}

void *RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Gradient>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3B530;
  RBPathRelease(a1[7], a1[8]);
  return a1;
}

void RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Gradient>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3B530;
  RBPathRelease(a1[7], a1[8]);

  JUMPOUT(0x19A8C09E0);
}

void *RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Gradient>::copy(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (*(a2 + 8) + 16);
  v5 = *(a1 + 46);
  if (a3 & 2 | v5 & 0x2000 || *(a2 + 288) != 1)
  {
    v8 = 0;
LABEL_6:
    LODWORD(v9[0]) = v5 & 0x3F;
    result = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage4PathENS_4Fill8GradientEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a1 + 56, (a1 + 88), (a1 + 48), (a1 + 44), v9);
    *(result + 1) = *(a1 + 16);
    result[4] = *(a1 + 32);
    *(result + 10) = *(a1 + 40);
    v7 = *(result + 23) | *(a1 + 46) & 0x7000;
    *(result + 23) = v7;
    goto LABEL_7;
  }

  v9[0] = &unk_1F0A3D7C0;
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

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Gradient>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

float32x2_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Gradient>::atom_position(uint64_t a1)
{
  v4.var1 = *(a1 + 48);
  v4.var0 = (a1 + 56);
  v1 = RB::Coverage::Path::bounds(v4);
  return vmla_f32(*&v1, 0x3F0000003F000000, v2);
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Gradient>::make_clip(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v23 = 0.0;
  v24 = a3;
  if (!RB::Fill::Gradient::get_alpha((a1 + 88), &v23))
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

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Gradient>::color_info(uint64_t a1, float a2, float a3)
{
  LOWORD(a2) = *(a1 + 136);
  LOWORD(a3) = *(a1 + 138);
  if (*&a3 >= *&a2 || *&a3 == COERCE_SHORT_FLOAT(0))
  {
    LOWORD(a3) = *(a1 + 136);
  }

  return (LODWORD(a2) << 16) | (LODWORD(a3) << 32) | *(a1 + 148);
}

double RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Gradient>::bounds(uint64_t a1)
{
  v2.var1 = *(a1 + 48);
  v2.var0 = (a1 + 56);
  return RB::Coverage::Path::bounds(v2);
}

float RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Gradient>::min_scale(uint64_t a1)
{
  result = RB::Coverage::Path::min_scale((a1 + 56), *(a1 + 48));
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Gradient>::has_no_effect(uint64_t a1)
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

void RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Gradient>::render(uint64_t a1, int a2, RB::RenderPass *a3, double a4, char a5, unsigned int a6)
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

void sub_195D6E714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  if (a47)
  {
    free(a47);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Gradient>::prepare_mix(float64x2_t **a1, RB::DisplayList::Interpolator::Contents *a2, const RB::DisplayList::Interpolator::Op *a3, float64x2_t **a4)
{
  result = (*&(*a4)[1].f64[0])(a4);
  if (result == 8396801)
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
          can_mix = RB::Fill::Gradient::can_mix((a1 + 11), (a4 + 11), v12);

          return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v13, can_mix);
        }
      }
    }
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Gradient>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v26[0] = v10;
  v26[1] = v11;
  v26[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v26);
  v13 = (*(*&a4->f64[0] + 8) + 16);
  v14.i32[0] = *(a2 + 16);
  RB::Fill::Gradient::mix((v8 + 88), *(a2 + 8), (a3 + 88), v14, v13);
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
    *&v23.f64[0] = &unk_1F0A3D7C0;
    *&v23.f64[1] = v13;
    *&v24 = v8;
    *(&v24 + 1) = v8 + 88;
    v25 = *(v8 + 48);
    RB::Coverage::Path::simplify(v8 + 56, &v23);
    if (*(&v25 + 1))
    {
      *v8 = &unk_1F0A3B530;
      RBPathRelease(*(v8 + 56), *(v8 + 64));
      v8 = *(&v25 + 1);
    }

    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Gradient>::encode(uint64_t a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Path>(this, 1, (a1 + 56));
  RB::Encoder::typed_message_field<RB::Fill::Gradient>(this, 2, (a1 + 88));
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

void RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Gradient>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Path>();
}

void *_ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage4PathENS_4Fill8GradientEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(RB::Heap *this, size_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, __int16 *a6, _DWORD *a7)
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

  result = RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Gradient>::GenericItem1(v15, a2, a3, a4, *a5, *a7, 0, _S0);
  *result = &unk_1F0A3CBF8;
  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Gradient>::GenericItem1(uint64_t a1, size_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6, __int16 a7, float _S0)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = _H0;
  *(a1 + 46) = a6 & 0x3F;
  *a1 = &unk_1F0A3B530;
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
  RB::Fill::Gradient::Gradient((a1 + 88), a4, a7, a2);
  return a1;
}

void *RB::vector<RB::Coverage::anonymous namespace::PositionedGlyph,128ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 258) + (*(__dst + 258) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 258) + (*(__dst + 258) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,16ul>(*(__dst + 256), __dst, 0x80uLL, __dst + 258, v3);
  *(__dst + 256) = result;
  return result;
}

void sub_195D6EE08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::Font *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Font>,std::allocator<RB::XML::Value::Font>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::Font *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Font>,std::allocator<RB::XML::Value::Font>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195D6EEF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::GlyphArray *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::GlyphArray>,std::allocator<RB::XML::Value::GlyphArray>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::GlyphArray *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::GlyphArray>,std::allocator<RB::XML::Value::GlyphArray>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

RB::XML::Value::GlyphArray *RB::XML::Value::GlyphArray::GlyphArray(RB::XML::Value::GlyphArray *this, const RB::XML::Value::GlyphArray *a2)
{
  v4 = 0;
  *this = &unk_1F0A389E8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v5 = *(a2 + 2);
  if (v5)
  {
    v10 = *(a2 + 1);
    RB::vector<unsigned long,0ul,unsigned long>::reserve_slow(this + 8, *(a2 + 2));
    v11 = (*(this + 1) + 8 * *(this + 2));
    v12 = v5;
    do
    {
      v13 = *v10++;
      *v11++ = v13;
      --v12;
    }

    while (v12);
    v4 = *(this + 2);
  }

  *(this + 2) = v4 + v5;
  *this = &unk_1F0A38E20;
  v6 = *(a2 + 4);
  if (v6)
  {
    v6 = CFRetain(v6);
  }

  v7 = 0;
  *(this + 5) = 0;
  *(this + 4) = v6;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v8 = *(a2 + 6);
  if (v8)
  {
    v14 = *(a2 + 5);
    RB::vector<unsigned short,0ul,unsigned long>::reserve_slow(this + 40, v8);
    v7 = *(this + 6);
    v15 = (*(this + 5) + 2 * v7);
    v16 = v8;
    do
    {
      v17 = *v14++;
      *v15++ = v17;
      --v16;
    }

    while (v16);
  }

  *(this + 6) = v7 + v8;
  return this;
}

void sub_195D6F0A8(_Unwind_Exception *exception_object)
{
  if (*v3)
  {
    free(*v3);
  }

  v5 = v1[4];
  if (v5)
  {
    CFRelease(v5);
  }

  *v1 = v2;
  v6 = v1[1];
  if (v6)
  {
    free(v6);
  }

  _Unwind_Resume(exception_object);
}

void *RB::XML::Value::FloatArray::FloatArray<float>(void *a1, float *a2, unint64_t a3)
{
  *a1 = &unk_1F0A38E48;
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  a1[3] = 0;
  if (a3)
  {
    v6 = a3;
    RB::vector<unsigned long,0ul,unsigned long>::reserve_slow((a1 + 1), a3);
    v8 = a1[2];
    do
    {
      v9 = v8 + 1;
      if (a1[3] < v8 + 1)
      {
        RB::vector<unsigned long,0ul,unsigned long>::reserve_slow(v4, v9);
        v8 = a1[2];
        v9 = v8 + 1;
      }

      v10 = *a2++;
      *(a1[1] + 8 * v8) = v10;
      a1[2] = v9;
      v8 = v9;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void sub_195D6F1AC(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_195D6F230(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::FloatArray *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::FloatArray>,std::allocator<RB::XML::Value::FloatArray>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::FloatArray *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::FloatArray>,std::allocator<RB::XML::Value::FloatArray>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195D6F320(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::Int *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Int>,std::allocator<RB::XML::Value::Int>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::Int *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Int>,std::allocator<RB::XML::Value::Int>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195D6F410(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::Vec2 *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Vec2>,std::allocator<RB::XML::Value::Vec2>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::Vec2 *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Vec2>,std::allocator<RB::XML::Value::Vec2>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195D6F500(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::Bool *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Bool>,std::allocator<RB::XML::Value::Bool>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::Bool *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Bool>,std::allocator<RB::XML::Value::Bool>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t RB::Rect::contains(float32x2_t *a1, float32x2_t a2)
{
  v2 = a1[1];
  v3 = vbsl_s8(vcltz_f32(v2), vadd_f32(v2, *a1), *a1);
  v4 = vand_s8(vcgt_f32(vadd_f32(v3, vabs_f32(v2)), a2), vcge_f32(a2, v3));
  return vpmin_u32(v4, v4).u32[0] >> 31;
}

float32x2_t RB::anonymous namespace::TransformedRect::TransformedRect(uint64_t a1, float64x2_t *a2, float32x2_t a3, int8x8_t a4)
{
  for (i = 0; i != 4; ++i)
  {
    *(a1 + 8 * i) = vadd_f32(vand_s8(a4, vcltz_s32(vshl_n_s32(__PAIR64__(i > 1, (i - 1) < 2), 0x1FuLL))), a3);
  }

  for (j = 0; j != 32; j += 8)
  {
    v6 = vcvtq_f64_f32(*(a1 + j));
    v7 = a2[1];
    *(a1 + j) = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(a2[2], *a2, v6.f64[0]), v7, v6, 1));
  }

  v8 = 0;
  v9 = a1 + 32;
  v10 = 3;
  do
  {
    *(v9 + 8 * v10) = vsub_f32(*(a1 + 8 * v8), *(a1 + 8 * v10));
    v10 = v8++;
  }

  while (v8 != 4);
  v7.f64[0] = -a2->f64[1];
  *&result = vaddvq_f64(vmulq_f64(vzip1q_s64(v7, *a2), a2[1])) * vmul_lane_f32(a4, a4, 1).f32[0];
  if (*&result < 0.0)
  {
    for (k = 0; k != 32; k += 8)
    {
      result = vneg_f32(*(v9 + k));
      *(v9 + k) = *&result;
    }
  }

  return result;
}

float32x2_t RB::Rect::round_outwards_by_scale(float32x2_t *this, float a2)
{
  v3 = vmul_n_f32(*this, a2);
  v4 = vmul_n_f32(this[1], a2);
  *this = v3;
  this[1] = v4;
  v5 = RB::Rect::from_bounds(vrndm_f32(v3), vrndp_f32(vadd_f32(v4, v3)));
  v6 = vrecpe_f32(LODWORD(a2));
  v7 = vmul_f32(vrecps_f32(LODWORD(a2), v6), v6);
  LODWORD(v8) = vmul_f32(v7, vrecps_f32(LODWORD(a2), v7)).u32[0];
  result = vmul_n_f32(*&v5, v8);
  *this = result;
  this[1] = vmul_n_f32(v10, v8);
  return result;
}

uint64_t RB::can_mix(RB *this, const RB::AffineTransform *a2, const RB::AffineTransform *a3)
{
  v3 = *this;
  v4 = *(this + 1);
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = vandq_s8(vandq_s8(vceqq_f64(v4, v6), vceqq_f64(*this, *a2)), vceqq_f64(*(this + 2), *(a2 + 2)));
  v8 = vandq_s8(vdupq_laneq_s64(v7, 1), v7);
  if (v8.i64[0] < 0)
  {
    return 4;
  }

  *v8.i64 = -*&v3.i64[1];
  v9 = vaddvq_f64(vmulq_f64(vzip1q_s64(v8, v3), v4));
  v4.f64[0] = -*&v5.i64[1];
  v10 = vaddvq_f64(vmulq_f64(vzip1q_s64(v4, v5), v6));
  if (v9 > 0.0 && v10 > 0.0)
  {
    return 1;
  }

  if (v10 < 0.0)
  {
    return v9 < 0.0;
  }

  return 0;
}

CGFloat RB::mix(RB *this, const RB::AffineTransform ***a2, const RB::AffineTransform **a3, const RB::AffineTransform *a4, CGFloat result)
{
  v7 = *a2;
  if (*a2 == a3)
  {
    return result;
  }

  v21 = v5;
  v22 = v6;
  if (!v7)
  {
    *&v20.a = xmmword_195E42760;
    *&v20.c = xmmword_195E42770;
    *&v20.tx = 0uLL;
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_6:
    v17 = xmmword_195E42760;
    v18 = xmmword_195E42770;
    v19 = 0uLL;
    goto LABEL_7;
  }

  v10 = *(v7 + 1);
  *&v20.a = *v7;
  *&v20.c = v10;
  *&v20.tx = *(v7 + 2);
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_4:
  v11 = *(a3 + 1);
  v17 = *a3;
  v18 = v11;
  v19 = *(a3 + 2);
LABEL_7:
  RB::mix(&v20, &v17, a3, *&result);
  *&v20.a = v12;
  *&v20.c = v13;
  *&v20.tx = v14;
  v15 = ((*(this + 2) + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v15 + 6) > *(this + 3))
  {
    v15 = RB::Heap::alloc_slow(this, 0x30uLL, 15);
  }

  else
  {
    *(this + 2) = v15 + 6;
  }

  v16 = *&v20.c;
  *v15 = *&v20.a;
  *(v15 + 1) = v16;
  result = v20.tx;
  *(v15 + 2) = *&v20.tx;
  *a2 = v15;
  return result;
}

_BYTE *RB::Rect::operator std::string@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  snprintf_l(__s, 0x100uLL, 0, "[%g %g; %g %g]", COERCE_FLOAT(*a1), COERCE_FLOAT(HIDWORD(*a1)), COERCE_FLOAT(a1[1]), COERCE_FLOAT(HIDWORD(a1[1])));
  return std::string::basic_string[abi:nn200100]<0>(a2, __s);
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

_BYTE *RB::AffineTransform::operator std::string@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  snprintf_l(__s, 0x100uLL, 0, "[%g %g; %g %g; %g %g]", *a1, a1[1], a1[2], a1[3], a1[4], a1[5]);
  return std::string::basic_string[abi:nn200100]<0>(a2, __s);
}

double *RB::AffineTransform::encode(double *this, RB::ProtobufEncoder *a2)
{
  v3 = this;
  *&v4 = *this;
  if (*&v4 == 1.0)
  {
    v5 = this[1];
  }

  else
  {
    RB::ProtobufEncoder::encode_varint(a2, 0xDuLL);
    this = RB::ProtobufEncoder::encode_fixed32(a2, v4);
    v5 = v3[1];
  }

  *&v6 = v5;
  if (*&v6 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x15uLL);
    this = RB::ProtobufEncoder::encode_fixed32(a2, v6);
  }

  *&v7 = v3[2];
  if (*&v7 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x1DuLL);
    this = RB::ProtobufEncoder::encode_fixed32(a2, v7);
  }

  *&v8 = v3[3];
  if (*&v8 != 1.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x25uLL);
    this = RB::ProtobufEncoder::encode_fixed32(a2, v8);
  }

  *&v9 = v3[4];
  if (*&v9 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x2DuLL);
    this = RB::ProtobufEncoder::encode_fixed32(a2, v9);
  }

  *&v10 = v3[5];
  if (*&v10 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x35uLL);

    return RB::ProtobufEncoder::encode_fixed32(a2, v10);
  }

  return this;
}

std::string *RB::SexpString::newline(std::string *this)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::push_back(this, 10);
  }

  this[1].__r_.__value_.__s.__data_[16] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  result = std::string::append(this, 2 * this[1].__r_.__value_.__r.__words[0], 32);
  this[1].__r_.__value_.__l.__size_ += 2 * this[1].__r_.__value_.__r.__words[0];
  return result;
}

int64x2_t RB::SexpString::push(RB::SexpString *this, const char *a2)
{
  RB::SexpString::newline(this);
  std::string::push_back(this, 40);
  v4 = strlen(a2);
  std::string::append(this, a2, v4);
  v5 = strlen(a2);
  v6.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v6.i64[1] = v5 + 1;
  result = vaddq_s64(v6, *(this + 24));
  *(this + 24) = result;
  return result;
}

void RB::SexpString::pop(std::string *this)
{
  --this[1].__r_.__value_.__r.__words[0];
  std::string::push_back(this, 41);
  ++this[1].__r_.__value_.__l.__size_;
}

std::string *RB::SexpString::print(std::string *this, char a2, const char *__s)
{
  v6 = strlen(__s);
  v7 = v6;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if ((a2 & 1) != 0 || (this[1].__r_.__value_.__s.__data_[16] & 1) != 0 || (v9 = this[1].__r_.__value_.__l.__size_) != 0 && v6 + v9 - 79 <= 0xFFFFFFFFFFFFFFAFLL)
    {
      RB::SexpString::newline(this);
    }

    else
    {
      std::string::push_back(this, 32);
      ++this[1].__r_.__value_.__l.__size_;
    }
  }

  v10 = strlen(__s);
  result = std::string::append(this, __s, v10);
  this[1].__r_.__value_.__l.__size_ += v7;
  this[1].__r_.__value_.__s.__data_[16] = 0;
  return result;
}

void RB::SexpString::vprintf(std::string *this, char a2, const char *a3, va_list a4)
{
  __s = 0;
  vasprintf(&__s, a3, a4);
  if (__s)
  {
    RB::SexpString::print(this, a2, __s);
    free(__s);
  }
}

void RB::SexpString::print_ctm(std::string *this, const RB::AffineTransform *a2)
{
  if (a2)
  {
    RB::AffineTransform::operator std::string(a2, __p);
    if (v5 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    RB::SexpString::printf(this, 0, "(CTM %s)", v3);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

float64_t RB::Path::Orientation::endpath(float64x2_t *this)
{
  v1 = this[1];
  v2 = this[2];
  v3 = vceqq_f64(v1, v2);
  v4 = vornq_s8(vdupq_laneq_s64(vmvnq_s8(v3), 1), v3);
  if (v4.i64[0] < 0)
  {
    *v4.i64 = -v2.f64[1];
    this->f64[1] = vaddvq_f64(vmulq_f64(vzip1q_s64(v4, v2), v1)) + this->f64[1];
    this[2] = v1;
  }

  return v1.f64[0];
}

float64_t RB::Path::Orientation::closepath(float64x2_t *this)
{
  v1 = this[1];
  v2 = this[2];
  v3 = vceqq_f64(v1, v2);
  v4 = vornq_s8(vdupq_laneq_s64(vmvnq_s8(v3), 1), v3);
  if (v4.i64[0] < 0)
  {
    *v4.i64 = -v2.f64[1];
    this->f64[1] = vaddvq_f64(vmulq_f64(vzip1q_s64(v4, v2), v1)) + this->f64[1];
    this[2] = v1;
  }

  return v1.f64[0];
}

float64_t RB::Path::Orientation::lineto(uint64_t a1, float64x2_t a2, double a3, int64x2_t a4)
{
  *a4.i64 = -*(a1 + 40);
  v4 = vmulq_f64(vzip1q_s64(a4, *(a1 + 32)), a2);
  *(a1 + 8) = v4.f64[1] + *(a1 + 8) + v4.f64[0];
  *(a1 + 32) = a2;
  return a2.f64[0];
}

float64x2_t *RB::Path::Orientation::moveto(float64x2_t *result, float64x2_t a2)
{
  v2 = result[1];
  v3 = result[2];
  v4 = vceqq_f64(v2, v3);
  v5 = vornq_s8(vdupq_laneq_s64(vmvnq_s8(v4), 1), v4);
  if (v5.i64[0] < 0)
  {
    *v5.i64 = -v3.f64[1];
    result->f64[1] = vaddvq_f64(vmulq_f64(vzip1q_s64(v5, v3), v2)) + result->f64[1];
  }

  result[1] = a2;
  result[2] = a2;
  return result;
}

double RB::Path::Orientation::quadto(uint64_t a1, int64x2_t a2, float64x2_t a3, double a4, int64x2_t a5, int64x2_t a6)
{
  *a5.i64 = -*(a1 + 40);
  *a6.i64 = -*&a2.i64[1];
  result = *(a1 + 8) + vaddvq_f64(vmlaq_f64(vmulq_f64(vzip1q_s64(a6, a2), a3), a2, vzip1q_s64(a5, *(a1 + 32))));
  *(a1 + 8) = result;
  *(a1 + 32) = a3;
  return result;
}

float64_t RB::Path::Orientation::cubeto(uint64_t a1, int64x2_t a2, float64x2_t a3, float64x2_t a4, double a5, int64x2_t a6, int64x2_t a7, double a8, int64x2_t a9)
{
  *a6.i64 = -*(a1 + 40);
  *a7.i64 = -*&a2.i64[1];
  v9 = vmulq_f64(vzip1q_s64(a7, a2), a3);
  *a9.i64 = -a3.f64[1];
  result = v9.f64[0] + v9.f64[1] + *(a1 + 8) + vaddvq_f64(vmlaq_f64(vmulq_f64(vzip1q_s64(a9, a3), a4), a2, vzip1q_s64(a6, *(a1 + 32))));
  *(a1 + 8) = result;
  *(a1 + 32) = a4;
  return result;
}

void *RB::Path::Reverser::begin_subpath(void *this)
{
  if (!this[19] && !this[535])
  {
    v1 = this + 22;
    if (this[536])
    {
      v2 = 0;
    }

    else
    {
      v4 = this + 22;
      v5 = this;
      _ZN2RB6vectorIDv2_dLm256EmE12reserve_slowEm(this + 22, 1uLL);
      v1 = v4;
      this = v5;
      v2 = v5[535];
    }

    if (this[534])
    {
      v1 = this[534];
    }

    v3 = &v1[2 * v2];
    *v3 = 0;
    v3[1] = 0;
    ++this[535];
  }

  return this;
}

uint64_t RB::Path::Reverser::flush_subpath(uint64_t this, char a2)
{
  v2 = this;
  if (*(this + 152))
  {
    v4 = this + 176;
    if (*(this + 4272))
    {
      v4 = *(this + 4272);
    }

    v5 = v4 + 16 * *(this + 4280);
    this = (*(**(this + 8) + 16))(*(this + 8), *(v5 - 16));
    v6 = *(v2 + 152);
    if (v6)
    {
      v7 = (v5 - 32);
      v8 = v6 - 1;
      do
      {
        v9 = *(v2 + 144);
        if (!v9)
        {
          v9 = v2 + 16;
        }

        v10 = *(v9 + v8);
        switch(v10)
        {
          case 3:
            this = (*(**(v2 + 8) + 40))(*(v2 + 8), *v7, v7[-1], v7[-2]);
            break;
          case 2:
            this = (*(**(v2 + 8) + 32))(*(v2 + 8), *v7, v7[-1]);
            break;
          case 1:
            this = (*(**(v2 + 8) + 24))(*(v2 + 8), *v7);
            break;
        }

        v7 -= v10;
        --v8;
      }

      while (v8 != -1);
    }

    if (a2)
    {
      this = (*(**(v2 + 8) + 8))(*(v2 + 8));
    }
  }

  *(v2 + 4280) = 0;
  *(v2 + 152) = 0;
  return this;
}

uint64_t RB::Path::Reverser::endpath(RB::Path::Reverser *this)
{
  RB::Path::Reverser::flush_subpath(this, 0);
  v2 = ***(this + 1);

  return v2();
}

__n128 RB::Path::Reverser::moveto(void *a1, __n128 a2)
{
  RB::Path::Reverser::flush_subpath(a1, 0);
  v3 = a1[535];
  if (a1[536] < (v3 + 1))
  {
    _ZN2RB6vectorIDv2_dLm256EmE12reserve_slowEm(a1 + 22, v3 + 1);
    v3 = a1[535];
  }

  v4 = a1[534];
  if (!v4)
  {
    v4 = a1 + 22;
  }

  result = a2;
  *&v4[2 * v3] = a2;
  ++a1[535];
  return result;
}

void *RB::Path::Reverser::lineto(void *a1, __n128 a2)
{
  result = RB::Path::Reverser::begin_subpath(a1);
  v4 = a1[535];
  if (a1[536] < (v4 + 1))
  {
    result = _ZN2RB6vectorIDv2_dLm256EmE12reserve_slowEm(a1 + 22, v4 + 1);
    v4 = a1[535];
  }

  v5 = a1[534];
  if (!v5)
  {
    v5 = a1 + 22;
  }

  *&v5[2 * v4] = a2;
  ++a1[535];
  v6 = a1[19];
  if (a1[20] < (v6 + 1))
  {
    result = RB::vector<unsigned char,128ul,unsigned long>::reserve_slow(a1 + 2, v6 + 1);
    v6 = a1[19];
  }

  v7 = a1[18];
  if (!v7)
  {
    v7 = a1 + 2;
  }

  *(v7 + v6) = 1;
  ++a1[19];
  return result;
}

void *RB::Path::Reverser::quadto(void *a1, __n128 a2, __n128 a3)
{
  result = RB::Path::Reverser::begin_subpath(a1);
  v5 = a1[535];
  if (a1[536] < (v5 + 1))
  {
    result = _ZN2RB6vectorIDv2_dLm256EmE12reserve_slowEm(a1 + 22, v5 + 1);
    v5 = a1[535];
  }

  v6 = a1[534];
  if (!v6)
  {
    v6 = a1 + 22;
  }

  *&v6[2 * v5] = a2;
  v7 = a1[535];
  v8 = v7 + 1;
  a1[535] = v7 + 1;
  if (a1[536] < (v7 + 2))
  {
    result = _ZN2RB6vectorIDv2_dLm256EmE12reserve_slowEm(a1 + 22, v7 + 2);
    v8 = a1[535];
  }

  v9 = a1[534];
  if (!v9)
  {
    v9 = a1 + 22;
  }

  *&v9[2 * v8] = a3;
  ++a1[535];
  v10 = a1[19];
  if (a1[20] < (v10 + 1))
  {
    result = RB::vector<unsigned char,128ul,unsigned long>::reserve_slow(a1 + 2, v10 + 1);
    v10 = a1[19];
  }

  v11 = a1[18];
  if (!v11)
  {
    v11 = a1 + 2;
  }

  *(v11 + v10) = 2;
  ++a1[19];
  return result;
}

void *RB::Path::Reverser::cubeto(void *a1, __n128 a2, __n128 a3, __n128 a4)
{
  result = RB::Path::Reverser::begin_subpath(a1);
  v6 = a1[535];
  if (a1[536] < (v6 + 1))
  {
    result = _ZN2RB6vectorIDv2_dLm256EmE12reserve_slowEm(a1 + 22, v6 + 1);
    v6 = a1[535];
  }

  v7 = a1[534];
  if (!v7)
  {
    v7 = a1 + 22;
  }

  *&v7[2 * v6] = a2;
  v8 = a1[535];
  v9 = v8 + 1;
  a1[535] = v8 + 1;
  if (a1[536] < (v8 + 2))
  {
    result = _ZN2RB6vectorIDv2_dLm256EmE12reserve_slowEm(a1 + 22, v8 + 2);
    v9 = a1[535];
  }

  v10 = a1[534];
  if (!v10)
  {
    v10 = a1 + 22;
  }

  *&v10[2 * v9] = a3;
  v11 = a1[535];
  v12 = v11 + 1;
  a1[535] = v11 + 1;
  if (a1[536] < (v11 + 2))
  {
    result = _ZN2RB6vectorIDv2_dLm256EmE12reserve_slowEm(a1 + 22, v11 + 2);
    v12 = a1[535];
  }

  v13 = a1[534];
  if (!v13)
  {
    v13 = a1 + 22;
  }

  *&v13[2 * v12] = a4;
  ++a1[535];
  v14 = a1[19];
  if (a1[20] < (v14 + 1))
  {
    result = RB::vector<unsigned char,128ul,unsigned long>::reserve_slow(a1 + 2, v14 + 1);
    v14 = a1[19];
  }

  v15 = a1[18];
  if (!v15)
  {
    v15 = a1 + 2;
  }

  *(v15 + v14) = 3;
  ++a1[19];
  return result;
}

void RB::Path::normalized_map(const CGPath *a1, void (***a2)(void), float64x2_t *a3)
{
  v11 = &unk_1F0A3D820;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  info = &v11;
  v16 = 0;
  CGPathApply(a1, &info, RB::Path::Iterator::callback_1);
  (*v11)(&v11);
  if (a3)
  {
    v8 = *a3;
    v7 = a3[1];
    *v6.i64 = -a3->f64[1];
    if (vaddvq_f64(vmulq_f64(vzip1q_s64(v6, *a3), v7)) < 0.0)
    {
      if (*&v12 >= 0.0)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    if (*&v12 >= 0.0)
    {
LABEL_8:
      info = a2;
      v16 = a3;
      v10 = vandq_s8(vandq_s8(vceqq_f64(v7, xmmword_195E42770), vceqq_f64(v8, xmmword_195E42760)), vceqzq_f64(a3[2]));
      if (vandq_s8(vdupq_laneq_s64(v10, 1), v10).i64[0] >= 0)
      {
        v9 = RB::Path::Iterator::callback_0;
      }

      else
      {
        v9 = RB::Path::Iterator::callback_1;
      }

      goto LABEL_11;
    }
  }

  else if (*&v12 >= 0.0)
  {
    info = a2;
    v16 = 0;
    v9 = RB::Path::Iterator::callback_1;
LABEL_11:
    CGPathApply(a1, &info, v9);
    (**a2)(a2);
    return;
  }

LABEL_12:
  RB::Path::reverse_map(a1, a2);
}

void RB::Path::reverse_map(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = *MEMORY[0x1E69E9840];
  v8[0] = &unk_1F0A3D7E0;
  v8[1] = v4;
  *v9 = 0u;
  v10 = 128;
  *v11 = 0u;
  v12 = 256;
  v7[0] = v8;
  v7[1] = v3;
  v5 = RB::Path::Iterator::callback_1;
  if (v3)
  {
    v6 = vandq_s8(vandq_s8(vceqq_f64(v3[1], xmmword_195E42770), vceqq_f64(*v3, xmmword_195E42760)), vceqzq_f64(v3[2]));
    v5 = RB::Path::Iterator::callback_1;
    if (vandq_s8(vdupq_laneq_s64(v6, 1), v6).i64[0] >= 0)
    {
      v5 = RB::Path::Iterator::callback_0;
    }
  }

  CGPathApply(v2, v7, v5);
  (*v8[0])(v8);
  if (v11[0])
  {
    free(v11[0]);
  }

  if (v9[0])
  {
    free(v9[0]);
  }
}

void *_ZN2RB6vectorIDv2_dLm256EmE12reserve_slowEm(void *__dst, size_t a2)
{
  if (*(__dst + 514) + (*(__dst + 514) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 514) + (*(__dst + 514) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,16ul>(*(__dst + 512), __dst, 0x100uLL, __dst + 514, v3);
  *(__dst + 512) = result;
  return result;
}

void *RB::vector<unsigned char,128ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 18) + (*(__dst + 18) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 18) + (*(__dst + 18) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,1ul>(*(__dst + 16), __dst, 0x80uLL, __dst + 18, v3);
  *(__dst + 16) = result;
  return result;
}

void *RB::details::realloc_vector<unsigned long,1ul>(void *__src, void *__dst, size_t a3, size_t *a4, size_t __n)
{
  v7 = __src;
  if (__n <= a3)
  {
    if (__src)
    {
      v9 = a3;
      memcpy(__dst, __src, __n);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(__n);
    if (v8 != *a4)
    {
      v9 = v8;
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

void RB::Symbol::Model::set_rendering_options(RB::Symbol::Model *this, int a2, float a3)
{
  v3 = *(this + 26);
  if (a2 != BYTE1(v3))
  {
    *(this + 26) = v3 & 0xFFFF00FF | (a2 << 8);
    *(this + 24) = RB::Symbol::Model::glyph_value_index(this, a3);
  }
}

void RB::Symbol::Model::set_flips_rtl(RB::Symbol::Model *this, int a2)
{
  v2 = *(this + 26);
  if (((((v2 & 0x2000000) == 0) ^ a2) & 1) == 0)
  {
    if (a2)
    {
      v3 = 0x2000000;
    }

    else
    {
      v3 = 0;
    }

    ++*(this + 25);
    *(this + 26) = v2 & 0xFDFFFFFF | v3;
    std::unique_ptr<RB::Symbol::Glyph const,RB::Symbol::GlyphCache::Unref>::reset[abi:nn200100]((this + 112), 0);
  }
}

float RB::Symbol::Model::variable_draw_params@<S0>(RB::Symbol::Model *this@<X0>, float a2@<S0>, const RB::Symbol::Glyph::Layer *a3@<X1>, uint64_t a4@<X8>)
{
  *a4 = 0x3F80000000000000;
  *(a4 + 8) = 0;
  __asm { FMOV            V1.2S, #1.0 }

  *(a4 + 16) = _D1;
  *(a4 + 24) = 0;
  v9 = *(a3 + 12);
  if (*&v9 >= a2)
  {
    if (*(this + 104) != 3)
    {
      result = 0.3;
      goto LABEL_10;
    }

    LOBYTE(a2) = *(this + 110);
LABEL_8:
    result = LODWORD(a2) * 0.0039216;
LABEL_10:
    *(a4 + 20) = result;
    return result;
  }

  if (*(&v9 + 1) <= a2)
  {
    LOBYTE(a2) = *(this + 108);
    goto LABEL_8;
  }

  v10 = (a2 - *&v9) / (*(&v9 + 1) - *&v9);
  LODWORD(v11) = 0;
  *(&v11 + 1) = v10;
  *a4 = v11;
  if (*(this + 104) == 3)
  {
    LOBYTE(v10) = *(this + 110);
    LODWORD(v11) = 998277249;
    v12 = LODWORD(v10) * 0.0039216;
  }

  else
  {
    v12 = 0.3;
  }

  LOBYTE(v11) = *(this + 108);
  result = v12 / (v11 * 0.0039216);
  *(a4 + 24) = result;
  return result;
}

uint64_t RB::Refcount<RB::Symbol::Model,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return RB::Symbol::Model::copy_on_write(result);
  }

  return result;
}

uint64_t RB::vector<RB::objc_ptr<void({block_pointer})(RBFill *,CGRect)>,0ul,unsigned int>::~vector(uint64_t a1)
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

BOOL RB::anonymous namespace::GlyphSegments::pop_back(RB::_anonymous_namespace_::GlyphSegments *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 8);
  if (v2)
  {
    *(v1 + 8) = v2 - 1;
  }

  return v2 != 0;
}

uint64_t RB::ResourceHeap::alloc(id *this, RB::Device *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  [v4 setSize:a2];
  [v4 setHazardTrackingMode:2];
  v5 = [this[3] newHeapWithDescriptor:v4];
  v6 = RB::verbose_mode(0x100);
  if (v6)
  {
    v7 = RB::misc_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9[0] = 67109120;
      v9[1] = (a2 + 512) >> 10;
      _os_log_impl(&dword_195CE8000, v7, OS_LOG_TYPE_INFO, "allocated %d KB heap", v9, 8u);
    }
  }

  if (v5)
  {
    operator new();
  }

  return 0;
}

uint64_t RB::ResourceHeap::ResourceHeap(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 8) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = a2;
  *(a1 + 37) = 0;
  *(a1 + 45) = 1;
  *a1 = &unk_1F0A3D860;
  if (!a3)
  {
    a3 = [a2 size];
  }

  *(a1 + 48) = a3;
  *(a1 + 56) = 0;
  return a1;
}

void RB::Resource::~Resource(RB::Resource *this)
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

uint64_t RB::ResourceHeap::finalize(RB::ResourceHeap *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 7) = 0;
    RB::Device::recycle_heap(v2, this);
  }

  return (*(*this + 24))(this);
}

_DWORD *RB::Refcount<RB::Resource,unsigned int>::release(_DWORD *result)
{
  v1 = result[2] - 1;
  result[2] = v1;
  if (!v1)
  {
    return (*(*result + 8))();
  }

  return result;
}

void RB::ResourceHeap::~ResourceHeap(RB::ResourceHeap *this)
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

void RB::ObjcEncoderDelegate::encode_metadata(id *this@<X0>, CFTypeRef *a2@<X8>)
{
  *a2 = 0;
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [this[1] encodedMetadata];
    if (v5)
    {
      *a2 = CFRetain(v5);
    }

    objc_autoreleasePoolPop(v4);
  }
}

void sub_195D712FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::ObjcEncoderDelegate::should_encode_subset_font(RB::ObjcEncoderDelegate *this, CGFont *a2)
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = *(this + 1);

  return [v4 shouldEncodeFontSubset:a2];
}

void RB::ObjcEncoderDelegate::encode_font(id *this@<X0>, CGFont *a2@<X1>, CFTypeRef *a3@<X8>)
{
  *a3 = 0;
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_autoreleasePoolPush();
    v8 = 0;
    v7 = [this[1] encodedCGFontData:a2 error:&v8];
    if (v7)
    {
      *a3 = CFRetain(v7);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_195D71400(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void RB::ObjcEncoderDelegate::encode_font_subset(uint64_t a1@<X0>, uint64_t a2@<X1>, const __CFData *a3@<X2>, uint64_t a4@<X4>, CFTypeRef *a5@<X8>)
{
  *a5 = 0;
  if (objc_opt_respondsToSelector())
  {
    v10 = objc_autoreleasePoolPush();
    RBEncoderCreateFontData(a3, a4, &cf);
    if (cf)
    {
      v14 = 0;
      v11 = [*(a1 + 8) encodedFontData:cf cgFont:a2 error:&v14];
      if (v11)
      {
        *a5 = CFRetain(v11);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    objc_autoreleasePoolPop(v10);
  }

  else if (objc_opt_respondsToSelector())
  {
    v12 = objc_autoreleasePoolPush();
    cf = 0;
    v13 = [*(a1 + 8) encodedFontSubsetData:a3 cgFont:a2 error:&cf];
    if (v13)
    {
      *a5 = CFRetain(v13);
    }

    objc_autoreleasePoolPop(v12);
  }
}

void RBEncoderCreateFontData(CFDataRef theData@<X1>, uint64_t a2@<X3>, CFDataRef *a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (Length)
  {
    RB::ProtobufEncoder::encode_varint(&v25, 0xAuLL);
    RB::ProtobufEncoder::encode_data(&v25, BytePtr, Length);
  }

  v8 = CGFontCopyName();
  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v8 UTF8String];
    v11 = strlen(v10);
    if (v11)
    {
      v12 = v11;
      RB::ProtobufEncoder::encode_varint(&v25, 0x12uLL);
      RB::ProtobufEncoder::encode_data(&v25, v10, v12);
    }

    objc_autoreleasePoolPop(v9);
  }

  if (a2)
  {
    Count = CGFontIndexSetGetCount();
    v15 = Count;
    if (Count)
    {
      if ((Count & 0x8000000000000000) == 0)
      {
        v16 = 2 * Count;
        if ((2 * Count) <= 0x1000)
        {
          MEMORY[0x1EEE9AC00](Count, v14);
          v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v17, 2 * v15);
          MEMORY[0x1EEE9AC00](v20, v21);
          v19 = v17;
          bzero(v17, 2 * v15);
        }

        else
        {
          v17 = malloc_type_malloc(2 * Count, 0x1000040BDFB0063uLL);
          v18 = malloc_type_malloc(2 * v15, 0x1000040BDFB0063uLL);
          v19 = v18;
          if (!v17 || !v18)
          {
LABEL_24:
            free(v19);
            free(v17);
            goto LABEL_25;
          }
        }

        CGFontIndexSetGetIndexes();
        CGFontIndexMapGetValues();
        v22 = 0;
        do
        {
          if (v19[v22] != *&v17[2 * v22])
          {
            RB::ProtobufEncoder::encode_varint(&v25, 0x1AuLL);
            RB::ProtobufEncoder::begin_length_delimited(&v25);
            v23 = *&v17[2 * v22];
            if (*&v17[2 * v22])
            {
              RB::ProtobufEncoder::encode_varint(&v25, 8uLL);
              RB::ProtobufEncoder::encode_varint(&v25, v23);
            }

            v24 = v19[v22];
            if (v19[v22])
            {
              RB::ProtobufEncoder::encode_varint(&v25, 0x10uLL);
              RB::ProtobufEncoder::encode_varint(&v25, v24);
            }

            RB::ProtobufEncoder::end_length_delimited(&v25);
          }

          ++v22;
        }

        while (v15 != v22);
        if (v16 > 0x1000)
        {
          goto LABEL_24;
        }
      }
    }
  }

LABEL_25:
  RB::ProtobufEncoder::take_data(&v25, a3);
  if (v8)
  {
    CFRelease(v8);
  }

  if (*(&v26 + 1))
  {
    free(*(&v26 + 1));
  }

  if (v25)
  {
    free(v25);
  }
}

void sub_195D7184C(_Unwind_Exception *a1)
{
  free(v2);
  if (v1)
  {
    CFRelease(v1);
  }

  RB::ProtobufEncoder::~ProtobufEncoder((v3 - 128));
  _Unwind_Resume(a1);
}

void RB::ObjcEncoderDelegate::encode_image(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, CFTypeRef *a4@<X8>)
{
  *a4 = 0;
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_autoreleasePoolPush();
    v10 = 0;
    v9 = [*(a1 + 8) encodedImageData:a2 error:{a3, &v10}];
    if (v9)
    {
      *a4 = CFRetain(v9);
    }

    objc_autoreleasePoolPop(v8);
  }
}

void sub_195D71958(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void RB::ObjcEncoderDelegate::encode_shader_library(id *this@<X0>, const void *a2@<X1>, CFTypeRef *a3@<X8>)
{
  *a3 = 0;
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_autoreleasePoolPush();
    v8 = 0;
    v7 = [this[1] encodedShaderLibraryData:a2 error:&v8];
    if (v7)
    {
      *a3 = CFRetain(v7);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_195D719FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void RB::ObjcEncoderDelegate::font_set(id *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v4 = objc_autoreleasePoolPush();
  if (objc_opt_respondsToSelector())
  {
    v5 = [this[1] encoderSet];
    v6 = v5;
    if (v5)
    {
      [v5 commit];
      v7 = v6[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
      }

      *a2 = v7;
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_195D71AA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    RB::ObjcEncoderDelegate::font_set(v1);
  }

  _Unwind_Resume(exception_object);
}

void RB::ObjcDecoderDelegate::decode_metadata(id *this, const void *a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_autoreleasePoolPush();
    [this[1] decodedMetadata:{objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", a2, a3)}];

    objc_autoreleasePoolPop(v6);
  }
}

void RB::ObjcDecoderDelegate::decode_cgfont(id *this@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, CFTypeRef *a4@<X8>)
{
  *a4 = 0;
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_autoreleasePoolPush();
    v10 = 0;
    v9 = [this[1] decodedCGFontWithData:objc_msgSend(MEMORY[0x1E695DEF0] error:{"dataWithBytes:length:", a2, a3), &v10}];
    if (v9)
    {
      *a4 = CFRetain(v9);
    }

    objc_autoreleasePoolPop(v8);
  }
}

void sub_195D71BF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void RB::ObjcDecoderDelegate::decode_image(id *this@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_autoreleasePoolPush();
    v11 = 0;
    v10 = 0;
    v9 = [this[1] decodedImageContentsWithData:objc_msgSend(MEMORY[0x1E695DEF0] type:"dataWithBytes:length:" error:{a2, a3), &v10, &v11}];
    *a4 = v10;
    if (v9)
    {
      *(a4 + 8) = CFRetain(v9);
    }

    objc_autoreleasePoolPop(v8);
  }
}

void sub_195D71CCC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void RB::ObjcDecoderDelegate::decode_shader_library(id *this@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, CFTypeRef *a4@<X8>)
{
  *a4 = 0;
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_autoreleasePoolPush();
    v10 = 0;
    v9 = [this[1] decodedShaderLibraryWithData:objc_msgSend(MEMORY[0x1E695DEF0] error:{"dataWithBytes:length:", a2, a3), &v10}];
    if (v9)
    {
      *a4 = CFRetain(v9);
    }

    objc_autoreleasePoolPop(v8);
  }
}

void sub_195D71D90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_195D72574(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

CGFontRef RBDecoderCreateCGFontWithData(void *a1)
{
  Mutable = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v20 = [a1 bytes];
  v21 = &v20[[a1 length]];
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  while (1)
  {
    field = RB::ProtobufDecoder::next_field(&v20);
    if (!field)
    {
      break;
    }

    v8 = field >> 3;
    if ((field >> 3) == 3)
    {
      if ((field & 7) == 2)
      {
        RB::ProtobufDecoder::begin_message(&v20);
        v9 = RB::ProtobufDecoder::next_field(&v20);
        v10 = -1;
        for (i = -1; v9; v9 = RB::ProtobufDecoder::next_field(&v20))
        {
          if ((v9 >> 3) == 2)
          {
            i = RB::ProtobufDecoder::uint_field(&v20, v9);
          }

          else if ((v9 >> 3) == 1)
          {
            v10 = RB::ProtobufDecoder::uint_field(&v20, v9);
          }

          else
          {
            RB::ProtobufDecoder::skip_field(&v20, v9);
          }
        }

        RB::ProtobufDecoder::end_message(&v20);
        if ((v10 & 0x8000000000000000) == 0 && (i & 0x8000000000000000) == 0)
        {
          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
          }

          CFDictionarySetValue(Mutable, i, v10);
        }
      }

      else
      {
        v26 = 1;
        v20 = v21;
      }
    }

    else if (v8 == 2)
    {
      v3 = RB::ProtobufDecoder::data_field(&v20, field);
      v4 = v13;
    }

    else if (v8 == 1)
    {
      v5 = RB::ProtobufDecoder::data_field(&v20, field);
      v6 = v12;
    }

    else
    {
      RB::ProtobufDecoder::skip_field(&v20, field);
    }
  }

  if (v6)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = CGDataProviderCreateWithCFData([a1 subdataWithRange:{&v5[-objc_msgSend(a1, "bytes", v20)], v6}]);
    v16 = CGFontCreateWithDataProvider(v15);
    if (v15)
    {
      CFRelease(v15);
    }

    objc_autoreleasePoolPop(v14);
    if (v16)
    {
      if (v4)
      {
        v17 = CFStringCreateWithBytes(0, v3, v4, 0x8000100u, 1u);
      }

      else
      {
        if (!Mutable)
        {
          goto LABEL_36;
        }

        v17 = 0;
      }

      v18 = [[RBDecodedFontMetadata alloc] initWithFontUID:v17 glyphMap:Mutable];
      objc_setAssociatedObject(v16, "RBDecodedFontMetadata", v18, 0x301);

      if (v17)
      {
        CFRelease(v17);
      }
    }
  }

  else
  {
    v16 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_36:
  if (v23)
  {
    free(v23);
  }

  return v16;
}

void sub_195D72CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  CFRelease(v14);
  if (v13)
  {
    CFRelease(v13);
  }

  if (a13)
  {
    free(a13);
  }

  _Unwind_Resume(a1);
}

RBArchiveDelegateImpl *RBArchiveDelegate(uint64_t a1)
{
  if (a1)
  {
    v1 = [[RBArchiveDelegateImpl alloc] initWithFlags:a1];

    return v1;
  }

  else
  {
    {
      RBArchiveDelegate::shared = [[RBArchiveDelegateImpl alloc] initWithFlags:0];
    }

    return RBArchiveDelegate::shared;
  }
}

void RBArchiveToFile(void *a1, _BYTE *a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = RBArchiveDelegate(a3);
  archive_to_file(a1, a2, v7);

  objc_autoreleasePoolPop(v6);
}

void archive_to_file(void *a1, _BYTE *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  if (*a2 != 47)
  {
    v6 = [(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:v6];
  }

  v7 = [a1 encodedDataForDelegate:a3 error:0];
  if (v7)
  {
    v8 = [v7 writeToFile:v6 atomically:0];
    if (v8)
    {
      v9 = RB::misc_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = 138412802;
        v12 = NSStringFromClass(v10);
        v13 = 2048;
        v14 = a1;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_195CE8000, v9, OS_LOG_TYPE_DEFAULT, "serialized %@:%p to %@", &v11, 0x20u);
      }
    }
  }
}

void RBArchiveToFileWithMetadata(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = [[RBArchiveDelegateImpl alloc] initWithFlags:a4];
  v10 = v9;
  if (a2)
  {
    [(RBArchiveDelegateImpl *)v9 decodedMetadata:a2];
  }

  archive_to_file(a1, a3, v10);

  objc_autoreleasePoolPop(v8);
}

void RB::ProtobufEncoder::~ProtobufEncoder(RB::ProtobufEncoder *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    free(v2);
  }

  if (*this)
  {
    free(*this);
  }
}

void RB::Encoder::~Encoder(RB::Encoder *this)
{
  RB::UntypedTable::~UntypedTable((this + 80));
  v2 = *(this + 8);
  if (v2 && atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBEncoderSet .cxx_destruct];
  }

  v3 = *(this + 3);
  if (v3)
  {
    free(v3);
  }

  if (*this)
  {
    free(*this);
  }
}

uint64_t RB::Coverage::anonymous namespace::visit_stroked_path(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v59 = *MEMORY[0x1E69E9840];
  if (v5 > 1)
  {
    return 0;
  }

  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v2;
  if (v4)
  {
    v10 = RB::AffineTransform::scale2(v4);
    v11 = 0;
    if (vabds_f32(v10.f32[0], v10.f32[1]) >= 0.0001)
    {
      return v11;
    }

    v12 = vaddv_f32(v10) * 0.5;
    if (v12 == 0.0)
    {
      return v11;
    }
  }

  else
  {
    v12 = 1.0;
  }

  v13 = v8[6] << (v8[6] & 1);
  if (v13 >> 62)
  {
    return 0;
  }

  v15 = 4 * v13;
  if (4 * v13 > 0x1000)
  {
    v17 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_25:
    v30 = 0;
LABEL_26:
    v31 = rb_line_cap(*(v8 + 6));
    v32 = rb_line_join(*(v8 + 7));
    v33 = v32;
    if (!v32)
    {
      if (*(v8 + 4) <= 0.0)
      {
        v33 = 2;
      }

      else
      {
        v33 = 0;
      }
    }

    RB::Heap::Heap(v57, v58, 4096, 0);
    v34 = *(v8 + 2) * v12;
    v35 = *(v8 + 5);
    v41 = RBPathNull;
    v42 = v7;
    v43 = v34;
    v44 = v35;
    v45 = v30;
    v46 = v17;
    v36 = rb_clip_mode(v6);
    v37 = *(v8 + 4);
    v47 = &unk_1F0A38388;
    RB::Coverage::StrokeablePath::StrokeablePath(&v48, &v41, v57);
    v49 = 0x100000001000000;
    v50 = vneg_f32(0x80000000800000);
    v38 = v37;
    v51 = 0;
    v52 = v31;
    v53 = v33;
    v54 = 15;
    v55 = v36;
    v56 = v38;
    RBPathRelease(v41, *(&v41 + 1));
    v40 = *v8;
    v39 = v8[1];
    RBPathRelease(v48, *(&v48 + 1));
    *&v48 = v40;
    *(&v48 + 1) = v39;
    (*(*v9 + 8))(v9, &v47);
    v48 = RBPathEmpty;
    v47 = &unk_1F0A38388;
    RBPathRelease(RBPathEmpty, *(&RBPathEmpty + 1));
    RB::Heap::~Heap(v57);
    v11 = 1;
    goto LABEL_32;
  }

  MEMORY[0x1EEE9AC00](v2, v3);
  v17 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v17, 4 * v13);
  if (!v13)
  {
    goto LABEL_25;
  }

LABEL_12:
  if (v17)
  {
    v18 = v8[6];
    if (v18)
    {
      v19 = v8[7];
      v20 = 8 * v18;
      v21 = 8 * v18;
      v22 = v17;
      v23 = v19;
      do
      {
        v24 = *v23++;
        v25 = v24;
        *v22++ = v25;
        v21 -= 8;
      }

      while (v21);
      if (v13 != v18)
      {
        v26 = &v17[4 * v18];
        do
        {
          v27 = *v19++;
          v28 = v27;
          *v26++ = v28;
          v20 -= 8;
        }

        while (v20);
      }
    }

    for (i = 0; i != v13; ++i)
    {
      *&v17[4 * i] = *&v17[4 * i] * v12;
    }

    if (RB::Stroke::Dasher::prepare_pattern(v13, v17, v16))
    {
      v30 = v13;
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_26;
  }

  v11 = 0;
LABEL_32:
  if (v15 > 0x1000)
  {
    free(v17);
  }

  return v11;
}

void sub_195D73450(_Unwind_Exception *exception_object)
{
  if (v1 > 0x1000)
  {
    free(v2);
  }

  _Unwind_Resume(exception_object);
}

float64x2_t CG::Quadratic::Quadratic(CG::Quadratic *this, const Point *a2, const Point *a3, const Point *a4)
{
  *this = *&a2->v;
  *(this + 1) = *&a3->v;
  v4 = *(this + 1);
  v5 = vsubq_f64(v4, *this);
  *(this + 2) = *&a4->v;
  *(this + 3) = vaddq_f64(v5, v5);
  result = vsubq_f64(*(this + 2), vaddq_f64(v4, v5));
  *(this + 4) = result;
  return result;
}

void CG::Quadratic::length(Point *this, double a2)
{
  v3 = *&this[4].v;
  v4 = vdupq_n_s64(0x3FD5555555555555uLL);
  v5 = vmlaq_f64(v3, v4, vsubq_f64(*&this->v, v3));
  *&v7[0].v = vmlaq_f64(v3, v4, vsubq_f64(*&this[8].v, v3));
  *&v8[0].v = v5;
  CG::Cubic::Cubic(v6, this, v8, v7, this + 8);
  CG::Cubic::length(v6, a2);
}

void CG::Quadratic::index(Point *this, double a2, double a3)
{
  v5 = *&this[4].v;
  v6 = vdupq_n_s64(0x3FD5555555555555uLL);
  v7 = vmlaq_f64(v5, v6, vsubq_f64(*&this->v, v5));
  *&v9[0].v = vmlaq_f64(v5, v6, vsubq_f64(*&this[8].v, v5));
  *&v10[0].v = v7;
  CG::Cubic::Cubic(v8, this, v10, v9, this + 8);
  CG::Cubic::index(v8, a2, a3);
}

float64x2_t CG::Quadratic::split@<Q0>(float64x2_t *this@<X0>, double a2@<D0>, float64x2_t *a3@<X8>)
{
  v3 = this[1];
  v4 = vmulq_n_f64(vsubq_f64(v3, *this), a2);
  v5 = vaddq_f64(v4, *this);
  v6 = this[2];
  v7 = vmlaq_n_f64(v3, vsubq_f64(v6, v3), a2);
  v8 = vmulq_n_f64(vsubq_f64(v7, v5), a2);
  v9 = vaddq_f64(v8, v5);
  *a3 = *this;
  a3[1] = v5;
  a3[2] = v9;
  a3[3] = vaddq_f64(v4, v4);
  a3[4] = vsubq_f64(v8, v4);
  a3[5] = v9;
  a3[6] = v7;
  a3[7] = v6;
  v10 = vsubq_f64(v7, v9);
  v11 = vaddq_f64(v10, v10);
  result = vsubq_f64(v6, vaddq_f64(v7, v10));
  a3[8] = v11;
  a3[9] = result;
  return result;
}

void *RB::vector<std::pair<unsigned long,RB::BinPacker::item *>,8ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 18) + (*(__dst + 18) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 18) + (*(__dst + 18) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,16ul>(*(__dst + 16), __dst, 8uLL, __dst + 18, v3);
  *(__dst + 16) = result;
  return result;
}

void RB::Coverage::StrokeablePath::bounds(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 0x195E47920)
  {
    v28 = v7;
    v29 = v6;
    v30 = v5;
    v31 = v4;
    v32 = v2;
    v33 = v3;
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *v9;
      v11 = v9[2];
      v26 = v9[1];
      v27 = v11;
      v25 = v10;
    }

    else
    {
      v25 = xmmword_195E42760;
      v26 = xmmword_195E42770;
      v27 = 0uLL;
    }

    v12 = *(a1 + 24);
    v13 = *(a2 + 73);
    v14 = *(a2 + 80);
    *&v15.f64[0] = &unk_1F0A38510;
    *&v15.f64[1] = v12 * (0.5 * RB::AffineTransform::scale(&v25));
    v16 = v13;
    v17 = v14 * v14;
    v18 = vneg_f32(0x7F0000007FLL);
    v19 = 0x7F0000007FLL;
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    v23 = 1;
    v24 = 0;
    RBPathMap(*a1, *(a1 + 8), &v15, *(a1 + 16));
    RB::Rect::from_bounds(v18, v19);
  }
}

uint64_t RB::Coverage::StrokeablePath::can_mix(uint64_t a1, uint64_t a2, const RB::AffineTransform *a3)
{
  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  can_mix = RB::can_mix(*(a1 + 16), *(a2 + 16), a3);
  v6 = can_mix;
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28))
  {
    v9 = *(a1 + 32);
    if (!v9)
    {
      goto LABEL_7;
    }

    v10 = *(a1 + 40);
    v11 = *(a2 + 40);
    v12 = 4 * v9;
    while (*v10 == *v11)
    {
      ++v10;
      ++v11;
      v12 -= 4;
      if (!v12)
      {
        goto LABEL_7;
      }
    }
  }

  if ((can_mix & 0xFE) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = can_mix;
  }

LABEL_7:
  if (!v6)
  {
    return 0;
  }

  CanMix = RBPathCanMix(*a1, *a2);
  if (CanMix >= v6)
  {
    return v6;
  }

  else
  {
    return CanMix;
  }
}

float32_t RB::Coverage::StrokeablePath::mix(uint64_t a1, RB *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CGFloat a7)
{
  v13 = (a1 + 16);
  v12 = *(a1 + 16);
  if (v12)
  {
    v14.f64[0] = RB::operator*(a4, v12);
    v44 = v14;
    v45 = v15;
    v46 = v16;
  }

  else
  {
    v17 = *(a4 + 16);
    v44 = *a4;
    v45 = v17;
    v46 = *(a4 + 32);
  }

  v18 = *(a3 + 16);
  if (v18)
  {
    v19.f64[0] = RB::operator*(a5, v18);
    v41 = v19;
    v42 = v20;
    v43 = v21;
    v22 = *(a3 + 16);
  }

  else
  {
    v22 = 0;
    v23 = *(a5 + 16);
    v41 = *a5;
    v42 = v23;
    v43 = *(a5 + 32);
  }

  RB::mix(a2, v13, v22, a4, a7);
  if (*v13)
  {
    v24.f64[0] = RB::operator*(a6, *v13);
    v38 = v24;
    v39 = v25;
    v40 = v26;
  }

  else
  {
    v27 = *(a6 + 16);
    v38 = *a6;
    v39 = v27;
    v40 = *(a6 + 32);
  }

  RBPathMix(*a1, *a3, *&a7, &v44, &v41, &v38, &v37);
  v28 = *a1;
  v29 = *(a1 + 8);
  *a1 = v37;
  *&v37 = v28;
  *(&v37 + 1) = v29;
  RBPathRelease(v28, v29);
  v30 = vmla_n_f32(*(a1 + 24), vsub_f32(*(a3 + 24), *(a1 + 24)), *&a7);
  *(a1 + 24) = v30;
  v31 = *(a1 + 32);
  if (v31)
  {
    v32 = *(a1 + 40);
    v33 = *(a3 + 40);
    do
    {
      v34 = *v33++;
      v30.f32[0] = *v32 + ((v34 - *v32) * *&a7);
      *v32++ = v30.f32[0];
      --v31;
    }

    while (v31);
  }

  return v30.f32[0];
}

void RB::Coverage::StrokeablePath::add_path(uint64_t a1@<X0>, uint64_t a2@<X1>, CGContextRef *a3@<X2>, uint64_t a4@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == 0x195E47920)
  {
    CGContextBeginPath(*a3);
    *a4 = 0;
    *(a4 + 8) = 2;
    return;
  }

  v8 = *(a1 + 32);
  if (v8 >> 61)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v9 = 8 * v8 > 0x1000;
  if (8 * v8 > 0x1000)
  {
    v10 = malloc_type_malloc(8 * v8, 0x100004000313F17uLL);
    v8 = *(a1 + 32);
    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v11);
  if (v8)
  {
LABEL_10:
    v12 = *(a1 + 40);
    v13 = &v12[v8];
    v14 = v10;
    do
    {
      v15 = *v12++;
      *v14++ = v15;
    }

    while (v12 != v13);
  }

LABEL_12:
  v16 = *(a2 + 73);
  if (v16 < 3)
  {
    CGContextSetLineWidth(*a3, *(a1 + 24));
    v17 = *a3;
    v18 = RBStrokeRef::clip(*(a2 + 74));
    CGContextSetLineJoin(v17, v18);
    v19 = *a3;
    v20 = cg_line_cap(*(a2 + 73));
    CGContextSetLineCap(v19, v20);
    CGContextSetLineDash(*a3, *(a1 + 28), v10, *(a1 + 32));
    CGContextSetMiterLimit(*a3, *(a2 + 80));
    v21 = RBPathCopyCGPath(*a1, *(a1 + 8));
    v22 = v21;
    v23 = *(a1 + 16);
    if (v23)
    {
      v24 = v23[1];
      v41 = *v23;
      v42 = v24;
      v43 = v23[2];
      v25 = MEMORY[0x19A8C0290](v21, &v41);
      if (v22)
      {
        CFRelease(v22);
      }

      v26 = 2;
      v22 = v25;
      if (!v25)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v26 = 2;
      if (!v21)
      {
        goto LABEL_25;
      }
    }

LABEL_21:
    *a4 = CFRetain(v22);
    *(a4 + 8) = v26;
    CFRelease(v22);
    if (!v9)
    {
      return;
    }

    goto LABEL_22;
  }

  v27 = *a1;
  v28 = *(a1 + 8);
  v29 = rb_line_cap(v16);
  v30 = RBStrokeRef::clip(*(a2 + 74));
  v31 = RBPathCopyStrokedPath(v27, v28, v29, v30, v10, *(a1 + 32));
  v33 = v31;
  v34 = v32;
  v35 = *(a1 + 16);
  if (v35)
  {
    v36 = v35[1];
    v41 = *v35;
    v42 = v36;
    v43 = v35[2];
    RBPathCopyTransformedPath(v31, v32);
    v38 = v37;
    v40 = v39;
    RBPathRelease(0, 0x195E47920);
    RBPathRelease(v33, v34);
    v34 = v40;
    v33 = v38;
  }

  v22 = RBPathCopyCGPath(v33, v34);
  RBPathRelease(v33, v34);
  v26 = 0;
  if (v22)
  {
    goto LABEL_21;
  }

LABEL_25:
  *a4 = 0;
  *(a4 + 8) = v26;
  if (!v9)
  {
    return;
  }

LABEL_22:
  free(v10);
}

void sub_195D73D50(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    CFRelease(v2);
    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v3)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  free(v1);
  goto LABEL_6;
}

void RB::Coverage::StrokeablePath::clip(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 76);
  if (*(a3 + 148) != v6)
  {
    RB::CGContext::set_aliasing_mode_slow(a3, v6);
  }

  RB::Coverage::StrokeablePath::add_path(a1, a2, a3, &v8);
  v7 = v8;
  if (v8)
  {
    CGContextBeginPath(*a3);
    CGContextAddPath(*a3, v7);
  }

  if (v9 == 2)
  {
    CGContextReplacePathWithStrokedPath(*a3);
  }

  CGContextClip(*a3);
  if (v7)
  {

    CFRelease(v7);
  }
}

void RB::Coverage::StrokeablePath::fill(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 76);
  if (*(a3 + 148) != v8)
  {
    RB::CGContext::set_aliasing_mode_slow(a3, v8);
  }

  RB::Coverage::StrokeablePath::add_path(a1, a2, a3, &v18);
  v11 = mode;
  v12 = *(a4 + 13);
  if (mode != kCGPathStroke)
  {
    v15 = *(a3 + 125);
    if (v15 != v12 || v15 == 0)
    {
      if (v15 != v12 && *(a3 + 125))
      {
LABEL_30:
        if (v12)
        {
          goto LABEL_37;
        }
      }
    }

    else if (*(a3 + 124) != *(a4 + 12))
    {
      goto LABEL_30;
    }

    v9.i16[0] = *(a3 + 112);
    v10.i16[0] = *a4;
    if (*v9.i16 == *a4)
    {
      v9.i16[0] = *(a3 + 114);
      v10.i16[0] = *(a4 + 2);
      if (*v9.i16 == *v10.i16)
      {
        v9.i16[0] = *(a3 + 116);
        v10.i16[0] = *(a4 + 4);
        if (*v9.i16 == *v10.i16)
        {
          v9.i16[0] = *(a3 + 118);
          v10.i16[0] = *(a4 + 6);
          if (*v9.i16 == *v10.i16)
          {
            v9.i16[0] = *(a3 + 120);
            v10.i16[0] = *(a4 + 8);
            if (*v9.i16 == *v10.i16)
            {
              v9.i16[0] = *(a3 + 122);
              v10.i16[0] = *(a4 + 10);
              if (*v9.i16 == *v10.i16)
              {
                goto LABEL_38;
              }
            }
          }
        }
      }
    }

LABEL_37:
    RB::CGContext::set_fill_color_slow(a3, a4, v9, v10);
    goto LABEL_38;
  }

  v13 = *(a3 + 139);
  if (v13 != v12 || v13 == 0)
  {
    if (v13 != v12 && *(a3 + 139))
    {
LABEL_21:
      if (v12)
      {
LABEL_28:
        RB::CGContext::set_stroke_color_slow(a3, a4, v9, v10);
        goto LABEL_38;
      }
    }
  }

  else if (*(a3 + 138) != *(a4 + 12))
  {
    goto LABEL_21;
  }

  v9.i16[0] = *(a3 + 126);
  v10.i16[0] = *a4;
  if (*v9.i16 != *a4)
  {
    goto LABEL_28;
  }

  v9.i16[0] = *(a3 + 128);
  v10.i16[0] = *(a4 + 2);
  if (*v9.i16 != *v10.i16)
  {
    goto LABEL_28;
  }

  v9.i16[0] = *(a3 + 130);
  v10.i16[0] = *(a4 + 4);
  if (*v9.i16 != *v10.i16)
  {
    goto LABEL_28;
  }

  v9.i16[0] = *(a3 + 132);
  v10.i16[0] = *(a4 + 6);
  if (*v9.i16 != *v10.i16)
  {
    goto LABEL_28;
  }

  v9.i16[0] = *(a3 + 134);
  v10.i16[0] = *(a4 + 8);
  if (*v9.i16 != *v10.i16)
  {
    goto LABEL_28;
  }

  v9.i16[0] = *(a3 + 136);
  v10.i16[0] = *(a4 + 10);
  if (*v9.i16 != *v10.i16)
  {
    goto LABEL_28;
  }

LABEL_38:
  v17 = v18;
  if (v18)
  {
    CGContextDrawPathDirect();

    CFRelease(v17);
  }

  else
  {
    CGContextDrawPath(*a3, v11);
  }
}

void sub_195D7409C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void *RB::Coverage::StrokeablePath::encode(uint64_t a1, uint64_t a2, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RBPathEncode(*a1, this);
  RB::ProtobufEncoder::end_length_delimited(this);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = vandq_s8(vandq_s8(vceqq_f64(v6[1], xmmword_195E42770), vceqq_f64(*v6, xmmword_195E42760)), vceqzq_f64(v6[2]));
    if ((vandq_s8(vdupq_laneq_s64(v7, 1), v7).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(this, 0x12uLL);
      RB::ProtobufEncoder::begin_length_delimited(this);
      RB::AffineTransform::encode(v6->f64, this);
      RB::ProtobufEncoder::end_length_delimited(this);
    }
  }

  v8 = *(a1 + 24);
  if (*&v8 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x1DuLL);
    RB::ProtobufEncoder::encode_fixed32(this, v8);
  }

  v9 = rb_line_cap(*(a2 + 73));
  if (v9)
  {
    v10 = v9;
    RB::ProtobufEncoder::encode_varint(this, 0x20uLL);
    RB::ProtobufEncoder::encode_varint(this, v10);
  }

  v11 = RBStrokeRef::clip(*(a2 + 74));
  if (v11)
  {
    v12 = v11;
    RB::ProtobufEncoder::encode_varint(this, 0x28uLL);
    RB::ProtobufEncoder::encode_varint(this, v12);
  }

  if (*(a2 + 76) == 1)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x30uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
  }

  v13 = *(a2 + 80);
  if (*&v13 != 10.0)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x3DuLL);
    RB::ProtobufEncoder::encode_fixed32(this, v13);
  }

  result = RB::ProtobufEncoder::packed_fixed32_field(this, 8, *(a1 + 40), *(a1 + 32));
  v15 = *(a1 + 28);
  if (*&v15 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x4DuLL);

    return RB::ProtobufEncoder::encode_fixed32(this, v15);
  }

  return result;
}

void RB::Coverage::StrokeablePath::decode(uint64_t a1, uint64_t a2, size_t **this)
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = 0;
  v25 = 16;
  while (1)
  {
    field = RB::ProtobufDecoder::next_field(this);
    if (!field)
    {
      break;
    }

    v8 = field >> 3;
    if ((field >> 3) <= 4)
    {
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          *(a1 + 24) = RB::ProtobufDecoder::float_field(this, field);
        }

        else
        {
          if (v8 != 4)
          {
            goto LABEL_29;
          }

          v10 = RB::ProtobufDecoder::uint_field(this, field);
          *(a2 + 73) = rb_line_cap(v10);
        }
      }

      else if (v8 == 1)
      {
        if ((field & 7) == 2)
        {
          RB::ProtobufDecoder::begin_message(this);
          RBPathDecode(this);
        }

        *(this + 56) = 1;
        *this = this[1];
      }

      else
      {
        if (v8 != 2)
        {
          goto LABEL_29;
        }

        RB::Decoder::affine_transform_field(this, field);
        *(a1 + 16) = v9;
      }
    }

    else if (v8 <= 6)
    {
      if (v8 == 5)
      {
        v11 = RB::ProtobufDecoder::uint_field(this, field);
        *(a2 + 74) = rb_line_join(v11);
      }

      else if (v8 == 6)
      {
        *(a2 + 76) = RB::ProtobufDecoder::BOOL_field(this, field);
      }

      else
      {
LABEL_29:
        RB::ProtobufDecoder::skip_field(this, field);
      }
    }

    else
    {
      switch(v8)
      {
        case 7:
          *(a2 + 80) = RB::ProtobufDecoder::float_field(this, field);
          break;
        case 8:
          v12 = RB::ProtobufDecoder::float_field(this, field);
          v13 = v24;
          v14 = (v24 + 1);
          if (v25 < v24 + 1)
          {
            RB::vector<float,16ul,unsigned long>::reserve_slow(__dst, v14);
            v13 = v24;
            v14 = (v24 + 1);
          }

          v15 = v23;
          if (!v23)
          {
            v15 = __dst;
          }

          *&v15[4 * v13] = v12;
          v24 = v14;
          break;
        case 9:
          *(a1 + 28) = RB::ProtobufDecoder::float_field(this, field);
          break;
        default:
          goto LABEL_29;
      }
    }
  }

  if (v24)
  {
    if (v23)
    {
      v16 = v23;
    }

    else
    {
      v16 = __dst;
    }

    if (RB::Stroke::Dasher::validate_pattern(v24, v16, v7))
    {
      v17 = v24;
      *(a1 + 32) = v24;
      v18 = this[8];
      v19 = ((v18[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v20 = &v19[4 * v17];
      if (v20 > v18[3])
      {
        v19 = RB::Heap::alloc_slow(v18, 4 * v17, 3);
        v17 = *(a1 + 32);
        if (v17)
        {
LABEL_38:
          if (v23)
          {
            v21 = v23;
          }

          else
          {
            v21 = __dst;
          }

          memmove(v19, v21, 4 * v17);
        }
      }

      else
      {
        v18[2] = v20;
        if (v17)
        {
          goto LABEL_38;
        }
      }

      *(a1 + 40) = v19;
    }

    else
    {
      *(this + 56) = 1;
      *this = this[1];
    }
  }

  if (v23)
  {
    free(v23);
  }
}

void sub_195D74554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (a19)
  {
    free(a19);
  }

  _Unwind_Resume(exception_object);
}

void RB::Coverage::StrokeablePath::attributes(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = &unk_1F0A38C40;
  v6[0] = RBPathRetain(v2, v3);
  v6[1] = v4;
  RB::XML::Element::set<RB::XML::Value::Path>();
}

void sub_195D747FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

void RB::Stroke::FixedWidthLineBounds::quadto(float32x2_t *a1, float64x2_t a2, float64x2_t a3, int8x16_t a4, double a5, double a6, double a7, int32x4_t a8, int8x16_t a9)
{
  *&a2.f64[0] = vcvt_f32_f64(a2);
  a4.i32[0] = a1[1].i32[0];
  RB::Stroke::LineBounds::quadto(a1 + 2, a2, COERCE_DOUBLE(vcvt_f32_f64(a3)), a4, a5, a6, a7, a8, a9);
}

void *RB::vector<float,16ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 10) + (*(__dst + 10) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 10) + (*(__dst + 10) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,4ul>(*(__dst + 8), __dst, 0x10uLL, __dst + 10, v3);
  *(__dst + 8) = result;
  return result;
}

void sub_195D74CC4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::Path *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Path>,std::allocator<RB::XML::Value::Path>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::Path *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Path>,std::allocator<RB::XML::Value::Path>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195D74DB4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::Transform *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Transform>,std::allocator<RB::XML::Value::Transform>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::Transform *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Transform>,std::allocator<RB::XML::Value::Transform>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195D74EA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::Float *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Float>,std::allocator<RB::XML::Value::Float>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::Float *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Float>,std::allocator<RB::XML::Value::Float>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195D74F94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::LineCap *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::LineCap>,std::allocator<RB::XML::Value::LineCap>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::LineCap *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::LineCap>,std::allocator<RB::XML::Value::LineCap>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195D75084(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::LineJoin *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::LineJoin>,std::allocator<RB::XML::Value::LineJoin>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::LineJoin *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::LineJoin>,std::allocator<RB::XML::Value::LineJoin>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t RB::DisplayList::Clip::mix_bounds(uint64_t a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  *a3 = RB::mix(*a3, a3[1], *a4, a4[1], *(a2 + 16));
  a3[1] = v5;
  return 1;
}

uint64_t RB::DisplayList::Layer::atom_position(RB::DisplayList::Layer *this, int a2)
{
  v2 = 0;
  if (!a2)
  {
    v4 = *(this + 2);
    if (v4)
    {
      v5 = vneg_f32(0x7F0000007FLL);
      do
      {
        v6 = (*(*v4 + 56))(v4, 0);
        if (v7)
        {
          v5 = vminnm_f32(v5, v6);
        }

        v4 = v4[1];
      }

      while (v4);
      v8 = vcgt_s32(vneg_f32(0x7F0000007FLL), (*&v5 & 0x7FFFFFFF7FFFFFFFLL));
      v9 = vpmin_u32(v8, v8);
      if (v9.i32[0] < 0)
      {
        v9.i32[0] = *(this + 16);
        if (*v9.i32 == 0.0)
        {
          return v5;
        }

        else
        {
          return vdiv_f32(v5, vdup_lane_s32(v9, 0));
        }
      }
    }
  }

  return v2;
}

uint64_t RB::DisplayList::DetachedLayerItem::mix(const RB::DisplayList::Layer **this, const State *a2, const RB::DisplayList::Item *a3, const RB::DisplayList::CachedTransform *a4)
{
  v8 = RB::DisplayList::CachedTransform::mix_layer(a4, a2, this[6], *(a3 + 6));
  v23 = v8;
  v11 = this;
  if (v8 == this[6] || (v11 = a3, v8 == *(a3 + 6)))
  {
    v12 = v11[7];
  }

  else
  {
    v12 = 0;
  }

  v22 = v12;
  LODWORD(_D0) = *&a2->var0;
  __asm { FCVT            H3, S0 }

  v21 = *(this + 22) + ((*(a3 + 22) - *(this + 22)) * _H3);
  v20 = this[8];
  v18.n128_f64[0] = RB::mix((*(*a4 + 8) + 16), &v20, *(a3 + 8), v9, _D0);
  return _ZN2RB4Heap7emplaceINS_11DisplayList17DetachedLayerItemEJRDF16_RKNS_9BlendModeERPKNS2_5LayerERPKNS2_8ContentsERPKNS_15AffineTransformERKjEEEPT_DpOT0_((*(*a4 + 8) + 16), &v21, v18);
}

uint64_t _ZN2RB4Heap7emplaceINS_11DisplayList17DetachedLayerItemEJRDF16_RKNS_9BlendModeERPKNS2_5LayerERPKNS2_8ContentsERPKNS_15AffineTransformERKjEEEPT_DpOT0_(RB::Heap *this, __int16 *a2, __n128 _Q0)
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

  _H0 = *a2;
  __asm { FCVT            S0, H0 }

  return RB::DisplayList::DetachedLayerItem::DetachedLayerItem(_Q0);
}

uint64_t RB::DisplayList::LayerClip::can_mix(RB::DisplayList::LayerClip *this, RB::DisplayList::Interpolator::Contents *a2, const RB::DisplayList::Clip *a3)
{
  if (*(this + 44) != *(a3 + 44) || (*(this + 56) & 3) != 0 || (*(a3 + 56) & 3) != 0)
  {
    return 0;
  }

  v4 = *(this + 16);
  v5 = *(a3 + 16);
  v6 = *(this + 6);
  v7 = *(a3 + 6);
  if (v4 == v5)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  return RB::DisplayList::Layer::can_mix(v6, a2, v7, v8);
}

uint64_t RB::DisplayList::LayerClip::mix(const RB::Rect ***this, const RB::DisplayList::Interpolator::State *a2, const RB::DisplayList::Layer **a3, RB::DisplayList::Builder **a4)
{
  v8 = RB::DisplayList::Layer::mix(this[6], a2, a3[6], a4);
  v9 = *(this + 16);
  v10 = *(a3 + 16);
  v11 = *(a2 + 4);
  v12 = *(*a4 + 1);
  v13 = *(this + 44);
  v14 = (v12[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v14 + 72 > v12[5])
  {
    v14 = RB::Heap::alloc_slow(v12 + 2, 0x48uLL, 7);
  }

  else
  {
    v12[4] = v14 + 72;
  }

  return RB::DisplayList::LayerClip::LayerClip(v14, v8, 0, v13, v9 + ((v10 - v9) * v11));
}

uint64_t RB::DisplayList::LayerClip::mix_bounds(RB::DisplayList::LayerClip *this, const RB::DisplayList::Interpolator::State *a2, float32x2_t *a3, const RB::Rect *a4, const RB::DisplayList::Clip *a5)
{
  v10 = *a2;
  v21 = *(*(this + 6) + 72) | (*(*(a5 + 6) + 72) << 32);
  v11 = std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,RB::pair_hash<unsigned int,unsigned int>,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,std::equal_to<std::pair<unsigned int,unsigned int>>,RB::pair_hash<unsigned int,unsigned int>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>>>::find<std::pair<unsigned int,unsigned int>>((v10 + 40), &v21);
  if (v11 && (v12 = v11[3]) != 0 && !RB::DisplayList::Interpolator::Layer::is_fade(v11[3]))
  {
    v15 = *(this + 6);
    v16 = *(v15 + 64);
    v17 = 1.0;
    if (v16 == 0.0)
    {
      v16 = 1.0;
    }

    v18 = *(a5 + 6);
    if (*(v18 + 64) != 0.0)
    {
      v17 = *(v18 + 64);
    }

    if (v16 != v17)
    {
      return 0;
    }

    RB::DisplayList::interpolated_bounds(v12, *(a2 + 28), *(a2 + 5), *(v15 + 16), *(v18 + 16), v13);
    *a3 = v19;
    a3[1] = v20;
  }

  else
  {
    RB::Rect::Union(a3, *a4, *(a4 + 8));
  }

  return 1;
}

void RB::DisplayList::FilterStyle<RB::Filter::GaussianBlur>::~FilterStyle(uint64_t a1)
{
  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    (**v2)(v2);
  }

  JUMPOUT(0x19A8C09E0);
}

uint64_t RB::DisplayList::FilterStyle<RB::Filter::GaussianBlur>::can_mix(float32x2_t *a1, RB::DisplayList::Interpolator::Contents *a2, float32x2_t *a3)
{
  if (a3)
  {
    v3 = a3 + 7;
  }

  else
  {
    v3 = 0;
  }

  return RB::Filter::GaussianBlur::can_mix(a1 + 7, a2, v3);
}

unint64_t RB::DisplayList::FilterStyle<RB::Filter::GaussianBlur>::mix(uint64_t a1, const State *a2, float32x2_t *a3, RB::DisplayList::Builder **a4)
{
  v7 = RB::Heap::emplace<RB::DisplayList::FilterStyle<RB::Filter::GaussianBlur>,RB::Filter::GaussianBlur const&,RB::DisplayList::Builder &>((*(*a4 + 1) + 16), (a1 + 56), *a4);
  v8 = v7;
  if (a3)
  {
    v9 = a3 + 7;
  }

  else
  {
    v9 = 0;
  }

  RB::Filter::GaussianBlur::mix((v7 + 56), a2, v9, a4);
  return v8;
}

uint64_t RB::DisplayList::FilterStyle<RB::Filter::GaussianBlur>::prepare_encode(RB::DisplayList::Style *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::prepare_encode(a1, a2);

  return RB::Filter::GaussianBlur::prepare_encode(a1 + 56);
}

void *RB::DisplayList::FilterStyle<RB::Filter::GaussianBlur>::encode(void *a1, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(a1, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x32uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x1AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::Filter::GaussianBlur::encode(a1 + 7, a2);
  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::FilterStyle<RB::Filter::GaussianBlur>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "filter");
  RB::Filter::GaussianBlur::print((a1 + 7), this, a3);
  RB::DisplayList::Style::print(a1, this, a3);

  RB::SexpString::pop(this);
}

void RB::DisplayList::GenericFilter<RB::Filter::GaussianBlur>::~GenericFilter(uint64_t a1)
{
  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    (**v2)(v2);
  }

  JUMPOUT(0x19A8C09E0);
}

uint64_t RB::DisplayList::CachedTransform::CachedTransform(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  RB::Heap::Heap((a1 + 8), (a1 + 48), 1024, 0);
  *(a1 + 1072) = a4;
  *(a1 + 1080) = a5;
  v9 = *a3;
  v10 = a3[1];
  *(a1 + 1120) = a3[2];
  *(a1 + 1104) = v10;
  *(a1 + 1088) = v9;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 1200) = 0;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 1;
  *(a1 + 1240) = 0;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0;
  RB::UntypedTable::UntypedTable(a1 + 1272, 0, 0, 0, 0);
  RB::UntypedTable::UntypedTable(a1 + 1336, 0, 0, 0, 0);
  *(a1 + 1400) = 0;
  *(a1 + 1408) = 0;
  return a1;
}

void sub_195D759E0(_Unwind_Exception *a1)
{
  RB::UntypedTable::~UntypedTable((v1 + 1272));
  RB::Heap::~Heap((v1 + 8));
  _Unwind_Resume(a1);
}

void *RB::vector<RB::DisplayList::Item const*,32ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 34) + (*(__dst + 34) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 34) + (*(__dst + 34) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,8ul>(*(__dst + 32), __dst, 0x20uLL, __dst + 34, v3);
  *(__dst + 32) = result;
  return result;
}

unsigned __int8 *RB::DisplayList::apply_interpolator(RB::DisplayList::Interpolator::Layer const&,float,BOOL,unsigned int,RB::DisplayList::Layer &,float,RB::DisplayList::CachedTransform &,RB::Rect const*,RB::DisplayList::Item const*,RB::DisplayList::Item const*,RB::AffineTransform const*)::$_2::operator()(unsigned __int8 *result, uint64_t a2, RB::DisplayList::Item *a3, RB::DisplayList::Item *this, uint64_t a5)
{
  v8 = result;
  v21 = a3;
  if (a3 && this)
  {
    if (RB::may_discard_alpha(*(a3 + 23) & 0x3F))
    {
      _ZN2RB4Heap7emplaceINS_11DisplayList14CrossFadeStyleEJRPNS2_4ItemERfRDF16_EEEPT_DpOT0_((*(a5 + 8) + 16), &v21, (a2 + 16), this + 22);
      v11 = v10;
      v12 = RB::AffineTransform::identity(v10);
      v13 = *(a5 + 8);
      *(v11 + 1) = *(v13 + 312);
      *(v11 + 2) = v12;
      *(v13 + 312) = v11;
      *(v11 + 13) |= 1u;
      *(v11 + 4) = *(this + 2);
      *(this + 2) = v11;
      v14 = *v8;
      RB::DisplayList::Item::apply_alpha(this, *(v14 + 16));
      return RB::DisplayList::Builder::draw(*(v14 + 8), this, *v14, 0);
    }

    goto LABEL_6;
  }

  if (a3)
  {
LABEL_6:
    v15 = 1.0 - *(a2 + 16);
    if (v15 < 0.0)
    {
      v15 = 0.0;
    }

    if (v15 > 1.0)
    {
      v15 = 1.0;
    }

    RB::DisplayList::Item::apply_alpha(a3, v15);
    v16 = *v8;
    RB::DisplayList::Item::apply_alpha(a3, *(*v8 + 16));
    result = RB::DisplayList::Builder::draw(*(v16 + 8), a3, *v16, 0);
  }

  if (this)
  {
    v17 = *(a2 + 16);
    if (v17 < 0.0)
    {
      v17 = 0.0;
    }

    if (v17 > 1.0)
    {
      v17 = 1.0;
    }

    RB::DisplayList::Item::apply_alpha(this, v17);
    v18 = *v8;
    RB::DisplayList::Item::apply_alpha(this, *(v18 + 16));
    v20 = *v18;
    v19 = *(v18 + 8);

    return RB::DisplayList::Builder::draw(v19, this, v20, 0);
  }

  return result;
}

void _ZZZN2RB11DisplayList18apply_interpolatorERKNS0_12Interpolator5LayerEfbjRNS0_5LayerEfRNS0_15CachedTransformEPKNS_4RectEPKNS0_4ItemESE_PKNS_15AffineTransformEENK3__3clINS_6vectorISE_Lm32EmEESL_EEDaRNS1_5StateERNS0_13AtomizedItemsESQ_RKT_RKT0_ENKUljjST_E_clISL_EESM_jjST_(RB::DisplayList::Builder ***a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = a3;
    do
    {
      v11 = *(a4 + 256);
      if (!v11)
      {
        v11 = a4;
      }

      v12 = *(v11 + 8 * a2);
      v13 = a1[1];
      if (!v13 || (v14 = RB::DisplayList::Item::styled_bounds(*(v11 + 8 * a2), 0), RB::Rect::intersects(v13, *&v14, v15)))
      {
        v16 = (*(*v12 + 24))(v12, **a1, 0);
        (*(*v16 + 32))(v16, *a1, 1);
        if (!v9)
        {
          RB::DisplayList::Builder::make_layer(**a1, 0);
          v9 = v17;
          v7 = *(v16 + 10);
          v8 = *(v16 + 4);
        }

        *(v16 + 4) = 0;
        *(v16 + 10) = 0;
        RB::DisplayList::Builder::draw(**a1, v16, v9, 0);
      }

      ++a2;
      --v10;
    }

    while (v10);
    if (v9)
    {
      v18 = *(**a1 + 1);
      v19 = (v18[4] + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v19 + 64 > v18[5])
      {
        v19 = RB::Heap::alloc_slow(v18 + 2, 0x40uLL, 7);
      }

      else
      {
        v18[4] = v19 + 64;
      }

      RB::DisplayList::LayerItem::LayerItem(v19, 2, v9, 1.0);
      if (v20)
      {
        *(v20 + 40) = v7;
        *(v20 + 32) = v8;
      }
    }
  }
}

float _ZN2RB4Heap7emplaceINS_11DisplayList14CrossFadeStyleEJRPNS2_4ItemERfRDF16_EEEPT_DpOT0_(RB::Heap *this, uint64_t *a2, float *a3, __int16 *a4)
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
  _H1 = *a4;
  __asm { FCVT            S1, H1 }

  *(v9 + 48) = 0;
  *(v9 + 56) = v10;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *v9 = &unk_1F0A39EB8;
  *(v9 + 64) = result;
  *(v9 + 68) = _S1;
  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::unique_ptr<RB::DisplayList::Interpolator::Layer>>,void *>>>::operator()[abi:nn200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    __p[3] = 0;
    if (v3)
    {
      v4 = *(v3 + 232);
      if (v4)
      {
        free(v4);
      }

      v5 = *(v3 + 176);
      if (v5)
      {
        free(v5);
      }

      MEMORY[0x19A8C09E0](v3, 0x1020C40C2C913D3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void RB::DisplayList::Interpolator::Layer::~Layer(RB::DisplayList::Interpolator::Layer *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    free(v3);
  }
}

uint64_t RB::JSONPipeline::make_pipeline_set(RB::Device *a1, unint64_t a2)
{
  RB::JSONPipeline::JSONPipeline(v13);
  for (i = *(a2 + 16); i; i = *i)
  {
    v6 = i[2];
    v7 = *(i + 6);
    v8 = objc_opt_new();
    RB::JSONPipelineData::JSONPipelineData(v12);
    v9 = RB::Device::library(a1);
    v2 = v2 & 0xFFFFFFFF00000000 | v7;
    RB::Device::make_render_pipeline_descriptor(v6, v2, v9, 0, v8, v12, 0);
    a2 = a2 & 0xFFFFFFFF00000000 | v7;
    RB::JSONPipeline::add_pipeline_state(v13, v6, a2, v8, v12);
  }

  v10 = RB::JSONPipeline::finalize(v13);

  return v10;
}

void sub_195D76010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  RB::JSONPipeline::~JSONPipeline(va);
  _Unwind_Resume(a1);
}

void RB::JSONPipeline::add_pipeline_state(void **a1, char a2, __int16 a3, void *a4, uint64_t a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v9 = *a5;
  if (!*a5)
  {
LABEL_7:
    v39 = 0;
    goto LABEL_8;
  }

  v10 = [*a5 specializedName];
  v11 = v10;
  if (!v10)
  {
    v13 = [v9 name];
    if (v13)
    {

      v39 = v13;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  snprintf_l(v46, 0x100uLL, 0, "alias:%s#%s", [v10 UTF8String], objc_msgSend(v10, "UTF8String"));
  v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v46];

  if (([a1[3] containsObject:?] & 1) == 0)
  {
    [a1[3] addObject:?];
    v12 = *a1;
    v45[0] = v11;
    v44[0] = @"label";
    v44[1] = @"function";
    v45[1] = [v9 name];
    v45[2] = v11;
    v44[2] = @"specialized_name";
    v44[3] = @"constant_values";
    v45[3] = *(a5 + 16);
    [v12 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v45, v44, 4)}];
  }

LABEL_8:
  v14 = *(a5 + 8);
  if (!v14)
  {
LABEL_14:
    v40 = 0;
    goto LABEL_15;
  }

  v15 = [*(a5 + 8) specializedName];
  v16 = v15;
  if (!v15)
  {
    v18 = [v14 name];
    if (v18)
    {

      v40 = v18;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  snprintf_l(v46, 0x100uLL, 0, "alias:%s#%s", [v15 UTF8String], objc_msgSend(v15, "UTF8String"));
  v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v46];

  if (([a1[4] containsObject:?] & 1) == 0)
  {
    [a1[4] addObject:?];
    v17 = *a1;
    v43[0] = v16;
    v42[0] = @"label";
    v42[1] = @"function";
    v43[1] = [v14 name];
    v43[2] = v16;
    v42[2] = @"specialized_name";
    v42[3] = @"constant_values";
    v43[3] = *(a5 + 16);
    [v17 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v43, v42, 4)}];
  }

LABEL_15:
  v41 = objc_opt_new();
  v20 = *(RB::pixel_format_traits(a3 & 0x3FF, v19) + 7);
  v21 = a2 & 0x3F;
  if (v21 > 0x1F)
  {
    if (v21 == 32)
    {
LABEL_22:
      if (v20 <= 4)
      {
        v20 = 4;
      }

      else
      {
        v20 = v20;
      }

      goto LABEL_31;
    }

    if (v21 != 33)
    {
      goto LABEL_25;
    }

    v22 = 4;
LABEL_33:
    if (v20)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"supportsFamily(apple%d) && !supportsFamily(apple%d)", v20, v22];
      goto LABEL_35;
    }

    v24 = @"!supportsFamily(apple%d)";
LABEL_32:
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:v24, v22];
LABEL_35:
    [v41 setObject:v25 forKeyedSubscript:@"enable"];
    goto LABEL_36;
  }

  if ((a2 & 0x3F) == 0)
  {
    v23 = [a4 supportAddingFragmentBinaryFunctions];
    v22 = 6;
    if (v23)
    {
      if (v20 <= 6)
      {
        v20 = 6;
      }

      else
      {
        v20 = v20;
      }

      goto LABEL_31;
    }

    goto LABEL_33;
  }

  if (v21 == 1)
  {
    goto LABEL_22;
  }

LABEL_25:
  if (v20)
  {
LABEL_31:
    v24 = @"supportsFamily(apple%d)";
    v22 = v20;
    goto LABEL_32;
  }

LABEL_36:
  [v41 setObject:v39 forKeyedSubscript:@"vertex_function"];
  if (v40)
  {
    [v41 setObject:v40 forKeyedSubscript:@"fragment_function"];
  }

  v26 = objc_opt_new();
  v27 = 0;
  v28 = MEMORY[0x1E695E0F8];
  do
  {
    v29 = [objc_msgSend(a4 "colorAttachments")];
    if ([v29 pixelFormat])
    {
      v30 = objc_opt_new();
      while ([v26 count] < v27)
      {
        [v26 addObject:v28];
      }

      [v29 pixelFormat];
      [v30 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithUTF8String:", MTLPixelFormatGetName() + 14), @"pixel_format"}];
      if ([v29 isBlendingEnabled])
      {
        [v30 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(v29, "isBlendingEnabled")), @"blending_enabled"}];
        v31 = [v29 sourceRGBBlendFactor];
        if (v31 >= 9 || ([v30 setObject:*(&RB::JSONPipeline::blend_factor_name(MTLBlendFactor)const::names + v31) forKeyedSubscript:@"source_rgb_blend_factor"], v32 = objc_msgSend(v29, "destinationRGBBlendFactor"), v32 >= 9) || (objc_msgSend(v30, "setObject:forKeyedSubscript:", *(&RB::JSONPipeline::blend_factor_name(MTLBlendFactor)const::names + v32), @"destination_rgb_blend_factor"), v33 = objc_msgSend(v29, "rgbBlendOperation"), v33 >= 5) || (objc_msgSend(v30, "setObject:forKeyedSubscript:", *(&RB::JSONPipeline::blend_operation_name(MTLBlendOperation)const::names + v33), @"rgb_blend_operation"), v34 = objc_msgSend(v29, "sourceAlphaBlendFactor"), v34 >= 9) || (objc_msgSend(v30, "setObject:forKeyedSubscript:", *(&RB::JSONPipeline::blend_factor_name(MTLBlendFactor)const::names + v34), @"source_alpha_blend_factor"), v35 = objc_msgSend(v29, "destinationAlphaBlendFactor"), v35 >= 9) || (objc_msgSend(v30, "setObject:forKeyedSubscript:", *(&RB::JSONPipeline::blend_factor_name(MTLBlendFactor)const::names + v35), @"destination_alpha_blend_factor"), v36 = objc_msgSend(v29, "alphaBlendOperation"), v36 >= 5))
        {
          abort();
        }

        [v30 setObject:*(&RB::JSONPipeline::blend_operation_name(MTLBlendOperation)const::names + v36) forKeyedSubscript:@"alpha_blend_operation"];
      }

      if ([v29 writeMask] != 15)
      {
        v37 = [v29 writeMask];
        [v30 setObject:RB::JSONPipeline::color_write_mask_name(v37 forKeyedSubscript:{v37), @"write_mask"}];
      }

      [v26 addObject:v30];
    }

    ++v27;
  }

  while (v27 != 8);
  [v41 setObject:v26 forKeyedSubscript:@"color_attachments"];
  if ([a4 stencilAttachmentPixelFormat])
  {
    [a4 stencilAttachmentPixelFormat];
    [v41 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithUTF8String:", MTLPixelFormatGetName() + 14), @"stencil_attachment_pixel_format"}];
  }

  if ([a4 depthAttachmentPixelFormat])
  {
    [a4 depthAttachmentPixelFormat];
    [v41 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithUTF8String:", MTLPixelFormatGetName() + 14), @"depth_attachment_pixel_format"}];
  }

  if ([a4 supportAddingFragmentBinaryFunctions])
  {
    [v41 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"support_adding_fragment_binary_functions"];
  }

  if ([a4 maxFragmentCallStackDepth] != 1)
  {
    [v41 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(a4, "maxFragmentCallStackDepth")), @"max_fragment_call_stack_depth"}];
  }

  [a1[1] addObject:v41];
}

uint64_t RB::JSONPipeline::finalize(RB::JSONPipeline *this)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v9 = @"specialized_functions";
  v10 = *this;
  v11[0] = @"libraries";
  v12[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v11[1] = @"pipelines";
  v2 = *(this + 1);
  v7 = @"render_pipelines";
  v8 = v2;
  v12[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v11[2] = @"functions";
  v3 = *(this + 2);
  v5 = @"visible_functions";
  v6 = v3;
  v12[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
}

RB::JSONPipeline *RB::JSONPipeline::JSONPipeline(RB::JSONPipeline *this)
{
  v16[2] = *MEMORY[0x1E69E9840];
  *this = objc_opt_new();
  *(this + 1) = objc_opt_new();
  *(this + 2) = objc_opt_new();
  *(this + 3) = objc_opt_new();
  *(this + 4) = objc_opt_new();
  v14[0] = RBSystemShaderDistanceGradient;
  v14[1] = RBSystemShaderOvalizeGradient;
  v14[2] = RBSystemShaderDisplacementMap;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_v%d", *(*(&v9 + 1) + 8 * v5), 1];
        v7 = *(this + 2);
        v15[0] = @"function";
        v15[1] = @"enable";
        v16[0] = v6;
        v16[1] = @"supportsFamily(apple6)";
        [v7 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v16, v15, 2)}];
        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  return this;
}

__CFString *RB::JSONPipeline::color_write_mask_name(RB::JSONPipeline *this, uint64_t a2)
{
  if (!a2)
  {
    return @"None";
  }

  v2 = a2;
  if (a2 == 15)
  {
    return @"All";
  }

  v4 = [MEMORY[0x1E696AD60] string];
  v3 = v4;
  if ((v2 & 8) != 0)
  {
    if ([v4 length])
    {
      [v3 appendString:@" "];
    }

    [v3 appendString:@"Red"];
    if ((v2 & 4) == 0)
    {
LABEL_7:
      if ((v2 & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_7;
  }

  if ([v3 length])
  {
    [v3 appendString:@" "];
  }

  [v3 appendString:@"Green"];
  if ((v2 & 2) == 0)
  {
LABEL_8:
    if ((v2 & 1) == 0)
    {
      return v3;
    }

    goto LABEL_19;
  }

LABEL_16:
  if ([v3 length])
  {
    [v3 appendString:@" "];
  }

  [v3 appendString:@"Blue"];
  if (v2)
  {
LABEL_19:
    if ([v3 length])
    {
      [v3 appendString:@" "];
    }

    [v3 appendString:@"Alpha"];
  }

  return v3;
}

RB::JSONPipelineData *RB::JSONPipelineData::JSONPipelineData(RB::JSONPipelineData *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = objc_opt_new();
  return this;
}

void RB::JSONPipelineData::set_const(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = objc_opt_new();
  if (a3 != 36)
  {
    abort();
  }

  v9 = v8;
  [v8 setObject:@"FunctionConstantIndex" forKeyedSubscript:@"id_type"];
  v12 = @"data";
  v13[0] = [MEMORY[0x1E696AD98] numberWithInt:a2];
  [v9 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v13, &v12, 1), @"id"}];
  [v9 setObject:@"ConstantUInt4" forKeyedSubscript:@"value_type"];
  v10 = @"data";
  v11 = a4;
  [v9 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v11, &v10, 1), @"value"}];
  [*(a1 + 16) addObject:v9];
}

float64x2_t CG::Cubic::Cubic(CG::Cubic *this, const Point *a2, const Point *a3, const Point *a4, const Point *a5)
{
  *this = *&a2->v;
  *(this + 1) = *&a3->v;
  *(this + 2) = *&a4->v;
  v5 = *(this + 1);
  v6 = vsubq_f64(v5, *this);
  __asm { FMOV            V3.2D, #3.0 }

  *(this + 3) = *&a5->v;
  *(this + 4) = vmulq_f64(v6, _Q3);
  v12 = *(this + 2);
  v13 = vsubq_f64(v12, v5);
  result = vaddq_f64(vsubq_f64(vsubq_f64(v6, v12), vaddq_f64(v13, v13)), *(this + 3));
  *(this + 5) = vmulq_f64(vsubq_f64(v13, v6), _Q3);
  *(this + 6) = result;
  return result;
}

double CG::Cubic::derivative(float64x2_t *this, double a2)
{
  if (a2 == 0.0)
  {
    *&result = *&CG::Cubic::tangent_at_0(this);
  }

  else if (a2 == 1.0)
  {
    *&result = *&CG::Cubic::tangent_at_1(this);
  }

  else
  {
    __asm { FMOV            V3.2D, #2.0 }

    *&result = *&vmlaq_n_f64(this[4], vmlaq_f64(vmulq_n_f64(this[6], a2 * 3.0), _Q3, this[5]), a2);
  }

  return result;
}

float64x2_t CG::Cubic::tangent_at_0(float64x2_t *this)
{
  v1 = *this;
  result = vsubq_f64(this[1], *this);
  if (vaddvq_f64(vmulq_f64(result, result)) <= 0.00000001)
  {
    result = vsubq_f64(this[2], v1);
    if (vaddvq_f64(vmulq_f64(result, result)) <= 0.00000001)
    {
      return vsubq_f64(this[3], v1);
    }
  }

  return result;
}

float64x2_t CG::Cubic::tangent_at_1(float64x2_t *this)
{
  v1 = this[3];
  result = vsubq_f64(v1, this[2]);
  if (vaddvq_f64(vmulq_f64(result, result)) <= 0.00000001)
  {
    result = vsubq_f64(v1, this[1]);
    if (vaddvq_f64(vmulq_f64(result, result)) <= 0.00000001)
    {
      return vsubq_f64(v1, *this);
    }
  }

  return result;
}

BOOL CG::Cubic::is_flat_(float64x2_t *this, double a2)
{
  __asm { FMOV            V3.2D, #3.0 }

  v7 = this[3];
  v8 = vmlaq_f64(vsubq_f64(*this, v7), _Q3, vsubq_f64(this[1], *this));
  v9 = vmlaq_f64(vsubq_f64(v7, *this), _Q3, vsubq_f64(this[2], v7));
  v10 = vmulq_f64(v8, v8);
  v11 = vmulq_f64(v9, v9);
  return vaddvq_f64(vbslq_s8(vcgtq_f64(v11, v10), v11, v10)) < a2;
}

void RB::cubic_index<double>(float64x2_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, double a5, double a6)
{
  if (a5 > 0.0)
  {
    v7 = _ZN2RB13CubicIteratorIDv2_dE13segment_countIdEEiS1_S1_S1_S1_T_(a1, a2, a3, a4, a6);
    v8 = v7;
    _ZN2RB13CubicIteratorIDv2_dEC1ES1_S1_S1_S1_i(v14, v7);
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = v16;
      v11 = 0.0;
      v12 = v15;
      do
      {
        v13 = sqrt(vaddvq_f64(vmulq_f64(v12, v12)));
        if (v13 + v11 > a5)
        {
          break;
        }

        v12 = vaddq_f64(v10, v12);
        v10 = vaddq_f64(v17, v10);
        ++v9;
        v11 = v13 + v11;
      }

      while (v8 != v9);
    }
  }
}

float64x2_t CG::Cubic::split@<Q0>(float64x2_t *this@<X0>, double a2@<D0>, float64x2_t *a3@<X8>)
{
  v3 = this[1];
  v4 = vmulq_n_f64(vsubq_f64(v3, *this), a2);
  v5 = vaddq_f64(v4, *this);
  v6 = this[2];
  v7 = this[3];
  v8 = vmlaq_n_f64(v3, vsubq_f64(v6, v3), a2);
  v9 = vmulq_n_f64(vsubq_f64(v8, v5), a2);
  v10 = vaddq_f64(v9, v5);
  *a3 = *this;
  a3[1] = v5;
  a3[2] = v10;
  v11 = vmlaq_n_f64(v6, vsubq_f64(v7, v6), a2);
  v12 = vmlaq_n_f64(v8, vsubq_f64(v11, v8), a2);
  v13 = vsubq_f64(v4, v10);
  v14 = vmlaq_n_f64(v10, vsubq_f64(v12, v10), a2);
  __asm { FMOV            V0.2D, #3.0 }

  a3[3] = v14;
  a3[4] = vmulq_f64(v4, _Q0);
  a3[5] = vmulq_f64(vsubq_f64(v9, v4), _Q0);
  a3[6] = vaddq_f64(vsubq_f64(v13, vaddq_f64(v9, v9)), v14);
  a3[7] = v14;
  a3[8] = v12;
  a3[9] = v11;
  a3[10] = v7;
  v20 = vsubq_f64(v12, v14);
  v21 = vsubq_f64(v11, v12);
  a3[11] = vmulq_f64(v20, _Q0);
  a3[12] = vmulq_f64(vsubq_f64(v21, v20), _Q0);
  result = vaddq_f64(vsubq_f64(vsubq_f64(v7, v11), vaddq_f64(v21, v21)), v20);
  a3[13] = result;
  return result;
}

double CG::Cubic::inflection_points_classic(CG::Cubic *this)
{
  v1 = *(this + 12);
  result = -1.0;
  if (v1 == 0.0 || ((v3 = *(this + 10), v4 = v1 * 3.0, v5 = -v3, v3 < 0.0) ? (v6 = v4 <= v5) : (v6 = 1), v6 && (v3 > 0.0 ? (v7 = v4 < v5) : (v7 = 0), !v7)))
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
    result = v5 / v4;
  }

  v9 = *(this + 13);
  if (v9 == 0.0 || ((v10 = *(this + 11), v11 = v9 * 3.0, v12 = -v10, v10 < 0.0) ? (v13 = v11 <= v12) : (v13 = 1), v13 && (v10 > 0.0 ? (v14 = v11 < v12) : (v14 = 0), !v14)))
  {
    v15 = -1.0;
    if (v8)
    {
      return result;
    }

    return v15;
  }

  v15 = v12 / v11;
  if (!v8)
  {
    return v15;
  }

  if (vabdd_f64(result, v15) >= 0.000001 && result >= v15)
  {
    return v15;
  }

  return result;
}

uint64_t CG::Cubic::is_near(float64x2_t *this, const Point *a2, double a3, double a4)
{
  v4 = a4 * a4;
  v5 = this[4];
  v6 = this[5];
  v7 = this[6];
  v8 = vsubq_f64(*this, *&a2->v);
  v9 = vmlaq_f64(v8, 0, vmlaq_f64(v5, 0, vmlaq_f64(v6, 0, v7)));
  v10 = vmulq_f64(v9, v9);
  if (vaddvq_f64(v10) < v4)
  {
    return 1;
  }

  v11 = vaddq_f64(vaddq_f64(v5, v8), vaddq_f64(v6, v7));
  v12 = vaddvq_f64(vaddq_f64(vzip2q_s64(v7, v6), vzip2q_s64(v8, v5)));
  v13 = vmulq_f64(v11, v11).f64[0] + v12 * v12;
  if (v13 < v4)
  {
    return 1;
  }

  v14 = vmlaq_n_f64(v8, vmlaq_n_f64(v5, vmlaq_n_f64(v6, v7, a3), a3), a3);
  v15 = vmulq_f64(v14, v14);
  v16 = vaddvq_f64(v15);
  if (v16 < v4)
  {
    return 1;
  }

  result = 0;
  if ((vmovn_s64(vmvnq_s8(vcgeq_f64(vaddq_f64(vdupq_laneq_s64(v15, 1), v15), vaddq_f64(vdupq_laneq_s64(v10, 1), v10)))).u8[0] & 1) != 0 && v16 < v13)
  {
    if ((atomic_load_explicit(&qword_1ED6D5378, memory_order_acquire) & 1) == 0)
    {
      v37 = v16;
      v38 = v4;
      v36 = v5;
      v34 = v7;
      v35 = v6;
      v32 = a3;
      v33 = v8;
      CG::Cubic::is_near();
      a3 = v32;
      v8 = v33;
      v7 = v34;
      v6 = v35;
      v5 = v36;
      v16 = v37;
      v4 = v38;
    }

    v18 = 1.0 - *&_MergedGlobals_0;
    if (a3 <= 0.5)
    {
      v19 = a3;
      v22 = a3 + v18 * (1.0 - a3);
      v23 = vmlaq_n_f64(v8, vmlaq_n_f64(v5, vmlaq_n_f64(v6, v7, v22), v22), v22);
      v24 = vmulq_f64(v23, v23);
      v21 = v16;
      v16 = vaddvq_f64(v24);
      a3 = v22;
      if (v16 >= v4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v19 = a3 - v18 * a3;
      v20 = vmlaq_n_f64(v8, vmlaq_n_f64(v5, vmlaq_n_f64(v6, v7, v19), v19), v19);
      v21 = vaddvq_f64(vmulq_f64(v20, v20));
      if (v21 >= v4)
      {
LABEL_15:
        v25 = 1.0;
        if ((a3 + v19) * 0.00000003 >= 1.0)
        {
          return 0;
        }

        v26 = 0.0;
        result = 0;
        do
        {
          if (v16 >= v21)
          {
            v25 = a3;
            v28 = vmlaq_n_f64(v8, vmlaq_n_f64(v5, vmlaq_n_f64(v6, v7, v26 + *&_MergedGlobals_0 * (v19 - v26)), v26 + *&_MergedGlobals_0 * (v19 - v26)), v26 + *&_MergedGlobals_0 * (v19 - v26));
            v16 = vaddvq_f64(vmulq_f64(v28, v28));
            a3 = v26 + *&_MergedGlobals_0 * (v19 - v26);
            if (v16 <= v4)
            {
              return 1;
            }
          }

          else
          {
            v26 = v19;
            v19 = v25 + *&_MergedGlobals_0 * (a3 - v25);
            v27 = vmlaq_n_f64(v8, vmlaq_n_f64(v5, vmlaq_n_f64(v6, v7, v19), v19), v19);
            v21 = vaddvq_f64(vmulq_f64(v27, v27));
            if (v21 <= v4)
            {
              return 1;
            }
          }

          v29 = v16;
          v30 = a3;
          v31 = (v19 + a3) * 0.00000003;
          v16 = v21;
          v21 = v29;
          a3 = v19;
          v19 = v30;
        }

        while (v25 - v26 > v31);
        return result;
      }
    }

    return 1;
  }

  return result;
}

id *RBStrokeRef::map(id *result, uint64_t a2, uint64_t (**a3)(void), float64x2_t a4, float32x2_t a5, float32x2_t a6, uint64_t a7, float64x2_t *a8)
{
  if (*result)
  {
    v13 = result;
    v34 = a4;
    v14 = a8[1];
    v37 = *a8;
    v38 = v14;
    v39 = a8[2];
    if (RB::AffineTransform::invert(&v37))
    {
      v15 = &v37;
    }

    else
    {
      v15 = a8;
    }

    v16 = v15[1];
    v17 = v15[2];
    v37 = *v15;
    v38 = v16;
    v39 = v17;
    v35 = COERCE_DOUBLE(RB::operator*(&v37, a5, a6));
    v36 = v18;
    [*v13 borderWidth];
    v20.f32[0] = -v19;
    RB::Rect::inset(&v35, v20, v20.f32[0]);
    v21 = objc_opt_respondsToSelector();
    v22 = 1.0;
    if (v21)
    {
      v21 = [*v13 maxLineWidth];
      v22 = v23;
    }

    v24 = *v13;
    v25 = v35;
    v26 = v36;
    v27 = *(a2 + 33);
    v28 = *(a2 + 34);
    v29 = *(a2 + 40);
    v30 = RB::bezier_flatness(v21);
    v31 = RB::AffineTransform::scale(a8);
    v32 = vrecpe_f32(LODWORD(v31));
    v33 = vmul_f32(vrecps_f32(LODWORD(v31), v32), v32);
    return RB::Stroke::flatten_points(v24, a3, v27, v28, v34, v25, v26, v29, v30 * vmul_f32(v33, vrecps_f32(LODWORD(v31), v33)).f32[0], v22);
  }

  return result;
}

void **RBStrokeRef::map(void **result, __n128 a2, float32x2_t a3, float32x2_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float64x2_t *a8)
{
  v8 = *result;
  if (*result)
  {
    v13 = a8[1];
    v35 = *a8;
    v36 = v13;
    v37 = a8[2];
    if (RB::AffineTransform::invert(&v35))
    {
      v14 = &v35;
    }

    else
    {
      v14 = a8;
    }

    v15 = v14[1];
    v16 = v14[2];
    v35 = *v14;
    v36 = v15;
    v37 = v16;
    v45 = RB::operator*(&v35, a3, a4);
    v46 = v17;
    [v8 borderWidth];
    v19.f32[0] = -v18;
    RB::Rect::inset(&v45, v19, v19.f32[0]);
    v20 = [v8 imageCount];
    v21 = [v8 seed];
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = 90911;
    }

    *&v37.f64[0] = vadd_f32(v46, v45);
    LOBYTE(v37.f64[1]) = 0;
    __asm { FMOV            V0.2S, #1.0 }

    v38 = _D0;
    v39 = 1065353216;
    v40 = 0;
    v41 = 0;
    v42 = 1065353216;
    v43 = v22;
    v44 = 0;
    v28 = [v8 rotatesImage];
    LOBYTE(v37.f64[1]) = v28;
    v29 = RB::bezier_flatness(v28);
    v30 = RB::AffineTransform::scale(a8);
    v31 = vrecpe_f32(LODWORD(v30));
    v32 = vmul_f32(vrecps_f32(LODWORD(v30), v31), v31);
    return RB::Stroke::flatten_particles(v8, &v35, v34, -5.48612406e303, 0x7F7FFFFF7F7FFFFFLL, v29 * vmul_f32(v32, vrecps_f32(LODWORD(v30), v32)).f32[0], 1.0);
  }

  return result;
}

void *RBStrokeRef::prepare(void **this, const RB::RenderParams *a2)
{
  result = *this;
  if (result)
  {
    result = [result image];
    if (result)
    {
      v9[0] = 0;
      __asm { FMOV            V0.2S, #1.0 }

      v9[1] = _D0;
      v9[2] = 0;
      v9[3] = 0;
      v10 = xmmword_195E428C0;
      v11 = xmmword_195E428C0;
      v12 = 1065353216;
      v13 = 0x3C003C003C003C00;
      v14 = 0x300000000000000;
      return RBMakeCachedImageTexture(a2, result, v9, 0, 0);
    }
  }

  return result;
}

int32x2_t *RBStrokeRef::texture(id *a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  *a3 = [*a1 imageCount];
  [v4 imageScale];
  *a4 = v7;
  result = [v4 image];
  if (result)
  {
    v14[0] = 0;
    __asm { FMOV            V0.2S, #1.0 }

    v14[1] = _D0;
    v14[2] = 0;
    v14[3] = 0;
    v15 = xmmword_195E428C0;
    v16 = xmmword_195E428C0;
    v17 = 1065353216;
    v18 = 0x3C003C003C003C00;
    v19 = 0;
    return RBGetCachedImageTexture(a2, result, v14, 0, 0);
  }

  return result;
}

void *RBStrokeRef::prepare_encode(void *result, uint64_t a2, void *a3)
{
  if (*(a2 + 32) == 1)
  {
    result = *result;
    if (result)
    {
      v5 = [result image];

      return RB::Encoder::prepare_image(a3, 0, v5);
    }
  }

  return result;
}

void RBStrokeRef::encode(id *a1, uint64_t a2, RB::ProtobufEncoder *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  if (v6)
  {
    v21 = 0;
    v22 = 0;
    v25 = 0u;
    v23 = 64;
    v26 = 384;
    [v6 applyFunction:RBStrokeRef::encode(RB::Coverage::Stroke<RBStrokeRef> const& info:{RB::Encoder &)const::$_0::__invoke, v20}];
    v7 = v22;
    if (v22)
    {
      v8 = v21;
      RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = v20;
      }

      RB::ProtobufEncoder::encode_data(this, v9, v7);
    }

    if (*(&v25 + 1))
    {
      if (v25)
      {
        v10 = v25;
      }

      else
      {
        v10 = &v24;
      }

      RB::ProtobufEncoder::packed_fixed32_field(this, 2, v10, *(&v25 + 1));
    }

    if (v25)
    {
      free(v25);
    }

    if (v21)
    {
      free(v21);
    }
  }

  if (*(a2 + 36) == 1)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x18uLL);
    RB::ProtobufEncoder::encode_varint(this, 1uLL);
  }

  if (*(a2 + 32) == 1)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x2AuLL);
    RB::ProtobufEncoder::begin_length_delimited(this);
    v14 = rb_alpha_blend_mode(*(a2 + 35));
    if (v14)
    {
      RB::ProtobufEncoder::encode_varint(this, 8uLL);
      RB::ProtobufEncoder::encode_varint(this, v14);
    }

    v15 = *a1;
    if (*a1)
    {
      RB::Encoder::image_field(this, 2, 0, [*a1 image]);
      v16 = [v15 imageCount];
      if (v16 != 1)
      {
        RB::ProtobufEncoder::encode_varint(this, 0x18uLL);
        RB::ProtobufEncoder::encode_varint(this, v16);
      }

      [v15 imageScale];
      v18 = LODWORD(v17);
      if (v17 != 1.0)
      {
        RB::ProtobufEncoder::encode_varint(this, 0x25uLL);
        RB::ProtobufEncoder::encode_fixed32(this, v18);
      }

      if ([v15 rotatesImage])
      {
        RB::ProtobufEncoder::encode_varint(this, 0x28uLL);
        RB::ProtobufEncoder::encode_varint(this, 1uLL);
      }

      v19 = [v15 seed];
      if (v19)
      {
        RB::ProtobufEncoder::encode_varint(this, 0x31uLL);
        RB::ProtobufEncoder::encode_fixed64(this, v19);
      }
    }
  }

  else
  {
    if (*(a2 + 32))
    {
      return;
    }

    RB::ProtobufEncoder::encode_varint(this, 0x22uLL);
    RB::ProtobufEncoder::begin_length_delimited(this);
    v11 = rb_line_cap(*(a2 + 33));
    if (v11 != 1)
    {
      RB::ProtobufEncoder::encode_varint(this, 8uLL);
      RB::ProtobufEncoder::encode_varint(this, v11);
    }

    v12 = RBStrokeRef::clip(*(a2 + 34));
    if (v12 != 1)
    {
      RB::ProtobufEncoder::encode_varint(this, 0x10uLL);
      RB::ProtobufEncoder::encode_varint(this, v12);
    }

    v13 = *(a2 + 40);
    if (*&v13 != 10.0)
    {
      RB::ProtobufEncoder::encode_varint(this, 0x1DuLL);
      RB::ProtobufEncoder::encode_fixed32(this, v13);
    }
  }

  RB::ProtobufEncoder::end_length_delimited(this);
}

void sub_195D77D1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  RBStrokeRef::encode(RB::Coverage::Stroke<RBStrokeRef> const&,RB::Encoder &)const::StrokeData::~StrokeData(va);
  _Unwind_Resume(a1);
}

uint64_t RBStrokeRef::encode(RB::Coverage::Stroke<RBStrokeRef> const&,RB::Encoder &)const::StrokeData::~StrokeData(uint64_t a1)
{
  v2 = *(a1 + 1624);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    free(v3);
  }

  return a1;
}

void RBStrokeRef::decode(id *a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  v7 = 0;
  v8 = 0;
  v34 = 0u;
  v35 = 384;
  while (1)
  {
    field = RB::ProtobufDecoder::next_field(a3);
    v10 = field;
    if (!field)
    {
      break;
    }

    v11 = field >> 3;
    if ((field >> 3) > 3)
    {
      if (v11 == 4)
      {
        *(a2 + 32) = 0;
        [v6 setStrokeType:0];
        v12 = v6;
        if ((v10 & 7) == 2)
        {
          RB::ProtobufDecoder::begin_message(a3);
          for (i = RB::ProtobufDecoder::next_field(a3); i; i = RB::ProtobufDecoder::next_field(a3))
          {
            v22 = i >> 3;
            if ((i >> 3) == 3)
            {
              *&v23 = RB::ProtobufDecoder::float_field(a3, i);
              [v12 setMiterLimit:v23];
            }

            else if (v22 == 2)
            {
              [v12 setLineJoin:{RB::ProtobufDecoder::uint_field(a3, i)}];
            }

            else if (v22 == 1)
            {
              [v12 setLineCap:{RB::ProtobufDecoder::uint_field(a3, i)}];
            }

            else
            {
              RB::ProtobufDecoder::skip_field(a3, i);
            }
          }

LABEL_43:
          RB::ProtobufDecoder::end_message(a3);
          goto LABEL_44;
        }
      }

      else
      {
        if (v11 != 5)
        {
          goto LABEL_46;
        }

        *(a2 + 32) = 1;
        [v6 setStrokeType:1];
        v12 = v6;
        if ((v10 & 7) == 2)
        {
          RB::ProtobufDecoder::begin_message(a3);
          v13 = RB::ProtobufDecoder::next_field(a3);
          if (v13)
          {
            while (1)
            {
              v14 = v13 >> 3;
              if ((v13 >> 3) > 3)
              {
                switch(v14)
                {
                  case 4:
                    *&v15 = RB::ProtobufDecoder::float_field(a3, v13);
                    [v12 setImageScale:v15];
                    break;
                  case 5:
                    [v12 setRotatesImage:{RB::ProtobufDecoder::BOOL_field(a3, v13)}];
                    break;
                  case 6:
                    [v12 setSeed:{RB::ProtobufDecoder::uint_field(a3, v13)}];
                    break;
                  default:
LABEL_22:
                    RB::ProtobufDecoder::skip_field(a3, v13);
                    break;
                }
              }

              else
              {
                switch(v14)
                {
                  case 1:
                    [v12 setBlendMode:{RB::ProtobufDecoder::uint_field(a3, v13)}];
                    break;
                  case 2:
                    if (!RB::Decoder::image_field(a3, v13))
                    {
                      [v12 setImage:v16];
                    }

                    break;
                  case 3:
                    [v12 setImageCount:{RB::ProtobufDecoder::uint_field(a3, v13)}];
                    break;
                  default:
                    goto LABEL_22;
                }
              }

              v13 = RB::ProtobufDecoder::next_field(a3);
              if (!v13)
              {
                goto LABEL_43;
              }
            }
          }

          goto LABEL_43;
        }
      }

      *(a3 + 56) = 1;
      *a3 = *(a3 + 8);
LABEL_44:
    }

    else
    {
      switch(v11)
      {
        case 2:
          v17 = RB::ProtobufDecoder::float_field(a3, field);
          v18 = *(&v34 + 1);
          v19 = *(&v34 + 1) + 1;
          if (v35 < *(&v34 + 1) + 1)
          {
            RB::vector<float,384ul,unsigned long>::reserve_slow(__dst, v19);
            v18 = *(&v34 + 1);
            v19 = *(&v34 + 1) + 1;
          }

          v20 = v34;
          if (!v34)
          {
            v20 = __dst;
          }

          *&v20[4 * v18] = v17;
          *(&v34 + 1) = v19;
          break;
        case 3:
          *(a2 + 36) = RB::ProtobufDecoder::BOOL_field(a3, field);
          break;
        case 1:
          v24 = RB::ProtobufDecoder::data_field(a3, field);
          if (v24)
          {
            v7 = v25;
            v8 = v24;
          }

          break;
        default:
LABEL_46:
          RB::ProtobufDecoder::skip_field(a3, field);
          break;
      }
    }
  }

  if (v7)
  {
    v26 = v34 ? v34 : __dst;
    v27 = *(&v34 + 1);
    while (1)
    {
      v29 = *v8++;
      v28 = v29;
      if (v27 < v29 >> 5)
      {
        break;
      }

      v30 = v28 >> 5;
      if ((v28 & 0x1F) <= 0xF && RB::Stroke::element_args(RBStrokeElement)::elts[v28 & 0x1F] <= v30)
      {
        [v6 addElement:? args:?];
      }

      v27 -= v30;
      v26 += 4 * v30;
      if (!--v7)
      {
        if (!v27)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }
    }

    *(a3 + 56) = 1;
    *a3 = *(a3 + 8);
    if (v27)
    {
LABEL_61:
      *(a3 + 56) = 1;
      *a3 = *(a3 + 8);
    }
  }

LABEL_62:
  if (*(a2 + 32))
  {
    if (*(a2 + 32) == 1)
    {
      *(a2 + 35) = rb_alpha_blend_mode([v6 blendMode]);
      if (![v6 image])
      {
        *(a3 + 56) = 1;
        *a3 = *(a3 + 8);
      }
    }
  }

  else
  {
    *(a2 + 33) = rb_line_cap([v6 lineCap]);
    *(a2 + 34) = rb_line_join([v6 lineJoin]);
    [v6 miterLimit];
    *(a2 + 40) = v31;
  }

  v32 = [v6 commit];
  if (*a1 != v32)
  {

    *a1 = v32;
  }

  if (v34)
  {
    free(v34);
  }
}

void sub_195D78248(_Unwind_Exception *a1)
{
  if (STACK[0x608])
  {
    free(STACK[0x608]);
  }

  _Unwind_Resume(a1);
}

id *RBStrokeRef::attributes(id *result)
{
  if (*result)
  {
    *result;
    RB::XML::Element::set<RB::XML::Value::Stroke>();
  }

  return result;
}

void sub_195D78630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void set_rounded_rect(uint64_t a1, int a2, float64_t a3, float64_t a4, float64_t a5, float64_t a6, float64_t a7, float64_t a8, float64_t a9, float64_t a10, double a11)
{
  v34.f64[0] = a3;
  v34.f64[1] = a4;
  v35.f64[0] = a5;
  v35.f64[1] = a6;
  v32.f64[0] = a7;
  v32.f64[1] = a8;
  v33.f64[0] = a9;
  v33.f64[1] = a10;
  RB::clamp_corner_radii(&v32, v35.f64);
  v19 = v33;
  v20 = v32;
  v21 = vdupq_lane_s64(*&v32.f64[0], 0);
  v22 = vandq_s8(vceqq_f64(v32, v21), vceqq_f64(v33, v21));
  v23 = vandq_s8(v22, vdupq_laneq_s64(v22, 1));
  if ((*&v23.f64[0] & 0x8000000000000000) != 0)
  {
    v19.f64[0] = v34.f64[0];
    v23.f64[0] = v35.f64[0];
    set_rounded_rect(a1, a2, v19, v34.f64[1], v23, v35.f64[1], v32.f64[0], v32.f64[0], a11);
  }

  else
  {
    if (a2)
    {
      if (a2 != 1)
      {
        abort();
      }

      v24 = vdupq_n_s64(0x3FF4666660000000uLL);
      v19 = vmulq_f64(v33, v24);
      v20 = vmulq_f64(v32, v24);
      v25 = 4;
    }

    else
    {
      v25 = 3;
    }

    v26 = vcvt_f32_f64(v34);
    v27 = vcvt_f32_f64(v35);
    v31 = vcvt_hight_f32_f64(vcvt_f32_f64(v20), v19);
    v28 = *(a1 + 428);
    RBShapeData::apply<RB::DestroyAny>((a1 + 16));
    v29 = a11;
    v30 = *(a1 + 432);
    *(a1 + 32) = v26;
    *(a1 + 40) = v27;
    *(a1 + 48) = v31;
    *(a1 + 64) = 1065353216;
    *(a1 + 68) = v29;
    *(a1 + 72) = v30;
    *(a1 + 76) = v25;
    *(a1 + 77) = v28;
    *(a1 + 78) &= 0xF8u;
    *(a1 + 16) = 1;
  }
}

void sub_195D7A164(_Unwind_Exception *exception_object)
{
  if (v1 >= 0x201)
  {
    free(v2);
  }

  _Unwind_Resume(exception_object);
}

char *RBStrokeRef::encode(RB::Coverage::Stroke<RBStrokeRef> const&,RB::Encoder &)const::$_0::__invoke(char *result, unsigned __int8 *a2, int *a3, void *__dst)
{
  if (result)
  {
    v7 = result;
    v8 = 0;
    do
    {
      v10 = *a2++;
      v9 = v10;
      if (v10 > 0xFuLL)
      {
        v11 = 0;
      }

      else
      {
        v11 = RB::Stroke::element_args(RBStrokeElement)::elts[v9];
      }

      v12 = __dst[9];
      if (__dst[10] < (v12 + 1))
      {
        result = RB::vector<unsigned char,64ul,unsigned long>::reserve_slow(__dst, v12 + 1);
        v12 = __dst[9];
      }

      v13 = __dst[8];
      if (!v13)
      {
        v13 = __dst;
      }

      *(v13 + v12) = v9 | (32 * v11);
      ++__dst[9];
      v8 += v11;
      --v7;
    }

    while (v7);
    if (v8)
    {
      v14 = __dst[204];
      if (__dst[205] < (v14 + v8))
      {
        result = RB::vector<float,384ul,unsigned long>::reserve_slow(__dst + 11, v14 + v8);
        v14 = __dst[204];
      }

      v15 = __dst[203];
      if (!v15)
      {
        v15 = (__dst + 11);
      }

      v16 = &v15[4 * v14];
      v17 = v8;
      do
      {
        v18 = *a3++;
        *v16 = v18;
        v16 += 4;
        --v17;
      }

      while (v17);
      __dst[204] = v14 + v8;
    }
  }

  return result;
}

void *RB::vector<unsigned char,64ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 10) + (*(__dst + 10) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 10) + (*(__dst + 10) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,1ul>(*(__dst + 8), __dst, 0x40uLL, __dst + 10, v3);
  *(__dst + 8) = result;
  return result;
}

void *RB::vector<float,384ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 194) + (*(__dst + 194) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 194) + (*(__dst + 194) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,4ul>(*(__dst + 192), __dst, 0x180uLL, __dst + 194, v3);
  *(__dst + 192) = result;
  return result;
}

void sub_195D7A5A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::Stroke *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Stroke>,std::allocator<RB::XML::Value::Stroke>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::Stroke *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Stroke>,std::allocator<RB::XML::Value::Stroke>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195D7A690(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::StrokeType *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::StrokeType>,std::allocator<RB::XML::Value::StrokeType>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::StrokeType *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::StrokeType>,std::allocator<RB::XML::Value::StrokeType>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195D7A780(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::Image *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Image>,std::allocator<RB::XML::Value::Image>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::Image *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Image>,std::allocator<RB::XML::Value::Image>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195D7A870(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::AlphaBlendMode *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::AlphaBlendMode>,std::allocator<RB::XML::Value::AlphaBlendMode>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::AlphaBlendMode *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::AlphaBlendMode>,std::allocator<RB::XML::Value::AlphaBlendMode>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

float32x2_t RB::Coverage::Stroke<RBStrokeRef>::bounds(void *a1, float64x2_t *a2)
{
  v4 = a1[3];
  v5 = vcge_f32(vabs_f32(v4), vneg_f32(0x80000000800000));
  if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0)
  {
    v7 = a1[1];
    if (v7)
    {
      [v7 boundingRect];
      v9.f64[1] = v8;
      v6 = vcvt_f32_f64(v9);
      v11.f64[1] = v10;
      v4 = vcvt_f32_f64(v11);
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    a1[2] = v6;
    a1[3] = v4;
  }

  else
  {
    v6 = a1[2];
  }

  return RB::operator*(a2, v6, v4);
}

double OUTLINED_FUNCTION_2_0()
{
  result = 7.29112205e-304;
  v0[4] = 0x100000001000000;
  v0[5] = vneg_f32(0x80000000800000);
  v0[6] = 0;
  v0[7] = 0;
  return result;
}

uint64_t RB::Path::JoinStroke::JoinStroke(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, double a7)
{
  *a1 = &unk_1F0A3D890;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = a7;
  *(a1 + 408) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 424) = 32;
  *(a1 + 432) = 2;
  *(a1 + 436) = 0;
  *(a1 + 440) = a7;
  *(a1 + 728) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 744) = 32;
  *(a1 + 752) = 2;
  *(a1 + 756) = 0;
  if (!a6)
  {
    v28 = 0;
    v10 = 0;
    goto LABEL_46;
  }

  v9 = a5;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = a5 + 16 * a6;
  do
  {
    v15 = vcvtms_u32_f32(*(v9 + 8));
    v16 = vcvtms_u32_f32(*(v9 + 12));
    if (v15 == v16)
    {
      goto LABEL_4;
    }

    if (v15 >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    if (v15 <= v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v15;
    }

    if (v12)
    {
      if (v18 == v7 && v17 == v13 || v18 != v17 + 1)
      {
        v12 = 1;
LABEL_4:
        v17 = v13;
        v18 = v7;
        goto LABEL_40;
      }
    }

    else if (v18 != v17 + 1)
    {
      v12 = 0;
      goto LABEL_4;
    }

    if (v11)
    {
      v21 = 0;
      v22 = v10;
      while (1)
      {
        v23 = v22[1];
        if (*v22 == v17 || v23 == v17)
        {
          break;
        }

        v25 = *v22 == v18 || v23 == v18;
        v26 = v25;
        v21 |= v26;
        if (!v25)
        {
          v22 += 2;
          if (v22 != (v10 + 16 * v11))
          {
            continue;
          }
        }

        if (v21)
        {
          break;
        }

        goto LABEL_36;
      }
    }

    else
    {
LABEL_36:
      if (*(a1 + 80) < v11 + 1)
      {
        RB::vector<std::pair<unsigned long,unsigned long>,0ul,unsigned long>::reserve_slow(a1 + 64, v11 + 1);
        v10 = *(a1 + 64);
        v11 = *(a1 + 72);
      }

      v27 = (v10 + 16 * v11);
      *v27 = v17;
      v27[1] = v18;
      v11 = *(a1 + 72) + 1;
      *(a1 + 72) = v11;
    }

    v12 = 1;
LABEL_40:
    v9 += 16;
    v7 = v18;
    v13 = v17;
  }

  while (v9 != v14);
  v28 = (v10 + 16 * v11);
  if (!v11)
  {
LABEL_46:
    v29 = 0;
    goto LABEL_47;
  }

  v29 = 126 - 2 * __clz(v11);
LABEL_47:
  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,false>(v10, v28, &v31, v29, 1);
  return a1;
}

uint64_t RB::Path::JoinStroke::moveto(RB::Path::JoinStroke *this, Point a2, __n128 a3, double a4)
{
  if (*(this + 52))
  {
    v6 = a3;
    RB::Path::JoinStroke::closepath(this, a3.n128_f64[0], a4);
    a3 = v6;
  }

  return RB::Path::Subpath::reset(this + 120, a2, a3.n128_f64[0], a3.n128_f64[1]);
}

void RB::Path::JoinStroke::closepath(RB::Path::JoinStroke *this, double d0_0, double a3)
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = *(this + 52);
  if (v4)
  {
    v5 = *(this + 8);
    v6 = this + 152;
    if (*(this + 51))
    {
      v6 = *(this + 51);
    }

    v7 = &v6[8 * v4];
    a3 = *(v7 - 1);
    if (v5.f64[0] != *(v7 - 2) || v5.f64[1] != a3)
    {
      RB::Path::Subpath::add_lineto(this + 120, v5, INFINITY);
    }
  }

  v8 = *(this + 14);
  v9 = *(this + 9);
  if (v8 < v9 && *(*(this + 8) + 16 * v8) == *(this + 12))
  {
    std::swap[abi:nn200100]<RB::Path::Subpath>(this + 120, this + 440);
    ++*(this + 12);
    return;
  }

  v10 = *(this + 11);
  v11 = *(this + 4);
  if (v10 >= v11)
  {
    v12 = 0;
LABEL_20:
    v18 = 0;
    v19 = 0;
    goto LABEL_21;
  }

  v12 = 0;
  v13 = *(this + 12);
  v14 = (*(this + 3) + 16 * v10 + 12);
  v15 = *(this + 11);
  while (1)
  {
    v16 = vcvtms_u32_f32(*(v14 - 1));
    v17 = vcvtms_u32_f32(*v14);
    if (v17 < v16)
    {
      v16 = v17;
    }

    if (v16 > v13)
    {
      break;
    }

    v12 |= (*(v14 - 3) & 4u) >> 2;
    *(this + 11) = ++v15;
    v14 += 4;
    if (v11 == v15)
    {
      v15 = v11;
      break;
    }
  }

  v18 = v15 - v10;
  if (v15 <= v10)
  {
    goto LABEL_20;
  }

  v19 = *(this + 3) + 16 * v10;
LABEL_21:
  if (v8 < v9 && *(*(this + 8) + 16 * v8 + 8) == *(this + 12))
  {
    if (v18)
    {
      v20 = (v19 + 12);
      v21 = 16 * v18;
      v22 = 0.0;
      v23 = INFINITY;
      v24 = 0.0;
      do
      {
        if (*(v20 - 2) < v23)
        {
          v25 = *(v20 - 1);
          v26 = floorf(v25);
          v27 = floorf(*v20);
          v28 = v25 - v26;
          v22 = *v20 - v27;
          if (v27 >= v26)
          {
            v24 = *v20 - v27;
            v22 = v28;
          }

          else
          {
            v24 = v28;
          }

          v23 = *(v20 - 2);
        }

        v20 += 4;
        v21 -= 16;
      }

      while (v21);
    }

    else
    {
      v24 = 0.0;
      v23 = INFINITY;
      v22 = 0.0;
    }

    v36 = *(this + 58);
    if (v36 * v22 >= 0.001)
    {
      v37 = v36 * v22;
    }

    else
    {
      v37 = 0.001;
    }

    if (*(this + 18) * v24 >= 0.001)
    {
      v38 = *(this + 18) * v24;
    }

    else
    {
      v38 = 0.001;
    }

    v39 = *(this + 20);
    v79[0] = *(this + 15);
    v81 = 0;
    v79[2] = 0;
    v80 = 0.0;
    v79[1] = 0;
    v82 = 0;
    v83 = 32;
    v84 = v39;
    v85 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 4;
    v78 = 1;
    v70 = 0;
    v71 = 0;
    v72 = 4;
    v73 = 1;
    RB::Path::Subpath::append_range(v79, (this + 440), v37, v36, v74);
    v68 = RB::Path::Subpath::DistanceMap::front(v74, v40);
    RB::Path::Subpath::append_range(v79, (this + 440), 0.0, v37, v74);
    RB::Path::Subpath::append_range(v79, (this + 120), v38, *(this + 18), v69);
    v67 = RB::Path::Subpath::DistanceMap::front(v69, v41);
    RB::Path::Subpath::append_range(v79, (this + 120), 0.0, v38, v69);
    RB::Path::Subpath::close(v79, v42);
    v45 = *(this + 1);
    if (v45)
    {
      RB::Path::Subpath::replay(v79, v45, 1, 0);
    }

    if (v18)
    {
      v46 = v19 + 16 * v18;
      v47 = vdup_n_s32(0x3F7FF972u);
      v48 = 1.0 / v80;
      do
      {
        v49 = *v19;
        v51 = *(v19 + 4);
        v50 = *(v19 + 8);
        v52 = *(v19 + 12);
        v53 = floorf(v50);
        v54 = floorf(v52);
        v55 = v50 - v53;
        v56 = v52 - v54;
        if (v54 >= v53)
        {
          v43.n128_f32[0] = v50 - v53;
        }

        else
        {
          v43.n128_f32[0] = v56;
        }

        if (v54 >= v53)
        {
          v57 = v56;
        }

        else
        {
          v57 = v55;
        }

        if (v43.n128_f32[0] != v22 || (v58 = v68, ((v12 ^ (v51 == v23)) & 1) == 0))
        {
          v43.n128_f64[0] = *(this + 58) * v43.n128_f32[0];
          RB::Path::Subpath::DistanceMap::operator()(v74, v43);
          v58 = v43.n128_f64[0];
        }

        if (v57 != v24 || (v43.n128_f64[0] = v67, ((v12 ^ (v51 != v23)) & 1) == 0))
        {
          v43.n128_f64[0] = *(this + 18) * v57;
          RB::Path::Subpath::DistanceMap::operator()(v69, v43);
        }

        *&v44 = v58 * v48;
        v43.n128_f64[0] = v43.n128_f64[0] * v48;
        v43.n128_f32[0] = v43.n128_f64[0];
        if ((v44 & 0x7FFFFFFF) <= 0x7F7FFFFF && (v43.n128_u32[0] & 0x7FFFFFFF) < 0x7F800000)
        {
          v60 = *(this + 13);
          v61 = *(this + 6);
          v45 = (v61 + 1);
          if (*(this + 7) < (v61 + 1))
          {
            v65 = v43;
            v66 = v44;
            RB::vector<std::pair<unsigned long,unsigned long>,0ul,unsigned long>::reserve_slow(this + 40, v45);
            v43 = v65;
            v44 = v66;
            v61 = *(this + 6);
            v45 = (v61 + 1);
          }

          DWORD1(v44) = v43.n128_u32[0];
          v62 = vbsl_s8(vcgt_f32(*&v44, v47), v47, *&v44);
          v63 = vbic_s8(v62, vcltz_f32(*&v44));
          *v62.i32 = v60;
          v64 = (*(this + 5) + 16 * v61);
          v64->i32[0] = v49;
          v64->f32[1] = v51;
          v64[1] = vadd_f32(v63, vdup_lane_s32(v62, 0));
          *(this + 6) = v45;
        }

        v19 += 16;
      }

      while (v19 != v46);
    }

    RB::Path::Subpath::reset(this + 120, v45, 0.0, 0.0);
    RB::Path::Subpath::reset(this + 440, v87, 0.0, 0.0);
    *(this + 6) = vaddq_s64(*(this + 6), vdupq_n_s64(1uLL));
    ++*(this + 14);
    if (v70)
    {
      free(v70);
    }

    if (v75)
    {
      free(v75);
    }

    if (v81)
    {
      free(v81);
    }
  }

  else
  {
    v29 = *(this + 1);
    if (v29)
    {
      RB::Path::Subpath::replay(this + 120, v29, 1, 0);
    }

    if (v18)
    {
      v30 = v19 + 16 * v18;
      do
      {
        v31 = *(v19 + 8);
        v32 = *(this + 13);
        if (v32 != *(this + 12))
        {
          *&a3 = v32;
          a3 = COERCE_DOUBLE(vdup_lane_s32(*&a3, 0));
          v31 = vadd_f32(vsub_f32(v31, vrndm_f32(v31)), *&a3);
        }

        v33 = *v19;
        v34 = *(this + 6);
        v29 = (v34 + 1);
        if (*(this + 7) < (v34 + 1))
        {
          RB::vector<std::pair<unsigned long,unsigned long>,0ul,unsigned long>::reserve_slow(this + 40, v29);
          v34 = *(this + 6);
        }

        v35 = (*(this + 5) + 16 * v34);
        *v35 = v33;
        v35[1] = v31;
        ++*(this + 6);
        v19 += 16;
      }

      while (v19 != v30);
    }

    RB::Path::Subpath::reset(this + 120, v29, 0.0, 0.0);
    *(this + 6) = vaddq_s64(*(this + 6), vdupq_n_s64(1uLL));
  }
}

void std::swap[abi:nn200100]<RB::Path::Subpath>(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  *v11 = *a1;
  *&v11[16] = *(a1 + 16);
  v13 = *(a1 + 288);
  *(a1 + 288) = 0;
  v14 = *(a1 + 296);
  *(a1 + 296) = xmmword_195E42900;
  RB::vector<double,32ul,unsigned long>::swap_inline(v12, (a1 + 32));
  v15 = *(a1 + 312);
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 296) = 0;
  v4 = *(a1 + 288);
  v5 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v5;
  *(a2 + 288) = v4;
  *(a2 + 296) = 0;
  v6 = *(a1 + 304);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 304) = v6;
  RB::vector<double,32ul,unsigned long>::swap_inline((a1 + 32), (a2 + 32));
  *(a1 + 312) = *(a2 + 312);
  *a2 = *v11;
  *(a2 + 8) = *&v11[8];
  *(a2 + 24) = *&v11[24];
  v7 = *(a2 + 288);
  *(a2 + 288) = v13;
  v8 = *(a2 + 304);
  v9 = v14;
  v13 = v7;
  *&v14 = 0;
  *(a2 + 296) = v9;
  *(&v14 + 1) = v8;
  RB::vector<double,32ul,unsigned long>::swap_inline((a2 + 32), v12);
  v10 = v13;
  *(a2 + 312) = v15;
  if (v10)
  {
    free(v10);
  }
}

void RB::Path::JoinAndClipStroke::JoinAndClipStroke(uint64_t a1, uint64_t a2, float a3, float a4)
{
  *a1 = &unk_1F0A3D8D0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  operator new();
}

uint64_t RB::Path::JoinAndClipStroke::moveto(uint64_t a1, Point a2, __n128 a3, double a4)
{
  if (*(a1 + 464))
  {
    v6 = a3;
    RB::Path::JoinStroke::closepath((a1 + 48), a3.n128_f64[0], a4);
    a3 = v6;
  }

  return RB::Path::Subpath::reset(a1 + 168, a2, a3.n128_f64[0], a3.n128_f64[1]);
}

void RB::Path::JoinAndClipStroke::endpath(RB::Path::JoinAndClipStroke *this, double a2, double a3)
{
  v6 = *MEMORY[0x1E69E9840];
  RB::Path::JoinStroke::closepath((this + 48), a2, a3);
  RB::Path::ClipStroke::Transform::Transform(v4, *(this + 1), *(this + 16), *(this + 68), *(this + 11), *(this + 12), 0, 0, *(this + 4), *(this + 5), 0.5, 0);
  RBPathMap(*(this + 3), &RB::Path::Object::callbacks, v4, 0);
  *&v4[0].f64[0] = &unk_1F0A3F928;
  if (v5)
  {
    free(v5);
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(uint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 >= *a1)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (*a2 == *a1)
  {
    v6 = a2[1];
    v7 = a1[1];
    v8 = v6 >= v7;
    v9 = v6 == v7;
    v10 = -1;
    if (v8)
    {
      v10 = 1;
    }

    if (v9)
    {
      v5 = 0;
    }

    else
    {
      v5 = v10;
    }
  }

  v11 = *a3;
  v12 = -1;
  if (*a3 >= v3)
  {
    v12 = 1;
  }

  if (v5 < 0)
  {
    if (v11 == v3)
    {
      v18 = a3[1];
      v19 = a2[1];
      v8 = v18 >= v19;
      v20 = v18 == v19;
      v12 = -1;
      if (v8)
      {
        v12 = 1;
      }

      if (v20)
      {
        v12 = 0;
      }
    }

    if (v12 < 0)
    {
      *a1 = v11;
      v28 = a1 + 1;
      *a3 = v4;
      v27 = (a3 + 1);
    }

    else
    {
      *a1 = v3;
      *a2 = v4;
      v21 = a1[1];
      a1[1] = a2[1];
      a2[1] = v21;
      v22 = *a2;
      v23 = -1;
      if (*a3 >= *a2)
      {
        v23 = 1;
      }

      if (*a3 == *a2)
      {
        v24 = a3[1];
        v8 = v24 >= v21;
        v25 = v24 == v21;
        v26 = -1;
        if (v8)
        {
          v26 = 1;
        }

        if (v25)
        {
          v23 = 0;
        }

        else
        {
          v23 = v26;
        }
      }

      if ((v23 & 0x80) == 0)
      {
        return 1;
      }

      *a2 = *a3;
      *a3 = v22;
      v27 = (a3 + 1);
      v28 = (a2 + 1);
    }

    v29 = v27;
    goto LABEL_52;
  }

  if (v11 == v3)
  {
    v13 = a3[1];
    v14 = a2[1];
    v8 = v13 >= v14;
    v15 = v13 == v14;
    v16 = -1;
    if (v8)
    {
      v16 = 1;
    }

    if (v15)
    {
      v12 = 0;
    }

    else
    {
      v12 = v16;
    }
  }

  if ((v12 & 0x80) == 0)
  {
    return 0;
  }

  *a2 = v11;
  *a3 = v3;
  v29 = a2 + 1;
  v30 = a2[1];
  a2[1] = a3[1];
  a3[1] = v30;
  v31 = *a1;
  v32 = -1;
  if (*a2 >= *a1)
  {
    v32 = 1;
  }

  if (*a2 == *a1)
  {
    v33 = a1[1];
    v32 = -1;
    if (*v29 >= v33)
    {
      v32 = 1;
    }

    if (*v29 == v33)
    {
      v32 = 0;
    }
  }

  if (v32 < 0)
  {
    *a1 = *a2;
    v28 = a1 + 1;
    *a2 = v31;
LABEL_52:
    v34 = *v28;
    *v28 = *v29;
    *v29 = v34;
  }

  return 1;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(uint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(a1, a2, a3);
  v11 = *a3;
  v12 = -1;
  if (*a4 >= *a3)
  {
    v12 = 1;
  }

  if (*a4 == *a3)
  {
    v13 = a4[1];
    v14 = a3[1];
    v15 = v13 >= v14;
    v16 = v13 == v14;
    v12 = -1;
    if (v15)
    {
      v12 = 1;
    }

    if (v16)
    {
      v12 = 0;
    }
  }

  if (v12 < 0)
  {
    *a3 = *a4;
    *a4 = v11;
    v17 = a3[1];
    a3[1] = a4[1];
    a4[1] = v17;
    v18 = *a2;
    v19 = -1;
    if (*a3 >= *a2)
    {
      v19 = 1;
    }

    if (*a3 == *a2)
    {
      v20 = a3[1];
      v21 = a2[1];
      v15 = v20 >= v21;
      v22 = v20 == v21;
      v19 = -1;
      if (v15)
      {
        v19 = 1;
      }

      if (v22)
      {
        v19 = 0;
      }
    }

    if (v19 < 0)
    {
      *a2 = *a3;
      *a3 = v18;
      v23 = a2[1];
      a2[1] = a3[1];
      a3[1] = v23;
      v24 = *a1;
      v25 = -1;
      if (*a2 >= *a1)
      {
        v25 = 1;
      }

      if (*a2 == *a1)
      {
        v26 = a2[1];
        v27 = a1[1];
        v15 = v26 >= v27;
        v28 = v26 == v27;
        v25 = -1;
        if (v15)
        {
          v25 = 1;
        }

        if (v28)
        {
          v25 = 0;
        }
      }

      if (v25 < 0)
      {
        *a1 = *a2;
        *a2 = v24;
        v29 = a1[1];
        a1[1] = a2[1];
        a2[1] = v29;
      }
    }
  }

  v30 = *a4;
  v31 = -1;
  if (*a5 >= *a4)
  {
    v31 = 1;
  }

  if (*a5 == *a4)
  {
    v32 = a5[1];
    v33 = a4[1];
    v15 = v32 >= v33;
    v34 = v32 == v33;
    v31 = -1;
    if (v15)
    {
      v31 = 1;
    }

    if (v34)
    {
      v31 = 0;
    }
  }

  if (v31 < 0)
  {
    *a4 = *a5;
    *a5 = v30;
    v35 = a4[1];
    a4[1] = a5[1];
    a5[1] = v35;
    v36 = *a3;
    v37 = -1;
    if (*a4 >= *a3)
    {
      v37 = 1;
    }

    if (*a4 == *a3)
    {
      v38 = a4[1];
      v39 = a3[1];
      v15 = v38 >= v39;
      v40 = v38 == v39;
      v37 = -1;
      if (v15)
      {
        v37 = 1;
      }

      if (v40)
      {
        v37 = 0;
      }
    }

    if (v37 < 0)
    {
      *a3 = *a4;
      *a4 = v36;
      v41 = a3[1];
      a3[1] = a4[1];
      a4[1] = v41;
      v42 = *a2;
      v43 = -1;
      if (*a3 >= *a2)
      {
        v43 = 1;
      }

      if (*a3 == *a2)
      {
        v44 = a3[1];
        v45 = a2[1];
        v15 = v44 >= v45;
        v46 = v44 == v45;
        v43 = -1;
        if (v15)
        {
          v43 = 1;
        }

        if (v46)
        {
          v43 = 0;
        }
      }

      if (v43 < 0)
      {
        *a2 = *a3;
        *a3 = v42;
        v47 = a2[1];
        a2[1] = a3[1];
        a3[1] = v47;
        v48 = *a1;
        v49 = -1;
        if (*a2 >= *a1)
        {
          v49 = 1;
        }

        if (*a2 == *a1)
        {
          v50 = a2[1];
          v51 = a1[1];
          v15 = v50 >= v51;
          v52 = v50 == v51;
          v49 = -1;
          if (v15)
          {
            v49 = 1;
          }

          if (v52)
          {
            v49 = 0;
          }
        }

        if (v49 < 0)
        {
          *a1 = *a2;
          *a2 = v48;
          v53 = a1[1];
          a1[1] = a2[1];
          a2[1] = v53;
        }
      }
    }
  }

  return result;
}

unint64_t *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        v7 = *v4;
        if (v6 >= *v4)
        {
          v8 = 1;
        }

        else
        {
          v8 = -1;
        }

        if (v6 == *v4)
        {
          v9 = v4[3];
          v10 = v4[1];
          v11 = v9 == v10;
          v8 = v9 >= v10 ? 1 : -1;
          if (v11)
          {
            v8 = 0;
          }
        }

        if (v8 < 0)
        {
          v12 = v4[3];
          v13 = v3;
          while (1)
          {
            v14 = result + v13;
            v15 = *(result + v13 + 8);
            *(v14 + 2) = v7;
            *(v14 + 3) = v15;
            if (!v13)
            {
              break;
            }

            v7 = *(v14 - 2);
            if (v6 >= v7)
            {
              v16 = 1;
            }

            else
            {
              v16 = -1;
            }

            if (v6 == v7)
            {
              v17 = *(result + v13 - 8);
              v18 = v12 == v17;
              if (v12 >= v17)
              {
                v16 = 1;
              }

              else
              {
                v16 = -1;
              }

              if (v18)
              {
                v16 = 0;
              }
            }

            v13 -= 16;
            if ((v16 & 0x80) == 0)
            {
              v19 = (result + v13 + 16);
              goto LABEL_28;
            }
          }

          v19 = result;
LABEL_28:
          *v19 = v6;
          v19[1] = v12;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

unint64_t *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 3;
      do
      {
        v4 = v2;
        v5 = result[2];
        v6 = *result;
        if (v5 >= *result)
        {
          v7 = 1;
        }

        else
        {
          v7 = -1;
        }

        if (v5 == *result)
        {
          v8 = result[3];
          v9 = result[1];
          v10 = v8 == v9;
          v7 = v8 >= v9 ? 1 : -1;
          if (v10)
          {
            v7 = 0;
          }
        }

        if (v7 < 0)
        {
          v11 = result[3];
          v12 = v3;
          do
          {
            v13 = *(v12 - 2);
            *(v12 - 1) = v6;
            *v12 = v13;
            v6 = *(v12 - 5);
            if (v5 >= v6)
            {
              v14 = 1;
            }

            else
            {
              v14 = -1;
            }

            if (v5 == v6)
            {
              v15 = *(v12 - 4);
              v16 = v11 == v15;
              if (v11 >= v15)
              {
                v14 = 1;
              }

              else
              {
                v14 = -1;
              }

              if (v16)
              {
                v14 = 0;
              }
            }

            v12 -= 2;
          }

          while (v14 < 0);
          *(v12 - 1) = v5;
          *v12 = v11;
        }

        v2 = v4 + 2;
        v3 += 2;
        result = v4;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned long,unsigned long> *,std::__less<void,void> &>(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 2);
  v5 = *a1 == v4;
  if (*a1 >= v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    v7 = *(a2 - 1);
    v8 = v3 >= v7;
    v9 = v3 == v7;
    v6 = -1;
    if (v8)
    {
      v6 = 1;
    }

    if (v9)
    {
      v6 = 0;
    }
  }

  if (v6 < 0)
  {
    v15 = a1;
    v11 = a1;
    do
    {
      v16 = v11[2];
      v11 += 2;
      v17 = v2 == v16;
      if (v2 >= v16)
      {
        v18 = 1;
      }

      else
      {
        v18 = -1;
      }

      if (v17)
      {
        v19 = v15[3];
        v20 = v3 == v19;
        if (v3 >= v19)
        {
          v21 = 1;
        }

        else
        {
          v21 = -1;
        }

        if (v20)
        {
          v18 = 0;
        }

        else
        {
          v18 = v21;
        }
      }

      v15 = v11;
    }

    while ((v18 & 0x80) == 0);
  }

  else
  {
    v10 = a1 + 2;
    do
    {
      v11 = v10;
      if (v10 >= a2)
      {
        break;
      }

      if (v2 >= *v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }

      if (v2 == *v10)
      {
        v13 = v10[1];
        v14 = v3 == v13;
        v12 = v3 >= v13 ? 1 : -1;
        if (v14)
        {
          v12 = 0;
        }
      }

      v10 += 2;
    }

    while ((v12 & 0x80) == 0);
  }

  if (v11 >= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = a2;
    do
    {
      v23 = *(v22 - 2);
      v22 -= 2;
      v24 = v2 == v23;
      if (v2 >= v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = -1;
      }

      if (v24)
      {
        v26 = *(a2 - 1);
        v27 = v3 == v26;
        v25 = v3 >= v26 ? 1 : -1;
        if (v27)
        {
          v25 = 0;
        }
      }

      a2 = v22;
    }

    while (v25 < 0);
  }

  if (v11 < v22)
  {
    v28 = *v11;
    v29 = *v22;
    do
    {
      *v11 = v29;
      *v22 = v28;
      v30 = v11[1];
      v11[1] = v22[1];
      v22[1] = v30;
      v31 = v11;
      do
      {
        v32 = v11[2];
        v11 += 2;
        v28 = v32;
        v33 = v2 == v32;
        if (v2 >= v32)
        {
          v34 = 1;
        }

        else
        {
          v34 = -1;
        }

        if (v33)
        {
          v35 = v31[3];
          v36 = v3 == v35;
          v34 = v3 >= v35 ? 1 : -1;
          if (v36)
          {
            v34 = 0;
          }
        }

        v31 = v11;
      }

      while ((v34 & 0x80) == 0);
      v37 = v22;
      do
      {
        v38 = *(v22 - 2);
        v22 -= 2;
        v29 = v38;
        v39 = v2 == v38;
        if (v2 >= v38)
        {
          v40 = 1;
        }

        else
        {
          v40 = -1;
        }

        if (v39)
        {
          v41 = *(v37 - 1);
          v42 = v3 == v41;
          v40 = v3 >= v41 ? 1 : -1;
          if (v42)
          {
            v40 = 0;
          }
        }

        v37 = v22;
      }

      while (v40 < 0);
    }

    while (v11 < v22);
  }

  if (v11 - 2 != a1)
  {
    *a1 = *(v11 - 2);
    a1[1] = *(v11 - 1);
  }

  *(v11 - 2) = v2;
  *(v11 - 1) = v3;
  return v11;
}

unint64_t *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned long,unsigned long> *,std::__less<void,void> &>(unint64_t *a1, unint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  do
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }

    if (v5 == v3)
    {
      v7 = a1[v2 + 3];
      v8 = v7 == v4;
      v6 = v7 >= v4 ? 1 : -1;
      if (v8)
      {
        v6 = 0;
      }
    }

    v2 += 2;
  }

  while (v6 < 0);
  v9 = &a1[v2];
  if (v2 == 2)
  {
    while (v9 < a2)
    {
      v10 = a2 - 2;
      v16 = *(a2 - 2);
      v17 = v16 == v3;
      if (v16 >= v3)
      {
        v18 = 1;
      }

      else
      {
        v18 = -1;
      }

      if (v17)
      {
        v19 = *(a2 - 1);
        v20 = v19 == v4;
        v18 = v19 >= v4 ? 1 : -1;
        if (v20)
        {
          v18 = 0;
        }
      }

      a2 -= 2;
      if (v18 < 0)
      {
        goto LABEL_39;
      }
    }

    v10 = a2;
  }

  else
  {
    v10 = a2;
    do
    {
      v11 = *(v10 - 2);
      v10 -= 2;
      v12 = v11 == v3;
      if (v11 >= v3)
      {
        v13 = 1;
      }

      else
      {
        v13 = -1;
      }

      if (v12)
      {
        v14 = *(a2 - 1);
        v15 = v14 == v4;
        v13 = v14 >= v4 ? 1 : -1;
        if (v15)
        {
          v13 = 0;
        }
      }

      a2 = v10;
    }

    while ((v13 & 0x80) == 0);
  }

LABEL_39:
  if (v9 >= v10)
  {
    v22 = v9;
  }

  else
  {
    v21 = *v10;
    v22 = v9;
    v23 = v10;
    do
    {
      *v22 = v21;
      *v23 = v5;
      v24 = v22[1];
      v22[1] = v23[1];
      v23[1] = v24;
      v25 = v22;
      do
      {
        v26 = v22[2];
        v22 += 2;
        v5 = v26;
        v27 = v26 == v3;
        if (v26 >= v3)
        {
          v28 = 1;
        }

        else
        {
          v28 = -1;
        }

        if (v27)
        {
          v29 = v25[3];
          v30 = v29 == v4;
          v28 = v29 >= v4 ? 1 : -1;
          if (v30)
          {
            v28 = 0;
          }
        }

        v25 = v22;
      }

      while (v28 < 0);
      v31 = v23;
      do
      {
        v32 = *(v23 - 2);
        v23 -= 2;
        v21 = v32;
        v33 = v32 == v3;
        if (v32 >= v3)
        {
          v34 = 1;
        }

        else
        {
          v34 = -1;
        }

        if (v33)
        {
          v35 = *(v31 - 1);
          v36 = v35 == v4;
          v34 = v35 >= v4 ? 1 : -1;
          if (v36)
          {
            v34 = 0;
          }
        }

        v31 = v23;
      }

      while ((v34 & 0x80) == 0);
    }

    while (v22 < v23);
  }

  if (v22 - 2 != a1)
  {
    *a1 = *(v22 - 2);
    a1[1] = *(v22 - 1);
  }

  *(v22 - 2) = v3;
  *(v22 - 1) = v4;
  return v22 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(unint64_t *a1, char *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(a1, a1 + 2, a2 - 2);
        break;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(a1, a1 + 2, a1 + 4);
        v31 = *(a2 - 2);
        v32 = a1[4];
        v33 = -1;
        if (v31 >= v32)
        {
          v33 = 1;
        }

        if (v31 == v32)
        {
          v34 = *(a2 - 1);
          v35 = a1[5];
          v10 = v34 >= v35;
          v36 = v34 == v35;
          v33 = -1;
          if (v10)
          {
            v33 = 1;
          }

          if (v36)
          {
            v33 = 0;
          }
        }

        if (v33 < 0)
        {
          a1[4] = v31;
          *(a2 - 2) = v32;
          v37 = a1[5];
          a1[5] = *(a2 - 1);
          *(a2 - 1) = v37;
          v38 = a1[4];
          v39 = a1[2];
          v40 = -1;
          if (v38 >= v39)
          {
            v40 = 1;
          }

          if (v38 == v39)
          {
            v41 = a1[5];
            v42 = a1[3];
            v10 = v41 >= v42;
            v43 = v41 == v42;
            v40 = -1;
            if (v10)
            {
              v40 = 1;
            }

            if (v43)
            {
              v40 = 0;
            }
          }

          if (v40 < 0)
          {
            v44 = a1[3];
            v45 = a1[5];
            a1[2] = v38;
            a1[3] = v45;
            a1[4] = v39;
            a1[5] = v44;
            v46 = *a1;
            v47 = -1;
            if (v38 >= *a1)
            {
              v47 = 1;
            }

            if (v38 == *a1)
            {
              v48 = a1[1];
              v10 = v45 >= v48;
              v49 = v45 == v48;
              v47 = -1;
              if (v10)
              {
                v47 = 1;
              }

              if (v49)
              {
                v47 = 0;
              }
            }

            if (v47 < 0)
            {
              v50 = a1[1];
              *a1 = v38;
              a1[1] = v45;
              a1[2] = v46;
              a1[3] = v50;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        break;
      default:
        goto LABEL_19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    v7 = -1;
    if (v5 >= *a1)
    {
      v7 = 1;
    }

    if (v5 == *a1)
    {
      v8 = *(a2 - 1);
      v9 = a1[1];
      v10 = v8 >= v9;
      v11 = v8 == v9;
      v7 = -1;
      if (v10)
      {
        v7 = 1;
      }

      if (v11)
      {
        v7 = 0;
      }
    }

    if (v7 < 0)
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v12 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v12;
    }

    return 1;
  }

LABEL_19:
  v13 = (a1 + 4);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(a1, a1 + 2, a1 + 4);
  v14 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *v14;
    v18 = *v13;
    if (*v14 >= *v13)
    {
      v19 = 1;
    }

    else
    {
      v19 = -1;
    }

    if (*v14 == *v13)
    {
      v20 = *(v14 + 1);
      v21 = *(v13 + 1);
      v22 = v20 == v21;
      v19 = v20 >= v21 ? 1 : -1;
      if (v22)
      {
        v19 = 0;
      }
    }

    if (v19 < 0)
    {
      v23 = *(v14 + 1);
      v24 = v15;
      while (1)
      {
        v25 = (a1 + v24);
        v26 = *(a1 + v24 + 40);
        v25[6] = v18;
        v25[7] = v26;
        if (v24 == -32)
        {
          break;
        }

        v18 = v25[2];
        if (v17 >= v18)
        {
          v27 = 1;
        }

        else
        {
          v27 = -1;
        }

        if (v17 == v18)
        {
          v28 = *(a1 + v24 + 24);
          v29 = v23 == v28;
          v27 = v23 >= v28 ? 1 : -1;
          if (v29)
          {
            v27 = 0;
          }
        }

        v24 -= 16;
        if ((v27 & 0x80) == 0)
        {
          v30 = (a1 + v24 + 48);
          goto LABEL_45;
        }
      }

      v30 = a1;
LABEL_45:
      *v30 = v17;
      v30[1] = v23;
      if (++v16 == 8)
      {
        return v14 + 16 == a2;
      }
    }

    v13 = v14;
    v15 += 16;
    v14 += 16;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

unint64_t *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,std::pair<unsigned long,unsigned long> *>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        if (*v12 >= *a1)
        {
          v14 = 1;
        }

        else
        {
          v14 = -1;
        }

        if (*v12 == *a1)
        {
          v15 = v12[1];
          v16 = a1[1];
          v17 = v15 == v16;
          v14 = v15 >= v16 ? 1 : -1;
          if (v17)
          {
            v14 = 0;
          }
        }

        if (v14 < 0)
        {
          *v12 = *a1;
          *a1 = v13;
          v18 = v12[1];
          v12[1] = a1[1];
          a1[1] = v18;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v19 = a2 - 2;
      do
      {
        v21 = *a1;
        v20 = a1[1];
        v22 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(a1, a4, v8);
        if (v19 == v22)
        {
          *v22 = v21;
          v22[1] = v20;
        }

        else
        {
          *v22 = *v19;
          v22[1] = v19[1];
          *v19 = v21;
          v19[1] = v20;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(a1, (v22 + 2), a4, ((v22 + 2) - a1) >> 4);
        }

        v19 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        v11 = *v8 == v10;
        if (*v8 >= v10)
        {
          v12 = 1;
        }

        else
        {
          v12 = -1;
        }

        if (v11)
        {
          v13 = v8[1];
          v14 = v8[3];
          v15 = v13 >= v14;
          v16 = v13 == v14;
          v12 = -1;
          if (v15)
          {
            v12 = 1;
          }

          if (v16)
          {
            v12 = 0;
          }
        }

        if (v12 < 0)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v17 = *v8;
      v18 = *a4;
      v19 = -1;
      if (*v8 >= *a4)
      {
        v19 = 1;
      }

      if (*v8 == *a4)
      {
        v20 = v8[1];
        v21 = a4[1];
        v15 = v20 >= v21;
        v22 = v20 == v21;
        v19 = -1;
        if (v15)
        {
          v19 = 1;
        }

        if (v22)
        {
          v19 = 0;
        }
      }

      if ((v19 & 0x80) == 0)
      {
        v23 = a4[1];
        do
        {
          v24 = a4;
          a4 = v8;
          *v24 = v17;
          v24[1] = v8[1];
          if (v5 < v7)
          {
            break;
          }

          v25 = (2 * v7) | 1;
          v8 = (result + 16 * v25);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v7 = v25;
          }

          else
          {
            v26 = v8[2];
            v27 = *v8 == v26;
            if (*v8 >= v26)
            {
              v28 = 1;
            }

            else
            {
              v28 = -1;
            }

            if (v27)
            {
              v29 = v8[1];
              v30 = v8[3];
              v31 = v29 == v30;
              v28 = v29 >= v30 ? 1 : -1;
              if (v31)
              {
                v28 = 0;
              }
            }

            if (v28 < 0)
            {
              v8 += 2;
            }

            else
            {
              v7 = v25;
            }
          }

          v17 = *v8;
          if (*v8 >= v18)
          {
            v32 = 1;
          }

          else
          {
            v32 = -1;
          }

          if (*v8 == v18)
          {
            v33 = v8[1];
            v34 = v33 == v23;
            if (v33 >= v23)
            {
              v32 = 1;
            }

            else
            {
              v32 = -1;
            }

            if (v34)
            {
              v32 = 0;
            }
          }
        }

        while ((v32 & 0x80) == 0);
        *a4 = v18;
        a4[1] = v23;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[2 * v3];
    v5 = v4 + 2;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v7 = v4 + 4;
      v8 = v4[4];
      v9 = v4[2];
      v10 = v9 == v8;
      if (v9 >= v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = -1;
      }

      if (v10)
      {
        v12 = v4[3];
        v13 = v4[5];
        v14 = v12 == v13;
        if (v12 >= v13)
        {
          v15 = 1;
        }

        else
        {
          v15 = -1;
        }

        if (v14)
        {
          v11 = 0;
        }

        else
        {
          v11 = v15;
        }
      }

      if (v11 < 0)
      {
        v5 = v7;
      }

      else
      {
        v3 = v6;
      }
    }

    *a1 = *v5;
    a1[1] = v5[1];
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 16 * v4);
    v6 = (a2 - 16);
    v7 = *(a2 - 16);
    v8 = *v5;
    v9 = -1;
    if (*v5 >= v7)
    {
      v9 = 1;
    }

    if (*v5 == v7)
    {
      v10 = v5[1];
      v11 = *(a2 - 8);
      v12 = v10 >= v11;
      v13 = v10 == v11;
      v9 = -1;
      if (v12)
      {
        v9 = 1;
      }

      if (v13)
      {
        v9 = 0;
      }
    }

    if (v9 < 0)
    {
      v14 = *(a2 - 8);
      do
      {
        v15 = v6;
        v6 = v5;
        *v15 = v8;
        v15[1] = v5[1];
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 16 * v4);
        v8 = *v5;
        if (*v5 >= v7)
        {
          v16 = 1;
        }

        else
        {
          v16 = -1;
        }

        if (*v5 == v7)
        {
          v17 = v5[1];
          v18 = v17 == v14;
          if (v17 >= v14)
          {
            v16 = 1;
          }

          else
          {
            v16 = -1;
          }

          if (v18)
          {
            v16 = 0;
          }
        }
      }

      while (v16 < 0);
      *v6 = v7;
      v6[1] = v14;
    }
  }

  return result;
}

__int128 *RB::vector<double,32ul,unsigned long>::swap_inline(__int128 *result, __int128 *a2)
{
  v2 = *(a2 + 32);
  v3 = *(result + 32);
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
    v29 = a2[12];
    v30 = a2[13];
    v31 = a2[14];
    v32 = a2[15];
    v25 = a2[8];
    v26 = a2[9];
    v27 = a2[10];
    v28 = a2[11];
    v21 = a2[4];
    v22 = a2[5];
    v23 = a2[6];
    v24 = a2[7];
    v17 = *a2;
    v18 = a2[1];
    v19 = a2[2];
    v20 = a2[3];
    v5 = *result;
    v6 = result[1];
    v7 = result[3];
    a2[2] = result[2];
    a2[3] = v7;
    *a2 = v5;
    a2[1] = v6;
    v8 = result[4];
    v9 = result[5];
    v10 = result[7];
    a2[6] = result[6];
    a2[7] = v10;
    a2[4] = v8;
    a2[5] = v9;
    v11 = result[8];
    v12 = result[9];
    v13 = result[11];
    a2[10] = result[10];
    a2[11] = v13;
    a2[8] = v11;
    a2[9] = v12;
    v14 = result[12];
    v15 = result[13];
    v16 = result[15];
    a2[14] = result[14];
    a2[15] = v16;
    a2[12] = v14;
    a2[13] = v15;
    result[12] = v29;
    result[13] = v30;
    result[14] = v31;
    result[15] = v32;
    result[8] = v25;
    result[9] = v26;
    result[10] = v27;
    result[11] = v28;
    result[4] = v21;
    result[5] = v22;
    result[6] = v23;
    result[7] = v24;
    *result = v17;
    result[1] = v18;
    result[2] = v19;
    result[3] = v20;
    if (v3)
    {
      if (v2)
      {
        return result;
      }
    }

    else
    {
      *(result + 32) = 0;
      if (v2)
      {
        return result;
      }
    }

    *(a2 + 32) = 0;
  }

  return result;
}

BOOL RB::pixel_formats_support_view_copy(RB *this, RB *a2, MTLPixelFormat a3)
{
  if (this == a2)
  {
    return 1;
  }

  v6 = RB::pixel_format_traits(this, a2);
  result = 1;
  if ((~*(v6 + 4) & 0x30) != 0 || v6[6] != a2)
  {
    v8 = RB::pixel_format_traits(a2, v7);
    if ((~*(v8 + 4) & 0x30) != 0 || v8[6] != this)
    {
      return 0;
    }
  }

  return result;
}

uint64_t RB::iosurface_pixel_formats(RB *this)
{
  {
    RB::iosurface_pixel_formats(void)::formats = RB::iosurface_pixel_formats(void)::$_0::operator()();
  }

  return RB::iosurface_pixel_formats(void)::formats;
}

CFArrayRef RB::iosurface_pixel_formats(void)::$_0::operator()()
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v1 = +[RBDevice appleGPUFamily];
  if (v1 >= 3)
  {
    for (i = 0; i != 83; ++i)
    {
      valuePtr = RB::iosurface_pixel_formats(void)::$_0::operator() const(void)::yuv_types[i];
      v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFArrayAppendValue(Mutable, v3);
      if (v3)
      {
        CFRelease(v3);
      }
    }

    if (v1 >= 6)
    {
      for (j = 0; j != 42; ++j)
      {
        valuePtr = RB::iosurface_pixel_formats(void)::$_0::operator() const(void)::yuv12_types[j];
        v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFArrayAppendValue(Mutable, v5);
        if (v5)
        {
          CFRelease(v5);
        }
      }
    }

    for (k = 0; k != 6; ++k)
    {
      valuePtr = RB::iosurface_pixel_formats(void)::$_0::operator() const(void)::xr10_types[k];
      v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFArrayAppendValue(Mutable, v7);
      if (v7)
      {
        CFRelease(v7);
      }
    }
  }

  for (m = 0; m != 20; ++m)
  {
    valuePtr = RB::iosurface_pixel_formats(void)::$_0::operator() const(void)::other_types[m];
    v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFArrayAppendValue(Mutable, v9);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  if (v1 >= 3)
  {
    for (n = 0; n != 24; n += 4)
    {
      valuePtr = *&RB::iosurface_pixel_formats(void)::$_0::operator() const(void)::other_compressed_types[n];
      v11 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFArrayAppendValue(Mutable, v11);
      if (v11)
      {
        CFRelease(v11);
      }
    }
  }

  Copy = CFArrayCreateCopy(0, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}