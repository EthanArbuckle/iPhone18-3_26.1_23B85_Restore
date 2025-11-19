BOOL RB::Symbol::Animator::remove_all_animations(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  v2 = *&this[6]._os_unfair_lock_opaque;
  if (v2)
  {
    v3 = *&this[4]._os_unfair_lock_opaque;
    v4 = 88 * v2;
    do
    {
      RB::Symbol::Animation::send_completion(v3, 0);
      v3 = (v3 + 88);
      v4 -= 88;
    }

    while (v4);
    v5 = *&this[6]._os_unfair_lock_opaque;
    if (v5)
    {
      v6 = 88 * v5;
      v7 = (*&this[4]._os_unfair_lock_opaque + 80);
      do
      {
        v8 = *v7;
        if (*v7 && atomic_fetch_add_explicit((v8 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          RB::Symbol::Model::copy_on_write(v8);
        }

        v9 = *(v7 - 1);
        *(v7 - 1) = 0;
        if (v9)
        {
          std::default_delete<RB::Symbol::Animation::Timing>::operator()[abi:nn200100]((v7 - 1), v9);
        }

        v7 += 11;
        v6 -= 88;
      }

      while (v6);
    }

    *&this[6]._os_unfair_lock_opaque = 0;
    ++this[15]._os_unfair_lock_opaque;
  }

  os_unfair_lock_unlock(this);
  return v2 != 0;
}

void *RB::details::realloc_vector<unsigned int,112ul>(void *__src, void *__dst, unsigned int a3, _DWORD *a4, unsigned int a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      LODWORD(v9) = a3;
      memcpy(__dst, __src, 112 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(112 * a5);
    v9 = ((v8 >> 4) * 0x2492492492492493uLL) >> 64;
    if (*a4 != v9)
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 112 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

void *RB::vector<RB::Symbol::Glyph::Layer,3ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 87) + (*(__dst + 87) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 87) + (*(__dst + 87) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,112ul>(*(__dst + 42), __dst, 3u, __dst + 87, v3);
  *(__dst + 42) = result;
  return result;
}

uint64_t RBPathMakeWithCGPath(const void *a1)
{
  if (!a1)
  {
    return 1;
  }

  if ((CGPathIsPrimitive() & 1) == 0)
  {
    operator new();
  }

  return CFRetain(a1);
}

uint64_t RB::Symbol::Animator::style_mask(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  v2 = *&this[2]._os_unfair_lock_opaque;
  if (v2)
  {
    v3 = *(RB::Symbol::Model::glyph_info(v2) + 464);
  }

  else
  {
    v3 = 0;
  }

  v4 = *&this[6]._os_unfair_lock_opaque;
  if (v4)
  {
    v5 = *&this[4]._os_unfair_lock_opaque;
    v6 = 88 * v4;
    do
    {
      v3 = RB::Symbol::Animation::style_mask(v5) | v3;
      v5 = (v5 + 88);
      v6 -= 88;
    }

    while (v6);
  }

  os_unfair_lock_unlock(this);
  return v3;
}

uint64_t RB::Symbol::GlyphCache::GlyphCache(void)::$_1::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  v2 = *a1;
  if (v2 == *a2)
  {
    return 1;
  }

  else
  {
    return [v2 isEqual:?];
  }
}

uint64_t RB::Symbol::Animator::glyph(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  v2 = *(*&this[2]._os_unfair_lock_opaque + 16);
  os_unfair_lock_unlock(this);
  return v2;
}

float RB::Symbol::Animator::variable_value(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  v2 = *&this[14]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this);
  return v2;
}

uint64_t RB::Symbol::Animator::rendering_mode(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  v2 = *(*&this[2]._os_unfair_lock_opaque + 104);
  os_unfair_lock_unlock(this);
  return v2;
}

BOOL RB::Symbol::Animator::set_position(uint64_t a1, float32x2_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = vceq_f32(*(*(a1 + 8) + 64), a2);
  v5 = vpmin_u32(v4, v4).u32[0];
  if ((v5 & 0x80000000) == 0)
  {
    RB::Symbol::Model::copy_on_write(a1 + 8);
    *(*(a1 + 8) + 64) = *&a2;
    ++*(a1 + 60);
  }

  os_unfair_lock_unlock(a1);
  return v5 >= 0;
}

BOOL RB::Symbol::Animator::set_size(uint64_t a1, float32x2_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = vceq_f32(*(*(a1 + 8) + 72), a2);
  v5 = vpmin_u32(v4, v4).u32[0];
  if ((v5 & 0x80000000) == 0)
  {
    RB::Symbol::Model::copy_on_write(a1 + 8);
    *(*(a1 + 8) + 72) = *&a2;
    ++*(a1 + 60);
  }

  os_unfair_lock_unlock(a1);
  return v5 >= 0;
}

BOOL RB::Symbol::Animator::set_presentation_position(uint64_t a1, float32x2_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = vceq_f32(*(a1 + 48), a2);
  v5 = vpmin_u32(v4, v4).u32[0];
  if ((v5 & 0x80000000) == 0)
  {
    *(a1 + 48) = *&a2;
    ++*(a1 + 60);
  }

  os_unfair_lock_unlock(a1);
  return v5 >= 0;
}

BOOL RB::Symbol::Animator::animating(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  v2 = *&this[6]._os_unfair_lock_opaque != 0;
  os_unfair_lock_unlock(this);
  return v2;
}

float32x2_t **RB::Symbol::Presentation::Presentation(float32x2_t **a1, uint64_t a2, uint64_t a3, char a4, int a5, char a6, float32x2_t a7)
{
  v122 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[125] = 0;
  __dst = a1 + 1;
  a1[126] = 0x200000000;
  v110 = xmmword_195E42760;
  *(a1 + 64) = xmmword_195E42760;
  v109 = xmmword_195E42770;
  *(a1 + 65) = xmmword_195E42770;
  *(a1 + 66) = 0u;
  a1[134] = 0x7FF0000000000000;
  *(a1 + 273) = 0;
  *(a1 + 1096) = 0;
  a1[135] = 0;
  *(a1 + 1088) = 0;
  RB::Heap::Heap((a1 + 138), a1 + 1144, 1024, 0);
  a1[279] = 0;
  *(a1 + 275) = 0u;
  *(a1 + 277) = 0u;
  *(a1 + 271) = 0u;
  *(a1 + 273) = 0u;
  if ((atomic_load_explicit(&_ZGVZN2RB6Symbol12PresentationC1ERNS0_8AnimatorEDv2_fNSt3__18optionalIS4_EE21RBSymbolRenderingModejE13print_symbols, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZN2RB6Symbol12PresentationC1ERNS0_8AnimatorEDv2_fNSt3__18optionalIS4_EE21RBSymbolRenderingModejE13print_symbols))
  {
    v107 = RB::debug_int("RB_PRINT_SYMBOLS", v106);
    if ((v107 & 0x100000000) != 0)
    {
      v108 = v107;
    }

    else
    {
      v108 = 0;
    }

    _ZZN2RB6Symbol12PresentationC1ERNS0_8AnimatorEDv2_fNSt3__18optionalIS4_EE21RBSymbolRenderingModejE13print_symbols = v108;
    __cxa_guard_release(&_ZGVZN2RB6Symbol12PresentationC1ERNS0_8AnimatorEDv2_fNSt3__18optionalIS4_EE21RBSymbolRenderingModejE13print_symbols);
  }

  os_unfair_lock_lock(a2);
  v18 = (a2 + 8);
  v17 = *(a2 + 8);
  v19 = *a1;
  if (*a1 != v17)
  {
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v19 + 8))(v19);
      }

      v19 = *v18;
      if (!*v18)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v19 = *(a2 + 8);
      if (!v17)
      {
        goto LABEL_8;
      }
    }

    atomic_fetch_add_explicit(v19 + 2, 1u, memory_order_relaxed);
LABEL_8:
    *a1 = v19;
  }

  if ((a6 & 7) == 0 && (a4 & 1) == 0)
  {
    goto LABEL_22;
  }

  v20 = *(v19 + 72);
  v14.i32[1] = v20.i32[1] & 0x7FFFFFFF;
  v21 = vcgt_s32(vneg_f32(0x7F0000007FLL), (*&v20 & 0x7FFFFFFF7FFFFFFFLL));
  *&v22.f64[0] = vpmin_u32(v21, v21);
  if ((LODWORD(v22.f64[0]) & 0x80000000) == 0)
  {
    v20 = *(RB::Symbol::Model::glyph_info(v19) + 80);
  }

  if (a4)
  {
    HIDWORD(v22.f64[0]) = HIDWORD(a3);
    v23 = vmvn_s8(vceq_f32(v20, a3));
    *v14.i8 = vpmax_u32(v23, v23);
    if (v14.i32[0] < 0)
    {
      v33 = vrecpe_f32(v20);
      v34 = vmul_f32(vrecps_f32(v20, v33), v33);
      v35 = vmul_f32(vrecps_f32(v20, v34), vmul_f32(a3, v34));
      v15.i64[1] = 0;
      v110 = vmulq_n_f64(xmmword_195E42760, v35.f32[0]);
      v14 = xmmword_195E42770;
      v22 = vmulq_n_f64(xmmword_195E42770, v35.f32[1]);
      v109 = v22;
      if ((a6 & 7) != 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      v32 = 0uLL;
      v13 = v109;
      v14 = v110;
      goto LABEL_21;
    }
  }

  if ((a6 & 7) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  LODWORD(v22.f64[0]) = 0;
  v14.i32[0] = 0;
  v15.i32[1] = 1056964608;
  v24 = vmul_f32(v20, 0x3F0000003F000000);
  v15.i32[0] = a6 & 1;
  v16.i32[0] = v15.i32[0];
  v25 = vbsl_s8(vdup_lane_s32(vceq_s32(v16, *&v22.f64[0]), 0), v24, vrev64_s32(v24));
  v26 = vdupq_lane_s32(*&vceqq_s32(v15, v14), 0);
  v27 = vbslq_s8(v26, v109, xmmword_195E42760);
  v28 = xmmword_195E444C0;
  v29 = vbslq_s8(v26, v110, xmmword_195E444C0);
  v28.i32[0] = a6 & 2;
  v30 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v28, v14), 0), v29, vnegq_f64(v29));
  LODWORD(v29.f64[0]) = a6 & 4;
  v31 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v29, v14), 0), v27, vnegq_f64(v27));
  v14 = v30;
  v32 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v110, *v24.i32), v109, *&v24.i32[1]), v30, -*v25.i32), v31, -*&v25.i32[1]);
  v13 = v31;
LABEL_21:
  *(a1 + 64) = v14;
  *(a1 + 65) = v13;
  *(a1 + 66) = v32;
LABEL_22:
  if ((a6 & 0x20) != 0)
  {
    *(a1 + 1096) = 1;
  }

  if ((a6 & 8) != 0 || _ZZN2RB6Symbol12PresentationC1ERNS0_8AnimatorEDv2_fNSt3__18optionalIS4_EE21RBSymbolRenderingModejE13print_symbols >= 2)
  {
    operator new();
  }

  if (a5 != 255 && (*a1)[13].u8[0] != a5)
  {
    RB::Symbol::Model::copy_on_write(a1);
    RB::Symbol::Model::set_rendering_mode(*a1, a5, *(a2 + 56));
  }

  v36 = *(a2 + 24);
  if (v36)
  {
    v37 = 0;
    v38 = v36 - 1;
    v39 = 88 * v36;
    do
    {
      v40 = v36 - 1;
      v41 = *(a2 + 16) + 88 * (v36 - 1);
      if ((*(v41 + 48) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v42 = v39;
        v43 = v38;
        if (v36 - 2 >= 0)
        {
          while (1)
          {
            v44 = *(a2 + 16) + v42;
            if ((*(v41 + 16) >> *(v44 - 172)))
            {
              v45 = (v44 - 176);
              v46 = (v44 - 8);
              if (v43 >= *(a2 + 24))
              {
                v46 = (a2 + 8);
              }

              v47 = RB::Symbol::Animation::begin_time_after(v45, *(a2 + 40), *v46, v13.f64[0], *v14.i64);
              *(v41 + 48) = v47;
              v48 = *(v41 + 12) & 0xFFFFFDFF;
              *(v41 + 12) = v48;
              if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                break;
              }
            }

            --v43;
            v42 -= 88;
            if (v43 <= 0)
            {
              goto LABEL_41;
            }
          }

          *(v41 + 12) = v48 | 0x4000;
        }
      }

LABEL_41:
      RB::Symbol::Animation::will_apply(v41, *(a2 + 40));
      v49 = *(v41 + 48);
      v13.f64[0] = *(a2 + 40);
      if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v13.f64[0] < v49)
      {
        *(v41 + 12) |= 0x8000u;
        *&v13.f64[0] = a1[134];
        if (v13.f64[0] <= v49)
        {
          v49 = *(a1 + 134);
        }

        *(a1 + 134) = v49;
      }

      else if ((v37 >> *(v41 + 4)))
      {
        *(v41 + 12) |= 0x8000u;
      }

      else
      {
        v37 |= *(v41 + 16);
      }

      --v38;
      v39 -= 88;
      v36 = v40;
    }

    while (v40);
  }

  v51 = a1 + 135;
  v117 = 0;
  HIDWORD(v52.f64[0]) = 64;
  v118 = 0x4000000000;
  v119 = 0;
  v120 = 0x4000000000;
  v121 = 0;
  for (i = *(a1 + 273); ; *(a1 + 273) = i)
  {
    if (i == 2)
    {
      if (a1[125])
      {
        v64 = a1[125];
      }

      else
      {
        v64 = __dst;
      }

      v65 = *(a1 + 252);
      if (v65)
      {
        v66 = 496 * v65;
        do
        {
          RB::Symbol::Presentation::Symbol::make_layers(v64, a1);
          v64 += 62;
          v66 -= 496;
        }

        while (v66);
      }

LABEL_73:
      v60 = *(a2 + 24);
      if (v60 < 1)
      {
        goto LABEL_84;
      }

      v61 = 0;
      v63 = 0;
      v62 = 1;
LABEL_75:
      v67 = 88 * v61;
      do
      {
        v68 = *(a2 + 16);
        v69 = (v68 + v67);
        v70 = *(v68 + v67 + 12);
        if (v70 & 0x8000) == 0 && ((v70 >> *(a1 + 273)))
        {
          v71 = (v68 + v67 + 168);
          if ((v61 + 1) >= *(a2 + 24))
          {
            v71 = (a2 + 8);
          }

          RB::Symbol::Animation::apply(v69, *(a2 + 40), *v71, a2, a1, v116);
        }

        v61 += v62;
        v72 = v61 < v60;
        if (v63)
        {
          v72 = v61 >= 0;
        }

        v67 += 88 * v62;
      }

      while (v72);
      goto LABEL_84;
    }

    if (i)
    {
      goto LABEL_73;
    }

    v54 = *a1;
    v55 = (*a1)[13].i32[0];
    if ((v55 & 0x1000000) == 0 && v55 != 0xFF && *(v54 + 16) != 0)
    {
      v57 = *(a1 + 252);
      if (*(a1 + 253) < v57 + 1)
      {
        RB::vector<RB::Symbol::Presentation::Symbol,2ul,unsigned int>::reserve_slow(__dst, v57 + 1);
        v57 = *(a1 + 252);
      }

      v58 = a1[125];
      if (!v58)
      {
        v58 = __dst;
      }

      v59 = &v58[62 * v57];
      atomic_fetch_add_explicit((v54 + 8), 1u, memory_order_relaxed);
      *v59 = v54;
      v59[55] = 0;
      v59[56] = 0x300000000;
      v59[58] = 0;
      v59[59] = 0;
      v59[57] = 0;
      v59[60].i16[0] = 0;
      v59[60].i32[1] = 2143289344;
      v59[61].i16[0] = 0;
      ++*(a1 + 252);
    }

    v60 = *(a2 + 24);
    if (v60 > 0)
    {
      v61 = v60 - 1;
      v62 = -1;
      v63 = 1;
      goto LABEL_75;
    }

LABEL_84:
    v73 = *(a1 + 273);
    if (v73 == 2)
    {
      break;
    }

    i = v73 + 1;
  }

  v74 = *(a1 + 252);
  if (v74 >= 2)
  {
    v52 = vaddq_f64(*(a1 + 66), vcvtq_f64_f32(vsub_f32((*a1)[8], vadd_f32(*(a2 + 48), a7))));
    *(a1 + 66) = v52;
  }

  if (*(a1 + 1088) == 1)
  {
    RB::Symbol::Presentation::apply_interpolations(a1);
    v74 = *(a1 + 252);
  }

  v75 = a1[125];
  if ((a6 & 0x10) != 0)
  {
    if (v75)
    {
      v76 = a1[125];
    }

    else
    {
      v76 = __dst;
    }

    if (v74)
    {
      v77 = 496 * v74;
      do
      {
        RB::Symbol::Presentation::Symbol::merge_layers(v76, a1);
        v76 = (v76 + 496);
        v77 -= 496;
      }

      while (v77);
      v75 = a1[125];
      v74 = *(a1 + 252);
      goto LABEL_98;
    }
  }

  else
  {
LABEL_98:
    if (v75)
    {
      v78 = v75;
    }

    else
    {
      v78 = __dst;
    }

    if (v74)
    {
      v113 = &v78[62 * v74];
      do
      {
        v79 = RB::Symbol::Model::glyph_info(*v78);
        v80 = v78[55];
        if (!v80)
        {
          v80 = (v78 + 1);
        }

        v81 = *(v78 + 112);
        if (v81)
        {
          v82 = v79;
          v83 = (v80 + 128);
          v84 = 144 * v81;
          do
          {
            v52.f64[0] = *v83;
            *v52.f64 = fmaxf(COERCE_FLOAT(*v83), COERCE_FLOAT(HIDWORD(*v83)));
            if (*v51 >= *v52.f64)
            {
              LODWORD(v52.f64[0]) = *v51;
            }

            *v51 = LODWORD(v52.f64[0]);
            v85 = v78[57];
            if (v85)
            {
              v86 = *(v83 - 16);
              v87 = *(v86 + 14);
              if (v87)
              {
                v88 = *(v83 - 7);
                v89 = vmvn_s8(vceq_f32(v88, 0x3F80000000000000));
                *&v52.f64[0] = vpmax_u32(v89, v89);
                if ((LODWORD(v52.f64[0]) & 0x80000000) != 0)
                {
                  v90 = RB::Symbol::Glyph::layer_draw_duration(v82, v86, *&v52.f64[0]);
                  v91 = *(v85 + 26);
                  if (*(v85 + 27) < v91 + 1)
                  {
                    RB::vector<RB::Symbol::Glyph::StrokeRange,4ul,unsigned int>::reserve_slow(v85, v91 + 1);
                    v91 = *(v85 + 26);
                  }

                  v92 = *(v85 + 12);
                  if (!v92)
                  {
                    v92 = v85;
                  }

                  v93 = (v92 + 24 * v91);
                  v93->i32[0] = v87;
                  v93[1] = v88;
                  v93[2].f32[0] = v90;
                  ++*(v85 + 26);
                }
              }
            }

            v83 += 18;
            v84 -= 144;
          }

          while (v84);
        }

        v78 += 62;
      }

      while (v78 != v113);
    }
  }

  *v52.f64 = *(a1 + 270) + ((*(a2 + 64) - *(a1 + 270)) * 0.35);
  *(a1 + 271) = LODWORD(v52.f64[0]);
  *(a2 + 64) = LODWORD(v52.f64[0]);
  v94 = *(a2 + 24);
  if (v94)
  {
    v95 = 0;
    v96 = 0;
    while (1)
    {
      v97 = *(a2 + 16);
      v98 = v97 + 88 * v96;
      v99 = *(v98 + 12);
      if ((v99 & 0x2000) != 0)
      {
        v103 = *(a2 + 40);
        v100 = v96 + 1;
      }

      else
      {
        v100 = v96 + 1;
        v101 = v97 + 88 * v96 + 168;
        if (v100 >= *(a2 + 24))
        {
          v102 = (a2 + 8);
        }

        else
        {
          v102 = v101;
        }

        v52.f64[0] = RB::Symbol::Animation::end_time(v98, *v102, *&v52.f64[0]);
        v103 = *(a2 + 40);
        if (v103 >= v52.f64[0])
        {
          v99 = *(v98 + 12) | 0x2000;
LABEL_132:
          *(v98 + 12) = v99;
          goto LABEL_133;
        }

        v99 = *(v98 + 12);
        if ((a1[134] & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000)
        {
          if (*(a1 + 134) <= v52.f64[0])
          {
            *&v52.f64[0] = a1[134];
          }

          a1[134] = *&v52.f64[0];
          v99 |= 0x4000u;
          goto LABEL_132;
        }
      }

LABEL_133:
      *(v98 + 12) = v99 & 0xFFFF7FFF;
      *(v98 + 56) = v103;
      v95 |= (v99 & 0x2000) >> 13;
      v96 = v100;
      if (v100 == v94)
      {
        goto LABEL_136;
      }
    }
  }

  LOBYTE(v95) = 0;
LABEL_136:
  if (_ZZN2RB6Symbol12PresentationC1ERNS0_8AnimatorEDv2_fNSt3__18optionalIS4_EE21RBSymbolRenderingModejE13print_symbols > 0 && ((*__p = 0u, memset(v115, 0, sizeof(v115)), RB::Symbol::Presentation::print(a1, __p, a2, 1), v115[7] >= 0) ? (v104 = __p) : (v104 = __p[0]), printf("\n%s\n", v104), (v115[7] & 0x80000000) != 0))
  {
    operator delete(__p[0]);
    if (v95)
    {
LABEL_142:
      RB::Symbol::Animator::remove_finished_animations_locked(a2);
    }
  }

  else if (v95)
  {
    goto LABEL_142;
  }

  if (v119)
  {
    free(v119);
  }

  if (v117)
  {
    free(v117);
  }

  os_unfair_lock_unlock(a2);
  return a1;
}

