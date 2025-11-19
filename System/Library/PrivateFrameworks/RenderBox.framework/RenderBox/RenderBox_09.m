void RB::FontMixer::mix(os_unfair_lock_s *this@<X0>, CGFont *cf@<X1>, CGFont *a3@<X2>, uint32_t a4@<S0>, void *a5@<X8>)
{
  v55 = *MEMORY[0x1E69E9840];
  if (cf != a3 && *&a4 != 0.0)
  {
    if (!cf || !a3)
    {
      *a5 = 0;
      return;
    }

    os_unfair_lock_lock(this);
    info = RB::FontMixer::get_info(this, cf, a3);
    v11 = info;
    if ((info[12] & 1) == 0)
    {
      goto LABEL_63;
    }

    if (*&a4 == 1.0 && (info[13] & 1) == 0)
    {
      CFRetain(a3);
      *a5 = a3;
LABEL_64:
      os_unfair_lock_unlock(this);
      return;
    }

    v12 = 0;
    v13 = 0;
    v14 = this + 265;
    v15 = 0x80000000;
    while (v14[-3]._os_unfair_lock_opaque != *info || v14[-2]._os_unfair_lock_opaque != *(info + 1) || *&v14[-1]._os_unfair_lock_opaque != *&a4)
    {
      os_unfair_lock_opaque = this[2]._os_unfair_lock_opaque;
      v17 = *&v14->_os_unfair_lock_opaque;
      v14 += 6;
      v18 = os_unfair_lock_opaque - LODWORD(v17);
      if ((os_unfair_lock_opaque - LODWORD(v17)) > v15)
      {
        v12 = v13;
      }

      if (v18 > v15)
      {
        v15 = v18;
      }

      if (++v13 == 4)
      {
        v19 = &this[6 * v12 + 260];
        if (*&v19->_os_unfair_lock_opaque)
        {
          CFRelease(*&v19->_os_unfair_lock_opaque);
          os_unfair_lock_opaque = this[2]._os_unfair_lock_opaque;
        }

        *&v19->_os_unfair_lock_opaque = 0;
        *&v19[2]._os_unfair_lock_opaque = *v11;
        v19[4]._os_unfair_lock_opaque = a4;
        this[2]._os_unfair_lock_opaque = os_unfair_lock_opaque + 1;
        v19[5]._os_unfair_lock_opaque = os_unfair_lock_opaque + 1;
        if (*(v11 + 2))
        {
          v53 = 0;
          v54 = 0;
          Variations = CGFontGetVariations();
          v21 = CGFontGetVariations();
          v23 = *(v11 + 2);
          if (v23 >> 60)
          {
            goto LABEL_55;
          }

          v24 = v21;
          v25 = 16 * v23;
          if (16 * v23 <= 0x1000)
          {
            MEMORY[0x1EEE9AC00](v21, v22);
            v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
            bzero(v26, v25);
          }

          else
          {
            v26 = malloc_type_malloc(16 * v23, 0x1000040F7F8B94BuLL);
            if (!v26)
            {
              goto LABEL_54;
            }
          }

          v34 = *(v11 + 2);
          if (v34)
          {
            v35 = 0;
            v36 = *(v11 + 3);
            v38 = v53;
            v37 = v54;
            while (1)
            {
              v39 = v36 + 40 * v35;
              v40 = *(v39 + 8);
              v41 = *(v39 + 32);
              v42 = v41;
              if (v37)
              {
                break;
              }

LABEL_42:
              if (v38)
              {
                goto LABEL_45;
              }

LABEL_50:
              v47 = &v26[16 * v35];
              *v47 = v40;
              *(v47 + 1) = v42 + (v41 - v42) * *&a4;
              if (++v35 == v34)
              {
                goto LABEL_51;
              }
            }

            v43 = v37;
            v44 = (Variations + 8);
            while (*(v44 - 2) != v40)
            {
              v44 += 2;
              if (!--v43)
              {
                v42 = v41;
                goto LABEL_42;
              }
            }

            v42 = *v44;
            if (!v38)
            {
              goto LABEL_50;
            }

LABEL_45:
            v45 = v38;
            v46 = (v24 + 8);
            while (*(v46 - 2) != v40)
            {
              v46 += 2;
              if (!--v45)
              {
                goto LABEL_50;
              }
            }

            v41 = *v46;
            goto LABEL_50;
          }

LABEL_51:
          v48 = CGFontCreateWithVariations();
          if (*&v19->_os_unfair_lock_opaque)
          {
            CFRelease(*&v19->_os_unfair_lock_opaque);
          }

          *&v19->_os_unfair_lock_opaque = v48;
          if (v25 > 0x1000)
          {
LABEL_54:
            free(v26);
LABEL_55:
            v48 = *&v19->_os_unfair_lock_opaque;
          }

          if (v48)
          {
            goto LABEL_69;
          }
        }

        RB::cf_ptr<void const*>::operator=(v19, cf);
        v48 = *&v19->_os_unfair_lock_opaque;
        if (*&v19->_os_unfair_lock_opaque)
        {
LABEL_69:
          v49 = CFRetain(v48);
          v30 = v49;
          if (v49)
          {
            CFRetain(v49);
            v50 = CFRetain(v30);
            v51 = v50;
            if (v50)
            {
              v33 = CFRetain(v50);
              v54 = v33;
              CFRelease(v51);
              if (v33)
              {
                *a5 = CFRetain(v33);
                CFRelease(v33);
LABEL_62:
                CFRelease(v33);
LABEL_66:
                CFRelease(v30);
                goto LABEL_64;
              }
            }

LABEL_65:
            *a5 = 0;
            goto LABEL_66;
          }
        }

        goto LABEL_63;
      }
    }

    v27 = this[2]._os_unfair_lock_opaque + 1;
    this[2]._os_unfair_lock_opaque = v27;
    v14->_os_unfair_lock_opaque = v27;
    v28 = *&v14[-5]._os_unfair_lock_opaque;
    if (v28)
    {
      v29 = CFRetain(v28);
      v30 = v29;
      if (v29)
      {
        CFRetain(v29);
        v31 = CFRetain(v30);
        v32 = v31;
        if (v31)
        {
          v33 = CFRetain(v31);
          v54 = v33;
          CFRelease(v32);
          if (v33)
          {
            *a5 = CFRetain(v33);
            CFRelease(v33);
            goto LABEL_62;
          }
        }

        goto LABEL_65;
      }
    }

LABEL_63:
    *a5 = 0;
    goto LABEL_64;
  }

  if (cf)
  {
    CFRetain(cf);
  }

  *a5 = cf;
}

void RB::ObjectTable::adopt(RB::ObjectTable *this, CFTypeRef cf)
{
  if (cf)
  {
    v4 = *(this + 2);
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
      if (*(this + 3) < (v4 + 1))
      {
        RB::vector<RB::objc_ptr<void({block_pointer})(RBFill *,CGRect)>,0ul,unsigned int>::reserve_slow(this, v10);
        LODWORD(v4) = *(this + 2);
        v10 = v4 + 1;
      }

      *(*this + 8 * v4) = cf;
      *(this + 2) = v10;
    }

    else
    {
      v7 = v4 - v6;
      v8 = (*this + 8 * v6);
      while (1)
      {
        v9 = *v8++;
        if (v9 == cf)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_8;
        }
      }

      CFRelease(cf);
    }
  }
}

void RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Color>::copy_atoms(uint64_t a1, uint64_t a2)
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
    v11 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage6GlyphsENS_4Fill5ColorEEEJRS0_RKS5_RKS7_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v10 + 16), (v10 + 16), v13, &v9[7], &v9[3], &v9[2].n128_i16[6], &v12);
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

    RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Color>::copy(v2, v3);
  }
}

void sub_195D5ECBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  RB::Heap::~Heap(va);
  _Unwind_Resume(a1);
}

float32x2_t *RB::Coverage::Glyphs::mix(float32x2_t *this, const RB::DisplayList::Interpolator::State *a2, const RB::Coverage::Glyphs *a3, float64x2_t *a4, float64x2_t *a5, float64x2_t *a6, RB::Heap *a7)
{
  v14 = RB::FontMixer::shared(this);
  RB::FontMixer::mix(v14, *this, *a3, *(a2 + 4), cf);
  v15 = cf[0];
  if (cf[0])
  {
    *this = cf[0];
    cf[0] = 0;
    v16 = *(a7 + 4);
    if (!v16)
    {
      RB::Heap::make_object_table(a7);
      v16 = *(a7 + 4);
    }

    RB::ObjectTable::adopt(v16, v15);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  if ((**(a2 + 1) & 0xBLL) == 2)
  {
    v17 = ((*(a3 + 5) | this[2].i32[1]) >> 3) & 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = a4[1];
  *cf = *a4;
  v79 = v18;
  v80 = a4[2];
  v19 = a5[1];
  v75 = *a5;
  v76 = v19;
  v77 = a5[2];
  v20 = *(a2 + 4);
  if (v20)
  {
    *&v21 = RB::operator*(cf, v20);
    *cf = v21;
    v79 = v22;
    v80 = v23;
    v24.f64[0] = RB::operator*(&v75, *(a2 + 4));
    v75 = v24;
    v76 = v25;
    v77 = v26;
    v27 = *(a2 + 4);
    v28 = a6[1];
    v72 = *a6;
    v73 = v28;
    v74 = a6[2];
    if (v27)
    {
      v29.f64[0] = RB::operator*(&v72, v27);
      v72 = v29;
      v73 = v30;
      v74 = v31;
    }
  }

  else
  {
    v32 = a6[1];
    v72 = *a6;
    v73 = v32;
    v74 = a6[2];
  }

  result = RB::AffineTransform::invert(&v72);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (v17)
  {
    v36 = v70;
    v35 = v71;
    v38 = v70;
    v37 = v71;
  }

  if (this[2].i32[0])
  {
    v42 = 0;
    v43 = this[1];
    v44 = *(a3 + 1) + 8 * *(*(a2 + 1) + 20);
    v45 = vceqz_f32(v36);
    v46 = vceqz_f32(v38);
    v47 = vpmax_u32(v45, v45).u32[0];
    v48 = vpmax_u32(v46, v46).u32[0];
    v49 = vdup_n_s32(0x3A83126Fu);
    do
    {
      v50 = *(*&v43 + 8 * v42);
      v51 = *(v44 + 8 * v42);
      v52 = vmvn_s8(vceq_f32(v50, v51));
      if ((vpmax_u32(v52, v52).u32[0] & 0x80000000) != 0)
      {
        v53 = vcvt_f32_f64(vmlaq_n_f64(vmulq_n_f64(*cf, v50.f32[0]), v79, v50.f32[1]));
        v54 = vmla_n_f32(v53, vsub_f32(vcvt_f32_f64(vmlaq_n_f64(vmulq_n_f64(v75, v51.f32[0]), v76, v51.f32[1])), v53), COERCE_FLOAT(*(a2 + 2)));
        v50 = vcvt_f32_f64(vmlaq_n_f64(vmulq_n_f64(v72, v54.f32[0]), v73, v54.f32[1]));
        *(*&v43 + 8 * v42) = v50;
        if (v17)
        {
LABEL_21:
          v55 = 0;
          v56 = 0;
          if ((v47 & 0x80000000) == 0)
          {
            v57 = vcvtq_f64_f32(*(*&this[1] + 8 * v42));
            *v57.f32 = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(v80, *cf, *v57.i64), v79, v57, 1));
            v58 = vaddq_f64(v79, *cf);
            *&v58.f64[0] = vcltz_f32(vcvt_f32_f64(v58));
            v59 = vcltzq_s32(v58);
            v60 = vbslq_s8(v59, vnegq_f32(v57), v57);
            v61 = vadd_f32(*v60.f32, v49);
            v62 = vrndm_f32(v61);
            *v60.f32 = vmla_f32(vsub_f32(v62, *v60.f32), vrnd_f32(vmul_f32(vsub_f32(v61, v62), v36)), v35);
            v56 = vbslq_s8(v59, vnegq_f32(v60), v60).u64[0];
          }

          if ((v48 & 0x80000000) == 0)
          {
            v63 = vcvtq_f64_f32(*(v44 + 8 * v42));
            *v63.f32 = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(v77, v75, *v63.i64), v76, v63, 1));
            v64 = vaddq_f64(v76, v75);
            *&v64.f64[0] = vcltz_f32(vcvt_f32_f64(v64));
            v65 = vcltzq_s32(v64);
            v66 = vbslq_s8(v65, vnegq_f32(v63), v63);
            v67 = vadd_f32(*v66.f32, v49);
            v68 = vrndm_f32(v67);
            *v66.f32 = vmla_f32(vsub_f32(v68, *v66.f32), vrnd_f32(vmul_f32(vsub_f32(v67, v68), v38)), v37);
            v55 = vbslq_s8(v65, vnegq_f32(v66), v66).u64[0];
          }

          v69 = vmla_n_f32(v56, vsub_f32(v55, v56), COERCE_FLOAT(*(a2 + 2)));
          *(*&v43 + 8 * v42) = vadd_f32(v50, vcvt_f32_f64(vmlaq_n_f64(vmulq_n_f64(v72, v69.f32[0]), v73, v69.f32[1])));
        }
      }

      else if (v17)
      {
        goto LABEL_21;
      }

      ++v42;
    }

    while (v42 < this[2].u32[0]);
  }

  this[3] = vmla_n_f32(this[3], vsub_f32(*(a3 + 24), this[3]), COERCE_FLOAT(*(a2 + 2)));
  this[6].f32[0] = this[6].f32[0] + ((*(a3 + 12) - this[6].f32[0]) * *(a2 + 4));
  this[4] = 0x100000001000000;
  this[5] = vneg_f32(0x80000000800000);
  if (v17)
  {
    this[2].i32[1] &= ~8u;
  }

  return result;
}

void sub_195D5F0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

float32x2_t *RB::Coverage::anonymous namespace::QuantizationLevel::QuantizationLevel(float32x2_t *this, float64x2_t *a2, char a3, double a4, double a5, int64x2_t a6)
{
  *this = 0;
  this[1] = 0;
  if ((a3 & 8) != 0)
  {
    *a6.i64 = -a2->f64[1];
    v7 = fabs(vaddvq_f64(vmulq_f64(vzip1q_s64(a6, *a2), a2[1])));
    if (v7 <= RB::max_cached_glyph_mask_area(this))
    {
      QuantizationLevelWithStyle = CGFontGetQuantizationLevelWithStyle();
      v9.f32[0] = QuantizationLevelWithStyle;
      v9.f32[1] = SHIDWORD(QuantizationLevelWithStyle);
      v10 = vrecpe_f32(v9);
      v11 = vmul_f32(vrecps_f32(v9, v10), v10);
      *this = v9;
      this[1] = vmul_f32(v11, vrecps_f32(v9, v11));
    }
  }

  return this;
}

const RB::DisplayList::ClipNode *RB::DisplayList::AtomizedItems::mix_clip_style(RB::DisplayList::AtomizedItems *this, const RB::DisplayList::Interpolator::State *a2, const RB::DisplayList::AtomizedItems *a3, RB::DisplayList::CachedTransform *a4)
{
  v7 = *this;
  v8 = *(*this + 24);
  v9 = *a3;
  if (*(this + 3) != v8)
  {
    v10 = *(v9 + 24);
LABEL_3:
    v11 = *(v7 + 16);
    v12 = *(v9 + 16);
    *(this + 6) = v11;
    *(this + 7) = v12;
    *(this + 3) = v8;
    *(this + 4) = v10;
    *(this + 56) = 256;
LABEL_9:
    v13 = RB::DisplayList::CachedTransform::mix_style(a4, a2, v11, v12, 1);
    *(this + 8) = v13;
    result = RB::DisplayList::CachedTransform::mix_clip(a4, a2, *(this + 3), *(this + 4), v13 == 0);
    *(this + 5) = result;
    return result;
  }

  v10 = *(v9 + 24);
  if (*(this + 4) == v10)
  {
    goto LABEL_3;
  }

  v11 = *(v7 + 16);
  if (*(this + 6) != v11)
  {
    v12 = *(v9 + 16);
LABEL_8:
    *(this + 6) = v11;
    *(this + 7) = v12;
    goto LABEL_9;
  }

  v12 = *(v9 + 16);
  if (*(this + 7) != v12)
  {
    goto LABEL_8;
  }

  return *(this + 5);
}