void sub_195D1E580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, RB::Symbol::Presentation::Symbol *a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  __cxa_guard_abort(&_ZGVZN2RB6Symbol12PresentationC1ERNS0_8AnimatorEDv2_fNSt3__18optionalIS4_EE21RBSymbolRenderingModejE13print_symbols);
  RB::vector<std::unique_ptr<RB::Symbol::Glyph::Layer,RB::Destroy<RB::Symbol::Glyph::Layer>>,0ul,unsigned int>::~vector(v27 + 2224);
  RB::vector<RB::path_ptr,0ul,unsigned int>::~vector(v27 + 2208);
  RB::vector<RB::refcounted_ptr<RB::Symbol::Model const>,0ul,unsigned int>::~vector(v27 + 2192);
  std::unique_ptr<RB::vector<RB::Symbol::Presentation::KeyframeInfo,0ul,unsigned long>>::reset[abi:nn200100]((v27 + 2184), 0);

  RB::Heap::~Heap((v27 + 1104));
  RB::vector<RB::Symbol::Presentation::Symbol,2ul,unsigned int>::~vector(a15);
  v29 = *v27;
  if (*v27)
  {
    if (atomic_fetch_add_explicit((v29 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      RB::Symbol::Presentation::Presentation(v29);
    }
  }

  _Unwind_Resume(a1);
}

void RB::Symbol::Glyph::resolve_draw_attachments(RB::Symbol::Glyph *this, NSArray *a2)
{
  v4 = a2;
  v5 = this;
  v82 = *MEMORY[0x1E69E9840];
  v6 = *(this + 114);
  if ([(NSArray *)a2 count]== v6)
  {
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v7 = *(v5 + 114);
    if (v7)
    {
      v8 = 0;
      v9 = v5 + 112;
      v61 = v5 + 112;
      v63 = v5;
      v64 = v4;
      v62 = *(v5 + 114);
      while (1)
      {
        v10 = *(v5 + 56);
        if (!v10)
        {
          v10 = v9;
        }

        v72 = &v10[112 * v8];
        v72[108] &= ~2u;
        v11 = [(NSArray *)v4 objectAtIndexedSubscript:v8];
        if (objc_opt_respondsToSelector())
        {
          v12 = [v11 drawAttachments];
          v13 = v12;
          if (v12)
          {
            v14 = [v12 attachments];
            v15 = [v13 count];
            if (v15)
            {
              v65 = v8;
              v66 = v14 + 8 * v15;
              while (1)
              {
                v16 = *v14;
                v17 = *(*v14 + 12);
                if (v17 >= *(v5 + 114) || !v16[5])
                {
                  goto LABEL_56;
                }

                v18 = *(v5 + 56);
                if (!v18)
                {
                  v18 = v9;
                }

                v19 = &v18[112 * v17];
                if ((v19[26] & 0x30000000) != 0x10000000)
                {
                  goto LABEL_56;
                }

                v20 = *v19;
                v21 = *(*v19 + 56);
                if (!v21)
                {
                  goto LABEL_56;
                }

                v22 = *(v16 + 4);
                v23 = *(v5 + 17) - v22;
                *&v22 = v19[15];
                v24 = vrecpe_f32(*&v22);
                v25 = vmul_f32(vrecps_f32(*&v22, v24), v24);
                v26 = vmul_f32(v25, vrecps_f32(*&v22, v25)).f32[0];
                v27 = *(v16 + 3) * v26;
                v28 = v23 * v26;
                if ((~*v16 & 3) != 0)
                {
                  break;
                }

                if ((*v16 & 4) != 0)
                {
                  v29 = -1;
                  goto LABEL_33;
                }

LABEL_56:
                v14 += 8;
                if (v14 == v66)
                {
                  goto LABEL_60;
                }
              }

              RB::Path::ClipStroke::AttachmentResolver::AttachmentResolver(v76, *(v20 + 48), v21, v16[4], *(v16 + 1), v27, v28, v26 * 0.5);
              v30 = 32;
              if (*(v20 + 40) == 0x195E47920)
              {
                v30 = 16;
              }

              RBPathMap(*(v20 + v30), *(v20 + v30 + 8), v76, 0);
              if (v79 == 1)
              {
                v31 = v74;
                v32 = v16[3];
                if (!v74)
                {
                  goto LABEL_27;
                }

                v29 = 0;
                v33 = v73 + 4;
                while (*(v33 - 1) != v32 || *v33 != v78)
                {
                  ++v29;
                  v33 += 8;
                  if (v74 == v29)
                  {
                    goto LABEL_27;
                  }
                }

                if (v29 < 0)
                {
LABEL_27:
                  v34 = v78;
                  v35 = v80;
                  v36 = v81;
                  v37 = v74;
                  if (v75 < v74 + 1)
                  {
                    v69 = v81;
                    v71 = v80;
                    RB::vector<RB::Shader::Path::CubicSegment,0ul,unsigned long>::reserve_slow(&v73, v74 + 1);
                    v37 = v74;
                    v36 = v69;
                    v35 = v71;
                  }

                  v38 = (v73 + 32 * v37);
                  v38->i32[0] = v32;
                  v38->i32[1] = v34;
                  v38[1].i32[0] = v31 + 1;
                  v38[2] = vcvt_f32_f64(v35);
                  v38[3] = vcvt_f32_f64(v36);
                  ++v74;
                  v39 = v19[15] / *(v72 + 15);
                  *(v73 + 4 * v74 - 2) = vmul_n_f32(*(v73 + 32 * v74 - 16), v39);
                  *(v73 + 4 * v74 - 1) = vmul_n_f32(*(v73 + 32 * v74 - 8), v39);
                  *(*(v20 + 48) + 16 * v34) |= (*(v73 + 8 * v74 - 6) << 8) | 0x80;
                  v29 = v31;
                }
              }

              else
              {
                v29 = -1;
              }

              *&v76[0].f64[0] = &unk_1F0A3F928;
              if (v77)
              {
                free(v77);
              }

LABEL_33:
              v68 = *(v19 + 14);
              if (v19 == v72)
              {
                v40 = 0;
                if ((v29 & 0x8000000000000000) == 0)
                {
                  goto LABEL_37;
                }
              }

              else
              {
                v40 = *v19;
                if (v40)
                {
                  atomic_fetch_add_explicit((v40 + 8), 1u, memory_order_relaxed);
                }

                if ((v29 & 0x8000000000000000) == 0)
                {
LABEL_37:
                  v41 = v73 + 32 * v29;
                  v70 = *(v41 + 2);
                  v2 = *(v41 + 2);
                  v3 = *(v41 + 3);
LABEL_40:
                  v42 = *v16;
                  if ((*v16 & 4) != 0)
                  {
                    v43 = v16[2];
                    v45 = 1;
                    if (!v70)
                    {
                      v45 = 2;
                    }

                    v44 = *&v16[v45];
                  }

                  else
                  {
                    v43 = 0;
                    v44 = 1.0;
                  }

                  if (v16[5])
                  {
                    v46 = 0;
                    *&v47 = v27;
                    v48 = v28;
                    *(&v47 + 1) = v48;
                    v67 = v47;
                    v49 = v42 & 1;
                    v50 = (v42 >> 1) & 1;
                    v51 = (*v16 & 4u) >> 2;
                    do
                    {
                      v52 = v16[v46 + 10];
                      v53 = *v72;
                      v54 = *(*v72 + 72);
                      if (*(*v72 + 76) < v54 + 1)
                      {
                        RB::vector<RB::Symbol::Glyph::Shape::Attachment,0ul,unsigned int>::reserve_slow(v53 + 64, v54 + 1);
                        v54 = *(v53 + 72);
                      }

                      v55 = *(v53 + 64) + (v54 << 6);
                      *v55 = v68;
                      if (v40)
                      {
                        atomic_fetch_add_explicit((v40 + 8), 1u, memory_order_relaxed);
                      }

                      *(v55 + 8) = v40;
                      *(v55 + 16) = v70;
                      *(v55 + 20) = v52;
                      *(v55 + 24) = v2;
                      *(v55 + 32) = v3;
                      *(v55 + 40) = v67;
                      *(v55 + 48) = v43;
                      *(v55 + 52) = v44;
                      *(v55 + 56) = v49;
                      *(v55 + 57) = v50;
                      *(v55 + 58) = v51;
                      ++*(v53 + 72);
                      ++v46;
                    }

                    while (v46 < v16[5]);
                  }

                  if (v40)
                  {
                    v5 = v63;
                    v4 = v64;
                    v9 = v61;
                    v7 = v62;
                    v8 = v65;
                    if (atomic_fetch_add_explicit((v40 + 8), 0xFFFFFFFF, memory_order_release) == 1)
                    {
                      RB::Symbol::Glyph::resolve_draw_attachments();
                    }
                  }

                  else
                  {
                    v5 = v63;
                    v4 = v64;
                    v9 = v61;
                    v7 = v62;
                    v8 = v65;
                  }

                  goto LABEL_56;
                }
              }

              v70 = 0;
              goto LABEL_40;
            }

LABEL_60:
            v56 = *v72;
            if (*(*v72 + 72))
            {
              v72[108] |= 2u;
              *(v72 + 26) |= 0x10u;
              v57 = *(v56 + 64);
              v58 = *(v56 + 72);
              v59 = 126 - 2 * __clz(v58);
              if (v58)
              {
                v60 = v59;
              }

              else
              {
                v60 = 0;
              }

              std::__introsort<std::_ClassicAlgPolicy,RB::Symbol::Glyph::resolve_draw_attachments(NSArray *)::$_0 &,RB::Symbol::Glyph::Shape::Attachment *,false>(v57, (v57 + (v58 << 6)), v60, 1);
            }
          }
        }

        if (++v8 == v7)
        {
          if (v73)
          {
            free(v73);
          }

          return;
        }
      }
    }
  }
}

void sub_195D1EC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a68)
  {
    free(a68);
  }

  if (a24)
  {
    free(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t RB::Symbol::Model::style_color_index(int a1)
{
  if ((a1 - 5) >= 4)
  {
    v1 = -1;
  }

  else
  {
    v1 = a1 - 4;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

float RB::Symbol::Model::alpha(RB::Symbol::Model *this, unint64_t a2, float a3)
{
  v3 = 3;
  if (a2 < 3)
  {
    v3 = a2;
  }

  LOBYTE(a3) = *(this + v3 + 108);
  return LODWORD(a3) * 0.0039216;
}

uint64_t RBPathRetain(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return v2();
  }

  return result;
}

void RB::Symbol::Presentation::Symbol::make_layers(float32x2_t **this, float32x2_t **a2)
{
  v4 = RB::Symbol::Model::glyph_info(*this);
  v5 = v4[12];
  v47 = v4[11];
  v48 = v4[13];
  v6 = *this;
  v7 = (*this)[11];
  if (*this != *a2)
  {
    v8 = RB::Symbol::Model::glyph_info(*a2);
    v6 = *this;
    v7 = vneg_f32(vmla_f32(vsub_f32(vneg_f32(vmla_f32(vsub_f32(v7, (*a2)[8]), v8[10], (*a2)[7])), (*this)[8]), (*this)[7], v4[10]));
  }

  if (*(this + 481) == 1)
  {
    v9 = *(this + 480);
  }

  else
  {
    v9 = *(v6 + 106);
    *(this + 240) = v9 | 0x100;
  }

  v10 = 1.25;
  if (!v9)
  {
    v10 = 1.0;
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0.5;
  }

  v12 = *(v6 + 72);
  v13 = *(v6 + 80);
  v14 = vcgt_s32(vneg_f32(0x7F0000007FLL), (*&v12 & 0x7FFFFFFF7FFFFFFFLL));
  if ((vpmin_u32(v14, v14).u32[0] & 0x80000000) != 0)
  {
    v15 = v4[10];
    v16 = vmvn_s8(vceq_f32(v12, v15));
    if ((vpmax_u32(v16, v16).u32[0] & 0x80000000) != 0)
    {
      v17 = vrecpe_f32(v15);
      v18 = vmul_f32(vrecps_f32(v15, v17), v17);
      v13 = vmul_f32(vmul_f32(vmul_f32(v12, v13), v18), vrecps_f32(v15, v18));
    }
  }

  if (*(a2 + 1096))
  {
    v19 = v4[10].f32[1] - v4[8].f32[1];
  }

  else
  {
    v19 = 0.0;
  }

  v20 = v4[57].u32[0];
  v21 = v20 + *(this + 112);
  if (*(this + 113) < v21)
  {
    RB::vector<RB::Symbol::Presentation::Layer,3ul,unsigned int>::reserve_slow(this + 1, v21);
    v20 = v4[57].u32[0];
    if (v20)
    {
      goto LABEL_19;
    }
  }

  else if (v20)
  {
LABEL_19:
    v22 = 0;
    v23 = 112 * v20;
    __asm { FMOV            V10.2S, #1.0 }

    while (1)
    {
      if (v4[56])
      {
        v29 = v4[56];
      }

      else
      {
        v29 = v4 + 14;
      }

      v30 = *(this + 112);
      if (*(this + 113) < v30 + 1)
      {
        RB::vector<RB::Symbol::Presentation::Layer,3ul,unsigned int>::reserve_slow(this + 1, v30 + 1);
        v30 = *(this + 112);
      }

      v31 = this[55];
      if (!v31)
      {
        v31 = (this + 1);
      }

      v32 = &v31[18 * v30];
      *v32 = &v29[v22 / 8];
      *(v32 + 1) = 0;
      *(v32 + 1) = RBColorNull;
      *(v32 + 2) = xmmword_195E444D0;
      *(v32 + 3) = xmmword_195E444D0;
      *(v32 + 16) = 0;
      *(v32 + 9) = 0x3F80000000000000;
      *(v32 + 88) = 0u;
      *(v32 + 104) = 0u;
      *(v32 + 15) = _D10;
      *(v32 + 16) = 0;
      *(v32 + 17) = 0;
      v33 = *(this + 112);
      *(this + 112) = v33 + 1;
      v34 = this[55];
      if (!v34)
      {
        v34 = (this + 1);
      }

      v35 = &v34[18 * v33];
      v35[6].f32[0] = v11;
      v35[10] = v4[10];
      v35[11] = v7;
      v35[17].f32[0] = v19;
      v35[12] = v47;
      v35[13] = v5;
      v35[14] = v48;
      v35[15] = v13;
      v36 = RB::Symbol::Model::style_color_index((*(*v35 + 104) >> 18) & 0xF);
      v38 = v36;
      if (v36 < (*this)[6].i32[0])
      {
        v39 = *(*&(*this)[5] + 8 * v36);
        if (v39)
        {
          v40 = v35[1];
          if (v40 != v39)
          {

            v35[1] = v39;
          }
        }
      }

      if (!*&v35[1] && v38 < (*this)[4].i32[0])
      {
        v41 = *&(*this)[3] + 16 * v38;
        v37 = *(v41 + 12);
        if (v37 != -32768.0)
        {
          v42 = *v41;
          v35[3].i32[0] = *(v41 + 8);
          v35[2] = v42;
          v35[3].f32[1] = v37;
        }
      }

      v43 = *(this + 121);
      if (v43 < 0.0)
      {
        v43 = (*this)[12].f32[0];
      }

      if (v43 < 0.0)
      {
        break;
      }

      if ((*(this + 489) & 1) != 0 || (RB::Symbol::Model::should_variable_draw(*this, v4) & 1) == 0)
      {
        v44 = *v35;
        v45 = *(*v35 + 88);
        if (v45 != -1)
        {
          if (v45 <= v43)
          {
            v46 = 0;
LABEL_51:
            v37 = RB::Symbol::Model::alpha(*this, v46, v37);
          }

          else
          {
            v37 = 0.3;
            if (v4[3].i32[0] == 3)
            {
              v46 = 2;
              goto LABEL_51;
            }
          }

          v35[4] = vmul_n_f32(v35[4], v37);
          goto LABEL_53;
        }

        goto LABEL_49;
      }

      v44 = *v35;
      LODWORD(v37) = vcgt_f32(vdup_lane_s32(*(*v35 + 96), 1), *(*v35 + 96)).u32[0];
      if ((LOBYTE(v37) & 1) == 0)
      {
        goto LABEL_49;
      }

      RB::Symbol::Model::variable_draw_params(*this, v43, v44, v49);
      v35[4] = vmul_n_f32(v35[4], v50);
      v35[5].i32[1] = v51;
      v35[9] = v49[0];
LABEL_53:
      v22 += 112;
      if (v23 == v22)
      {
        return;
      }
    }

    v44 = *v35;
LABEL_49:
    v35[4].f32[0] = v35[4].f32[0] * RB::Symbol::Model::alpha(*this, (v44[26] >> 10), v37);
    goto LABEL_53;
  }
}

void RB::Symbol::Presentation::Symbol::merge_layers(RB::Symbol::Presentation::Symbol *this, size_t *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(this + 59))
  {
    return;
  }

  v3 = *(this + 112);
  if (v3 < 2)
  {
    return;
  }

  if (v3 <= 0x200)
  {
    MEMORY[0x1EEE9AC00](this, a2);
    v5 = &v25 - ((v6 + 15) & 0xFFFFFFFF0);
    bzero(v5, v6);
  }

  else
  {
    v5 = malloc_type_malloc(8 * v3, 0x100004000313F17uLL);
    if (!v5)
    {
      goto LABEL_36;
    }
  }

  v26 = a2;
  v27 = v3;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  for (i = 1; i < *(this + 112); ++i)
  {
    v11 = *(this + 55);
    if (!v11)
    {
      v11 = this + 8;
    }

    v12 = &v11[144 * v7];
    v13 = &v11[144 * i];
    v14 = v12->i64[0];
    v15 = *(v12->i64[0] + 104);
    v16 = v13->i64[0];
    v17 = *(v13->i64[0] + 104);
    if (((v17 ^ v15) & 0x3C0000) != 0 || ((v17 | v15) & 1) != 0 && (*(v14 + 76) != 0.0 || *(v16 + 76) != 0.0))
    {
      break;
    }

    if (v12->i64[1] != v13->i64[1] || (vminv_u16(vmovn_s32(vceqq_f32(v12[1], v13[1]))) & 1) == 0)
    {
      break;
    }

    if ((v15 & 0x3C0000) == 0x240000)
    {
      if (!CGColorEqualToColor(*(v14 + 16), *(v16 + 16)) || ![*(v12->i64[0] + 8) isEqualToString:*(v13->i64[0] + 8)])
      {
        break;
      }

      v14 = v12->i64[0];
      v15 = *(v12->i64[0] + 104);
    }

    if ((v15 & 0x3C0000) == 0x300000 && *(v14 + 16) != *(v13->i64[0] + 16))
    {
      break;
    }

LABEL_21:
    ;
  }

  v18 = i - v7;
  if (i != v7)
  {
    v19 = &v5[8 * v8++];
    *v19 = v7;
    *(v19 + 1) = v18;
    v9 |= v18 > 1;
  }

  if (i != *(this + 112))
  {
    v7 = i;
    goto LABEL_21;
  }

  if (v9)
  {
    v20 = 8 * v8;
    v21 = v26;
    v22 = ((v26[140] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v23 = &v22[8 * v8];
    if (v23 > v26[141])
    {
      v22 = RB::Heap::alloc_slow(v26 + 138, 8 * v8, 3);
      v20 = 8 * v8;
      v21 = v26;
    }

    else
    {
      v26[140] = v23;
    }

    memcpy(v22, v5, v20);
    v24 = ((v21[140] + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v24 + 2) > v21[141])
    {
      v24 = RB::Heap::alloc_slow(v21 + 138, 0x10uLL, 7);
    }

    else
    {
      v21[140] = (v24 + 2);
    }

    *v24 = v22;
    v24[1] = v8;
    *(this + 59) = v24;
  }

  if (v27 >= 0x201)
  {
LABEL_36:
    free(v5);
  }
}

void sub_195D1F434(_Unwind_Exception *exception_object)
{
  if (*(v2 - 96) >= 0x201)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void RB::Config::debug_value()
{
  if (__cxa_guard_acquire(&qword_1ED6D53E0))
  {
    _MergedGlobals_5 = RB::Config::debug_value(char const*)::$_0::operator()();

    __cxa_guard_release(&qword_1ED6D53E0);
  }
}

uint64_t RB::debug_int(RB *this, const char *a2)
{
  RB::Config::debug_value(this, &v6);
  v2 = v6;
  v4 = RB::Config::int_value(v6, v3);
  if (v2)
  {
    CFRelease(v2);
  }

  return v4 & 0xFFFFFFFFFFLL;
}

void RB::Config::debug_value(RB::Config *this@<X0>, void *a2@<X8>)
{
  v5 = getenv(this);
  if (v5)
  {
    v6 = v5;
    v7 = strlen(v5);
    *a2 = CFStringCreateWithBytesNoCopy(0, v6, v7, 0x8000100u, 1u, *MEMORY[0x1E695E498]);
  }

  else
  {
    if ((atomic_load_explicit(&qword_1ED6D53E0, memory_order_acquire) & 1) == 0)
    {
      RB::Config::debug_value();
    }

    if (_MergedGlobals_5)
    {
      v8 = key;
      v9 = *MEMORY[0x1E695E8B8];
      v10 = *MEMORY[0x1E695E898];
      v11 = CFPreferencesCopyValue(key, *MEMORY[0x1E695E8A8], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      *a2 = v11;
      if (!v11)
      {
        v12 = CFPreferencesCopyValue(v8, *MEMORY[0x1E695E890], v9, v10);
        *a2 = v12;
        if (!v12)
        {
          *a2 = CFPreferencesCopyValue(v8, @"com.apple.RenderBox", v9, v10);
        }
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      *a2 = 0;
    }
  }
}

uint64_t RB::Config::debug_value(char const*)::$_0::operator()()
{
  v0 = CFPreferencesCopyValue(@"RBAllowDebuggingDefaults", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v2 = RB::Config::int_value(v0, v1);
  if (v0)
  {
    CFRelease(v0);
  }

  return BYTE4(v2) & (v2 != 0);
}

uint64_t RB::Config::int_value(const __CFString *this, const void *a2)
{
  if (!this)
  {
    goto LABEL_19;
  }

  v3 = CFGetTypeID(this);
  if (v3 != CFBooleanGetTypeID())
  {
    if (v3 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(this, kCFNumberIntType, &valuePtr))
      {
        Value = valuePtr;
        v5 = valuePtr & 0xFFFFFF00;
        goto LABEL_8;
      }
    }

    else if (v3 == CFStringGetTypeID())
    {
      Value = 1;
      if (CFStringCompare(this, @"yes", 1uLL) == kCFCompareEqualTo)
      {
        goto LABEL_4;
      }

      Value = 1;
      if (CFStringCompare(this, @"true", 1uLL) == kCFCompareEqualTo)
      {
        v5 = 0;
        v6 = 0x100000000;
        return v6 | v5 | Value;
      }

      if (CFStringCompare(this, @"no", 1uLL) == kCFCompareEqualTo || CFStringCompare(this, @"false", 1uLL) == kCFCompareEqualTo)
      {
        Value = 0;
        goto LABEL_4;
      }

      if (CFStringGetLength(this) >= 1)
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(this, 0);
        if (CharacterAtIndex == 43 || CharacterAtIndex == 45 || (CharacterAtIndex - 48) <= 9)
        {
          IntValue = CFStringGetIntValue(this);
          Value = IntValue;
          v5 = IntValue & 0xFFFFFF00;
          goto LABEL_8;
        }
      }
    }

LABEL_19:
    v6 = 0;
    Value = 0;
    v5 = 0;
    return v6 | v5 | Value;
  }

  Value = CFBooleanGetValue(this);
LABEL_4:
  v5 = 0;
LABEL_8:
  v6 = 0x100000000;
  return v6 | v5 | Value;
}

uint64_t $_7::__invoke(uint64_t this, const void *a2)
{
  if (atomic_fetch_add_explicit((this + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return $_7::__invoke(this);
  }

  return this;
}

uint64_t RB::Symbol::Presentation::style_mask(RB::Symbol::Presentation *this)
{
  v1 = this + 8;
  if (*(this + 125))
  {
    v1 = *(this + 125);
  }

  v2 = *(this + 252);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v4 = &v1[496 * v2];
  do
  {
    v5 = (v1 + 8);
    if (*(v1 + 55))
    {
      v5 = *(v1 + 55);
    }

    v6 = *(v1 + 112);
    if (v6)
    {
      v7 = &v5[36 * v6];
      do
      {
        if (((v5[8] * v5[10]) * *(*v5 + 76)) > 0.0 && !*(v5 + 1) && v5[7] == -32768.0)
        {
          result = (1 << ((*(*v5 + 104) >> 18) & 0xF)) | result;
        }

        v5 += 36;
      }

      while (v5 != v7);
    }

    v1 += 496;
  }

  while (v1 != v4);
  return result;
}

uint64_t RB::Symbol::Presentation::template_image@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 1008) != 1)
  {
    goto LABEL_8;
  }

  v3 = this;
  v4 = vandq_s8(vandq_s8(vceqq_f64(*(this + 1040), xmmword_195E42770), vceqq_f64(*(this + 1024), xmmword_195E42760)), vceqzq_f64(*(this + 1056)));
  if ((vandq_s8(vdupq_laneq_s64(v4, 1), v4).u64[0] & 0x8000000000000000) == 0)
  {
    goto LABEL_8;
  }

  v5 = *(this + 1000) ? *(this + 1000) : this + 8;
  v6 = RB::Symbol::Model::glyph_info(*v5);
  this = RB::Symbol::Model::glyph_info(*v3);
  if (v6 != this || *(v5 + 488) == 1)
  {
    goto LABEL_8;
  }

  v7 = *(v5 + 440);
  if (!v7)
  {
    v7 = v5 + 8;
  }

  v8 = *(v5 + 448);
  if (v8)
  {
    v9 = v7 + 144 * v8;
    v10 = v7 + 60;
    v11 = 0.0;
    __asm { FMOV            V2.2S, #1.0 }

    while (1)
    {
      v17 = v10 - 60;
      v18 = *(v10 - 60);
      v19 = *(v10 - 28) * *(v10 - 20);
      v20 = v19 * *(v18 + 76);
      if (v20 <= 0.0)
      {
        v21 = v11;
      }

      else
      {
        if (v11 == 0.0)
        {
          v21 = v19 * *(v18 + 76);
        }

        else
        {
          v21 = 1.0;
          if (v11 != 1.0 || v20 != 1.0)
          {
            goto LABEL_8;
          }
        }

        if ((*(v18 + 106) & 0x3C) != 0)
        {
          goto LABEL_8;
        }

        if (*(v10 - 16) != 0.0)
        {
          goto LABEL_8;
        }

        if (*(v10 - 12) != 1.0)
        {
          goto LABEL_8;
        }

        if (*(v10 - 8) != 1.0)
        {
          goto LABEL_8;
        }

        if (*(v10 - 4) != 1.0)
        {
          goto LABEL_8;
        }

        if (*v10 != 0.0)
        {
          goto LABEL_8;
        }

        if (*(v10 + 4) != 0.0)
        {
          goto LABEL_8;
        }

        v22 = vmvn_s8(vceq_f32(*(v10 + 12), 0x3F80000000000000));
        if ((vpmax_u32(v22, v22).u32[0] & 0x80000000) != 0)
        {
          goto LABEL_8;
        }

        v23 = vmvn_s8(vceqz_f32(*(v10 + 28)));
        if ((vpmax_u32(v23, v23).u32[0] & 0x80000000) != 0)
        {
          goto LABEL_8;
        }

        v24 = vmvn_s8(vceq_f32(*(v10 + 60), _D2));
        if ((vpmax_u32(v24, v24).u32[0] & 0x80000000) != 0 || *(v18 + 64) != 0.0)
        {
          goto LABEL_8;
        }
      }

      v10 += 144;
      v11 = v21;
      if (v17 + 144 == v9)
      {
        goto LABEL_33;
      }
    }
  }

  v21 = 0.0;
LABEL_33:
  this = RB::Symbol::Glyph::has_template_image(v6, *v5);
  if (this)
  {
    this = [RB::Symbol::Glyph::copied_glyph(v6) image];
    v25 = *(v6 + 44);
    *a2 = this;
    *(a2 + 8) = v25;
    *(a2 + 16) = v21;
  }

  else
  {
LABEL_8:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

uint64_t RBSymbolUpdateTemplateImage(uint64_t a1, void *a2, float *a3)
{
  RB::Symbol::Presentation::template_image(a1, v6);
  result = v6[0];
  if (v6[0])
  {
    if (a2)
    {
      *a2 = v6[1];
    }

    if (a3)
    {
      *a3 = v7;
    }

    else if (v7 != 1.0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t RB::Symbol::Glyph::has_template_image(os_unfair_lock_s *this, const RB::Symbol::Model *a2)
{
  os_unfair_lock_lock(this + 121);
  if ((this[122]._os_unfair_lock_opaque & 0x100) == 0)
  {
    LOWORD(this[122]._os_unfair_lock_opaque) = 256;
    if (this[6]._os_unfair_lock_opaque == 1)
    {
      v3 = [*&this->_os_unfair_lock_opaque knownAvailableVectorSizes];
      v4 = v3;
      if (v3)
      {
        v5 = [v3 count];
        [*&this->_os_unfair_lock_opaque pointSize];
        if (v5)
        {
          v7 = v6;
          v8 = 0;
          while (1)
          {
            [objc_msgSend(v4 objectAtIndexedSubscript:{v8), "doubleValue"}];
            if (v9 == v7)
            {
              break;
            }

            if (v5 == ++v8)
            {
              goto LABEL_10;
            }
          }

          LOWORD(this[122]._os_unfair_lock_opaque) = 257;
        }
      }
    }
  }

LABEL_10:
  os_unfair_lock_opaque_low = LOBYTE(this[122]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(this + 121);
  return os_unfair_lock_opaque_low;
}

float64_t RB::Symbol::Presentation::Layer::transform(float32x2_t *this, const RB::Symbol::Presentation *a2, char a3)
{
  if (a2)
  {
    v5 = *(a2 + 65);
    v33 = *(a2 + 64);
    v34 = v5;
    v35 = *(a2 + 66);
    v6 = v33;
    v7 = v35;
  }

  else
  {
    v6 = xmmword_195E42760;
    v5 = xmmword_195E42770;
    v33 = xmmword_195E42760;
    v34 = xmmword_195E42770;
    v7 = 0uLL;
  }

  v8 = this[11];
  v8.f32[1] = v8.f32[1] + this[17].f32[0];
  v9 = vcvtq_f64_f32(v8);
  v10 = this[15];
  __asm { FMOV            V5.2S, #1.0 }

  v16 = vmvn_s8(vceq_f32(v10, _D5));
  if ((vpmax_u32(v16, v16).u32[0] & 0x80000000) != 0)
  {
    v6 = vmulq_n_f64(v6, v10.f32[0]);
    v5 = vmulq_n_f64(v5, v10.f32[1]);
    v33 = v6;
    v34 = v5;
  }

  v17 = vaddq_f64(v7, v9);
  v18 = this[6].f32[0];
  if (v18 == 1.0)
  {
    if (a3)
    {
      goto LABEL_14;
    }

    if (this[7].f32[1] == 0.0)
    {
      goto LABEL_11;
    }
  }

  v19 = this[12];
  v20 = v19.f32[1];
  v21 = vmlaq_n_f64(vmlaq_n_f64(v17, v6, v19.f32[0]), v5, v19.f32[1]);
  v35 = v21;
  if ((a3 & 1) == 0 && this[7].f32[1] != 0.0)
  {
    v22 = __sincosf_stret(this[7].f32[1]);
    *v23.i64 = -v22.__sinval;
    v29 = vcvtq_f64_f32(__PAIR64__(LODWORD(v22.__sinval), LODWORD(v22.__cosval)));
    v30 = vzip1q_s64(v23, v29);
    v31 = 0;
    v32 = 0;
    v6.f64[0] = RB::operator*(&v29, &v33);
    v18 = this[6].f32[0];
    v19 = this[12];
    v20 = v19.f32[1];
  }

  v6 = vmulq_n_f64(v6, v18);
  v5 = vmulq_n_f64(v5, v18);
  v17 = vmlaq_n_f64(vmlaq_n_f64(v21, v6, -v19.f32[0]), v5, -v20);
  v33 = v6;
  v34 = v5;
  if ((a3 & 1) == 0)
  {
LABEL_11:
    v24 = this[8].f32[0];
    if (v24 != 0.0)
    {
      v35 = vmlaq_n_f64(vmlaq_n_f64(v17, v6, COERCE_FLOAT(*&this[14])), v5, COERCE_FLOAT(HIDWORD(*&this[14])));
      v25 = __sincosf_stret(v24);
      *v26.i64 = -v25.__sinval;
      v29 = vcvtq_f64_f32(__PAIR64__(LODWORD(v25.__sinval), LODWORD(v25.__cosval)));
      v30 = vzip1q_s64(v26, v29);
      v31 = 0;
      v32 = 0;
      v6.f64[0] = RB::operator*(&v29, &v33);
    }
  }

LABEL_14:
  v27 = this[6].f32[1];
  if (v27 != 1.0)
  {
    *&v6.f64[0] = *&vmulq_n_f64(v6, v27);
  }

  return v6.f64[0];
}

uint64_t RBSymbolUpdateLayerStyle(__int128 *a1)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  if (v1[7] == -32768.0)
  {
    return (*(*v1 + 104) >> 18) & 0xF;
  }

  else
  {
    return 11;
  }
}

uint64_t anonymous namespace::layer_layer(uint64_t a1)
{
  v1 = *(*a1 + 1000);
  if (!v1)
  {
    v1 = *a1 + 8;
  }

  v2 = v1 + 496 * (*(*a1 + 1008) + ~*(a1 + 8));
  v3 = *(a1 + 16);
  v4 = *(v2 + 472);
  if (v4)
  {
    LODWORD(v3) = *(*v4 + 8 * v3);
  }

  v5 = v2 + 8;
  v6 = *(v2 + 440);
  if (!v6)
  {
    v6 = v5;
  }

  return v6 + 144 * v3;
}

uint64_t RBSymbolUpdateLayerGetFillType(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(*a1 + 1008);
  v4 = *(*a1 + 1000);
  v8 = *a1;
  v9 = a1[2];
  if ((v5 & 0x3C0000) == 0x300000)
  {
    return 0;
  }

  v7 = v1 + 8;
  if (v4)
  {
    v7 = v4;
  }

  if (((v5 >= 0) & *(*(v7 + 496 * (v3 + ~v2)) + 105)) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t RBSymbolUpdateLayerPath(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *a1;
  v5 = *a1 + 8;
  if (*(*a1 + 1000))
  {
    v5 = *(*a1 + 1000);
  }

  v6 = (v5 + 496 * (*(*a1 + 1008) + ~*(a1 + 8)));
  v7 = *(a1 + 16);
  v8 = v6[59];
  if (v8)
  {
    v7 = *v8 + 8 * v7;
    if (*(v7 + 4) != 1)
    {
      goto LABEL_15;
    }

    LODWORD(v7) = *v7;
  }

  if (v6[55])
  {
    v9 = v6[55];
  }

  else
  {
    v9 = v6 + 1;
  }

  v10 = &v9[18 * v7];
  v11 = (*(*v10 + 104) >> 28) & 3;
  if (v11 > 1)
  {
    if (v11 != 2 || (a3 & 2) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (!v11)
  {
    v12 = &RBPathEmpty;
    return *v12;
  }

  if (v10[5].f32[1] > 0.0)
  {
LABEL_15:
    v12 = &RBPathNull;
    return *v12;
  }

  if (a3)
  {
    v15 = v6[56].u32[0];
    v16 = (v7 + 1);
    if (v16 < v15)
    {
      v17 = 0;
      v18 = -v15;
      v19 = v9 + 5;
      while (2)
      {
        v20 = 0;
        v21 = &v19[18 * v16];
        while (1)
        {
          v22 = *(v21 - 5);
          if (*(v22 + 104))
          {
            v23 = *(v22 + 76) <= 0.0 ? *v21 * *(v21 - 1) : *v21;
            if (v23 > 0.0)
            {
              break;
            }
          }

          ++v20;
          v21 += 36;
          if (!(v18 + v16 + v20))
          {
            if ((v17 & 1) == 0)
            {
              goto LABEL_35;
            }

            goto LABEL_33;
          }
        }

        if (v23 != 1.0)
        {
          goto LABEL_15;
        }

        v24 = v16 + v20 + 1;
        v25 = v18 + v16 + v20;
        v17 = 1;
        v16 = v24;
        if (v25 != -1)
        {
          continue;
        }

        break;
      }

LABEL_33:
      if ((a3 & 2) != 0)
      {
        layer_path_subtracting_eraser_paths(v4, v6, v7, a2);
      }

      goto LABEL_15;
    }
  }

LABEL_35:
  v26.f64[0] = RB::Symbol::Presentation::Layer::transform(v10, v4, 0);
  v36 = v26;
  v37 = v27;
  v38 = v28;
  v29.f64[0] = RB::Symbol::Glyph::Layer::content_transform(*v10, &v36);
  v36 = v29;
  v37 = v30;
  v38 = v31;
  if (a2)
  {
    *a2 = v29;
    *(a2 + 16) = v30;
    *(a2 + 32) = v31;
  }

  else
  {
    v33 = vandq_s8(vandq_s8(vceqq_f64(v30, xmmword_195E42770), vceqq_f64(v29, xmmword_195E42760)), vceqzq_f64(v31));
    if ((vandq_s8(vdupq_laneq_s64(v33, 1), v33).u64[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  v32 = (*(*v10 + 104) >> 28) & 3;
  if (v32 == 2)
  {
    operator new();
  }

  if (v32 != 1)
  {
    goto LABEL_15;
  }

  v35 = 0;
  v39[0] = v10[9];
  v39[1] = v6[57];
  v40 = v10[7].i32[0];
  RB::Symbol::Glyph::Layer::copy_path(*v10, v39, &v35, v34);
  if (v35 == 1)
  {
    RB::Symbol::Presentation::take_path(v4, v34);
  }

  v13 = v34[0];
  RBPathRelease(v34[0], v34[1]);
  return v13;
}

uint64_t RB::Symbol::Glyph::Layer::copy_path@<X0>(uint64_t a1@<X0>, float32x2_t *a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X8>)
{
  if ((*(a1 + 104) & 0x30000000) != 0x10000000 || *(a1 + 80) > 0.0 || (v5 = vceq_f32(*a2, 0x3F80000000000000), (vpmin_u32(v5, v5).u32[0] & 0x80000000) == 0) || (*(a1 + 108) & 2) != 0 && *&a2[1])
  {
    operator new();
  }

  if (a3)
  {
    *a3 = 0;
  }

  result = RBPathRetain(*(*a1 + 16), *(*a1 + 24));
  *a4 = result;
  a4[1] = v7;
  return result;
}

void sub_195D20588(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::Coverage::Glyphs::project_control_points(v1);
  }

  _Unwind_Resume(exception_object);
}

double RB::Symbol::Glyph::Layer::content_transform(RB::Symbol::Glyph::Layer *this, float64x2_t *a2)
{
  if (*(this + 16) == 0.0)
  {
    *&result = *&vmulq_n_f64(*a2, *(this + 15));
  }

  else
  {
    *&result = *&vmulq_n_f64(*a2, -*(this + 15));
  }

  return result;
}

void RBPathCopyTransformedPath(uint64_t a1, void *a2)
{
  if (a2 != &empty_path_callbacks)
  {
    operator new();
  }
}

void RB::Symbol::Presentation::~Presentation(RB::Symbol::Presentation *this)
{
  v2 = *(this + 278);
  v3 = *(this + 558);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = v2[i];
      v2[i] = 0;
      if (v5)
      {
        RB::Symbol::Glyph::Layer::~Layer(v5);
        v3 = *(this + 558);
      }
    }

    v2 = *(this + 278);
  }

  if (v2)
  {
    free(v2);
  }

  v6 = *(this + 276);
  if (*(this + 554))
  {
    v7 = 0;
    v8 = v6 + 1;
    do
    {
      RBPathRelease(*(v8 - 1), *v8);
      ++v7;
      v8 += 2;
    }

    while (v7 < *(this + 554));
    v6 = *(this + 276);
  }

  if (v6)
  {
    free(v6);
  }

  v9 = *(this + 274);
  if (*(this + 550))
  {
    v10 = 0;
    do
    {
      v11 = v9[v10];
      if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::Symbol::Model::copy_on_write(v11);
      }

      ++v10;
    }

    while (v10 < *(this + 550));
    v9 = *(this + 274);
  }

  if (v9)
  {
    free(v9);
  }

  v12 = *(this + 273);
  *(this + 273) = 0;
  if (v12)
  {
    v13 = *v12;
    v14 = *(v12 + 8);
    if (v14)
    {
      v15 = 0;
      v16 = v13 + 2;
      do
      {
        v17 = *v16;
        *v16 = 0;
        if (v17)
        {
          v18 = *(v17 + 2320);
          if (v18)
          {
            free(v18);
          }

          v19 = *(v17 + 768);
          if (v19)
          {
            free(v19);
          }

          MEMORY[0x19A8C09E0](v17, 0x1020C40144EFD2FLL);
          v14 = *(v12 + 8);
        }

        ++v15;
        v16 += 3;
      }

      while (v15 < v14);
      v13 = *v12;
    }

    if (v13)
    {
      free(v13);
    }

    MEMORY[0x19A8C09E0](v12, 0x1020C4024DAA5DELL);
  }

  RB::Heap::~Heap((this + 1104));
  v20 = *(this + 125);
  if (v20)
  {
    v21 = *(this + 125);
  }

  else
  {
    v21 = this + 8;
  }

  if (*(this + 252))
  {
    v22 = 0;
    do
    {
      v23 = &v21[496 * v22];
      v24 = *(v23 + 57);
      *(v23 + 57) = 0;
      *(v23 + 58) = 0;
      if (v24)
      {
        std::default_delete<RB::vector<RB::Symbol::Glyph::StrokeRange,4ul,unsigned int>>::operator()[abi:nn200100]((v23 + 456), v24);
      }

      v25 = v23 + 8;
      v26 = *(v23 + 55);
      if (v26)
      {
        v25 = *(v23 + 55);
      }

      if (*(v23 + 112))
      {
        v27 = 0;
        v28 = (v25 + 8);
        do
        {
          v29 = *v28;
          v28 += 18;

          ++v27;
        }

        while (v27 < *(v23 + 112));
        v26 = *(v23 + 55);
      }

      if (v26)
      {
        free(v26);
      }

      v30 = *v23;
      if (*v23 && atomic_fetch_add_explicit((v30 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::Symbol::Model::copy_on_write(v30);
      }

      ++v22;
    }

    while (v22 < *(this + 252));
    v20 = *(this + 125);
  }

  if (v20)
  {
    free(v20);
  }

  v31 = *this;
  if (*this)
  {
    if (atomic_fetch_add_explicit((v31 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      RB::Symbol::Model::copy_on_write(v31);
    }
  }
}

void *RB::details::realloc_vector<unsigned long,16ul>(void *a1, size_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(16 * a3);
    v6 = v5 >> 4;
    if (v5 >> 4 != *a2)
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

void *RB::vector<std::pair<unsigned long,unsigned long>,0ul,unsigned long>::reserve_slow(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,16ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

uint64_t RB::ContextDelegate::state_ref(uint64_t a1, float *a2, _DWORD *a3)
{
  result = CGContextGetDelegate();
  if (result)
  {
    if (CGContextDelegateGetCallback() == RB::ContextDelegate::get_bounds && (Info = CGContextDelegateGetInfo(), *(Info + 496)))
    {
      v7 = Info;
      GState = CGContextGetGState();
      RenderingState = CGContextGetRenderingState();
      RB::ContextDelegate::update(v7, GState, RenderingState, 0);
      if (a2)
      {
        CGGStateGetAlpha();
        v11 = v10;
        if (!*(v7 + 424))
        {
          v11 = *(v7 + 520) * v11;
        }

        *a2 = v11;
      }

      if (a3)
      {
        CompositeOperation = CGGStateGetCompositeOperation();
        if (CompositeOperation > 0x1B)
        {
          v13 = 0;
        }

        else
        {
        }

        *a3 = v13;
      }

      return *(v7 + 504);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t RB::debug_flags(RB::Config *a1)
{
  RB::Config::debug_value(a1, &v4);
  v1 = v4;
  v2 = RB::Config::flags_value();
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

unint64_t RB::Config::flags_value()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v11 = *MEMORY[0x1E69E9840];
  if (!v0)
  {
    goto LABEL_12;
  }

  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = CFGetTypeID(v0);
  if (v6 != CFNumberGetTypeID())
  {
    if (v6 == CFStringGetTypeID())
    {
      CStringPtr = CFStringGetCStringPtr(v5, 0x8000100u);
      if (!CStringPtr)
      {
        if (!CFStringGetCString(v5, valuePtr, 4096, 0x8000100u))
        {
          goto LABEL_11;
        }

        CStringPtr = valuePtr;
      }

      v7 = v0 & 0xFFFFFFFFFFFFFF00;
      return v7 | v0;
    }

LABEL_11:
    LOBYTE(v0) = 0;
LABEL_12:
    v7 = 0;
    return v7 | v0;
  }

  *valuePtr = 0;
  if (!CFNumberGetValue(v5, kCFNumberIntType, valuePtr))
  {
    goto LABEL_11;
  }

  LOBYTE(v0) = valuePtr[0];
  v7 = *valuePtr & 0xFFFFFFFFFFFFFF00;
  return v7 | v0;
}

void ___Z22RBXMLRecorderInstalledv_block_invoke(uint64_t a1, const char *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = RB::debug_int("RB_XML_RECORDER", a2);
  if ((v2 & 0x100000000) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 < 1)
  {
    goto LABEL_15;
  }

  RB::XMLRecorder::installed = 1;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "RBXMLRecorder installed.\n", 25);
  if (v3 == 1)
  {
    goto LABEL_15;
  }

  if (RB::XMLRecorder::installed)
  {
    if ((RB::XMLRecorder::enabled & 1) == 0)
    {
      RB::XMLRecorder::enabled = 1;
    }

    goto LABEL_10;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Set RB_XML_RECORDER=1 in environment to enable recording.\n", 58);
  if (RB::XMLRecorder::enabled)
  {
LABEL_10:
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "RBXMLRecorder logging enabled.\n", 31);
  }

  if (v3 >= 3)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v4 = NSTemporaryDirectory();
      RB::XMLRecorder::log_file = -[NSString copy](-[NSString stringByAppendingPathComponent:](v4, "stringByAppendingPathComponent:", [MEMORY[0x1E696AEC0] stringWithFormat:@"rb-xml-%d.txt", getpid()]), "copy");
      v5 = RB::misc_log(RB::XMLRecorder::log_file);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = RB::XMLRecorder::log_file;
        _os_log_impl(&dword_195CE8000, v5, OS_LOG_TYPE_DEFAULT, "Logging RenderBox frames to %@", buf, 0xCu);
      }
    }
  }

LABEL_15:
  *buf = xmmword_1E744CD30;
  v20 = unk_1E744CD40;
  v21 = xmmword_1E744CD50;
  v22 = unk_1E744CD60;
  v6 = RB::debug_flags("RB_XML_FLAGS");
  if (v7)
  {
    RB::XMLRecorder::export_flags = v6;
    if ((v6 & 8) != 0)
    {
      v8 = RB::debug_string("RB_XML_RESOURCE_PATH", v7);
      if (v8 && *v8 == 47)
      {
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v8];
      }

      else
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rb-xml-%d", getpid()];
        v9 = [[(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:v10] copy];
      }

      RB::XMLRecorder::resource_path = v9;
      RB::XMLRecorder::image_names = objc_opt_new();
    }
  }

  else
  {
    RB::XMLRecorder::export_flags = 0;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v12 = RB::debug_BOOL("RB_REDIRECT_OUTPUT", v11);
    if (v12 & 0x100) != 0 && (v12)
    {
      v13 = NSTemporaryDirectory();
      v14 = -[NSString stringByAppendingPathComponent:](v13, "stringByAppendingPathComponent:", [MEMORY[0x1E696AEC0] stringWithFormat:@"rb-log-%d.txt", getpid()]);
      close(1);
      openat(1, [(NSString *)v14 UTF8String], 521, 420);
      close(2);
      dup2(1, 2);
      setlinebuf(*MEMORY[0x1E69E9858]);
      v15 = setlinebuf(*MEMORY[0x1E69E9848]);
      v16 = RB::misc_log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 138412290;
        v18 = v14;
        _os_log_impl(&dword_195CE8000, v16, OS_LOG_TYPE_DEFAULT, "Redirected output to %@", v17, 0xCu);
      }
    }
  }
}

void RB::AffineTransform::identity()
{
  if (__cxa_guard_acquire(_MergedGlobals))
  {
    xmmword_1ED6D5340 = xmmword_195E42760;
    unk_1ED6D5350 = xmmword_195E42770;
    qword_1ED6D5360 = 0;
    unk_1ED6D5368 = 0;

    __cxa_guard_release(_MergedGlobals);
  }
}

_RBDrawingState *RBDrawingStateInit(State *a1)
{
  context = a1->_context;
  if (!*(context + 3))
  {
    make_contents(a1->_context);
  }

  RB::DisplayList::Builder::copy_state((context + 16), a1);
  v5 = v4;
  ++*(context + 92);
  v6 = *(context + 40);
  if (v6)
  {
    RB::XML::DisplayList::copy_state(v6, a1, v5, v3);
  }

  return v5;
}

double RB::DisplayList::Builder::copy_state(RB::DisplayList::Builder *this, State *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    *(this + 2) = v4->_next;
  }

  else
  {
    v4 = malloc_type_malloc(0xC0uLL, 0x10E0040FB4F2F54uLL);
  }

  *&result = RB::DisplayList::State::State(v4, a2);
  return result;
}

uint64_t RB::DisplayList::State::set_animation_layer(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 168) == *a2 && *(a1 + 172) == a2[1])
  {
    return 0;
  }

  *(a1 + 168) = *a2;
  *(a1 + 120) = 0;
  return 1;
}

uint64_t RB::Symbol::Presentation::shape(RB::Symbol::Presentation *this)
{
  v1 = *(this + 271);
  if (!v1)
  {
    v1 = objc_opt_new();

    *(this + 271) = v1;
  }

  return v1;
}

uint64_t RB::Symbol::Presentation::fill(RB::Symbol::Presentation *this)
{
  v1 = *(this + 272);
  if (!v1)
  {
    v1 = objc_opt_new();

    *(this + 272) = v1;
  }

  return v1;
}

uint64_t RBSymbolUpdateLayerDraw(uint64_t a1, State *a2, unsigned int a3, char a4, float a5, float a6, float a7, float a8, float a9)
{
  v15 = *a1;
  v16 = *a1 + 8;
  if (*(*a1 + 1000))
  {
    v16 = *(*a1 + 1000);
  }

  v17 = v16 + 496 * (*(*a1 + 1008) + ~*(a1 + 8));
  v18 = *(a1 + 16);
  v19 = *(v17 + 472);
  if (v19)
  {
    v20 = (*v19 + 8 * v18);
    LODWORD(v18) = *v20;
    v21 = v20[1];
    v22 = v21 > 1;
  }

  else
  {
    v22 = 0;
    v21 = 1;
  }

  v25 = RBDrawingStateInit(a2);
  v51 = v18;
  v53 = v18 + v21;
  if (a4)
  {
    v26 = *(v17 + 448);
    if (v53 < v26)
    {
      v27 = v18 + v21;
      v28 = 144 * v53 + 72;
      do
      {
        if (*(v17 + 440))
        {
          v29 = *(v17 + 440);
        }

        else
        {
          v29 = v17 + 8;
        }

        v30 = (v29 + v28 - 72);
        if (*(*v30 + 104))
        {
          v31 = v29 + v28;
          v32 = *(*v30 + 76) <= 0.0 ? *(v31 - 32) * *(v31 - 36) : *(v31 - 32);
          if (v32 > 0.0)
          {
            RB::Symbol::Presentation::Layer::set_animation_layer((v29 + v28 - 72), v25, v17);
            v33 = *(v17 + 456);
            v34 = *(v29 + v28 - 16);
            v57 = *(v29 + v28);
            v58 = v33;
            v59 = v34;
            v60 = v32;
            v61 = *(v29 + v28 - 28);
            v35 = *v30;
            v36.f64[0] = RB::Symbol::Presentation::Layer::transform(v30, v15, 0);
            v54 = v36;
            v55 = v37;
            v56 = v38;
            RB::Symbol::Glyph::Layer::clip(v35, v25, 1, &v57, &v54, v15);
            v26 = *(v17 + 448);
          }
        }

        ++v27;
        v28 += 144;
      }

      while (v27 < v26);
    }
  }

  if (v51 < v53)
  {
    v39 = 144 * v51 + 72;
    do
    {
      v40 = *(v17 + 440);
      if (!v40)
      {
        v40 = v17 + 8;
      }

      v41 = (v40 + v39);
      v42 = (v40 + v39 - 72);
      v43 = a9;
      if (v22)
      {
        v43 = *(*v42 + 76) * ((a9 * v41[-5].f32[0]) * v41[-4].f32[0]);
      }

      RB::Symbol::Presentation::Layer::set_animation_layer(v42, v25, v17);
      v44 = *(v17 + 456);
      v45 = v41[-2].i32[0];
      v57 = *v41;
      v58 = v44;
      v59 = v45;
      v60 = v43;
      v61 = v41[-4].i32[1];
      v46 = *v42;
      v47.f64[0] = RB::Symbol::Presentation::Layer::transform(v42, v15, 0);
      v54 = v47;
      v55 = v48;
      v56 = v49;
      RB::Symbol::Glyph::Layer::draw(v46, v25, a3, &v57, &v54, v15, a5, a6, a7, a8);
      v39 += 144;
      --v21;
    }

    while (v21);
  }

  return RBDrawingStateDestroy(v25, v23, v24);
}

uint64_t anonymous namespace::make_wrapped_path<RBPathCopyTransformedPath::TransformArgs>(RBPath,RBPathCopyTransformedPath::TransformArgs &&)::{lambda(void const*)#2}::__invoke(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
  }

  return result;
}

void anonymous namespace::make_wrapped_path<RBPathCopyTransformedPath::TransformArgs>(RBPath,RBPathCopyTransformedPath::TransformArgs &&)::Info::~Info(void *a1)
{
  *a1 = &unk_1F0A37B10;
  v1 = *(a1[3] + 16);
  if (v1)
  {
    v1(a1[2]);
  }

  JUMPOUT(0x19A8C09E0);
}

uint64_t RB::Refcount<RBPath anonymous namespace::make_wrapped_path<RBPathCopyTransformedPath::TransformArgs>(RBPath,RBPathCopyTransformedPath::TransformArgs &&)::Info,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

CGPathRef RBPathCopyCGPath($_13 *a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  if (*(a2 + 2))
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = v4(a1, a2);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else if (!v4 || (v5 = (v4)(a1)) == 0)
  {
LABEL_10:
    *&v7.f64[0] = &unk_1F0A37BE0;
    *&v7.f64[1] = CGPathCreateMutable();
    RBPathMap(a1, a2, &v7, 0);
    return *&v7.f64[1];
  }

  return CGPathRetain(v5);
}

void sub_195D217CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN12_GLOBAL__N_121cgpath_apply_elementsEPK6CGPathPvPFbS3_13RBPathElementPKdPKvE_block_invoke(uint64_t a1, unsigned __int8 *a2, _BYTE *a3)
{
  result = (*(a1 + 40))(*(a1 + 48), *a2, *(a2 + 1), 0);
  if ((result & 1) == 0)
  {
    *a3 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t anonymous namespace::make_wrapped_path<RBPathCopyTransformedPath::TransformArgs>(RBPath,RBPathCopyTransformedPath::TransformArgs &&)::{lambda(void const*,void *,BOOL (*)(void const*,RBPathElement,double const*,void const))#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, _OWORD *))
{
  v6 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v6;
  v11[2] = *(a1 + 64);
  result = a3(a2, 17, a1 + 32, v11);
  if (result)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    v10 = *(v9 + 24);
    if (*(v9 + 2))
    {
      if (v10 && (v10(v8, a2, a3) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10)
    {
      result = v10(v8, a2, a3);
      if (!result)
      {
        return result;
      }
    }

    return a3(a2, 16, a1 + 32, 0);
  }

  return result;
}

BOOL anonymous namespace::cgpath_apply_elements()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v5 = 0;
  CGPathApplyWithBlock2();
  v0 = *(v3 + 24);
  _Block_object_dispose(&v2, 8);
  return (v0 & 1) == 0;
}

uint64_t RB::Path::Mapper::elt_lineto(__n128 *a1, float64x2_t *a2, float64x2_t a3)
{
  if (a2)
  {
    a3 = vmlaq_laneq_f64(vmlaq_n_f64(a2[2], *a2, a3.f64[0]), a2[1], a3, 1);
  }

  v3 = a1[1].n128_u64[1];
  if (v3)
  {
    v3[2] = a3;
    v3[4].n128_u8[0] = 0;
    v4 = v3[1].n128_u64[0];
  }

  else
  {
    a1[2] = a3;
    a1[4].n128_u8[0] = 0;
    v4 = a1->n128_u64[1];
  }

  return (*(*v4 + 24))();
}

uint64_t RB::Path::Mapper::lineto(uint64_t a1, float64x2_t a2)
{
  *(a1 + 32) = a2;
  *(a1 + 64) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    a2 = vmlaq_laneq_f64(vmlaq_n_f64(v2[2], *v2, a2.f64[0]), v2[1], a2, 1);
  }

  return (*(**(a1 + 8) + 24))(a2);
}

uint64_t RB::Path::Mapper::elt_closepath(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v2 = (v1 + 64);
    if (*(v1 + 64))
    {
      return this;
    }

    *(v1 + 32) = *(v1 + 48);
    this = (*(**(v1 + 16) + 8))(*(v1 + 16));
  }

  else
  {
    v3 = this;
    v2 = (this + 64);
    if (*(this + 64))
    {
      return this;
    }

    this = (*(**(this + 8) + 8))(*(this + 8));
    *(v3 + 32) = *(v3 + 48);
  }

  *v2 = 1;
  return this;
}

__n128 RB::Path::Mapper::closepath(RB::Path::Mapper *this)
{
  if ((*(this + 64) & 1) == 0)
  {
    (*(**(this + 1) + 8))(*(this + 1));
    result = *(this + 3);
    *(this + 2) = result;
    *(this + 64) = 1;
  }

  return result;
}

uint64_t RB::Path::NestedCallbacks::get()
{
  result = __cxa_guard_acquire(&qword_1ED6D55B0);
  if (result)
  {
    operator new();
  }

  return result;
}

void *RB::details::realloc_vector<unsigned long,24ul>(void *a1, unint64_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(24 * a3);
    v6 = v5 / 0x18;
    if (v5 / 0x18 != *a2)
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

void *RB::vector<std::pair<char const*,std::shared_ptr<RB::XML::Value::Base>>,0ul,unsigned long>::reserve_slow(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,24ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

uint64_t RBPathIsSingleElement(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (*(a2 + 2))
  {
    if (v2)
    {

      return v2();
    }

    v8 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v4 = *(a2 + 24);
    if (v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v2)
    {

      return v2();
    }

    v8 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v4 = *(a2 + 24);
    if (v4)
    {
LABEL_13:
      v4(a1, &v5, RB::Path::NestedCallbacks::single_element_callback, a2);
    }
  }

  return v7 == 1;
}

uint64_t RBPathApplyShape(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, __int128 *, __n128))
{
  if (a2 == &RBPathCGPathCallbacks)
  {
    if (CGPathIsPrimitive())
    {
      if (CGPathIsRectWithTransform())
      {
LABEL_4:
        v9 = 0;
LABEL_15:
        v15 = a4;
LABEL_29:
        a5(v15, v9, &v20, v8);
        v16 = 1;
        return v16 & 1;
      }

      if (CGPathIsEllipseWithTransform())
      {
        v9 = 1;
        goto LABEL_15;
      }

      if (CGPathIsRoundedRectWithTransform())
      {
        v8.n128_f64[0] = v23;
        if (v23 != 0.0 || (v8.n128_f64[0] = v24, v24 != 0.0))
        {
          v25 = 0;
          v9 = 3;
          goto LABEL_15;
        }

        goto LABEL_4;
      }
    }

LABEL_30:
    v16 = 0;
    return v16 & 1;
  }

  if (!RBPathIsSingleElement(a1, a2))
  {
    if (a3)
    {
      goto LABEL_30;
    }

    v19 = 0;
    v13 = *(a2 + 24);
    if (*(a2 + 2))
    {
      if (v13)
      {
        v14 = (v13)(a1, v18, RBPathApplyShape::$_1::__invoke<void *,RBPathElement,double const*,void const*>, a2);
        goto LABEL_26;
      }
    }

    else if (v13)
    {
      v14 = v13(a1, v18, RBPathApplyShape::$_1::__invoke<void *,RBPathElement,double const*,void const*>);
LABEL_26:
      if (v14 && v19 == 2)
      {
        v8 = v18[0];
        v20 = v18[0];
        v21 = v18[1];
        v15 = a4;
        v9 = 2;
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    v14 = 1;
    goto LABEL_26;
  }

  *&v20 = a4;
  *(&v20 + 1) = a5;
  *&v21 = a1;
  *(&v21 + 1) = a2;
  v22 = 0;
  v12 = *(a2 + 24);
  if (*(a2 + 2))
  {
    if (v12)
    {
      v12(a1, &v20, RBPathApplyShape::$_0::__invoke<void *,RBPathElement,double const*,void const*>, a2);
    }
  }

  else if (v12)
  {
    (v12)(a1, &v20, RBPathApplyShape::$_0::__invoke<void *,RBPathElement,double const*,void const*>);
  }

  v16 = v22;
  return v16 & 1;
}

void *RBPathGetNestedPath(RBPath a1)
{
  var0 = a1.var0;
  v2 = *(a1.var1 + 10);
  if ((*(a1.var1 + 2) & 1) == 0)
  {
    if (v2)
    {
      return v2(a1.var0);
    }

LABEL_6:
    RB::Path::NestedCallbacks::get(a1.var1, 1);
    return var0;
  }

  if (!v2)
  {
    goto LABEL_6;
  }

  return v2(a1.var0);
}

uint64_t RBPathApplyShape::$_0::__invoke<void *,RBPathElement,double const*,void const*>(void *a1, int a2, __int128 *a3, uint64_t *a4)
{
  if (a2 <= 9)
  {
    if ((a2 - 5) < 3)
    {
      v9 = a3[1];
      v33 = *a3;
      v34 = v9;
      if (a4)
      {
        v10 = *(a4 + 1);
        v30 = *a4;
        v31 = v10;
        v11 = *(a4 + 2);
      }

      else
      {
        v18 = *(MEMORY[0x1E695EFD0] + 16);
        v30 = *MEMORY[0x1E695EFD0];
        v31 = v18;
        v11 = *(MEMORY[0x1E695EFD0] + 32);
      }

      v32 = v11;
      (a1[1])(*a1, a2 == 7, &v30);
      goto LABEL_35;
    }

    if ((a2 - 8) < 2)
    {
      v13 = a3[1];
      v33 = *a3;
      v34 = v13;
      v35 = a3[2];
      LODWORD(v36) = a2 != 8;
      if (a4)
      {
        v14 = *(a4 + 1);
        v30 = *a4;
        v31 = v14;
        v15 = *(a4 + 2);
      }

      else
      {
        v26 = *(MEMORY[0x1E695EFD0] + 16);
        v30 = *MEMORY[0x1E695EFD0];
        v31 = v26;
        v15 = *(MEMORY[0x1E695EFD0] + 32);
      }

      v32 = v15;
      (a1[1])(*a1, 3, &v30);
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 > 17)
    {
      switch(a2)
      {
        case 18:
          v31 = *a3;
          v40.var0 = a1[2];
          v40.var1 = a1[3];
          *&v30 = RBPathGetNestedPath(v40);
          *(&v30 + 1) = v24;
          (a1[1])(*a1, 7, &v30);
          break;
        case 19:
          if (a4)
          {
            v19 = a4;
          }

          else
          {
            v19 = &default_stroke_transform;
          }

          v20 = *v19;
          *&v31 = *a3;
          *(&v31 + 1) = v20;
          v32 = *(a3 + 8);
          v21 = v19[1];
          if (!v21 || (v22 = v19[2]) == 0)
          {
            v21 = 0;
            v22 = &_ZZZ16RBPathApplyShapeENK3__0clIPv13RBPathElementPKdPKvEEDaT_T0_T1_T2_E4zero;
          }

          *&v33 = v21;
          *(&v33 + 1) = v22;
          v39.var0 = a1[2];
          v39.var1 = a1[3];
          *&v30 = RBPathGetNestedPath(v39);
          *(&v30 + 1) = v23;
          (a1[1])(*a1, 6, &v30);
          break;
        case 23:
          *&v31 = *a3;
          v38.var0 = a1[2];
          v38.var1 = a1[3];
          *&v30 = RBPathGetNestedPath(v38);
          *(&v30 + 1) = v12;
          (a1[1])(*a1, 8, &v30);
          break;
        default:
          return 0;
      }

LABEL_35:
      *(a1 + 32) = 1;
      return 0;
    }

    if ((a2 - 10) < 2)
    {
      v5 = a3[1];
      v33 = *a3;
      v34 = v5;
      v6 = a3[3];
      v35 = a3[2];
      v36 = v6;
      v37 = a2 != 10;
      if (a4)
      {
        v7 = *(a4 + 1);
        v30 = *a4;
        v31 = v7;
        v8 = *(a4 + 2);
      }

      else
      {
        v25 = *(MEMORY[0x1E695EFD0] + 16);
        v30 = *MEMORY[0x1E695EFD0];
        v31 = v25;
        v8 = *(MEMORY[0x1E695EFD0] + 32);
      }

      v32 = v8;
      (a1[1])(*a1, 4, &v30);
      goto LABEL_35;
    }

    if (a2 == 17)
    {
      if (a4)
      {
        v16 = *(a4 + 1);
        v31 = *a4;
        v32 = v16;
        v17 = *(a4 + 2);
      }

      else
      {
        v27 = *(MEMORY[0x1E695EFD0] + 16);
        v31 = *MEMORY[0x1E695EFD0];
        v32 = v27;
        v17 = *(MEMORY[0x1E695EFD0] + 32);
      }

      v33 = v17;
      v41.var0 = a1[2];
      v41.var1 = a1[3];
      *&v30 = RBPathGetNestedPath(v41);
      *(&v30 + 1) = v28;
      (a1[1])(*a1, 5, &v30);
      goto LABEL_35;
    }
  }

  return 0;
}

_DWORD *RB::Path::Storage::append_element(RB::Path::Storage *this, const char *a2, double *__src, int *a4)
{
  v4 = a2;
  if (a2 >= 0x19)
  {
    RB::precondition_failure("invalid path element: %d", a2, __src, a2);
  }

  v7 = this;
  if (a2 > 18)
  {
    if (a2 == 19)
    {
      if (a4 && (*a4 == 1 || a4[1] == 1))
      {
        *(this + 2) |= 4u;
      }

      v4 = 0x13u;
    }

    else if (a2 == 24)
    {
      if (a4 && a4[1] == 1)
      {
        *(this + 2) |= 4u;
      }

      v4 = 0x18u;
    }
  }

  else if (((a2 - 8) < 2 || (a2 - 10) < 2 && __src[6] == 0.0 && __src[7] == 0.0) && __src[4] == 0.0)
  {
    if (__src[5] == 0.0)
    {
      v4 = 6;
    }

    else
    {
      v4 = a2;
    }
  }

  v8 = *this;
  if (*this)
  {
    *this = 0;
    if (v8)
    {
      this = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v8 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        this = MEMORY[0x19A8C09C0](this, 0x1000C8052888210);
      }
    }
  }

  v9 = *(v7 + 2);
  if ((v9 & 0x20) != 0)
  {
    v10 = RB::Path::Storage::MapCache::shared(this);
    RB::Path::Storage::MapCache::remove(v10, v7);
    v9 = *(v7 + 2);
  }

  if (v9)
  {
    v11 = *(v7 + 7);
    if (v11)
    {
      *(v7 + 7) = 0;
      CFRelease(v11);
      v9 = *(v7 + 2);
    }
  }

  v12 = (v9 >> 8) & 0xFFF;
  if (v9)
  {
    v13 = *(v7 + 3);
  }

  else
  {
    v13 = (v9 >> 8) & 0xFFF;
  }

  v14 = RB::Path::Storage::append_element(RBPathElement,double const*,void const*)::elt_flags[4 * v4] | v9 & 0xFFFFFFF7 | (8 * (v13 == 0));
  *(v7 + 2) = v14;
  v15 = __RBPathElementArgumentCount[v4];
  if (__RBPathElementArgumentCount[v4])
  {
    v16 = 96;
    v17 = __src;
    v18 = __RBPathElementArgumentCount[v4];
    while (1)
    {
      v19 = fabs(*v17);
      if (v19 > 32767.0)
      {
        break;
      }

      if ((v16 & 0x20) != 0 && vabdd_f64(floor(v19 + 0.5), v19) > 0.00000999999975)
      {
        v16 &= ~0x20u;
      }

      ++v17;
      if (!--v18)
      {
        if (a4)
        {
          goto LABEL_46;
        }

        goto LABEL_77;
      }
    }

    v16 = 0;
    if (!a4)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v16 = 96;
    if (!a4)
    {
LABEL_77:
      v20 = 0;
      goto LABEL_78;
    }
  }

LABEL_46:
  v20 = 0;
  if (v4 <= 19)
  {
    if (v4 <= 17)
    {
      if (v4 == 4 || v4 == 16)
      {
        goto LABEL_78;
      }

      goto LABEL_68;
    }

    if (v4 != 18)
    {
      v21 = *(a4 + 1);
      v22 = 4096;
      if (v21 < 0x1000)
      {
        v22 = *(a4 + 1);
      }

      v20 = 2;
      if (v16 && v21)
      {
        v23 = *(a4 + 2);
        while (1)
        {
          v24 = fabs(*v23);
          if (v24 > 32767.0)
          {
            break;
          }

          if ((v16 & 0x20) != 0 && vabdd_f64(floor(v24 + 0.5), v24) > 0.00000999999975)
          {
            v16 &= ~0x20u;
          }

          ++v23;
          if (!--v22)
          {
            goto LABEL_82;
          }
        }

        v16 = 0;
LABEL_82:
        v20 = 2;
      }

      goto LABEL_83;
    }

LABEL_78:
    v28 = v4;
    goto LABEL_84;
  }

  if ((v4 - 22) < 2)
  {
    goto LABEL_78;
  }

  if (v4 == 20)
  {
    v20 = 3;
  }

  else
  {
    if (v4 != 24)
    {
LABEL_68:
      v25 = vandq_s8(vandq_s8(vceqq_f64(*(a4 + 1), xmmword_195E42770), vceqq_f64(*a4, xmmword_195E42760)), vceqzq_f64(*(a4 + 2)));
      if ((vandq_s8(vdupq_laneq_s64(v25, 1), v25).u64[0] & 0x8000000000000000) == 0)
      {
        if (v16)
        {
          v26 = 0;
          while (1)
          {
            v27 = fabs(*&a4[v26]);
            if (v27 > 32767.0)
            {
              break;
            }

            if ((v16 & 0x20) != 0 && vabdd_f64(floor(v27 + 0.5), v27) > 0.00000999999975)
            {
              v16 &= ~0x20u;
            }

            v26 += 2;
            if (v26 == 12)
            {
              goto LABEL_80;
            }
          }
        }

        v16 = 0;
LABEL_80:
        v20 = 1;
        goto LABEL_83;
      }

      goto LABEL_77;
    }

    v20 = 4;
  }

LABEL_83:
  v28 = v4 | 0x80;
LABEL_84:
  v29 = v16 & 0x40;
  if ((v16 & 0x20) != 0)
  {
    v29 = 32;
  }

  v30 = v14 & 1;
  if (v14)
  {
    v12 = *(v7 + 3);
    v31 = *(v7 + 4);
  }

  else
  {
    v31 = v9 >> 20;
  }

  v32 = v28 | v29;
  v33 = v12 + 1;
  if (v31 < v12 + 1)
  {
    RB::Path::Storage::reserve_slow(v7, v12 + 1);
    v30 = *(v7 + 2) & 1;
  }

  v34 = v7 + 16;
  v35 = v7 + 16;
  if (v30)
  {
    v35 = *v34;
  }

  v35[v12] = v32;
  v36 = *(v7 + 2);
  if (v36)
  {
    *(v7 + 3) = v33;
  }

  else
  {
    *(v7 + 2) = v36 & 0xFFF000FE | ((v33 & 0xFFF) << 8);
  }

  result = RB::Path::Storage::push_values(v7, v32, __src, v15);
  if (v20 > 2)
  {
    if (v20 != 3)
    {
      v44 = *(v7 + 2);
      v45 = *(v7 + 2) & 1;
      if (v44)
      {
        v46 = *(v7 + 3);
        v47 = *(v7 + 4);
      }

      else
      {
        v46 = (v44 >> 8) & 0xFFF;
        v47 = v44 >> 20;
      }

      v59 = *a4;
      v60 = v46 + 1;
      if (v47 < v46 + 1)
      {
        result = RB::Path::Storage::reserve_slow(v7, v46 + 1);
        v45 = *(v7 + 2) & 1;
      }

      v61 = v7 + 16;
      if (v45)
      {
        v61 = *v34;
      }

      v61[v46] = v59;
      v62 = *(v7 + 2);
      if (v62)
      {
        *(v7 + 3) = v60;
      }

      else
      {
        v62 = v62 & 0xFFF000FE | ((v60 & 0xFFF) << 8);
        *(v7 + 2) = v62;
      }

      v66 = v62 & 1;
      if (v62)
      {
        v67 = *(v7 + 3);
        v68 = *(v7 + 4);
      }

      else
      {
        v67 = (v62 >> 8) & 0xFFF;
        v68 = v62 >> 20;
      }

      v73 = a4[1];
      v74 = v67 + 1;
      if (v68 < v67 + 1)
      {
        result = RB::Path::Storage::reserve_slow(v7, v67 + 1);
        v66 = *(v7 + 2) & 1;
      }

      v75 = v7 + 16;
      if (v66)
      {
        v75 = *v34;
      }

      v75[v67] = v73;
      v76 = *(v7 + 2);
      if (v76)
      {
        *(v7 + 3) = v74;
      }

      else
      {
        v76 = v76 & 0xFFF000FE | ((v74 & 0xFFF) << 8);
        *(v7 + 2) = v76;
      }

      v81 = *(a4 + 1);
      if (v81 >= 0x800)
      {
        v82 = 2048;
      }

      else
      {
        v82 = *(a4 + 1);
      }

      v83 = v76 & 1;
      if (v76)
      {
        v84 = *(v7 + 3);
        v85 = *(v7 + 4);
      }

      else
      {
        v84 = (v76 >> 8) & 0xFFF;
        v85 = v76 >> 20;
      }

      v88 = v84 + 2;
      if (v85 < v84 + 2)
      {
        result = RB::Path::Storage::reserve_slow(v7, v84 + 2);
        v83 = *(v7 + 2) & 1;
      }

      v89 = v7 + 16;
      if (v83)
      {
        v89 = *v34;
      }

      *&v89[v84] = v82;
      v90 = *(v7 + 2);
      if (v90)
      {
        *(v7 + 3) = v88;
        if (!v81)
        {
          goto LABEL_170;
        }
      }

      else
      {
        v90 = v90 & 0xFFF000FE | ((v88 & 0xFFF) << 8);
        *(v7 + 2) = v90;
        if (!v81)
        {
          goto LABEL_170;
        }
      }

      v91 = 0;
      v92 = 16 * v82;
      while (1)
      {
        if (v90)
        {
          v93 = *(v7 + 3);
          v94 = *(v7 + 4);
        }

        else
        {
          v93 = (v90 >> 8) & 0xFFF;
          v94 = v90 >> 20;
        }

        v95 = *(a4 + 2);
        v96 = *(v95 + v91);
        v97 = v93 + 1;
        if (v94 < v93 + 1)
        {
          result = RB::Path::Storage::reserve_slow(v7, v93 + 1);
          v90 = *(v7 + 2);
        }

        v98 = v7 + 16;
        if (v90)
        {
          v98 = *v34;
        }

        v98[v93] = v96;
        v99 = *(v7 + 2);
        if (v99)
        {
          *(v7 + 3) = v97;
        }

        else
        {
          v99 = v99 & 0xFFF000FE | ((v97 & 0xFFF) << 8);
          *(v7 + 2) = v99;
          if ((v99 & 1) == 0)
          {
            v101 = (v99 >> 8) & 0xFFF;
            v100 = v99 >> 20;
            goto LABEL_190;
          }
        }

        v101 = *(v7 + 3);
        v100 = *(v7 + 4);
LABEL_190:
        v102 = v101 + 12;
        if (v100 < v101 + 12)
        {
          result = RB::Path::Storage::reserve_slow(v7, v101 + 12);
          v99 = *(v7 + 2);
        }

        v103 = v7 + 16;
        if (v99)
        {
          v103 = *v34;
        }

        v104 = &v103[v101];
        v105 = *(v95 + v91 + 4);
        *(v104 + 2) = *(v95 + v91 + 12);
        *v104 = v105;
        v90 = *(v7 + 2);
        if (v90)
        {
          *(v7 + 3) = v102;
        }

        else
        {
          v90 = v90 & 0xFFF000FE | ((v102 & 0xFFF) << 8);
          *(v7 + 2) = v90;
        }

        v91 += 16;
        if (v92 == v91)
        {
          goto LABEL_170;
        }
      }
    }

    v52 = *(v7 + 2);
    if (v52)
    {
      v53 = *(v7 + 3);
      v54 = *(v7 + 4);
    }

    else
    {
      v53 = (v52 >> 8) & 0xFFF;
      v54 = v52 >> 20;
    }

    v106 = v53 + 2;
    if (v54 < v53 + 2)
    {
      result = RB::Path::Storage::reserve_slow(v7, v53 + 2);
      if ((*(v7 + 2) & 1) == 0)
      {
LABEL_203:
        *&v34[v53] = *a4;
        v107 = *(v7 + 2);
        if (v107)
        {
          *(v7 + 3) = v106;
        }

        else
        {
          *(v7 + 2) = v107 & 0xFFF000FE | ((v106 & 0xFFF) << 8);
        }

        goto LABEL_170;
      }
    }

    else if ((*(v7 + 2) & 1) == 0)
    {
      goto LABEL_203;
    }

    v34 = *v34;
    goto LABEL_203;
  }

  if (v20 == 1)
  {
    v48 = v32;
    v49 = v7;
    v50 = a4;
    v51 = 6;
LABEL_169:
    result = RB::Path::Storage::push_values(v49, v48, v50, v51);
    goto LABEL_170;
  }

  if (v20 == 2)
  {
    v40 = *(v7 + 2);
    v41 = *(v7 + 2) & 1;
    if (v40)
    {
      v42 = *(v7 + 3);
      v43 = *(v7 + 4);
    }

    else
    {
      v42 = (v40 >> 8) & 0xFFF;
      v43 = v40 >> 20;
    }

    v55 = *a4;
    v56 = v42 + 1;
    if (v43 < v42 + 1)
    {
      RB::Path::Storage::reserve_slow(v7, v42 + 1);
      v41 = *(v7 + 2) & 1;
    }

    v57 = v7 + 16;
    if (v41)
    {
      v57 = *v34;
    }

    v57[v42] = v55;
    v58 = *(v7 + 2);
    if (v58)
    {
      *(v7 + 3) = v56;
    }

    else
    {
      v58 = v58 & 0xFFF000FE | ((v56 & 0xFFF) << 8);
      *(v7 + 2) = v58;
    }

    v63 = v58 & 1;
    if (v58)
    {
      v64 = *(v7 + 3);
      v65 = *(v7 + 4);
    }

    else
    {
      v64 = (v58 >> 8) & 0xFFF;
      v65 = v58 >> 20;
    }

    v69 = a4[1];
    v70 = v64 + 1;
    if (v65 < v64 + 1)
    {
      RB::Path::Storage::reserve_slow(v7, v64 + 1);
      v63 = *(v7 + 2) & 1;
    }

    v71 = v7 + 16;
    if (v63)
    {
      v71 = *v34;
    }

    v71[v64] = v69;
    v72 = *(v7 + 2);
    if (v72)
    {
      *(v7 + 3) = v70;
    }

    else
    {
      v72 = v72 & 0xFFF000FE | ((v70 & 0xFFF) << 8);
      *(v7 + 2) = v72;
    }

    if (*(a4 + 1) >= 0x1000uLL)
    {
      v77 = 4096;
    }

    else
    {
      v77 = *(a4 + 1);
    }

    v78 = v72 & 1;
    if (v72)
    {
      v79 = *(v7 + 3);
      v80 = *(v7 + 4);
    }

    else
    {
      v79 = (v72 >> 8) & 0xFFF;
      v80 = v72 >> 20;
    }

    v86 = v79 + 2;
    if (v80 < v79 + 2)
    {
      RB::Path::Storage::reserve_slow(v7, v79 + 2);
      if ((*(v7 + 2) & 1) == 0)
      {
        goto LABEL_157;
      }
    }

    else if (!v78)
    {
LABEL_157:
      *&v34[v79] = v77;
      v87 = *(v7 + 2);
      if (v87)
      {
        *(v7 + 3) = v86;
      }

      else
      {
        *(v7 + 2) = v87 & 0xFFF000FE | ((v86 & 0xFFF) << 8);
      }

      v50 = *(a4 + 2);
      v48 = v32;
      v49 = v7;
      v51 = v77;
      goto LABEL_169;
    }

    v34 = *v34;
    goto LABEL_157;
  }

LABEL_170:
  if (v4 == 16 || v4 == 4)
  {

    return RB::Path::Storage::update_single_element(v7, v38, v39);
  }

  return result;
}

uint64_t *RB::Path::Storage::push_values(uint64_t *this, char a2, double *__src, size_t __n)
{
  v4 = __n;
  v6 = this;
  if ((a2 & 0x40) != 0)
  {
    v12 = *(this + 2);
    if (v12)
    {
      v13 = this[3];
      v15 = this[4];
      v14 = v13 + 4 * __n;
    }

    else
    {
      v13 = (v12 >> 8) & 0xFFF;
      v14 = v13 + 4 * __n;
      v15 = v12 >> 20;
    }

    if (v15 < v14)
    {
      this = RB::Path::Storage::reserve_slow(this, v14);
      LODWORD(v12) = *(v6 + 2);
    }

    v18 = v6 + 2;
    if (v12)
    {
      v18 = *v18;
    }

    if (v4)
    {
      v19 = (v18 + v13);
      do
      {
        v20 = *__src++;
        v21 = v20;
        *v19++ = v21;
        --v4;
      }

      while (v4);
      goto LABEL_33;
    }
  }

  else
  {
    if ((a2 & 0x20) == 0)
    {
      v7 = 8 * __n;
      v8 = *(this + 2);
      v9 = this[1] & 1;
      if (v8)
      {
        v10 = this[3];
        v11 = this[4];
      }

      else
      {
        v10 = (v8 >> 8) & 0xFFF;
        v11 = v8 >> 20;
      }

      v14 = v10 + v7;
      if (v11 < v10 + v7)
      {
        RB::Path::Storage::reserve_slow(this, v10 + v7);
        v9 = v6[1] & 1;
      }

      v22 = v6 + 2;
      if (v9)
      {
        v22 = *v22;
      }

      this = memcpy(v22 + v10, __src, v7);
      v23 = *(v6 + 2);
      if ((v23 & 1) == 0)
      {
        v24 = v23 & 0xFFFFFFFE;
LABEL_36:
        *(v6 + 2) = v24 & 0xFFF000FF | ((v14 & 0xFFF) << 8);
        return this;
      }

      goto LABEL_37;
    }

    v12 = *(this + 2);
    if (v12)
    {
      v16 = this[3];
      v17 = this[4];
      v14 = v16 + 2 * __n;
    }

    else
    {
      v16 = (v12 >> 8) & 0xFFF;
      v14 = v16 + 2 * __n;
      v17 = v12 >> 20;
    }

    if (v17 < v14)
    {
      this = RB::Path::Storage::reserve_slow(this, v14);
      LODWORD(v12) = *(v6 + 2);
    }

    v25 = v6 + 2;
    if (v12)
    {
      v25 = *v25;
    }

    if (v4)
    {
      v26 = (v25 + v16);
      do
      {
        v27 = *__src++;
        *v26++ = vcvtmd_s64_f64(v27 + 0.5);
        --v4;
      }

      while (v4);
LABEL_33:
      LODWORD(v12) = *(v6 + 2);
    }
  }

  if ((v12 & 1) == 0)
  {
    v24 = v12 & 0xFFFFFFFE;
    goto LABEL_36;
  }

LABEL_37:
  v6[3] = v14;
  return this;
}

uint64_t RB::Path::Mapper::apply_callback(__n128 *this, int a2, uint64_t a3, float64x2_t *a4, float64x2_t a5)
{
  v33 = v7;
  v34 = v6;
  v35 = v5;
  v36 = v8;
  v37 = v9;
  switch(a2)
  {
    case 0:
      RB::Path::Mapper::elt_moveto(this, a4, *a3);
      return 1;
    case 1:
      RB::Path::Mapper::elt_lineto(this, a4, *a3);
      return 1;
    case 2:
      RB::Path::Mapper::elt_quadto(this, a4, *a3, *(a3 + 16));
      return 1;
    case 3:
      RB::Path::Mapper::elt_cubeto(this, a4, *a3, *(a3 + 16), *(a3 + 32));
      return 1;
    case 4:
      RB::Path::Mapper::elt_closepath(this);
      return 1;
    case 5:
    case 6:
      RB::Path::Mapper::add_rect(this, *a3, a4, a2 == 5);
      return 1;
    case 7:
      RB::Path::Mapper::add_ellipse(this, *a3, 0, a4);
      return 1;
    case 8:
    case 9:
      a5.f64[0] = *a3;
      v13 = *(a3 + 8);
      v14 = *(a3 + 16);
      v15 = *(a3 + 24);
      v16 = *(a3 + 32);
      v17 = *(a3 + 40);
      v18 = fabs(v14);
      v19 = fabs(v15);
      if (v19 < v18)
      {
        v18 = v19;
      }

      v20 = v18 * 0.5;
      if (v16 < 0.0)
      {
        v16 = 0.0;
      }

      if (v16 > v20)
      {
        v16 = v20;
      }

      if (v17 < 0.0)
      {
        v17 = 0.0;
      }

      if (v17 > v20)
      {
        v17 = v20;
      }

      v31 = vdupq_lane_s64(*&v16, 0);
      v32 = v31;
      v29 = vdupq_lane_s64(*&v17, 0);
      v30 = v29;
      v21 = &v31;
      v22 = &v29;
      goto LABEL_16;
    case 10:
    case 11:
      v23 = *(a3 + 16);
      v31 = *a3;
      v32 = v23;
      v24 = *(a3 + 48);
      v29 = *(a3 + 32);
      v30 = v24;
      RB::clamp_corner_radii(&v29, v32.i64);
      v13 = *&v31.i64[1];
      *&a5.f64[0] = v31.i64[0];
      v15 = *&v32.i64[1];
      v14 = *v32.i64;
      v28[0] = v29;
      v28[1] = v30;
      v27[0] = v29;
      v27[1] = v30;
      v21 = v28;
      v22 = v27;
LABEL_16:
      RB::Path::Mapper::add_rounded_rect(this, v21, v22, a2, a4, a5, v13, v14, v15);
      break;
    case 12:
      RB::Path::Mapper::add_relative_arc(this, a4, *a3, *(a3 + 16), *(a3 + 24), *(a3 + 32));
      break;
    case 13:
    case 14:
      RB::Path::Mapper::add_arc(this, a2 == 13, a4, *a3, *(a3 + 16), *(a3 + 24), *(a3 + 32));
      break;
    case 15:
      RB::Path::Mapper::add_arc_to_point(this, a4, *a3, *(a3 + 16), *(a3 + 32));
      break;
    case 16:
      RB::Path::Mapper::pop(this);
      break;
    case 17:
      RB::Path::Mapper::push_affine(this, a4);
    case 18:
      RB::Path::Mapper::push_cut(this, *a3, *(a3 + 8));
    case 19:
      RB::Path::Mapper::push_stroke(this, a4);
    case 20:
      RB::Path::Mapper::push_BOOLean();
    case 21:
      v25 = this[1].n128_u64[1];
      if (v25)
      {
        (***(v25 + 16))(*(v25 + 16));
      }

      break;
    case 22:
      RB::Path::Mapper::push_dilate_glyph();
    case 23:
      RB::Path::Mapper::push_offset(this, *a3);
    case 24:
      RB::Path::Mapper::push_clip_stroke(this, a4);
    default:
      return 1;
  }

  return 1;
}

uint64_t RBPathMap($_13 *this, void *a2, float64x2_t *a3, float64x2_t *a4)
{
  v6 = this;
  v19 = *MEMORY[0x1E69E9840];
  if (a2 == &RBPathCGPathCallbacks)
  {
    v12 = a3;
    v13 = a4;
    if (a4)
    {
      v7 = vandq_s8(vandq_s8(vceqq_f64(a4[1], xmmword_195E42770), vceqq_f64(*a4, xmmword_195E42760)), vceqzq_f64(a4[2]));
      if (vandq_s8(vdupq_laneq_s64(v7, 1), v7).i64[0] >= 0)
      {
        v8 = RB::Path::Iterator::callback_0;
      }

      else
      {
        v8 = RB::Path::Iterator::callback_1;
      }
    }

    else
    {
      v8 = RB::Path::Iterator::callback_1;
    }

LABEL_17:
    CGPathApply(this, &v12, v8);
    return (**&a3->f64[0])(a3);
  }

  if (a2 == &RBPathCachedCGPathCallbacks)
  {
    this = off_1F0A3F780(this, a2);
    if (this)
    {
      v12 = a3;
      v13 = a4;
      if (a4)
      {
        v10 = vandq_s8(vandq_s8(vceqq_f64(a4[1], xmmword_195E42770), vceqq_f64(*a4, xmmword_195E42760)), vceqzq_f64(a4[2]));
        if (vandq_s8(vdupq_laneq_s64(v10, 1), v10).i64[0] >= 0)
        {
          v8 = RB::Path::Iterator::callback_0;
        }

        else
        {
          v8 = RB::Path::Iterator::callback_1;
        }
      }

      else
      {
        v8 = RB::Path::Iterator::callback_1;
      }

      goto LABEL_17;
    }
  }

  v12 = &unk_1F0A386C0;
  v13 = a3;
  v14 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v18 = 1;
  RBPathApplyElements(v6, a2, &v12, RB::Path::Mapper::apply_callback);
  result = (**&a3->f64[0])(a3);
  while (v15)
  {
    result = RB::Path::Mapper::pop(&v12);
  }

  return result;
}

uint64_t RBPathApplyElements(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 24);
  if (*(a2 + 2))
  {
    if (v4)
    {
      return v4(a1, a3, a4, a2);
    }
  }

  else if (v4)
  {
    return (v4)(a1, a3, a4);
  }

  return 1;
}

uint64_t RB::Path::Mapper::elt_moveto(__n128 *a1, float64x2_t *a2, float64x2_t a3)
{
  if (a2)
  {
    a3 = vmlaq_laneq_f64(vmlaq_n_f64(a2[2], *a2, a3.f64[0]), a2[1], a3, 1);
  }

  v3 = a1[1].n128_u64[1];
  if (v3)
  {
    v3[2] = a3;
    v3[4].n128_u8[0] = 0;
    v4 = v3[1].n128_u64[0];
  }

  else
  {
    a1[2] = a3;
    a1[4].n128_u8[0] = 0;
    v4 = a1->n128_u64[1];
  }

  return (*(*v4 + 16))();
}

uint64_t RB::Path::Mapper::moveto(uint64_t a1, float64x2_t a2)
{
  *(a1 + 32) = a2;
  *(a1 + 64) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    a2 = vmlaq_laneq_f64(vmlaq_n_f64(v2[2], *v2, a2.f64[0]), v2[1], a2, 1);
  }

  return (*(**(a1 + 8) + 16))(a2);
}

uint64_t RB::Path::Mapper::pop(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v2 = *(v1 + 2);
    *(this + 24) = *(v1 + 1);
    (**v2)(v2);
    RB::Path::Mapper::StackItem::~StackItem(v1);

    JUMPOUT(0x19A8C09E0);
  }

  return this;
}

void RB::Path::Mapper::StackItem::~StackItem(RB::Path::Mapper::StackItem *this)
{
  v1 = *(this + 65);
  if (v1 <= 3)
  {
    if (*(this + 65) > 1u)
    {
      if (v1 != 2)
      {
        if (v1 != 3)
        {
          return;
        }

        v2 = *(this + 2);
        if (!v2)
        {
          return;
        }

        v12 = *(v2 + 28);
        if (v12)
        {
          free(v12);
        }

        v11 = 548042431;
        goto LABEL_58;
      }

      v15 = *(this + 2);
      if (!v15)
      {
        return;
      }

      v16 = 1875108758;
    }

    else
    {
      if (*(this + 65))
      {
        v2 = *(this + 2);
        if (!v2)
        {
          return;
        }

        *v2 = &unk_1F0A38780;
        v9 = *(v2 + 532);
        if (v9)
        {
          free(v9);
        }

        v10 = *(v2 + 17);
        if (v10)
        {
          free(v10);
        }

        v11 = -733151764;
        goto LABEL_58;
      }

      v15 = *(this + 2);
      if (!v15)
      {
        return;
      }

      v16 = -221838953;
    }

    v17 = v16 | 0x10A1C4000000000;
LABEL_65:
    MEMORY[0x19A8C09E0](v15, v17);
    return;
  }

  if (*(this + 65) > 5u)
  {
    if (v1 != 6)
    {
      if (v1 == 7)
      {
        v2 = *(this + 2);
        if (!v2)
        {
          return;
        }

        *v2 = &unk_1F0A3F928;
        v22 = *(v2 + 41);
        if (v22)
        {
          free(v22);
        }

        v8 = -1620667743;
        goto LABEL_63;
      }

      if (v1 == 8)
      {
        v2 = *(this + 2);
        if (v2)
        {
          v3 = *(v2 + 97);
          if (v3)
          {
            free(v3);
          }

          v4 = *(v2 + 57);
          if (v4)
          {
            free(v4);
          }

          v5 = *(v2 + 14);
          if (v5)
          {
            free(v5);
          }

          v6 = *(v2 + 11);
          if (v6)
          {
            free(v6);
          }

          v7 = *(v2 + 3);
          if (v7)
          {
            if (atomic_fetch_add_explicit((v7 + 8), 0xFFFFFFFF, memory_order_release) == 1)
            {
              RB::Refcount<RB::Path::Object,std::atomic<unsigned int>>::release(v7);
            }
          }

          v8 = -1626368883;
LABEL_63:
          v17 = v8 | 0x10E1C4000000000;
          goto LABEL_64;
        }
      }

      return;
    }

    v2 = *(this + 2);
    if (!v2)
    {
      return;
    }

    *v2 = &unk_1F0A38780;
    v18 = *(v2 + 532);
    if (v18)
    {
      free(v18);
    }

    v19 = *(v2 + 17);
    if (v19)
    {
      free(v19);
    }

    v11 = -18588592;
LABEL_58:
    v17 = v11 | 0x10A1C4000000000;
LABEL_64:
    v15 = v2;
    goto LABEL_65;
  }

  if (v1 == 4)
  {
    v2 = *(this + 2);
    if (!v2)
    {
      return;
    }

    v20 = *(v2 + 38);
    if (v20)
    {
      free(v20);
    }

    v21 = *(v2 + 29);
    if (v21)
    {
      free(v21);
    }

    v11 = -986321111;
    goto LABEL_58;
  }

  if (v1 == 5)
  {
    v2 = *(this + 2);
    RB::Path::BooleanTransform::commit(v2);
    if (v2)
    {
      v13 = *(v2 + 4);
      if (v13)
      {
        CFRelease(v13);
      }

      *v2 = &unk_1F0A38840;
      v14 = *(v2 + 1);
      if (v14)
      {
        CFRelease(v14);
      }

      v8 = -217717331;
      goto LABEL_63;
    }
  }
}

uint64_t RB::Path::Mapper::elt_cubeto(uint64_t a1, float64x2_t *a2, float64x2_t a3, float64x2_t a4, float64x2_t a5)
{
  if (a2)
  {
    v5 = a2[1];
    a4 = vmlaq_laneq_f64(vmlaq_n_f64(a2[2], *a2, a4.f64[0]), v5, a4, 1);
    a5 = vmlaq_laneq_f64(vmlaq_n_f64(a2[2], *a2, a5.f64[0]), v5, a5, 1);
    a3 = vmlaq_laneq_f64(vmlaq_n_f64(a2[2], *a2, a3.f64[0]), v5, a3, 1);
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    return RB::Path::Mapper::cubeto(a1, a3, a4, a5);
  }

  *(v6 + 32) = a5;
  *(v6 + 64) = 0;
  return (*(**(v6 + 16) + 40))();
}

uint64_t RB::Path::Mapper::cubeto(uint64_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4)
{
  *(a1 + 32) = a4;
  *(a1 + 64) = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = v4[1];
    a2 = vmlaq_laneq_f64(vmlaq_n_f64(v4[2], *v4, a2.f64[0]), v5, a2, 1);
    a3 = vmlaq_laneq_f64(vmlaq_n_f64(v4[2], *v4, a3.f64[0]), v5, a3, 1);
    a4 = vmlaq_laneq_f64(vmlaq_n_f64(v4[2], *v4, a4.f64[0]), v5, a4, 1);
  }

  return (*(**(a1 + 8) + 40))(a2, a3, a4);
}

RB::Path::Storage::MapCache *RB::Path::Storage::append_storage(RB::Path::Storage::MapCache *this, const RB::Path::Storage *a2)
{
  v2 = *(a2 + 2);
  if (v2)
  {
    v3 = *(a2 + 3);
  }

  else
  {
    v3 = (v2 >> 8) & 0xFFF;
  }

  if (!v3)
  {
    return this;
  }

  v5 = this;
  v6 = *this;
  if (*this)
  {
    *this = 0;
    if (v6)
    {
      this = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v6 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        this = MEMORY[0x19A8C09C0](this, 0x1000C8052888210);
      }
    }
  }

  v7 = *(v5 + 2);
  if ((v7 & 0x20) != 0)
  {
    v8 = RB::Path::Storage::MapCache::shared(this);
    RB::Path::Storage::MapCache::remove(v8, v5);
    v7 = *(v5 + 2);
  }

  if (v7)
  {
    v9 = *(v5 + 7);
    if (v9)
    {
      *(v5 + 7) = 0;
      CFRelease(v9);
      v7 = *(v5 + 2);
    }
  }

  if (v7)
  {
    if (*(v5 + 3))
    {
      goto LABEL_19;
    }
  }

  else if (((v7 >> 8) & 0xFFF) != 0)
  {
    goto LABEL_19;
  }

  if ((*(a2 + 8) & 8) != 0)
  {
    v10 = v7 | 8;
    goto LABEL_20;
  }

LABEL_19:
  v10 = v7 & 0xFFFFFFF7;
LABEL_20:
  *(v5 + 2) = v10;
  *(v5 + 2) = *(a2 + 2) & 0x26 | v10;
  v11 = *(a2 + 2);
  v12 = *(a2 + 2);
  v13 = *(a2 + 3);
  v14 = a2 + 16;
  if (v11)
  {
    v14 = v12;
    v15 = v13;
  }

  else
  {
    v15 = (v11 >> 8) & 0xFFF;
  }

  v16 = v10 & 1;
  if (v10)
  {
    v17 = *(v5 + 3);
    v18 = *(v5 + 4);
  }

  else
  {
    v17 = (v10 >> 8) & 0xFFF;
    v18 = v10 >> 20;
  }

  v19 = v17 + v15;
  if (v18 < v17 + v15)
  {
    RB::Path::Storage::reserve_slow(v5, v17 + v15);
    v16 = *(v5 + 2) & 1;
  }

  v20 = (v5 + 16);
  if (v16)
  {
    v20 = *v20;
  }

  this = memcpy(v20 + v17, v14, v15);
  v21 = *(v5 + 2);
  if (v21)
  {
    *(v5 + 3) = v19;
  }

  else
  {
    *(v5 + 2) = v21 & 0xFFF000FE | ((v19 & 0xFFF) << 8);
  }

  return this;
}

void RB::Path::Storage::~Storage(RB::Path::Storage *this)
{
  v1 = this;
  v2 = *this;
  if (*this)
  {
    *this = 0;
    if (v2)
    {
      this = (v2 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v2 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        this = MEMORY[0x19A8C09C0](this, 0x1000C8052888210);
      }
    }
  }

  v3 = *(v1 + 2);
  if ((v3 & 0x20) != 0)
  {
    v4 = RB::Path::Storage::MapCache::shared(this);
    RB::Path::Storage::MapCache::remove(v4, v1);
    v3 = *(v1 + 2);
  }

  if (v3)
  {
    v5 = *(v1 + 7);
    if (!v5 || (*(v1 + 7) = 0, CFRelease(v5), (*(v1 + 8) & 1) != 0))
    {
      free(*(v1 + 2));
    }
  }
}

_DWORD *RB::Path::Storage::update_single_element(_DWORD *this, uint64_t a2, void *a3)
{
  v3 = this[2];
  if ((v3 & 0x10) == 0)
  {
    v4 = this;
    v6 = 0;
    v7 = 0;
    v9 = 0;
    v8 = 0;
    this = RB::Path::NestedCallbacks::single_element_fast(this, &v6, a3);
    v4[2] = v3 & 0xFFFFFFE7;
    if (!v7)
    {
      if (v8)
      {
        v5 = v3 & 0xFFFFFFE7 | 0x10;
        if (v8 == 1)
        {
          v5 = v3 | 8;
        }

        v4[2] = v5;
      }
    }
  }

  return this;
}

BOOL RB::Path::Storage::Iterator::next_type(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  v5 = (v4 >> 8) & 0xFFF;
  if (v4)
  {
    v5 = *(a2 + 24);
  }

  if (v3 < v5)
  {
    v8 = *(a2 + 16);
    v6 = a2 + 16;
    v7 = v8;
    if ((v4 & 1) == 0)
    {
      v7 = v6;
    }

    *a1 = v3 + 1;
    v9 = *(v7 + v3) & 0x1F;
    if ((*(v7 + v3) & 0x80) != 0)
    {
      v11 = 0;
      v10 = 1;
      if ((*(v7 + v3) & 0x1Fu) > 0x13)
      {
        if ((v9 - 22) < 2)
        {
          goto LABEL_10;
        }

        if (v9 == 20)
        {
          v11 = 3;
          goto LABEL_10;
        }

        if (v9 == 24)
        {
          v11 = 4;
          goto LABEL_10;
        }
      }

      else
      {
        if ((*(v7 + v3) & 0x1Fu) > 0x11)
        {
          if (v9 != 18)
          {
            v11 = 2;
          }

          goto LABEL_10;
        }

        if (v9 == 4 || v9 == 16)
        {
LABEL_10:
          v12 = __RBPathElementArgumentCount[v9];
          v10 = v11;
          goto LABEL_19;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    if (v9 > 0x18)
    {
      v12 = 0;
LABEL_19:
      if ((*(v7 + v3) & 0x40) != 0)
      {
        v14 = 2;
      }

      else
      {
        v14 = 3;
      }

      if ((*(v7 + v3) & 0x20) != 0)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      v16 = (v12 << v15) + v3 + 1;
      *a1 = v16;
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v18 = v16 + 2;
          goto LABEL_34;
        }

        v17 = v16 + 13 * *(v7 + v16 + 2);
      }

      else
      {
        if (v10 == 1)
        {
          v18 = v16 + (6 << v15);
          goto LABEL_34;
        }

        if (v10 != 2)
        {
LABEL_35:
          *a3 = v9;
          return v3 < v5;
        }

        v17 = v16 + (*(v7 + v16 + 2) << v15);
      }

      v18 = v17 + 4;
LABEL_34:
      *a1 = v18;
      goto LABEL_35;
    }

    v11 = v10;
    goto LABEL_10;
  }

  return v3 < v5;
}

BOOL RBPathStorageIsEmpty(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(a1 + 24);
  }

  else
  {
    v2 = (v1 >> 8) & 0xFFF;
  }

  return v2 == 0;
}

uint64_t RB::Path::Storage::apply_elements(RB::Path::Storage *a1, RB::Path::Storage *this, void *a3)
{
  {
    RB::Path::Storage::append_storage(this, a1);
    return 1;
  }

  else if (a3 == RB::Path::NestedCallbacks::apply_elements_callback)
  {

    return RB::Path::NestedCallbacks::apply_elements_fast(a1, this, a3);
  }

  else if (a3 == RB::Path::NestedCallbacks::single_element_callback)
  {

    return RB::Path::NestedCallbacks::single_element_fast(a1, this, a3);
  }

  else if (a3 == RB::Path::Mapper::apply_callback && (*(a1 + 2) & 0x20) != 0 && (*(this + 65) & 1) == 0)
  {
    v6 = RB::Path::Storage::MapCache::shared(a1);

    return RB::Path::Storage::MapCache::apply(v6, a1, this, RB::Path::Mapper::apply_callback, 0);
  }

  else
  {

    return RB::Path::Storage::apply_elements_(a1, this, a3);
  }
}

uint64_t RB::Path::NestedCallbacks::single_element_fast(RB::Path::NestedCallbacks *this, const RB::Path::Storage *a2, void *a3)
{
  v13 = 0;
  v5 = *a2;
  if (*a2)
  {
    if (!RB::Path::NestedCallbacks::first_element(this, &v13, v5))
    {
      return 0;
    }

    *(a2 + 1) = v5;
  }

  v12 = 0;
  v6 = *(a2 + 2);
  v7 = 1;
  if (v6 <= 1)
  {
    while (1)
    {
      if (!RB::Path::Storage::Iterator::next_type(&v13, this, &v12))
      {
        return 1;
      }

      v8 = v12;
      if (v12 <= 0x18u)
      {
        if (((1 << v12) & 0x1DE0000) != 0)
        {
          v9 = *(a2 + 1);
          *(a2 + 1) = v9 + 1;
          if (v9 == v5)
          {
            *(a2 + 2) = ++v6;
            *(a2 + 24) = v8 != 19;
          }

          goto LABEL_18;
        }

        if (((1 << v12) & 0xF000) != 0)
        {
          goto LABEL_15;
        }

        if (v12 == 16)
        {
          v10 = *(a2 + 1);
          *(a2 + 1) = v10 - 1;
          if (v10 == v5)
          {
            return 0;
          }

          goto LABEL_18;
        }
      }

      if (v12 >= 4u)
      {
        if (v12 == 4)
        {
          if (*(a2 + 1) != v5 || *(a2 + 24) != 1)
          {
            goto LABEL_18;
          }

          *(a2 + 24) = 0;
        }

        else if (*(a2 + 1) != v5)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_15:
      if (*(a2 + 1) == v5)
      {
        *(a2 + 24) = 1;
LABEL_17:
        *(a2 + 2) = ++v6;
      }

LABEL_18:
      if (v6 >= 2)
      {
        return 1;
      }
    }
  }

  return v7;
}

uint64_t RBPathIsEmpty(uint64_t a1, uint64_t a2)
{
  if (a2 != &empty_path_callbacks)
  {
    v3 = *(a2 + 40);
    if (*(a2 + 2))
    {
      if (v3)
      {

        return v3();
      }

      v6 = 1;
      v5 = *(a2 + 24);
      if (v5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v3)
      {

        return v3();
      }

      v6 = 1;
      v5 = *(a2 + 24);
      if (v5)
      {
LABEL_15:
        v5(a1, &v6, RBPathIsEmpty::$_0::__invoke<void *,RBPathElement,double const*,void const*>, a2);
      }
    }

    v2 = v6;
    return v2 & 1;
  }

  v2 = 1;
  return v2 & 1;
}

BOOL RB::Path::Storage::apply_elements_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, _BYTE *, __int128 *))
{
  v4 = 0;
  v62 = *MEMORY[0x1E69E9840];
  v60 = 0;
  v61 = 0x400000000;
  v5 = (a1 + 16);
  do
  {
    v6 = v4;
    v7 = *(a1 + 8);
    v8 = (v7 & 1) != 0 ? *(a1 + 24) : (v7 >> 8) & 0xFFF;
    if (v4 >= v8)
    {
      break;
    }

    v9 = v5;
    if (v7)
    {
      v9 = *v5;
    }

    ++v4;
    v10 = *(v9 + v6);
    v11 = v10 & 0x1F;
    if ((v10 & 0x80) == 0)
    {
      v12 = 0;
LABEL_10:
      if (v11 >= 0x19)
      {
        v54 = v10 & 0x1F;
        goto LABEL_35;
      }

      v13 = v12;
      goto LABEL_12;
    }

    v13 = 0;
    v12 = 1;
    if ((v10 & 0x1Fu) > 0x13)
    {
      if ((v11 - 22) < 2)
      {
        goto LABEL_12;
      }

      if (v11 == 20)
      {
        v13 = 3;
        goto LABEL_12;
      }

      if (v11 == 24)
      {
        v13 = 4;
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    if ((v10 & 0x1Fu) > 0x11)
    {
      if (v11 != 18)
      {
        v13 = 2;
      }

      goto LABEL_12;
    }

    if (v11 != 4 && v11 != 16)
    {
      goto LABEL_10;
    }

LABEL_12:
    v14 = __RBPathElementArgumentCount[v11];
    v54 = v10 & 0x1F;
    if (v14)
    {
      v15 = (v9 + v4);
      if ((v10 & 0x40) != 0)
      {
        v17 = __dst;
        v18 = v14;
        do
        {
          v19 = *v15++;
          *v17++ = v19;
          --v18;
        }

        while (v18);
        v4 += 4 * v14;
      }

      else if ((v10 & 0x20) != 0)
      {
        v20 = __dst;
        v21 = v14;
        do
        {
          v22 = *v15;
          v15 = (v15 + 2);
          *v20++ = v22;
          --v21;
        }

        while (v21);
        v4 += 2 * v14;
      }

      else
      {
        memcpy(__dst, v15, 8 * v14);
        v4 += 8 * v14;
      }
    }

    v12 = v13;
LABEL_35:
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        LODWORD(v56) = *(v9 + v4);
        DWORD1(v56) = *(v9 + v4 + 1);
        v25 = *(v9 + v4 + 2);
        v4 += 4;
        *(&v56 + 1) = v25;
        if (v25)
        {
          if (v61 < v25 && HIDWORD(v61) < v25)
          {
            RB::vector<std::unique_ptr<RB::RenderQueue,RB::RenderFrame::QueueDeleter>,4ul,unsigned int>::reserve_slow(v59, v25);
          }

          LODWORD(v61) = v25;
          v27 = v60;
          if (v60)
          {
            v28 = v60;
          }

          else
          {
            v28 = v59;
          }

          v29 = (v9 + v4);
          if ((v10 & 0x40) != 0)
          {
            v45 = v25;
            do
            {
              v46 = *v29++;
              *v28++ = v46;
              --v45;
            }

            while (v45);
            v30 = 4 * v25;
          }

          else if ((v10 & 0x20) != 0)
          {
            v48 = v25;
            do
            {
              v49 = *v29;
              v29 = (v29 + 2);
              *v28++ = v49;
              --v48;
            }

            while (v48);
            v30 = 2 * v25;
          }

          else
          {
            v30 = 8 * v25;
            memcpy(v28, v29, v30);
            v27 = v60;
          }

          v4 += v30;
          if (!v27)
          {
            v27 = v59;
          }

          *&v57 = v27;
        }

        goto LABEL_87;
      }

      if (v12 == 3)
      {
        LOWORD(v56) = *(v9 + v4);
        v4 += 2;
LABEL_87:
        v23 = 1;
        v24 = &v56;
        goto LABEL_88;
      }

      LODWORD(v56) = *(v9 + v4);
      DWORD1(v56) = *(v9 + v4 + 1);
      v31 = *(v9 + v4 + 2);
      v32 = v4 + 4;
      *(&v56 + 1) = v31;
      if (!v31)
      {
        goto LABEL_64;
      }

      v33 = 2 * v31;
      if (v61 >= 2 * v31 || HIDWORD(v61) >= v33)
      {
        LODWORD(v61) = 2 * v31;
        v35 = v59;
        if (v60)
        {
          v35 = v60;
        }

        *&v57 = v35;
      }

      else
      {
        RB::vector<std::unique_ptr<RB::RenderQueue,RB::RenderFrame::QueueDeleter>,4ul,unsigned int>::reserve_slow(v59, 2 * v31);
        LODWORD(v61) = v33;
        v35 = v60;
        if (!v60)
        {
          v35 = v59;
        }

        *&v57 = v35;
        if (!*(&v56 + 1))
        {
          goto LABEL_64;
        }
      }

      v36 = 0;
      v37 = v35 + 4;
      v38 = v9 + v4 + 5;
      do
      {
        *(v37 - 1) = *(v38 - 1);
        v39 = *v38;
        *(v37 + 2) = *(v38 + 8);
        *v37 = v39;
        v37 += 16;
        v32 += 13;
        ++v36;
        v38 += 13;
      }

      while (v36 < *(&v56 + 1));
LABEL_64:
      v23 = 1;
      v24 = &v56;
      v4 = v32;
      goto LABEL_88;
    }

    if (v12)
    {
      v40 = (v9 + v4);
      if ((v10 & 0x40) != 0)
      {
        for (i = 0; i != 6; ++i)
        {
          *(&v56 + i) = v40[i];
        }

        v43 = 24;
      }

      else if ((v10 & 0x20) != 0)
      {
        for (j = 0; j != 6; ++j)
        {
          *(&v56 + j) = *(v40 + j);
        }

        v43 = 12;
      }

      else
      {
        v41 = *v40;
        v42 = *(v40 + 2);
        v57 = *(v40 + 1);
        v58 = v42;
        v56 = v41;
        v43 = 48;
      }

      v4 += v43;
      goto LABEL_87;
    }

    v23 = 0;
    v24 = 0;
LABEL_88:
    v55 = v23;
  }

  while ((a3(a2, v54, __dst, v24) & 1) != 0);
  if (v60)
  {
    free(v60);
  }

  return v6 >= v8;
}

BOOL RB::Path::Storage::apply_elements_at_depth(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v11 = 0;
    if (!RB::Path::NestedCallbacks::first_element(a1, &v11, a4))
    {
      return 0;
    }

    v14 = 0;
    v15 = 0x400000000;
    v8 = a4;
    while (RB::Path::Storage::Iterator::next(&v11, a1, __dst))
    {
      if (v13 <= 0x18u)
      {
        if (((1 << v13) & 0x1DE0000) != 0)
        {
          ++v8;
        }

        else if (v13 == 16)
        {
          if (v8 == a4)
          {
            break;
          }

          --v8;
        }
      }

      if ((a3(a2) & 1) == 0)
      {
        v10 = 0;
        goto LABEL_18;
      }
    }

    v10 = 1;
LABEL_18:
    if (v14)
    {
      free(v14);
    }

    return v10;
  }

  else
  {

    return RB::Path::Storage::apply_elements_(a1, a2, a3);
  }
}

RB::Path::NestedCallbacks *RB::Path::NestedCallbacks::get(RB::Path::NestedCallbacks *this, const RBPathCallbacks *a2)
{
  if ((atomic_load_explicit(&qword_1ED6D55B0, memory_order_acquire) & 1) == 0)
  {
    RB::Path::NestedCallbacks::get();
  }

  v4 = qword_1ED6D55A8;
  os_unfair_lock_lock((qword_1ED6D55A8 + 24));
  v6 = *qword_1ED6D55A8;
  v5 = *(qword_1ED6D55A8 + 8);
  v7 = *qword_1ED6D55A8 + 24 * v5;
  while (v5)
  {
    v8 = v5 >> 1;
    v9 = &v6[3 * (v5 >> 1)];
    if (*v9 >= this)
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }

    if (*v9 == this)
    {
      v11 = v9[1];
      v12 = v11 == a2;
      v10 = v11 >= a2 ? 1 : -1;
      if (v12)
      {
        v10 = 0;
      }
    }

    v13 = v9 + 3;
    v5 += ~v8;
    if (v10 < 0)
    {
      v6 = v13;
    }

    else
    {
      v5 = v8;
    }
  }

  if (v6 == v7 || (*v6 == this ? (v14 = v6[1] == a2) : (v14 = 0), !v14))
  {
    operator new();
  }

  v15 = v6[2];
  os_unfair_lock_unlock(v4 + 6);
  return v15;
}

uint64_t RB::Path::NestedCallbacks::NestedCallbacks(RBPathCallbacks const*,unsigned long)::$_0::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = *(a4 + 88);
  v7[2] = *(a4 + 96);
  v7[3] = 0;
  v8 = 0;
  v5 = (*(v4 + 24))(a1, v7, RB::Path::NestedCallbacks::apply_elements_callback);
  return (v5 | v8) & 1;
}

BOOL RB::Path::NestedCallbacks::first_element(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v8 = 0;
  result = RB::Path::Storage::Iterator::next_type(a2, a1, &v8);
  if (result)
  {
    v7 = 0;
    while (1)
    {
      if (v8 <= 0x18u)
      {
        if (((1 << v8) & 0x1DE0000) != 0)
        {
          if (++v7 == a3)
          {
            return 1;
          }
        }

        else if (v8 == 16)
        {
          return 0;
        }
      }

      if (!RB::Path::Storage::Iterator::next_type(a2, a1, &v8))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t RB::Path::NestedCallbacks::apply_elements_fast(RB::Path::NestedCallbacks *this, const RB::Path::Storage *a2, void *a3)
{
  if ((*(this + 8) & 0x20) == 0)
  {
    v5 = *a2;
    v6 = *(a2 + 1);
LABEL_6:
    v7 = *(a2 + 2);

    return RB::Path::Storage::apply_elements_at_depth(this, v5, v6, v7);
  }

  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 != RB::Path::Mapper::apply_callback)
  {
    goto LABEL_6;
  }

  if (*(v5 + 65))
  {
    v6 = RB::Path::Mapper::apply_callback;
    goto LABEL_6;
  }

  v9 = RB::Path::Storage::MapCache::shared(this);
  v10 = *a2;
  v11 = *(a2 + 1);
  v12 = *(a2 + 2);

  return RB::Path::Storage::MapCache::apply(v9, this, v10, v11, v12);
}

uint64_t anonymous namespace::make_single_element_path<RBPathMakeRoundedRect::RoundedRectArgs>(RBPathMakeRoundedRect::RoundedRectArgs &&,CGAffineTransform const*)::{lambda(void const*)#2}::__invoke(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
  }

  return result;
}

uint64_t RBPathMakeRoundedRect(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, _OWORD *a8)
{
  if (a5 == 0.0 && a6 == 0.0)
  {
  }

  if (!CGRectIsNull(*&a1))
  {
    if (a8)
    {
      v10 = a8[1];
      *&v11.a = *a8;
      *&v11.c = v10;
      *&v11.tx = a8[2];
      if (!CGAffineTransformIsIdentity(&v11))
      {
        operator new();
      }
    }

    operator new();
  }

  return 0;
}

uint64_t RB::Refcount<RBPath anonymous namespace::make_single_element_path<RBPathMakeRoundedRect::RoundedRectArgs>(RBPathMakeRoundedRect::RoundedRectArgs &&,CGAffineTransform const*)::Info,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t rb_line_join(CGLineJoin a1)
{
  if (a1 == kCGLineJoinBevel)
  {
    return 2;
  }

  else
  {
    return a1 != kCGLineJoinMiter;
  }
}

uint64_t rb_line_cap(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return rb_line_cap(RBLineCap)::types[a1];
  }
}

{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return dword_195E44F2C[a1];
  }
}

BOOL RB::Path::Storage::Iterator::next(uint64_t *a1, uint64_t a2, char *__dst)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 24);
  }

  else
  {
    v5 = (v4 >> 8) & 0xFFF;
  }

  if (v3 < v5)
  {
    v10 = *(a2 + 16);
    v8 = a2 + 16;
    v9 = v10;
    if (v4)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v12 = v3 + 1;
    *a1 = v3 + 1;
    v13 = *(v11 + v3);
    v14 = v13 & 0x1F;
    if (v13 < 0)
    {
      v16 = 0;
      v15 = 1;
      if ((v13 & 0x1Fu) > 0x13)
      {
        if ((v14 - 22) < 2)
        {
          goto LABEL_12;
        }

        if (v14 == 20)
        {
          v16 = 3;
          goto LABEL_12;
        }

        if (v14 == 24)
        {
          v16 = 4;
          goto LABEL_12;
        }
      }

      else
      {
        if ((v13 & 0x1Fu) > 0x11)
        {
          if (v14 != 18)
          {
            v16 = 2;
          }

          goto LABEL_12;
        }

        if (v14 == 4 || v14 == 16)
        {
LABEL_12:
          v17 = __RBPathElementArgumentCount[v14];
          __dst[64] = v14;
          if (v17)
          {
            v18 = (v11 + v12);
            if ((v13 & 0x40) != 0)
            {
              v20 = __dst;
              v21 = v17;
              do
              {
                v22 = *v18++;
                *v20++ = v22;
                --v21;
              }

              while (v21);
              v12 += 4 * v17;
            }

            else if ((v13 & 0x20) != 0)
            {
              v23 = __dst;
              v24 = v17;
              do
              {
                v25 = *v18;
                v18 = (v18 + 2);
                *v23++ = v25;
                --v24;
              }

              while (v24);
              v12 += 2 * v17;
            }

            else
            {
              memcpy(__dst, v18, 8 * v17);
              v12 = *a1 + 8 * v17;
            }

            *a1 = v12;
          }

LABEL_35:
          if (v16 <= 1)
          {
            if (!v16)
            {
              v27 = 0;
LABEL_89:
              __dst[65] = v27;
              return v3 < v5;
            }

            v46 = (__dst + 72);
            v47 = (v11 + v12);
            if ((v13 & 0x40) != 0)
            {
              for (i = 0; i != 6; ++i)
              {
                v46[i] = v47[i];
              }

              v26 = v12 + 24;
            }

            else if ((v13 & 0x20) != 0)
            {
              for (j = 0; j != 6; ++j)
              {
                v46[j] = *(v47 + j);
              }

              v26 = v12 + 12;
            }

            else
            {
              v48 = *v47;
              v49 = *(v47 + 2);
              *(__dst + 88) = *(v47 + 1);
              *(__dst + 104) = v49;
              *v46 = v48;
              v26 = *a1 + 48;
            }
          }

          else
          {
            if (v16 == 2)
            {
              *a1 = v12 + 1;
              *(__dst + 18) = *(v11 + v12);
              v28 = (*a1)++;
              *(__dst + 19) = *(v11 + v28);
              v29 = *(v11 + *a1);
              *a1 += 2;
              *(__dst + 10) = v29;
              if (v29)
              {
                if (*(__dst + 40) < v29 && *(__dst + 41) < v29)
                {
                  RB::vector<std::unique_ptr<RB::RenderQueue,RB::RenderFrame::QueueDeleter>,4ul,unsigned int>::reserve_slow(__dst + 120, v29);
                }

                *(__dst + 40) = v29;
                v31 = *(__dst + 19);
                if (v31)
                {
                  v32 = *(__dst + 19);
                }

                else
                {
                  v32 = (__dst + 120);
                }

                v33 = *a1;
                v34 = (v11 + *a1);
                if ((v13 & 0x40) != 0)
                {
                  v51 = v29;
                  do
                  {
                    v52 = *v34++;
                    *v32++ = v52;
                    --v51;
                  }

                  while (v51);
                  v35 = v33 + 4 * v29;
                }

                else if ((v13 & 0x20) != 0)
                {
                  v54 = v29;
                  do
                  {
                    v55 = *v34;
                    v34 = (v34 + 2);
                    *v32++ = v55;
                    --v54;
                  }

                  while (v54);
                  v35 = v33 + 2 * v29;
                }

                else
                {
                  memcpy(v32, v34, 8 * v29);
                  v35 = *a1 + 8 * v29;
                  v31 = *(__dst + 19);
                }

                *a1 = v35;
                if (!v31)
                {
                  v31 = __dst + 120;
                }

                *(__dst + 11) = v31;
              }

              goto LABEL_88;
            }

            if (v16 != 3)
            {
              *a1 = v12 + 1;
              *(__dst + 18) = *(v11 + v12);
              v36 = (*a1)++;
              *(__dst + 19) = *(v11 + v36);
              v37 = *(v11 + *a1);
              *a1 += 2;
              *(__dst + 10) = v37;
              if (v37)
              {
                v38 = 2 * v37;
                if (*(__dst + 40) >= (2 * v37) || *(__dst + 41) >= v38)
                {
                  *(__dst + 40) = v38;
                  if (*(__dst + 19))
                  {
                    v40 = *(__dst + 19);
                  }

                  else
                  {
                    v40 = __dst + 120;
                  }

                  *(__dst + 11) = v40;
                }

                else
                {
                  RB::vector<std::unique_ptr<RB::RenderQueue,RB::RenderFrame::QueueDeleter>,4ul,unsigned int>::reserve_slow(__dst + 120, 2 * v37);
                  v57 = *(__dst + 10);
                  *(__dst + 40) = v38;
                  v40 = *(__dst + 19);
                  if (!v40)
                  {
                    v40 = __dst + 120;
                  }

                  *(__dst + 11) = v40;
                  if (!v57)
                  {
                    goto LABEL_88;
                  }
                }

                v41 = 0;
                v42 = *a1;
                v43 = v40 + 4;
                do
                {
                  v44 = (v11 + v42);
                  *(v43 - 1) = *v44;
                  v45 = *(v44 + 1);
                  *(v43 + 2) = *(v44 + 9);
                  *v43 = v45;
                  v43 += 16;
                  v42 = *a1 + 13;
                  *a1 = v42;
                  ++v41;
                }

                while (v41 < *(__dst + 10));
              }

LABEL_88:
              v27 = 1;
              goto LABEL_89;
            }

            *(__dst + 36) = *(v11 + v12);
            v26 = *a1 + 2;
          }

          *a1 = v26;
          goto LABEL_88;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    if (v14 >= 0x19)
    {
      __dst[64] = v14;
      v16 = v15;
      goto LABEL_35;
    }

    v16 = v15;
    goto LABEL_12;
  }

  return v3 < v5;
}

BOOL RB::Path::NestedCallbacks::NestedCallbacks(RBPathCallbacks const*,unsigned long)::$_1::__invoke(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v4[1] = 0;
  v5 = 0;
  v2 = *(a2 + 88);
  v4[0] = *(a2 + 96);
  (*(v2 + 24))(a1, v4, RB::Path::NestedCallbacks::single_element_callback);
  return v5 == 1;
}

void RB::Path::Storage::bounding_rect(RBPath this)
{
  var0 = this.var0;
  if (!atomic_load_explicit(this.var0, memory_order_acquire))
  {
    v2 = *(this.var0 + 2);
    if ((v2 & 8) == 0)
    {
      goto LABEL_3;
    }

    v10 = this.var0 + 16;
    if (v2)
    {
      v10 = *(this.var0 + 2);
    }

    v11 = *v10;
    if ((v11 - 69) >= 7 && (v11 - 37) >= 7 && (v11 - 5) > 6)
    {
LABEL_3:
      this.var1 = &RB::Path::Storage::bounding_rect(void)const::callbacks;
      BoundingRect = RBPathGetBoundingRect(this);
      v7 = *(var0 + 2);
      if (v7)
      {
        v12 = BoundingRect;
        v13 = v4;
        v14 = v5;
        v9 = 42;
        v15 = v6;
      }

      else
      {
        v8 = (var0 + ((v7 >> 8) & 0xFFF) + 19) & 0xFFFFFFFFFFFFFFFCLL;
        if (var0 + (v7 >> 20) - v8 + 16 < 0x10)
        {
          operator new[]();
        }

        v9 = (v8 - var0) | 2;
        v12 = BoundingRect;
        v13 = v4;
        v14 = v5;
        v16 = (v8 - var0) | 2;
        v15 = v6;
        if ((v9 & 2) == 0)
        {
          goto LABEL_18;
        }
      }

      v16 = var0 + v9;
LABEL_18:
      v18 = 0;
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      *v17 = v12;
      v17[1] = v13;
      v17[2] = v14;
      v17[3] = v15;
      atomic_compare_exchange_strong(var0, &v18, v9);
      if ((v9 & 1) != 0 && v18 && (v9 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        MEMORY[0x19A8C09C0](v9 & 0xFFFFFFFFFFFFFFFCLL, 0x1000C8052888210);
      }
    }
  }
}

float64x2_t RBPathBoundingRect(RBPath a1, const RB::AffineTransform *a2)
{
  var1 = a1.var1;
  var0 = a1.var0;
  v17 = *MEMORY[0x1E69E9840];
  v5 = *(a1.var1 + 8);
  if (*(a1.var1 + 2))
  {
    if (v5)
    {
      v5(a1.var0, a2, a1.var1);
      return result;
    }

    v12 = *(a1.var1 + 6);
    if (!v12 || !v12(a1.var0, a1.var1))
    {
      goto LABEL_17;
    }

LABEL_12:
    if (a2)
    {
      v13 = *(a2 + 1);
      *&v14.a = *a2;
      *&v14.c = v13;
      *&v14.tx = *(a2 + 2);
    }

    else
    {
      *&v14.a = xmmword_195E42760;
      *&v14.c = xmmword_195E42770;
      *&v14.tx = 0uLL;
    }

    v16 = 0;
    if (v16 == 1)
    {
      result.f64[0] = v15;
      return result;
    }

    goto LABEL_17;
  }

  if (v5)
  {
    (v5)(a1.var0);
    if (a2)
    {
      v10 = *(a2 + 1);
      *&v14.a = *a2;
      *&v14.c = v10;
      *&v14.tx = *(a2 + 2);
      *&result.f64[0] = CGRectApplyAffineTransform(*result.f64, &v14);
    }

    return result;
  }

  v11 = *(a1.var1 + 6);
  if (v11 && (v11(a1.var0) & 1) != 0)
  {
    goto LABEL_12;
  }

LABEL_17:
  *&v14.a = &unk_1F0A38880;
  *&v14.b = vneg_f32(0x7F0000007FLL);
  *&v14.c = 0x7F0000007FLL;
  RBPathMap(var0, var1, &v14, a2);
  if ((LODWORD(v14.b) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    return vcvtq_f64_f32(COERCE_FLOAT32X2_T(RB::Rect::from_bounds(*&v14.b, *&v14.c)));
  }

  else
  {
    return *MEMORY[0x1E695F050];
  }
}

void anonymous namespace::ShapeBounds::apply_shape_callback(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 <= 6)
  {
    v37 = v8;
    v38 = v7;
    v39 = v6;
    v40 = v5;
    v41 = v3;
    v42 = v4;
    if (((1 << a2) & 0x1B) != 0)
    {
      v11 = *(a3 + 16);
      v12 = *(a3 + 32);
      *v34 = *a3;
      *&v34[16] = v11;
      *&v34[32] = v12;
      v13.f64[0] = RB::operator*(v34, a1);
      *a1 = v13;
      *(a1 + 16) = v14;
      *(a1 + 32) = v15;
      v16 = vandq_s8(vandq_s8(vceqq_f64(v14, xmmword_195E42770), vceqq_f64(v13, xmmword_195E42760)), vceqzq_f64(v15));
      if ((vandq_s8(vdupq_laneq_s64(v16, 1), v16).u64[0] & 0x8000000000000000) != 0)
      {
        v28 = *(a3 + 64);
        *(a1 + 48) = *(a3 + 48);
        *(a1 + 64) = v28;
LABEL_11:
        *(a1 + 80) = 1;
        return;
      }

      v18 = *(a3 + 48);
      v17 = *(a3 + 56);
      v19 = *(a3 + 64);
      v43.size.height = *(a3 + 72);
      *v34 = v13;
      *&v34[16] = v14;
      *&v34[32] = v15;
      v43.origin.x = v18;
      v43.origin.y = v17;
      v43.size.width = v19;
      v44 = CGRectApplyAffineTransform(v43, v34);
LABEL_10:
      *(a1 + 48) = v44;
      goto LABEL_11;
    }

    if (a2 == 5)
    {
      v29 = *(a3 + 32);
      v30 = *(a3 + 48);
      *v34 = *(a3 + 16);
      *&v34[16] = v29;
      *&v34[32] = v30;
      *&v31 = RB::operator*(v34, a1);
      *a1 = v31;
      *(a1 + 16) = v32;
      *(a1 + 32) = v33;
      RBPathBoundingRect(*a3, a1);
      goto LABEL_10;
    }

    if (a2 == 6)
    {
      v20 = *(a3 + 16);
      v21 = rb_line_cap(*(a3 + 24));
      v22 = rb_line_join(*(a3 + 28));
      v23 = *(a3 + 32);
      *v34 = &unk_1F0A38510;
      *&v34[8] = v20 * (0.5 * RB::AffineTransform::scale(a1));
      v34[16] = v21;
      v24 = v23;
      v34[17] = v22;
      *&v34[20] = v24 * v24;
      *&v34[24] = vneg_f32(0x7F0000007FLL);
      *&v34[32] = 0x7F0000007FLL;
      memset(&v34[40], 0, 40);
      v35 = 1;
      v36 = 0;
      RBPathMap(*a3, *(a3 + 8), v34, a1);
      *(a1 + 48) = *&RB::Stroke::FixedWidthLineBounds::operator CGRect(v34);
      *(a1 + 56) = v25;
      *(a1 + 64) = v26;
      *(a1 + 72) = v27;
      *(a1 + 80) = 1;
    }
  }
}

uint64_t RB::Path::Mapper::add_rounded_rect(__n128 *this, float64x2_t *a2, float64x2_t *a3, int a4, float64x2_t *a5, float64x2_t a6, float64_t a7, float64_t a8, float64_t a9)
{
  v11 = *a3;
  v12 = a3[1];
  v13 = vandq_s8(vandq_s8(vceqzq_f64(*a3), vceqzq_f64(*a2)), vandq_s8(vceqzq_f64(v12), vceqzq_f64(a2[1])));
  if ((vandq_s8(v13, vdupq_laneq_s64(v13, 1)).u64[0] & 0x8000000000000000) != 0)
  {

    return RB::Path::Mapper::add_rect(this, *a6.f64, a5, 0);
  }

  else
  {
    v151 = a2[1];
    v156 = *a2;
    a6.f64[1] = a7;
    v15.f64[0] = a8;
    v15.f64[1] = a9;
    v16 = vaddq_f64(a6, v15);
    v17 = vmaxnmq_f64(a6, v16);
    v158 = vminnmq_f64(a6, v16);
    v18 = a3->f64[1];
    v150 = v17.f64[1];
    v147 = v158.f64[1] + v11.f64[1];
    v144 = v17.f64[1] - v12.f64[0];
    v159 = v17;
    v19.f64[0] = v17.f64[0];
    v19.f64[1] = (v17.f64[1] - v12.f64[0] + v158.f64[1] + v11.f64[1]) * 0.5;
    v155 = *a3;
    v149 = a3[1];
    RB::Path::Mapper::elt_moveto(this, a5, v19);
    if ((a4 & 0xFFFFFFFD) == 9)
    {
      v141 = v18;
      v20 = v18;
      v21 = *v149.i64;
      v22 = a9;
      v137 = fabsf(v22);
      v23 = (v137 - (v21 + v20)) / ((v21 + v20) * 0.52866);
      v24 = 0.868407011;
      v146 = 0.868407011;
      v148 = xmmword_195E44C60;
      v25 = xmmword_195E44C60;
      if (v23 < 1.0)
      {
        v26 = 0.0;
        if (v23 >= 0.0)
        {
          v26 = v23;
        }

        if (v26 > 1.0)
        {
          v26 = 1.0;
        }

        v25 = vcvtq_f64_f32(vmla_n_f32(0x3F75C28F3F800000, 0x3E0392E43F075696, v26));
        v24 = ((v26 * 0.048407) + 0.82);
      }

      v140 = v23;
      v139 = v25.f64[1];
      v27.f64[0] = v159.f64[0];
      v27.f64[1] = v150 - *v149.i64 * v25.f64[0];
      RB::Path::Mapper::elt_lineto(this, a5, v27);
      _D5 = v149.i64[0];
      _V0.D[1] = v139;
      __asm { FMLS            D1, D5, V0.D[1] }

      v35.f64[0] = v159.f64[0];
      v35.f64[1] = _D1;
      v36.f64[0] = v159.f64[0];
      v36.f64[1] = v150 - v24 * *v149.i64;
      v37.f64[0] = v159.f64[0] - 0.0749114007 * *v151.i64;
      v37.f64[1] = v150 - *v149.i64 * 0.631493986;
      RB::Path::Mapper::elt_cubeto(this, a5, v35, v36, v37);
      v38.f64[0] = v159.f64[0] - 0.169060007 * *v151.i64;
      v38.f64[1] = v150 - *v149.i64 * 0.372824013;
      v39.f64[0] = v159.f64[0] - 0.372824013 * *v151.i64;
      v39.f64[1] = v150 - *v149.i64 * 0.169060007;
      v40.f64[0] = v159.f64[0] - 0.631493986 * *v151.i64;
      v40.f64[1] = v150 - *v149.i64 * 0.0749114007;
      RB::Path::Mapper::elt_cubeto(this, a5, v38, v39, v40);
      _D4 = v151.i64[0];
      v42 = *v151.i64;
      _D11 = v151.i64[1];
      v44 = *&v151.i64[1];
      v45 = a8;
      v138 = fabsf(v45);
      v46 = (v138 - (v44 + v42)) / ((v44 + v42) * 0.52866);
      v47 = 0.868407011;
      _Q3 = xmmword_195E44C60;
      if (v46 < 1.0)
      {
        if (v46 < 0.0)
        {
          v46 = 0.0;
        }

        if (v46 > 1.0)
        {
          v46 = 1.0;
        }

        v47 = ((v46 * 0.048407) + 0.82);
        _Q3 = vcvtq_f64_f32(vmla_n_f32(0x3F75C28F3F800000, 0x3E0392E43F075696, v46));
      }

      v49.f64[1] = v159.f64[1];
      v49.f64[0] = v159.f64[0] - v47 * *v151.i64;
      __asm { FMLS            D2, D4, V3.D[1] }

      v51.f64[1] = v159.f64[1];
      v51.f64[0] = _D2;
      v143 = _Q3;
      v52.f64[1] = v159.f64[1];
      v52.f64[0] = v159.f64[0] - *v151.i64 * _Q3.f64[0];
      RB::Path::Mapper::elt_cubeto(this, a5, v49, v51, v52);
      v53.f64[1] = v159.f64[1];
      v53.f64[0] = v158.f64[0] + v143.f64[0] * *&v151.i64[1];
      RB::Path::Mapper::elt_lineto(this, a5, v53);
      _V0.D[1] = v143.f64[1];
      __asm { FMLA            D1, D11, V0.D[1] }

      v56.f64[1] = v159.f64[1];
      v56.f64[0] = _D1;
      v57.f64[1] = v159.f64[1];
      v57.f64[0] = v158.f64[0] + v47 * *&v151.i64[1];
      _D11 = v149.i64[1];
      v152 = vzip2q_s64(v151, v149);
      v59 = vmulq_f64(v152, xmmword_195E44C70);
      *&v60.f64[0] = *&vaddq_f64(v158, v59);
      v60.f64[1] = vsubq_f64(v159, v59).f64[1];
      RB::Path::Mapper::elt_cubeto(this, a5, v56, v57, v60);
      v61 = vmulq_f64(v152, xmmword_195E44C80);
      *&v62.f64[0] = *&vaddq_f64(v158, v61);
      v62.f64[1] = vsubq_f64(v159, v61).f64[1];
      v63 = vmulq_f64(v152, xmmword_195E44C90);
      *&v61.f64[0] = *&vaddq_f64(v158, v63);
      v61.f64[1] = vsubq_f64(v159, v63).f64[1];
      v64 = vmulq_f64(v152, xmmword_195E44CA0);
      *&v63.f64[0] = *&vaddq_f64(v158, v64);
      v63.f64[1] = vsubq_f64(v159, v64).f64[1];
      RB::Path::Mapper::elt_cubeto(this, a5, v62, v61, v63);
      v65 = *&v149.i64[1];
      v66 = *v155.i64;
      v67 = (v137 - (v66 + v65)) / ((v66 + v65) * 0.52866);
      v68 = 0.868407011;
      _Q4 = xmmword_195E44C60;
      if (v67 < 1.0)
      {
        if (v67 < 0.0)
        {
          v67 = 0.0;
        }

        if (v67 > 1.0)
        {
          v67 = 1.0;
        }

        v68 = ((v67 * 0.048407) + 0.82);
        _Q4 = vcvtq_f64_f32(vmla_n_f32(0x3F75C28F3F800000, 0x3E0392E43F075696, v67));
      }

      v153 = _Q4;
      v70.f64[0] = v158.f64[0];
      v70.f64[1] = v150 - v68 * *&v149.i64[1];
      __asm { FMLS            D2, D11, V4.D[1] }

      v72.f64[0] = v158.f64[0];
      v72.f64[1] = _D2;
      v73.f64[0] = v158.f64[0];
      v73.f64[1] = v150 - *&v149.i64[1] * _Q4.f64[0];
      RB::Path::Mapper::elt_cubeto(this, a5, v70, v72, v73);
      v74.f64[0] = v158.f64[0];
      v74.f64[1] = v158.f64[1] + v153.f64[0] * *v155.i64;
      RB::Path::Mapper::elt_lineto(this, a5, v74);
      _V0.D[1] = v153.f64[1];
      _D4 = v155.i64[0];
      __asm { FMLA            D1, D4, V0.D[1] }

      v78.f64[0] = v158.f64[0];
      v78.f64[1] = _D1;
      v79.f64[0] = v158.f64[0];
      v79.f64[1] = v158.f64[1] + v68 * *v155.i64;
      v80.f64[0] = v158.f64[0] + *v156.i64 * 0.0749114007;
      v80.f64[1] = v158.f64[1] + *v155.i64 * 0.631493986;
      RB::Path::Mapper::elt_cubeto(this, a5, v78, v79, v80);
      v81.f64[0] = v158.f64[0] + *v156.i64 * 0.169060007;
      v81.f64[1] = v158.f64[1] + *v155.i64 * 0.372824013;
      v82.f64[0] = v158.f64[0] + *v156.i64 * 0.372824013;
      v82.f64[1] = v158.f64[1] + *v155.i64 * 0.169060007;
      v83.f64[0] = v158.f64[0] + *v156.i64 * 0.631493986;
      v83.f64[1] = v158.f64[1] + *v155.i64 * 0.0749114007;
      RB::Path::Mapper::elt_cubeto(this, a5, v81, v82, v83);
      _D4 = v156.i64[0];
      v85 = *v156.i64;
      _D10 = v156.i64[1];
      v87 = *&v156.i64[1];
      v88 = (v138 - (v87 + v85)) / ((v87 + v85) * 0.52866);
      v89 = 0.868407011;
      _Q3 = xmmword_195E44C60;
      if (v88 < 1.0)
      {
        if (v88 < 0.0)
        {
          v88 = 0.0;
        }

        if (v88 > 1.0)
        {
          v88 = 1.0;
        }

        v89 = ((v88 * 0.048407) + 0.82);
        _Q3 = vcvtq_f64_f32(vmla_n_f32(0x3F75C28F3F800000, 0x3E0392E43F075696, v88));
      }

      v91.f64[1] = v158.f64[1];
      v91.f64[0] = v158.f64[0] + v89 * *v156.i64;
      __asm { FMLA            D2, D4, V3.D[1] }

      v93.f64[1] = v158.f64[1];
      v93.f64[0] = _D2;
      v154 = _Q3;
      v94.f64[1] = v158.f64[1];
      v94.f64[0] = v158.f64[0] + _Q3.f64[0] * *v156.i64;
      RB::Path::Mapper::elt_cubeto(this, a5, v91, v93, v94);
      v95.f64[1] = v158.f64[1];
      v95.f64[0] = v159.f64[0] - *&v156.i64[1] * v154.f64[0];
      RB::Path::Mapper::elt_lineto(this, a5, v95);
      _V0.D[1] = v154.f64[1];
      __asm { FMLS            D1, D10, V0.D[1] }

      v98.f64[1] = v158.f64[1];
      v98.f64[0] = _D1;
      v99.f64[1] = v158.f64[1];
      v99.f64[0] = v159.f64[0] - v89 * *&v156.i64[1];
      v157 = vzip2q_s64(v156, v155);
      v100 = vmulq_f64(v157, xmmword_195E44C70);
      *&v101.f64[0] = *&vsubq_f64(v159, v100);
      v101.f64[1] = vaddq_f64(v158, v100).f64[1];
      RB::Path::Mapper::elt_cubeto(this, a5, v98, v99, v101);
      v102 = vmulq_f64(v157, xmmword_195E44C80);
      *&v103.f64[0] = *&vsubq_f64(v159, v102);
      v103.f64[1] = vaddq_f64(v158, v102).f64[1];
      v104 = vmulq_f64(v157, xmmword_195E44C90);
      *&v102.f64[0] = *&vsubq_f64(v159, v104);
      v102.f64[1] = vaddq_f64(v158, v104).f64[1];
      v105 = vmulq_f64(v157, xmmword_195E44CA0);
      *&v104.f64[0] = *&vsubq_f64(v159, v105);
      v104.f64[1] = vaddq_f64(v158, v105).f64[1];
      RB::Path::Mapper::elt_cubeto(this, a5, v103, v102, v104);
      v106 = 1.0;
      if (v140 < 1.0)
      {
        v107 = 0.0;
        if (v140 >= 0.0)
        {
          v107 = v140;
        }

        if (v107 <= 1.0)
        {
          v106 = v107;
        }

        v146 = ((v106 * 0.048407) + 0.82);
        v148 = vcvtq_f64_f32(vmla_n_f32(0x3F75C28F3F800000, 0x3E0392E43F075696, v106));
      }

      _D4 = v141;
      v113.f64[0] = v159.f64[0];
      v109.f64[0] = v159.f64[0];
      v109.f64[1] = v158.f64[1] + v146 * v141;
      _V5.D[1] = v148.f64[1];
      __asm { FMLA            D3, D4, V5.D[1] }

      v112.f64[0] = v159.f64[0];
      v112.f64[1] = _D3;
      v113.f64[1] = v158.f64[1] + v148.f64[0] * v141;
      v114 = this;
    }

    else
    {
      v116.f64[0] = v159.f64[0];
      v116.f64[1] = v144;
      RB::Path::Mapper::elt_lineto(this, a5, v116);
      _D10 = 0x3FDCA75DDD61E2A2;
      v118.f64[0] = v159.f64[0];
      v118.f64[1] = v150 - *v149.i64 * 0.44771525;
      v119.f64[1] = v159.f64[1];
      v119.f64[0] = v159.f64[0] - 0.44771525 * *v151.i64;
      v120.f64[1] = v159.f64[1];
      v120.f64[0] = v159.f64[0] - *v151.i64;
      RB::Path::Mapper::elt_cubeto(this, a5, v118, v119, v120);
      v121.f64[1] = v159.f64[1];
      v121.f64[0] = v158.f64[0] + *&v151.i64[1];
      RB::Path::Mapper::elt_lineto(this, a5, v121);
      _V0.D[1] = v151.i64[1];
      __asm { FMLA            D1, D10, V0.D[1] }

      v124.f64[1] = v159.f64[1];
      v124.f64[0] = _D1;
      _D1 = v149.i64[1];
      __asm { FMLS            D2, D10, V5.D[1] }

      v127.f64[0] = v158.f64[0];
      v127.f64[1] = _D2;
      v128.f64[0] = v158.f64[0];
      v128.f64[1] = v150 - *&v149.i64[1];
      RB::Path::Mapper::elt_cubeto(this, a5, v124, v127, v128);
      v129.f64[0] = v158.f64[0];
      v129.f64[1] = v158.f64[1] + *v155.i64;
      RB::Path::Mapper::elt_lineto(this, a5, v129);
      v130.f64[0] = v158.f64[0];
      v130.f64[1] = v158.f64[1] + *v155.i64 * 0.44771525;
      v131.f64[1] = v158.f64[1];
      v131.f64[0] = v158.f64[0] + *v156.i64 * 0.44771525;
      v132.f64[1] = v158.f64[1];
      v132.f64[0] = v158.f64[0] + *v156.i64;
      RB::Path::Mapper::elt_cubeto(this, a5, v130, v131, v132);
      v133.f64[1] = v158.f64[1];
      v133.f64[0] = v159.f64[0] - *&v156.i64[1];
      RB::Path::Mapper::elt_lineto(this, a5, v133);
      v134.f64[1] = v158.f64[1];
      v113.f64[0] = v159.f64[0];
      _V1.D[1] = v156.i64[1];
      __asm { FMLS            D0, D10, V1.D[1] }

      v134.f64[0] = _D0;
      v112.f64[0] = v159.f64[0];
      v112.f64[1] = v158.f64[1] + v18 * 0.44771525;
      v113.f64[1] = v147;
      v114 = this;
      v109 = v134;
    }

    RB::Path::Mapper::elt_cubeto(v114, a5, v109, v112, v113);

    return RB::Path::Mapper::elt_closepath(this);
  }
}

void RB::Stroke::LineBounds::moveto(uint64_t a1, double a2, double a3)
{
  v3 = *&a3;
  if ((*(a1 + 64) & 1) == 0)
  {
    LODWORD(a3) = *(a1 + 60);
    RB::Stroke::LineBounds::add_cap(a1, 0, *(a1 + 32), a3, *(a1 + 40));
    LODWORD(v6) = *(a1 + 56);
    RB::Stroke::LineBounds::add_cap(a1, 1, *(a1 + 24), v6, *(a1 + 48));
    *(a1 + 64) = 1;
  }

  *(a1 + 24) = a2;
  *(a1 + 32) = a2;
  *(a1 + 56) = v3;
  *(a1 + 60) = v3;
  v7 = *(a1 + 68);
  if (v7 < v3)
  {
    v7 = v3;
  }

  *(a1 + 68) = v7;
}

void RB::Stroke::LineBounds::lineto(float32x2_t *a1, float32x2_t a2, float a3, double a4, double a5, double a6, double a7)
{
  v10 = a1[3];
  v11 = vsub_f32(a2, v10);
  if (a1[8].i8[0] == 1)
  {
    a1[5] = v11;
    a1[8].i8[0] = 0;
  }

  else
  {
    RB::Stroke::LineBounds::add_join(a1, v10, a1[7].f32[0], a1[6], v11, a6, a7);
  }

  a1[3] = a2;
  a1[7].f32[0] = a3;
  a1[6] = v11;
  v12 = a1[8].f32[1];
  if (v12 < a3)
  {
    v12 = a3;
  }

  a1[8].f32[1] = v12;
}

float32x2_t RB::Stroke::LineBounds::add_join(float32x2_t *a1, float32x2_t a2, float a3, float32x2_t a4, float32x2_t a5, double a6, double a7)
{
  v7 = a5;
  *&a7 = a3;
  if (!a1->i8[1])
  {
    v21 = vmvn_s8(vceqz_f32(a4));
    if ((vpmax_u32(v21, v21).u32[0] & 0x80000000) != 0)
    {
      v22 = vmul_f32(a4, a4);
      v22.i32[0] = vadd_f32(v22, vdup_lane_s32(v22, 1)).u32[0];
      v23 = vrsqrte_f32(v22.u32[0]);
      v24 = vmul_f32(vrsqrts_f32(v22.u32[0], vmul_f32(v23, v23)), v23);
      a4 = vmul_n_f32(a4, vmul_f32(v24, vrsqrts_f32(v22.u32[0], vmul_f32(v24, v24))).f32[0]);
    }

    v25 = vmvn_s8(vceqz_f32(a5));
    if ((vpmax_u32(v25, v25).u32[0] & 0x80000000) != 0)
    {
      v26 = vmul_f32(a5, a5);
      v26.i32[0] = vadd_f32(v26, vdup_lane_s32(v26, 1)).u32[0];
      v27 = vrsqrte_f32(v26.u32[0]);
      v28 = vmul_f32(vrsqrts_f32(v26.u32[0], vmul_f32(v27, v27)), v27);
      v7 = vmul_n_f32(a5, vmul_f32(v28, vrsqrts_f32(v26.u32[0], vmul_f32(v28, v28))).f32[0]);
    }

    v29 = vaddv_f32(vmul_f32(v7, a4));
    if (v29 < 0.99 && fabsf(v29) > 0.00001)
    {
      v30 = v29 + 1.0;
      if ((a1->f32[1] * v30) >= 2.0)
      {
        v31 = v30;
        v32 = vrsqrte_f32(LODWORD(v30));
        v33 = vmul_f32(vrsqrts_f32(LODWORD(v31), vmul_f32(v32, v32)), v32);
        v33.f32[0] = vmul_f32(v33, vrsqrts_f32(LODWORD(v31), vmul_f32(v33, v33))).f32[0];
        v34 = vadd_f32(v7, a4);
        v35 = vmul_f32(v34, v34);
        v35.i32[0] = vadd_f32(v35, vdup_lane_s32(v35, 1)).u32[0];
        v36 = vrsqrte_f32(v35.u32[0]);
        v37 = vmul_f32(vrsqrts_f32(v35.u32[0], vmul_f32(v36, v36)), v36);
        v38 = vmul_f32(v37, vrsqrts_f32(v35.u32[0], vmul_f32(v37, v37)));
        v39 = vmul_n_f32(v34, *v38.i32);
        *v38.i32 = -*&v39.i32[1];
        v40 = vmul_n_f32(vzip1_s32(v38, v39), (*&a7 * 1.4142) * v33.f32[0]);
        v41 = vsub_f32(a2, v40);
        v42 = vadd_f32(v40, a2);
        v43 = vminnm_f32(a1[1], vminnm_f32(v41, v42));
        v44 = vmaxnm_f32(a1[2], vmaxnm_f32(v41, v42));
        a1[1] = v43;
        a1[2] = v44;
      }
    }

    goto LABEL_16;
  }

  if (a1->i8[1] != 2)
  {
LABEL_16:
    v20 = vdup_lane_s32(*&a7, 0);
    goto LABEL_17;
  }

  v10 = vmvn_s8(vceqz_f32(a4));
  if ((vpmax_u32(v10, v10).u32[0] & 0x80000000) != 0)
  {
    v11 = vmul_f32(a4, a4);
    v11.i32[0] = vadd_f32(v11, vdup_lane_s32(v11, 1)).u32[0];
    v12 = vrsqrte_f32(v11.u32[0]);
    v13 = vmul_f32(vrsqrts_f32(v11.u32[0], vmul_f32(v12, v12)), v12);
    a4 = vmul_n_f32(a4, vmul_f32(v13, vrsqrts_f32(v11.u32[0], vmul_f32(v13, v13))).f32[0]);
  }

  v14 = vmvn_s8(vceqz_f32(a5));
  v15 = vpmax_u32(v14, v14);
  if (v15.i32[0] < 0)
  {
    v16 = vmul_f32(a5, a5);
    v16.i32[0] = vadd_f32(v16, vdup_lane_s32(v16, 1)).u32[0];
    v17 = vrsqrte_f32(v16.u32[0]);
    v18 = vmul_f32(vrsqrts_f32(v16.u32[0], vmul_f32(v17, v17)), v17);
    v15 = vmul_f32(v18, vrsqrts_f32(v16.u32[0], vmul_f32(v18, v18)));
    v7 = vmul_n_f32(a5, *v15.i32);
  }

  v46 = v7;
  v47 = *&a7;
  *v15.i32 = -a4.f32[1];
  v19 = RB::Stroke::LineBounds::add_point(a1, a2, COERCE_DOUBLE(vabs_f32(vmul_n_f32(vzip1_s32(v15, a4), *&a7))));
  v19.f32[0] = -*&v46.i32[1];
  v20 = vabs_f32(vmul_n_f32(vzip1_s32(v19, v46), v47));
LABEL_17:

  return RB::Stroke::LineBounds::add_point(a1, a2, *&v20);
}

void RB::Stroke::LineBounds::cubeto(uint64_t a1, int8x16_t a2, float32x2_t a3, int8x16_t a4, float a5, double a6, double a7, int32x4_t a8, int8x16_t a9)
{
  v10 = *a4.i8;
  v12 = *a2.i8;
  a2.i64[0] = *(a1 + 24);
  v14 = COERCE_DOUBLE(vsub_f32(v12, *a2.i8));
  if (vaddv_f32(vmul_f32(*&v14, *&v14)) < 0.00001)
  {
    v15 = COERCE_DOUBLE(vsub_f32(a3, *a2.i8));
    v14 = COERCE_DOUBLE(vsub_f32(v10, *a2.i8));
    if (vaddv_f32(vmul_f32(*&v15, *&v15)) >= 0.00001)
    {
      v14 = v15;
    }
  }

  v16 = COERCE_DOUBLE(vsub_f32(v10, a3));
  if (vaddv_f32(vmul_f32(*&v16, *&v16)) < 0.00001)
  {
    v17 = COERCE_DOUBLE(vsub_f32(v10, v12));
    a6 = COERCE_DOUBLE(vmul_f32(*&v17, *&v17));
    *&a6 = vaddv_f32(*&a6);
    v18 = COERCE_DOUBLE(vsub_f32(v10, *a2.i8));
    if (*&a6 < 0.00001)
    {
      v16 = v18;
    }

    else
    {
      v16 = v17;
    }
  }

  if (*(a1 + 64) == 1)
  {
    *(a1 + 40) = v14;
    *(a1 + 64) = 0;
  }

  else
  {
    RB::Stroke::LineBounds::add_join(a1, *a2.i8, *(a1 + 56), *(a1 + 48), *&v14, a6, a7);
    a2.i64[0] = *(a1 + 24);
  }

  v19 = vminnm_f32(*a2.i8, v10);
  v20 = vmaxnm_f32(*a2.i8, v10);
  v21 = vcge_f32(v20, vmaxnm_f32(v12, a3));
  v22 = vand_s8(v21, vcge_f32(vminnm_f32(v12, a3), v19));
  if ((vpmin_u32(v22, v22).u32[0] & 0x80000000) == 0)
  {
    *a4.i8 = a3;
    *a2.i64 = RB::Path::cubic_bounds_slow(a2, v12, a4, v10, *&v21, a7, a8, a9);
    v19 = *a2.i8;
  }

  a2.i32[0] = *(a1 + 56);
  if (*a2.i32 < a5)
  {
    *a2.i32 = a5;
  }

  v23 = vdup_lane_s32(*a2.i8, 0);
  v24 = vminnm_f32(*(a1 + 8), vsub_f32(v19, v23));
  v25 = vmaxnm_f32(*(a1 + 16), vadd_f32(v23, v20));
  *(a1 + 8) = v24;
  *(a1 + 16) = v25;
  *(a1 + 24) = v10;
  *(a1 + 56) = a5;
  *(a1 + 48) = v16;
  v26 = *(a1 + 68);
  if (v26 < a5)
  {
    v26 = a5;
  }

  *(a1 + 68) = v26;
}

void RB::Stroke::FixedWidthLineBounds::cubeto(uint64_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, double a5, double a6, double a7, int32x4_t a8, int8x16_t a9)
{
  *&a2.f64[0] = vcvt_f32_f64(a2);
  *&a4.f64[0] = vcvt_f32_f64(a4);
  RB::Stroke::LineBounds::cubeto(a1 + 16, a2, vcvt_f32_f64(a3), a4, *(a1 + 8), a6, a7, a8, a9);
}

float32x2_t RB::Stroke::LineBounds::add_point(float32x2_t *a1, float32x2_t a2, double a3)
{
  v3 = a2;
  v5 = vsub_f32(a2, *&a3);
  if (*&a3 > 0.0 && (vmvn_s8(vcgt_f32(a2, v5)).u8[0] & 1) != 0)
  {
    v18 = a3;
    v26 = v5.i32[1];
    v13 = nextafterf(v5.f32[0], -INFINITY);
    v3 = a2;
    a3 = v18;
    v5 = __PAIR64__(v26, LODWORD(v13));
  }

  v6 = vadd_f32(*&a3, v3);
  if (*&a3 > 0.0 && (vmvn_s8(vcgt_f32(v6, v3)).u8[0] & 1) != 0)
  {
    v19 = HIDWORD(a3);
    v22 = v6.i32[1];
    v23 = v5;
    v17 = v3.i32[1];
    v14 = nextafterf(v6.f32[0], INFINITY);
    v3.i32[1] = v17;
    HIDWORD(a3) = v19;
    v5 = v23;
    v6 = __PAIR64__(v22, LODWORD(v14));
  }

  v7 = v3.f32[1];
  v8 = *(&a3 + 1);
  if (*(&a3 + 1) > 0.0 && v5.f32[1] >= v3.f32[1])
  {
    v20 = v6;
    v24 = v5.i32[0];
    v15 = nextafterf(v5.f32[1], -INFINITY);
    v6 = v20;
    v5 = __PAIR64__(LODWORD(v15), v24);
  }

  if (v8 > 0.0 && v6.f32[1] <= v7)
  {
    v21 = v6.i32[0];
    v25 = v5;
    v6 = __PAIR64__(COERCE_UNSIGNED_INT(nextafterf(v6.f32[1], INFINITY)), v21);
    v5 = v25;
  }

  result = vminnm_f32(a1[1], v5);
  v12 = vmaxnm_f32(a1[2], v6);
  a1[1] = result;
  a1[2] = v12;
  return result;
}

void RB::Stroke::LineBounds::closepath(float32x2_t *this, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if ((this[8].i8[0] & 1) == 0)
  {
    v8 = this[3];
    v9 = this[4];
    v10 = vsub_f32(v9, v8);
    v11 = this[7].f32[1];
    RB::Stroke::LineBounds::add_join(this, v8, this[7].f32[0], this[6], v10, a6, a7);
    this[3] = v9;
    this[7].f32[0] = v11;
    this[6] = v10;
    v14 = this[8].f32[1];
    if (v14 < v11)
    {
      v14 = v11;
    }

    this[8].f32[1] = v14;
    RB::Stroke::LineBounds::add_join(this, this[4], this[7].f32[1], v10, this[5], v12, v13);
    this[8].i8[0] = 1;
  }
}

float32x2_t RB::Stroke::LineBounds::endpath(RB::Stroke::LineBounds *this, float32x2_t result, double a3)
{
  if ((*(this + 64) & 1) == 0)
  {
    LODWORD(a3) = *(this + 15);
    RB::Stroke::LineBounds::add_cap(this, 0, *(this + 32), a3, *(this + 40));
    v5 = *(this + 24);
    LODWORD(v6) = *(this + 14);
    v7 = *(this + 48);

    return RB::Stroke::LineBounds::add_cap(this, 1, v5, v6, v7);
  }

  return result;
}

float64x2_t RB::Stroke::FixedWidthLineBounds::operator CGRect(float32x2_t *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = vcgt_f32(v2, v1);
  if ((vpmin_u32(v3, v3).u32[0] & 0x80000000) != 0)
  {
    return vcvtq_f64_f32(COERCE_FLOAT32X2_T(RB::Rect::from_bounds(v1, v2)));
  }

  else
  {
    return *MEMORY[0x1E695F050];
  }
}

float32x2_t RB::Path::BoundingRect::lineto(float32x2_t *a1, float64x2_t a2)
{
  result = vcvt_f32_f64(a2);
  v3 = vmaxnm_f32(a1[2], result);
  a1[1] = vminnm_f32(a1[1], result);
  a1[2] = v3;
  a1[3] = result;
  return result;
}

void *RB::details::realloc_vector<unsigned int,80ul>(void *a1, _DWORD *a2, unsigned int a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(80 * a3);
    v6 = v5 / 0x50;
    if (*a2 != (v5 / 0x50))
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

void *RB::vector<RB::Device::RenderPipelineEntry::Functions::Table,0ul,unsigned int>::reserve_slow(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12) + (*(a1 + 12) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 12) + (*(a1 + 12) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,80ul>(*a1, (a1 + 12), v3);
  *a1 = result;
  return result;
}

void *RB::Path::Storage::reserve_slow(RB::Path::Storage *this, size_t a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(this + 4);
  }

  else
  {
    v4 = v3 >> 20;
  }

  v5 = 2 * v4;
  if (v5 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v5;
  }

  v7 = malloc_good_size(v6);
  v8 = v7;
  if (*(this + 8))
  {
    result = malloc_type_realloc(*(this + 2), v7, 0x6C5C13BFuLL);
    v11 = result;
    if (result)
    {
      goto LABEL_15;
    }

LABEL_12:
    RB::RenderFrame::alloc_buffer_region(result, v10);
  }

  result = malloc_type_malloc(v7, 0x28485EB2uLL);
  if (!result)
  {
    goto LABEL_12;
  }

  v11 = result;
  v12 = *(this + 2);
  if (v12)
  {
    v14 = *(this + 2);
    v13 = *(this + 3);
  }

  else
  {
    v13 = (v12 >> 8) & 0xFFF;
    v14 = this + 16;
  }

  result = memcpy(result, v14, v13);
  *(this + 2) |= 1u;
  *(this + 3) = v13;
  *(this + 7) = 0;
LABEL_15:
  *(this + 2) = v11;
  *(this + 4) = v8;
  return result;
}

float32x2_t RB::Path::BoundingRect::moveto(float32x2_t *a1, float64x2_t a2)
{
  result = vcvt_f32_f64(a2);
  v3 = vmaxnm_f32(a1[2], result);
  a1[1] = vminnm_f32(a1[1], result);
  a1[2] = v3;
  a1[3] = result;
  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Path>::operator()<RB::Fill::Color>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (*(*a1 + 48) == 1)
  {
    v12[0] = &unk_1F0A3BAD8;
    v12[1] = a1;
    v12[2] = a2;
    RB::Coverage::Path::simplify(a1[1], v12);
    v4 = *a1;
  }

  result = *(v4 + 56);
  if (!result)
  {
    result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Color>,RB::Heap&,RB::Coverage::Path const&,RB::Fill::Color const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v4, *v4, a1[1], a2, (v4 + 8), (v4 + 16), (v4 + 20), (v4 + 24));
    v4 = *a1;
    _S0 = *(*a1 + 28);
    if (_S0 != 0.0)
    {
      __asm { FCVT            H0, S0 }

      *(result + 49) = _H0;
    }

    *(v4 + 56) = result;
  }

  if (*(v4 + 48) == 1)
  {
    *(result + 23) |= 0x2000u;
  }

  return result;
}

void *RBFillData::apply<RB::DisplayList::ItemFactory::Inner<RB::Coverage::Path>>(void *result, uint64_t *a2)
{
  v2 = *result;
  if (*result <= 2)
  {
    if (v2 == 1)
    {
      return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Path>::operator()<RB::Fill::Color>(a2, (result + 2));
    }

    else if (v2 == 2)
    {
      return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Path>::operator()<RB::Fill::Gradient>(a2, result + 2);
    }
  }

  else
  {
    switch(v2)
    {
      case 3:
        return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Path>::operator()<RB::Fill::MeshGradient>(a2, (result + 2));
      case 4:
        return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Path>::operator()<RB::Fill::Image<RB::ImageTexture>>(a2, (result + 2));
      case 5:
        return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Path>::operator()<RB::Fill::Custom>(a2, (result + 2));
    }
  }

  return result;
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Path,RB::Fill::Color>,RB::Heap&,RB::Coverage::Path const&,RB::Fill::Color const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, size_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, float *a6, _DWORD *a7, __int16 *a8)
{
  v16 = *(this + 3);
  v17 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v17 + 104 > v16)
  {
    v17 = RB::Heap::alloc_slow(this, 0x68uLL, 7);
  }

  else
  {
    *(this + 2) = v17 + 104;
  }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Color>::GenericItem1(v17, a2, a3, a4, *a5, *a7, *a8, *a6);
  *result = &unk_1F0A3CF28;
  return result;
}

size_t *RB::Symbol::Glyph::Layer::clip(uint64_t a1, RB::DisplayList::State *a2, int a3, uint64_t a4, float64x2_t *a5, RB::Symbol::Presentation *this)
{
  if (*(a4 + 24) != 0.0)
  {
    v12 = vmvn_s8(vceq_f32(*a4, 0x3F80000000000000));
    if ((vpmax_u32(v12, v12).u32[0] & 0x80000000) != 0)
    {
      v17 = RBDrawingStateBeginLayer(a2, 0);
      v24 = *(a4 + 16);
      v38 = *a4;
      v39 = v24;
      HIDWORD(v39.f64[0]) = 1065353216;
      RB::Symbol::Glyph::Layer::draw(a1, v17, 0, &v38, a5, this);
      return RBDrawingStateClipLayer(a2, v17, a3, *(a4 + 20));
    }
  }

  if ((*(a1 + 104) & 0x30000000) != 0x10000000)
  {
    v16 = RBDrawingStateBeginLayer(a2, 0);
    v17 = v16;
    v18 = (*(a1 + 104) >> 28) & 3;
    if (v18 >= 2)
    {
      if (v18 == 3)
      {
        v19 = *(a1 + 64);
        if (v19 == 0.0)
        {
          v20 = *(a1 + 60);
          v21 = vmulq_n_f64(*a5, v20);
          v22 = vmulq_n_f64(a5[1], v20);
          v23 = a5[2];
        }

        else
        {
          v31 = a5[1];
          v23 = vmlaq_f64(vmlaq_n_f64(a5[2], *a5, v19), 0, v31);
          v32 = *(a1 + 60);
          v33 = v32;
          v21 = vmulq_n_f64(*a5, -v32);
          v22 = vmulq_n_f64(v31, v33);
        }

        v38 = v21;
        v39 = v22;
        v40 = v23;
        v34 = RBDrawingStateConcatCTM(v16, &v38);
        RBDrawingStateDrawDisplayList(v17, *a1, v34);
      }

      else
      {
        v25 = *a1;
        v26 = *(a1 + 64);
        if (v26 == 0.0)
        {
          v27 = *(a1 + 60);
          v28 = vmulq_n_f64(*a5, v27);
          v29 = vmulq_n_f64(a5[1], v27);
          v30 = a5[2];
        }

        else
        {
          v35 = a5[1];
          v30 = vmlaq_f64(vmlaq_n_f64(a5[2], *a5, v26), 0, v35);
          v36 = *(a1 + 60);
          v37 = v36;
          v28 = vmulq_n_f64(*a5, -v36);
          v29 = vmulq_n_f64(v35, v37);
        }

        v38 = v28;
        v39 = v29;
        v40 = v30;
        RB::Symbol::Glyph::Sublayers::draw_layers(v25, v17, &v38, this);
      }
    }

    return RBDrawingStateClipLayer(a2, v17, a3, *(a4 + 20));
  }

  v13 = RB::Symbol::Presentation::shape(this);
  RB::Symbol::Glyph::Layer::set_shape(a1, v13, a5, a4);
  v14 = *(a4 + 20);

  return RBDrawingStateClipShape2(a2, v13, a3, v14);
}

uint64_t RB::Symbol::Glyph::Layer::set_shape(uint64_t a1, void *a2, float64x2_t *a3, float32x2_t *a4)
{
  v7 = *a1;
  v8 = vmvn_s8(vceq_f32(*a4, 0x3F80000000000000));
  v9 = vpmax_u32(v8, v8).u32[0];
  v10 = *(a1 + 80);
  if (v10 > 0.0)
  {
    if ((v9 & 0x80000000) == 0)
    {
      if ((v11 = *a3, v12 = a3[1], v13 = a3[1].f64[1], v14 = a3->f64[1], a3->f64[0] == v13) && v14 == 0.0 && v12.f64[0] == 0.0 || v13 == 0.0 && (v11.f64[0] == 0.0 ? (v15 = v14 == v12.f64[0]) : (v15 = 0), v15))
      {
        v16 = fabs(v11.f64[0]);
        v17 = fabs(v14);
        v18 = v14 == 0.0 ? v16 : v17;
        v19 = v18;
        if (v19 == 1.0)
        {
          v20 = *(v7 + 16);
          v21 = *(v7 + 24);
          v22 = *(a1 + 64);
          if (v22 == 0.0)
          {
            v23 = vdupq_lane_s64(COERCE__INT64(*(a1 + 60)), 0);
            v24 = a3[2];
            v25 = v23;
          }

          else
          {
            v24 = vmlaq_n_f64(vmlaq_f64(a3[2], 0, v12), v11, v22);
            v47 = *(a1 + 60);
            *&v48 = v47;
            v23 = vdupq_lane_s64(COERCE__INT64(-v47), 0);
            v25 = vdupq_lane_s64(v48, 0);
          }

          v51 = vmulq_f64(v23, v11);
          v52 = vmulq_f64(v25, v12);
          v53 = v24;
          return [a2 setStrokedRBPath:v20 transform:v21 lineWidth:&v51 lineCap:((*(a1 + 104) << 6) >> 28) lineJoin:((16 * *(a1 + 104)) >> 30) miterLimit:0 dashPhase:v10 dashPattern:10.0 dashCount:{0.0, 0}];
        }
      }
    }

LABEL_25:
    RB::Symbol::Glyph::Layer::copy_path(a1, a4, 0, &v49);
    v34 = v49;
    v33 = v50;
    v35 = *(a1 + 64);
    if (v35 == 0.0)
    {
      v36 = *(a1 + 60);
      v37 = vmulq_n_f64(*a3, v36);
      v38 = vmulq_n_f64(a3[1], v36);
      v39 = a3[2];
    }

    else
    {
      v40 = a3[1];
      v39 = vmlaq_f64(vmlaq_n_f64(a3[2], *a3, v35), 0, v40);
      v41 = *(a1 + 60);
      v42 = v41;
      v37 = vmulq_n_f64(*a3, -v41);
      v38 = vmulq_n_f64(v40, v42);
    }

    v51 = v37;
    v52 = v38;
    v53 = v39;
    [a2 setRBPath:v49 transform:{v50, &v51}];
    return RBPathRelease(v34, v33);
  }

  if ((v9 & 0x80000000) != 0 && *(v7 + 56) || *(v7 + 72) && (*&a4[1] || a4[2].f32[0] != 1.0))
  {
    goto LABEL_25;
  }

  v26 = *(v7 + 16);
  v27 = *(v7 + 24);
  v28 = *(a1 + 64);
  if (v28 == 0.0)
  {
    v29 = *(a1 + 60);
    v30 = vmulq_n_f64(*a3, v29);
    v31 = vmulq_n_f64(a3[1], v29);
    v32 = a3[2];
  }

  else
  {
    v44 = a3[1];
    v32 = vmlaq_f64(vmlaq_n_f64(a3[2], *a3, v28), 0, v44);
    v45 = *(a1 + 60);
    v46 = v45;
    v30 = vmulq_n_f64(*a3, -v45);
    v31 = vmulq_n_f64(v44, v46);
  }

  v51 = v30;
  v52 = v31;
  v53 = v32;
  return [a2 setRBPath:v26 transform:{v27, &v51}];
}

uint64_t RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Path>,RB::Heap&,RB::Coverage::Path const&,float const&,RB::ClipMode const&,RB::AffineTransform const* const&>(size_t *a1, size_t *a2, uint64_t a3, int *a4, int *a5, uint64_t *a6)
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

uint64_t RB::DisplayList::ClipFactory::operator()<RB::Coverage::Path>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    v5[0] = &unk_1F0A3D570;
    v5[1] = a1;
    RB::Coverage::Path::simplify(a2, v5);
  }

  result = *(a1 + 32);
  if (!result)
  {
    result = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Path>,RB::Heap&,RB::Coverage::Path const&,float const&,RB::ClipMode const&,RB::AffineTransform const* const&>(*a1, *a1, a2, (a1 + 8), (a1 + 12), (a1 + 16));
    *(a1 + 32) = result;
  }

  if (*(a1 + 24) == 1)
  {
    *(result + 45) |= 4u;
  }

  return result;
}

void RB::DisplayList::GenericClip<RB::Coverage::Path>::update_bounds(uint64_t a1)
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

    if (*(a1 + 88) == 0.0)
    {
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      return;
    }

    v4.var1 = *(a1 + 48);
    v4.var0 = (a1 + 56);
    v2 = RB::Coverage::Path::bounds(v4);
  }

  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
}

RB::XML::Document *RB::Symbol::Glyph::Layer::draw(uint64_t a1, State *a2, unsigned int a3, float32x2_t *a4, float64x2_t *a5, RB::Symbol::Presentation *a6, uint64_t a7)
{
  if (a4[3].f32[0] != 0.0)
  {
    v14 = vmvn_s8(vceq_f32(*a4, 0x3F80000000000000));
    if ((vpmax_u32(v14, v14).u32[0] & 0x80000000) != 0)
    {
      v28 = RBDrawingStateInit(a2);
      v29 = RBDrawingStateBeginLayer(v28, 0);
      v30 = RB::Symbol::Presentation::shape(a6);
      [v30 setInfinite];
      v31 = RB::Symbol::Presentation::fill(a6);
      LODWORD(v32) = 1065353216;
      LODWORD(v33) = 1065353216;
      LODWORD(v34) = 1065353216;
      LODWORD(v35) = 1065353216;
      [(RBFill *)v31 setColor:v32, v33, v34, v35];
      RBDrawingStateDrawShape(v29, v30, v31, 0, a4[3].f32[0]);
      *(v56.f64 + 4) = 1065353216;
      v55 = *a4->f32;
      LODWORD(v56.f64[0]) = a4[2].i32[0];
      RB::Symbol::Glyph::Layer::draw(a1, v29, 0, &v55, a5, a6);
      RBDrawingStateClipLayer(v28, v29, 0, 1.0);
      v58[0] = 0x3F80000000000000;
      v58[1] = 0;
      v59 = 1065353216;
      v60 = a4[2].i32[1];
      v61 = 0;
      RB::Symbol::Glyph::Layer::draw(a1, v28, 0, v58, a5, a6, a7);
      v38 = v28;
      return RBDrawingStateDestroy(v38, v36, v37);
    }
  }

  v15 = *(a1 + 104);
  if ((v15 & 0x30000000) == 0x10000000)
  {
    v16 = RB::Symbol::Presentation::shape(a6);
    RB::Symbol::Glyph::Layer::set_shape(a1, v16, a5, a4);
    v17 = RB::Symbol::Presentation::fill(a6);
    (*(a7 + 16))(a7, v17);
    v18 = a4[2].f32[1];

    return RBDrawingStateDrawShape(a2, v16, v17, a3, v18);
  }

  if ((v15 & 0x3C0000) != 0x280000)
  {
    v39 = RBDrawingStateInit(a2);
    *(v56.f64 + 4) = 1065353216;
    v55 = *a4->f32;
    LODWORD(v56.f64[0]) = a4[2].i32[0];
    RB::Symbol::Glyph::Layer::clip(a1, v39, 0, &v55, a5, a6);
    v40 = RB::Symbol::Presentation::shape(a6);
    [v40 setInfinite];
    v41 = RB::Symbol::Presentation::fill(a6);
    (*(a7 + 16))(a7, v41);
    RBDrawingStateDrawShape(v39, v40, v41, a3, a4[2].f32[1]);
    v38 = v39;
    return RBDrawingStateDestroy(v38, v36, v37);
  }

  v20 = RBDrawingStateBeginLayer(a2, 0);
  v21 = v20;
  v22 = (*(a1 + 104) >> 28) & 3;
  if (v22 >= 2)
  {
    if (v22 == 3)
    {
      v23 = *(a1 + 64);
      if (v23 == 0.0)
      {
        v24 = *(a1 + 60);
        v25 = vmulq_n_f64(*a5, v24);
        v26 = vmulq_n_f64(a5[1], v24);
        v27 = a5[2];
      }

      else
      {
        v48 = a5[1];
        v27 = vmlaq_f64(vmlaq_n_f64(a5[2], *a5, v23), 0, v48);
        v49 = *(a1 + 60);
        v50 = v49;
        v25 = vmulq_n_f64(*a5, -v49);
        v26 = vmulq_n_f64(v48, v50);
      }

      v55 = v25;
      v56 = v26;
      v57 = v27;
      v51 = RBDrawingStateConcatCTM(v20, &v55);
      RBDrawingStateDrawDisplayList(v21, *a1, v51);
    }

    else
    {
      v42 = *a1;
      v43 = *(a1 + 64);
      if (v43 == 0.0)
      {
        v44 = *(a1 + 60);
        v45 = vmulq_n_f64(*a5, v44);
        v46 = vmulq_n_f64(a5[1], v44);
        v47 = a5[2];
      }

      else
      {
        v52 = a5[1];
        v47 = vmlaq_f64(vmlaq_n_f64(a5[2], *a5, v43), 0, v52);
        v53 = *(a1 + 60);
        v54 = v53;
        v45 = vmulq_n_f64(*a5, -v53);
        v46 = vmulq_n_f64(v52, v54);
      }

      v55 = v45;
      v56 = v46;
      v57 = v47;
      RB::Symbol::Glyph::Sublayers::draw_layers(v42, v21, &v55, a6);
    }
  }

  return RBDrawingStateDrawLayer(a2, v21, a3, a4[2].f32[1]);
}

uint64_t ___ZNK2RB6Symbol12Presentation4drawEP15_RBDrawingStatefU13block_pointerF7RBColor13RBSymbolStyleP8NSStringEU13block_pointerFbP6RBFill6CGRectS5_S7_E_block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v9 = *(a1 + 56);
  v8 = *(a1 + 64);
  if ((*(*v8 + 104) & 0x3C0000) == 0x300000)
  {
    v10 = *(*v8 + 16);
    if (v10)
    {
      v11 = RB::Symbol::Presentation::Layer::fill_rect(v8, *(a1 + 72));
      v13 = *&v12;
      v14 = v11.f32[1];
      *&v55 = *&v12;
      *(&v55 + 1) = 0;
      *v56 = 0;
      v15 = vcvtq_f64_f32(vext_s8(*&v12, v11, 4uLL));
      *&v56[8] = v15;
      *&v56[24] = v14;
      LODWORD(v15.f64[0]) = 1065353216;
      LODWORD(v12) = 1065353216;
      LODWORD(v13) = 1065353216;
      LODWORD(v14) = 1065353216;
      [a2 setImage:v10 transform:&v55 interpolation:10 tintColor:0 flags:{v15.f64[0], v12, v13, v14}];
      goto LABEL_36;
    }
  }

  v16 = *(v8 + 1);
  if (v16)
  {
    v17 = RB::Symbol::Presentation::Layer::fill_rect(v8, *(a1 + 72));
    (*(v16 + 16))(v16, a2, v17.f32[0], v17.f32[1], v18, v19);
    goto LABEL_36;
  }

  v20 = *(a1 + 32);
  if (v20 && v8[7] == -32768.0)
  {
    v21 = RB::Symbol::Presentation::Layer::fill_rect(v8, *(a1 + 72));
    if ((*(v20 + 16))(v20, a2, (*(**(a1 + 64) + 104) >> 18) & 0xF, *(**(a1 + 64) + 8), v21.f32[0], v21.f32[1], v22, v23))
    {
      goto LABEL_36;
    }

    v8 = *(a1 + 64);
  }

  v24 = v8[4];
  v25 = *(v8 + 5);
  v26 = v8[6];
  v27 = v8[7];
  if (v27 == -32768.0)
  {
    v28 = *v8;
    v29 = (*(*v8 + 104) >> 18) & 0xF;
    v30 = *(*(a1 + 48) + 8);
    if (v29 == *(v30 + 48))
    {
      if (v29 != 9)
      {
LABEL_16:
        v24 = *(v30 + 72);
        v25 = *(v30 + 76);
        v26 = *(v30 + 80);
        v27 = *(v30 + 84);
        goto LABEL_35;
      }

      if (*(v28 + 16) == *(v30 + 64))
      {
        if ([*(v30 + 56) isEqualToString:*(v28 + 8)])
        {
          v30 = *(*(a1 + 48) + 8);
          goto LABEL_16;
        }

        v8 = *(a1 + 64);
      }
    }

    v31 = *(a1 + 40);
    if (v31)
    {
      v24 = (*(v31 + 16))(*(a1 + 40), (*(*v8 + 104) >> 18) & 0xF, *(*v8 + 8));
      v25 = LODWORD(a4);
      v26 = *&a5;
      v27 = *&a6;
      v8 = *(a1 + 64);
    }

    if (v27 == -32768.0)
    {
      v25 = 0;
      v24 = 1.0;
      if ((*(*v8 + 104) & 0x3C0000) == 0x240000)
      {
        v26 = 1.0;
        v27 = 1.0;
        if (*(*v8 + 16))
        {
          a3 = RBColorFromCGColor(*(*v8 + 16), 0);
          v24 = *&a3;
          v25 = LODWORD(a4);
          v26 = *&a5;
          v27 = *&a6;
          v8 = *(a1 + 64);
        }
      }

      else
      {
        v26 = 1.0;
        v27 = 1.0;
      }
    }

    v32 = *v8;
    *(*(*(a1 + 48) + 8) + 48) = (*(*v8 + 104) >> 18) & 0xF;
    v33 = *(*(a1 + 48) + 8);
    v34 = *(v32 + 8);
    v35 = *(v33 + 56);
    if (v35 != v34)
    {

      *(v33 + 56) = v34;
      v32 = **(a1 + 64);
      v33 = *(*(a1 + 48) + 8);
    }

    v36 = *(v32 + 16);
    v37 = *(v33 + 64);
    if (v37 != v36)
    {
      if (v37)
      {
        CFRelease(v37);
      }

      if (v36)
      {
        v38 = CFRetain(v36);
      }

      else
      {
        v38 = 0;
      }

      *(v33 + 64) = v38;
      v33 = *(*(a1 + 48) + 8);
    }

    *(v33 + 72) = v24;
    *(v33 + 76) = v25;
    *(v33 + 80) = v26;
    *(v33 + 84) = v27;
  }

LABEL_35:
  *&a3 = v24;
  LODWORD(a4) = v25;
  *&a5 = v26;
  *&a6 = v27;
  [a2 setColor:1 colorSpace:{a3, a4, a5, a6}];
LABEL_36:
  v39 = (*(**(a1 + 72) + 104) >> 8) & 0xF;
  if (v39 == 2)
  {
    goto LABEL_42;
  }

  if (v39 == 1)
  {
    v40 = **(a1 + 64);
    v41 = *(v40 + 26);
  }

  else
  {
    v40 = **(a1 + 64);
    v41 = *(v40 + 26);
    if ((v41 & 0x40000000) == 0)
    {
      goto LABEL_42;
    }
  }

  if ((v41 & 0x80000000) == 0)
  {
    v42.f64[0] = RB::Symbol::Glyph::Layer::gradient_axis(v40);
    v53 = v42;
    v54 = v43;
    v44 = vcvtq_f64_f32(RB::Symbol::Presentation::Layer::fill_rect(*(a1 + 64), *(a1 + 72)));
    v46 = vcvtq_f64_f32(v45);
    v47 = vmlaq_f64(v44, v46, v53);
    v48 = vmlaq_f64(v44, v46, v54);
    [(RBFill *)a2 setAxialGradientStyle:v47.f64[0] startPoint:v47.f64[1] endPoint:v48.f64[0], v48.f64[1]];
  }

LABEL_42:
  result = [(RBFill *)a2 hasGeometry];
  if (result)
  {
    *&v50 = RB::Symbol::Presentation::Layer::transform(*(a1 + 64), v9, 1);
    v55 = v50;
    *v56 = v51;
    *&v56[16] = v52;
    return [a2 concat:&v55];
  }

  return result;
}

void RB::Symbol::Presentation::draw(uint64_t a1, RB::DisplayList::State *a2, uint64_t a3, uint64_t a4, float a5)
{
  v77 = *MEMORY[0x1E69E9840];
  v8 = [RBDrawingStateGetDisplayList(a2) profile];
  v9 = rb_profile_supports_porter_duff_blending(v8);
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x5812000000;
  v69[3] = __Block_byref_object_copy__0;
  v69[4] = __Block_byref_object_dispose__0;
  v69[5] = " 0";
  v70 = 10;
  v71 = 0u;
  v72 = 0u;
  v12 = *(a1 + 1008);
  if (v12)
  {
    v13 = v9;
    do
    {
      v14 = v12 - 1;
      v15 = *(a1 + 1000);
      if (!v15)
      {
        v15 = a1 + 8;
      }

      v16 = v15 + 496 * v14;
      v74 = 0;
      v75 = 0;
      v76 = 8;
      v57 = v14;
      if (v13)
      {
        v17 = RBDrawingStateBeginLayer(a2, 0);
      }

      else
      {
        v18 = *(v16 + 448);
        v17 = a2;
        if (v18)
        {
          v10 = 0;
          v19 = 144 * v18 - 72;
          do
          {
            if (*(v16 + 440))
            {
              v20 = *(v16 + 440);
            }

            else
            {
              v20 = v16 + 8;
            }

            v21 = (v20 + v19 - 72);
            if (*(*v21 + 104))
            {
              v22 = v20 + v19;
              v23 = *(*v21 + 76) <= 0.0 ? *(v22 - 32) * *(v22 - 36) : *(v22 - 32);
              if (v23 > 0.0)
              {
                v24 = a2;
                if (v10)
                {
                  v25 = v74;
                  if (!v74)
                  {
                    v25 = __dst;
                  }

                  v24 = *&v25[8 * v10 - 8];
                }

                v26 = RBDrawingStateInit(v24);
                LODWORD(v61.f64[0]) = *(*v21 + 72);
                HIDWORD(v61.f64[0]) = *(RB::Symbol::Model::glyph_info(*v16) + 472);
                RB::DisplayList::State::set_animation_layer(v26, &v61);
                v27 = *(v16 + 456);
                v28 = *(v20 + v19 - 16);
                v64 = *(v20 + v19);
                v65 = v27;
                v66 = v28;
                v67 = v23;
                v68 = *(v20 + v19 - 28);
                v29 = *v21;
                v30.f64[0] = RB::Symbol::Presentation::Layer::transform(v21, a1, 0);
                v61 = v30;
                v62 = v31;
                v63 = v32;
                RB::Symbol::Glyph::Layer::clip(v29, v26, 1, &v64, &v61, a1);
                v33 = v75;
                v10 = v75 + 1;
                if (v76 < v75 + 1)
                {
                  RB::vector<RBDevice *,8ul,unsigned long>::reserve_slow(__dst, v10);
                  v33 = v75;
                  v10 = v75 + 1;
                }

                v34 = v74;
                if (!v74)
                {
                  v34 = __dst;
                }

                *&v34[8 * v33] = v26;
                v75 = v10;
              }
            }

            v19 -= 144;
          }

          while (v19 != -72);
          v17 = a2;
        }
      }

      if (*(v16 + 440))
      {
        v35 = *(v16 + 440);
      }

      else
      {
        v35 = (v16 + 8);
      }

      v36 = *(v16 + 448);
      if (v36)
      {
        v37 = 144 * v36;
        do
        {
          v38 = *v35;
          if (*(*v35 + 104))
          {
            v39 = *(*&v38 + 76) <= 0.0 ? v35[5].f32[0] * v35[4].f32[1] : v35[5].f32[0];
            if (v39 > 0.0)
            {
              if (v13)
              {
                LODWORD(v61.f64[0]) = *(*&v38 + 72);
                HIDWORD(v61.f64[0]) = *(RB::Symbol::Model::glyph_info(*v16) + 472);
                RB::DisplayList::State::set_animation_layer(v17, &v61);
                v40 = *(v16 + 456);
                v41 = v35[7].i32[0];
                v64 = v35[9];
                v65 = v40;
                v66 = v41;
                v67 = v39;
                v68 = v35[5].i32[1];
                v42 = *v35;
                v43.f64[0] = RB::Symbol::Presentation::Layer::transform(v35, a1, 0);
                v61 = v43;
                v62 = v44;
                v63 = v45;
                RB::Symbol::Glyph::Layer::draw(v42, v17, 0x17u, &v64, &v61, a1, 1.0, 1.0, 1.0, 1.0);
              }

              else
              {
                v46 = v74;
                if (!v74)
                {
                  v46 = __dst;
                }

                RBDrawingStateDestroy(*&v46[8 * v75-- - 8], v10, v11);
              }
            }
          }

          v47 = v35[5].f32[0];
          if (v13)
          {
            v48 = (v35[4].f32[0] * v47) * *(*v35 + 76);
          }

          else
          {
            v48 = ((v35[4].f32[0] * v47) * *(*v35 + 76)) * a5;
          }

          if (v48 > 0.0)
          {
            v60[0] = MEMORY[0x1E69E9820];
            v60[1] = 3221225472;
            v60[2] = ___ZNK2RB6Symbol12Presentation4drawEP15_RBDrawingStatefU13block_pointerF7RBColor13RBSymbolStyleP8NSStringEU13block_pointerFbP6RBFill6CGRectS5_S7_E_block_invoke;
            v60[3] = &unk_1E744C7A8;
            v60[8] = v35;
            v60[9] = v16;
            v60[6] = v69;
            v60[7] = a1;
            v60[4] = a4;
            v60[5] = a3;
            v49 = v17;
            if (v75)
            {
              v50 = v74;
              if (!v74)
              {
                v50 = __dst;
              }

              v49 = *&v50[8 * v75 - 8];
            }

            LODWORD(v61.f64[0]) = *(*v35 + 72);
            HIDWORD(v61.f64[0]) = *(RB::Symbol::Model::glyph_info(*v16) + 472);
            RB::DisplayList::State::set_animation_layer(v49, &v61);
            v51 = *(v16 + 456);
            v52 = v35[7].i32[0];
            v64 = v35[9];
            v65 = v51;
            v66 = v52;
            v67 = v48;
            v68 = v35[5].i32[1];
            v53 = *v35;
            v54.f64[0] = RB::Symbol::Presentation::Layer::transform(v35, a1, 0);
            v61 = v54;
            v62 = v55;
            v63 = v56;
            RB::Symbol::Glyph::Layer::draw(v53, v49, 0, &v64, &v61, a1, v60);
          }

          v35 += 18;
          v37 -= 144;
        }

        while (v37);
      }

      if (v13)
      {
        RBDrawingStateDrawLayer(a2, v17, 0, a5);
      }

      v12 = v57;
      if (v74)
      {
        free(v74);
      }
    }

    while (v57);
  }

  _Block_object_dispose(v69, 8);
  if (*(&v71 + 1))
  {
    CFRelease(*(&v71 + 1));
  }
}

void sub_195D2828C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v42 = *(v40 - 176);
  if (v42)
  {
    free(v42);
  }

  _Block_object_dispose(&a34, 8);
  RB::Symbol::Glyph::make_legacy_layers(float)::Info::~Info(&a40);
  _Unwind_Resume(a1);
}

void *RB::details::realloc_vector<unsigned int,144ul>(void *__src, void *__dst, unsigned int a3, _DWORD *a4, unsigned int a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      LODWORD(v9) = a3;
      memcpy(__dst, __src, 144 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(144 * a5);
    v9 = v8 / 0x90;
    if (*a4 != (v8 / 0x90))
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 144 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

void *RB::vector<RB::Symbol::Presentation::Layer,3ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 111) + (*(__dst + 111) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 111) + (*(__dst + 111) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,144ul>(*(__dst + 54), __dst, 3u, __dst + 111, v3);
  *(__dst + 54) = result;
  return result;
}

uint64_t RB::Symbol::Presentation::Layer::set_animation_layer(RB::Symbol::Presentation::Layer *this, _RBDrawingState *a2, RB::Symbol::Model **a3)
{
  v5[0] = *(*this + 72);
  v5[1] = *(RB::Symbol::Model::glyph_info(*a3) + 472);
  return RB::DisplayList::State::set_animation_layer(a2, v5);
}

RB::XML::Document *RB::Symbol::Glyph::Layer::draw(uint64_t a1, __n128 *a2, unsigned int a3, float32x2_t *a4, float64x2_t *a5, RB::Symbol::Presentation *this, float a7, float a8, float a9, float a10)
{
  if ((*(a1 + 104) & 0x30000000) == 0x10000000 && (a4[3].f32[0] == 0.0 || (v20 = vmvn_s8(vceq_f32(*a4, 0x3F80000000000000)), (vpmax_u32(v20, v20).u32[0] & 0x80000000) == 0)))
  {
    v21 = RB::Symbol::Presentation::shape(this);
    v22 = RB::Symbol::Presentation::fill(this);
    RB::Symbol::Glyph::Layer::set_shape(a1, v21, a5, a4);
    *&v23 = a7;
    *&v24 = a8;
    *&v25 = a9;
    *&v26 = a10;
    [(RBFill *)v22 setColor:1 colorSpace:v23, v24, v25, v26];
    v27 = a4[2].f32[1];

    return RBDrawingStateDrawShape(a2, v21, v22, a3, v27);
  }

  else
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = ___ZNK2RB6Symbol5Glyph5Layer4drawEP15_RBDrawingState7RBColor11RBBlendModeRKNS2_10DrawParamsERKNS_15AffineTransformERKNS0_12PresentationE_block_invoke;
    v29[3] = &__block_descriptor_48_e16_v16__0__RBFill_8l;
    v30 = a7;
    v31 = a8;
    v32 = a9;
    v33 = a10;
    return RB::Symbol::Glyph::Layer::draw(a1, a2, a3, a4, a5, this, v29);
  }
}

uint64_t _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage9PrimitiveENS_4Fill5ImageINS_12ImageTextureEEEEEJRS0_RKS5_RKS9_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(size_t *a1, RB::Heap *a2, __int128 *a3, RB::ImageTexture *a4, uint64_t *a5, __int16 *a6, int *a7)
{
  v13 = (a1[2] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v13 + 224 > a1[3])
  {
    v13 = RB::Heap::alloc_slow(a1, 0xE0uLL, 15);
  }

  else
  {
    a1[2] = v13 + 224;
  }

  v14 = *a5;
  _H0 = *a6;
  __asm { FCVT            S0, H0 }

  v21 = *a7;

  return RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Image<RB::ImageTexture>>::GenericItem(v13, a2, a3, a4, v14, v21, 0, _S0);
}

__n128 RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Image<RB::ImageTexture>>::copy(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v6 = *(a1 + 46) & 0x3F;
  v4 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage9PrimitiveENS_4Fill5ImageINS_12ImageTextureEEEEEJRS0_RKS5_RKS9_RKPKNS_15AffineTransformERKDF16_RKNS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_((v3 + 16), (v3 + 16), (a1 + 64), (a1 + 112), (a1 + 48), (a1 + 44), &v6);
  result = *(a1 + 16);
  v4[1] = result;
  v4[2].n128_u64[0] = *(a1 + 32);
  v4[2].n128_u32[2] = *(a1 + 40);
  v4[2].n128_u16[7] |= *(a1 + 46) & 0x7000;
  return result;
}

float64x2_t *RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Image<RB::ImageTexture>>::apply_transform(float64x2_t **a1, const RB::DisplayList::CachedTransform *a2, uint64_t a3)
{
  RB::DisplayList::Item::apply_transform(a1, a2, a3);
  result = RB::DisplayList::CachedTransform::transform_ctm(a2, a1[6]);
  a1[6] = result;
  return result;
}

void RB::DisplayList::Builder::draw(uint64_t this, const RB::DisplayList::Contents *a2, RB::DisplayList::State *a3, float a4, const InvertiblePredicate *a5, RB::DisplayList::Item *a6)
{
  v11 = this;
  v43 = *MEMORY[0x1E69E9840];
  {
    if (this)
    {
      v29 = RB::debug_int("RB_PRINT_TREE", a2);
      v30 = (v29 >> 1) & 1;
      if ((v29 & 0x100000000) == 0)
      {
        LOBYTE(v30) = 0;
      }

      RB::DisplayList::Builder::draw(RB::DisplayList::Contents const&,RB::DisplayList::State &,float,RB::DisplayList::InvertiblePredicate const*,void *)::print_tree = v30;
    }
  }

  if (RB::DisplayList::Builder::draw(RB::DisplayList::Contents const&,RB::DisplayList::State &,float,RB::DisplayList::InvertiblePredicate const*,void *)::print_tree == 1)
  {
    memset(__p, 0, 41);
    RB::SexpString::push(__p, "draw");
    if (a5)
    {
      RB::SexpString::push(__p, "predicate");
      RB::XML::Document::Document(v32);
      RB::DisplayList::Predicate::xml_elements(a5, v32);
      RB::XML::Document::print_children(v32, __p, 0);
      RB::SexpString::pop(__p);
      if (v36)
      {
        free(v36);
      }

      RB::UntypedTable::~UntypedTable(&v35);
      if (v34)
      {
        free(v34);
      }

      v12 = v33;
      if (v33)
      {
        v13 = *(v33 + 8) - 1;
        *(v33 + 8) = v13;
        if (!v13)
        {
          (*(*v12 + 8))(v12);
        }
      }
    }

    RB::DisplayList::Contents::print(a2, __p);
    RB::SexpString::pop(__p);
    RB::SexpString::newline(__p);
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0].__r_.__value_.__r.__words[0];
    }

    this = fputs(v14, *MEMORY[0x1E69E9848]);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }

  if (!*(v11 + 1))
  {
    RB::DisplayList::Builder::reset_contents(v11);
  }

  v15 = *(v11 + 4);
  if (!v15 || *(*v15 + 72) != *(a3 + 36))
  {
    RB::DisplayList::Builder::begin_layer(this, a2);
  }

  RB::DisplayList::CachedTransform::CachedTransform(v32, v11, a3 + 1, *(a3 + 12), *(a3 + 13));
  if (*(v11 + 288))
  {
    v41 = a5;
  }

  else
  {
    v16 = RB::DisplayList::State::copy_metadata(a3, *(v11 + 1));
    v17 = *(a3 + 16);
    v37 = v16;
    v38 = v17;
    LOBYTE(v17) = *(v11 + 288);
    v41 = a5;
    if ((v17 & 1) == 0)
    {
      v21 = 0;
      v20 = 0;
      goto LABEL_27;
    }
  }

  v18 = RB::DisplayList::Builder::crop_bounds(v11, a3);
  v19 = vcge_f32(vabs_f32(v18[1]), vneg_f32(0x80000000800000));
  if (vpmax_u32(v19, v19).i32[0] >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v11 + 288);
LABEL_27:
  v22 = *(a2 + 42);
  if (v22 && v22 != a6)
  {
    v23 = v21 & *(a2 + 424);
    do
    {
      if ((v23 & 1) == 0 || ((*(*v22 + 152))(v22) & 1) == 0)
      {
        if (!v20 || (v24 = RB::DisplayList::Item::styled_bounds(v22, 0), RB::Rect::intersects(v20, *&v24, v25)))
        {
          v42 = 0;
          if (!a5 || (*(*v22 + 184))(v22, a5) != a5->inverts_result)
          {
            goto LABEL_44;
          }

          v26 = *(v22 + 2);
          if (v26)
          {
            while (1)
            {
              v27 = (*(*v26 + 64))(v26, a5);
              if ((v27 & 0x100) != 0 && (v27 & 1) != a5->inverts_result)
              {
                break;
              }

              v26 = v26[4];
              if (!v26)
              {
                goto LABEL_43;
              }
            }

            v42 = 1;
          }

LABEL_43:
          if (v42 == 1)
          {
LABEL_44:
            v28 = (*(*v22 + 24))(v22, v11, 0);
            RB::DisplayList::Item::apply_alpha(v28, a4);
            (*(*v28 + 32))(v28, v32, 1);
            RB::DisplayList::Builder::draw(v11, v28, **(v11 + 4), 0);
          }
        }
      }

      v22 = *(v22 + 1);
    }

    while (v22 && v22 != a6);
  }

  RB::UntypedTable::~UntypedTable(&v40);
  RB::UntypedTable::~UntypedTable(&v39);
  RB::Heap::~Heap(&v33);
}

uint64_t RB::DisplayList::LayerItem::copy(RB::DisplayList::LayerItem *this, RB::DisplayList::Builder *a2, int a3)
{
  if ((a3 & 4) != 0 && (*(this + 23) & 0x3F) != 0x18)
  {
    a3 &= ~4u;
  }

  v9 = RB::DisplayList::Layer::copy(*(this + 6), a2, a3);
  if (!v9)
  {
    return 0;
  }

  v5 = *(a2 + 1);
  v8 = *(this + 23) & 0x3F;
  v6 = _ZN2RB4Heap7emplaceINS_11DisplayList9LayerItemEJRKDF16_RKNS_9BlendModeERPNS2_5LayerEEEEPT_DpOT0_((v5 + 16), this + 22, &v8, &v9);
  *(v6 + 56) = RB::DisplayList::Layer::Effect::copy((this + 56), a2);
  *(v6 + 16) = *(this + 1);
  *(v6 + 32) = *(this + 4);
  *(v6 + 40) = *(this + 10);
  return v6;
}

uint64_t _ZN2RB4Heap7emplaceINS_11DisplayList9LayerItemEJRKDF16_RKNS_9BlendModeERPNS2_5LayerEEEEPT_DpOT0_(RB::Heap *this, __int16 *a2, int *a3, uint64_t *a4)
{
  v8 = *(this + 3);
  result = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (result + 64 > v8)
  {
    result = RB::Heap::alloc_slow(this, 0x40uLL, 7);
  }

  else
  {
    *(this + 2) = result + 64;
  }

  v10 = *a2;
  v11 = *a3;
  v12 = 64;
  v13 = *a4;
  if (*a4)
  {
    if ((*(v13 + 76) & 0x1001) != 0)
    {
      v12 = 2112;
    }

    else
    {
      v12 = 64;
    }
  }

  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 32) = 0;
  *(result + 44) = v10;
  *(result + 46) = v12 | v11 & 0x3F;
  *result = &unk_1F0A390E0;
  *(result + 48) = v13;
  *(result + 56) = 0;
  return result;
}