uint64_t RB::DisplayList::CachedTransform::mix_style(RB::DisplayList::CachedTransform *this, const RB::DisplayList::Interpolator::State *a2, const RB::DisplayList::Style *a3, uint64_t j, uint64_t a5)
{
  i = a3;
  v155 = *MEMORY[0x1E69E9840];
  v152 = 0;
  v153 = 0;
  v154 = 16;
  v148 = this;
  v149 = a5;
  v150 = __dst;
  if (a3)
  {
    do
    {
      if ((*(i + 52) & 1) == 0)
      {
        break;
      }

      v10 = (*(*i + 24))(i, *this);
      v11 = v10;
      if (j)
      {
        v12 = 0;
        if (v10)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v12 = *(i + 32) == 0;
        if (v10)
        {
LABEL_7:
          *(v10 + 16) = RB::DisplayList::CachedTransform::transform_ctm(this, *(i + 16));
          *(v11 + 24) = RB::DisplayList::CachedTransform::transform_clip(this, *(i + 24), v12 & a5);
          *(v11 + 40) = RB::DisplayList::CachedTransform::transform_metadata(this, *(i + 40), *(i + 48));
          *(v11 + 48) = v13;
          *(v11 + 52) = *(i + 52) & 1;
          (*(*v11 + 32))(v11, this, a5);
          v14 = v153;
          v15 = v153 + 1;
          if (v154 < v153 + 1)
          {
            _ZN2RB6vectorIDv4_DF16_Lm16EmE12reserve_slowEm(__dst, v15);
            v14 = v153;
            v15 = v153 + 1;
          }

          v16 = v152;
          if (!v152)
          {
            v16 = __dst;
          }

          *&v16[8 * v14] = v11;
          v153 = v15;
        }
      }

      i = *(i + 32);
    }

    while (i);
  }

  if (!j)
  {
LABEL_123:
    v97 = i != 0;
    v98 = j != 0;
    if (i | j)
    {
      goto LABEL_136;
    }

    goto LABEL_124;
  }

  while ((*(j + 52) & 1) != 0)
  {
    v17 = (*(*j + 24))(j, *this);
    v18 = v17;
    if (i)
    {
      v19 = 0;
      if (v17)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v19 = *(j + 32) == 0;
      if (v17)
      {
LABEL_19:
        *(v17 + 16) = RB::DisplayList::CachedTransform::transform_ctm(this, *(j + 16));
        *(v18 + 24) = RB::DisplayList::CachedTransform::transform_clip(this, *(j + 24), v19 & a5);
        *(v18 + 40) = RB::DisplayList::CachedTransform::transform_metadata(this, *(j + 40), *(j + 48));
        *(v18 + 48) = v20;
        *(v18 + 52) = *(j + 52) & 1;
        (*(*v18 + 32))(v18, this, a5);
        v21 = v153;
        v22 = v153 + 1;
        if (v154 < v153 + 1)
        {
          _ZN2RB6vectorIDv4_DF16_Lm16EmE12reserve_slowEm(__dst, v22);
          v21 = v153;
          v22 = v153 + 1;
        }

        v23 = v152;
        if (!v152)
        {
          v23 = __dst;
        }

        *&v23[8 * v21] = v18;
        v153 = v22;
      }
    }

    j = *(j + 32);
    if (!j)
    {
      goto LABEL_123;
    }
  }

  if (i)
  {
    while (1)
    {
      if (i == j || (v24 = i, RB::same_identity<RB::DisplayList::Style>(i, j)) && (v24 = i, RB::same_type<RB::DisplayList::Style>(i, j)))
      {
        v26 = (*(*i + 88))(i, a2, j, this);
        if (v26)
        {
          RB::mix(*(i + 16), *(j + 16), v25, *(a2 + 4));
          v145 = v27;
          v146 = v28;
          v147 = v29;
          *(v26 + 16) = RB::DisplayList::CachedTransform::transform_ctm(this, &v145);
          v30 = a5 && !*(i + 32) && *(j + 32) == 0;
          *(v26 + 24) = RB::DisplayList::CachedTransform::mix_clip(this, a2, *(i + 24), *(j + 24), v30);
          *(v26 + 40) = RB::DisplayList::CachedTransform::transform_metadata(this, *(j + 40), *(j + 48));
          *(v26 + 48) = v31;
          *(v26 + 52) = (*(j + 52) | *(i + 52)) & 1;
          v32 = v153;
          v33 = v153 + 1;
          if (v154 < v153 + 1)
          {
            _ZN2RB6vectorIDv4_DF16_Lm16EmE12reserve_slowEm(__dst, v33);
            v32 = v153;
            v33 = v153 + 1;
          }

          v34 = v152;
          if (!v152)
          {
            v34 = __dst;
          }

          *&v34[8 * v32] = v26;
          v153 = v33;
        }

        while (1)
        {
          i = *(i + 32);
          if (!i || (*(i + 52) & 1) == 0)
          {
            break;
          }

          v35 = (*(*i + 24))(i, *this);
          RB::DisplayList::CachedTransform::mix_style(RB::DisplayList::Interpolator::State const&,RB::DisplayList::Style const*,RB::DisplayList::Style const*,BOOL)const::$_0::operator()(&v148, v35, i, 0);
        }

        j = *(j + 32);
        if (j)
        {
          v66 = v148;
          v67 = v149;
          v68 = v150;
          while (1)
          {
            if ((*(j + 52) & 1) == 0)
            {
              goto LABEL_119;
            }

            v69 = (*(*j + 24))(j, *this);
            v70 = v69;
            if (i)
            {
              v71 = 0;
              if (v69)
              {
                goto LABEL_83;
              }
            }

            else
            {
              v71 = *(j + 32) == 0;
              if (v69)
              {
LABEL_83:
                *(v69 + 16) = RB::DisplayList::CachedTransform::transform_ctm(v66, *(j + 16));
                *(v70 + 24) = RB::DisplayList::CachedTransform::transform_clip(v66, *(j + 24), v71 & v67);
                *(v70 + 40) = RB::DisplayList::CachedTransform::transform_metadata(v66, *(j + 40), *(j + 48));
                *(v70 + 48) = v72;
                *(v70 + 52) = *(j + 52) & 1;
                (*(*v70 + 32))(v70, v66, v67 & 1);
                v73 = v68[17];
                v74 = v73 + 1;
                if (v68[18] < (v73 + 1))
                {
                  _ZN2RB6vectorIDv4_DF16_Lm16EmE12reserve_slowEm(v68, v74);
                  v73 = v68[17];
                  v74 = v73 + 1;
                }

                v75 = v68[16];
                if (!v75)
                {
                  v75 = v68;
                }

                v75[v73] = v70;
                v68[17] = v74;
              }
            }

            j = *(j + 32);
            if (!j)
            {
              goto LABEL_123;
            }
          }
        }

        goto LABEL_123;
      }

      do
      {
        if ((*(v24 + 52) & 1) == 0 && RB::same_identity<RB::DisplayList::Style>(v24, j) && RB::same_type<RB::DisplayList::Style>(v24, j))
        {
          while (i != v24)
          {
            v57 = (*(*i + 88))(i, a2, 0, this);
            if (v57)
            {
              v58 = v148;
              *(v57 + 16) = RB::DisplayList::CachedTransform::transform_ctm(v148, *(i + 16));
              v59 = v149;
              *(v57 + 24) = RB::DisplayList::CachedTransform::transform_clip(v58, *(i + 24), 0);
              *(v57 + 40) = RB::DisplayList::CachedTransform::transform_metadata(v58, *(i + 40), *(i + 48));
              *(v57 + 48) = v60;
              *(v57 + 52) = *(i + 52) & 1;
              (*(*v57 + 32))(v57, v58, v59);
              v61 = v150;
              v62 = *(v150 + 17);
              v63 = v62 + 1;
              if (*(v150 + 18) < (v62 + 1))
              {
                _ZN2RB6vectorIDv4_DF16_Lm16EmE12reserve_slowEm(v150, v63);
                v62 = v61[17];
                v63 = v62 + 1;
              }

              v64 = v61[16];
              if (!v64)
              {
                v64 = v61;
              }

              v64[v62] = v57;
              v61[17] = v63;
            }

            while (1)
            {
              i = *(i + 32);
              if (!i || (*(i + 52) & 1) == 0)
              {
                break;
              }

              v65 = (*(*i + 24))(i, *this);
              RB::DisplayList::CachedTransform::mix_style(RB::DisplayList::Interpolator::State const&,RB::DisplayList::Style const*,RB::DisplayList::Style const*,BOOL)const::$_0::operator()(&v148, v65, i, 0);
            }
          }

          goto LABEL_119;
        }

        v24 = *(v24 + 32);
      }

      while (v24);
      v36 = j;
      while (2)
      {
        if ((*(v36 + 52) & 1) == 0 && RB::same_identity<RB::DisplayList::Style>(v36, i) && RB::same_type<RB::DisplayList::Style>(v36, i))
        {
          v87 = *(a2 + 1);
          v145 = *a2;
          v146 = v87;
          *&v147 = *(a2 + 4);
          *&v146 = 1.0 - *&v87;
          BYTE12(v146) = BYTE12(v87) ^ 1;
          while (j != v36)
          {
            v88 = (*(*j + 88))(j, &v145, 0, this);
            if (v88)
            {
              v89 = v148;
              *(v88 + 16) = RB::DisplayList::CachedTransform::transform_ctm(v148, *(j + 16));
              v90 = v149;
              *(v88 + 24) = RB::DisplayList::CachedTransform::transform_clip(v89, *(j + 24), 0);
              *(v88 + 40) = RB::DisplayList::CachedTransform::transform_metadata(v89, *(j + 40), *(j + 48));
              *(v88 + 48) = v91;
              *(v88 + 52) = *(j + 52) & 1;
              (*(*v88 + 32))(v88, v89, v90);
              v92 = v150;
              v93 = *(v150 + 17);
              v94 = v93 + 1;
              if (*(v150 + 18) < (v93 + 1))
              {
                _ZN2RB6vectorIDv4_DF16_Lm16EmE12reserve_slowEm(v150, v94);
                v93 = v92[17];
                v94 = v93 + 1;
              }

              v95 = v92[16];
              if (!v95)
              {
                v95 = v92;
              }

              v95[v93] = v88;
              v92[17] = v94;
            }

            while (1)
            {
              j = *(j + 32);
              if (!j || (*(j + 52) & 1) == 0)
              {
                break;
              }

              v96 = (*(*j + 24))(j, *this);
              RB::DisplayList::CachedTransform::mix_style(RB::DisplayList::Interpolator::State const&,RB::DisplayList::Style const*,RB::DisplayList::Style const*,BOOL)const::$_0::operator()(&v148, v96, j, 0);
            }
          }
        }

        else
        {
          v36 = *(v36 + 4);
          if (v36)
          {
            continue;
          }

          v37 = *(a2 + 1);
          v145 = *a2;
          v146 = v37;
          *&v147 = *(a2 + 4);
          *&v146 = 1.0 - *&v37;
          BYTE12(v146) = BYTE12(v37) ^ 1;
          v38 = (*(*i + 88))(i, a2, 0, this);
          if (v38)
          {
            v39 = v148;
            *(v38 + 16) = RB::DisplayList::CachedTransform::transform_ctm(v148, *(i + 16));
            v40 = v149;
            *(v38 + 24) = RB::DisplayList::CachedTransform::transform_clip(v39, *(i + 24), 0);
            *(v38 + 40) = RB::DisplayList::CachedTransform::transform_metadata(v39, *(i + 40), *(i + 48));
            *(v38 + 48) = v41;
            *(v38 + 52) = *(i + 52) & 1;
            (*(*v38 + 32))(v38, v39, v40);
            v42 = v150;
            v43 = *(v150 + 17);
            v44 = v43 + 1;
            if (*(v150 + 18) < (v43 + 1))
            {
              _ZN2RB6vectorIDv4_DF16_Lm16EmE12reserve_slowEm(v150, v44);
              v43 = v42[17];
              v44 = v43 + 1;
            }

            v45 = v42[16];
            if (!v45)
            {
              v45 = v42;
            }

            v45[v43] = v38;
            v42[17] = v44;
          }

          v46 = (*(*j + 88))(j, &v145, 0, this);
          v47 = v46;
          v48 = *(i + 32);
          if (v48)
          {
            v49 = 0;
            if (v46)
            {
              goto LABEL_59;
            }

LABEL_91:
            i = *(i + 32);
            if (v48)
            {
              goto LABEL_92;
            }
          }

          else
          {
            v49 = *(j + 32) == 0;
            if (!v46)
            {
              goto LABEL_91;
            }

LABEL_59:
            v50 = v148;
            *(v46 + 16) = RB::DisplayList::CachedTransform::transform_ctm(v148, *(j + 16));
            v51 = v149;
            *(v47 + 24) = RB::DisplayList::CachedTransform::transform_clip(v50, *(j + 24), v49 & v149);
            *(v47 + 40) = RB::DisplayList::CachedTransform::transform_metadata(v50, *(j + 40), *(j + 48));
            *(v47 + 48) = v52;
            *(v47 + 52) = *(j + 52) & 1;
            (*(*v47 + 32))(v47, v50, v51);
            v53 = v150;
            v54 = *(v150 + 17);
            v55 = v54 + 1;
            if (*(v150 + 18) < (v54 + 1))
            {
              _ZN2RB6vectorIDv4_DF16_Lm16EmE12reserve_slowEm(v150, v55);
              v54 = v53[17];
              v55 = v54 + 1;
            }

            v56 = v53[16];
            if (!v56)
            {
              v56 = v53;
            }

            v56[v54] = v47;
            v53[17] = v55;
            for (i = *(i + 32); i; i = *(i + 32))
            {
LABEL_92:
              if ((*(i + 52) & 1) == 0)
              {
                break;
              }

              v76 = (*(*i + 24))(i, *this);
              RB::DisplayList::CachedTransform::mix_style(RB::DisplayList::Interpolator::State const&,RB::DisplayList::Style const*,RB::DisplayList::Style const*,BOOL)const::$_0::operator()(&v148, v76, i, 0);
            }
          }

          j = *(j + 32);
          if (j)
          {
            v77 = v148;
            v78 = v149;
            v79 = v150;
            do
            {
              if ((*(j + 52) & 1) == 0)
              {
                goto LABEL_119;
              }

              v80 = (*(*j + 24))(j, *this);
              v81 = v80;
              if (i)
              {
                v82 = 0;
                if (v80)
                {
                  goto LABEL_101;
                }
              }

              else
              {
                v82 = *(j + 32) == 0;
                if (v80)
                {
LABEL_101:
                  *(v80 + 16) = RB::DisplayList::CachedTransform::transform_ctm(v77, *(j + 16));
                  *(v81 + 24) = RB::DisplayList::CachedTransform::transform_clip(v77, *(j + 24), v82 & v78);
                  *(v81 + 40) = RB::DisplayList::CachedTransform::transform_metadata(v77, *(j + 40), *(j + 48));
                  *(v81 + 48) = v83;
                  *(v81 + 52) = *(j + 52) & 1;
                  (*(*v81 + 32))(v81, v77, v78 & 1);
                  v84 = v79[17];
                  v85 = v84 + 1;
                  if (v79[18] < (v84 + 1))
                  {
                    _ZN2RB6vectorIDv4_DF16_Lm16EmE12reserve_slowEm(v79, v85);
                    v84 = v79[17];
                    v85 = v84 + 1;
                  }

                  v86 = v79[16];
                  if (!v86)
                  {
                    v86 = v79;
                  }

                  v86[v84] = v81;
                  v79[17] = v85;
                }
              }

              j = *(j + 32);
            }

            while (j);
          }
        }

        break;
      }

LABEL_119:
      if (!i || !j)
      {
        goto LABEL_123;
      }
    }
  }

  v97 = 0;
  v98 = 1;
  do
  {
LABEL_136:
    if (!v97)
    {
      i = 0;
      goto LABEL_145;
    }

    v108 = (*(*i + 88))(i, a2, 0, this);
    v109 = *(i + 32);
    v110 = v109 == 0;
    if (v108)
    {
      v111 = v148;
      v112 = RB::DisplayList::CachedTransform::transform_ctm(v148, *(i + 16));
      v113 = v110 && !v98;
      *(v108 + 16) = v112;
      v114 = v149;
      *(v108 + 24) = RB::DisplayList::CachedTransform::transform_clip(v111, *(i + 24), v113 & v149);
      *(v108 + 40) = RB::DisplayList::CachedTransform::transform_metadata(v111, *(i + 40), *(i + 48));
      *(v108 + 48) = v115;
      *(v108 + 52) = *(i + 52) & 1;
      (*(*v108 + 32))(v108, v111, v114);
      v116 = v150;
      v117 = *(v150 + 17);
      v118 = v117 + 1;
      if (*(v150 + 18) < (v117 + 1))
      {
        _ZN2RB6vectorIDv4_DF16_Lm16EmE12reserve_slowEm(v150, v118);
        v117 = v116[17];
        v118 = v117 + 1;
      }

      v119 = v116[16];
      if (!v119)
      {
        v119 = v116;
      }

      v119[v117] = v108;
      v116[17] = v118;
      i = *(i + 32);
      if (!i)
      {
        goto LABEL_145;
      }

      while (1)
      {
LABEL_151:
        if ((*(i + 52) & 1) == 0)
        {
          goto LABEL_145;
        }

        v129 = (*(*i + 24))(i, *this);
        v130 = v129;
        if (v98)
        {
          v131 = 0;
          if (v129)
          {
            goto LABEL_156;
          }
        }

        else
        {
          v131 = *(i + 32) == 0;
          if (v129)
          {
LABEL_156:
            v132 = v148;
            *(v129 + 16) = RB::DisplayList::CachedTransform::transform_ctm(v148, *(i + 16));
            v133 = v149;
            *(v130 + 24) = RB::DisplayList::CachedTransform::transform_clip(v132, *(i + 24), v131 & v149);
            *(v130 + 40) = RB::DisplayList::CachedTransform::transform_metadata(v132, *(i + 40), *(i + 48));
            *(v130 + 48) = v134;
            *(v130 + 52) = *(i + 52) & 1;
            (*(*v130 + 32))(v130, v132, v133);
            v135 = v150;
            v136 = *(v150 + 17);
            v137 = v136 + 1;
            if (*(v150 + 18) < (v136 + 1))
            {
              _ZN2RB6vectorIDv4_DF16_Lm16EmE12reserve_slowEm(v150, v137);
              v136 = v135[17];
              v137 = v136 + 1;
            }

            v138 = v135[16];
            if (!v138)
            {
              v138 = v135;
            }

            v138[v136] = v130;
            v135[17] = v137;
          }
        }

        i = *(i + 32);
        if (!i)
        {
          goto LABEL_145;
        }
      }
    }

    i = *(i + 32);
    if (v109)
    {
      goto LABEL_151;
    }

LABEL_145:
    if (v98)
    {
      v120 = *(a2 + 1);
      v145 = *a2;
      v146 = v120;
      *&v147 = *(a2 + 4);
      *&v146 = 1.0 - *&v120;
      BYTE12(v146) = BYTE12(v120) ^ 1;
      v121 = (*(*j + 88))(j, &v145, 0, this);
      v122 = (i | *(j + 32)) == 0;
      if (v121)
      {
        v123 = v148;
        *(v121 + 16) = RB::DisplayList::CachedTransform::transform_ctm(v148, *(j + 16));
        v124 = v149;
        *(v121 + 24) = RB::DisplayList::CachedTransform::transform_clip(v123, *(j + 24), v122 & v149);
        *(v121 + 40) = RB::DisplayList::CachedTransform::transform_metadata(v123, *(j + 40), *(j + 48));
        *(v121 + 48) = v125;
        *(v121 + 52) = *(j + 52) & 1;
        (*(*v121 + 32))(v121, v123, v124);
        v126 = v150;
        v127 = *(v150 + 17);
        v128 = v127 + 1;
        if (*(v150 + 18) >= (v127 + 1))
        {
LABEL_171:
          v144 = v126[16];
          if (!v144)
          {
            v144 = v126;
          }

          v144[v127] = v121;
          v126[17] = v128;
          goto LABEL_174;
        }

LABEL_177:
        _ZN2RB6vectorIDv4_DF16_Lm16EmE12reserve_slowEm(v150, v128);
        v127 = v126[17];
        v128 = v127 + 1;
        goto LABEL_171;
      }

      for (j = *(j + 32); ; j = *(j + 32))
      {
        if (!j || (*(j + 52) & 1) == 0)
        {
          goto LABEL_175;
        }

        v139 = (*(*j + 24))(j, *this);
        v121 = v139;
        if (i)
        {
          v140 = 0;
          if (v139)
          {
            goto LABEL_170;
          }
        }

        else
        {
          v140 = *(j + 32) == 0;
          if (v139)
          {
LABEL_170:
            v141 = v148;
            *(v139 + 16) = RB::DisplayList::CachedTransform::transform_ctm(v148, *(j + 16));
            v142 = v149;
            *(v121 + 24) = RB::DisplayList::CachedTransform::transform_clip(v141, *(j + 24), v140 & v149);
            *(v121 + 40) = RB::DisplayList::CachedTransform::transform_metadata(v141, *(j + 40), *(j + 48));
            *(v121 + 48) = v143;
            *(v121 + 52) = *(j + 52) & 1;
            (*(*v121 + 32))(v121, v141, v142);
            v126 = v150;
            v127 = *(v150 + 17);
            v128 = v127 + 1;
            if (*(v150 + 18) >= (v127 + 1))
            {
              goto LABEL_171;
            }

            goto LABEL_177;
          }
        }

LABEL_174:
        ;
      }
    }

    j = 0;
LABEL_175:
    v97 = i != 0;
    v98 = j != 0;
  }

  while (i | j);
LABEL_124:
  if (a5)
  {
    v99 = *(this + 135);
  }

  else
  {
    v99 = 0;
  }

  v100 = v152;
  v101 = v153;
  if (v153)
  {
    v102 = *(*this + 8);
    v103 = __dst;
    if (v152)
    {
      v103 = v152;
    }

    v104 = *(v102 + 312);
    v105 = v103 - 8;
    do
    {
      v106 = *&v105[8 * v101];
      *(v106 + 8) = v104;
      *(v102 + 312) = v106;
      *(*&v105[8 * v101] + 32) = v99;
      v99 = *&v105[8 * v101];
      v104 = v106;
      --v101;
    }

    while (v101);
  }

  if (v100)
  {
    free(v100);
  }

  return v99;
}

void sub_195D60458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  if (a34)
  {
    free(a34);
  }

  _Unwind_Resume(exception_object);
}

const RB::DisplayList::ClipNode *RB::DisplayList::CachedTransform::mix_clip(RB::DisplayList::CachedTransform *a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = 0;
  v27 = 16;
  if (a3)
  {
    v7 = a4;
    if (a4)
    {
      v8 = a3;
      do
      {
        if (!RB::same_type<RB::DisplayList::Clip>(v8[1] & 0xFFFFFFFFFFFFFFFELL, v7[1] & 0xFFFFFFFFFFFFFFFELL))
        {
          break;
        }

        v10 = (*(*(v8[1] & 0xFFFFFFFFFFFFFFFELL) + 72))(v8[1] & 0xFFFFFFFFFFFFFFFELL, a2, v7[1] & 0xFFFFFFFFFFFFFFFELL, a1);
        *(v10 + 32) = RB::DisplayList::CachedTransform::transform_metadata(a1, *((v7[1] & 0xFFFFFFFFFFFFFFFELL) + 32), *((v7[1] & 0xFFFFFFFFFFFFFFFELL) + 40));
        *(v10 + 40) = v11;
        v12 = v26;
        v13 = v26 + 1;
        if (v27 < v26 + 1)
        {
          _ZN2RB6vectorIDv4_DF16_Lm16EmE12reserve_slowEm(__dst, v13);
          v12 = v26;
          v13 = v26 + 1;
        }

        v14 = v25;
        if (!v25)
        {
          v14 = __dst;
        }

        *&v14[8 * v12] = v10;
        v26 = v13;
        v8 = *v8;
        if (!v8)
        {
          break;
        }

        v7 = *v7;
      }

      while (v7);
    }
  }

  if (a5)
  {
    v15 = *(a1 + 134);
  }

  else
  {
    v15 = 0;
  }

  v23 = v15;
  if (v26)
  {
    v16 = v26 - 1;
    while (1)
    {
      v17 = v25;
      if (!v25)
      {
        v17 = __dst;
      }

      v18 = *&v17[8 * v16];
      v22 = v18;
      v19 = *a1;
      if (*(*a1 + 288) != 1)
      {
        goto LABEL_22;
      }

      if ((RB::DisplayList::ClipNode::elide_append(&v23, v18) & 1) == 0)
      {
        break;
      }

      (**v22)(v22);
LABEL_23:
      if (--v16 == -1)
      {
        v15 = v23;
        goto LABEL_25;
      }
    }

    v19 = *a1;
    v18 = v22;
LABEL_22:
    v20 = *(v19 + 8);
    *(v18 + 1) = *(v20 + 312);
    *(v20 + 312) = v18;
    v23 = RB::Heap::emplace<RB::DisplayList::ClipNode,RB::DisplayList::Clip const*&,RB::DisplayList::ClipNode*&>((v20 + 16), &v22, &v23);
    goto LABEL_23;
  }

LABEL_25:
  if (v25)
  {
    free(v25);
  }

  return v15;
}

void sub_195D606E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (a27)
  {
    free(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::DisplayList::AtomizedItems::effects_change_geometry(RB::DisplayList::AtomizedItems *this, const RB::DisplayList::Interpolator::Layer *a2, const State *a3, int a4)
{
  v6 = RB::DisplayList::AtomizedItems::transition(this, a2);
  v7 = *(v6 + 12);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = v6 + 24;
  if (*(v6 + 5))
  {
    v9 = *(v6 + 5);
  }

  v10 = *a3->_context;
  if ((v10 & 0x100000000) != 0)
  {
    v11 = 4;
  }

  else
  {
    v11 = 8;
  }

  if ((v10 & 0x400000000) != 0)
  {
    v12 = 16;
  }

  else
  {
    v12 = 32;
  }

  v13 = v11 | v12 | a4;
  while (1)
  {
    v14 = *&v9[4 * v8];
    v15 = v13 & (v14 >> 10) & 0x3F;
    v16 = v14 & 0x3F;
    if (v15 == a4 && (v16 - 2) < 0x11 && ((0x1E1FFu >> (v16 - 2)) & 1) != 0)
    {
      break;
    }

    v8 += RB::Transition::_effect_args[v16] + 1;
    if (v8 >= v7)
    {
      return 0;
    }
  }

  return 1;
}

void RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Color>::disable_subpixel_quantization(uint64_t a1, float64x2_t *a2)
{
  v3.f64[0] = RB::operator*(*(a1 + 48), a2);
  v6[0] = v3;
  v6[1] = v4;
  v6[2] = v5;
  RB::Coverage::Glyphs::disable_subpixel_quantization((a1 + 56), v6, v3.f64[0], v4.f64[0], v5);
}

void RB::Coverage::Glyphs::disable_subpixel_quantization(RB::Coverage::Glyphs *this, float64x2_t *a2, double a3, double a4, int64x2_t a5)
{
  v5 = *(this + 5);
  if ((v5 & 8) != 0)
  {
    v8 = *(this + 1);
    v9 = a2[1];
    v17[0] = *a2;
    v17[1] = v9;
    v17[2] = a2[2];
    if (RB::AffineTransform::invert(v17))
    {
      v10 = v17;
    }

    else
    {
      v10 = a2;
    }

    if (*(this + 4))
    {
      v11 = 0;
      v14 = v10[1];
      v15 = *v10;
      do
      {
        v12 = *(v8 + 8 * v11);
        *(v8 + 8 * v11++) = vadd_f32(v12, vcvt_f32_f64(vmlaq_n_f64(vmulq_n_f64(v15, *&v13), v14, *(&v13 + 1))));
      }

      while (v11 < *(this + 4));
    }

    *(this + 5) &= ~8u;
  }
}

double RB::Coverage::anonymous namespace::QuantizationLevel::offset(float32x2_t *a1, float64x2_t *a2, float32x2_t a3)
{
  v3 = vceqz_f32(*a1);
  if ((vpmax_u32(v3, v3).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  v4 = vcvtq_f64_f32(a3);
  v5 = a2[1];
  *v4.f32 = vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(a2[2], *a2, *v4.i64), v5, v4, 1));
  v6 = vaddq_f64(v5, *a2);
  *&v6.f64[0] = vcltz_f32(vcvt_f32_f64(v6));
  v7 = vcltzq_s32(v6);
  v8 = vbslq_s8(v7, vnegq_f32(v4), v4);
  *&v5.f64[0] = vadd_f32(*v8.f32, vdup_n_s32(0x3A83126Fu));
  v9 = vrndm_f32(*&v5.f64[0]);
  *v8.f32 = vmla_f32(vsub_f32(v9, *v8.f32), vrnd_f32(vmul_f32(vsub_f32(*&v5.f64[0], v9), *a1)), a1[1]);
  *&result = vbslq_s8(v7, vnegq_f32(v8), v8).u64[0];
  return result;
}

unint64_t RB::Heap::emplace<RB::DisplayList::FilterStyle<RB::Filter::GaussianBlur>,RB::Filter::GaussianBlur const&,RB::DisplayList::Builder &>(size_t *a1, RB::Filter::GaussianBlur *a2, RB::DisplayList::Builder *a3)
{
  v5 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v5 + 96 > a1[3])
  {
    v5 = RB::Heap::alloc_slow(a1, 0x60uLL, 7);
  }

  else
  {
    a1[2] = v5 + 96;
  }

  *(v5 + 48) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = &unk_1F0A3D440;
  RB::Filter::GaussianBlur::GaussianBlur((v5 + 56), a2, a3);
  return v5;
}

void RB::Filter::GaussianBlur::apply_style_transform(RB::Filter::GaussianBlur *this, const RB::DisplayList::CachedTransform *a2)
{
  v10[12] = *MEMORY[0x1E69E9840];
  if (*(this + 4))
  {
    v3 = *a2;
    v4[0] = xmmword_195E42760;
    v4[1] = xmmword_195E42770;
    v5 = 0;
    v6 = 0;
    RB::DisplayList::CachedTransform::CachedTransform(v7, v3, v4, 0, 0);
    (*(**(this + 4) + 32))(*(this + 4), v7, 1);
    RB::UntypedTable::~UntypedTable(v10);
    RB::UntypedTable::~UntypedTable(&v9);
    RB::Heap::~Heap(&v8);
  }
}

void sub_195D60B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  RB::DisplayList::CachedTransform::~CachedTransform(va);
  _Unwind_Resume(a1);
}

unint64_t RB::prefix_suffix_diff<RB::DisplayList::EditAdaptor::Element,RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element*,unsigned int,RB::DisplayList::EditAdaptor::Element*,unsigned int,unsigned int,unsigned int)::$_0,RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element*,unsigned int,RB::DisplayList::EditAdaptor::Element*,unsigned int,unsigned int,unsigned int)::$_2>(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5, int **a6, int a7, int a8)
{
  v9 = a6;
  v12 = a3;
  v14 = result;
  if (!a7 || (result >= a3 ? (v15 = a3) : (v15 = result), !v15))
  {
    v16 = 0;
    if (!a8)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v16 = 0;
  v17 = a2;
  v18 = a4;
  while (1)
  {
    result = *a5;
    v19 = *(v17 + 16) + *(v18 + 16);
    v20 = (*(*(*a5 + 192) + 4 * (v19 >> 3)) >> (4 * (v19 & 7))) & 0xF;
    if (!v20)
    {
      result = RB::DisplayList::EditAdaptor::make_matrix_value(result, a5[1], v17, v18);
      v20 = result;
    }

    if (v20 == 1)
    {
      break;
    }

    ++v16;
    v18 += 24;
    v17 += 24;
    if (v15 == v16)
    {
      v16 = v15;
      break;
    }
  }

  v9 = a6;
  if (a8)
  {
LABEL_15:
    if (v16 < v14 && v16 < v12)
    {
      v21 = 0;
      v22 = a2 + 24 * v14 - 24;
      v23 = a4 + 24 * v12 - 24;
      do
      {
        result = *a5;
        v24 = *(v22 + 16) + *(v23 + 16);
        v25 = (*(*(*a5 + 192) + 4 * (v24 >> 3)) >> (4 * (v24 & 7))) & 0xF;
        if (!v25)
        {
          result = RB::DisplayList::EditAdaptor::make_matrix_value(result, a5[1], v22, v23);
          v25 = result;
        }

        if (v25 == 1)
        {
          break;
        }

        if (--v21 + v14 <= v16)
        {
          break;
        }

        v22 -= 24;
        v23 -= 24;
      }

      while (v21 + v12 > v16);
      LODWORD(v14) = v14 + v21;
      LODWORD(v12) = v12 + v21;
    }
  }

LABEL_24:
  v26 = v14 - v16;
  if (v14 == v16)
  {
    goto LABEL_41;
  }

  v27 = *v9;
  v28 = **v9;
  v29 = v16 - v28;
  if (v16 != v28)
  {
    v31 = v9[2];
    v32 = v31[386];
    if (v32)
    {
      v33 = *(v31 + 192);
      if (!v33)
      {
        v33 = v9[2];
      }

      v34 = &v33[3 * v32 - 3];
      v35 = v34[2];
      v36 = v9[1];
      if (v35 + *v34 == v28 && v34[1] + v35 == *v36)
      {
        v34[2] = v35 + v29;
LABEL_39:
        *v27 += v29;
        *v36 += v29;
        *v9[3] += v29;
        v30 = *v27;
        goto LABEL_40;
      }
    }

    else
    {
      v36 = v9[1];
    }

    v37 = v32 + 1;
    if (v31[387] < v32 + 1)
    {
      result = RB::vector<RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::Mixed,128ul,unsigned int>::reserve_slow(v9[2], v37);
      v32 = v31[386];
      v28 = *v27;
      v27 = *v9;
      v38 = v9[1];
      v37 = v32 + 1;
    }

    else
    {
      v38 = v36;
    }

    v39 = *(v31 + 192);
    if (!v39)
    {
      v39 = v31;
    }

    v40 = *v36;
    v41 = &v39[3 * v32];
    *v41 = v28;
    v41[1] = v40;
    v41[2] = v29;
    v31[386] = v37;
    v36 = v38;
    goto LABEL_39;
  }

  v30 = v16;
LABEL_40:
  *v27 = v30 + v26;
LABEL_41:
  v42 = v12 - v16;
  if (v12 != v16)
  {
    v43 = v9[1];
    v44 = *v43;
    v45 = v16 - *v43;
    if (v16 != *v43)
    {
      v46 = v9[2];
      v47 = v46[386];
      v48 = *v9;
      if (!v47)
      {
        goto LABEL_49;
      }

      v49 = *(v46 + 192);
      if (!v49)
      {
        v49 = v9[2];
      }

      v50 = &v49[3 * v47 - 3];
      v51 = v50[2];
      if (v51 + *v50 == *v48 && v50[1] + v51 == v44)
      {
        v50[2] = v51 + v45;
      }

      else
      {
LABEL_49:
        v52 = v47 + 1;
        if (v46[387] < v47 + 1)
        {
          result = RB::vector<RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::Mixed,128ul,unsigned int>::reserve_slow(v9[2], v52);
          v47 = v46[386];
          v44 = *v43;
          v53 = *v9;
          v43 = v9[1];
          v52 = v47 + 1;
        }

        else
        {
          v53 = *v9;
        }

        v54 = *(v46 + 192);
        if (!v54)
        {
          v54 = v46;
        }

        v55 = &v54[3 * v47];
        *v55 = *v48;
        v55[1] = v44;
        v55[2] = v45;
        v46[386] = v52;
        v48 = v53;
      }

      *v48 += v45;
      *v43 += v45;
      *v9[3] += v45;
      LODWORD(v16) = *v43;
    }

    *v43 = v16 + v42;
  }

  return result;
}

BOOL RB::Transition::empty_transition(RB::Transition *this, char a2)
{
  v2 = *(this + 12);
  if (!v2)
  {
    return 1;
  }

  v3 = 0;
  v4 = this + 24;
  if (*(this + 5))
  {
    v4 = *(this + 5);
  }

  v5 = a2 & 0x3F;
  do
  {
    v6 = *&v4[4 * v3];
    result = (v5 & (v6 >> 10)) == 0;
    if ((v5 & (v6 >> 10)) != 0)
    {
      break;
    }

    v3 += RB::Transition::_effect_args[v6 & 0x3F] + 1;
  }

  while (v3 < v2);
  return result;
}

uint64_t RB::Transition::Effect::anchor_direction(RB::Transition::Effect *this, unsigned int a2, int a3)
{
  v3 = *this;
  v4 = (*this & 0x3F) - 7;
  if (v4 > 3)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    if ((a3 & (v3 >> 8)) != ((a2 >> 1) & ((v3 & 0x80) >> 7)))
    {
    }

    v5 = v4;
    v6 = 0x100000000;
  }

  return v6 | v5;
}