unint64_t RB::DisplayList::Layer::Effect::copy(RB::DisplayList::Layer::Effect *this, RB::DisplayList::Builder *a2)
{
  v2 = *this;
  v3 = *this & 3;
  if (v3 == 2)
  {
    return (*(*(v2 & 0xFFFFFFFFFFFFFFFCLL) + 16))(v2 & 0xFFFFFFFFFFFFFFFCLL, a2) | 2;
  }

  if (v3 != 1)
  {
    return 0;
  }

  v4 = *(a2 + 1);
  v5 = v2 & 0xFFFFFFFFFFFFFFFCLL;
  v6 = (v4[4] + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v6 + 36 > v4[5])
  {
    v6 = RB::Heap::alloc_slow(v4 + 2, 0x24uLL, 3);
  }

  else
  {
    v4[4] = v6 + 36;
  }

  v7 = *v5;
  v8 = *(v5 + 16);
  *(v6 + 32) = *(v5 + 32);
  *v6 = v7;
  *(v6 + 16) = v8;
  return v6 | 1;
}

const RB::DisplayList::ClipNode *RB::DisplayList::CachedTransform::transform_clip(void *a1, unint64_t a2, unsigned int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3 | a2;
  if (a1[157] == v4)
  {
    return a1[158];
  }

  v7 = a2;
  v22 = 0;
  v23 = 0;
  v24 = 16;
  if (a2)
  {
    v8 = 0;
    do
    {
      v9 = v8 + 1;
      if (v24 < v8 + 1)
      {
        _ZN2RB6vectorIDv4_DF16_Lm16EmE12reserve_slowEm(__dst, v8 + 1);
        v8 = v23;
        v9 = v23 + 1;
      }

      v10 = v22;
      if (!v22)
      {
        v10 = __dst;
      }

      *&v10[8 * v8] = v7;
      v23 = v9;
      v7 = *v7;
      v8 = v9;
    }

    while (v7);
  }

  else
  {
    v9 = 0;
  }

  if (a3)
  {
    v5 = a1[134];
  }

  else
  {
    v5 = 0;
  }

  v20 = v5;
  if (v9)
  {
    do
    {
      --v9;
      v11 = v22;
      if (!v22)
      {
        v11 = __dst;
      }

      v12 = *&v11[8 * v9];
      if (*(*a1 + 288) != 1 || (RB::DisplayList::ClipNode::elide_append(&v20, (*(v12 + 8) & 0xFFFFFFFFFFFFFFFELL)) & 1) == 0)
      {
        v13 = RB::UntypedTable::lookup((a1 + 159), (*(v12 + 8) & 0xFFFFFFFFFFFFFFFELL), 0);
        if (v13)
        {
          goto LABEL_34;
        }

        v14 = (*(*(*(v12 + 8) & 0xFFFFFFFFFFFFFFFELL) + 24))(*(v12 + 8) & 0xFFFFFFFFFFFFFFFELL, a1, 0, 0);
        v13 = v14;
        if (v14)
        {
          v15 = *(*a1 + 8);
          v16 = *(v15 + 312);
          v17 = v14;
          do
          {
            v18 = v16;
            v16 = v17[1];
            *(v16 + 8) = v18;
            v17 = *v17;
          }

          while (v17);
          *(v15 + 312) = v16;
        }

        RB::UntypedTable::insert((a1 + 159), (*(v12 + 8) & 0xFFFFFFFFFFFFFFFELL), v14);
        if (v13)
        {
LABEL_34:
          do
          {
            v20 = RB::Heap::emplace<RB::DisplayList::ClipNode,RB::DisplayList::Clip const*&,RB::DisplayList::ClipNode*&>((*(*a1 + 8) + 16), (v13 + 8), &v20);
            v13 = *v13;
          }

          while (v13);
        }
      }
    }

    while (v9);
    v5 = v20;
  }

  a1[157] = v4;
  a1[158] = v5;
  if (v22)
  {
    free(v22);
  }

  return v5;
}

void sub_195D29180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (a27)
  {
    free(a27);
  }

  _Unwind_Resume(exception_object);
}

void *RB::DisplayList::CachedTransform::transform_style(RB::DisplayList::CachedTransform *this, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v27 = *MEMORY[0x1E69E9840];
  if (!a2 && (!a3 || !*(this + 135)))
  {
    return 0;
  }

  v6 = (a3 | a2 | *(this + 1408));
  v23[0] = 0;
  v7 = RB::UntypedTable::lookup((this + 1336), v6, v23);
  if (v6 != v23[0])
  {
    v24 = 0;
    v25 = 0;
    for (i = 8; v4; v4 = *(v4 + 4))
    {
      v8 = *(this + 175);
      if (v8)
      {
        v9 = (*(*v4 + 64))(v4, *(this + 175));
        if ((v9 & 0x100) != 0 && (v9 & 1) == *(v8 + 40))
        {
          continue;
        }
      }

      v10 = v25;
      v11 = v25 + 1;
      if (i < v25 + 1)
      {
        RB::vector<RBDevice *,8ul,unsigned long>::reserve_slow(v23, v11);
        v10 = v25;
        v11 = v25 + 1;
      }

      v12 = v24;
      if (!v24)
      {
        v12 = v23;
      }

      v12[v10] = v4;
      v25 = v11;
    }

    if (a3)
    {
      v13 = *(this + 135);
    }

    else
    {
      v13 = 0;
    }

    if (v25)
    {
      v14 = v25 - 1;
      v15 = a3;
      do
      {
        v16 = v24;
        if (!v24)
        {
          v16 = v23;
        }

        v17 = v16[v14];
        v18 = (*&(*v17)[1].f64[1])(v17, *this);
        v7 = v18;
        if (v18)
        {
          v19 = *(this + 175);
          if (v19)
          {
            (*(*v18 + 72))(v18, v19, *(this + 1408));
          }

          v7[2] = RB::DisplayList::CachedTransform::transform_ctm(this, v17[2]);
          v7[3] = RB::DisplayList::CachedTransform::transform_clip(this, v17[3], v15 & 1);
          v7[5] = RB::DisplayList::CachedTransform::transform_metadata(this, v17[5], *(v17 + 12));
          *(v7 + 12) = v20;
          *(v7 + 13) = *(v17 + 13) & 1;
          (*(*v7 + 32))(v7, this, a3);
          v15 = 0;
          v7[4] = v13;
          v21 = *(*this + 8);
          v7[1] = *(v21 + 312);
          *(v21 + 312) = v7;
          v13 = v7;
        }

        else
        {
          v7 = v13;
        }

        --v14;
      }

      while (v14 != -1);
    }

    else
    {
      v7 = v13;
    }

    RB::UntypedTable::insert((this + 1336), v6, v7);
    if (v24)
    {
      free(v24);
    }
  }

  return v7;
}