uint64_t RB::Transition::Effect::sequence_direction(RB::Transition::Effect *this, unsigned int a2, int a3)
{
  v3 = *this;
  v4 = (*this & 0x3F) - 11;
  if (v4 <= 9 && ((0x30Fu >> v4) & 1) != 0)
  {
    v5 = dword_195E485C4[v4];
    if ((a3 & (v3 >> 8)) != ((a2 >> 1) & ((v3 & 0x80) >> 7)))
    {
    }

    v6 = v5;
    v7 = 0x100000000;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

float RB::SpringTiming::derivative(RB::SpringTiming *this, float a2)
{
  if (*(this + 1) >= 1.0)
  {
    v9 = *this;
    v7 = expf(-(a2 * *this));
    v8 = (*(this + 3) * v9) + (*(this + 4) * ((v9 * a2) + -1.0));
  }

  else
  {
    v4 = __sincosf_stret(*(this + 2) * a2);
    v6 = *this;
    v5 = *(this + 1);
    v7 = expf(-(a2 * v5) * *this);
    v8 = (-((*(this + 4) * *(this + 2)) - ((v6 * v5) * *(this + 3))) * v4.__cosval) + (((*(this + 2) * *(this + 3)) + ((v6 * v5) * *(this + 4))) * v4.__sinval);
  }

  return v8 * v7;
}

uint64_t RB::Transition::Effect::custom_duration(RB::Transition::Effect *this, char a2, const EffectOrArg *a3, double a4, float32x2_t a5)
{
  if ((*this & 0x3F) == 0x12)
  {
    v5 = 0.5;
    if ((a3->int_arg & 0xF) == 4)
    {
      v5 = 0.25;
    }

    goto LABEL_8;
  }

  if ((*this & 0x3F) == 0x11)
  {
    v5 = 0.16667;
    if (a2)
    {
      v5 = 0.25;
    }

LABEL_8:
    a5.f32[0] = a3[1].arg;
    v6 = vrecpe_f32(a5);
    v7 = vmul_f32(vrecps_f32(a5, v6), v6);
    return COERCE_UNSIGNED_INT(v5 * vmul_f32(v7, vrecps_f32(a5, v7)).f32[0]) | 0x100000000;
  }

  return 0;
}

uint64_t RB::DisplayList::Interpolator::Contents::intern_animation(RB::DisplayList::Interpolator::Contents *this, const RB::Animation *a2, const RB::Animation *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = a2;
    if (!*(a2 + 8))
    {
      return 0xFFFFFFFFLL;
    }

    v5 = a3 != 0;
    if (!a3)
    {
LABEL_46:
      if (v4)
      {
        if (*(v4 + 3))
        {
          v33 = *(v4 + 3);
        }

        else
        {
          v33 = v4;
        }

        v34 = *(v4 + 8);
LABEL_57:

        return RB::DisplayList::Interpolator::Contents::intern_animation(this, v33, v34);
      }

      if (v5)
      {
        if (*(a3 + 3))
        {
          v33 = *(a3 + 3);
        }

        else
        {
          v33 = a3;
        }

        v34 = *(a3 + 8);
        goto LABEL_57;
      }

      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (!a3)
    {
      return *(this + 4);
    }

    v4 = *(this + 1);
    v5 = 1;
  }

  if (!v4)
  {
    goto LABEL_46;
  }

  v42 = 0u;
  v43 = 128;
  v6 = *(a3 + 8);
  if (!v6)
  {
    v35 = 0;
    v36 = 0;
    goto LABEL_62;
  }

  v40 = this;
  v7 = 0;
  do
  {
    if (!*(v4 + 8))
    {
      goto LABEL_30;
    }

    v8 = 0;
    do
    {
      v9 = *(v4 + 3);
      if (!v9)
      {
        v9 = v4;
      }

      v10 = (v9 + 4 * v8);
      v11 = *v10;
      if ((v11 - 11) >= 2)
      {
        if (v11 != 13)
        {
          break;
        }
      }

      else
      {
        v12 = RB::Animation::_term_args[v11];
        v13 = *(&v42 + 1);
        v14 = v12 + *(&v42 + 1) + 1;
        if (*(&v42 + 1) < v14 && v43 < v14)
        {
          RB::vector<RB::Animation::TermOrArg,128ul,unsigned long>::reserve_slow(__dst, v12 + *(&v42 + 1) + 1);
        }

        *(&v42 + 1) = v14;
        v16 = v42;
        if (!v42)
        {
          v16 = __dst;
        }

        v17 = &v16[4 * v13];
        v18 = 4 * v12 + 4;
        v19 = v10;
        do
        {
          v20 = *v19++;
          *v17++ = v20;
          v18 -= 4;
        }

        while (v18);
        v11 = *v10;
        if (v11 == 18)
        {
          v21 = 2 * v10[1] + 2;
          goto LABEL_28;
        }
      }

      v21 = RB::Animation::_term_args[v11];
LABEL_28:
      v8 += v21 + 1;
    }

    while (v8 < *(v4 + 8));
    v6 = *(a3 + 8);
LABEL_30:
    v22 = *(a3 + 3);
    if (!v22)
    {
      v22 = a3;
    }

    v23 = RB::Animation::size(v22 + 4 * v7, v6 - v7);
    v24 = *(&v42 + 1);
    v25 = *(&v42 + 1) + v23;
    if (*(&v42 + 1) < *(&v42 + 1) + v23 && v43 < v25)
    {
      RB::vector<RB::Animation::TermOrArg,128ul,unsigned long>::reserve_slow(__dst, v25);
    }

    *(&v42 + 1) = v25;
    v27 = *(a3 + 3);
    if (!v27)
    {
      v27 = a3;
    }

    if (v23)
    {
      v28 = (v27 + 4 * v7);
      v29 = v42;
      if (!v42)
      {
        v29 = __dst;
      }

      v30 = &v29[4 * v24];
      v31 = 4 * v23;
      do
      {
        v32 = *v28++;
        *v30++ = v32;
        v31 -= 4;
      }

      while (v31);
    }

    v7 += v23;
    v6 = *(a3 + 8);
  }

  while (v7 < v6);
  v35 = *(&v42 + 1);
  v36 = v42;
  this = v40;
LABEL_62:
  if (v36)
  {
    v39 = v36;
  }

  else
  {
    v39 = __dst;
  }

  v37 = RB::DisplayList::Interpolator::Contents::intern_animation(this, v39, v35);
  if (v42)
  {
    free(v42);
  }

  return v37;
}

void sub_195D614C0(_Unwind_Exception *a1)
{
  if (STACK[0x208])
  {
    free(STACK[0x208]);
  }

  _Unwind_Resume(a1);
}

uint64_t RB::Animation::equal(int *a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v4 = a2 - 1;
  do
  {
    v6 = *a1++;
    v5 = v6;
    v7 = *a3++;
    v9 = v5 == v7;
    v8 = v5 == v7;
    v9 = !v9 || v4-- == 0;
  }

  while (!v9);
  return v8;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::SequenceElement *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result.n128_u32[0] = a2[-1].n128_u32[1];
        if (result.n128_f32[0] < v12->n128_f32[1])
        {
          v124 = *v12;
          *v12 = a2[-1];
          result = v124;
          a2[-1] = v124;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v59 = v12[1].n128_f32[1];
      v60 = v12[2].n128_f32[1];
      if (v59 >= v12->n128_f32[1])
      {
        if (v60 < v59)
        {
          result = v12[1];
          v12[1] = v12[2];
          v12[2] = result;
          if (v12[1].n128_f32[1] < v12->n128_f32[1])
          {
            v128 = *v12;
            *v12 = v12[1];
            result = v128;
            v12[1] = v128;
          }
        }
      }

      else
      {
        if (v60 < v59)
        {
          v126 = *v12;
          *v12 = v12[2];
          result = v126;
          goto LABEL_183;
        }

        v130 = *v12;
        *v12 = v12[1];
        v12[1] = v130;
        if (v60 < v12[1].n128_f32[1])
        {
          result = v12[1];
          v12[1] = v12[2];
LABEL_183:
          v12[2] = result;
        }
      }

      result.n128_u32[0] = a2[-1].n128_u32[1];
      if (result.n128_f32[0] >= v12[2].n128_f32[1])
      {
        return result;
      }

      result = v12[2];
      v12[2] = *v9;
      *v9 = result;
      result.n128_u32[0] = v12[2].n128_u32[1];
      if (result.n128_f32[0] >= v12[1].n128_f32[1])
      {
        return result;
      }

      result = v12[1];
      v12[1] = v12[2];
      v12[2] = result;
LABEL_187:
      result.n128_u32[0] = v12[1].n128_u32[1];
      if (result.n128_f32[0] < v12->n128_f32[1])
      {
        v131 = *v12;
        *v12 = v12[1];
        result = v131;
        v12[1] = v131;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::SequenceElement *,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v61 = v12 + 1;
      v63 = v12 == a2 || v61 == a2;
      if (a4)
      {
        if (!v63)
        {
          v64 = 0;
          v65 = v12;
          do
          {
            v66 = v61;
            result.n128_u32[0] = v65[1].n128_u32[1];
            if (result.n128_f32[0] < v65->n128_f32[1])
            {
              v67 = v61->n128_u32[0];
              v68 = v65[1].n128_u64[1];
              v69 = v64;
              while (1)
              {
                *(v12 + v69 + 16) = *(v12 + v69);
                if (!v69)
                {
                  break;
                }

                v70 = *(&v12->n128_f32[-3] + v69);
                v69 -= 16;
                if (result.n128_f32[0] >= v70)
                {
                  v71 = &v12[1] + v69;
                  goto LABEL_130;
                }
              }

              v71 = v12;
LABEL_130:
              *v71 = v67;
              *(v71 + 4) = result.n128_u32[0];
              *(v71 + 8) = v68;
            }

            v61 = v66 + 1;
            v64 += 16;
            v65 = v66;
          }

          while (&v66[1] != a2);
        }
      }

      else if (!v63)
      {
        do
        {
          v100 = v61;
          result.n128_u32[0] = a1[1].n128_u32[1];
          if (result.n128_f32[0] < a1->n128_f32[1])
          {
            v101 = v61->n128_u32[0];
            v102 = a1[1].n128_u64[1];
            v103 = v100;
            do
            {
              *v103 = v103[-1];
              v104 = v103[-2].n128_f32[1];
              --v103;
            }

            while (result.n128_f32[0] < v104);
            v103->n128_u32[0] = v101;
            v103->n128_u32[1] = result.n128_u32[0];
            v103->n128_u64[1] = v102;
          }

          v61 = v100 + 1;
          a1 = v100;
        }

        while (&v100[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v72 = (v13 - 2) >> 1;
        v73 = v72;
        do
        {
          v74 = v73;
          if (v72 >= v73)
          {
            v75 = (2 * v73) | 1;
            v76 = &v12[v75];
            if (2 * v74 + 2 < v13 && v76->n128_f32[1] < v76[1].n128_f32[1])
            {
              ++v76;
              v75 = 2 * v74 + 2;
            }

            v77 = &v12[v74];
            v78 = v77->n128_f32[1];
            if (v76->n128_f32[1] >= v78)
            {
              v79 = v77->n128_u32[0];
              v80 = v77->n128_u64[1];
              do
              {
                v81 = v77;
                v77 = v76;
                *v81 = *v76;
                if (v72 < v75)
                {
                  break;
                }

                v82 = 2 * v75;
                v75 = (2 * v75) | 1;
                v76 = &v12[v75];
                v83 = v82 + 2;
                if (v83 < v13 && v76->n128_f32[1] < v76[1].n128_f32[1])
                {
                  ++v76;
                  v75 = v83;
                }
              }

              while (v76->n128_f32[1] >= v78);
              v77->n128_u32[0] = v79;
              v77->n128_f32[1] = v78;
              v77->n128_u64[1] = v80;
            }
          }

          v73 = v74 - 1;
        }

        while (v74);
        do
        {
          v84 = 0;
          v127 = *v12;
          v85 = v12;
          do
          {
            v86 = &v85[v84];
            v87 = v86 + 1;
            v88 = (2 * v84) | 1;
            v84 = 2 * v84 + 2;
            if (v84 >= v13)
            {
              v84 = v88;
            }

            else
            {
              v89 = v86[1].n128_f32[1];
              v90 = v86[2].n128_f32[1];
              v91 = v86 + 2;
              if (v89 >= v90)
              {
                v84 = v88;
              }

              else
              {
                v87 = v91;
              }
            }

            *v85 = *v87;
            v85 = v87;
          }

          while (v84 <= ((v13 - 2) >> 1));
          if (v87 == --a2)
          {
            result = v127;
            *v87 = v127;
          }

          else
          {
            *v87 = *a2;
            result = v127;
            *a2 = v127;
            v92 = (v87 - v12 + 16) >> 4;
            v93 = v92 < 2;
            v94 = v92 - 2;
            if (!v93)
            {
              v95 = v94 >> 1;
              v96 = &v12[v95];
              result.n128_u32[0] = v87->n128_u32[1];
              if (v96->n128_f32[1] < result.n128_f32[0])
              {
                v97 = v87->n128_u32[0];
                v98 = v87->n128_i64[1];
                do
                {
                  v99 = v87;
                  v87 = v96;
                  *v99 = *v96;
                  if (!v95)
                  {
                    break;
                  }

                  v95 = (v95 - 1) >> 1;
                  v96 = &v12[v95];
                }

                while (v96->n128_f32[1] < result.n128_f32[0]);
                v87->n128_u32[0] = v97;
                v87->n128_u32[1] = result.n128_u32[0];
                v87->n128_u64[1] = v98;
              }
            }
          }

          v93 = v13-- <= 2;
        }

        while (!v93);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = a2[-1].n128_f32[1];
    if (v13 >= 0x81)
    {
      v16 = v14->n128_f32[1];
      if (v16 >= v12->n128_f32[1])
      {
        if (v15 < v16)
        {
          v107 = *v14;
          *v14 = *v9;
          *v9 = v107;
          if (v14->n128_f32[1] < v12->n128_f32[1])
          {
            v108 = *v12;
            *v12 = *v14;
            *v14 = v108;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          v105 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v111 = *v12;
        *v12 = *v14;
        *v14 = v111;
        if (a2[-1].n128_f32[1] < v14->n128_f32[1])
        {
          v105 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v105;
        }
      }

      v18 = v14 - 1;
      v19 = v14[-1].n128_f32[1];
      v20 = a2[-2].n128_f32[1];
      if (v19 >= v12[1].n128_f32[1])
      {
        if (v20 < v19)
        {
          v112 = *v18;
          *v18 = *v10;
          *v10 = v112;
          if (v14[-1].n128_f32[1] < v12[1].n128_f32[1])
          {
            v22 = v12[1];
            v12[1] = *v18;
            *v18 = v22;
          }
        }
      }

      else
      {
        if (v20 < v19)
        {
          v21 = v12[1];
          v12[1] = *v10;
          goto LABEL_38;
        }

        v23 = v12[1];
        v12[1] = *v18;
        *v18 = v23;
        if (a2[-2].n128_f32[1] < v14[-1].n128_f32[1])
        {
          v114 = *v18;
          *v18 = *v10;
          v21 = v114;
LABEL_38:
          *v10 = v21;
        }
      }

      v24 = v14 + 1;
      v25 = v14[1].n128_f32[1];
      v26 = a2[-3].n128_f32[1];
      if (v25 >= v12[2].n128_f32[1])
      {
        if (v26 < v25)
        {
          v115 = *v24;
          *v24 = *v11;
          *v11 = v115;
          if (v14[1].n128_f32[1] < v12[2].n128_f32[1])
          {
            v28 = v12[2];
            v12[2] = *v24;
            *v24 = v28;
          }
        }
      }

      else
      {
        if (v26 < v25)
        {
          v27 = v12[2];
          v12[2] = *v11;
          goto LABEL_47;
        }

        v29 = v12[2];
        v12[2] = *v24;
        *v24 = v29;
        if (a2[-3].n128_f32[1] < v14[1].n128_f32[1])
        {
          v116 = *v24;
          *v24 = *v11;
          v27 = v116;
LABEL_47:
          *v11 = v27;
        }
      }

      v30 = v14->n128_f32[1];
      v31 = v14[1].n128_f32[1];
      if (v30 >= v14[-1].n128_f32[1])
      {
        if (v31 < v30)
        {
          v118 = *v14;
          *v14 = *v24;
          *v24 = v118;
          if (v14->n128_f32[1] < v14[-1].n128_f32[1])
          {
            v119 = *v18;
            *v18 = *v14;
            *v14 = v119;
          }
        }
      }

      else
      {
        if (v31 < v30)
        {
          v117 = *v18;
          *v18 = *v24;
          goto LABEL_56;
        }

        v120 = *v18;
        *v18 = *v14;
        *v14 = v120;
        if (v14[1].n128_f32[1] < v14->n128_f32[1])
        {
          v117 = *v14;
          *v14 = *v24;
LABEL_56:
          *v24 = v117;
        }
      }

      v121 = *v12;
      *v12 = *v14;
      result = v121;
      *v14 = v121;
      goto LABEL_58;
    }

    v17 = v12->n128_f32[1];
    if (v17 >= v14->n128_f32[1])
    {
      if (v15 < v17)
      {
        v109 = *v12;
        *v12 = *v9;
        result = v109;
        *v9 = v109;
        if (v12->n128_f32[1] < v14->n128_f32[1])
        {
          v110 = *v14;
          *v14 = *v12;
          result = v110;
          *v12 = v110;
        }
      }

      goto LABEL_58;
    }

    if (v15 < v17)
    {
      v106 = *v14;
      *v14 = *v9;
LABEL_35:
      result = v106;
      *v9 = v106;
      goto LABEL_58;
    }

    v113 = *v14;
    *v14 = *v12;
    result = v113;
    *v12 = v113;
    if (a2[-1].n128_f32[1] < v12->n128_f32[1])
    {
      v106 = *v12;
      *v12 = *v9;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      result.n128_u32[0] = v12->n128_u32[1];
LABEL_61:
      v32 = 0;
      v33 = v12->n128_u32[0];
      v34 = v12->n128_u64[1];
      do
      {
        v35 = v12[++v32].n128_f32[1];
      }

      while (v35 < result.n128_f32[0]);
      v36 = &v12[v32];
      v37 = a2;
      if (v32 == 1)
      {
        v40 = a2;
        while (v36 < v40)
        {
          v38 = v40 - 1;
          v41 = v40[-1].n128_f32[1];
          --v40;
          if (v41 < result.n128_f32[0])
          {
            goto LABEL_71;
          }
        }

        v38 = v40;
      }

      else
      {
        do
        {
          v38 = v37 - 1;
          v39 = v37[-1].n128_f32[1];
          --v37;
        }

        while (v39 >= result.n128_f32[0]);
      }

LABEL_71:
      v12 = v36;
      if (v36 < v38)
      {
        v42 = v38;
        do
        {
          v122 = *v12;
          *v12 = *v42;
          *v42 = v122;
          do
          {
            v43 = v12[1].n128_f32[1];
            ++v12;
          }

          while (v43 < result.n128_f32[0]);
          do
          {
            v44 = v42[-1].n128_f32[1];
            --v42;
          }

          while (v44 >= result.n128_f32[0]);
        }

        while (v12 < v42);
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      v12[-1].n128_u32[0] = v33;
      v12[-1].n128_u32[1] = result.n128_u32[0];
      v12[-1].n128_u64[1] = v34;
      if (v36 < v38)
      {
        goto LABEL_82;
      }

      v45 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::SequenceElement *>(a1, v12 - 1, result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::SequenceElement *>(v12, a2, v46))
      {
        a2 = v12 - 1;
        if (!v45)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v45)
      {
LABEL_82:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::DisplayList::EditAdaptor::finalize_group(RB::DisplayList::Interpolator::Layer &,RB::Transition::Method,unsigned int,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,RB::DisplayList::EditAdaptor::Element *,unsigned int,unsigned int,unsigned int)::SequenceElement *,false>(a1, &v12[-1], a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      result.n128_u32[0] = v12->n128_u32[1];
      if (v12[-1].n128_f32[1] < result.n128_f32[0])
      {
        goto LABEL_61;
      }

      if (result.n128_f32[0] >= a2[-1].n128_f32[1])
      {
        v49 = v12 + 1;
        do
        {
          v12 = v49;
          if (v49 >= a2)
          {
            break;
          }

          v50 = v49->n128_f32[1];
          ++v49;
        }

        while (result.n128_f32[0] >= v50);
      }

      else
      {
        v47 = v12;
        do
        {
          v12 = v47 + 1;
          v48 = v47[1].n128_f32[1];
          ++v47;
        }

        while (result.n128_f32[0] >= v48);
      }

      v51 = a2;
      if (v12 < a2)
      {
        v52 = a2;
        do
        {
          v51 = v52 - 1;
          v53 = v52[-1].n128_f32[1];
          --v52;
        }

        while (result.n128_f32[0] < v53);
      }

      v54 = a1->n128_u32[0];
      v55 = a1->n128_u64[1];
      while (v12 < v51)
      {
        v123 = *v12;
        *v12 = *v51;
        *v51 = v123;
        do
        {
          v56 = v12[1].n128_f32[1];
          ++v12;
        }

        while (result.n128_f32[0] >= v56);
        do
        {
          v57 = v51[-1].n128_f32[1];
          --v51;
        }

        while (result.n128_f32[0] < v57);
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      a4 = 0;
      v12[-1].n128_u32[0] = v54;
      v12[-1].n128_u32[1] = result.n128_u32[0];
      v12[-1].n128_u64[1] = v55;
    }
  }

  result.n128_u32[0] = v12[1].n128_u32[1];
  v58 = a2[-1].n128_f32[1];
  if (result.n128_f32[0] >= v12->n128_f32[1])
  {
    if (v58 >= result.n128_f32[0])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v9;
    *v9 = result;
    goto LABEL_187;
  }

  if (v58 >= result.n128_f32[0])
  {
    v129 = *v12;
    *v12 = v12[1];
    result = v129;
    v12[1] = v129;
    result.n128_u32[0] = a2[-1].n128_u32[1];
    if (result.n128_f32[0] >= v12[1].n128_f32[1])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v9;
  }

  else
  {
    v125 = *v12;
    *v12 = *v9;
    result = v125;
  }

  *v9 = result;
  return result;
}

uint64_t RB::Device::glyph_path_cache(RB::Device *this)
{
  result = *(this + 122);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t RB::GlyphPathCache::lookup_glyph(uint64_t a1, int a2, int a3, float64x2_t *this, float32x2_t a5, uint64_t a6, int a7)
{
  v33 = *MEMORY[0x1E69E9840];
  v12 = vmvn_s8(vceqz_f32(a5));
  v13 = vpmax_u32(v12, v12).u32[0];
  v14 = RB::AffineTransform::scale(this);
  if ((v13 & 0x80000000) != 0)
  {
    v16 = log2f(v14);
    v17 = vrecpe_f32(1050989506);
    v18 = vmul_f32(vrecps_f32(1050989506, v17), v17);
    v15 = exp2f(floorf(v16 * vmul_f32(v18, vrecps_f32(1050989506, v18)).f32[0]) * 0.32193);
  }

  else
  {
    v27[0] = 0;
    frexpf(v14, v27);
    v15 = ldexpf(1.0, v27[0]);
  }

  v19 = v15;
  v28[0] = CGFontGetIdentifier();
  *&v28[1] = v19;
  v29 = a5;
  v30 = a7;
  v31 = a3;
  v20 = a5.i32[0] ^ a3 ^ a5.i32[1] ^ LODWORD(v19) ^ (v28[0] << 8);
  if (a7)
  {
    v20 = -v20 ^ a7;
  }

  v21 = 9 * ((v20 + ~(v20 << 15)) ^ ((v20 + ~(v20 << 15)) >> 10));
  v32 = ((v21 ^ (v21 >> 6)) + ~((v21 ^ (v21 >> 6)) << 11)) ^ (((v21 ^ (v21 >> 6)) + ~((v21 ^ (v21 >> 6)) << 11)) >> 16);
  v22 = RB::UntypedTable::lookup((a1 + 8), v28, 0);
  if (!v22)
  {
    ++*(a1 + 96);
    operator new();
  }

  ++*(a1 + 88);
  v23 = *(*(a6 + 16) + 100);
  *(v22 + 80) = v23;
  if (v23 >= *(a1 + 80))
  {
    v23 = *(a1 + 80);
  }

  *(a1 + 80) = v23;
  v24 = this[1];
  *this = vmulq_n_f64(*this, *(v22 + 24));
  this[1] = vmulq_n_f64(v24, *(v22 + 24));
  return v22;
}

void sub_195D625C0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 152);
  if (v3)
  {
    CFRelease(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZN2RB14GlyphPathCacheC1EvENUlT_T0_E_8__invokeIPKNS_21GlyphPathCacheDetails8GlyphKeyES8_EEDaS1_S2_(float32x2_t *a1, float32x2_t *a2)
{
  if (a1->i32[0] != a2->i32[0] || a1[2].u16[1] != a2[2].u16[1] || a1->f32[1] != a2->f32[1] || a1[2].u8[0] != a2[2].u8[0])
  {
    return 0;
  }

  v2 = vceq_f32(a1[1], a2[1]);
  return vpmin_u32(v2, v2).u32[0] >> 31;
}

void RB::anonymous namespace::render_glyph_paths(uint64_t a1, uint64_t *a2, float64x2_t *this, float32x2_t *a4, int a5, char a6)
{
  v79 = *MEMORY[0x1E69E9840];
  v12 = a4[6].u8[4];
  v13 = 0.0;
  if (v12 == 1)
  {
    v60 = 0;
  }

  else if (a4[6].i8[4])
  {
    v14 = a4[6].f32[0];
    a6 = 0;
    v13 = RB::AffineTransform::scale(this) * v14;
    v60 = 2;
  }

  else
  {
    v60 = 0;
    v12 = (a4[2].i8[4] & 1) == 0;
  }

  v15 = RB::Device::glyph_path_cache(**(*a2 + 16));
  v18 = v15;
  v19 = 0;
  if (a5)
  {
    v19 = RB::GlyphPathCache::glyph_dilation(a4, this, v17);
  }

  v20 = a4[2].u32[0];
  if (a6)
  {
    if (v20 <= 0x33)
    {
      MEMORY[0x1EEE9AC00](v15, v16);
      v59 = &v55 - ((v35 + 15) & 0xFFFFFFFFF0);
      bzero(v59, v35);
      v23 = 32 * v20;
    }

    else
    {
      v21 = malloc_type_malloc(80 * v20, 0x1060040F7A21503uLL);
      v59 = v21;
      v22 = a4[2].u32[0];
      v23 = 32 * v22;
      if (v22 >= 0x81)
      {
        v58 = malloc_type_malloc(v23, 0x1020040C98AB378uLL);
        v57 = 1;
        goto LABEL_25;
      }
    }

    MEMORY[0x1EEE9AC00](v21, v23);
    v58 = &v55 - ((v36 + 15) & 0x3FFFFFFFF0);
    bzero(v58, v36);
    v57 = 0;
LABEL_25:
    if (v59)
    {
      if (v58)
      {
        v37 = a4[2].u32[0];
        if (v37)
        {
          v56 = v12;
          v38 = 0;
          for (i = 0; i < v37; ++i)
          {
            v40 = this[1];
            v72 = this[2];
            v41 = this[1];
            *v71 = *this;
            *&v71[16] = v41;
            v42 = *a4;
            v43 = a4[1];
            v72 = vmlaq_n_f64(vmlaq_n_f64(v72, v40, COERCE_FLOAT(HIDWORD(*(*&v43 + 8 * i)))), *v71, COERCE_FLOAT(*(*&v43 + 8 * i)));
            v44 = RB::GlyphPathCache::lookup_glyph(v18, v42.i32[0], *(*&v43 + 8 * v37 + 2 * i), v71, v19, *a2, v60 | 1u);
            if (*(v44 + 56))
            {
              RB::RenderFrame::cached_region(*(*a2 + 16), 2, *(v44 + 76), v63);
              v45 = v63[0].f64[0];
              if (*&v63[0].f64[0])
              {
                v47 = *(v44 + 72);
                v48 = *v71;
                v49 = *&v71[16];
                v50 = v72;
                v51 = *(v44 + 32);
                v52 = *(v44 + 40);
                v53 = &v59[80 * v38];
                *v53 = 1;
                v54 = &v58[32 * v38];
                *v54 = v45;
                *(v54 + 8) = *(v63 + 8);
                *(v54 + 6) = v47;
                v54[28] = 4;
                *(v53 + 1) = v54;
                *(v53 + 2) = v51;
                *(v53 + 3) = v52;
                *(v53 + 2) = v48;
                *(v53 + 3) = v49;
                *(v53 + 4) = v50;
                ++v38;
              }

              else
              {
                RB::RenderFrame::alloc_buffer_region(*(*a2 + 16), (32 * *(v44 + 56)), 4uLL, 0, &v75);
                *&v63[0].f64[0] = v75;
                *(v63 + 8) = v76;
                if (v75)
                {
                  v46 = *(v44 + 56);
                  if (v46)
                  {
                    memmove((*(v75 + 7) + *&v76.f64[0]), *(v44 + 48), 32 * v46);
                  }

                  RB::RenderFrame::set_cached_region();
                }
              }
            }

            v37 = a4[2].u32[0];
          }

          if (v38)
          {
            *v71 = a2;
            v71[8] = 0;
            v71[9] = v56;
            *&v71[12] = v13;
            *&v71[16] = v38;
            *&v71[24] = v59;
            (*(*a1 + 24))(a1, v71);
          }
        }
      }
    }

    if (v57)
    {
      free(v58);
    }

    if (v20 >= 0x34)
    {
      free(v59);
    }

    return;
  }

  if (a4[2].i32[0])
  {
    v24 = 0;
    do
    {
      v25 = this[1];
      v64 = this[2];
      v26 = *this;
      v27 = *this;
      v63[1] = this[1];
      v63[0] = v26;
      v28 = *a4;
      v29 = a4[1];
      v64 = vmlaq_n_f64(vmlaq_n_f64(v64, v25, COERCE_FLOAT(HIDWORD(*(*&v29 + 8 * v24)))), v27, COERCE_FLOAT(*(*&v29 + 8 * v24)));
      v30 = RB::GlyphPathCache::lookup_glyph(v18, v28.i32[0], *(*&v29 + 8 * v20 + 2 * v24), v63, v19, *a2, v60);
      if (*(v30 + 56))
      {
        RB::RenderFrame::cached_region(*(*a2 + 16), 2, *(v30 + 76), &v61);
        if (v61)
        {
          v32 = *(v30 + 72);
          v33 = *(v30 + 32);
          v34 = *(v30 + 40);
          v75 = v61;
          v76 = v62;
          v77 = v32;
          v78 = 4;
          *v71 = 1;
          *&v71[8] = &v75;
          *&v71[16] = v33;
          *&v71[24] = v34;
          v72 = v63[0];
          v73 = v63[1];
          v74 = v64;
          v65 = a2;
          v66 = 0;
          v67 = v12;
          v68 = v13;
          v69 = 1;
          v70 = v71;
          (*(*a1 + 24))(a1, &v65);
        }

        else
        {
          RB::RenderFrame::alloc_buffer_region(*(*a2 + 16), (32 * *(v30 + 56)), 4uLL, 0, v71);
          v61 = *v71;
          v62 = *&v71[8];
          if (*v71)
          {
            v31 = *(v30 + 56);
            if (v31)
            {
              memmove((*(*v71 + 56) + *&v71[8]), *(v30 + 48), 32 * v31);
            }

            RB::RenderFrame::set_cached_region();
          }
        }
      }

      ++v24;
      v20 = a4[2].u32[0];
    }

    while (v24 < v20);
  }
}

void sub_195D62C98(_Unwind_Exception *exception_object)
{
  if (*(v2 - 372))
  {
    free(*(v2 - 368));
  }

  if (v1 >= 0x34)
  {
    free(*(v2 - 360));
  }

  _Unwind_Resume(exception_object);
}

float32x2_t RB::GlyphPathCache::glyph_dilation(float32x2_t *this, float64x2_t *a2, const RB::AffineTransform *a3)
{
  v4 = RB::AffineTransform::scale(a2);
  v5 = log2f(v4);
  v6 = vrecpe_f32(1050989506);
  v7 = vmul_f32(vrecps_f32(1050989506, v6), v6);
  v12 = exp2f(floorf(v5 * vmul_f32(v7, vrecps_f32(1050989506, v7)).f32[0]) * 0.32193);
  v8 = RB::Coverage::Glyphs::resolved_dilation(this, v12);
  v9 = vrecpe_f32(LODWORD(v12));
  v10 = vmul_f32(vrecps_f32(LODWORD(v12), v9), v9);
  return vmul_n_f32(v8, vmul_f32(v10, vrecps_f32(LODWORD(v12), v10)).f32[0]);
}

double RB::DisplayList::FilterStyle<RB::Filter::GaussianBlur>::bounds(float32x2_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v16[0] = RB::DisplayList::Style::next_bounds(a1, a2, a3, a4);
  v16[1] = v5;
  v13[0] = xmmword_195E42760;
  v13[1] = xmmword_195E42770;
  v14 = 0;
  v15 = 0;
  v6 = RB::Rect::move(v16, v13, *&a1[2]);
  RB::Filter::GaussianBlur::dod(a1 + 7, v16, v6, v7, v8, v9, v10);
  RB::Rect::move_identity(v16, v13);
  v11 = a1[3];
  if (v11)
  {
    RB::Rect::intersect(v16, *(*&v11 + 16), *(*&v11 + 24));
  }

  return *v16;
}

uint64_t RB::CommitMarker::Observer::Observer(uint64_t a1)
{
  __dmb(9u);
  return (*(*a1 + 8))(a1);
}

{
  __dmb(9u);
  return (*(*a1 + 8))(a1);
}

BOOL RB::Table<RB::GlyphPathCacheDetails::GlyphKey const*,RB::GlyphPathCache::Path *>::remove_if<RB::GlyphPathCache::prune(unsigned int)::$_0>(RB::GlyphPathCache::prune(unsigned int)::$_0 const&)::{lambda(void const*,void const*,void const*)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 80);
  v4 = *a3;
  v5 = *a3[1];
  if (v3 > v5)
  {
    v6 = *(v4 + 80);
    if (v3 < v6)
    {
      v6 = *(a2 + 80);
    }

    *(v4 + 80) = v6;
  }

  else
  {
    *(v4 + 72) -= 32 * *(a2 + 56);
  }

  return v3 <= v5;
}

uint64_t RB::SharedSurface::~SharedSurface()
{
  OUTLINED_FUNCTION_0();
  return (*(v0 + 8))();
}

{
  OUTLINED_FUNCTION_0();
  return (*(v0 + 8))();
}

void RB::cg_font_get_glyph_path(RB *this@<X0>, CGFont *a2@<X1>, const __CFDictionary *a3@<X2>, void *a4@<X8>)
{
  v5 = a2;
  v21 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    *a4 = CGFontCreateGlyphPath();
    return;
  }

  v9 = a2;
  os_unfair_lock_lock(&RB::cg_font_get_glyph_path(CGFont *,unsigned short,__CFDictionary *)::cache_lock);
  v16[0] = 0;
  if (CFDictionaryGetValueIfPresent(a3, v5, v16))
  {
    v10 = v16[0];
    if (v16[0] == *MEMORY[0x1E695E738])
    {
      v10 = 0;
      v16[0] = 0;
    }

    *a4 = CGPathRetain(v10);
    os_unfair_lock_unlock(&RB::cg_font_get_glyph_path(CGFont *,unsigned short,__CFDictionary *)::cache_lock);
    return;
  }

  os_unfair_lock_unlock(&RB::cg_font_get_glyph_path(CGFont *,unsigned short,__CFDictionary *)::cache_lock);
  *a4 = 0;
  GlyphPath = CGFontCreateGlyphPath();
  if (GlyphPath)
  {
    if ((RB::disable_workaround("jitter-glyph-paths", v11) & 1) == 0)
    {
      v13 = 0.0625 / CGFontGetUnitsPerEm(this);
      v16[0] = CGPathCreateMutable();
      v16[1] = *&v13;
      *&v16[2] = v13 * -0.5;
      v17 = 0u;
      v18 = 0u;
      v19 = 1450709556;
      v20 = -25924;
      v14 = v16[0];
      CFRelease(GlyphPath);
      GlyphPath = v14;
    }

    CopyByNormalizing = CGPathCreateCopyByNormalizing(GlyphPath, 0);
    *a4 = CopyByNormalizing;
    os_unfair_lock_lock(&RB::cg_font_get_glyph_path(CGFont *,unsigned short,__CFDictionary *)::cache_lock);
    if (CopyByNormalizing)
    {
      goto LABEL_14;
    }
  }

  else
  {
    os_unfair_lock_lock(&RB::cg_font_get_glyph_path(CGFont *,unsigned short,__CFDictionary *)::cache_lock);
  }

  CopyByNormalizing = *MEMORY[0x1E695E738];
LABEL_14:
  CFDictionarySetValue(a3, v9, CopyByNormalizing);
  os_unfair_lock_unlock(&RB::cg_font_get_glyph_path(CGFont *,unsigned short,__CFDictionary *)::cache_lock);
  if (GlyphPath)
  {
    CFRelease(GlyphPath);
  }
}

uint64_t RB::anonymous namespace::GlyphSegments::begin_subpath(uint64_t this)
{
  *(this + 16) = *(*(this + 8) + 8);
  *(this + 28) = *(this + 24);
  return this;
}

uint64_t RB::anonymous namespace::GlyphSegments::cull_subpath(RB::_anonymous_namespace_::GlyphSegments *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (*(v2 + 8) < v3 && *(v2 + 16) < v3)
  {
    RB::vector<RB::Shader::Path::CubicSegment,0ul,unsigned long>::reserve_slow(*(this + 1), v3);
  }

  *(v2 + 8) = v3;
  *(this + 6) = *(this + 7);
  return 1;
}

uint64_t RB::Path::FlattenedConsumer::push_back(uint64_t a1, __n128 a2, float32x2_t a3, float32x2_t a4)
{
  v5 = vadd_f32(a3, a3);
  v6 = vdup_n_s32(0x3EAAAAABu);
  return (*(*a1 + 40))(a2, COERCE_DOUBLE(vmul_f32(vadd_f32(v5, a2.n128_u64[0]), v6)), COERCE_DOUBLE(vmul_f32(vadd_f32(v5, a4), v6)));
}

void RB::Path::Flattener::quadto(uint64_t a1, float64x2_t a2, float64x2_t a3, double a4, int8x16_t a5, int8x16_t a6, double a7, int32x4_t a8)
{
  v9 = *(a1 + 80);
  v10 = vcvt_f32_f64(a2);
  v11 = vcvt_f32_f64(a3);
  *(a1 + 80) = v11;
  v12 = vminnm_f32(vminnm_f32(v9, v10), v11);
  v13 = vmaxnm_f32(vmaxnm_f32(v9, v10), v11);
  v14 = vorr_s8(vcgt_f32(*(a1 + 24), v13), vcgt_f32(v12, *(a1 + 32)));
  if ((vpmax_u32(v14, v14).u32[0] & 0x80000000) != 0)
  {
    v23 = vmaxnm_f32(*(a1 + 64), v13);
    *(a1 + 56) = vminnm_f32(*(a1 + 56), v12);
    *(a1 + 64) = v23;

    RB::Path::Flattener::push_cropped(a1, *&v9, v11);
  }

  else
  {
    v15 = COERCE_DOUBLE(vminnm_f32(v9, v11));
    v16 = vmaxnm_f32(v9, v11);
    *a5.i8 = vcge_f32(v16, v10);
    v17 = vand_s8(*a5.i8, vcge_f32(v10, *&v15));
    if ((vpmin_u32(v17, v17).u32[0] & 0x80000000) == 0)
    {
      *&a2.f64[0] = v9;
      v15 = RB::Path::quadratic_bounds_slow(a2, v10, v11, a5, a6, a7, a8);
    }

    v18 = *(a1 + 64);
    *(a1 + 56) = vminnm_f32(*(a1 + 56), *&v15);
    *(a1 + 64) = vmaxnm_f32(v18, v16);
    v19 = vadd_f32(v9, vmla_f32(v11, 0xC0000000C0000000, v10));
    v20 = ceilf(sqrtf(*(a1 + 20) * sqrtf(vaddv_f32(vmul_f32(v19, v19)))));
    if ((LODWORD(v20) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (v20 >= 1.0)
      {
        if (v20 > 1024.0)
        {
          v20 = 1024.0;
        }

        v22 = v20;
      }

      else
      {
        v21 = vceq_f32(v9, v11);
        if ((vpmin_u32(v21, v21).u32[0] & 0x80000000) != 0)
        {
          return;
        }

        v22 = 1;
      }

      (*(**(a1 + 8) + 32))(*(a1 + 8), v22, *&v9, *&v10, *&v11);
      *(a1 + 88) = 0;
    }
  }
}

float RB::anonymous namespace::GlyphSegments::push_back(uint64_t a1, unsigned int a2, float32x2_t a3, double a4, double a5, double a6)
{
  v12 = *(a1 + 8);
  v13 = v12[1];
  if (!v13 || (v14 = vmvn_s8(vceq_f32(*(*v12 + 32 * v13 - 8), a3)), (vpmax_u32(v14, v14).u32[0] & 0x80000000) != 0))
  {
    v15 = *(a1 + 24);
    if (v12[2] < (v13 + 1))
    {
      RB::vector<RB::Shader::Path::CubicSegment,0ul,unsigned long>::reserve_slow(*(a1 + 8), v13 + 1);
      v13 = v12[1];
    }

    v16 = *v12 + 32 * v13;
    *v16 = v15;
    *(v16 + 4) = 0;
    v17 = vneg_f32(0x7F0000007FLL);
    *(v16 + 8) = v17;
    *(v16 + 16) = v17;
    *(v16 + 24) = *&a3;
    ++v12[1];
    v12 = *(a1 + 8);
    v13 = v12[1];
  }

  v18 = *(a1 + 24);
  if (v12[2] < (v13 + 1))
  {
    RB::vector<RB::Shader::Path::CubicSegment,0ul,unsigned long>::reserve_slow(v12, v13 + 1);
    v13 = v12[1];
  }

  result = 1.0 / a2;
  v20 = *v12 + 32 * v13;
  *v20 = v18;
  *(v20 + 4) = result;
  *(v20 + 8) = a4;
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  ++v12[1];
  *(a1 + 24) += a2;
  return result;
}

void *RB::vector<RB::Shader::Path::CubicSegment,0ul,unsigned long>::reserve_slow(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,32ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

void *RB::details::realloc_vector<unsigned long,32ul>(void *a1, size_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(32 * a3);
    v6 = v5 >> 5;
    if (v5 >> 5 != *a2)
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

uint64_t _ZZN2RB14GlyphPathCacheC1EvENUlT_E0_8__invokeIPNS0_4PathEEEDaS1_(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 48);
    if (v1)
    {
      free(v1);
    }

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(a2, a1);
  v7 = std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(a3, a2);
  if (v6 < 0)
  {
    v10 = a1 + 2;
    v9 = *a1;
    if (v7 < 0)
    {
      *a1 = *a3;
      *a3 = v9;
      v15 = a1[1];
      a1[1] = a3[1];
    }

    else
    {
      *a1 = *a2;
      *a2 = v9;
      v10 = a2 + 2;
      v11 = a2[2];
      v12 = a1[1];
      v13 = a1[2];
      a1[1] = a2[1];
      a2[1] = v12;
      a1[2] = v11;
      a2[2] = v13;
      if ((std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(a3, a2) & 0x80) == 0)
      {
        return 1;
      }

      v14 = *a2;
      *a2 = *a3;
      *a3 = v14;
      v15 = a2[1];
      a2[1] = a3[1];
    }

    a3[1] = v15;
    v20 = a3 + 2;
    goto LABEL_11;
  }

  if ((v7 & 0x80000000) == 0)
  {
    return 0;
  }

  v16 = *a2;
  *a2 = *a3;
  *a3 = v16;
  v17 = a2[1];
  v18 = a3[2];
  a2[1] = a3[1];
  v20 = a2 + 2;
  v19 = a2[2];
  a2[2] = v18;
  a3[1] = v17;
  a3[2] = v19;
  if ((std::operator<=>[abi:nn200100]<std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *,std::pair<unsigned long,unsigned long>,RB::DisplayList::LayerTask *>(a2, a1) & 0x80) != 0)
  {
    v21 = *a1;
    *a1 = *a2;
    *a2 = v21;
    v22 = a1[1];
    a1[1] = a2[1];
    a2[1] = v22;
    v10 = a1 + 2;
LABEL_11:
    v23 = *v10;
    *v10 = *v20;
    *v20 = v23;
  }

  return 1;
}

CFDataRef RB::ProtobufEncoder::take_data@<X0>(RB::ProtobufEncoder *this@<X0>, CFDataRef *a2@<X8>)
{
  if (*(this + 48))
  {
    result = 0;
  }

  else
  {
    v4 = *this;
    v5 = *(this + 1);
    *(this + 1) = 0;
    *(this + 2) = 0;
    *this = 0;
    result = CFDataCreateWithBytesNoCopy(0, v4, v5, *MEMORY[0x1E695E488]);
  }

  *a2 = result;
  return result;
}

uint64_t *RB::Encoder::local_namespace(RB::Encoder *this)
{
  {
    RB::Encoder::local_namespace(void)::local_ns = RB::Encoder::local_namespace(void)::$_0::operator()();
    *algn_1ED6D5178 = v2;
  }

  return &RB::Encoder::local_namespace(void)::local_ns;
}

uint64_t RB::Encoder::local_namespace(void)::$_0::operator()()
{
  v2 = *MEMORY[0x1E69E9840];
  uuid_clear(uu);
  MEMORY[0x19A8C1370](uu);
  return *uu;
}

void *RB::ProtobufEncoder::encode_varint(void *this, unint64_t a2)
{
  v2 = a2;
  v3 = this;
  if (a2 > 0x7F)
  {
    v5 = (147 * (70 - __clz(a2))) >> 10;
    v4 = this[1];
  }

  else
  {
    v4 = this[1];
    if (this[2] > v4)
    {
      *(*this + v4) = a2;
      ++this[1];
      return this;
    }

    v5 = 1;
  }

  v6 = v4 + v5;
  if (v4 < v4 + v5 && this[2] < v6)
  {
    this = RB::vector<unsigned char,0ul,unsigned long>::reserve_slow(this, v6);
  }

  v3[1] = v6;
  v7 = (*v3 + v4);
  do
  {
    v8 = v2 > 0x7F;
    v9 = v2 > 0x7F;
    v10 = v2 & 0x7F;
    v2 >>= 7;
    *v7++ = v10 | (v9 << 7);
  }

  while (v8);
  return this;
}

void *RB::ProtobufEncoder::encode_fixed32(void *this, int a2)
{
  v3 = this;
  v4 = this[1];
  v5 = v4 + 4;
  if (v4 <= 0xFFFFFFFFFFFFFFFBLL && this[2] < v5)
  {
    this = RB::vector<unsigned char,0ul,unsigned long>::reserve_slow(this, v4 + 4);
  }

  v3[1] = v5;
  *(*v3 + v4) = a2;
  return this;
}

void *RB::ProtobufEncoder::encode_fixed64(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[1];
  v5 = v4 + 8;
  if (v4 <= 0xFFFFFFFFFFFFFFF7 && this[2] < v5)
  {
    this = RB::vector<unsigned char,0ul,unsigned long>::reserve_slow(this, v4 + 8);
  }

  v3[1] = v5;
  *(*v3 + v4) = a2;
  return this;
}

void *RB::ProtobufEncoder::encode_data(RB::ProtobufEncoder *this, const void *a2, unint64_t a3)
{
  result = RB::ProtobufEncoder::encode_varint(this, a3);
  if (a3)
  {
    v7 = *(this + 1);
    v8 = v7 + a3;
    if (v7 < v7 + a3 && *(this + 2) < v8)
    {
      RB::vector<unsigned char,0ul,unsigned long>::reserve_slow(this, v7 + a3);
    }

    *(this + 1) = v8;
    v9 = (*this + v7);

    return memcpy(v9, a2, a3);
  }

  return result;
}

void *RB::ProtobufEncoder::begin_length_delimited(void *this)
{
  v1 = this;
  v2 = this[1];
  v3 = v2 + 1;
  if (v2 != -1 && this[2] < v3)
  {
    this = RB::vector<unsigned char,0ul,unsigned long>::reserve_slow(this, v2 + 1);
  }

  v1[1] = v3;
  v4 = v1[4];
  if (v1[5] < (v4 + 1))
  {
    this = RB::vector<unsigned long,0ul,unsigned long>::reserve_slow((v1 + 3), v4 + 1);
    v4 = v1[4];
  }

  *(v1[3] + 8 * v4) = v2;
  ++v1[4];
  return this;
}

void *RB::ProtobufEncoder::end_length_delimited(void *this)
{
  v1 = this;
  v2 = this[4];
  v3 = *(this[3] + 8 * v2 - 8);
  this[4] = v2 - 1;
  v4 = this[1];
  v5 = v3 + 1;
  v6 = v4 - (v3 + 1);
  if (v6 > 0x7F)
  {
    v7 = (147 * (70 - __clz(v6))) >> 10;
    v8 = v4 + v7 - 1;
    if (v4 < v8 && this[2] < v8)
    {
      v14 = v4 + v7 - 1;
      v13 = v7;
      RB::vector<unsigned char,0ul,unsigned long>::reserve_slow(this, v8);
      v7 = v13;
      v5 = v3 + 1;
      v8 = v14;
    }

    v1[1] = v8;
    this = memmove((*v1 + v3 + v7), (*v1 + v5), v6);
    v9 = (*v1 + v3);
    do
    {
      v10 = v6 > 0x7F;
      v11 = v6 > 0x7F;
      v12 = v6 & 0x7F;
      v6 >>= 7;
      *v9++ = v12 | (v11 << 7);
    }

    while (v10);
  }

  else
  {
    *(*this + v3) = v6;
  }

  return this;
}

void *RB::ProtobufEncoder::packed_uint32_field(void *this, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v6 = this;
    RB::ProtobufEncoder::encode_varint(this, (8 * a2) | 2);
    RB::ProtobufEncoder::begin_length_delimited(v6);
    do
    {
      v7 = *a3++;
      RB::ProtobufEncoder::encode_varint(v6, v7);
      --v4;
    }

    while (v4);

    return RB::ProtobufEncoder::end_length_delimited(v6);
  }

  return this;
}

void *RB::ProtobufEncoder::packed_fixed32_field(void *this, uint64_t a2, const unsigned int *a3, uint64_t a4)
{
  if (a4)
  {
    v6 = this;
    RB::ProtobufEncoder::encode_varint(this, (8 * a2) | 2);
    v7 = 4 * a4;
    RB::ProtobufEncoder::encode_varint(v6, 4 * a4);
    v8 = v6[1];
    v9 = v8 + 4 * a4;
    if (v8 < v9 && v6[2] < v9)
    {
      RB::vector<unsigned char,0ul,unsigned long>::reserve_slow(v6, v9);
    }

    v6[1] = v9;
    v10 = (*v6 + v8);

    return memcpy(v10, a3, v7);
  }

  return this;
}

void *RB::ProtobufEncoder::packed_fixed64_field(void *this, uint64_t a2, const unint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v6 = this;
    RB::ProtobufEncoder::encode_varint(this, (8 * a2) | 2);
    v7 = 8 * a4;
    RB::ProtobufEncoder::encode_varint(v6, 8 * a4);
    v8 = v6[1];
    v9 = v8 + 8 * a4;
    if (v8 < v9 && v6[2] < v9)
    {
      RB::vector<unsigned char,0ul,unsigned long>::reserve_slow(v6, v9);
    }

    v6[1] = v9;
    v10 = (*v6 + v8);

    return memcpy(v10, a3, v7);
  }

  return this;
}

void *RB::ProtobufEncoder::float2_field(void *result, uint64_t a2, double a3)
{
  v3 = vceqz_f32(*&a3);
  if ((vpmin_u32(v3, v3).u32[0] & 0x80000000) == 0)
  {
    v4 = result;
    RB::ProtobufEncoder::encode_varint(result, (8 * a2) | 2);
    RB::ProtobufEncoder::begin_length_delimited(v4);
    if (*&a3 != 0.0)
    {
      RB::ProtobufEncoder::encode_varint(v4, 0xDuLL);
      RB::ProtobufEncoder::encode_fixed32(v4, SLODWORD(a3));
    }

    if (*(&a3 + 1) != 0.0)
    {
      RB::ProtobufEncoder::encode_varint(v4, 0x15uLL);
      RB::ProtobufEncoder::encode_fixed32(v4, SHIDWORD(a3));
    }

    return RB::ProtobufEncoder::end_length_delimited(v4);
  }

  return result;
}

void *RB::ProtobufEncoder::float3_field(void *result, uint64_t a2, float32x4_t a3)
{
  v3 = vceqzq_f32(a3);
  v3.i32[3] = v3.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) == 0)
  {
    v4 = result;
    RB::ProtobufEncoder::encode_varint(result, (8 * a2) | 2);
    RB::ProtobufEncoder::begin_length_delimited(v4);
    if (a3.f32[0] != 0.0)
    {
      RB::ProtobufEncoder::encode_varint(v4, 0xDuLL);
      RB::ProtobufEncoder::encode_fixed32(v4, a3.i32[0]);
    }

    if (a3.f32[1] != 0.0)
    {
      RB::ProtobufEncoder::encode_varint(v4, 0x15uLL);
      RB::ProtobufEncoder::encode_fixed32(v4, a3.i32[1]);
    }

    if (a3.f32[2] != 0.0)
    {
      RB::ProtobufEncoder::encode_varint(v4, 0x1DuLL);
      RB::ProtobufEncoder::encode_fixed32(v4, a3.i32[2]);
    }

    return RB::ProtobufEncoder::end_length_delimited(v4);
  }

  return result;
}

void *RB::ProtobufEncoder::float4_field(void *result, uint64_t a2, float32x4_t a3)
{
  if ((vminvq_u32(vceqzq_f32(a3)) & 0x80000000) == 0)
  {
    v3 = result;
    RB::ProtobufEncoder::encode_varint(result, (8 * a2) | 2);
    RB::ProtobufEncoder::begin_length_delimited(v3);
    if (a3.f32[0] != 0.0)
    {
      RB::ProtobufEncoder::encode_varint(v3, 0xDuLL);
      RB::ProtobufEncoder::encode_fixed32(v3, a3.i32[0]);
    }

    if (a3.f32[1] != 0.0)
    {
      RB::ProtobufEncoder::encode_varint(v3, 0x15uLL);
      RB::ProtobufEncoder::encode_fixed32(v3, a3.i32[1]);
    }

    v4 = a3.f32[3];
    if (a3.f32[2] != 0.0)
    {
      RB::ProtobufEncoder::encode_varint(v3, 0x1DuLL);
      RB::ProtobufEncoder::encode_fixed32(v3, a3.i32[2]);
      v4 = a3.f32[3];
    }

    v5 = LODWORD(v4);
    if (v4 != 0.0)
    {
      RB::ProtobufEncoder::encode_varint(v3, 0x25uLL);
      RB::ProtobufEncoder::encode_fixed32(v3, v5);
    }

    return RB::ProtobufEncoder::end_length_delimited(v3);
  }

  return result;
}

void *RB::ProtobufEncoder::color_field(void *result, uint64_t a2, double a3)
{
  if (a3 != 1.08420217e-19)
  {
    v4 = result;
    RB::ProtobufEncoder::encode_varint(result, (8 * a2) | 1);

    return RB::ProtobufEncoder::encode_fixed64(v4, *&a3);
  }

  return result;
}

void *RB::Encoder::shared_field_f(RB::Encoder *this, uint64_t a2, void *a3)
{
  RB::ProtobufEncoder::encode_varint(this, (8 * a2) | 2);
  RB::ProtobufEncoder::begin_length_delimited(this);
  v7 = 0;
  v5 = RB::UntypedTable::lookup((this + 80), a3, &v7);
  if (v7 != a3)
  {
    *(this + 48) = 1;
  }

  RB::ProtobufEncoder::encode_varint(this, 8uLL);
  RB::ProtobufEncoder::encode_varint(this, v5);
  return RB::ProtobufEncoder::end_length_delimited(this);
}

void *RB::Encoder::prepare_image(void *result, uint64_t a2, CFDataRef a3)
{
  if (a3)
  {
    v3 = result;
    if ((*(result + 148) & 1) == 0)
    {
      v4 = result[7];
      if (v4)
      {
        theData = 0;
        result = RB::UntypedTable::lookup((result + 10), a3, &theData);
        if (a3 != theData)
        {
          v7 = *(v3 + 72);
          *(v3 + 72) = v7 + 1;
          result = RB::UntypedTable::insert((v3 + 80), a3, v7);
          if ((*(v3 + 148) & 1) == 0)
          {
            RB::ProtobufEncoder::encode_varint(v3, 0x7AuLL);
            RB::ProtobufEncoder::begin_length_delimited(v3);
            if (v7)
            {
              RB::ProtobufEncoder::encode_varint(v3, 8uLL);
              RB::ProtobufEncoder::encode_varint(v3, v7);
            }

            RB::ProtobufEncoder::encode_varint(v3, 0x12uLL);
            RB::ProtobufEncoder::begin_length_delimited(v3);
            (*(*v4 + 32))(&theData, v4, a2, a3);
            if (theData)
            {
              BytePtr = CFDataGetBytePtr(theData);
              Length = CFDataGetLength(theData);
              if (Length)
              {
                RB::ProtobufEncoder::encode_varint(v3, 0xAuLL);
                RB::ProtobufEncoder::encode_data(v3, BytePtr, Length);
              }

              if (theData)
              {
                CFRelease(theData);
              }
            }

            else
            {
              *(v3 + 48) = 1;
            }

            RB::ProtobufEncoder::end_length_delimited(v3);
            return RB::ProtobufEncoder::end_length_delimited(v3);
          }
        }
      }

      else
      {
        *(result + 48) = 1;
      }
    }
  }

  return result;
}

void sub_195D64498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

RB::Encoder *RB::Encoder::image_field(RB::Encoder *result, uint64_t a2, int a3, void *a4)
{
  if (a4)
  {
    return RB::Encoder::shared_field_f(result, a2, a4);
  }

  return result;
}

uint64_t RB::Encoder::prepare_glyphs(RB::Encoder *this, CGFont *a2, unint64_t a3, const unsigned __int16 *a4)
{
  if (!*(this + 8))
  {
    operator new();
  }

  Identifier = CGFontGetIdentifier();
  v7 = *(this + 8);
  v13 = Identifier;
  v14 = &v13;
  v8 = std::__hash_table<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v7 + 16), &v13);
  v9 = v8;
  if (a2 && !v8[3])
  {
    v8[3] = CFRetain(a2);
  }

  result = CGFontIndexSetAddIndexes();
  if ((*(this + 148) & 1) == 0)
  {
    v11 = *(this + 36);
    if (*(v9 + 14) != v11)
    {
      *(v9 + 14) = v11;
      v12 = *(this + 9);
      *(this + 9) = v12 + 1;
      v9[8] = v12;
    }
  }

  return result;
}

void RB::Encoder::prepare_fonts(RB::Encoder *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    if ((*(this + 148) & 1) == 0)
    {
      for (i = *(v1 + 32); i; i = *i)
      {
        if (*(i + 14) == *(this + 36))
        {
          RB::Encoder::FontSet::Font::ensure_data((i + 3), this);
          if (i[4])
          {
            RB::ProtobufEncoder::encode_varint(this, 0x7AuLL);
            RB::ProtobufEncoder::begin_length_delimited(this);
            v4 = i[8];
            if (v4)
            {
              RB::ProtobufEncoder::encode_varint(this, 8uLL);
              RB::ProtobufEncoder::encode_varint(this, v4);
            }

            RB::ProtobufEncoder::encode_varint(this, 0x1AuLL);
            RB::ProtobufEncoder::begin_length_delimited(this);
            BytePtr = CFDataGetBytePtr(i[4]);
            Length = CFDataGetLength(i[4]);
            if (Length)
            {
              v7 = Length;
              RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
              RB::ProtobufEncoder::encode_data(this, BytePtr, v7);
            }

            RB::ProtobufEncoder::end_length_delimited(this);
            RB::ProtobufEncoder::end_length_delimited(this);
          }

          else
          {
            *(this + 48) = 1;
          }
        }
      }
    }
  }
}

void RB::Encoder::FontSet::Font::ensure_data(RB::Encoder::FontSet::Font *this, RB::Encoder *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (*(this + 1))
  {
    return;
  }

  v2 = *(a2 + 7);
  if (!v2)
  {
    return;
  }

  if (!(*(*v2 + 8))(v2, *this))
  {
    goto LABEL_34;
  }

  FontSubsetFormat = CGFontGetFontSubsetFormat();
  if (!FontSubsetFormat)
  {
    goto LABEL_34;
  }

  v5 = FontSubsetFormat;
  if (FontSubsetFormat != 1)
  {
    Property = CGFontGetProperty();
    if (Property)
    {
      FontSubset = CFRetain(Property);
      if (FontSubset)
      {
        goto LABEL_31;
      }
    }
  }

  v25[0] = 0;
  Name = CGFontIndexSetGetName();
  PostScriptName = CGFontGetPostScriptName();
  asprintf(v25, "%s+%s", Name, PostScriptName);
  *(this + 3) = CGFontIndexMapCreate();
  FontSubset = CGFontCreateFontSubset();
  free(v25[0]);
  v10 = v5 == 1;
  if (!FontSubset)
  {
    v10 = 1;
  }

  if (!v10)
  {
    Count = CGFontIndexSetGetCount();
    v13 = Count;
    if (Count < 0)
    {
      goto LABEL_31;
    }

    v14 = 2 * Count;
    if ((2 * Count) <= 0x1000)
    {
      MEMORY[0x1EEE9AC00](Count, v12);
      v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v15, 2 * v13);
      MEMORY[0x1EEE9AC00](v18, v19);
      v17 = v15;
      bzero(v15, 2 * v13);
    }

    else
    {
      v15 = malloc_type_malloc(2 * Count, 0x1000040BDFB0063uLL);
      v16 = malloc_type_malloc(2 * v13, 0x1000040BDFB0063uLL);
      v17 = v16;
      if (!v15 || !v16)
      {
LABEL_29:
        free(v17);
        free(v15);
        goto LABEL_30;
      }
    }

    CGFontIndexSetGetIndexes();
    CGFontIndexMapGetValues();
    if (!v13)
    {
LABEL_31:
      (*(*v2 + 24))(v25, v2, *this, FontSubset, *(this + 2), *(this + 3));
      v23 = *(this + 1);
      *(this + 1) = v25[0];
      v25[0] = v23;
      if (v23)
      {
        CFRelease(v23);
      }

      CFRelease(FontSubset);
      goto LABEL_34;
    }

    v20 = 0;
    v21 = 0;
    do
    {
      while (v17[v20] == -1)
      {
        v17[v20] = v20 + 1;
        v21 = 1;
        if (v13 - 1 == v20++)
        {
          goto LABEL_27;
        }
      }

      ++v20;
    }

    while (v13 != v20);
    if ((v21 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_27:
    CGFontIndexMapAddIndexes();
LABEL_28:
    if (v14 > 0x1000)
    {
      goto LABEL_29;
    }
  }

LABEL_30:
  if (FontSubset)
  {
    goto LABEL_31;
  }

LABEL_34:
  if (!*(this + 1))
  {
    (*(*v2 + 16))(v25, v2, *this);
    v24 = *(this + 1);
    *(this + 1) = v25[0];
    v25[0] = v24;
    if (v24)
    {
      CFRelease(v24);
    }
  }
}

void sub_195D64A98(_Unwind_Exception *a1)
{
  if (v3 > 0x1000)
  {
    free(v4);
    free(v2);
  }

  CFRelease(v1);
  _Unwind_Resume(a1);
}

void RB::Encoder::FontSet::Font::~Font(RB::Encoder::FontSet::Font *this)
{
  if (*(this + 2))
  {
    CGFontIndexSetRelease();
  }

  if (*(this + 3))
  {
    CGFontIndexMapRelease();
  }

  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

void sub_195D64B3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *RB::Encoder::cgfont_field(RB::Encoder *this, uint64_t a2, CGFont *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (*(this + 8))
  {
    Identifier = CGFontGetIdentifier();
    v6 = *(this + 8);
    v10 = Identifier;
    result = std::__hash_table<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>>>::find<unsigned int>((v6 + 16), &v10);
    if (result)
    {
      v8 = result;
      RB::ProtobufEncoder::encode_varint(this, (8 * a2) | 2);
      RB::ProtobufEncoder::begin_length_delimited(this);
      v9 = v8[8];
      RB::ProtobufEncoder::encode_varint(this, 8uLL);
      RB::ProtobufEncoder::encode_varint(this, v9);
      RB::ProtobufEncoder::end_length_delimited(this);
      RB::Encoder::FontSet::Font::ensure_data((v8 + 3), this);
      return v8[6];
    }
  }

  else
  {
    result = 0;
  }

  *(this + 48) = 1;
  return result;
}

char **RB::ProtobufDecoder::skip_field(char **this, uint64_t a2)
{
  if (!a2)
  {
    return this;
  }

  v2 = a2 & 7;
  if (v2 <= 1)
  {
    if ((a2 & 7) != 0)
    {
      if (v2 != 1)
      {
        return this;
      }

      v3 = *this + 8;
      goto LABEL_9;
    }

    v4 = *this;
    v3 = this[1];
    if (*this < v3)
    {
      do
      {
        v5 = v4 + 1;
        *this = v4 + 1;
        if ((*v4 & 0x80000000) == 0)
        {
          return this;
        }

        ++v4;
      }

      while (v5 != v3);
    }

    *(this + 56) = 1;
LABEL_9:
    *this = v3;
    return this;
  }

  if (v2 == 2)
  {
    return RB::ProtobufDecoder::decode_data(this);
  }

  if (v2 == 5)
  {
    v3 = *this + 4;
    goto LABEL_9;
  }

  return this;
}

uint64_t RB::ProtobufDecoder::BOOL_field(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2 & 7;
  if (v3 > 1)
  {
    if (v3 == 5)
    {
      v4 = *a1 + 4;
      if (v4 <= *(a1 + 8))
      {
        v5 = **a1 == 0;
LABEL_21:
        result = !v5;
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    if (v3 != 2)
    {
      goto LABEL_17;
    }

    result = RB::ProtobufDecoder::begin_packed(a1, a2, 0);
    if (!result)
    {
      return result;
    }
  }

  else if ((a2 & 7) != 0)
  {
    if (v3 == 1)
    {
      v4 = *a1 + 8;
      if (v4 <= *(a1 + 8))
      {
        v5 = **a1 == 0;
        goto LABEL_21;
      }

LABEL_19:
      result = 0;
      goto LABEL_24;
    }

LABEL_17:
    result = 0;
    *(a1 + 56) = 1;
    v4 = *(a1 + 8);
    goto LABEL_24;
  }

  v7 = *a1;
  v4 = *(a1 + 8);
  if (*a1 >= v4)
  {
LABEL_15:
    result = 0;
    *(a1 + 56) = 1;
LABEL_24:
    *a1 = v4;
    return result;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = v7 + 1;
    *a1 = v7 + 1;
    v11 = *v7;
    v9 |= (v11 & 0x7F) << v8;
    if ((v11 & 0x80) == 0)
    {
      return v9 != 0;
    }

    v8 += 7;
    v7 = v10;
    if (v10 == v4)
    {
      goto LABEL_15;
    }
  }
}

double RB::ProtobufDecoder::double_field(uint64_t a1, uint64_t a2)
{
  v2 = 0.0;
  if (a2)
  {
    v4 = a2 & 7;
    if (v4 == 1)
    {
      goto LABEL_6;
    }

    if (v4 == 5)
    {
      v5 = *a1 + 4;
      if (v5 <= *(a1 + 8))
      {
        v2 = **a1;
      }

      goto LABEL_11;
    }

    if (v4 != 2)
    {
      *(a1 + 56) = 1;
      v5 = *(a1 + 8);
LABEL_11:
      *a1 = v5;
      return v2;
    }

    if (RB::ProtobufDecoder::begin_packed(a1, a2, 1uLL))
    {
LABEL_6:
      v5 = *a1 + 8;
      if (v5 <= *(a1 + 8))
      {
        v2 = **a1;
      }

      goto LABEL_11;
    }
  }

  return v2;
}

__n128 RB::ProtobufDecoder::float2_field(RB::ProtobufDecoder *this, char a2, __n128 a3)
{
  if ((a2 & 7) == 2)
  {
    RB::ProtobufDecoder::begin_message(this);
    field = RB::ProtobufDecoder::next_field(this);
    if (field)
    {
      v6 = field;
      *&v5 = 0;
      v11 = v5;
      while (1)
      {
        if ((v6 >> 3) == 2)
        {
          v9 = RB::ProtobufDecoder::float_field(this, v6);
          v8 = v11;
          *(&v8 + 1) = v9;
        }

        else
        {
          if ((v6 >> 3) != 1)
          {
            RB::ProtobufDecoder::skip_field(this, v6);
            goto LABEL_10;
          }

          v7 = RB::ProtobufDecoder::float_field(this, v6);
          v8 = v11;
          *&v8 = v7;
        }

        v11 = v8;
LABEL_10:
        v6 = RB::ProtobufDecoder::next_field(this);
        if (!v6)
        {
          goto LABEL_13;
        }
      }
    }

    *&v5 = 0;
    v11 = v5;
LABEL_13:
    if ((*(this + 56) & 1) == 0 && *this <= *(this + 1))
    {
      *(this + 1) = *(*(this + 4) + 8 * *(this + 5) - 8);
    }

    --*(this + 5);
  }

  else
  {
    *(this + 56) = 1;
    *this = *(this + 1);
    a3.n128_u64[0] = 0;
    return a3;
  }

  return v11;
}

__n128 RB::ProtobufDecoder::float3_field(RB::ProtobufDecoder *this, char a2)
{
  if ((a2 & 7) == 2)
  {
    RB::ProtobufDecoder::begin_message(this);
    field = RB::ProtobufDecoder::next_field(this);
    if (field)
    {
      v4 = field;
      v11 = 0u;
      while (1)
      {
        v5 = v4 >> 3;
        if ((v4 >> 3) == 3)
        {
          v9 = RB::ProtobufDecoder::float_field(this, v4);
          v7 = v11;
          *(&v7 + 2) = v9;
        }

        else if (v5 == 2)
        {
          v8 = RB::ProtobufDecoder::float_field(this, v4);
          v7 = v11;
          *(&v7 + 1) = v8;
        }

        else
        {
          if (v5 != 1)
          {
            RB::ProtobufDecoder::skip_field(this, v4);
            goto LABEL_12;
          }

          v6 = RB::ProtobufDecoder::float_field(this, v4);
          v7 = v11;
          *&v7 = v6;
        }

        v11 = v7;
LABEL_12:
        v4 = RB::ProtobufDecoder::next_field(this);
        if (!v4)
        {
          goto LABEL_15;
        }
      }
    }

    v11 = 0u;
LABEL_15:
    if ((*(this + 56) & 1) == 0 && *this <= *(this + 1))
    {
      *(this + 1) = *(*(this + 4) + 8 * *(this + 5) - 8);
    }

    --*(this + 5);
  }

  else
  {
    *(this + 56) = 1;
    *this = *(this + 1);
    return 0;
  }

  return v11;
}

__n128 RB::ProtobufDecoder::float4_field(RB::ProtobufDecoder *this, char a2)
{
  if ((a2 & 7) == 2)
  {
    RB::ProtobufDecoder::begin_message(this);
    field = RB::ProtobufDecoder::next_field(this);
    if (field)
    {
      v4 = field;
      v12 = 0u;
      while (1)
      {
        v5 = v4 >> 3;
        if ((v4 >> 3) > 2)
        {
          if (v5 == 3)
          {
            v10 = RB::ProtobufDecoder::float_field(this, v4);
            v7 = v12;
            *(&v7 + 2) = v10;
            goto LABEL_14;
          }

          if (v5 == 4)
          {
            v8 = RB::ProtobufDecoder::float_field(this, v4);
            v7 = v12;
            *(&v7 + 3) = v8;
            goto LABEL_14;
          }
        }

        else
        {
          if (v5 == 1)
          {
            v9 = RB::ProtobufDecoder::float_field(this, v4);
            v7 = v12;
            *&v7 = v9;
            goto LABEL_14;
          }

          if (v5 == 2)
          {
            v6 = RB::ProtobufDecoder::float_field(this, v4);
            v7 = v12;
            *(&v7 + 1) = v6;
LABEL_14:
            v12 = v7;
            goto LABEL_15;
          }
        }

        RB::ProtobufDecoder::skip_field(this, v4);
LABEL_15:
        v4 = RB::ProtobufDecoder::next_field(this);
        if (!v4)
        {
          goto LABEL_18;
        }
      }
    }

    v12 = 0u;
LABEL_18:
    if ((*(this + 56) & 1) == 0 && *this <= *(this + 1))
    {
      *(this + 1) = *(*(this + 4) + 8 * *(this + 5) - 8);
    }

    --*(this + 5);
  }

  else
  {
    *(this + 56) = 1;
    *this = *(this + 1);
    return 0;
  }

  return v12;
}

RB::ProtobufDecoder *RB::Decoder::push_shared(RB::ProtobufDecoder *this, char a2)
{
  v2 = this;
  if ((a2 & 7) != 2)
  {
    *(this + 56) = 1;
    *this = *(this + 1);
    return this;
  }

  RB::ProtobufDecoder::begin_message(this);
  this = RB::ProtobufDecoder::next_field(v2);
  if (!this)
  {
    goto LABEL_31;
  }

  v3 = this;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = v3 >> 3;
    if ((v3 >> 3) <= 3)
    {
      if (v7 == 1)
      {
        v4 = RB::ProtobufDecoder::uint_field(v2, v3);
        goto LABEL_21;
      }

      if (v7 != 2)
      {
        if (v7 == 3)
        {
          v11 = *v2;
          RB::ProtobufDecoder::skip_field(v2, v3);
          v6 = v3;
          v5 = 3;
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v11 = *v2;
      RB::ProtobufDecoder::skip_field(v2, v3);
      v6 = v3;
      v5 = 2;
    }

    else if (v7 > 5)
    {
      if (v7 != 6)
      {
        if (v7 == 7)
        {
          v11 = *v2;
          RB::ProtobufDecoder::skip_field(v2, v3);
          v6 = v3;
          v5 = 7;
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v11 = *v2;
      RB::ProtobufDecoder::skip_field(v2, v3);
      v6 = v3;
      v5 = 6;
    }

    else
    {
      if (v7 != 4)
      {
        if (v7 == 5)
        {
          v11 = *v2;
          RB::ProtobufDecoder::skip_field(v2, v3);
          v6 = v3;
          v5 = 5;
          goto LABEL_21;
        }

LABEL_17:
        RB::ProtobufDecoder::skip_field(v2, v3);
        goto LABEL_21;
      }

      v11 = *v2;
      RB::ProtobufDecoder::skip_field(v2, v3);
      v6 = v3;
      v5 = 4;
    }

LABEL_21:
    this = RB::ProtobufDecoder::next_field(v2);
    v3 = this;
  }

  while (this);
  if (v5)
  {
    v8 = *(v2 + 19);
    if (*(v2 + 212) == 1)
    {
      if (v8)
      {
        v9 = v4 > *(*(v2 + 18) + 40 * v8 - 40);
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }

    *(v2 + 212) = v9;
    if (*(v2 + 20) < (v8 + 1))
    {
      this = RB::vector<RB::Decoder::SharedField,0ul,unsigned long>::reserve_slow(v2 + 144, v8 + 1);
      v8 = *(v2 + 19);
    }

    v10 = *(v2 + 18) + 40 * v8;
    *v10 = v4;
    *(v10 + 8) = v5;
    *(v10 + 16) = v11;
    *(v10 + 32) = v6;
    ++*(v2 + 19);
  }

LABEL_31:
  if ((*(v2 + 56) & 1) == 0 && *v2 <= *(v2 + 1))
  {
    *(v2 + 1) = *(*(v2 + 4) + 8 * *(v2 + 5) - 8);
  }

  --*(v2 + 5);
  return this;
}

void RB::Decoder::saved_shared_field(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  if ((*(a1 + 212) & 1) == 0)
  {
    v9 = *(a1 + 144);
    v10 = *(a1 + 152);
    v11 = 126 - 2 * __clz(v10);
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,RB::Decoder::saved_shared_field(RB::Encoder::SharedType,unsigned long)::$_0 &,RB::Decoder::SharedField *,false>(v9, v9 + 40 * v10, v12, 1, a5);
    *(a1 + 212) = 1;
  }

  v13 = *(a1 + 144);
  v14 = *(a1 + 152);
  v15 = &v13[5 * v14];
  while (v14)
  {
    v16 = v14 >> 1;
    v17 = &v13[5 * (v14 >> 1)];
    v19 = *v17;
    v18 = v17 + 5;
    v14 += ~(v14 >> 1);
    if (v19 < a3)
    {
      v13 = v18;
    }

    else
    {
      v14 = v16;
    }
  }

  if (v13 != v15 && *v13 == a3 && v13[1] == a2)
  {
    v20 = *(v13 + 1);
    *(a4 + 16) = v13[4];
    *a4 = v20;
  }

  else
  {
    *(a4 + 16) = 0;
  }
}

void *RB::Decoder::decode_image(RB::Decoder *this)
{
  v2 = *(this + 9);
  if (v2 && (v3 = RB::ProtobufDecoder::next_field(this)) != 0)
  {
    field = v3;
    v5 = 0;
    v6 = 0;
    do
    {
      if ((field & 0x7FFFFFFF8) == 8)
      {
        if ((field & 7) == 2)
        {
          v7 = RB::ProtobufDecoder::decode_data(this);
          v9 = v8;
        }

        else
        {
          v7 = 0;
          v9 = 0;
          *(this + 56) = 1;
          *this = *(this + 1);
        }

        (*(*v2 + 16))(&v12, v2, v7, v9);
        v10 = cf;
        if (cf)
        {
          v5 = v12;
          cf = 0;
          RB::ObjectTable::adopt((this + 168), v10);
          if (cf)
          {
            CFRelease(cf);
          }

          v6 = v10;
        }

        else
        {
          *(this + 56) = 1;
          *this = *(this + 1);
        }
      }

      else
      {
        RB::ProtobufDecoder::skip_field(this, field);
      }

      field = RB::ProtobufDecoder::next_field(this);
    }

    while (field);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  result = RB::Heap::emplace<RBImage>(*(this + 8));
  *result = v5;
  result[1] = v6;
  return result;
}

void sub_195D65668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::Decoder::image_field(__n128 *this, char a2)
{
  if (!this[4].n128_u64[1])
  {
    return 0;
  }

  if ((a2 & 7) != 2)
  {
    goto LABEL_29;
  }

  RB::ProtobufDecoder::begin_message(this);
  field = RB::ProtobufDecoder::next_field(this);
  if (field)
  {
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
        v5 = RB::ProtobufDecoder::uint_field(this->n128_u64, v4);
      }

      else
      {
        RB::ProtobufDecoder::skip_field(this, v4);
      }

      v4 = RB::ProtobufDecoder::next_field(this);
    }

    while (v4);
    if (v5 >> 61)
    {
      v7 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v15[0] = 0;
  v7 = RB::UntypedTable::lookup(&this[5], (v5 | 0x4000000000000000), v15);
  if ((v5 | 0x4000000000000000) != v15[0])
  {
    v9 = v13;
    if (!v6)
    {
      RB::Decoder::saved_shared_field(this, 2, v5, v15, v13);
      LOBYTE(v6) = v16;
      if (!v16)
      {
LABEL_22:
        RB::UntypedTable::insert(&this[5], (v5 | 0x4000000000000000), v7);
        goto LABEL_23;
      }

      v9 = *v15;
    }

    v10 = *this;
    *this = v9;
    if ((v6 & 7) == 2)
    {
      v14 = v10;
      RB::ProtobufDecoder::begin_message(this);
      v11 = RB::Decoder::decode_image(this);
      v10 = v14;
      v7 = v11;
      --this[2].n128_u64[1];
    }

    else
    {
      this[3].n128_u8[8] = 1;
    }

    *this = v10;
    goto LABEL_22;
  }

LABEL_23:
  if ((this[3].n128_u8[8] & 1) == 0 && this->n128_u64[0] <= this->n128_u64[1])
  {
    this->n128_u64[1] = *(this[2].n128_u64[0] + 8 * this[2].n128_u64[1] - 8);
  }

  --this[2].n128_u64[1];
  if (!v7)
  {
LABEL_29:
    result = 0;
    v12 = this->n128_u64[1];
    this[3].n128_u8[8] = 1;
    this->n128_u64[0] = v12;
    return result;
  }

  return *v7;
}

CFTypeRef RB::Decoder::decode_cgfont(RB::Decoder *this)
{
  v1 = *(this + 9);
  if (!v1)
  {
    return 0;
  }

  field = RB::ProtobufDecoder::next_field(this);
  if (!field)
  {
    return 0;
  }

  v4 = field;
  v5 = 0;
  do
  {
    if ((v4 & 0x7FFFFFFF8) == 8)
    {
      if ((v4 & 7) == 2)
      {
        v6 = RB::ProtobufDecoder::decode_data(this);
        v8 = v7;
      }

      else
      {
        v6 = 0;
        v8 = 0;
        *(this + 56) = 1;
        *this = *(this + 1);
      }

      (*(*v1 + 8))(&cf, v1, v6, v8);
      v9 = cf;
      if (cf)
      {
        cf = 0;
        RB::ObjectTable::adopt((this + 168), v9);
        if (cf)
        {
          CFRelease(cf);
        }

        v5 = v9;
      }

      else
      {
        *(this + 56) = 1;
        *this = *(this + 1);
      }
    }

    else
    {
      RB::ProtobufDecoder::skip_field(this, v4);
    }

    v4 = RB::ProtobufDecoder::next_field(this);
  }

  while (v4);
  return v5;
}

void sub_195D65990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void *RB::Decoder::cgfont_field(__n128 *this, char a2)
{
  if (!this[4].n128_u64[1])
  {
    return 0;
  }

  if ((a2 & 7) != 2)
  {
LABEL_28:
    v7 = 0;
    v12 = this->n128_u64[1];
    this[3].n128_u8[8] = 1;
    this->n128_u64[0] = v12;
    return v7;
  }

  RB::ProtobufDecoder::begin_message(this);
  field = RB::ProtobufDecoder::next_field(this);
  if (!field)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_15;
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
      v5 = RB::ProtobufDecoder::uint_field(this->n128_u64, v4);
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
LABEL_15:
    v15[0] = 0;
    v7 = RB::UntypedTable::lookup(&this[5], (v5 | 0x6000000000000000), v15);
    if ((v5 | 0x6000000000000000) == v15[0])
    {
      goto LABEL_23;
    }

    v8 = v13;
    if (!v6)
    {
      RB::Decoder::saved_shared_field(this, 3, v5, v15, v13);
      LOBYTE(v6) = v16;
      if (!v16)
      {
LABEL_22:
        RB::UntypedTable::insert(&this[5], (v5 | 0x6000000000000000), v7);
        goto LABEL_23;
      }

      v8 = *v15;
    }

    v9 = *this;
    *this = v8;
    if ((v6 & 7) == 2)
    {
      v14 = v9;
      RB::ProtobufDecoder::begin_message(this);
      v10 = RB::Decoder::decode_cgfont(this);
      v9 = v14;
      v7 = v10;
      --this[2].n128_u64[1];
    }

    else
    {
      this[3].n128_u8[8] = 1;
    }

    *this = v9;
    goto LABEL_22;
  }

  v7 = 0;
LABEL_23:
  if ((this[3].n128_u8[8] & 1) == 0 && this->n128_u64[0] <= this->n128_u64[1])
  {
    this->n128_u64[1] = *(this[2].n128_u64[0] + 8 * this[2].n128_u64[1] - 8);
  }

  --this[2].n128_u64[1];
  if (!v7)
  {
    goto LABEL_28;
  }

  return v7;
}

uint64_t RB::Refcount<RB::Encoder::FontSet,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return RB::Encoder::prepare_glyphs(result);
  }

  return result;
}

uint64_t RB::Refcount<RB::Encoder::FontSet,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void RB::Encoder::FontSet::~FontSet(RB::Encoder::FontSet *this)
{
  *this = &unk_1F0A36F40;
  std::__hash_table<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>>>::~__hash_table(this + 16);
}

{
  *this = &unk_1F0A36F40;
  std::__hash_table<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>>>::~__hash_table(this + 16);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      RB::Encoder::FontSet::Font::~Font((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

__n128 std::__introsort<std::_ClassicAlgPolicy,RB::Decoder::saved_shared_field(RB::Encoder::SharedType,unsigned long)::$_0 &,RB::Decoder::SharedField *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
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
        v292 = *(v12 + 32);
        v228 = *v12;
        v261 = *(v12 + 16);
        v127 = *v121;
        v128 = *(v121 + 16);
        *(v12 + 32) = *(v121 + 32);
        *v12 = v127;
        *(v12 + 16) = v128;
        result = v228;
        v129 = v261;
        *(v121 + 32) = v292;
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
            v296 = *(v12 + 32);
            v233 = *v12;
            v267 = *(v12 + 16);
            v186 = *(v12 + 56);
            *v12 = *v123;
            *(v12 + 16) = v186;
            *(v12 + 32) = *(v12 + 72);
            result = v233;
            *v123 = v233;
            *(v12 + 56) = v267;
            *(v12 + 72) = v296;
          }
        }
      }

      else
      {
        if (v132 < v130)
        {
          v293 = *(v12 + 32);
          v229 = *v12;
          v262 = *(v12 + 16);
          v133 = *(v12 + 96);
          *v12 = *v131;
          *(v12 + 16) = v133;
          *(v12 + 32) = *(v12 + 112);
          result = v229;
          *v131 = v229;
          *(v12 + 96) = v262;
          v134 = v293;
          goto LABEL_187;
        }

        v299 = *(v12 + 32);
        v236 = *v12;
        v270 = *(v12 + 16);
        v194 = *(v12 + 56);
        *v12 = *v123;
        *(v12 + 16) = v194;
        *(v12 + 32) = *(v12 + 72);
        result = v236;
        *v123 = v236;
        *(v12 + 56) = v270;
        *(v12 + 72) = v299;
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

      if (v9->n128_u64[0] >= v131->n128_u64[0])
      {
        return result;
      }

      result = *v131;
      v271 = *(v12 + 96);
      v300 = *(v12 + 112);
      v198 = *v9;
      v197 = *(a2 - 24);
      *(v12 + 112) = *(a2 - 8);
      *v131 = v198;
      *(v12 + 96) = v197;
      *(a2 - 8) = v300;
      *v9 = result;
      *(a2 - 24) = v271;
      if (v131->n128_u64[0] >= *v123)
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
        v301 = *(v12 + 32);
        v237 = *v12;
        v272 = *(v12 + 16);
        v202 = *(v123 + 16);
        *v12 = *v123;
        *(v12 + 16) = v202;
        *(v12 + 32) = *(v123 + 32);
        result = v237;
        *v123 = v237;
        *(v123 + 16) = v272;
        *(v123 + 32) = v301;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,RB::Decoder::saved_shared_field(RB::Encoder::SharedType,unsigned long)::$_0 &,RB::Decoder::SharedField *,0>(v12, (v12 + 40), (v12 + 80), v12 + 120, a2 - 40, result).n128_u64[0];
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
              v230 = *(v139 + 48);
              v263 = *(v139 + 64);
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
              result = v230;
              *(v145 + 24) = v263;
              *(v145 + 8) = v230;
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
            v234 = *(a1 + 48);
            v268 = *(a1 + 64);
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
            result = v234;
            *(v135 + 24) = v268;
            *(v135 + 8) = v234;
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
              v231 = *(v153 + 8);
              v264 = *(v153 + 24);
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
              *(v153 + 24) = v264;
              *(v153 + 8) = v231;
            }
          }

          v147 = v148 - 1;
        }

        while (v148);
        v161 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
        do
        {
          v162 = 0;
          v294 = *(v12 + 32);
          v232 = *v12;
          v265 = *(v12 + 16);
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
            result = v232;
            *(v165 + 32) = v294;
            *v165 = v232;
            *(v165 + 16) = v265;
          }

          else
          {
            v171 = *a2;
            v172 = *(a2 + 16);
            *(v165 + 32) = *(a2 + 32);
            *v165 = v171;
            *(v165 + 16) = v172;
            result = v232;
            *(a2 + 32) = v294;
            *a2 = v232;
            *(a2 + 16) = v265;
            v173 = v165 - v12 + 40;
            if (v173 >= 41)
            {
              v174 = (-2 - 0x3333333333333333 * (v173 >> 3)) >> 1;
              v175 = v12 + 40 * v174;
              v176 = *v165;
              if (*v175 < *v165)
              {
                v205 = *(v165 + 8);
                v208 = *(v165 + 24);
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
                *(v165 + 24) = v208;
                *(v165 + 8) = v205;
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
    v17 = v9->n128_u64[0];
    if (v13 >= 0x1401)
    {
      v18 = *v16;
      if (*v16 >= *v12)
      {
        if (v17 < v18)
        {
          v275 = *(v16 + 32);
          v211 = *v16;
          v240 = *(v16 + 16);
          v24 = *v9;
          v25 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v24;
          *(v16 + 16) = v25;
          *(a2 - 8) = v275;
          *v9 = v211;
          *(a2 - 24) = v240;
          if (*v16 < *v12)
          {
            v276 = *(v12 + 32);
            v212 = *v12;
            v241 = *(v12 + 16);
            v26 = *v16;
            v27 = *(v16 + 16);
            *(v12 + 32) = *(v16 + 32);
            *v12 = v26;
            *(v12 + 16) = v27;
            *(v16 + 32) = v276;
            *v16 = v212;
            *(v16 + 16) = v241;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v273 = *(v12 + 32);
          v209 = *v12;
          v238 = *(v12 + 16);
          v19 = *v9;
          v20 = *(a2 - 24);
          *(v12 + 32) = *(a2 - 8);
          *v12 = v19;
          *(v12 + 16) = v20;
          goto LABEL_26;
        }

        v279 = *(v12 + 32);
        v215 = *v12;
        v244 = *(v12 + 16);
        v32 = *v16;
        v33 = *(v16 + 16);
        *(v12 + 32) = *(v16 + 32);
        *v12 = v32;
        *(v12 + 16) = v33;
        *(v16 + 32) = v279;
        *v16 = v215;
        *(v16 + 16) = v244;
        if (v9->n128_u64[0] < *v16)
        {
          v273 = *(v16 + 32);
          v209 = *v16;
          v238 = *(v16 + 16);
          v34 = *v9;
          v35 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v34;
          *(v16 + 16) = v35;
LABEL_26:
          *(a2 - 8) = v273;
          *v9 = v209;
          *(a2 - 24) = v238;
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
          v280 = *(v38 + 32);
          v216 = *v38;
          v245 = *(v38 + 16);
          v47 = *v10;
          v48 = *(a2 - 64);
          *(v38 + 32) = *(a2 - 48);
          *v38 = v47;
          *(v38 + 16) = v48;
          *(a2 - 48) = v280;
          *v10 = v216;
          *(a2 - 64) = v245;
          if (*v38 < *v36)
          {
            v49 = *v36;
            v246 = *(v12 + 56);
            v50 = *(v12 + 72);
            v52 = *v38;
            v51 = *(v38 + 16);
            *(v12 + 72) = *(v38 + 32);
            *v36 = v52;
            *(v12 + 56) = v51;
            *(v38 + 32) = v50;
            *v38 = v49;
            *(v38 + 16) = v246;
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
        v248 = *(v12 + 56);
        v58 = *(v12 + 72);
        v60 = *v38;
        v59 = *(v38 + 16);
        *(v12 + 72) = *(v38 + 32);
        *v36 = v60;
        *(v12 + 56) = v59;
        *(v38 + 32) = v58;
        *v38 = v57;
        *(v38 + 16) = v248;
        if (*v10 < *v38)
        {
          v282 = *(v38 + 32);
          v218 = *v38;
          v249 = *(v38 + 16);
          v61 = *v10;
          v62 = *(a2 - 64);
          *(v38 + 32) = *(a2 - 48);
          *v38 = v61;
          *(v38 + 16) = v62;
          v42 = v218;
          v43 = v249;
          *(a2 - 48) = v282;
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
          v283 = *(v65 + 32);
          v219 = *v65;
          v250 = *(v65 + 16);
          v74 = *v11;
          v75 = *(a2 - 104);
          *(v65 + 32) = *(a2 - 88);
          *v65 = v74;
          *(v65 + 16) = v75;
          *(a2 - 88) = v283;
          *v11 = v219;
          *(a2 - 104) = v250;
          if (*v65 < *v63)
          {
            v76 = *v63;
            v251 = *(v12 + 96);
            v77 = *(v12 + 112);
            v79 = *v65;
            v78 = *(v65 + 16);
            *(v12 + 112) = *(v65 + 32);
            *v63 = v79;
            *(v12 + 96) = v78;
            *(v65 + 32) = v77;
            *v65 = v76;
            *(v65 + 16) = v251;
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
        v252 = *(v12 + 96);
        v81 = *(v12 + 112);
        v83 = *v65;
        v82 = *(v65 + 16);
        *(v12 + 112) = *(v65 + 32);
        *v63 = v83;
        *(v12 + 96) = v82;
        *(v65 + 32) = v81;
        *v65 = v80;
        *(v65 + 16) = v252;
        if (*v11 < *v65)
        {
          v284 = *(v65 + 32);
          v220 = *v65;
          v253 = *(v65 + 16);
          v84 = *v11;
          v85 = *(a2 - 104);
          *(v65 + 32) = *(a2 - 88);
          *v65 = v84;
          *(v65 + 16) = v85;
          v69 = v220;
          v70 = v253;
          *(a2 - 88) = v284;
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
          v286 = *(v16 + 32);
          v222 = *v16;
          v255 = *(v16 + 16);
          v89 = *(v65 + 16);
          *v16 = *v65;
          *(v16 + 16) = v89;
          *(v16 + 32) = *(v65 + 32);
          *(v65 + 32) = v286;
          *v65 = v222;
          *(v65 + 16) = v255;
          if (*v16 < *v38)
          {
            v287 = *(v38 + 32);
            v223 = *v38;
            v256 = *(v38 + 16);
            v90 = *(v16 + 16);
            *v38 = *v16;
            *(v38 + 16) = v90;
            *(v38 + 32) = *(v16 + 32);
            *(v16 + 32) = v287;
            *v16 = v223;
            *(v16 + 16) = v256;
          }
        }
      }

      else
      {
        if (v87 < v86)
        {
          v285 = *(v38 + 32);
          v221 = *v38;
          v254 = *(v38 + 16);
          v88 = *(v65 + 16);
          *v38 = *v65;
          *(v38 + 16) = v88;
          *(v38 + 32) = *(v65 + 32);
          goto LABEL_56;
        }

        v288 = *(v38 + 32);
        v224 = *v38;
        v257 = *(v38 + 16);
        v91 = *(v16 + 16);
        *v38 = *v16;
        *(v38 + 16) = v91;
        *(v38 + 32) = *(v16 + 32);
        *(v16 + 32) = v288;
        *v16 = v224;
        *(v16 + 16) = v257;
        if (*v65 < *v16)
        {
          v285 = *(v16 + 32);
          v221 = *v16;
          v254 = *(v16 + 16);
          v92 = *(v65 + 16);
          *v16 = *v65;
          *(v16 + 16) = v92;
          *(v16 + 32) = *(v65 + 32);
LABEL_56:
          *(v65 + 32) = v285;
          *v65 = v221;
          *(v65 + 16) = v254;
        }
      }

      v289 = *(v12 + 32);
      v225 = *v12;
      v258 = *(v12 + 16);
      v93 = *v16;
      v94 = *(v16 + 16);
      *(v12 + 32) = *(v16 + 32);
      *v12 = v93;
      *(v12 + 16) = v94;
      *(v16 + 32) = v289;
      *v16 = v225;
      *(v16 + 16) = v258;
      goto LABEL_58;
    }

    v21 = *v12;
    if (*v12 >= *v16)
    {
      if (v17 < v21)
      {
        v277 = *(v12 + 32);
        v213 = *v12;
        v242 = *(v12 + 16);
        v28 = *v9;
        v29 = *(a2 - 24);
        *(v12 + 32) = *(a2 - 8);
        *v12 = v28;
        *(v12 + 16) = v29;
        *(a2 - 8) = v277;
        *v9 = v213;
        *(a2 - 24) = v242;
        if (*v12 < *v16)
        {
          v278 = *(v16 + 32);
          v214 = *v16;
          v243 = *(v16 + 16);
          v30 = *v12;
          v31 = *(v12 + 16);
          *(v16 + 32) = *(v12 + 32);
          *v16 = v30;
          *(v16 + 16) = v31;
          *(v12 + 32) = v278;
          *v12 = v214;
          *(v12 + 16) = v243;
        }
      }

      goto LABEL_58;
    }

    if (v17 >= v21)
    {
      v281 = *(v16 + 32);
      v217 = *v16;
      v247 = *(v16 + 16);
      v53 = *v12;
      v54 = *(v12 + 16);
      *(v16 + 32) = *(v12 + 32);
      *v16 = v53;
      *(v16 + 16) = v54;
      *(v12 + 32) = v281;
      *v12 = v217;
      *(v12 + 16) = v247;
      if (v9->n128_u64[0] >= *v12)
      {
        goto LABEL_58;
      }

      v274 = *(v12 + 32);
      v210 = *v12;
      v239 = *(v12 + 16);
      v55 = *v9;
      v56 = *(a2 - 24);
      *(v12 + 32) = *(a2 - 8);
      *v12 = v55;
      *(v12 + 16) = v56;
    }

    else
    {
      v274 = *(v16 + 32);
      v210 = *v16;
      v239 = *(v16 + 16);
      v22 = *v9;
      v23 = *(a2 - 24);
      *(v16 + 32) = *(a2 - 8);
      *v16 = v22;
      *(v16 + 16) = v23;
    }

    *(a2 - 8) = v274;
    *v9 = v210;
    *(a2 - 24) = v239;
LABEL_58:
    --a3;
    v95 = *v12;
    if ((a4 & 1) != 0 || *(v12 - 40) < v95)
    {
      v96 = 0;
      v203 = *(v12 + 8);
      v206 = *(v12 + 24);
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
          v290 = *(v12 + 32);
          v226 = *v12;
          v259 = *(v12 + 16);
          v103 = *v102;
          v104 = *(v102 + 16);
          *(v12 + 32) = *(v102 + 32);
          *v12 = v103;
          *(v12 + 16) = v104;
          *(v102 + 32) = v290;
          *v102 = v226;
          *(v102 + 16) = v259;
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
      *(v12 - 32) = v203;
      *(v12 - 16) = v206;
      if (v98 < v99)
      {
        goto LABEL_79;
      }

      v109 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,RB::Decoder::saved_shared_field(RB::Encoder::SharedType,unsigned long)::$_0 &,RB::Decoder::SharedField *>(a1, (v12 - 40), v203);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,RB::Decoder::saved_shared_field(RB::Encoder::SharedType,unsigned long)::$_0 &,RB::Decoder::SharedField *>(v12, a2, v110))
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
        std::__introsort<std::_ClassicAlgPolicy,RB::Decoder::saved_shared_field(RB::Encoder::SharedType,unsigned long)::$_0 &,RB::Decoder::SharedField *,false>(a1, v12 - 40, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v204 = *(v12 + 8);
      v207 = *(v12 + 24);
      if (v95 >= v9->n128_u64[0])
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
        v291 = *(v12 + 32);
        v227 = *v12;
        v260 = *(v12 + 16);
        v115 = *v113;
        v116 = *(v113 + 16);
        *(v12 + 32) = *(v113 + 32);
        *v12 = v115;
        *(v12 + 16) = v116;
        *(v113 + 32) = v291;
        *v113 = v227;
        *(v113 + 16) = v260;
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
      *(v12 - 32) = v204;
      *(v12 - 16) = v207;
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
    v266 = *(v12 + 56);
    v295 = *(v12 + 72);
    v182 = *v121;
    v181 = *(v121 + 16);
    *(v12 + 72) = *(v121 + 32);
    *v123 = v182;
    *(v12 + 56) = v181;
    *(v121 + 32) = v295;
    *v121 = result;
    *(v121 + 16) = v266;
    goto LABEL_191;
  }

  if (v125 < v124)
  {
    goto LABEL_106;
  }

  v297 = *(v12 + 32);
  v235 = *v12;
  v269 = *(v12 + 16);
  v191 = *(v12 + 56);
  *v12 = *v123;
  *(v12 + 16) = v191;
  *(v12 + 32) = *(v12 + 72);
  result = v235;
  *v123 = v235;
  *(v12 + 56) = v269;
  *(v12 + 72) = v297;
  if (*v121 < *(v12 + 40))
  {
    result = *v123;
    v129 = *(v12 + 56);
    v298 = *(v12 + 72);
    v193 = *v121;
    v192 = *(v121 + 16);
    *(v12 + 72) = *(v121 + 32);
    *v123 = v193;
    *(v12 + 56) = v192;
    *(v121 + 32) = v298;
    goto LABEL_107;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,RB::Decoder::saved_shared_field(RB::Encoder::SharedType,unsigned long)::$_0 &,RB::Decoder::SharedField *,0>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = *a2;
  v7 = *a3;
  if (*a2 >= *a1)
  {
    if (v7 < v6)
    {
      result = *a2;
      v12 = *(a2 + 1);
      v13 = a2[4];
      v14 = a3[4];
      v15 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v15;
      a2[4] = v14;
      a3[4] = v13;
      *a3 = result;
      *(a3 + 1) = v12;
      if (*a2 < *a1)
      {
        result = *a1;
        v16 = *(a1 + 16);
        v17 = *(a1 + 32);
        v18 = a2[4];
        v19 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *(a1 + 32) = v18;
        a2[4] = v17;
        *a2 = result;
        *(a2 + 1) = v16;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      v8 = *(a1 + 16);
      v9 = *(a1 + 32);
      v10 = a3[4];
      v11 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 16) = v11;
      *(a1 + 32) = v10;
LABEL_9:
      a3[4] = v9;
      *a3 = result;
      *(a3 + 1) = v8;
      goto LABEL_10;
    }

    result = *a1;
    v20 = *(a1 + 16);
    v21 = *(a1 + 32);
    v22 = a2[4];
    v23 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a1 + 32) = v22;
    a2[4] = v21;
    *a2 = result;
    *(a2 + 1) = v20;
    if (*a3 < *a2)
    {
      result = *a2;
      v8 = *(a2 + 1);
      v9 = a2[4];
      v24 = a3[4];
      v25 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v25;
      a2[4] = v24;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    v26 = *(a3 + 1);
    v27 = a3[4];
    v28 = *(a4 + 32);
    v29 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 1) = v29;
    a3[4] = v28;
    *(a4 + 32) = v27;
    *a4 = result;
    *(a4 + 16) = v26;
    if (*a3 < *a2)
    {
      result = *a2;
      v30 = *(a2 + 1);
      v31 = a2[4];
      v32 = a3[4];
      v33 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v33;
      a2[4] = v32;
      a3[4] = v31;
      *a3 = result;
      *(a3 + 1) = v30;
      if (*a2 < *a1)
      {
        result = *a1;
        v34 = *(a1 + 16);
        v35 = *(a1 + 32);
        v36 = a2[4];
        v37 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v37;
        *(a1 + 32) = v36;
        a2[4] = v35;
        *a2 = result;
        *(a2 + 1) = v34;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    v38 = *(a4 + 16);
    v39 = *(a4 + 32);
    v40 = *(a5 + 32);
    v41 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v41;
    *(a4 + 32) = v40;
    *(a5 + 32) = v39;
    *a5 = result;
    *(a5 + 16) = v38;
    if (*a4 < *a3)
    {
      result = *a3;
      v42 = *(a3 + 1);
      v43 = a3[4];
      v44 = *(a4 + 32);
      v45 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 1) = v45;
      a3[4] = v44;
      *(a4 + 32) = v43;
      *a4 = result;
      *(a4 + 16) = v42;
      if (*a3 < *a2)
      {
        result = *a2;
        v46 = *(a2 + 1);
        v47 = a2[4];
        v48 = a3[4];
        v49 = *(a3 + 1);
        *a2 = *a3;
        *(a2 + 1) = v49;
        a2[4] = v48;
        a3[4] = v47;
        *a3 = result;
        *(a3 + 1) = v46;
        if (*a2 < *a1)
        {
          result = *a1;
          v50 = *(a1 + 16);
          v51 = *(a1 + 32);
          v52 = a2[4];
          v53 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 16) = v53;
          *(a1 + 32) = v52;
          a2[4] = v51;
          *a2 = result;
          *(a2 + 1) = v50;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,RB::Decoder::saved_shared_field(RB::Encoder::SharedType,unsigned long)::$_0 &,RB::Decoder::SharedField *>(uint64_t a1, __int128 *a2, __n128 a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a1 + 40;
      v7 = *(a1 + 40);
      v9 = *(a2 - 5);
      v4 = a2 - 40;
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 < v7)
        {
LABEL_12:
          v10 = *a1;
          v11 = *(a1 + 16);
          v12 = *(a1 + 32);
          v13 = *(v4 + 32);
          v14 = *(v4 + 16);
          *a1 = *v4;
          *(a1 + 16) = v14;
          *(a1 + 32) = v13;
          *(v4 + 32) = v12;
LABEL_13:
          result = 1;
          *v4 = v10;
          *(v4 + 16) = v11;
          return result;
        }

        v55 = *(a1 + 32);
        v57 = *a1;
        v56 = *(a1 + 16);
        v58 = *(a1 + 56);
        *a1 = *v6;
        *(a1 + 16) = v58;
        *(a1 + 32) = *(a1 + 72);
        *v6 = v57;
        *(a1 + 56) = v56;
        *(a1 + 72) = v55;
        if (*v4 < *(a1 + 40))
        {
          v10 = *v6;
          v11 = *(a1 + 56);
          v59 = *(a1 + 72);
          v60 = *(v4 + 32);
          v61 = *(v4 + 16);
          *v6 = *v4;
          *(a1 + 56) = v61;
          *(a1 + 72) = v60;
          *(v4 + 32) = v59;
          goto LABEL_13;
        }

        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v34 = *v6;
      v35 = *(a1 + 56);
      v36 = *(a1 + 72);
      v37 = *(v4 + 32);
      v38 = *(v4 + 16);
      *v6 = *v4;
      *(a1 + 56) = v38;
      *(a1 + 72) = v37;
      *(v4 + 32) = v36;
      *v4 = v34;
      *(v4 + 16) = v35;
LABEL_49:
      if (*(a1 + 40) < *a1)
      {
        v92 = *(a1 + 32);
        v94 = *a1;
        v93 = *(a1 + 16);
        v95 = *(v6 + 16);
        *a1 = *v6;
        *(a1 + 16) = v95;
        *(a1 + 32) = *(v6 + 32);
        *v6 = v94;
        *(v6 + 16) = v93;
        result = 1;
        *(v6 + 32) = v92;
        return result;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,RB::Decoder::saved_shared_field(RB::Encoder::SharedType,unsigned long)::$_0 &,RB::Decoder::SharedField *,0>(a1, (a1 + 40), (a1 + 80), a1 + 120, a2 - 40, a3);
      return 1;
    }

    v6 = a1 + 40;
    v25 = *(a1 + 40);
    v26 = (a1 + 80);
    v27 = *(a1 + 80);
    v28 = a2 - 5;
    v29 = *a1;
    if (v25 >= *a1)
    {
      if (v27 < v25)
      {
        v47 = *(a1 + 72);
        v49 = *v6;
        v48 = *(a1 + 56);
        v50 = *(a1 + 96);
        *v6 = *v26;
        *(a1 + 56) = v50;
        *(a1 + 72) = *(a1 + 112);
        *v26 = v49;
        *(a1 + 96) = v48;
        *(a1 + 112) = v47;
        if (*v6 < v29)
        {
          v51 = *(a1 + 32);
          v53 = *a1;
          v52 = *(a1 + 16);
          v54 = *(a1 + 56);
          *a1 = *v6;
          *(a1 + 16) = v54;
          *(a1 + 32) = *(a1 + 72);
          *v6 = v53;
          *(a1 + 56) = v52;
          *(a1 + 72) = v51;
        }
      }

      goto LABEL_46;
    }

    if (v27 >= v25)
    {
      v78 = *(a1 + 32);
      v80 = *a1;
      v79 = *(a1 + 16);
      v81 = *(a1 + 56);
      *a1 = *v6;
      *(a1 + 16) = v81;
      *(a1 + 32) = *(a1 + 72);
      *v6 = v80;
      *(a1 + 56) = v79;
      *(a1 + 72) = v78;
      if (v27 >= *(a1 + 40))
      {
        goto LABEL_46;
      }

      v30 = *(a1 + 72);
      v32 = *v6;
      v31 = *(a1 + 56);
      v82 = *(a1 + 96);
      *v6 = *v26;
      *(a1 + 56) = v82;
      *(a1 + 72) = *(a1 + 112);
    }

    else
    {
      v30 = *(a1 + 32);
      v32 = *a1;
      v31 = *(a1 + 16);
      v33 = *(a1 + 96);
      *a1 = *v26;
      *(a1 + 16) = v33;
      *(a1 + 32) = *(a1 + 112);
    }

    *v26 = v32;
    *(a1 + 96) = v31;
    *(a1 + 112) = v30;
LABEL_46:
    if (*v28 >= *v26)
    {
      return 1;
    }

    v83 = *v26;
    v84 = *(a1 + 96);
    v85 = *(a1 + 112);
    v86 = *(a2 - 1);
    v87 = *(a2 - 24);
    *v26 = *v28;
    *(a1 + 96) = v87;
    *(a1 + 112) = v86;
    *(a2 - 1) = v85;
    *v28 = v83;
    *(a2 - 24) = v84;
    if (*v26 >= *v6)
    {
      return 1;
    }

    v88 = *(a1 + 72);
    v90 = *v6;
    v89 = *(a1 + 56);
    v91 = *(a1 + 96);
    *v6 = *v26;
    *(a1 + 56) = v91;
    *(a1 + 72) = *(a1 + 112);
    *v26 = v90;
    *(a1 + 96) = v89;
    *(a1 + 112) = v88;
    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 5);
    v4 = a2 - 40;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v16 = (a1 + 80);
  v17 = *(a1 + 80);
  v18 = (a1 + 40);
  v19 = *(a1 + 40);
  v20 = *a1;
  if (v19 >= *a1)
  {
    if (v17 < v19)
    {
      v39 = *(a1 + 72);
      v41 = *v18;
      v40 = *(a1 + 56);
      v42 = *(a1 + 96);
      *v18 = *v16;
      *(a1 + 56) = v42;
      *(a1 + 72) = *(a1 + 112);
      *v16 = v41;
      *(a1 + 96) = v40;
      *(a1 + 112) = v39;
      if (*v18 < v20)
      {
        v43 = *(a1 + 32);
        v45 = *a1;
        v44 = *(a1 + 16);
        v46 = *(a1 + 56);
        *a1 = *v18;
        *(a1 + 16) = v46;
        *(a1 + 32) = *(a1 + 72);
        *v18 = v45;
        *(a1 + 56) = v44;
        *(a1 + 72) = v43;
      }
    }
  }

  else if (v17 >= v19)
  {
    v62 = *(a1 + 32);
    v64 = *a1;
    v63 = *(a1 + 16);
    v65 = *(a1 + 56);
    *a1 = *v18;
    *(a1 + 16) = v65;
    *(a1 + 32) = *(a1 + 72);
    *v18 = v64;
    *(a1 + 56) = v63;
    *(a1 + 72) = v62;
    if (v17 < *(a1 + 40))
    {
      v66 = *(a1 + 72);
      v68 = *v18;
      v67 = *(a1 + 56);
      v69 = *(a1 + 96);
      *v18 = *v16;
      *(a1 + 56) = v69;
      *(a1 + 72) = *(a1 + 112);
      *v16 = v68;
      *(a1 + 96) = v67;
      *(a1 + 112) = v66;
    }
  }

  else
  {
    v21 = *(a1 + 32);
    v23 = *a1;
    v22 = *(a1 + 16);
    v24 = *(a1 + 96);
    *a1 = *v16;
    *(a1 + 16) = v24;
    *(a1 + 32) = *(a1 + 112);
    *v16 = v23;
    *(a1 + 96) = v22;
    *(a1 + 112) = v21;
  }

  v70 = (a1 + 120);
  if ((a1 + 120) == a2)
  {
    return 1;
  }

  v71 = 0;
  v72 = 0;
  while (1)
  {
    v73 = *v70;
    if (*v70 < *v16)
    {
      v96 = *(v70 + 8);
      v97 = *(v70 + 24);
      v74 = v71;
      while (1)
      {
        v75 = a1 + v74;
        v76 = *(a1 + v74 + 96);
        *(v75 + 120) = *(a1 + v74 + 80);
        *(v75 + 136) = v76;
        *(v75 + 152) = *(a1 + v74 + 112);
        if (v74 == -80)
        {
          break;
        }

        v74 -= 40;
        if (v73 >= *(v75 + 40))
        {
          v77 = a1 + v74 + 120;
          goto LABEL_40;
        }
      }

      v77 = a1;
LABEL_40:
      *v77 = v73;
      *(v77 + 8) = v96;
      *(v77 + 24) = v97;
      if (++v72 == 8)
      {
        return (v70 + 40) == a2;
      }
    }

    v16 = v70;
    v71 += 40;
    v70 = (v70 + 40);
    if (v70 == a2)
    {
      return 1;
    }
  }
}

void *RB::vector<unsigned char,0ul,unsigned long>::reserve_slow(uint64_t a1, size_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,1ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

void *RB::details::realloc_vector<unsigned long,1ul>(void *a1, size_t *a2, size_t size)
{
  v4 = a1;
  if (size)
  {
    v5 = malloc_good_size(size);
    if (v5 != *a2)
    {
      v6 = v5;
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_195D67668(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_195D67718(_Unwind_Exception *a1)
{
  v5 = *(v2 + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  if (*v3)
  {
    CFRelease(*v3);
  }

  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,void *>>>>::~unique_ptr[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      RB::Encoder::FontSet::Font::~Font((v2 + 24));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *RB::vector<RB::Decoder::SharedField,0ul,unsigned long>::reserve_slow(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,40ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

void *RB::details::realloc_vector<unsigned long,40ul>(void *a1, unint64_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(40 * a3);
    v6 = v5 / 0x28;
    if (v5 / 0x28 != *a2)
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

void *RB::Heap::emplace<RBImage>(size_t *a1)
{
  v1 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v1 + 2) > a1[3])
  {
    v1 = RB::Heap::alloc_slow(a1, 0x10uLL, 7);
  }

  else
  {
    a1[2] = (v1 + 2);
  }

  *v1 = 0;
  v1[1] = 0;
  return v1;
}

void RB::Path::Accumulator::~Accumulator(RB::Path::Accumulator *this)
{
  if (*(this + 280) == 1)
  {
    RB::Path::Accumulator::commit_buffer(this);
  }

  v2 = *(this + 31);
  if (v2)
  {
    free(v2);
  }
}

void sub_195D679C4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 248);
  if (v3)
  {
    free(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::Path::Accumulator::convert_to_lines(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(*a2 + 56);
  v4 = *(result + 272);
  *(result + 272) = 0;
  if (v4)
  {
    v5 = 0;
    v6 = v3 + v2 + 8;
    v7 = (v2 + v3 + 24);
    v8 = vneg_f32(0x7F0000007FLL);
    do
    {
      if (v5 && *(v7 - 5) == 0.0)
      {
        v9 = *(result + 272);
        *(result + 272) = v9 + 1;
        *(v6 + 8 * v9) = v8;
      }

      v10 = *v7;
      v7 += 8;
      v11 = *(result + 272);
      *(result + 272) = v11 + 1;
      *(v6 + 8 * v11) = v10;
      ++v5;
    }

    while (v4 != v5);
  }

  *(a2 + 28) = 2;
  return result;
}

void *RB::details::realloc_vector<unsigned long,32ul>(void *__src, void *__dst, size_t a3, size_t *a4, size_t a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      v9 = a3;
      memcpy(__dst, __src, 32 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(32 * a5);
    v9 = v8 >> 5;
    if (v8 >> 5 != *a4)
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 32 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

RB::DisplayList::Item *RB::Coverage::Glyphs::project_control_points(RB::Coverage::Glyphs *this, RB::DisplayList::Builder *a2, const RB::Path::Projection *a3, RB::DisplayList::Item *a4, const RB::Fill::Color *a5, float64x2_t *a6, float64x2_t *a7)
{
  if (!*(this + 4))
  {
    return a4;
  }

  if (!*(a4 + 3) && !*(a4 + 2))
  {
    CGFontGetUnitsPerEm(*this);
    CGFontGetCapHeight(*this);
    if (a6)
    {
      RB::AffineTransform::scale(a6);
    }

    operator new();
  }

  return RB::DisplayList::Item::project(a4, a2, a3, a7);
}

void sub_195D67F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (atomic_fetch_add_explicit((a10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::Coverage::Glyphs::project_control_points(a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage4PathENS_4Fill5ColorEEEJRS5_RKS7_PKNS_15AffineTransformERDF16_NS_9BlendModeEEEEPT_DpOT0_(size_t *a1, uint64_t *a2, void *a3, uint64_t *a4, __int16 *a5, _WORD *a6)
{
  v11 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v11 + 104 > a1[3])
  {
    v11 = RB::Heap::alloc_slow(a1, 0x68uLL, 7);
  }

  else
  {
    a1[2] = v11 + 104;
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
  *v11 = &unk_1F0A3B860;
  *(v11 + 48) = v12;
  *(v11 + 56) = RBPathRetain(*a2, a2[1]);
  *(v11 + 64) = v15;
  v16 = *(a2 + 22);
  *(v11 + 72) = a2[2];
  *(v11 + 78) = v16;
  v17 = *(a3 + 6);
  *(v11 + 88) = *a3;
  *(v11 + 94) = v17;
  *v11 = &unk_1F0A3CF28;
  return v11;
}

void RB::Coverage::Glyphs::clip(float32x2_t **this, CGContextRef *a2)
{
  if (*(this + 52) < 2u)
  {

    RB::Coverage::Glyphs::show(this, a2, 1);
  }

  else
  {
    RB::Coverage::Glyphs::make_image_mask(this, a2, &mask);
    v3 = mask;
    if (mask)
    {
      v15.origin.x = v10;
      v15.origin.y = v11;
      v15.size.width = v12;
      v15.size.height = v13;
      CGContextClipToMask(*a2, v15, mask);

      CFRelease(v3);
    }

    else
    {
      v4 = *a2;
      v5 = *MEMORY[0x1E695F058];
      v6 = *(MEMORY[0x1E695F058] + 8);
      v7 = *(MEMORY[0x1E695F058] + 16);
      v8 = *(MEMORY[0x1E695F058] + 24);

      CGContextClipToRect(v4, *&v5);
    }
  }
}

void RB::Coverage::Glyphs::make_image_mask(float32x2_t *this@<X0>, RB::CGContext *a2@<X1>, CGImageRef *a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  *(&v9 - 8) = CGContextGetClipBoundingBox(*a2);
  *&v10.f64[1] = v9.i64[0];
  v8.f64[1] = v30.size.height;
  *v9.i8 = vcvt_f32_f64(v10);
  *&v10.f64[0] = vcvt_f32_f64(v8);
  *&v25 = v9.i64[0];
  *(&v25 + 1) = *&v10.f64[0];
  if (this[6].u8[4] >= 2u)
  {
    LODWORD(v8.f64[0]) = this[6].i32[0];
    *&v30.size.height = vcgt_f32(vneg_f32(0x80000000800000), *&v10.f64[0]);
    *v6.i8 = vsub_f32(*v9.i8, vdup_lane_s32(*&v8.f64[0], 0));
    v11 = vcltzq_s32(*&v30.size.height);
    *&v12 = vbslq_s8(v11, v6, v9).u64[0];
    *v7.i8 = vmla_n_f32(*&v10.f64[0], 0x4000000040000000, *v8.f64);
    *(&v12 + 1) = vbslq_s8(v11, v7, v10).u64[0];
    v25 = v12;
  }

  v26 = xmmword_195E42760;
  v27 = xmmword_195E42770;
  v28 = 0uLL;
  v13 = RB::Coverage::Glyphs::bounds(this, &v26, 0);
  RB::Rect::intersect(&v25, v13, v14);
  v15 = vceqz_f32(*(&v25 + 8));
  if ((vpmax_u32(v15, v15).u32[0] & 0x80000000) != 0 || ((v16 = *(a2 + 10)) == 0 ? (v17 = *(a2 + 2), v18 = *(a2 + 3), v19 = *(a2 + 4)) : (*&v17 = RB::operator*(v16, a2 + 2)), v26 = v17, v27 = v18, v28 = v19, v20 = RB::AffineTransform::scale(&v26), *&v25 = vmul_n_f32(*&v25, v20), *(&v25 + 1) = vmul_n_f32(*(&v25 + 8), v20), v23 = v20, RB::CGContext::begin_bitmap(a2, &v25, 0x100000000, 0, &c, v21), !c))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    CGContextScaleCTM(c, v23, v23);
    RB::CGContext::CGContext(&v26, c, *(a2 + 8), *(a2 + 2));
    RB::Coverage::Glyphs::show(this, &v26, 0);
    *&v22 = this[6].f32[0] * v23;
    RB::CGContext::apply_distance_rendering(&v26, this[6].u8[4], v22);
    *&v25 = vmul_n_f32(*&v25, 1.0 / v23);
    *(&v25 + 1) = vmul_n_f32(*(&v25 + 8), 1.0 / v23);
    *a3 = CGBitmapContextCreateImage(c);
    *(a3 + 1) = v25;
    RB::CGContext::~CGContext(&v26);
    if (c)
    {
      CFRelease(c);
    }
  }
}

void sub_195D683B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf, uint64_t a13, uint64_t a14, char a15)
{
  RB::CGContext::~CGContext(&a15);
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

uint64_t RB::Coverage::Glyphs::prepare_encode(uint64_t this, RB::Encoder *a2)
{
  if (*this)
  {
    return RB::Encoder::prepare_glyphs(a2, *this, *(this + 16), (*(this + 8) + 8 * *(this + 16)));
  }

  return this;
}

void *RB::Coverage::Glyphs::encode(CGFont **this, RB::Encoder *a2)
{
  if (*this)
  {
    v4 = RB::Encoder::cgfont_field(a2, 1, *this);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 4);
  if (v5)
  {
    v6 = 0;
    v7 = this[1];
    v8 = v7 + 8 * v5;
    do
    {
      v9 = *&v8[2 * v6];
      if (v4)
      {
        Value = CGFontIndexMapGetValue();
        if (Value != 0xFFFF)
        {
          v9 = Value;
        }
      }

      v18 = *(v7 + v6);
      RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);
      RB::ProtobufEncoder::begin_length_delimited(a2);
      if (v9)
      {
        RB::ProtobufEncoder::encode_varint(a2, 8uLL);
        RB::ProtobufEncoder::encode_varint(a2, v9);
      }

      v11 = *(&v18 + 1);
      if (*&v18 != 0.0)
      {
        RB::ProtobufEncoder::encode_varint(a2, 0x15uLL);
        RB::ProtobufEncoder::encode_fixed32(a2, v18);
        v11 = *(&v18 + 1);
      }

      v12 = LODWORD(v11);
      if (v11 != 0.0)
      {
        RB::ProtobufEncoder::encode_varint(a2, 0x1DuLL);
        RB::ProtobufEncoder::encode_fixed32(a2, v12);
      }

      RB::ProtobufEncoder::end_length_delimited(a2);
      ++v6;
    }

    while (v6 < *(this + 4));
  }

  v13 = *(this + 5);
  if (v13)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x18uLL);
    RB::ProtobufEncoder::encode_varint(a2, v13);
  }

  if (*(this + 53))
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);
    RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

  v14 = *(this + 52);
  RB::ProtobufEncoder::encode_varint(a2, 0x28uLL);
  RB::ProtobufEncoder::encode_varint(a2, v14);
  v15 = *(this + 12);
  if (*&v15 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x35uLL);
    RB::ProtobufEncoder::encode_fixed32(a2, v15);
  }

  v16 = *(this + 3);

  return RB::ProtobufEncoder::float2_field(a2, 7, v16);
}

void RB::Coverage::Glyphs::decode(RB::Coverage::Glyphs *this, RB::Heap **a2)
{
  v32 = *MEMORY[0x1E69E9840];
  *v30 = 0u;
  v31 = 128;
  while (1)
  {
    field = RB::ProtobufDecoder::next_field(a2);
    v6 = field;
    if (!field)
    {
      break;
    }

    v7 = field >> 3;
    if ((field >> 3) <= 3)
    {
      switch(v7)
      {
        case 1:
          v9 = RB::Decoder::cgfont_field(a2, field);
          *this = v9;
          v10 = a2[8];
          v11 = *(v10 + 4);
          if (!v11)
          {
            RB::Heap::make_object_table(a2[8]);
            v11 = *(v10 + 4);
          }

          RB::ObjectTable::retain(v11, v9);
          break;
        case 2:
          v12 = v30[1];
          if (v31 < v30[1] + 1)
          {
            v12 = v30[1];
          }

          v13 = v30[0];
          if (!v30[0])
          {
            v13 = v29;
          }

          v14 = &v13[16 * v12];
          *v14 = 0;
          v14[1] = 0;
          v15 = ++v30[1];
          if (v30[0])
          {
            v16 = v30[0];
          }

          else
          {
            v16 = v29;
          }

          if ((v6 & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(a2);
            v17 = RB::ProtobufDecoder::next_field(a2);
            if (v17)
            {
              v18 = &v16[16 * v15];
              do
              {
                v19 = v17 >> 3;
                if ((v17 >> 3) == 3)
                {
                  *(v18 - 1) = RB::ProtobufDecoder::float_field(a2, v17);
                }

                else if (v19 == 2)
                {
                  *(v18 - 2) = RB::ProtobufDecoder::float_field(a2, v17);
                }

                else if (v19 == 1)
                {
                  *(v18 - 8) = RB::ProtobufDecoder::uint_field(a2, v17);
                }

                else
                {
                  RB::ProtobufDecoder::skip_field(a2, v17);
                }

                v17 = RB::ProtobufDecoder::next_field(a2);
              }

              while (v17);
            }

            RB::ProtobufDecoder::end_message(a2);
          }

          else
          {
            *(a2 + 56) = 1;
            *a2 = a2[1];
          }

          break;
        case 3:
          *(this + 5) = RB::ProtobufDecoder::uint_field(a2, field);
          break;
        default:
          goto LABEL_19;
      }
    }

    else if (v7 > 5)
    {
      if (v7 == 6)
      {
        *(this + 12) = RB::ProtobufDecoder::float_field(a2, field);
      }

      else if (v7 == 7)
      {
        *(this + 3) = RB::ProtobufDecoder::float2_field(a2, field, v5).n128_u64[0];
      }

      else
      {
LABEL_19:
        RB::ProtobufDecoder::skip_field(a2, field);
      }
    }

    else if (v7 == 4)
    {
      *(this + 53) = *(this + 53) & 0xFE | RB::ProtobufDecoder::BOOL_field(a2, field);
    }

    else
    {
      if (v7 != 5)
      {
        goto LABEL_19;
      }

      v8 = RB::ProtobufDecoder::uint_field(a2, field);
      if (v8 <= 4)
      {
        *(this + 52) = v8;
      }
    }
  }

  v20 = v30[1];
  if (v30[1])
  {
    *(this + 4) = v30[1];
    v21 = a2[8];
    v22 = ((*(v21 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v23 = v22 + 10 * v20;
    if (v23 > *(v21 + 3))
    {
      v22 = RB::Heap::alloc_slow(a2[8], 10 * v20, 7);
      v28 = *(this + 4);
      v20 = v30[1];
      *(this + 1) = v22;
      if (v20)
      {
        v24 = &v22[v28];
        goto LABEL_45;
      }
    }

    else
    {
      *(v21 + 2) = v23;
      *(this + 1) = v22;
      v24 = &v22[v20];
LABEL_45:
      v25 = 0;
      do
      {
        v26 = v30[0];
        if (!v30[0])
        {
          v26 = v29;
        }

        v27 = &v26[v25];
        *v24++ = *v27;
        *v22++ = *(v27 + 1);
        v25 += 16;
        v20 = v20 - 1;
      }

      while (v20);
    }
  }

  if (v30[0])
  {
    free(v30[0]);
  }
}

void sub_195D68944(_Unwind_Exception *a1)
{
  if (STACK[0x800])
  {
    free(STACK[0x800]);
  }

  _Unwind_Resume(a1);
}

void RB::Coverage::Glyphs::attributes(float **this, RB::XML::Element *a2)
{
  v2 = *this;
  if (*this)
  {
    v3[0] = &unk_1F0A38C68;
    v3[1] = CGFontRetain(v2);
    RB::XML::Element::set<RB::XML::Value::Font>();
  }

  RB::XML::Value::FloatArray::FloatArray<float>(v3, this[1], 2 * *(this + 4));
  RB::XML::Element::set<RB::XML::Value::FloatArray>();
}

void sub_195D68EC8(_Unwind_Exception *a1)
{
  if (*v3)
  {
    free(*v3);
  }

  MEMORY[0x19A8C09E0](v1, v2);
  _Unwind_Resume(a1);
}

double RBShapeGetFontQuantizationLevel(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = v3;
  *&result = *&vcvtq_f64_f32(v6[0]);
  return result;
}

float64x2_t RBShapeGetPredictedFontQuantizationError(float64x2_t *a1, float64x2_t a2, float64_t a3, float64x2_t a4, float64_t a5)
{
  a2.f64[1] = a3;
  *&a2.f64[0] = vcvt_f32_f64(a2);
  v6 = vceqz_f32(*&a2.f64[0]);
  if ((vpmax_u32(v6, v6).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    a4.f64[1] = a5;
    v7 = a1[1];
    v8 = vrecpe_f32(*&a2.f64[0]);
    v9 = vmul_f32(vrecps_f32(*&a2.f64[0], v8), v8);
    v10 = vcvtq_f64_f32(vcvt_f32_f64(a4));
    v11 = vmlaq_n_f64(vmlaq_laneq_f64(a1[2], v7, v10, 1), *a1, v10.f64[0]);
    *v11.f32 = vcvt_f32_f64(v11);
    v12 = vaddq_f64(*a1, v7);
    *&v12.f64[0] = vcltz_f32(vcvt_f32_f64(v12));
    v13 = vcltzq_s32(v12);
    v14 = vbslq_s8(v13, vnegq_f32(v11), v11);
    *&v7.f64[0] = vadd_f32(*v14.f32, vdup_n_s32(0x3A83126Fu));
    v15 = vrndm_f32(*&v7.f64[0]);
    *v14.f32 = vmla_f32(vsub_f32(v15, *v14.f32), vrnd_f32(vmul_f32(vsub_f32(*&v7.f64[0], v15), *&a2.f64[0])), vmul_f32(v9, vrecps_f32(*&a2.f64[0], v9)));
    return vcvtq_f64_f32(*&vbslq_s8(v13, vnegq_f32(v14), v14));
  }
}

double RBShapeGetFontDilationParameters(float64x2_t a1, float64_t a2, uint64_t a3, float64x2_t *a4, unsigned int a5)
{
  a1.f64[1] = a2;
  v6 = vcvt_f32_f64(a1);
  v7 = a4[1];
  v8 = a4[2];
  v11[0] = *a4;
  v11[1] = v7;
  v11[2] = v8;
  v9 = RB::AffineTransform::scale(v11);
  return result;
}

uint64_t RB::Refcount<RB::Path::Object,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return RB::Refcount<RB::Path::Object,std::atomic<unsigned int>>::release(result);
  }

  return result;
}

RB::XML::Value::GlyphArray *RB::XML::Value::GlyphArray::GlyphArray(RB::XML::Value::GlyphArray *this, CGFontRef font, const unsigned __int16 *a3, unint64_t a4)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_1F0A38E20;
  v7 = CGFontRetain(font);
  *(this + 5) = 0;
  *(this + 4) = v7;
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (a4)
  {
    RB::vector<unsigned short,0ul,unsigned long>::reserve_slow(this + 40, a4);
    v9 = *(this + 6);
    do
    {
      v10 = v9 + 1;
      if (*(this + 7) < v9 + 1)
      {
        RB::vector<unsigned short,0ul,unsigned long>::reserve_slow(this + 40, v10);
        v9 = *(this + 6);
        v10 = v9 + 1;
      }

      v11 = *a3++;
      *(*(this + 5) + 2 * v9) = v11;
      *(this + 6) = v10;
      v9 = v10;
      --a4;
    }

    while (a4);
  }

  return this;
}

void sub_195D693C0(_Unwind_Exception *exception_object)
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

void *RB::vector<unsigned short,0ul,unsigned long>::reserve_slow(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,2ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

void *RB::details::realloc_vector<unsigned long,2ul>(void *a1, size_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(2 * a3);
    v6 = v5 >> 1;
    if (v5 >> 1 != *a2)
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

void RB::XML::Value::GlyphArray::~GlyphArray(RB::XML::Value::GlyphArray *this)
{
  *this = &unk_1F0A38E20;
  v2 = *(this + 5);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
  }

  *this = &unk_1F0A389E8;
  v4 = *(this + 1);
  if (v4)
  {
    free(v4);
  }
}

{
  *this = &unk_1F0A38E20;
  v2 = *(this + 5);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
  }

  *this = &unk_1F0A389E8;
  v4 = *(this + 1);
  if (v4)
  {
    free(v4);
  }
}

{
  *this = &unk_1F0A38E20;
  v2 = *(this + 5);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
  }

  *this = &unk_1F0A389E8;
  v4 = *(this + 1);
  if (v4)
  {
    free(v4);
  }

  JUMPOUT(0x19A8C09E0);
}

void RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Color>::~GenericItem(void *a1)
{
  *a1 = &unk_1F0A3B860;
  RBPathRelease(a1[7], a1[8]);

  JUMPOUT(0x19A8C09E0);
}

float32x2_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Color>::atom_position(uint64_t a1)
{
  v4.var1 = *(a1 + 48);
  v4.var0 = (a1 + 56);
  v1 = RB::Coverage::Path::bounds(v4);
  return vmla_f32(*&v1, 0x3F0000003F000000, v2);
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Color>::make_clip(uint64_t a1, uint64_t a2, int a3, void *a4, float a5)
{
  v22 = a3;
  _H1 = *(a1 + 94);
  __asm { FCVT            S1, H1 }

  v13 = *(a2 + 8);
  _H2 = *(a1 + 44);
  __asm { FCVT            S2, H2 }

  v21 = (_S1 * a5) * _S2;
  v16 = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Path>,RB::Heap&,RB::Coverage::Path&,float &,RB::ClipMode &,RB::AffineTransform const*&>((v13 + 16), (v13 + 16), a1 + 56, &v21, &v22, (a1 + 48));
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

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Color>::append_alpha_gradient(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = *(a1 + 94) * *(a1 + 44);
  v4 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage4PathENS_4Fill8GradientEEEJRS5_RKS7_RPKNS_15AffineTransformEDF16_RNS_9BlendModeEEEEPT_DpOT0_((v7 + 16), (a1 + 56), (a3 + 8), (a1 + 48), &v8, &v9);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 40) = *(a1 + 40);
  (**a1)(a1);
  return v4;
}

unint64_t *RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Color>::prepare_mix(float64x2_t **a1, RB::DisplayList::Interpolator::Contents *a2, const RB::DisplayList::Interpolator::Op *a3, float64x2_t **a4)
{
  result = (*&(*a4)[1].f64[0])(a4);
  if (result == 4202497)
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
          can_mix = RB::Fill::Color::can_mix((a1 + 11), (a4 + 11));

          return RB::DisplayList::Interpolator::Op::set_type(a3, v11, v12, can_mix);
        }
      }
    }
  }

  return result;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Color>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v26[0] = v10;
  v26[1] = v11;
  v26[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v26);
  v13 = (*(*&a4->f64[0] + 8) + 16);
  v14.i32[0] = *(a2 + 16);
  RB::Fill::Color::mix(v8 + 88, a3 + 88, 3, v14);
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
    *&v23.f64[0] = &unk_1F0A3D7A0;
    *&v23.f64[1] = v13;
    *&v24 = v8;
    *(&v24 + 1) = v8 + 88;
    v25 = *(v8 + 48);
    RB::Coverage::Path::simplify(v8 + 56, &v23);
    if (*(&v25 + 1))
    {
      *v8 = &unk_1F0A3B860;
      RBPathRelease(*(v8 + 56), *(v8 + 64));
      v8 = *(&v25 + 1);
    }

    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Color>::encode(uint64_t a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Path>(this, 1, (a1 + 56));
  RB::Encoder::typed_message_field<RB::Fill::Color>(this, 2, (a1 + 88));
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

void RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Color>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Path>();
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Color>::make_clip(uint64_t a1, uint64_t a2, int a3, void *a4, int8x16_t a5, double _D1, double _D2, double a8, int8x16_t a9, int8x16_t a10)
{
  v23 = a3;
  LOWORD(_D1) = *(a1 + 118);
  __asm { FCVT            S1, H1 }

  v16 = *(a2 + 8);
  LOWORD(_D2) = *(a1 + 44);
  __asm { FCVT            S2, H2 }

  *a5.i32 = (*&_D1 * *a5.i32) * *&_D2;
  v22 = a5.i32[0];
  v17 = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Primitive>,RB::Heap&,RB::Coverage::Primitive&,float &,RB::ClipMode &,RB::AffineTransform const*&>((v16 + 16), a5, _D1, _D2, a8, a9, a10, v16 + 16, (a1 + 64), &v22, &v23, (a1 + 48));
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

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Color>::append_alpha_gradient(uint64_t a1, uint64_t a2, float32x2_t *a3)
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
  _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage9PrimitiveENS_4Fill8GradientEEEJRS5_RKS7_RPKNS_15AffineTransformEDF16_RNS_9BlendModeEEEEPT_DpOT0_((v7 + 16), (a1 + 64), &a3[1], (a1 + 48), &v9, &v10);
  v4 = v8;
  *(v8 + 16) = *(a1 + 16);
  *(v8 + 32) = *(a1 + 32);
  *(v8 + 40) = *(a1 + 40);
  (**a1)(a1);
  return v4;
}

uint64_t RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Color>::mix(CGAffineTransform **a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = (*&(*a1)[1].a)(a1, *&a4->f64[0], *(*(a2 + 8) + 12), **(a2 + 8) >> 36, 2);
  RB::mix(a1[6], *(a3 + 48), v9, *(a2 + 16));
  v15[0] = v10;
  v15[1] = v11;
  v15[2] = v12;
  *(v8 + 48) = RB::DisplayList::CachedTransform::transform_ctm(a4, v15);
  v13.i32[0] = *(a2 + 16);
  RB::Fill::Color::mix(v8 + 112, a3 + 112, 3, v13);
  RB::operator*(a1[6], a4 + 68);
  RB::operator*(*(a3 + 48), a4 + 68);
  RB::Coverage::Primitive::mix(v8 + 64, a2, a3 + 64);
  if ((*(v8 + 46) & 0x2000) == 0 && *(*&a4->f64[0] + 288) == 1)
  {
    *(v8 + 46) |= 0x2000u;
  }

  return v8;
}

void *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Color>::encode(float32x4_t *a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Primitive>(this, 1, a1 + 4);
  RB::Encoder::typed_message_field<RB::Fill::Color>(this, 2, &a1[7]);
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

void RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Color>::print(const RB::AffineTransform **a1, RB::SexpString *this, uint64_t a3)
{
  RB::SexpString::push(this, "draw");
  RB::DisplayList::Item::print(a1, this, a3);
  RB::SexpString::print_ctm(this, a1[6]);
  RB::XML::print_attributes<RB::Coverage::Primitive>();
}

void *RB::vector<RB::DisplayList::Clip *,4ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 6) + (*(__dst + 6) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 6) + (*(__dst + 6) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,8ul>(*(__dst + 4), __dst, 4uLL, __dst + 6, v3);
  *(__dst + 4) = result;
  return result;
}

uint64_t RB::DisplayList::GenericClip<RB::Coverage::Primitive>::can_mix(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v9 = RB::Coverage::Primitive::can_mix(a1 + 64, v11, a3 + 64);
  if (v9 >= v8)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t RB::DisplayList::GenericClip<RB::Coverage::Primitive>::mix(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = *(*&a4->f64[0] + 8);
  RB::mix(*(a1 + 48), *(a3 + 48), a3, *(a2 + 16));
  v31[0] = v9;
  v31[1] = v10;
  v31[2] = v11;
  v12 = *(a1 + 112);
  v13 = *(a3 + 112);
  v14 = *(a2 + 16);
  v15 = *(a1 + 44);
  v16 = RB::DisplayList::CachedTransform::transform_ctm(a4, v31);
  v20 = (v8[4] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v20 + 128 > v8[5])
  {
    v20 = RB::Heap::alloc_slow(v8 + 2, 0x80uLL, 15);
  }

  else
  {
    v8[4] = v20 + 128;
  }

  *v17.i32 = v12 + ((v13 - v12) * v14);
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 40) = 0;
  *(v20 + 32) = 0;
  *(v20 + 44) = v15;
  *(v20 + 45) = 0;
  *v20 = &unk_1F0A3D038;
  *(v20 + 48) = v16;
  v21 = *(a1 + 64);
  v22 = *(a1 + 80);
  v23 = *(a1 + 95);
  *(v20 + 95) = v23;
  *(v20 + 64) = v21;
  *(v20 + 80) = v22;
  *(v20 + 112) = v17.i32[0];
  RB::DisplayList::GenericClip<RB::Coverage::Primitive>::update_bounds(v20, v17, v21, v22, v23, v18, v19);
  RB::Coverage::Primitive::mix(v20 + 64, a2, a3 + 64);
  RB::DisplayList::GenericClip<RB::Coverage::Primitive>::update_bounds(v20, v24, v25, v26, v27, v28, v29);
  return v20;
}

void *RB::DisplayList::GenericClip<RB::Coverage::Primitive>::encode(float32x4_t *a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Primitive>(this, 1, a1 + 4);
  v4 = a1[3].i64[0];
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

  v6 = a1[7].i32[0];
  if (*&v6 != 1.0)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x1DuLL);
    RB::ProtobufEncoder::encode_fixed32(this, v6);
  }

  RB::ProtobufEncoder::end_length_delimited(this);

  return RB::DisplayList::Clip::encode(a1, this);
}

void RB::DisplayList::GenericClip<RB::Coverage::Primitive>::print(uint64_t a1, RB::SexpString *this)
{
  RB::SexpString::push(this, "clip");
  RB::DisplayList::Clip::print(a1, this);
  v4 = *(a1 + 112);
  if (v4 != 1.0)
  {
    RB::SexpString::printf(this, 0, "(alpha %g)", v4);
  }

  RB::SexpString::print_ctm(this, *(a1 + 48));
  RB::XML::print_attributes<RB::Coverage::Primitive>();
}

uint64_t RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,float const&,RB::ClipMode &,RB::AffineTransform const*&>(size_t *a1, uint64_t a2, uint64_t a3, int *a4, _DWORD *a5, uint64_t *a6)
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

void sub_195D6A690(_Unwind_Exception *a1)
{
  v1[7] = v2;
  RBPathRelease(v1[8], v1[9]);
  _Unwind_Resume(a1);
}

void RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::update_bounds(uint64_t a1)
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

    if (*(a1 + 144) == 0.0)
    {
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      return;
    }

    v2 = RB::Coverage::Stroke<RB::Coverage::StrokeablePath>::bounds(a1 + 56, *(a1 + 48));
  }

  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
}

void *RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::~GenericClip(void *a1)
{
  a1[7] = &unk_1F0A38388;
  RBPathRelease(a1[8], a1[9]);
  return a1;
}

void RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::~GenericClip(void *a1)
{
  a1[7] = &unk_1F0A38388;
  RBPathRelease(a1[8], a1[9]);

  JUMPOUT(0x19A8C09E0);
}

void *RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::copy(uint64_t a1, RB::DisplayList::CachedTransform *this, uint64_t a3, int a4)
{
  v7 = (*(*this + 8) + 16);
  if (a4)
  {
    v8 = *(a1 + 44) == 0;
  }

  else
  {
    v8 = *(a1 + 44);
  }

  v19 = v8;
  v9 = RB::DisplayList::CachedTransform::transform_ctm(this, *(a1 + 48));
  v18 = v9;
  if ((*(a1 + 45) & 4) != 0)
  {
    v11 = *(a1 + 45) & 4;
  }

  else if (*(*this + 288) == 1)
  {
    v14[0] = &unk_1F0A39460;
    v14[1] = v7;
    v14[2] = a1;
    v15 = v8;
    v16 = v9;
    v17 = 0;
    RB::Coverage::StrokeablePath::simplify(a1 + 64, a1 + 56, v14);
    v10 = v17;
    v11 = 4;
    if (v17)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
  }

  v10 = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,float const&,RB::ClipMode &,RB::AffineTransform const*&>(v7, v7, a1 + 56, (a1 + 144), &v19, &v18);
LABEL_11:
  *(v10 + 32) = RB::DisplayList::CachedTransform::transform_metadata(this, *(a1 + 32), *(a1 + 40));
  *(v10 + 40) = v12;
  *(v10 + 45) |= v11;
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
  result[1] = v10;
  return result;
}

uint64_t RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::contains(uint64_t a1, float32x2_t a2, float32x2_t a3)
{
  if (*(a1 + 44) != 1)
  {
    return 0;
  }

  v11[2] = v6;
  v11[3] = v5;
  v11[4] = v3;
  v11[5] = v4;
  if (*(a1 + 144) == 0.0)
  {
    return 1;
  }

  v11[0] = RB::Coverage::Stroke<RB::Coverage::StrokeablePath>::bounds(a1 + 56, *(a1 + 48));
  v11[1] = v10;
  return RB::Rect::intersects(v11, a2, a3) ^ 1;
}

float RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::min_scale(uint64_t a1)
{
  result = 0.0;
  if (!*(a1 + 128) && *(a1 + 132) == 1)
  {
    return 1.0;
  }

  return result;
}

void RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::render(uint64_t a1, double a2, uint64_t a3, int32x2_t *a4, int a5)
{
  v5 = *(a1 + 48);
  v6.i64[0] = SLODWORD(a2);
  v6.i64[1] = SHIDWORD(a2);
  v7 = *(v5 + 16);
  v8 = vaddq_f64(*(v5 + 32), vcvtq_f64_s64(v6));
  v10[0] = *v5;
  v10[1] = v7;
  v10[2] = v8;
  v9 = *(a1 + 144);
  v11 = *(a1 + 128);
  v12 = *(a1 + 129);
  v13 = *(a1 + 131);
  v14 = *(a1 + 132);
  v15 = *(a1 + 136);
  v16 = 1065353216;
  v17 = 1;
  v18 = 0;
  if (v11 == 1)
  {
    abort();
  }

  RB::render_stroke_coverage(a4, v10, a1 + 56, &v11, a5, v9);
}

uint64_t RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::can_mix(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v7 = can_mix;
  if (*(a1 + 128) == *(a3 + 128) && *(a1 + 129) == *(a3 + 129) && *(a1 + 130) == *(a3 + 130) && *(a1 + 131) == *(a3 + 131) && *(a1 + 132) == *(a3 + 132) && *(a1 + 136) == *(a3 + 136))
  {
    LOBYTE(result) = RB::Coverage::StrokeablePath::can_mix(a1 + 64, a3 + 64, v6);
  }

  else
  {
    LOBYTE(result) = 0;
  }

  if (result >= v7)
  {
    return v7;
  }

  else
  {
    return result;
  }
}

uint64_t RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::mix(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = *(*&a4->f64[0] + 8);
  RB::mix(*(a1 + 48), *(a3 + 48), a3, *(a2 + 16));
  v18[0] = v9;
  v18[1] = v10;
  v18[2] = v11;
  v12 = *(a1 + 144) + ((*(a3 + 144) - *(a1 + 144)) * *(a2 + 16));
  v13 = *(a1 + 44);
  v14 = RB::DisplayList::CachedTransform::transform_ctm(a4, v18);
  v15 = (v8[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v15 + 152 > v8[5])
  {
    v15 = RB::Heap::alloc_slow(v8 + 2, 0x98uLL, 7);
  }

  else
  {
    v8[4] = v15 + 152;
  }

  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 40) = 0;
  *(v15 + 32) = 0;
  *(v15 + 44) = v13;
  *(v15 + 45) = 0;
  *v15 = &unk_1F0A3D0D0;
  *(v15 + 48) = v14;
  *(v15 + 56) = &unk_1F0A38388;
  RB::Coverage::StrokeablePath::StrokeablePath(v15 + 64, a1 + 64, v8 + 2);
  *(v15 + 112) = *(a1 + 112);
  *(v15 + 128) = *(a1 + 128);
  *(v15 + 129) = *(a1 + 129);
  *(v15 + 131) = *(a1 + 131);
  *(v15 + 132) = *(a1 + 132);
  *(v15 + 136) = *(a1 + 136);
  *(v15 + 144) = v12;
  RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::update_bounds(v15);
  LODWORD(v16) = *(a2 + 16);
  RB::Coverage::StrokeablePath::mix(v15 + 64, (v8 + 2), a3 + 64, *(a1 + 48), *(a3 + 48), v18, v16);
  *(v15 + 136) = *(v15 + 136) + ((*(a3 + 136) - *(v15 + 136)) * *(a2 + 16));
  *(v15 + 112) = 0x100000001000000;
  *(v15 + 120) = vneg_f32(0x80000000800000);
  RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::update_bounds(v15);
  return v15;
}

void sub_195D6AD24(_Unwind_Exception *a1)
{
  v1[7] = v2;
  RBPathRelease(v1[8], v1[9]);
  _Unwind_Resume(a1);
}

void *RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::encode(uint64_t a1, RB::ProtobufEncoder *this)
{
  RB::ProtobufEncoder::encode_varint(this, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(this);
  RB::Encoder::typed_message_field<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>(this, 1, a1 + 56);
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

  v6 = *(a1 + 144);
  if (*&v6 != 1.0)
  {
    RB::ProtobufEncoder::encode_varint(this, 0x1DuLL);
    RB::ProtobufEncoder::encode_fixed32(this, v6);
  }

  RB::ProtobufEncoder::end_length_delimited(this);

  return RB::DisplayList::Clip::encode(a1, this);
}

void RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::print(uint64_t a1, RB::SexpString *this)
{
  RB::SexpString::push(this, "clip");
  RB::DisplayList::Clip::print(a1, this);
  v4 = *(a1 + 144);
  if (v4 != 1.0)
  {
    RB::SexpString::printf(this, 0, "(alpha %g)", v4);
  }

  RB::SexpString::print_ctm(this, *(a1 + 48));
  RB::XML::print_attributes<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>();
}

uint64_t RB::DisplayList::GenericClipCopyVisitor<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::visit(uint64_t a1, _OWORD *a2, int8x16_t a3, double a4, double a5, double a6, int8x16_t a7, int8x16_t a8)
{
  result = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Primitive>,RB::Heap&,RB::Coverage::Primitive&,float &,RB::ClipMode &,RB::AffineTransform const*&>(*(a1 + 8), a3, a4, a5, a6, a7, a8, *(a1 + 8), a2, (*(a1 + 16) + 144), (a1 + 24), (a1 + 32));
  *(a1 + 40) = result;
  return result;
}

uint64_t RB::DisplayList::GenericClipCopyVisitor<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>::visit(uint64_t a1, uint64_t a2)
{
  result = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>,RB::Heap&,RB::Coverage::Stroke<RB::Coverage::StrokeablePath> const&,float const&,RB::ClipMode &,RB::AffineTransform const*&>(*(a1 + 8), *(a1 + 8), a2, (*(a1 + 16) + 144), (a1 + 24), (a1 + 32));
  *(a1 + 40) = result;
  return result;
}

void *RB::Encoder::typed_message_field<RB::Coverage::Stroke<RB::Coverage::StrokeablePath>>(RB::ProtobufEncoder *a1, uint64_t a2, uint64_t a3)
{
  RB::ProtobufEncoder::encode_varint(a1, (8 * a2) | 2);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RB::ProtobufEncoder::encode_varint(a1, 0x1AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RB::Coverage::StrokeablePath::encode(a3 + 8, a3, a1);
  RB::ProtobufEncoder::end_length_delimited(a1);

  return RB::ProtobufEncoder::end_length_delimited(a1);
}

void sub_195D6B0F8(_Unwind_Exception *exception_object)
{
  v3 = v1[2] - 1;
  v1[2] = v3;
  if (!v3)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *RB::Refcount<RB::XML::Element,unsigned int>::release(_DWORD *result)
{
  v1 = result[2] - 1;
  result[2] = v1;
  if (!v1)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t RB::Refcount<RB::XML::Element,unsigned int>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void RB::XML::Element::~Element(RB::XML::Element *this)
{
  *this = &unk_1F0A38940;
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 2;
    do
    {
      if (*v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*v5);
        v3 = *(this + 7);
      }

      ++v4;
      v5 += 3;
    }

    while (v4 < v3);
    v2 = *(this + 6);
  }

  if (v2)
  {
    free(v2);
  }

  v7 = *(this + 3);
  v6 = *(this + 4);
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      v9 = v7[i];
      if (v9)
      {
        v10 = v9[2] - 1;
        v9[2] = v10;
        if (!v10)
        {
          (*(*v9 + 8))(v9);
          v6 = *(this + 4);
        }
      }
    }

    v7 = *(this + 3);
  }

  if (v7)
  {
    free(v7);
  }
}

{
  *this = &unk_1F0A38940;
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 2;
    do
    {
      if (*v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*v5);
        v3 = *(this + 7);
      }

      ++v4;
      v5 += 3;
    }

    while (v4 < v3);
    v2 = *(this + 6);
  }

  if (v2)
  {
    free(v2);
  }

  v7 = *(this + 3);
  v6 = *(this + 4);
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      v9 = v7[i];
      if (v9)
      {
        v10 = v9[2] - 1;
        v9[2] = v10;
        if (!v10)
        {
          (*(*v9 + 8))(v9);
          v6 = *(this + 4);
        }
      }
    }

    v7 = *(this + 3);
  }

  if (v7)
  {
    free(v7);
  }

  JUMPOUT(0x19A8C09E0);
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *RB::Encoder::typed_message_field<RB::Coverage::Primitive>(RB::Encoder *a1, uint64_t a2, float32x4_t *a3)
{
  RB::ProtobufEncoder::encode_varint(a1, (8 * a2) | 2);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RB::ProtobufEncoder::encode_varint(a1, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(a1);
  RB::Coverage::Primitive::encode(a3, a1);
  RB::ProtobufEncoder::end_length_delimited(a1);

  return RB::ProtobufEncoder::end_length_delimited(a1);
}

void sub_195D6B56C(_Unwind_Exception *exception_object)
{
  v3 = v1[2] - 1;
  v1[2] = v3;
  if (!v3)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage9PrimitiveENS_4Fill8GradientEEEJRS5_RKS7_RPKNS_15AffineTransformEDF16_RNS_9BlendModeEEEEPT_DpOT0_(RB::Heap *this, __int128 *a2, uint64_t a3, uint64_t *a4, __int16 *a5, _WORD *a6)
{
  v12 = *(this + 3);
  v13 = (*(this + 2) + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v13 + 176 > v12)
  {
    v13 = RB::Heap::alloc_slow(this, 0xB0uLL, 15);
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
  *v13 = &unk_1F0A3A430;
  *(v13 + 48) = v14;
  v17 = *a2;
  v18 = a2[2];
  *(v13 + 80) = a2[1];
  *(v13 + 96) = v18;
  *(v13 + 64) = v17;
  result = *a3;
  v20 = *(a3 + 16);
  v21 = *(a3 + 48);
  *(v13 + 144) = *(a3 + 32);
  *(v13 + 160) = v21;
  *(v13 + 112) = result;
  *(v13 + 128) = v20;
  *v13 = &off_1F0A3BAF8;
  return result;
}

unint64_t RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Gradient>::copy_shadow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 92) & 0x10) != 0)
  {
    return 0;
  }

  v28 = 0.0;
  if (!RB::Fill::Gradient::get_alpha((a1 + 112), &v28) || (RB::DisplayList::Item::clip_affects_blurred_bounds(a1, *(a3 + 64)) & 1) != 0)
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

void *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Gradient>::make_clip(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v27 = 0.0;
  v28 = a3;
  if (!RB::Fill::Gradient::get_alpha((a1 + 112), &v27))
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