void sub_195D2947C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (a17)
  {
    free(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::DisplayList::ItemFactory::Inner<RB::Coverage::Primitive>::operator()<RB::Fill::Color>(__int128 **a1, uint64_t a2)
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

  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Color>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::Color const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v3, *v3, a1[1], a2, v3 + 1, v3 + 4, v3 + 10, v3 + 12);
  v5 = *a1;
  _S0 = *(*a1 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 122) = _H0;
  }

  *(v5 + 7) = result;
  if (v5[3])
  {
LABEL_3:
    *(result + 46) |= 0x2000u;
  }

  return result;
}

uint64_t RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Primitive,RB::Fill::Color>,RB::Heap&,RB::Coverage::Primitive const&,RB::Fill::Color const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t *a5, int *a6, _WORD *a7, __int16 *a8)
{
  v15 = *(this + 3);
  result = (*(this + 2) + 15) & 0xFFFFFFFFFFFFFFF0;
  if (result + 128 > v15)
  {
    result = RB::Heap::alloc_slow(this, 0x80uLL, 15);
  }

  else
  {
    *(this + 2) = result + 128;
  }

  v17 = *a5;
  _S0 = *a6;
  v19 = *a7;
  v20 = *a8;
  __asm { FCVT            H0, S0 }

  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 32) = 0;
  *(result + 44) = _S0;
  *(result + 46) = v19 & 0x3F;
  *result = &unk_1F0A3A760;
  *(result + 48) = v17;
  v25 = *a3;
  v26 = a3[1];
  *(result + 95) = *(a3 + 31);
  *(result + 64) = v25;
  *(result + 80) = v26;
  *(result + 112) = *a4;
  *(result + 120) = *(a4 + 8);
  if (*(a4 + 13))
  {
    v27 = *(a4 + 12);
  }

  else
  {
    v27 = v20;
  }

  *(result + 124) = v27;
  *result = &unk_1F0A3BE28;
  return result;
}

unint64_t RB::pixel_format_from_four_cc(int a1, MTLPixelFormat a2, _BYTE *a3, _BYTE *a4, char *a5)
{
  v6 = 0;
  v7 = 0;
  *a3 = 1;
  *a4 = 17;
  *a5 = 0;
  if (a1 > 1278555444)
  {
    if (a1 <= 1886680623)
    {
      if (a1 <= 1534359091)
      {
        if (a1 <= 1530422833)
        {
          if (a1 <= 1378955370)
          {
            if (a1 > 1279340599)
            {
              if (a1 != 1279340600)
              {
                LOBYTE(v12) = 0;
                if (a1 != 1279342648)
                {
                  goto LABEL_291;
                }
              }

              goto LABEL_212;
            }

            if (a1 == 1278555445)
            {
              v7 = 0;
              LOBYTE(v12) = 0;
              *a3 = 0;
              v6 = 43;
            }

            else
            {
              LOBYTE(v12) = 0;
              if (a1 == 1278555701)
              {
                v7 = 0;
                LOBYTE(v12) = 0;
                v6 = 40;
              }
            }

            goto LABEL_291;
          }

          if (a1 <= 1380410944)
          {
            if (a1 == 1378955371)
            {
              v7 = 0;
              LOBYTE(v12) = 0;
              *a3 = 0;
              v6 = 90;
            }

            else
            {
              LOBYTE(v12) = 0;
              if (a1 == 1380401729)
              {
                v7 = 0;
                *a3 = 0;
                LOBYTE(v12) = 1;
                v6 = 70;
              }
            }

            goto LABEL_291;
          }

          if (a1 == 1380410945)
          {
            v7 = 0;
            LOBYTE(v12) = 0;
            *a3 = 0;
            v6 = 125;
            goto LABEL_291;
          }

          if (a1 == 1380411457)
          {
            goto LABEL_315;
          }

          v8 = 1530422832;
          goto LABEL_234;
        }

        if (a1 <= 1534354991)
        {
          if (a1 <= 1530426927)
          {
            if (a1 == 1530422834)
            {
              goto LABEL_187;
            }

            v15 = 26164;
          }

          else
          {
            if (a1 == 1530426928)
            {
              goto LABEL_235;
            }

            if (a1 == 1530426930)
            {
              goto LABEL_187;
            }

            v15 = 30260;
          }

          v33 = v15 | 0x5B380000;
          goto LABEL_262;
        }

        if (a1 <= 1534354995)
        {
          if (a1 == 1534354992)
          {
            goto LABEL_255;
          }

          v21 = 26162;
        }

        else
        {
          if (a1 == 1534354996)
          {
            goto LABEL_256;
          }

          if (a1 == 1534359088)
          {
            goto LABEL_255;
          }

          v21 = 30258;
        }

        v9 = v21 | 0x5B740000;
LABEL_206:
        LOBYTE(v12) = 0;
        if (a1 != v9)
        {
          goto LABEL_291;
        }

        goto LABEL_207;
      }

      if (a1 > 1815491697)
      {
        if (a1 <= 1885745713)
        {
          if (a1 <= 1882468913)
          {
            if (a1 == 1815491698)
            {
              v7 = 0;
              LOBYTE(v12) = 0;
              *a3 = 0;
              v6 = 110;
              goto LABEL_291;
            }

            v17 = 1882468912;
          }

          else
          {
            if (a1 == 1882468914)
            {
              goto LABEL_286;
            }

            if (a1 == 1882469428)
            {
              goto LABEL_285;
            }

            v17 = 1885745712;
          }

          goto LABEL_221;
        }

        if (a1 <= 1886676527)
        {
          if (a1 == 1885745714)
          {
            goto LABEL_286;
          }

          v27 = 1885746228;
          goto LABEL_284;
        }

        if (a1 == 1886676528)
        {
          goto LABEL_249;
        }

        if (a1 == 1886676530)
        {
          goto LABEL_268;
        }

        v16 = 1886676532;
        goto LABEL_266;
      }

      if (a1 > 1534621233)
      {
        if (a1 > 1599226419)
        {
          if (a1 == 1599226420)
          {
            v7 = 0;
            LOBYTE(v12) = 0;
            v36 = (a2 & 2) == 0;
            v37 = 542;
            goto LABEL_319;
          }

          if (a1 != 1647534392)
          {
            LOBYTE(v12) = 0;
            if (a1 != 1815162994)
            {
              goto LABEL_291;
            }

            goto LABEL_308;
          }

          goto LABEL_309;
        }

        if (a1 != 1534621234)
        {
          LOBYTE(v12) = 0;
          if (a1 != 1534621236)
          {
            goto LABEL_291;
          }

          goto LABEL_190;
        }

        goto LABEL_274;
      }

      if (a1 <= 1534617137)
      {
        if (a1 == 1534359092)
        {
          goto LABEL_256;
        }

        v11 = 26160;
      }

      else
      {
        if (a1 == 1534617138)
        {
          goto LABEL_274;
        }

        if (a1 == 1534617140)
        {
          goto LABEL_190;
        }

        v11 = 30256;
      }

      v29 = v11 | 0x5B780000;
      goto LABEL_241;
    }

    if (a1 <= 2037741170)
    {
      if (a1 <= 1999908960)
      {
        if (a1 <= 1952855091)
        {
          if (a1 <= 1886680627)
          {
            if (a1 == 1886680624)
            {
              goto LABEL_249;
            }

            v26 = 1886680626;
            goto LABEL_225;
          }

          if (a1 == 1886680628)
          {
            goto LABEL_267;
          }

          if (a1 != 1952854576)
          {
            v9 = 1952854578;
            goto LABEL_206;
          }

LABEL_255:
          v7 = 0;
          LOBYTE(v12) = 0;
          v34 = (a2 & 0x80) == 0;
          v35 = 570;
          goto LABEL_269;
        }

        if (a1 <= 1953903153)
        {
          if (a1 != 1952855092)
          {
            LOBYTE(v12) = 0;
            if (a1 != 1953903152)
            {
              goto LABEL_291;
            }

            goto LABEL_255;
          }
        }

        else
        {
          if (a1 == 1953903154)
          {
LABEL_207:
            v7 = 0;
            LOBYTE(v12) = 0;
            v34 = (a2 & 0x80) == 0;
            v35 = 571;
            goto LABEL_269;
          }

          if (a1 != 1953903668)
          {
            LOBYTE(v12) = 0;
            if (a1 != 1999843442)
            {
              goto LABEL_291;
            }

LABEL_134:
            v7 = 0;
            v23 = (a2 & 4) == 0;
            v24 = 554;
LABEL_311:
            if (v23)
            {
              v6 = 0;
            }

            else
            {
              v6 = v24;
            }

            v12 = (a2 >> 2) & 1;
            goto LABEL_291;
          }
        }

LABEL_256:
        v7 = 0;
        LOBYTE(v12) = 0;
        v34 = (a2 & 0x80) == 0;
        v35 = 572;
        goto LABEL_269;
      }

      if (a1 <= 2019963439)
      {
        if (a1 > 2016686641)
        {
          if (a1 != 2016686642)
          {
            if (a1 != 2016687156)
            {
              LOBYTE(v12) = 0;
              if (a1 != 2016687216)
              {
                goto LABEL_291;
              }

              goto LABEL_317;
            }

LABEL_190:
            v7 = 0;
            v30 = (a2 & 2) == 0;
            v31 = 507;
            goto LABEL_287;
          }

LABEL_274:
          v7 = 0;
          v30 = (a2 & 2) == 0;
          v31 = 506;
          goto LABEL_287;
        }

        if (a1 == 1999908961)
        {
LABEL_310:
          v7 = 0;
          *a3 = 0;
          v23 = (a2 & 4) == 0;
          v24 = 552;
          goto LABEL_311;
        }

        v29 = 2016686640;
LABEL_241:
        LOBYTE(v12) = 0;
        if (a1 != v29)
        {
          goto LABEL_291;
        }

        goto LABEL_275;
      }

      if (a1 <= 2019963955)
      {
        if (a1 != 2019963440)
        {
          LOBYTE(v12) = 0;
          if (a1 != 2019963442)
          {
            goto LABEL_291;
          }

          goto LABEL_274;
        }

LABEL_275:
        v7 = 0;
        v30 = (a2 & 2) == 0;
        v31 = 505;
        goto LABEL_287;
      }

      if (a1 == 2019963956)
      {
        goto LABEL_190;
      }

      if (a1 == 2019964016)
      {
LABEL_317:
        v7 = 0;
        v30 = (a2 & 2) == 0;
        v31 = 504;
        goto LABEL_287;
      }

      LOBYTE(v12) = 0;
      if (a1 != 2037741158)
      {
        goto LABEL_291;
      }

LABEL_316:
      v7 = 0;
      v30 = (a2 & 2) == 0;
      v31 = 501;
      goto LABEL_287;
    }

    if (a1 > 2088003123)
    {
      if (a1 > 2088265265)
      {
        if (a1 <= 2088269359)
        {
          if (a1 == 2088265266)
          {
            goto LABEL_286;
          }

          v28 = 26164;
        }

        else
        {
          if (a1 == 2088269360)
          {
            goto LABEL_222;
          }

          if (a1 == 2088269362)
          {
            goto LABEL_286;
          }

          v28 = 30260;
        }

        v27 = v28 | 0x7C780000;
        goto LABEL_284;
      }

      if (a1 <= 2088007217)
      {
        if (a1 != 2088003124)
        {
          v32 = 2088007216;
LABEL_248:
          LOBYTE(v12) = 0;
          if (a1 != v32)
          {
            goto LABEL_291;
          }

          goto LABEL_249;
        }

        goto LABEL_267;
      }

      if (a1 == 2088007218)
      {
        goto LABEL_268;
      }

      if (a1 == 2088007220)
      {
        goto LABEL_267;
      }

      v17 = 2088265264;
LABEL_221:
      LOBYTE(v12) = 0;
      if (a1 != v17)
      {
        goto LABEL_291;
      }

      goto LABEL_222;
    }

    if (a1 > 2084075057)
    {
      if (a1 <= 2084718400)
      {
        if (a1 != 2084075058)
        {
          v33 = 2084075060;
LABEL_262:
          LOBYTE(v12) = 0;
          if (a1 != v33)
          {
            goto LABEL_291;
          }

          goto LABEL_263;
        }

        goto LABEL_187;
      }

      if (a1 == 2084718401)
      {
        goto LABEL_280;
      }

      if (a1 == 2088003120)
      {
        goto LABEL_249;
      }

      v26 = 2088003122;
      goto LABEL_225;
    }

    if (a1 <= 2084070961)
    {
      if (a1 == 2037741171)
      {
        goto LABEL_316;
      }

      v13 = 26160;
    }

    else
    {
      if (a1 == 2084070962)
      {
        goto LABEL_187;
      }

      if (a1 == 2084070964)
      {
        goto LABEL_263;
      }

      v13 = 30256;
    }

    v8 = v13 | 0x7C380000;
    goto LABEL_234;
  }

  if (a1 <= 762865203)
  {
    if (a1 > 645424689)
    {
      if (a1 <= 758674995)
      {
        if (a1 <= 758670895)
        {
          if (a1 <= 645428783)
          {
            if (a1 == 645424690)
            {
              goto LABEL_286;
            }

            v10 = 26164;
          }

          else
          {
            if (a1 == 645428784)
            {
              goto LABEL_222;
            }

            if (a1 == 645428786)
            {
              goto LABEL_286;
            }

            v10 = 30260;
          }

          v27 = v10 | 0x26780000;
          goto LABEL_284;
        }

        if (a1 <= 758670899)
        {
          if (a1 == 758670896)
          {
            goto LABEL_235;
          }

          v19 = 26162;
        }

        else
        {
          if (a1 == 758670900)
          {
            goto LABEL_263;
          }

          if (a1 == 758674992)
          {
            goto LABEL_235;
          }

          v19 = 30258;
        }

        v25 = v19 | 0x2D380000;
LABEL_186:
        LOBYTE(v12) = 0;
        if (a1 != v25)
        {
          goto LABEL_291;
        }

        goto LABEL_187;
      }

      if (a1 <= 762607151)
      {
        if (a1 <= 762603055)
        {
          if (a1 != 758674996)
          {
            LOBYTE(v12) = 0;
            if (a1 != 759318337)
            {
              goto LABEL_291;
            }

            goto LABEL_280;
          }

          goto LABEL_263;
        }

        if (a1 != 762603056)
        {
          if (a1 == 762603058)
          {
            goto LABEL_268;
          }

          v16 = 762603060;
          goto LABEL_266;
        }

LABEL_249:
        v7 = 0;
        LOBYTE(v12) = 0;
        v34 = (a2 & 0x100) == 0;
        v35 = 580;
        goto LABEL_269;
      }

      if (a1 > 762607155)
      {
        if (a1 != 762607156)
        {
          if (a1 == 762865200)
          {
            goto LABEL_222;
          }

          v20 = 762865202;
          goto LABEL_229;
        }

LABEL_267:
        v7 = 0;
        LOBYTE(v12) = 0;
        v34 = (a2 & 0x100) == 0;
        v35 = 582;
        goto LABEL_269;
      }

      if (a1 == 762607152)
      {
        goto LABEL_249;
      }

      v26 = 762607154;
LABEL_225:
      LOBYTE(v12) = 0;
      if (a1 != v26)
      {
        goto LABEL_291;
      }

      goto LABEL_268;
    }

    if (a1 > 644624753)
    {
      if (a1 <= 645166641)
      {
        if (a1 > 645162545)
        {
          if (a1 == 645162546)
          {
            goto LABEL_268;
          }

          if (a1 == 645162548)
          {
            goto LABEL_267;
          }

          v14 = 30256;
LABEL_197:
          v32 = v14 | 0x26740000;
          goto LABEL_248;
        }

        if (a1 != 644624754)
        {
          v14 = 26160;
          goto LABEL_197;
        }

LABEL_308:
        v7 = 0;
        LOBYTE(v12) = 0;
        *a3 = 0;
        v6 = 94;
        goto LABEL_291;
      }

      if (a1 > 645346161)
      {
        if (a1 != 645346162)
        {
          if (a1 != 645346401)
          {
            v17 = 645424688;
            goto LABEL_221;
          }

          goto LABEL_310;
        }

        goto LABEL_134;
      }

      if (a1 == 645166642)
      {
        goto LABEL_268;
      }

      v16 = 645166644;
LABEL_266:
      LOBYTE(v12) = 0;
      if (a1 != v16)
      {
        goto LABEL_291;
      }

      goto LABEL_267;
    }

    if (a1 > 641234481)
    {
      if (a1 <= 641877824)
      {
        if (a1 != 641234482)
        {
          v33 = 641234484;
          goto LABEL_262;
        }

        goto LABEL_187;
      }

      if (a1 == 641877825)
      {
        goto LABEL_280;
      }

      if (a1 != 642934849)
      {
        LOBYTE(v12) = 0;
        if (a1 != 643969848)
        {
          goto LABEL_291;
        }

LABEL_309:
        v7 = 0;
        *a3 = 0;
        v23 = (a2 & 4) == 0;
        v24 = 550;
        goto LABEL_311;
      }

LABEL_315:
      v7 = 0;
      LOBYTE(v12) = 0;
      *a3 = 0;
      v6 = 115;
      goto LABEL_291;
    }

    if (a1 <= 641230387)
    {
      if (a1 == 641230384)
      {
        goto LABEL_235;
      }

      v25 = 641230386;
      goto LABEL_186;
    }

    if (a1 == 641230388)
    {
      goto LABEL_263;
    }

    v8 = 641234480;
LABEL_234:
    LOBYTE(v12) = 0;
    if (a1 != v8)
    {
      goto LABEL_291;
    }

    goto LABEL_235;
  }

  if (a1 <= 796423727)
  {
    if (a1 <= 792872768)
    {
      if (a1 <= 792225329)
      {
        if (a1 > 762869297)
        {
          if (a1 != 762869298)
          {
            if (a1 != 762869300)
            {
              v8 = 792225328;
              goto LABEL_234;
            }

LABEL_285:
            v7 = 0;
            v30 = (a2 & 2) == 0;
            v31 = 510;
            goto LABEL_287;
          }

LABEL_286:
          v7 = 0;
          v30 = (a2 & 2) == 0;
          v31 = 509;
          goto LABEL_287;
        }

        if (a1 == 762865204)
        {
          goto LABEL_285;
        }

        v17 = 762869296;
        goto LABEL_221;
      }

      if (a1 <= 792229423)
      {
        if (a1 != 792225330)
        {
          v22 = 26164;
          goto LABEL_252;
        }

        goto LABEL_187;
      }

      if (a1 != 792229424)
      {
        if (a1 != 792229426)
        {
          v22 = 30260;
LABEL_252:
          v33 = v22 | 0x2F380000;
          goto LABEL_262;
        }

        goto LABEL_187;
      }

LABEL_235:
      v7 = 0;
      v30 = (a2 & 2) == 0;
      v31 = 500;
      goto LABEL_287;
    }

    if (a1 <= 796161585)
    {
      if (a1 > 796157489)
      {
        if (a1 != 796157490)
        {
          if (a1 != 796157492)
          {
            v18 = 30256;
LABEL_238:
            v32 = v18 | 0x2F740000;
            goto LABEL_248;
          }

          goto LABEL_267;
        }

LABEL_268:
        v7 = 0;
        LOBYTE(v12) = 0;
        v34 = (a2 & 0x100) == 0;
        v35 = 581;
LABEL_269:
        if (v34)
        {
          v6 = 0;
        }

        else
        {
          v6 = v35;
        }

        goto LABEL_291;
      }

      if (a1 != 792872769)
      {
        v18 = 26160;
        goto LABEL_238;
      }

LABEL_280:
      v7 = 0;
      *a3 = 0;
      LOBYTE(v12) = 1;
      v6 = 80;
      goto LABEL_291;
    }

    if (a1 > 796419631)
    {
      if (a1 != 796419632)
      {
        if (a1 == 796419634)
        {
          goto LABEL_286;
        }

        v27 = 796419636;
LABEL_284:
        LOBYTE(v12) = 0;
        if (a1 != v27)
        {
          goto LABEL_291;
        }

        goto LABEL_285;
      }

LABEL_222:
      v7 = 0;
      v30 = (a2 & 2) == 0;
      v31 = 508;
      goto LABEL_287;
    }

    if (a1 == 796161586)
    {
      goto LABEL_268;
    }

    v16 = 796161588;
    goto LABEL_266;
  }

  if (a1 <= 875704949)
  {
    if (a1 <= 843264309)
    {
      if (a1 > 796423731)
      {
        if (a1 == 796423732)
        {
          goto LABEL_285;
        }

        if (a1 != 843264056)
        {
          LOBYTE(v12) = 0;
          if (a1 != 843264104)
          {
            goto LABEL_291;
          }

          *a3 = 0;
          if ((a2 & 8) != 0)
          {
            LOBYTE(v12) = 0;
            v7 = 4;
            *a5 = 4;
            v6 = 65;
            goto LABEL_291;
          }

LABEL_334:
          v7 = 0;
          LOBYTE(v12) = 0;
          v6 = 0;
          goto LABEL_291;
        }

LABEL_212:
        *a3 = 0;
        if ((a2 & 8) != 0)
        {
          LOBYTE(v12) = 0;
          v7 = 4;
          *a5 = 4;
          v6 = 30;
          goto LABEL_291;
        }

        goto LABEL_334;
      }

      if (a1 == 796423728)
      {
        goto LABEL_222;
      }

      v20 = 796423730;
LABEL_229:
      LOBYTE(v12) = 0;
      if (a1 != v20)
      {
        goto LABEL_291;
      }

      goto LABEL_286;
    }

    if (a1 > 875704421)
    {
      if (a1 == 875704422 || a1 == 875704438)
      {
        goto LABEL_235;
      }

      v25 = 875704934;
      goto LABEL_186;
    }

    if (a1 == 843264310)
    {
      *a3 = 0;
      if ((a2 & 8) != 0)
      {
        LOBYTE(v12) = 0;
        v7 = 4;
        *a5 = 4;
        v6 = 60;
        goto LABEL_291;
      }

      goto LABEL_334;
    }

    LOBYTE(v12) = 0;
    if (a1 != 846624121)
    {
      goto LABEL_291;
    }

    v7 = 0;
    LOBYTE(v12) = 0;
    v36 = (a2 & 2) == 0;
    v37 = 562;
LABEL_319:
    if (v36)
    {
      v6 = 0;
    }

    else
    {
      v6 = v37;
    }

    goto LABEL_291;
  }

  if (a1 <= 1111970368)
  {
    if (a1 > 875836517)
    {
      if (a1 != 875836518 && a1 != 875836534)
      {
        LOBYTE(v12) = 0;
        if (a1 == 1093677112)
        {
          v7 = 0;
          LOBYTE(v12) = 0;
          *a3 = 0;
          v6 = 1;
        }

        goto LABEL_291;
      }

LABEL_263:
      v7 = 0;
      v30 = (a2 & 2) == 0;
      v31 = 503;
      goto LABEL_287;
    }

    if (a1 != 875704950)
    {
      LOBYTE(v12) = 0;
      if (a1 == 875836468)
      {
        v7 = 0;
        LOBYTE(v12) = 0;
        *a3 = 0;
        v6 = 42;
      }

      goto LABEL_291;
    }

LABEL_187:
    v7 = 0;
    v30 = (a2 & 2) == 0;
    v31 = 502;
LABEL_287:
    if (v30)
    {
      v6 = 0;
    }

    else
    {
      v6 = v31;
    }

    v12 = (a2 >> 1) & 1;
    goto LABEL_291;
  }

  if (a1 <= 1278226533)
  {
    if (a1 == 1111970369)
    {
      goto LABEL_280;
    }

    LOBYTE(v12) = 0;
    if (a1 == 1278226488)
    {
      if ((a2 & 0x18) == 8)
      {
        v7 = 3;
        *a5 = 3;
        v12 = (a2 >> 6) & 1;
        v6 = 10;
      }

      else
      {
        v7 = 0;
        LOBYTE(v12) = 0;
        v6 = (a2 & 0x10) >> 4;
      }
    }
  }

  else if (a1 == 1278226534)
  {
    if ((a2 & 8) == 0)
    {
      goto LABEL_334;
    }

    LOBYTE(v12) = 0;
    if ((a2 & 0x10) != 0)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    *a5 = v7;
    v6 = 55;
  }

  else if (a1 == 1278226536)
  {
    if ((a2 & 8) == 0)
    {
      goto LABEL_334;
    }

    LOBYTE(v12) = 0;
    if ((a2 & 0x10) != 0)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    *a5 = v7;
    v6 = 25;
  }

  else
  {
    LOBYTE(v12) = 0;
    if (a1 != 1278226742)
    {
      goto LABEL_291;
    }

    if ((a2 & 8) == 0)
    {
      goto LABEL_334;
    }

    LOBYTE(v12) = 0;
    if ((a2 & 0x10) != 0)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    *a5 = v7;
    v6 = 20;
  }

LABEL_291:
  if (a2 & 0x20) == 0 || (*a3)
  {
    goto LABEL_302;
  }

  if ((a2 & 8) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (v7 != 4 && v7 != 2)
    {
      goto LABEL_301;
    }

    v38 = 3;
  }

  else
  {
    v38 = 1;
  }

  *a5 = v38;
LABEL_301:
  *a3 = 1;
LABEL_302:
  v39 = v12 ^ 1;
  if ((~a2 & 0x21) != 0)
  {
    v39 = 1;
  }

  if ((v39 & 1) == 0)
  {
    v40 = *(RB::pixel_format_traits(v6, a2) + 18);
    if (v40)
    {
      *a4 = 1;
      return v40;
    }
  }

  return v6;
}