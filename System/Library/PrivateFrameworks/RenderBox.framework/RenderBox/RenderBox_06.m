__n128 _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZZN2RB19pixel_format_traitsE14MTLPixelFormatENK3__0clEPvEUlRKT_RKT0_E_PNS2_17PixelFormatTraitsELi0EEEvT1_SG_SG_SG_SG_S9_(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = *a2;
  v7 = *a3;
  if (*a2 >= *a1)
  {
    if (v7 < v6)
    {
      result = *a2;
      v12 = *(a2 + 1);
      v13 = *(a2 + 4);
      v14 = *(a3 + 4);
      v15 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v15;
      *(a2 + 4) = v14;
      *(a3 + 4) = v13;
      *a3 = result;
      *(a3 + 1) = v12;
      if (*a2 < *a1)
      {
        result = *a1;
        v16 = *(a1 + 16);
        v17 = *(a1 + 32);
        v18 = *(a2 + 4);
        v19 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *(a1 + 32) = v18;
        *(a2 + 4) = v17;
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
      v10 = *(a3 + 4);
      v11 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 16) = v11;
      *(a1 + 32) = v10;
LABEL_9:
      *(a3 + 4) = v9;
      *a3 = result;
      *(a3 + 1) = v8;
      goto LABEL_10;
    }

    result = *a1;
    v20 = *(a1 + 16);
    v21 = *(a1 + 32);
    v22 = *(a2 + 4);
    v23 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a1 + 32) = v22;
    *(a2 + 4) = v21;
    *a2 = result;
    *(a2 + 1) = v20;
    if (*a3 < *a2)
    {
      result = *a2;
      v8 = *(a2 + 1);
      v9 = *(a2 + 4);
      v24 = *(a3 + 4);
      v25 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v25;
      *(a2 + 4) = v24;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    v26 = *(a3 + 1);
    v27 = *(a3 + 4);
    v28 = *(a4 + 32);
    v29 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 1) = v29;
    *(a3 + 4) = v28;
    *(a4 + 32) = v27;
    *a4 = result;
    *(a4 + 16) = v26;
    if (*a3 < *a2)
    {
      result = *a2;
      v30 = *(a2 + 1);
      v31 = *(a2 + 4);
      v32 = *(a3 + 4);
      v33 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v33;
      *(a2 + 4) = v32;
      *(a3 + 4) = v31;
      *a3 = result;
      *(a3 + 1) = v30;
      if (*a2 < *a1)
      {
        result = *a1;
        v34 = *(a1 + 16);
        v35 = *(a1 + 32);
        v36 = *(a2 + 4);
        v37 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v37;
        *(a1 + 32) = v36;
        *(a2 + 4) = v35;
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
      v43 = *(a3 + 4);
      v44 = *(a4 + 32);
      v45 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 1) = v45;
      *(a3 + 4) = v44;
      *(a4 + 32) = v43;
      *a4 = result;
      *(a4 + 16) = v42;
      if (*a3 < *a2)
      {
        result = *a2;
        v46 = *(a2 + 1);
        v47 = *(a2 + 4);
        v48 = *(a3 + 4);
        v49 = *(a3 + 1);
        *a2 = *a3;
        *(a2 + 1) = v49;
        *(a2 + 4) = v48;
        *(a3 + 4) = v47;
        *a3 = result;
        *(a3 + 1) = v46;
        if (*a2 < *a1)
        {
          result = *a1;
          v50 = *(a1 + 16);
          v51 = *(a1 + 32);
          v52 = *(a2 + 4);
          v53 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 16) = v53;
          *(a1 + 32) = v52;
          *(a2 + 4) = v51;
          *a2 = result;
          *(a2 + 1) = v50;
        }
      }
    }
  }

  return result;
}

os_log_t RB::anonymous namespace::surface_pool_log(void)::$_0::operator()(uint64_t a1, const char *a2)
{
  v2 = RB::debug_BOOL("RB_LOG_SURFACES", a2);
  if ((v2 & 0x100) == 0 || (v2 & 1) == 0)
  {
    return MEMORY[0x1E69E9C18];
  }

  return os_log_create("com.apple.renderbox", "surface-pool");
}

float RB::time_seconds()
{
  if (__cxa_guard_acquire(&qword_1ED6D5430))
  {
    mach_timebase_info(&info);
    LODWORD(v1) = info.numer;
    LODWORD(v2) = info.denom;
    *&qword_1ED6D5428 = v1 * 0.000000001 / v2;
    __cxa_guard_release(&qword_1ED6D5430);
  }

  return result;
}

void RB::ContextDelegate::end(RB::ContextDelegate *this, const char *a2, _RBDrawingState *a3)
{
  v4 = *(this + 63);
  if (v4)
  {
    RBDrawingStateDestroy(v4, a2, a3);
    *(this + 63) = 0;
  }

  *(this + 62) = 0;
  v5 = *(this + 76);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 76) = 0;
  *(this + 77) = 0;
}

void RB::ContextDelegate::release_context(void *a1)
{
  os_unfair_lock_lock(&RB::ContextDelegate::_contexts_lock);
  v2 = RB::ContextDelegate::_contexts;
  if (!RB::ContextDelegate::_contexts)
  {
    operator new();
  }

  v3 = *(RB::ContextDelegate::_contexts + 136);
  v4 = RB::ContextDelegate::_contexts;
  if (*(RB::ContextDelegate::_contexts + 144) < (v3 + 1))
  {
    RB::vector<std::pair<unsigned long,RB::BinPacker::item *>,8ul,unsigned long>::reserve_slow(RB::ContextDelegate::_contexts, v3 + 1);
    v3 = *(v2 + 136);
    v4 = RB::ContextDelegate::_contexts;
  }

  v5 = *(v2 + 128);
  if (!v5)
  {
    v5 = v2;
  }

  v6 = (v5 + 16 * v3);
  *v6 = 0;
  v6[1] = 0;
  ++*(v2 + 136);
  v7 = *(v4 + 136);
  if (*(v4 + 128))
  {
    v4 = *(v4 + 128);
  }

  v8 = v4 + 16 * v7;
  v9 = *(v8 - 16);
  *(v8 - 16) = *a1;
  *a1 = v9;
  v10 = *(v8 - 8);
  *(v8 - 8) = a1[1];
  a1[1] = v10;

  os_unfair_lock_unlock(&RB::ContextDelegate::_contexts_lock);
}

uint64_t RB::Config::float_value(const __CFString *this, const void *a2)
{
  DoubleValue = 0.0;
  if (!this)
  {
    goto LABEL_8;
  }

  v4 = CFGetTypeID(this);
  if (v4 != CFNumberGetTypeID())
  {
    if (v4 == CFStringGetTypeID())
    {
      DoubleValue = CFStringGetDoubleValue(this);
      goto LABEL_7;
    }

LABEL_8:
    v5 = 0;
    return v5 | LODWORD(DoubleValue);
  }

  valuePtr = 0.0;
  if (!CFNumberGetValue(this, kCFNumberFloatType, &valuePtr))
  {
    goto LABEL_8;
  }

  DoubleValue = valuePtr;
LABEL_7:
  v5 = 0x100000000;
  return v5 | LODWORD(DoubleValue);
}

uint64_t RB::anonymous namespace::load_library_archive(void *a1, void *a2)
{
  v3 = [a1 URLForResource:@"archive" withExtension:@"metallib"];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = objc_opt_new();
  [v5 setUrl:v4];
  [v5 setOptions:{objc_msgSend(v5, "options") | 0x20}];
  v10 = 0;
  v7 = [a2 newBinaryArchiveWithDescriptor:v5 error:&v10];
  if (v10 || !v7)
  {
    if (v10)
    {
      v9 = [objc_msgSend(v10 "localizedDescription")];
    }

    else
    {
      v9 = "unknown error";
    }

    RB::non_fatal_precondition_failure("unable to load binary archive: %s", v6, v9);
  }

  return v7;
}

uint64_t *std::unique_ptr<RB::Device::RenderPipelineEntry::Functions>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (*(v2 + 32))
    {
      v4 = 0;
      v5 = v3 + 1;
      do
      {
        v6 = *v5;
        v5 += 2;

        ++v4;
      }

      while (v4 < *(v2 + 32));
      v3 = *(v2 + 24);
    }

    if (v3)
    {
      free(v3);
    }

    v7 = *(v2 + 8);
    if (*(v2 + 16))
    {
      v8 = 0;
      do
      {
        v9 = *v7;
        v7 += 10;

        ++v8;
      }

      while (v8 < *(v2 + 16));
      v7 = *(v2 + 8);
    }

    if (v7)
    {
      free(v7);
    }

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

void *RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Color>,RB::Heap&,RB::Coverage::Glyphs const&,RB::Fill::Color const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(RB::Heap *this, RB::Heap *a2, RB::Coverage::Glyphs *a3, uint64_t a4, uint64_t *a5, float *a6, _DWORD *a7, __int16 *a8)
{
  v16 = *(this + 3);
  v17 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v17 + 128 > v16)
  {
    v17 = RB::Heap::alloc_slow(this, 0x80uLL, 7);
  }

  else
  {
    *(this + 2) = v17 + 128;
  }

  result = RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Color>::GenericItem1(v17, a2, a3, a4, *a5, *a7, *a8, *a6);
  *result = &unk_1F0A3CAE8;
  return result;
}

void *RB::DisplayList::ItemFactory::Inner<RB::Coverage::Glyphs>::operator()<RB::Fill::Color>(RB::Coverage::Glyphs **a1, uint64_t a2)
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

  result = RB::Heap::emplace<RB::DisplayList::GenericItem<RB::Coverage::Glyphs,RB::Fill::Color>,RB::Heap&,RB::Coverage::Glyphs const&,RB::Fill::Color const&,RB::AffineTransform const* const&,float const&,RB::BlendMode const&,std::optional<RB::ColorSpace> const&>(*v3, *v3, a1[1], a2, v3 + 1, v3 + 4, v3 + 5, v3 + 12);
  v5 = *a1;
  _S0 = *(*a1 + 7);
  if (_S0 != 0.0)
  {
    __asm { FCVT            H0, S0 }

    *(result + 61) = _H0;
  }

  *(v5 + 7) = result;
  if (*(v5 + 48))
  {
LABEL_3:
    *(result + 23) |= 0x2000u;
  }

  return result;
}

void RB::Coverage::anonymous namespace::simplify_shape_callback(void (****a1)(void, float32x2_t *), int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 > 4)
  {
    switch(a2)
    {
      case 5:
        v43 = *(a3 + 32);
        v44 = *(a3 + 48);
        v67 = *(a3 + 16);
        v68 = v43;
        v69 = v44;
        *&v45 = RB::operator*(&v67, a1 + 1);
        *(a1 + 1) = v45;
        *(a1 + 2) = v46;
        *(a1 + 3) = v47;
        return;
      case 6:
        if (*(a1 + 64) <= 1u)
        {
          a1[10] = a3;
          v58 = *(a3 + 16);
          if (v58 <= 0.0)
          {
            v66 = *a1;
            v67 = 0u;
            v68 = 0u;
            LODWORD(v69) = 1065353216;
            *(&v69 + 4) = 0;
            BYTE12(v69) = 0;
            *(&v69 + 13) = 1;
            (**v66)(v66, &v67, a3, a4, a5, a6);
            *(a1 + 104) = 1;
            return;
          }

          if (!*(a3 + 48))
          {
            if ((v59 = *(a1 + 1), v60 = *(a1 + 2), v61 = *(a1 + 5), v62 = *(a1 + 3), *&v59 == v61) && v62 == 0.0 && *&v60 == 0.0 || v61 == 0.0 && *&v59 == 0.0 && v62 == *&v60)
            {
              v63 = fabs(*&v59);
              v64 = fabs(v62);
              if (v62 != 0.0)
              {
                v63 = v64;
              }

              v65 = v63;
              *(a1 + 11) = v58 * v65;
            }
          }

          if ((a1[13] & 1) == 0 && *(a1 + 12) == 0.0)
          {
            goto LABEL_70;
          }
        }

        break;
      case 8:
        if ((v20 = *(a1 + 1), v21 = *(a1 + 2), v22 = *(a1 + 5), v23 = *(a1 + 3), *&v20 == v22) && v23 == 0.0 && *&v21 == 0.0 || v22 == 0.0 && (*&v20 == 0.0 ? (v24 = v23 == *&v21) : (v24 = 0), v24))
        {
          v25 = fabs(*&v20);
          v26 = fabs(v23);
          if (v23 != 0.0)
          {
            v25 = v26;
          }

          v27 = v25;
          *(a1 + 12) = *(a1 + 12) + *(a3 + 16) / fabsf(v27);
          v28 = *a3;
          v29 = *(a3 + 8);
        }

        break;
    }
  }

  else if (a2 < 2)
  {
    v30 = *(a3 + 16);
    v31 = *(a3 + 32);
    v67 = *a3;
    v68 = v30;
    v69 = v31;
    *&v32 = RB::operator*(&v67, a1 + 1);
    *(a1 + 1) = v32;
    *(a1 + 2) = v33;
    *(a1 + 3) = v34;
    DWORD1(v34) = HIDWORD(v32);
    v35 = *&v32 == 0.0;
    if (*(&v33 + 1) != 0.0)
    {
      v35 = 0;
    }

    if (*&v33 == 0.0 && *(&v32 + 1) == 0.0 || v35)
    {
      v38 = *a1;
      v39 = *(a1 + 12);
      v40 = *(a1 + 64);
      *&v34 = *(a1 + 9);
      v41 = (a3 + 48);
      v42 = (a1 + 2);
      if (a2)
      {
      }

      else
      {
      }

      goto LABEL_70;
    }
  }

  else if (a2 == 3)
  {
    v48 = *(a3 + 16);
    v49 = *(a3 + 32);
    v67 = *a3;
    v68 = v48;
    v69 = v49;
    *&v50 = RB::operator*(&v67, a1 + 1);
    *(a1 + 1) = v50;
    *(a1 + 2) = v51;
    *(a1 + 3) = v52;
    v53 = *&v50 == 0.0;
    if (*(&v51 + 1) != 0.0)
    {
      v53 = 0;
    }

    if (*&v51 == 0.0 && *(&v50 + 1) == 0.0 || v53)
    {
      v56 = *(a1 + 12);
      *&v56 = v56;
      v57 = *(a1 + 9);
      goto LABEL_70;
    }
  }

  else if (a2 == 4)
  {
    v9 = *(a3 + 16);
    v10 = *(a3 + 32);
    v67 = *a3;
    v68 = v9;
    v69 = v10;
    *&v11 = RB::operator*(&v67, a1 + 1);
    *(a1 + 1) = v11;
    *(a1 + 2) = v12;
    *(a1 + 3) = v13;
    v14 = *&v11 == 0.0;
    if (*(&v12 + 1) != 0.0)
    {
      v14 = 0;
    }

    v15 = *&v12 == 0.0 && *(&v11 + 1) == 0.0;
    if (v15 || v14)
    {
      v17 = *(a1 + 12);
      v18 = *(a1 + 9);
LABEL_70:
      *(a1 + 104) = v19;
    }
  }
}

uint64_t RBPathApplyShape::$_1::__invoke<void *,RBPathElement,double const*,void const*>(uint64_t a1, int a2, float64x2_t *a3, float64x2_t *a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = *(a1 + 32);
      goto LABEL_6;
    }

    return 0;
  }

  if (*(a1 + 32) > 1uLL)
  {
    return 0;
  }

  v4 = 0;
  *(a1 + 32) = 0;
LABEL_6:
  if (v4 != a2)
  {
    return 0;
  }

  v5 = *a3;
  if (a4)
  {
    v5 = vmlaq_laneq_f64(vmlaq_n_f64(a4[2], *a4, v5.f64[0]), a4[1], v5, 1);
  }

  *(a1 + 32) = v4 + 1;
  *(a1 + 16 * v4) = v5;
  return 1;
}

float64x2_t RB::Coverage::anonymous namespace::simplify_stroked_shape_callback(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 80);
  v55 = *(a1 + 16);
  v56 = *(a1 + 32);
  result = *(a1 + 48);
  v57 = result;
  if (a2 <= 2)
  {
    if (a2 >= 2)
    {
      if (a2 == 2)
      {
        v22 = *(a1 + 64);
        if (v22 > 1 || (v23 = *(v6 + 24), v23 > 2) || (v24 = *(a1 + 96), v25 = *(a1 + 16), v26 = *(a1 + 32), v27 = vaddq_f64(*(a1 + 48), vdupq_lane_s64(COERCE__INT64(v24), 0)), v28 = vmlaq_n_f64(vmlaq_n_f64(v27, v25, *a3), v26, *(a3 + 8)), result = vmlaq_n_f64(vmlaq_n_f64(v27, v25, *(a3 + 16)), v26, *(a3 + 24)), vpmaxq_f64(vmaxnmq_f64(vabsq_f64(v28), vabsq_f64(result))) > 32767.0))
        {
          v34 = 0;
        }

        else
        {
          v29 = *a1;
          *&v30 = *(a1 + 88);
          v31 = vcvt_f32_f64(v28);
          v32 = vcvt_f32_f64(vsubq_f64(result, v28));
          *&v33 = *(a1 + 72);
          *&v58.f64[0] = v31;
          *&v58.f64[1] = v32;
          v59 = 0uLL;
          LODWORD(v60) = 1065353216;
          *(&v60 + 4) = __PAIR64__(v33, v30);
          BYTE12(v60) = v23 + 6;
          *(&v60 + 13) = v22;
          (**v29)();
          v34 = 1;
        }

        *(a1 + 104) = v34;
      }

      goto LABEL_63;
    }

LABEL_18:
    result = *a3;
    v15 = *(a3 + 16);
    v16 = *(a3 + 32);
    v58 = result;
    v59 = v15;
    v60 = v16;
    if (result.f64[0] != *(&v15 + 1) || result.f64[1] != 0.0 || *&v15 != 0.0)
    {
      if (*(&v15 + 1) != 0.0)
      {
        goto LABEL_63;
      }

      if (result.f64[0] != 0.0 || result.f64[1] != *&v15)
      {
        goto LABEL_63;
      }
    }

    result.f64[0] = RB::operator*(&v58, (a1 + 16));
    *(a1 + 16) = result;
    *(a1 + 32) = v19;
    *(a1 + 48) = v20;
    result.f64[0] = *(v6 + 16);
    if (result.f64[0] >= 1.5)
    {
      if (*(v6 + 28))
      {
        v21 = 0;
        goto LABEL_53;
      }

      result.f64[0] = *(v6 + 32);
      v21 = result.f64[0] >= 1.41421354;
      if (a2)
      {
LABEL_53:
        switch(a2)
        {
          case 4:
            if (*(a3 + 112))
            {
              goto LABEL_63;
            }

            result = *(a3 + 80);
            v51 = *(a3 + 96);
            v52 = vmovn_s32(vuzp1q_s32(vceqzq_f64(result), vceqzq_f64(v51)));
            v52.i16[0] = vmaxv_u16(v52);
            if (!v21 & v52.i32[0])
            {
              goto LABEL_63;
            }

            *&v18 = *(a1 + 96);
            v53 = *(a1 + 88);
            v54 = *(a1 + 72);
            break;
          case 3:
            if (*(a3 + 96))
            {
              goto LABEL_63;
            }

            v48 = *(a1 + 96);
            *&v48 = v48;
            v49 = *(a1 + 88);
            v50 = *(a1 + 72);
            break;
          case 1:
            v45 = *(a1 + 96);
            v46 = *(a1 + 88);
            v47 = *(a1 + 72);
            break;
          default:
            goto LABEL_63;
        }

        goto LABEL_62;
      }
    }

    else
    {
      v21 = 1;
      if (a2)
      {
        goto LABEL_53;
      }
    }

    if (v21)
    {
      v41 = *(a1 + 96);
      v42 = *(a1 + 88);
      v43 = *(a1 + 72);
      *&v43 = v43;
LABEL_62:
      *(a1 + 104) = v44;
      goto LABEL_63;
    }

    goto LABEL_53;
  }

  if ((a2 - 3) < 2)
  {
    goto LABEL_18;
  }

  if (a2 != 5)
  {
    if (a2 != 8)
    {
      goto LABEL_63;
    }

    result = *(a1 + 16);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 24);
    if (result.f64[0] != v9 || v10 != 0.0 || *&v8 != 0.0)
    {
      if (v9 != 0.0)
      {
        goto LABEL_63;
      }

      if (result.f64[0] != 0.0 || v10 != *&v8)
      {
        goto LABEL_63;
      }
    }

    v12 = fabs(result.f64[0]);
    v13 = fabs(v10);
    if (v10 != 0.0)
    {
      v12 = v13;
    }

    v14 = v12;
    *(a1 + 96) = *(a1 + 96) + *(a3 + 16) / fabsf(v14);
LABEL_47:
    goto LABEL_63;
  }

  result = *(a3 + 16);
  v35 = *(a3 + 32);
  v36 = *(a3 + 48);
  v58 = result;
  v59 = v35;
  v60 = v36;
  if (result.f64[0] == *(&v35 + 1) && result.f64[1] == 0.0 && *&v35 == 0.0 || *(&v35 + 1) == 0.0 && (result.f64[0] == 0.0 ? (v37 = result.f64[1] == *&v35) : (v37 = 0), v37))
  {
    *&v38 = RB::operator*(&v58, (a1 + 16));
    *(a1 + 16) = v38;
    *(a1 + 32) = v39;
    *(a1 + 48) = v40;
    goto LABEL_47;
  }

LABEL_63:
  if ((*(a1 + 104) & 1) == 0)
  {
    *(a1 + 16) = v55;
    *(a1 + 32) = v56;
    result = v57;
    *(a1 + 48) = v57;
  }

  return result;
}

__n128 RB::DisplayList::GenericItemCopyVisitor<RB::Fill::Color>::visit_<RB::Coverage::Primitive>(void *a1, __int128 *a2)
{
  v3 = a1[3];
  v4 = a1[1];
  v5 = a1[2];
  v9 = *(v5 + 46) & 0x3F;
  v6 = _ZN2RB4Heap7emplaceINS_11DisplayList11GenericItemINS_8Coverage9PrimitiveENS_4Fill5ColorEEEJRS0_RKS5_RKS7_RPKNS_15AffineTransformERKDF16_NS_9BlendModeERKNSt3__19nullopt_tEEEEPT_DpOT0_(v4, v4, a2, v3, a1 + 4, (v5 + 44), &v9);
  a1[5] = v6;
  v7 = a1[2];
  result = v7[1];
  v6[1] = result;
  v6[2].n128_u64[0] = v7[2].n128_u64[0];
  v6[2].n128_u32[2] = v7[2].n128_u32[2];
  v6[2].n128_u16[7] |= v7[2].n128_u16[7] & 0x7000;
  return result;
}

void *ensure_drawable_locked(void *result)
{
  if (!result[8])
  {
    [result maxDrawableCount];
    operator new();
  }

  return result;
}

void RB::Drawable::reset_statistics(os_unfair_lock_s *this, uint64_t a2, double a3)
{
  os_unfair_lock_lock(this + 5);
  if (a2)
  {
    operator new();
  }

  v5 = *&this[10]._os_unfair_lock_opaque;
  *&this[10]._os_unfair_lock_opaque = 0;
  if (v5)
  {
    MEMORY[0x19A8C09E0](v5, 0x1000C40B2834900);
  }

  os_unfair_lock_unlock(this + 5);
}

uint64_t RBColorModeHasExtendedRange(unsigned int a1)
{
  v1 = 0x3804u >> a1;
  if (a1 >= 0xE)
  {
    LOBYTE(v1) = 0;
  }

  if (a1 != 128 || BYTE1(a1) >= 7u)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0x20u >> SBYTE1(a1);
  }

  return v3 & 1;
}

uint64_t RB::SurfacePool::wait_image_queue(os_unfair_lock_s *this, _CAImageQueue *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this);
  RB::SurfacePool::remove_watched_queue_locked(this, a2, 0);
  os_unfair_lock_unlock(this);
  if (CAImageQueueCollect())
  {
    return 1;
  }

  LastUpdateHostTime = CAImageQueueGetLastUpdateHostTime();
  v7 = RB::time_seconds(LastUpdateHostTime);
  v8 = CACurrentMediaTime();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v26 = v8;
    v27 = 2048;
    v28 = a2;
    _os_log_impl(&dword_195CE8000, v10, OS_LOG_TYPE_INFO, "%f: wait_image_queue slow: %p\n", buf, 0x16u);
  }

  if (v8 - v7 <= 0.2)
  {
    v13 = CAImageQueueCollect();
    if (v13)
    {
      return 1;
    }

    v14 = 100;
    while (1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = CACurrentMediaTime();
        *buf = 134218240;
        v26 = v16;
        v27 = 2048;
        v28 = a2;
        _os_log_impl(&dword_195CE8000, v15, OS_LOG_TYPE_INFO, "%f: wait_image_queue: %p, ping\n", buf, 0x16u);
      }

      CAImageQueueSetFlags();
      CAImageQueueSetFlags();
      v18 = CACurrentMediaTime();
      if (v18 - v8 >= 0.1)
      {
        break;
      }

      usleep(v14);
      if (2 * v14 >= 0x7D0)
      {
        v14 = 2000;
      }

      else
      {
        v14 *= 2;
      }

      v13 = CAImageQueueCollect();
      if (v13)
      {
        return 1;
      }
    }

    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    if (v24)
    {
      *buf = 134218240;
      v26 = v18;
      v27 = 2048;
      v28 = a2;
      _os_log_impl(&dword_195CE8000, v23, OS_LOG_TYPE_INFO, "%f: wait_image_queue: %p, timeout\n", buf, 0x16u);
    }

    v21 = RB::error_log(v24);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 134217984;
    v26 = *&a2;
    v22 = "RBLayer: full image queue, %p";
LABEL_29:
    _os_log_impl(&dword_195CE8000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
    return 0;
  }

  v11 = CAImageQueueConsumeUnconsumedInRange();
  if (!v11 || (v11 = CAImageQueueCollect()) == 0)
  {
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v20)
    {
      *buf = 134218240;
      v26 = v8;
      v27 = 2048;
      v28 = a2;
      _os_log_impl(&dword_195CE8000, v19, OS_LOG_TYPE_INFO, "%f: wait_image_queue: %p, stale\n", buf, 0x16u);
    }

    v21 = RB::error_log(v20);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 134217984;
    v26 = *&a2;
    v22 = "RBLayer: stale image queue, %p";
    goto LABEL_29;
  }

  v4 = 1;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v26 = v8;
    v27 = 2048;
    v28 = a2;
    _os_log_impl(&dword_195CE8000, v12, OS_LOG_TYPE_INFO, "%f: wait_image_queue: %p, consumed\n", buf, 0x16u);
  }

  return v4;
}

void RB::anonymous namespace::render_glyphs(_BOOL8 a1, uint64_t a2, float64x2_t *a3, float32x2_t *this, char a5, int a6)
{
  v63 = *MEMORY[0x1E69E9840];
  if (this[2].i32[0])
  {
    v11 = a1;
    if (!a6 || (v12 = RB::Coverage::Glyphs::bounds(this, a3, 0), v16 = RB::Bounds::Bounds(v59, *&v12, v13, v14, v15), a1 = RB::Bounds::intersects(v16, *(a2 + 168), *(a2 + 176))))
    {
      v17 = (this[2].i32[1] & 8) == 0;
      v18 = *a3;
      v55 = a3[1];
      v56 = v18;
      v21 = RB::max_cached_glyph_mask_area(a1);
      *v22.i64 = -*&v56.i64[1];
      v23 = fabs(vaddvq_f64(vmulq_f64(vzip1q_s64(v22, v56), v55)));
      v24 = v23 > v21 || v17;
      if ((v24 & 1) != 0 || this[6].u8[4] >= 2u)
      {
        return;
      }

      v61 = 0;
      v62 = 0;
      v25 = this[2].u32[0];
      if (v25 <= 0x80)
      {
        MEMORY[0x1EEE9AC00](v19, v20);
        v26 = &v55 - ((v27 + 15) & 0x3FFFFFFFF0);
        bzero(v26, v27);
      }

      else
      {
        v26 = malloc_type_malloc(32 * v25, 0x102004059E634C0uLL);
        if (!v26)
        {
LABEL_67:
          free(v26);
          return;
        }
      }

      v59[0] = v26;
      v59[1] = &v60;
      v59[2] = &v61;
      v60 = 0;
      if (v60)
      {
        has_stencil = RB::depth_stencil_format_has_stencil(*(a2 + 186));
        if (a5)
        {
          v31 = 1;
        }

        else
        {
          v31 = (**v11)(v11) ^ 1;
        }

        LODWORD(v55.f64[0]) = has_stencil;
        if ((v31 & has_stencil) == 1 && a6)
        {
          *(a2 + 184) = 1;
          *(a2 + 188) = 1;
        }

        v32 = v60;
        if (v60)
        {
          v33 = 0;
          v56.i64[0] = (v26 + 24);
          while (v32)
          {
            v34 = 0;
            v35 = 0;
            v36 = v26;
            v37 = v32;
            do
            {
              if ((v36[24] & 1) == 0)
              {
                if (v35)
                {
                  v38 = v35;
                }

                else
                {
                  v38 = *v36;
                }

                if (v35)
                {
                  v39 = v34;
                }

                else
                {
                  v39 = 1;
                }

                if (v35)
                {
                  v40 = v34 + 1;
                }

                else
                {
                  v40 = v34;
                }

                if (*v36 == v35)
                {
                  v34 = v40;
                }

                else
                {
                  v35 = v38;
                  v34 = v39;
                }
              }

              v36 += 32;
              --v37;
            }

            while (v37);
            if (!v34)
            {
              goto LABEL_53;
            }

            RB::RenderFrame::alloc_buffer_region(*(*a2 + 16), (16 * v34), 4uLL, 0, v58);
            if (v58[0])
            {
              v43 = v60;
              if (v60)
              {
                v44 = 0;
                v45 = v58[1] + *(v58[0] + 7);
                v46 = v56.i64[0];
                do
                {
                  if ((*v46 & 1) == 0 && *(v46 - 3) == v35)
                  {
                    *&v45[16 * v44++] = *(v46 - 1);
                    *v46 = 1;
                  }

                  v46 += 32;
                  --v43;
                }

                while (v43);
              }

              RB::Bounds::Bounds(v57, v61, v62, v41, v42);
              if (v31)
              {
                RB::render_masks_accumulate(a2, v57, v34, v58, v35);
              }

              else
              {
                (*(*v11 + 8))(v11, a2, v34, v58, v35, *v57, *&v57[1]);
              }

              v33 += v34;
            }

            v32 = v60;
            if (v33 == v60)
            {
              v32 = v33;
              if (!v33)
              {
                break;
              }

LABEL_53:
              v47 = 0;
              v48 = v26;
              do
              {
                v49 = *v48;
                if (*v48)
                {
                  v50 = v49[2] - 1;
                  v49[2] = v50;
                  if (!v50)
                  {
                    (*(*v49 + 8))(v49);
                    v32 = v60;
                  }
                }

                ++v47;
                v48 += 4;
              }

              while (v47 < v32);
              break;
            }
          }
        }

        if (v31)
        {
          v51 = LODWORD(v55.f64[0]) & a6;
          if ((LODWORD(v55.f64[0]) & a6) == 1)
          {
            *(a2 + 184) = 6;
            *(a2 + 188) = 0;
          }

          if (a6)
          {
            v29.n128_u64[0] = v61;
            v30.n128_u64[0] = v62;
          }

          else
          {
            v29.n128_u32[0] = 0;
            v52 = *(a2 + 176);
            v53 = vceq_s32(v52, 0x8000000080000000);
            v54 = vdup_lane_s32(vcgt_s32(v29.n128_u64[0], vpmin_u32(v53, v53)), 0);
            v30.n128_u64[0] = vbsl_s8(v54, vneg_f32(0x80000000800000), vcvt_f32_s32(v52));
            v29.n128_u64[0] = vbsl_s8(v54, 0x100000001000000, vcvt_f32_s32(*(a2 + 168)));
          }

          (*(*v11 + 16))(v11, a2, v29, v30);
          if (v51)
          {
            *(a2 + 184) = 0;
            *(a2 + 188) = 0;
          }
        }
      }

      if (v25 >= 0x81)
      {
        goto LABEL_67;
      }
    }
  }
}

void sub_195D3A16C(_Unwind_Exception *exception_object)
{
  if (v2 >= 0x81)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

double RB::Coverage::Glyphs::bounds(float32x2_t *this, float64x2_t *a2, char a3)
{
  v4 = this[2].i32[0];
  v5 = 0.0;
  if (v4)
  {
    if (*this)
    {
      v8 = RB::Coverage::Glyphs::glyph_bounds(this, 0, v4);
      *v10.i8 = RB::operator*(a2, *&v8, v9);
      v5 = 0.0;
      v12 = v11;
      v13 = vceqz_f32(v11);
      if ((vpmax_u32(v13, v13).u32[0] & 0x80000000) == 0)
      {
        v26 = v10;
        v27 = v12;
        _Q1.i32[0] = RB::AffineTransform::scale(a2);
        if (this[6].u8[4] > 2u)
        {
          v14.i32[0] = this[6].i32[0];
          if (*v14.i32 < 0.0)
          {
            *v14.i32 = 0.0;
          }

          *v14.i32 = *v14.i32 * *_Q1.i32;
          v24 = vdup_lane_s32(v14, 0);
        }

        else
        {
          v17 = this[2].u32[1];
          __asm { FMOV            V1.2S, #1.0 }

          *_Q1.i8 = vadd_f32(v18, *_Q1.i8);
          if ((((a3 & 2) == 0) & ((v17 & 8) >> 3)) != 0)
          {
            v23 = -1;
          }

          else
          {
            v23 = 0;
          }

          v24 = vbsl_s8(vdup_n_s32(v23), *_Q1.i8, v18);
        }

        *_Q1.i8 = vcgt_f32(vneg_f32(0x80000000800000), v27);
        *v16.i8 = vsub_f32(*v26.i8, v24);
        *&v5 = vbslq_s8(vcltzq_s32(_Q1), v16, v26).u64[0];
      }
    }
  }

  return v5;
}

void RB::render_glyphs(uint64_t a1, float64x2_t *a2, float32x2_t *a3, uint64_t a4, char a5, unsigned int a6)
{
  v14[0] = &unk_1F0A37960;
  v14[1] = a4;
  v15 = a5;
  v16 = a6;
  if (a3[2].i32[0] < 2u)
  {
    v12 = 0;
  }

  else
  {
    v10 = a6 != 2 && a6 != 24;
    v12 = *(a4 + 6) != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) || (a3[6].i8[5] & 1) != 0 || v10;
  }

  may_discard_shape = RB::may_discard_shape(a6, a3[6].u8[4]);
}

__int16 RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Color>::render@<H0>(uint64_t a1@<X0>, double a2@<D0>, uint64_t a3@<X1>, uint64_t a4@<X2>, char a5@<W3>, unsigned int a6@<W4>)
{
  v6 = *(a1 + 48);
  v7.i64[0] = SLODWORD(a2);
  v7.i64[1] = SHIDWORD(a2);
  v8 = v6[1];
  v9 = vaddq_f64(v6[2], vcvtq_f64_s64(v7));
  v11[0] = *v6;
  v11[1] = v8;
  v11[2] = v9;
  LOWORD(v9.f64[0]) = *(a1 + 44);
  v12 = *(a1 + 112);
  v13 = *(a1 + 114);
  v14 = *(a1 + 118) * *v9.f64;
  v15 = *(a1 + 120);
  v16 = *(a1 + 124);
  RB::render_glyphs(a4, v11, (a1 + 56), &v12, a5, a6);
  return result;
}

double RB::Coverage::Glyphs::glyph_bounds(float32x2_t *this, unsigned int a2, int a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a3 + a2;
  v4 = this[2].u32[0];
  if (v4 < a3 + a2)
  {
    v3 = this[2].i32[0];
  }

  v5 = 0.0;
  v6 = v4 <= a2 || v3 == a2;
  if (!v6)
  {
    v8 = *this;
    if (v8)
    {
      v10 = v3 - a2;
      if (!a2 && v10 == v4)
      {
        v11 = vcge_f32(vabs_f32(this[5]), vneg_f32(0x80000000800000));
        if ((vpmax_u32(v11, v11).u32[0] & 0x80000000) == 0)
        {
          return *&this[4];
        }
      }

      v12 = (*&this[1] + 8 * a2);
      UnitsPerEm = CGFontGetUnitsPerEm(v8);
      v15 = vrecpe_f32(COERCE_UNSIGNED_INT(UnitsPerEm));
      v16 = vmul_f32(vrecps_f32(COERCE_UNSIGNED_INT(UnitsPerEm), v15), v15);
      *&v17 = vmul_f32(v16, vrecps_f32(COERCE_UNSIGNED_INT(UnitsPerEm), v16));
      v39 = v17;
      if (v10 <= 0x80)
      {
        MEMORY[0x1EEE9AC00](UnitsPerEm, v14);
        v18 = (&v39 - ((v19 + 15) & 0x3FFFFFFFF0));
        bzero(v18, v19);
      }

      else
      {
        v18 = malloc_type_malloc(32 * v10, 0x1000040E0EAB150uLL);
        if (!v18)
        {
          goto LABEL_30;
        }
      }

      if (CGFontGetGlyphBBoxes(*this, (*&this[1] + 8 * this[2].u32[0] + 2 * a2), v10, v18))
      {
        v20 = 0;
        v21 = 0;
        v22 = vdup_lane_s32(*&v39, 0);
        if (v10 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v10;
        }

        v24 = 0x7F0000007FLL;
        v25 = vneg_f32(0x7F0000007FLL);
LABEL_23:
        v26 = (32 * v21) | 0x10;
        do
        {
          v27 = vcvt_f32_f64(*(&v18->origin + v26));
          v28 = vmvn_s8(vceqz_f32(v27));
          if ((vpmin_u32(v28, v28).u32[0] & 0x80000000) != 0)
          {
            v29 = vmla_f32(v12[v21], vcvt_f32_f64(*(v18 + v26 - 16)), v22);
            v25 = vminnm_f32(v25, v29);
            v24 = vmaxnm_f32(v24, vmla_f32(v29, v27, v22));
            v20 = 1;
            v6 = v23 - 1 == v21++;
            if (v6)
            {
              goto LABEL_37;
            }

            goto LABEL_23;
          }

          ++v21;
          v26 += 32;
        }

        while (v23 != v21);
        v5 = 0.0;
        v36 = 0;
        if ((v20 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

LABEL_30:
      if (v10 <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = v10;
      }

      v31 = 0x7F0000007FLL;
      v32 = vneg_f32(0x7F0000007FLL);
      do
      {
        v33 = *v12++;
        v32 = vminnm_f32(v32, v33);
        v31 = vmaxnm_f32(v31, v33);
        --v30;
      }

      while (v30);
      FontBBox = CGFontGetFontBBox(*this);
      y = FontBBox.origin.y;
      height = FontBBox.size.height;
      *&FontBBox.origin.y = vcvt_f32_f64(FontBBox.size);
      *&FontBBox.size.width = vmul_n_f32(vcvt_f32_f64(FontBBox.origin), *&v39);
      v25 = vadd_f32(*&FontBBox.size.width, v32);
      v24 = vadd_f32(vmla_n_f32(v31, *&FontBBox.origin.y, *&v39), *&FontBBox.size.width);
LABEL_37:
      v5 = RB::Rect::from_bounds(v25, v24);
      v36 = v37;
LABEL_38:
      if (!a2 && v10 == this[2].i32[0])
      {
        *&this[4] = v5;
        this[5] = v36;
      }

      if (v10 >= 0x81)
      {
        free(v18);
      }
    }
  }

  return v5;
}

uint64_t RB::may_discard_shape(unsigned int a1, unsigned int a2)
{
  if (a1 <= 0x34)
  {
    v2 = 0xFFFFFFF06FD64uLL >> a1;
  }

  else
  {
    v2 = 1;
  }

  if (a2 <= 1)
  {
    v2 = a1 - 24 < 0xFFFFFFFB;
  }

  return v2 & 1;
}

BOOL RB::Bounds::intersects(int32x2_t *a1, int32x2_t a2, int32x2_t a3)
{
  v3 = vceqz_s32(a3);
  if ((vpmax_u32(v3, v3).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = vceqz_s32(v4);
  if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v6 = vcge_s32(vmax_s32(*a1, a2), vmin_s32(vadd_s32(*a1, v4), vadd_s32(a3, a2)));
  return vpmax_u32(v6, v6).i32[0] >= 0;
}

float32x2_t RB::Coverage::anonymous namespace::font_dilation_parameters(unsigned int a1, float32x2_t a2, float a3)
{
  if ((a1 & 2) != 0)
  {
    v5 = (a1 >> 4) & 7;
    if (v5 > 3)
    {
      if (((a1 >> 4) & 7) > 5)
      {
        if (v5 == 6)
        {
          v4 = 4.99600295e-18;
        }

        else
        {
          v4 = COERCE_DOUBLE(vmul_f32(a2, vdup_n_s32(0x3E99999Au)));
        }
      }

      else if (v5 == 4)
      {
        v4 = 1.70068465e-16;
      }

      else
      {
        v4 = 7.21963224e-25;
      }
    }

    else
    {
      v4 = 0.0;
      if (v5 >= 2)
      {
        if (v5 != 2)
        {
LABEL_17:
          v4 = 2.06501502e-17;
          return vminnm_f32(vmul_n_f32(*&v4, a3), vdup_n_s32(0x3E99999Au));
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
    v3 = ((a1 & 0xD80) - 128) >> 7;
    v4 = 0.0;
    if (v3 <= 6)
    {
      if (v3)
      {
        if (v3 == 1)
        {
          v4 = 3.27171643e-18;
          return vminnm_f32(vmul_n_f32(*&v4, a3), vdup_n_s32(0x3E99999Au));
        }

        if (v3 != 2)
        {
          return vminnm_f32(vmul_n_f32(*&v4, a3), vdup_n_s32(0x3E99999Au));
        }

        goto LABEL_17;
      }

LABEL_10:
      v4 = 5.56860153e-19;
      return vminnm_f32(vmul_n_f32(*&v4, a3), vdup_n_s32(0x3E99999Au));
    }

    v6 = COERCE_DOUBLE(vmul_f32(a2, vdup_n_s32(0x3E99999Au)));
    if (v3 - 7 < 2)
    {
      v4 = v6;
    }
  }

  return vminnm_f32(vmul_n_f32(*&v4, a3), vdup_n_s32(0x3E99999Au));
}

double RB::max_cached_glyph_mask_area(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D5490, memory_order_acquire) & 1) == 0)
  {
    RB::max_cached_glyph_mask_area();
  }

  return *&qword_1ED6D5488;
}

void RB::anonymous namespace::render_glyph_masks<RB::anonymous namespace::render_glyphs(RB::anonymous namespace::GlyphRenderer const&,RB::RenderPass &,RB::AffineTransform const&,RB::Coverage::Glyphs const&,BOOL,BOOL)::$_0>(uint64_t *a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v68 = *MEMORY[0x1E69E9840];
  RB::Device::glyph_lock(**(*a2 + 16));
  v8 = vmulq_f64(a4[1], xmmword_195E42790);
  v9 = vmulq_f64(a4[2], xmmword_195E42790);
  v65 = vmulq_f64(*a4, xmmword_195E42790);
  v66 = v8;
  v67 = v9;
  if (!CGGlyphLockAccessCustomized())
  {
    return;
  }

  QuantizationLevel = CGGlyphLockGetQuantizationLevel();
  if (!QuantizationLevel)
  {
    return;
  }

  v12 = *(a3 + 16);
  if (v12 <= 0x100)
  {
    MEMORY[0x1EEE9AC00](QuantizationLevel, v11);
    v14 = (&v56 - ((v15 + 15) & 0x1FFFFFFFF0));
    bzero(v14, v15);
  }

  else
  {
    v13 = malloc_type_malloc(16 * v12, 0x1000040451B5BE8uLL);
    v14 = v13;
    if (!v13)
    {
LABEL_52:
      free(v14);
      return;
    }
  }

  v16 = *(a3 + 16);
  if (v16)
  {
    v17 = *(a3 + 8);
    v18 = v14;
    v19 = *(a3 + 16);
    do
    {
      v20 = *v17++;
      *v18++ = vcvtq_f64_f32(v20);
      --v19;
    }

    while (v19);
    v21 = 4 * v16;
    if (v16 >= 0x401)
    {
      v22 = malloc_type_malloc(4 * v16, 0x100004052888210uLL);
      v60 = v22;
      v16 = *(a3 + 16);
      v59 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    v21 = 0;
  }

  MEMORY[0x1EEE9AC00](v13, v21);
  v60 = &v56 - ((v24 + 15) & 0x7FFFFFFF0);
  bzero(v60, v24);
  v59 = 0;
LABEL_14:
  if (v16 < 0x201)
  {
    MEMORY[0x1EEE9AC00](v22, v23);
    v25 = &v56 - ((v26 + 15) & 0xFFFFFFFF0);
    bzero(v25, v26);
  }

  else
  {
    v25 = malloc_type_malloc(8 * v16, 0x100004000313F17uLL);
  }

  if (v60 && v25)
  {
    GlyphIdentifiers = CGFontGetGlyphIdentifiers();
    v29 = *(a3 + 16);
    v58 = v29;
    if (v29 < 0x201)
    {
      MEMORY[0x1EEE9AC00](GlyphIdentifiers, v28);
      v30 = &v56 - ((v31 + 15) & 0xFFFFFFFF0);
      bzero(v30, v31);
    }

    else
    {
      v30 = malloc_type_malloc(8 * v29, 0x6004044C4A2DFuLL);
      if (!v30)
      {
LABEL_46:
        free(v30);
        goto LABEL_47;
      }
    }

    if (CGGlyphLockLockGlyphBitmaps())
    {
      v56 = v14;
      v57 = v12;
      v32 = *(a3 + 16);
      if (v32)
      {
        for (i = 0; i < v32; ++i)
        {
          v34 = *&v30[8 * i];
          if (*(v34 + 20) && *(v34 + 24))
          {
            RB::RenderFrame::cached_region(*(*a2 + 16), 1, *(v34 + 36), &v63);
            v36 = v63;
            if (v63)
            {
              v46 = *(v34 + 20);
              v47 = &v25[8 * i];
              v48 = *v47;
              LODWORD(v47) = *(v47 + 1);
              v50 = *(v34 + 12);
              v49 = *(v34 + 16);
              v51 = *a1;
              v52 = a1[1];
              v53 = (*v52)++;
              ++*(v36 + 2);
              LODWORD(v47) = v49 + v47;
              v54 = v51 + 32 * v53;
              LODWORD(v47) = -v47;
              *v54 = v36;
              *(v54 + 24) = 0;
              v35.i16[0] = v50 + v48;
              v35.i16[1] = v47;
              *(v54 + 8) = vuzp1_s16(vzip1_s16(v35, v46), v46);
              *(v54 + 16) = vmovn_s64(v64);
              *&v55 = (v50 + v48);
              v46.i32[1] = v46.u16[2];
              *(&v55 + 1) = v47;
              RB::Rect::Union(a1[2], v55, vcvt_f32_s32(vshr_n_s32(vshl_n_s32(v46, 0x10uLL), 0x10uLL)));
            }

            else
            {
              RB::RenderFrame::alloc_buffer_region(*(*a2 + 16), (*(v34 + 24) * *(v34 + 20)), 0, 2, &v61);
              v63 = v61;
              v64 = v62;
              if (v61)
              {
                v38 = v34 + 40;
                v39 = *(v34 + 28);
                v40 = *(v34 + 32);
                if (v39 == 16)
                {
                  v41 = *(v34 + 24);
                  if (v41)
                  {
                    v42 = 0;
                    v43 = *(v61 + 7) + v62.i64[0];
                    LODWORD(v44) = *(v34 + 20);
                    do
                    {
                      if (v44)
                      {
                        v45 = 0;
                        do
                        {
                          *(v43 + v45) = *(v38 + 2 * v45) >> 7;
                          ++v45;
                          v44 = *(v34 + 20);
                        }

                        while (v45 < v44);
                        v41 = *(v34 + 24);
                        v43 += v45;
                      }

                      v38 += v40;
                      ++v42;
                    }

                    while (v42 < v41);
                  }
                }

                else
                {
                  if (v39 != 8)
                  {
                    RB::precondition_failure("unknown CG glyph mask format: %d", v37, v38, *(v34 + 28));
                  }

                  CGBlt_copyBytes();
                }

                RB::RenderFrame::set_cached_region();
              }
            }

            v32 = *(a3 + 16);
          }
        }
      }

      v14 = v56;
      LODWORD(v12) = v57;
      CGGlyphLockUnlock();
    }

    if (v58 >= 0x201)
    {
      goto LABEL_46;
    }
  }

LABEL_47:
  if (v16 >= 0x201)
  {
    free(v25);
  }

  if (v59)
  {
    free(v60);
  }

  if (v12 >= 0x101)
  {
    goto LABEL_52;
  }
}

void sub_195D3AE18(_Unwind_Exception *exception_object)
{
  if (*(v4 - 240) >= 0x201)
  {
    free(v2);
  }

  if (v3 >= 0x201)
  {
    free(v1);
  }

  if (*(v4 - 228))
  {
    free(*(v4 - 224));
  }

  if (*(v4 - 248) >= 0x101)
  {
    free(*(v4 - 256));
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::Device::glyph_lock(RB::Device *this)
{
  result = *(this + 123);
  if (!result)
  {
    result = CGGlyphLockCreate();
    *(this + 123) = result;
  }

  return result;
}

uint64_t RB::RenderFrame::cached_region@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6[0] = a2;
  v6[1] = a3;
  result = RB::UntypedTable::lookup((a1 + 256), v6, 0);
  if (result)
  {
    *a4 = *(result + 8);
    *(a4 + 8) = *(result + 16);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

int32x2_t *RB::render_masks_accumulate(int32x2_t *result, int32x2_t *a2, unint64_t a3, uint64_t a4, RB::Buffer *a5)
{
  if (a5)
  {
    v9 = result;
    v10 = result[16].i32[1];
    v22 = result[14];
    v11 = result[15].i32[0];
    result[25].i32[1] = RB::RenderFrame::buffer_id(*(*result + 16), *a4);
    v9[26] = vmovn_s64(*(a4 + 8));
    v12 = RB::RenderFrame::buffer_id(*(*v9 + 16), a5);
    v9[27].i32[1] = 0;
    v9[28].i32[0] = 0;
    v9[27].i32[0] = v12;
    RB::RenderFrame::alloc_buffer_region(*(*v9 + 16), 0x1C, 4uLL, 0, &v23);
    v13 = v23;
    if (v23)
    {
      v14 = vneg_f32(v22);
      v14.i32[0] = 0;
      v15 = *(v23 + 7) + v24.i64[0];
      *v15 = v22.u32[0];
      *(v15 + 8) = v14;
      __asm { FMOV            V0.2S, #-1.0 }

      *(v15 + 16) = -_D0;
      *(v15 + 24) = v11;
    }

    else
    {
      v23 = 0;
      v24 = 0uLL;
    }

    v9[24].i32[0] = RB::RenderFrame::buffer_id(*(*v9 + 16), v13);
    *(v9 + 196) = vmovn_s64(v24);
    if (v10 == 2)
    {
      v21 = 0xF00020009;
    }

    else
    {
      v21 = 0xF00000009;
    }

    result = RB::RenderPass::draw_indexed_primitives(v9, v21, 4, **(*v9 + 16) + 136, 4uLL, a3, *a2, a2[1]);
    *(&v9[25] + 4) = 0;
    *(&v9[26] + 4) = 0;
    *(&v9[27] + 4) = 0;
  }

  return result;
}

void sub_195D3B130(_Unwind_Exception *a1)
{
  *(v1 + 208) = 0;
  *(v1 + 204) = 0;
  _Unwind_Resume(a1);
}

void RB::extended_srgb_colorspace()
{
  if (__cxa_guard_acquire(&qword_1ED6D54B0))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
    v1 = OUTLINED_FUNCTION_0_8(v0, &qword_1ED6D54A8);

    __cxa_guard_release(v1);
  }
}

uint64_t RB::Rect::contains(float32x2_t *a1, float32x2_t a2, float32x2_t a3)
{
  v3 = a1[1];
  v4 = vceqz_f32(v3);
  if ((vpmax_u32(v4, v4).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = vbsl_s8(vcltz_f32(v3), vadd_f32(*a1, v3), *a1);
  v6 = vbsl_s8(vcltz_f32(a3), vadd_f32(a3, a2), a2);
  v7 = vcge_f32(v6, v5);
  if ((vpmin_u32(v7, v7).u32[0] & 0x80000000) == 0)
  {
    return 0;
  }

  v9 = vcge_f32(vadd_f32(v5, vabs_f32(v3)), vadd_f32(v6, vabs_f32(a3)));
  return vpmin_u32(v9, v9).u32[0] >> 31;
}

int32x2_t *RB::render_glyphs(RB::RenderPass &,RB::AffineTransform const&,RB::Coverage::Glyphs const&,RB::Fill::Color const&,BOOL,RB::BlendMode)::Renderer::draw_mask(uint64_t a1, uint64_t a2, float32x2_t a3, double a4)
{
  RB::Coverage::set_plane(&v21, a2, a3, a4);
  v8.i32[0] = *(a2 + 124);
  RB::Fill::Color::prepare(*(a1 + 8), *(a2 + 128), v8, v9, v10);
  *&v22[12] = v11;
  RB::RenderFrame::alloc_buffer_region(*(*a2 + 16), 0x24, 4uLL, 0, &v23);
  v12 = v23;
  if (v23)
  {
    v13 = *(v23 + 7) + v24.i64[0];
    v14 = v21;
    v15 = *v22;
    *(v13 + 32) = *&v22[16];
    *v13 = v14;
    *(v13 + 16) = v15;
  }

  else
  {
    v23 = 0;
    v24 = 0uLL;
  }

  *(a2 + 192) = RB::RenderFrame::buffer_id(*(*a2 + 16), v12);
  *(a2 + 196) = vmovn_s64(v24);
  v18 = 18;
  if (*(a2 + 132) == 2)
  {
    v18 = 131090;
  }

  v19 = (v18 | (*(a1 + 16) << 16) | ((*(a1 + 20) & 0x3F) << 32));
  RB::Bounds::Bounds(&v23, a3, *&a4, v16, v17);
  return RB::RenderPass::draw_indexed_primitives(a2, v19, 4, **(*a2 + 16) + 136, 4uLL, 1uLL, v23, *v24.i8);
}

uint64_t RB::Path::Accumulator::Accumulator(uint64_t a1, uint64_t a2, uint64_t *a3, float64x2_t *a4, float a5, float32x2_t a6, float32x2_t a7)
{
  if (RBPathGetBezierOrder(*a3, a3[1]) == 1)
  {
    v14 = 2;
  }

  else
  {
    v14 = 4;
  }

  *a1 = &unk_1F0A388C0;
  *(a1 + 8) = a2;
  RB::Path::Flattener::Flattener(a1 + 16, a1, a5, a6, a7);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 4;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 281) = v14;
  *(a1 + 288) = -1;
  *(a1 + 296) = 0;
  RB::Rect::from_bounds(*(a1 + 40), *(a1 + 48));
  RB::Coverage::Path::map(a3, (a1 + 16), a4);
  if (*(a1 + 280) == 1)
  {
    RB::Path::Accumulator::commit_buffer(a1);
  }

  return a1;
}

uint64_t RB::Path::Flattener::Flattener(uint64_t a1, void (***a2)(void), float a3, float32x2_t a4, float32x2_t a5)
{
  v6 = vneg_f32(0x7F0000007FLL);
  *(a1 + 32) = vadd_f32(a5, a4);
  *(a1 + 40) = v6;
  *(a1 + 48) = 0x7F0000007FLL;
  *(a1 + 56) = v6;
  *(a1 + 64) = 0x7F0000007FLL;
  v8 = vrecpe_f32(LODWORD(a3));
  v9 = vmul_f32(vrecps_f32(LODWORD(a3), v8), v8);
  *a1 = &unk_1F0A38610;
  *(a1 + 8) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 16) = vmul_n_f32(0x3F0000003F400000, vmul_f32(v9, vrecps_f32(LODWORD(a3), v9)).f32[0]);
  *(a1 + 24) = *&a4;
  (**a2)(a2);
  return a1;
}

void render_contents(CGContext *a1, NSDictionary *a2, const RB::DisplayList::Contents *a3, _RBDrawingState *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = [(NSDictionary *)a2 objectForKeyedSubscript:@"disablePassthrough"];
  if (v8 && ([v8 BOOLValue] & 1) != 0 || (LODWORD(v27[0].f64[0]) = 0, LODWORD(v26.a) = 0, v9 = RB::ContextDelegate::state_ref(a1, v27, &v26), (v10 = v9) == 0))
  {
    v17 = [(NSDictionary *)a2 objectForKeyedSubscript:RBDisplayListRenderColorSpace];
    if (v17)
    {
      v18 = [v17 unsignedIntValue];
    }

    else
    {
      v18 = 0;
    }

    v19 = [(NSDictionary *)a2 objectForKeyedSubscript:RBDisplayListRenderRasterizationScale];
    if (v19)
    {
      [v19 floatValue];
      if (*v21.i32 <= 0.0)
      {
        RB::precondition_failure("invalid rasterization scale: %g", v20, *v21.i32);
      }

      v22 = vdup_lane_s32(v21, 0);
    }

    else
    {
      CGContextGetCTM(&v26, a1);
      v27[0] = *&v26.a;
      v27[1] = *&v26.c;
      v27[2] = *&v26.tx;
      v22 = RB::AffineTransform::scale2(v27);
    }

    v23 = rb_color_space(v18);
    if ((v23 & 0x100) != 0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 17;
    }

    RB::CGContext::CGContext(v27, a1, v24, *&v22);
    RB::DisplayList::render(a3, v27, 0, v25);
    RB::CGContext::~CGContext(v27);
  }

  else
  {
    v11 = *v27[0].f64 == 1.0 && LODWORD(v26.a) == 0;
    v12 = !v11;
    v13 = v9;
    if (!v11)
    {
      v13 = RBDrawingStateBeginLayer(v9, 0);
    }

    v14 = v13[1];
    if (!*(v14 + 24))
    {
      make_contents(v13[1]);
    }

    RB::DisplayList::Builder::draw(v14 + 16, a3, v13, 1.0, 0, 0);
    if (a4)
    {
      v16 = *(v14 + 320);
      if (v16)
      {
        RB::XML::DisplayList::draw_list(v16, v13, a4, v15, 1.0);
      }
    }

    if (v12)
    {
      RBDrawingStateDrawLayer(v10, v13, LODWORD(v26.a), *v27[0].f64);
    }
  }
}

void sub_195D3B75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  RB::CGContext::~CGContext(va);
  _Unwind_Resume(a1);
}

void *RBFillData::apply<RB::DisplayList::ItemFactory::Inner<RB::Coverage::Glyphs>>(void *result, RB::Coverage::Glyphs **a2)
{
  v2 = *result;
  if (*result <= 2)
  {
    if (v2 == 1)
    {
      return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Glyphs>::operator()<RB::Fill::Color>(a2, (result + 2));
    }

    else if (v2 == 2)
    {
      return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Glyphs>::operator()<RB::Fill::Gradient>(a2, result + 2);
    }
  }

  else
  {
    switch(v2)
    {
      case 3:
        return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Glyphs>::operator()<RB::Fill::MeshGradient>(a2, (result + 2));
      case 4:
        return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Glyphs>::operator()<RB::Fill::Image<RB::ImageTexture>>(a2, (result + 2));
      case 5:
        return RB::DisplayList::ItemFactory::Inner<RB::Coverage::Glyphs>::operator()<RB::Fill::Custom>(a2, (result + 2));
    }
  }

  return result;
}

uint64_t RB::Path::Accumulator::begin_subpath(uint64_t this)
{
  *(this + 288) = *(this + 272);
  *(this + 300) = *(this + 296);
  return this;
}

uint64_t RB::DisplayList::ItemFactory::operator()<RB::Coverage::Glyphs>(uint64_t a1, float32x2_t *this)
{
  v4 = *(a1 + 40);
  if (!v4 || (v8[0] = xmmword_195E42760, v8[1] = xmmword_195E42770, v9 = 0, v10 = 0, v5 = RB::Coverage::Glyphs::bounds(this, v8, 0), result = RB::Rect::intersects(v4, *&v5, v6), (result & 1) != 0))
  {
    *&v8[0].f64[0] = a1;
    *&v8[0].f64[1] = this;
    return RBFillData::apply<RB::DisplayList::ItemFactory::Inner<RB::Coverage::Glyphs>>(*(a1 + 32), v8);
  }

  return result;
}

uint64_t RBPathGetBezierOrder(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  if (*(a2 + 2))
  {
    if (v2)
    {
      return v2();
    }
  }

  else if (v2)
  {
    return v2();
  }

  return 3;
}

id __copy_helper_block_e8_32c40_ZTSN2RB8objc_ptrIP17RBImageQueueLayerEE48c29_ZTSN2RB8objc_ptrIP7RBLayerEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

uint64_t RB::Coverage::Path::map(uint64_t result, float64x2_t *a2, float64x2_t *a3)
{
  v4 = *(result + 8);
  if (v4 != &empty_path_callbacks)
  {
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      v7.f64[0] = RB::operator*(v6, a3);
      v11[0] = v7;
      v11[1] = v8;
      v11[2] = v9;
      return RBPathMap(*v5, *(v5 + 8), a2, v11);
    }

    else
    {
      v10 = *v5;

      return RBPathMap(v10, v4, a2, a3);
    }
  }

  return result;
}

uint64_t RB::CGContext::CGContext(uint64_t a1, CGContextRef c, char a3, double a4)
{
  *a1 = c;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  CGContextGetCTM(&v8, c);
  v5 = *&v8.c;
  v6 = *&v8.tx;
  *(a1 + 32) = *&v8.a;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
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
  *(a1 + 152) = 0xBF800000FFFFFFFFLL;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  *(a1 + 168) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0x400000000;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 0x400000000;
  *(a1 + 1008) = 0;
  RB::CGContext::load_state(a1);
  return a1;
}

void sub_195D3BA68(_Unwind_Exception *a1)
{
  v3 = *(v1 + 992);
  if (v3)
  {
    free(v3);
  }

  v4 = *(v1 + 464);
  if (v4)
  {
    free(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t RB::anonymous namespace::find_bundle(RB::_anonymous_namespace_ *this)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = dyld_image_path_containing_address();
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = strstr(v1, "/RenderBox.framework");
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3 - v2;
  v5 = v3 - v2 + 21;
  if (v5 <= 0x1000)
  {
    MEMORY[0x1EEE9AC00]();
    v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v6, v5);
LABEL_7:
    v8 = v4 + 20;
    memcpy(v6, v2, v8);
    v6[v8] = 0;
    v7 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v6 isDirectory:1 relativeToURL:0];
    if (v5 <= 0x1000)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = malloc_type_malloc(v3 - v2 + 21, 0x100004077774924uLL);
  if (v6)
  {
    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:
  free(v6);
LABEL_9:
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_10:
  v7 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:"/System/Library/PrivateFrameworks/RenderBox.framework" isDirectory:1 relativeToURL:0];
  if (v7)
  {
LABEL_11:
    result = [MEMORY[0x1E696AAE8] bundleWithURL:v7];
    if (result)
    {
      return result;
    }
  }

  result = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.RenderBox"];
  if (!result)
  {
  }

  return result;
}

void RB::CGContext::load_state(CGContextRef *this)
{
  v6 = *MEMORY[0x1E69E9840];
  CGContextSetAlpha(*this, 1.0);
  CGContextSetBlendMode(*this, kCGBlendModeNormal);
  CGContextSetShouldAntialias(*this, 1);
  CGContextSetFontSize(*this, 1.0);
  v2 = *this;
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  *&v5.a = *MEMORY[0x1E695EFD0];
  *&v5.c = v3;
  *&v5.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGContextSetTextMatrix(v2, &v5);
  v4 = RB::ColorSpace::cg_color_space((this + 1), 1);
  CGContextSetFillColorSpace(*this, v4);
  CGContextSetStrokeColorSpace(*this, v4);
  *&v5.a = xmmword_195E457D0;
  *&v5.c = unk_195E457E0;
  CGContextSetFillColor(*this, &v5.a);
  CGContextSetStrokeColor(*this, &v5.a);
}

uint64_t RB::Surface::queue_id(os_unfair_lock_s *this, _CAImageQueue *a2)
{
  if (!a2)
  {
    return 0;
  }

  os_unfair_lock_lock(this + 3);
  v4 = *&this[26]._os_unfair_lock_opaque;
  v5 = *&this[28]._os_unfair_lock_opaque;
  if (!v4)
  {
    v4 = this + 18;
  }

  if (v5)
  {
    v6 = &v4[2];
    v7 = 16 * v5;
    while (*(v6 - 1) != a2)
    {
      v6 += 2;
      v7 -= 16;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v8 = *v6;
  }

  else
  {
LABEL_8:
    os_unfair_lock_unlock(this + 3);
    v8 = CAImageQueueRegisterIOSurfaceBuffer();
    os_unfair_lock_lock(this + 3);
    v9 = *&this[28]._os_unfair_lock_opaque;
    v10 = v9 + 1;
    if (*&this[30]._os_unfair_lock_opaque < (v9 + 1))
    {
      v9 = *&this[28]._os_unfair_lock_opaque;
      v10 = v9 + 1;
    }

    v11 = *&this[26]._os_unfair_lock_opaque;
    if (!v11)
    {
      v11 = this + 18;
    }

    v12 = &v11[4 * v9];
    *v12 = a2;
    *(v12 + 1) = v8;
    *&this[28]._os_unfair_lock_opaque = v10;
  }

  os_unfair_lock_unlock(this + 3);
  return v8;
}

uint64_t RB::Path::Flattener::closepath(float32x2_t *this)
{
  v2 = this[9];
  v3 = vmvn_s8(vceq_f32(v2, this[10]));
  if ((vpmax_u32(v3, v3).u32[0] & 0x80000000) != 0)
  {
    RB::Path::Flattener::lineto(this, vcvtq_f64_f32(v2));
  }

  v4 = this[7];
  v5 = this[8];
  v6 = vorr_s8(vcgt_f32(this[3], v5), vcgt_f32(v4, this[4]));
  if ((vpmax_u32(v6, v6).u32[0] & 0x80000000) != 0)
  {
    if ((*(**&this[1] + 8))(*&this[1]))
    {
      goto LABEL_7;
    }

    v4 = this[7];
    v5 = this[8];
  }

  v7 = this[6];
  this[5] = vminnm_f32(this[5], v4);
  this[6] = vmaxnm_f32(v7, v5);
LABEL_7:
  this[7] = vneg_f32(0x7F0000007FLL);
  this[8] = 0x7F0000007FLL;
  this[11].i8[0] = 0;
  v8 = ***&this[1];

  return v8();
}

void RB::DisplayList::render(RB::DisplayList *this, const RB::DisplayList::Contents *a2, RB::CGContext *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(this + 424) == 1)
  {
    RB::DisplayList::Builder::Builder(v23);
    RB::DisplayList::Builder::set_optimized(v23, 1);
    RB::DisplayList::Builder::draw(v23, this, v24, 1.0, 0, a3);
    if (*(v23[0].__r_.__value_.__l.__size_ + 424) == 1)
    {
      RB::precondition_failure("internal error", v7);
    }

    RB::DisplayList::render(v23[0].__r_.__value_.__l.__size_, a2, 0, v8);
    RB::DisplayList::Builder::~Builder(v23);
  }

  else
  {
    {
      v18 = RB::debug_int("RB_PRINT_TREE", v17);
      v19 = v18 & 1;
      if ((v18 & 0x100000000) == 0)
      {
        v19 = 0;
      }

      RB::DisplayList::render(RB::DisplayList::Contents const&,RB::CGContext &,void *)::print_tree = v19;
    }

    if (RB::DisplayList::render(RB::DisplayList::Contents const&,RB::CGContext &,void *)::print_tree == 1)
    {
      memset(v23, 0, 41);
      RB::SexpString::push(v23, "render-cg");
      ClipBoundingBox = CGContextGetClipBoundingBox(*a2);
      y = ClipBoundingBox.origin.y;
      height = ClipBoundingBox.size.height;
      v20[0] = vcvt_f32_f64(ClipBoundingBox.origin);
      v20[1] = vcvt_f32_f64(ClipBoundingBox.size);
      RB::Rect::operator std::string(v20, __p);
      if (v22 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      RB::SexpString::print(v23, 0, v11);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      RB::DisplayList::Contents::print(this, v23);
      RB::SexpString::pop(v23);
      RB::SexpString::newline(v23);
      if ((v23[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = v23;
      }

      else
      {
        v12 = v23[0].__r_.__value_.__r.__words[0];
      }

      fputs(v12, *MEMORY[0x1E69E9848]);
      if (SHIBYTE(v23[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23[0].__r_.__value_.__l.__data_);
      }
    }

    if (*(this + 44) || (v13 = *(this + 99), (v13 & 1) != 0) || !RB::CGContext::compatible_layer_flags(a2, v13))
    {
      RB::CGContext::reset_ctm(a2);
      v27 = CGContextGetClipBoundingBox(*a2);
      v14 = v27.origin.y;
      v15 = v27.size.height;
      v23[0].__r_.__value_.__l.__data_ = vcvt_f32_f64(v27.origin);
      v23[0].__r_.__value_.__r.__words[1] = vcvt_f32_f64(v27.size);
      RB::DisplayList::Layer::make_cgimage(this + 320, a2, v23, 0, 0, a3, __p, v27.size.width, *&v27.size.height);
      v16 = __p[0];
      if (__p[0])
      {
        v28.origin.x = *&v23[0].__r_.__value_.__l.__data_;
        v28.origin.y = *(v23[0].__r_.__value_.__r.__words + 1);
        v28.size.width = *&v23[0].__r_.__value_.__r.__words[1];
        v28.size.height = *(&v23[0].__r_.__value_.__r.__words[1] + 1);
        CGContextDrawImage(*a2, v28, __p[0]);
        CFRelease(v16);
      }
    }

    else
    {
      RB::DisplayList::Layer::render_items(this + 320, a2, a3);
    }
  }
}

float64x2_t **RB::Path::Iterator::callback_0(float64x2_t **this, double **a2, const CGPathElement *a3)
{
  v3 = *a2;
  if (*a2 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        return (*(*&(*this)->f64[0] + 24))(*this, vmlaq_n_f64(vmlaq_n_f64(this[1][2], *this[1], *a2[1]), this[1][1], a2[1][1]));
      }
    }

    else
    {
      return (*(*&(*this)->f64[0] + 16))(*this, vmlaq_n_f64(vmlaq_n_f64(this[1][2], *this[1], *a2[1]), this[1][1], a2[1][1]));
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = a2[1];
        v5 = this[1];
        return (*(*&(*this)->f64[0] + 32))(*this, vmlaq_n_f64(vmlaq_n_f64(v5[2], *v5, *v4), v5[1], v4[1]), vmlaq_n_f64(vmlaq_n_f64(v5[2], *v5, v4[2]), v5[1], v4[3]));
      case 3:
        v6 = a2[1];
        v7 = this[1];
        return (*(*&(*this)->f64[0] + 40))(*this, vmlaq_n_f64(vmlaq_n_f64(v7[2], *v7, *v6), v7[1], v6[1]), vmlaq_n_f64(vmlaq_n_f64(v7[2], *v7, v6[2]), v7[1], v6[3]), vmlaq_n_f64(vmlaq_n_f64(v7[2], *v7, v6[4]), v7[1], v6[5]));
      case 4:
        return (*(*&(*this)->f64[0] + 8))();
    }
  }

  return this;
}

uint64_t RB::Path::Flattener::moveto(uint64_t a1, float64x2_t a2)
{
  RB::Path::Flattener::closepath(a1);
  v3 = vcvt_f32_f64(a2);
  *(a1 + 72) = v3;
  *(a1 + 80) = v3;
  *(a1 + 88) = 0;
  v4 = ***(a1 + 8);

  return v4();
}

float32x2_t RB::Stroke::LineBounds::add_cap(float32x2_t *a1, int a2, float32x2_t result, double a4, int8x8_t a5)
{
  v5 = a1->u8[0];
  if (v5 <= 2)
  {
    if (!a1->i8[0])
    {
      v20 = vdup_lane_s32(*&a4, 0);
      return RB::Stroke::LineBounds::add_point(a1, result, *&v20);
    }

    if (v5 == 1)
    {
      goto LABEL_27;
    }

    if (v5 == 2)
    {
      if (a2)
      {
        v6 = -1;
      }

      else
      {
        v6 = 0;
      }

      v7 = vbsl_s8(vdup_n_s32(v6), a5, vneg_f32(a5));
      v8 = vmvn_s8(vceqz_f32(a5));
      v9 = vpmax_u32(v8, v8);
      if (v9.i32[0] < 0)
      {
        v10 = vmul_f32(v7, v7);
        v10.i32[0] = vadd_f32(v10, vdup_lane_s32(v10, 1)).u32[0];
        v11 = vrsqrte_f32(v10.u32[0]);
        v12 = vmul_f32(vrsqrts_f32(v10.u32[0], vmul_f32(v11, v11)), v11);
        v9 = vmul_f32(v12, vrsqrts_f32(v10.u32[0], vmul_f32(v12, v12)));
        v7 = vmul_n_f32(v7, *v9.i32);
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a1->u8[0] <= 4u)
    {
      if (v5 != 3)
      {
        if (v5 != 4)
        {
          return result;
        }

        goto LABEL_27;
      }

LABEL_17:
      if (a2)
      {
        v13 = -1;
      }

      else
      {
        v13 = 0;
      }

      v7 = vbsl_s8(vdup_n_s32(v13), a5, vneg_f32(a5));
      v14 = vmvn_s8(vceqz_f32(a5));
      if ((vpmax_u32(v14, v14).u32[0] & 0x80000000) != 0)
      {
        v15 = vmul_f32(v7, v7);
        v15.i32[0] = vadd_f32(v15, vdup_lane_s32(v15, 1)).u32[0];
        v16 = vrsqrte_f32(v15.u32[0]);
        v17 = vmul_f32(vrsqrts_f32(v15.u32[0], vmul_f32(v16, v16)), v16);
        v7 = vmul_n_f32(v7, vmul_f32(v17, vrsqrts_f32(v15.u32[0], vmul_f32(v17, v17))).f32[0]);
      }

      v18 = vmla_n_f32(result, v7, *&a4);
      v19 = vminnm_f32(a1[1], v18);
      v9 = vmaxnm_f32(a1[2], v18);
      a1[1] = v19;
      a1[2] = v9;
      goto LABEL_33;
    }

    if (v5 == 5)
    {
      if (a2)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }

    if (v5 == 6)
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_27:
      if (a2)
      {
        v21 = -1;
      }

      else
      {
        v21 = 0;
      }

      v7 = vbsl_s8(vdup_n_s32(v21), a5, vneg_f32(a5));
      v22 = vmvn_s8(vceqz_f32(a5));
      v9 = vpmax_u32(v22, v22);
      if (v9.i32[0] < 0)
      {
        v23 = vmul_f32(v7, v7);
        v23.i32[0] = vadd_f32(v23, vdup_lane_s32(v23, 1)).u32[0];
        v24 = vrsqrte_f32(v23.u32[0]);
        v25 = vmul_f32(vrsqrts_f32(v23.u32[0], vmul_f32(v24, v24)), v24);
        v9 = vmul_f32(v25, vrsqrts_f32(v23.u32[0], vmul_f32(v25, v25)));
        v7 = vmul_n_f32(v7, *v9.i32);
      }

      result = vmla_n_f32(result, v7, *&a4);
LABEL_33:
      *v9.i32 = -v7.f32[1];
      v20 = vabs_f32(vmul_n_f32(vzip1_s32(v9, v7), *&a4));
      return RB::Stroke::LineBounds::add_point(a1, result, *&v20);
    }
  }

  return result;
}

uint64_t RB::anonymous namespace::load_library(void *a1, void *a2)
{
  v4 = [a1 URLForResource:@"default" withExtension:@"metallib"];
  if (!v4)
  {
  }

  v9 = 0;
  v5 = [a2 newLibraryWithURL:v4 error:&v9];
  v6 = v5;
  if (v9)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (v7)
  {
  }

  return v6;
}

BOOL RB::Path::Accumulator::cull_subpath(RB::Path::Accumulator *this)
{
  v1 = *(this + 36);
  if ((v1 & 0x8000000000000000) == 0)
  {
    *(this + 34) = v1;
    *(this + 74) = *(this + 75);
    *(this + 36) = -1;
  }

  return v1 >= 0;
}

void *RB::Path::Accumulator::new_buffer(RB::RenderFrame **this)
{
  result = RB::RenderFrame::alloc_buffer_region(this[1], 0x200, 8uLL, 1, &v10);
  v3 = v10;
  if (v10)
  {
    v4 = this[32];
    v5 = v4 + 1;
    if (this[33] < (v4 + 1))
    {
      result = RB::vector<RB::Path::Buffer,4ul,unsigned long>::reserve_slow(this + 15, v5);
      v4 = this[32];
      v3 = v10;
      v5 = v4 + 1;
    }

    v6 = this[31];
    if (!v6)
    {
      v6 = (this + 15);
    }

    v7 = v6 + 32 * v4;
    v8 = *(this + 281);
    *v7 = v3;
    *(v7 + 8) = v11;
    *(v7 + 6) = 0;
    v7[28] = v8;
    this[32] = v5;
    if (this[36] == this[34])
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }

    this[36] = v9;
    this[37] = 0;
    this[34] = 0;
    *(this + 280) = 1;
    *(this + 76) = 0;
  }

  return result;
}

void RB::SurfacePool::collect_async(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  if (LOBYTE(this[34]._os_unfair_lock_opaque) == 1)
  {

    os_unfair_lock_unlock(this);
  }

  else
  {
    LOBYTE(this[34]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_unlock(this);
    v2 = *&this[2]._os_unfair_lock_opaque;

    dispatch_async_f(v2, this, RB::SurfacePool::AsyncCollection::~AsyncCollection()::$_0::__invoke);
  }
}

_BYTE *RB::Path::Accumulator::push_back(_BYTE *this, unsigned int a2, float32x2_t a3, double a4, double a5, double a6)
{
  v11 = this;
  if (this[280] != 1)
  {
    goto LABEL_7;
  }

  if (this[281] != 4)
  {
    goto LABEL_6;
  }

  v12 = *(this + 34);
  v13 = 32 * v12;
  v14 = this + 120;
  v15 = *(this + 31);
  v16 = *(this + 32);
  if (v15)
  {
    v14 = *(this + 31);
  }

  if ((32 * v12 + 64) > *&v14[32 * v16 - 16])
  {
LABEL_6:
    RB::Path::Accumulator::commit_buffer(this);
LABEL_7:
    *(v11 + 281) = 4;
    this = RB::Path::Accumulator::new_buffer(v11);
    v12 = *(v11 + 272);
    v15 = *(v11 + 248);
    v16 = *(v11 + 256);
    v13 = 32 * v12;
  }

  if (!v15)
  {
    v15 = v11 + 120;
  }

  v17 = *(*(v15 + 32 * v16 - 32) + 56) + *(v15 + 32 * v16 - 24) + v13;
  if (!v12 || (v18 = vmvn_s8(vceq_f32(*(v17 - 8), a3)), (vpmax_u32(v18, v18).u32[0] & 0x80000000) != 0))
  {
    *v17 = *(v11 + 296);
    *(v17 + 4) = 0;
    v19 = vneg_f32(0x7F0000007FLL);
    *(v17 + 8) = v19;
    *(v17 + 16) = v19;
    *(v17 + 24) = *&a3;
    v17 += 32;
    ++*(v11 + 272);
  }

  *v17 = *(v11 + 296);
  *(v17 + 4) = 1.0 / a2;
  *(v17 + 8) = a4;
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  ++*(v11 + 272);
  *(v11 + 296) += a2;
  v20 = *(v11 + 304);
  if (v20 <= a2)
  {
    v20 = a2;
  }

  *(v11 + 304) = v20;
  return this;
}

void __destroy_helper_block_e8_32c40_ZTSN2RB8objc_ptrIP17RBImageQueueLayerEE48c29_ZTSN2RB8objc_ptrIP7RBLayerEE(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void RB::Path::Flattener::cubeto(uint64_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, double a5, double a6, double a7, int32x4_t a8, int8x16_t a9)
{
  v10 = *(a1 + 80);
  v11 = vcvt_f32_f64(a2);
  v12 = vcvt_f32_f64(a3);
  v13 = vcvt_f32_f64(a4);
  *(a1 + 80) = v13;
  v14 = COERCE_DOUBLE(vminnm_f32(v10, v13));
  v15 = vmaxnm_f32(v10, v13);
  *a8.i8 = vminnm_f32(v11, v12);
  *a9.i8 = vmaxnm_f32(v11, v12);
  v16 = vminnm_f32(*&v14, *a8.i8);
  v17 = vmaxnm_f32(v15, *a9.i8);
  v19 = *(a1 + 24);
  v18 = *(a1 + 32);
  v20 = vorr_s8(vcgt_f32(v19, v17), vcgt_f32(v16, v18));
  if ((vpmax_u32(v20, v20).u32[0] & 0x80000000) != 0)
  {
    v30 = vmaxnm_f32(*(a1 + 64), v17);
    *(a1 + 56) = vminnm_f32(*(a1 + 56), v16);
    *(a1 + 64) = v30;
LABEL_10:

    RB::Path::Flattener::push_cropped(a1, *&v10, v13);
    return;
  }

  v21 = vcge_f32(v15, *a9.i8);
  v22 = vand_s8(v21, vcge_f32(*a8.i8, *&v14));
  v23 = COERCE_DOUBLE(vpmin_u32(v22, v22));
  if ((LODWORD(v23) & 0x80000000) == 0)
  {
    *&a2.f64[0] = v10;
    *&a4.f64[0] = v12;
    v14 = RB::Path::cubic_bounds_slow(a2, v11, a4, v13, v23, *&v21, a8, a9);
    v19 = *(a1 + 24);
    v18 = *(a1 + 32);
  }

  v24 = vmaxnm_f32(*(a1 + 64), v15);
  *(a1 + 56) = vminnm_f32(*(a1 + 56), *&v14);
  *(a1 + 64) = v24;
  v25 = vorr_s8(vcgt_f32(v19, v15), vcgt_f32(*&v14, v18));
  if ((vpmax_u32(v25, v25).u32[0] & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  v26 = vmaxnm_f32(vabs_f32(vadd_f32(vsub_f32(v12, vadd_f32(v11, v11)), v10)), vabs_f32(vadd_f32(vsub_f32(v11, vadd_f32(v12, v12)), v13)));
  v27 = ceilf(sqrtf(sqrtf(vaddv_f32(vmul_f32(v26, v26))) * *(a1 + 16)));
  if ((LODWORD(v27) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return;
  }

  if (v27 >= 1.0)
  {
    if (v27 > 1024.0)
    {
      v27 = 1024.0;
    }

    v29 = v27;
  }

  else
  {
    v28 = vceq_f32(v10, v13);
    if ((vpmin_u32(v28, v28).u32[0] & 0x80000000) != 0)
    {
      return;
    }

    v29 = 1;
  }

  (*(**(a1 + 8) + 40))(*(a1 + 8), v29, *&v10, *&v11, *&v12, *&v13);
  *(a1 + 88) = 0;
}

_DWORD *RB::DisplayList::Predicate::add_color(_DWORD *this, const RB::Fill::Color *a2)
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
  *v6 = 2;
  v7 = *a2;
  *(v6 + 14) = *(a2 + 6);
  *(v6 + 1) = v7;
  ++v3[8];
  return this;
}

uint64_t RB::Path::Accumulator::commit_buffer(RB::Path::Accumulator *this)
{
  v2 = this + 120;
  if (*(this + 31))
  {
    v2 = *(this + 31);
  }

  v3 = &v2[32 * *(this + 32)];
  v4 = *(v3 - 4);
  if (v4 == 4)
  {
    if (*(this + 76) != 1)
    {
      goto LABEL_8;
    }

    RB::Path::Accumulator::convert_to_lines(this, (v3 - 32));
    v4 = *(v3 - 4);
  }

  if (v4 == 2)
  {
    *(*(*(v3 - 4) + 56) + *(v3 - 3)) = *(this + 68) - 1;
    v5 = *(this + 34);
    v6 = 8 * v5 + 8;
    v7 = v5 - 1;
    goto LABEL_9;
  }

LABEL_8:
  v8 = (*(*(v3 - 4) + 56) + *(v3 - 3));
  v9 = *(this + 34);
  *v8 = v9 - 1;
  v10 = *(this + 74);
  v8[1] = v10;
  v7 = v10;
  v6 = 32 * v9;
LABEL_9:
  *(v3 - 2) = v7;
  result = RB::RenderFrame::commit_buffer_region_size(*(this + 1), (v3 - 32), v6);
  *(this + 280) = 0;
  if (!v6)
  {
    --*(this + 32);
  }

  return result;
}

void RB::Path::Renderer::render(uint64_t a1, void (**a2)(void, int32x2_t **, uint64_t, double, double), char a3, unsigned int a4)
{
  v6[0] = &unk_1F0A377F8;
  v6[1] = a2;
  v7 = a3;
  v8 = a4;
  may_discard_shape = RB::may_discard_shape(a4, *(a1 + 9));
  RB::Path::Renderer::resolve(a1, v6, may_discard_shape);
}

{
  v6[0] = &unk_1F0A377B0;
  v6[1] = a2;
  v7 = a3;
  v8 = a4;
  may_discard_shape = RB::may_discard_shape(a4, *(a1 + 9));
  RB::Path::Renderer::resolve(a1, v6, may_discard_shape);
}

void RB::Path::Renderer::resolve(int32x2_t **a1, void (***a2)(void, int32x2_t **, uint64_t, double, double), int a3)
{
  v108 = a3;
  v119 = *MEMORY[0x1E69E9840];
  v5 = **(**a1 + 16);
  has_stencil = RB::depth_stencil_format_has_stencil((*a1)[23].u8[2]);
  v8 = a1[2];
  if (is_mul_ok(v8, 0x28uLL))
  {
    v9 = has_stencil;
    v106 = a2;
    v10 = 40 * v8;
    if (40 * v8 <= 0x1000)
    {
      MEMORY[0x1EEE9AC00](has_stencil, v7);
      v109 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v109, 40 * v8);
    }

    else
    {
      v109 = malloc_type_malloc(40 * v8, 0x1020040D675950FuLL);
      if (!v109)
      {
        v109 = 0;
LABEL_102:
        free(v109);
        return;
      }

      v8 = a1[2];
    }

    v118 = 0uLL;
    if (v8)
    {
      v15 = 0;
      v16 = 8;
      v17 = vneg_f32(0x80000000800000);
      v18 = v109;
      do
      {
        v19 = v5;
        v20 = a1[3];
        v21 = &v20[v16];
        *v22.i8 = RB::operator*(&v20[v16 - 4], v20[v16 - 6], v20[v16 - 5]);
        v113 = v22;
        v114 = v23;
        if (*(a1 + 9) >= 3u)
        {
          v25 = vmvn_s8(vceqz_f32(*v114.i8));
          *v22.i8 = vpmin_u32(v25, v25);
          if (v22.i32[0] < 0)
          {
            v22.i32[0] = *(a1 + 3);
            *v23.i8 = vcgt_f32(v17, *v114.i8);
            *v24.i8 = vsub_f32(*v113.i8, vdup_lane_s32(*v22.i8, 0));
            v26 = vcltzq_s32(v23);
            v113 = vbslq_s8(v26, v24, v113);
            *v24.i8 = vmla_n_f32(*v114.i8, 0x4000000040000000, *v22.i32);
            v114 = vbslq_s8(v26, v24, v114);
          }
        }

        v22.i32[0] = 0;
        v27 = (*a1)[22];
        v28 = vceq_s32(v27, 0x8000000080000000);
        v29 = vpmin_u32(v28, v28);
        v30 = vdup_lane_s32(vcgt_s32(*v22.i8, v29), 0);
        v31 = vbsl_s8(v30, v17, vcvt_f32_s32(v27));
        v32 = vcvt_f32_s32((*a1)[21]);
        *v22.i8 = vbsl_s8(v30, 0x100000001000000, v32);
        v116 = *v22.i8;
        v117 = v31;
        if (v108)
        {
          RB::Rect::intersect(&v116, *v113.i64, *v114.i8);
          *v22.i8 = v116;
          v31 = v117;
        }

        RB::Bounds::Bounds(v115, *v22.i8, v31, *&v32, v29);
        *v18 = *v115;
        if (v15)
        {
          RB::Bounds::Union(&v118, *v18, *(v18 + 8));
        }

        else
        {
          v118 = *v109;
        }

        v112 = *v20[v16 - 4].i8;
        v33 = *v20[v16].i8;
        v111 = *v20[v16 - 2].i8;
        v110 = v33;
        v34 = *a1;
        v35 = (*a1)[14];
        v36 = (*a1)[15].i32[0];
        v38 = v21[-6];
        v37 = v21[-5];
        if (*(a1 + 9) < 2u)
        {
          v43 = 0.0;
        }

        else
        {
          v39 = *(a1 + 3);
          v40 = COERCE_UNSIGNED_INT(RB::AffineTransform::scale(&v20[v16 - 4]));
          v41 = vrecpe_f32(v40);
          v42 = vmul_f32(vrecps_f32(v40.u32[0], v41), v41);
          v43 = v39 * vmul_f32(v42, vrecps_f32(v40.u32[0], v42)).f32[0];
          v34 = *a1;
        }

        v5 = v19;
        RB::RenderFrame::alloc_buffer_region(*(*v34 + 16), 0x34, 4uLL, 0, v115);
        v44 = *v115;
        if (*v115)
        {
          v12 = COERCE_DOUBLE(vcvt_f32_f64(v111));
          v13 = COERCE_DOUBLE(vcvt_f32_f64(v110));
          v14 = vadd_f32(*v114.i8, *v113.i8);
          v45 = (*(*v115 + 56) + *&v115[8]);
          *v45 = vcvt_f32_f64(v112);
          *&v45[1] = v12;
          *&v45[2] = v13;
          v45[3] = v35;
          v45[4] = vmla_f32(v38, 0x3F0000003F000000, v37);
          v45[5].i32[0] = v36;
          v45[5].i32[1] = v14.i32[0];
          v45[6].f32[0] = v43;
          v44 = *v115;
          v11 = *&v115[8];
        }

        else
        {
          v11 = 0uLL;
        }

        *(v18 + 2) = v44;
        *(v18 + 24) = v11;
        ++v15;
        v46 = a1[2];
        v16 += 10;
        v18 += 40;
      }

      while (v15 < v46);
    }

    else
    {
      v46 = 0;
    }

    v47 = v108;
    if (v108)
    {
      v48 = vclez_s32(*(&v118 + 8));
      *&v11 = vpmax_u32(v48, v48);
      if ((v11 & 0x80000000) != 0)
      {
LABEL_101:
        if (v10 <= 0x1000)
        {
          return;
        }

        goto LABEL_102;
      }
    }

    *&v110.f64[0] = *(a1 + 8) == 1;
    v49 = *(a1 + 9);
    v105 = v10;
    v107 = v9;
    if (v49 - 2 >= 3)
    {
      if (v49)
      {
        v50 = 0;
LABEL_37:
        if (v49 < 2)
        {
LABEL_61:
          v113.i32[0] = 0;
          goto LABEL_62;
        }

        LODWORD(v11) = *(a1 + 3);
LABEL_39:
        if (*&v11 > 0.0)
        {
          v51 = (*a1)[21];
          v52 = (*a1)[22];
          *v115 = v51;
          *&v115[8] = v52;
          RB::Bounds::intersect(v115, *&v118, *(&v118 + 8));
          v114.i64[0] = v5;
          v53 = *a1;
          v12 = *&v115[8];
          *&v11 = *v115;
          v53[21] = *v115;
          *&v53[22] = v12;
          v113.i32[0] = v9 & v47;
          if ((v9 & v47) == 1)
          {
            v54 = *a1;
            v54[23].i8[0] = 1;
            v54[23].i32[1] = 1;
          }

          if (a1[2])
          {
            v55 = 0;
            *&v112.f64[0] = 131098;
            do
            {
              v56 = &v109[40 * v55];
              v57 = vclez_s32(*(v56 + 8));
              *&v11 = vpmax_u32(v57, v57);
              if ((v11 & 0x80000000) == 0)
              {
                v58 = *a1;
                v58[24].i32[0] = RB::RenderFrame::buffer_id(*(**a1 + 16), *(v56 + 2));
                *&v11 = vmovn_s64(*(v56 + 24));
                *(&v58[24] + 4) = v11;
                v59 = a1[3];
                if (v59[10 * v55])
                {
                  v60 = 0;
                  v61 = 0;
                  do
                  {
                    v62 = v59[10 * v55 + 1];
                    v63 = *&v62 + v60;
                    if (*(*&v62 + v60 + 24))
                    {
                      v64 = *a1;
                      v64[25].i32[1] = RB::RenderFrame::buffer_id(*(**a1 + 16), *v63);
                      v64[26] = vmovn_s64(*(*&v62 + v60 + 8));
                      v65 = *&v112.f64[0];
                      if ((*a1)[16].i32[1] != 2)
                      {
                        v65 = 26;
                      }

                      v66 = 0xF00000000;
                      if (*(*&v62 + v60 + 28) == 2)
                      {
                        v66 = 0xF00000040;
                      }

                      RB::RenderPass::draw_indexed_primitives(*a1, (v66 | v65), 4, v114.i64[0] + 136, 0x40uLL, (*(v63 + 24) + 12) / 0xDuLL, *v56, *(v56 + 8));
                      v64[26] = 0;
                      v64[25].i32[1] = 0;
                      v59 = a1[3];
                    }

                    ++v61;
                    v60 += 32;
                  }

                  while (v61 < *&v59[10 * v55]);
                }
              }

              ++v55;
            }

            while (v55 < a1[2]);
          }

          v67 = *(a1 + 9);
          v68 = 10;
          if (v67 == 3)
          {
            v68 = 6;
          }

          v69 = v67 == 2;
          v70 = 2;
          if (!v69)
          {
            v70 = v68;
          }

          v104 = v70;
          v71 = *a1;
          v71[21] = v51;
          v71[22] = v52;
          v47 = v108;
          v5 = v114.i64[0];
          if (!a1[2])
          {
            goto LABEL_92;
          }

          goto LABEL_63;
        }

        goto LABEL_61;
      }

      if (!v9)
      {
        v113.i32[0] = 0;
        v50 = 1;
LABEL_62:
        v104 = 1;
        if (!v46)
        {
LABEL_92:
          v10 = v105;
          v99 = v107;
          if (v107)
          {
            if ((v108 | v113.i32[0]))
            {
              v100 = *a1;
              if (v108)
              {
                v101 = 6;
              }

              else
              {
                v101 = 2;
              }

              v100[23].i8[0] = v101;
              v100[23].i32[1] = 0;
            }

            RB::Bounds::inset(&v118, 0xFFFFFFFF, 0xFFFFFFFF, *&v11, v12, v13, v14);
          }

          (**v106)(v106, a1, (16 * LODWORD(v110.f64[0])) | v104, *&v118, *(&v118 + 1));
          if (v99)
          {
            v102 = *a1;
            v102[23].i8[0] = 0;
            v102[23].i32[1] = 0;
          }

          goto LABEL_101;
        }

LABEL_63:
        v114.i64[0] = v50;
        v72 = 0.0;
        v73 = v107 & v47;
        v74 = v5;
        LODWORD(v111.f64[0]) = v107 & v47;
        do
        {
          v75 = &v109[40 * *&v72];
          v76 = vclez_s32(*(v75 + 8));
          *&v11 = vpmax_u32(v76, v76);
          if ((v11 & 0x80000000) == 0)
          {
            v77 = *a1;
            v77[24].i32[0] = RB::RenderFrame::buffer_id(*(**a1 + 16), *(v75 + 2));
            *&v11 = vmovn_s64(*(v75 + 24));
            *(&v77[24] + 4) = v11;
            v78 = a1[3];
            if (v78[10 * *&v72])
            {
              v79 = 0;
              v80 = 0;
              v112.f64[0] = v72;
              do
              {
                v81 = v78[10 * *&v72 + 1];
                v82 = *&v81 + v79;
                if (*(*&v81 + v79 + 24))
                {
                  v83 = *a1;
                  v83[25].i32[1] = RB::RenderFrame::buffer_id(*(**a1 + 16), *v82);
                  v83[26] = vmovn_s64(*(*&v81 + v79 + 8));
                  v84 = *(*&v81 + v79 + 28);
                  v85 = *a1;
                  v86 = (*a1)[16].i32[1];
                  if (v114.i32[0] == 1)
                  {
                    if (v86 == 2)
                    {
                      v89 = 131097;
                    }

                    else
                    {
                      v89 = 25;
                    }

                    if (v73)
                    {
                      v85[23].i8[0] = 1;
                      v113.i32[0] = 1;
                      v85[23].i32[1] = 1;
                    }

                    v69 = v84 == 2;
                    v90 = 0xB00000040;
                    if (!v69)
                    {
                      v90 = 0xB00000000;
                    }

                    RB::RenderPass::draw_indexed_primitives(v85, (v90 | v89), 4, v74 + 136, 0x40uLL, (*(v82 + 24) + 12) / 0xDuLL, *v75, *(v75 + 8));
                  }

                  else if (v114.i32[0])
                  {
                    v91 = v84 == 2;
                    if (v86 == 2)
                    {
                      v92 = 131095;
                    }

                    else
                    {
                      v92 = 23;
                    }

                    v93 = v74;
                    v94 = v92 | (v91 << 6);
                    v85[23].i8[0] = 1;
                    v85[23].i32[1] = 1;
                    RB::RenderPass::draw_indexed_primitives(v85, v94, 1, v93 + 88, 0x40uLL, (*(v82 + 24) + 31) >> 5, *v75, *(v75 + 8));
                    v95 = v94 & 0x20040;
                    v96 = *a1;
                    v96[23].i8[0] = 7;
                    v96[23].i32[1] = 2;
                    v97 = v95 + 0xB00000040;
                    RB::RenderPass::draw_indexed_primitives(v96, (v95 + 0xB00000018), 3, v93 + 112, 0x3FuLL, (*(v82 + 24) + 20) / 0x15u, *v75, *(v75 + 8));
                    v98 = *a1;
                    v98[23].i8[0] = 7;
                    v98[23].i32[1] = 3;
                    RB::RenderPass::draw_indexed_primitives(v98, (v97 - 39), 4, v93 + 136, 0x40uLL, (*(v82 + 24) + 12) / 0xDuLL, *v75, *(v75 + 8));
                    v73 = LODWORD(v111.f64[0]);
                    v74 = v93;
                    v113.i32[0] = 1;
                    v72 = v112.f64[0];
                  }

                  else
                  {
                    v69 = v86 == 2;
                    v87 = 131096;
                    if (!v69)
                    {
                      v87 = 24;
                    }

                    if (v73)
                    {
                      v85[23].i8[0] = 1;
                      v113.i32[0] = 1;
                      v85[23].i32[1] = 1;
                    }

                    v69 = v84 == 2;
                    v88 = 0xB00000040;
                    if (!v69)
                    {
                      v88 = 0xB00000000;
                    }

                    RB::RenderPass::draw_indexed_primitives(v85, (v88 | v87), 3, v74 + 112, 0x3FuLL, (*(v82 + 24) + 20) / 0x15u, *v75, *(v75 + 8));
                  }

                  v83[26] = 0;
                  v83[25].i32[1] = 0;
                  v78 = a1[3];
                }

                ++v80;
                v79 += 32;
              }

              while (v80 < *&v78[10 * *&v72]);
            }
          }

          ++*&v72;
        }

        while (*&v72 < a1[2]);
        goto LABEL_92;
      }
    }

    else
    {
      LODWORD(v11) = *(a1 + 3);
      v50 = *&v11 <= 0.0;
      if (*&v11 > 0.0 || !v9)
      {
        goto LABEL_39;
      }
    }

    *&v11 = vmul_lane_s32(*(&v118 + 8), *(&v118 + 8), 1);
    if (v11 < 0x4000)
    {
      v50 = 1;
    }

    else
    {
      v50 = 2;
    }

    goto LABEL_37;
  }
}

void sub_195D3D814(_Unwind_Exception *exception_object)
{
  if (v1 > 0x1000)
  {
    free(*(v2 - 312));
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::Fill::Color::matches(RB::Fill::Color *this, float16x4_t *a2)
{
  v2 = *this;
  v3 = vmovl_s16(vceq_f16(*this, 0xF800F800F800F800));
  if ((vminvq_u32(v3) & 0x80000000) != 0)
  {
    return 1;
  }

  v5 = *this;
  if (a2[1].i8[5] == 1)
  {
    v8[0] = *this;
    *(v8 + 6) = *(this + 6);
    v3.i64[0] = 0;
    RB::Fill::Color::convert(v8, a2[1].u8[4], v3);
    v5 = v8[0];
  }

  v6 = vcvtq_f32_f16(*a2);
  return vminvq_u32(vcgtq_f32(vdupq_n_s32(0x3B008081u), vabdq_f32(vbslq_s8(vmovl_s16(vceq_f16(v2, 0xF800F800F800F800)), v6, vcvtq_f32_f16(v5)), v6))) >> 31;
}

int32x2_t *RB::Path::Renderer::render(RB::Fill::Color const&,BOOL,RB::BlendMode)::Paint::fill(uint64_t a1, float32x2_t **a2, __int16 a3, int32x2_t a4, int32x2_t a5)
{
  v7 = a4;
  a4.i32[0] = 0;
  v9 = *a2;
  v10 = vceq_s32(a5, 0x8000000080000000);
  v11 = vdup_lane_s32(vcgt_s32(a4, vpmin_u32(v10, v10)), 0);
  RB::Coverage::set_plane(&v22, *a2, vbsl_s8(v11, 0x100000001000000, vcvt_f32_s32(v7)), COERCE_DOUBLE(vbsl_s8(v11, vneg_f32(0x80000000800000), vcvt_f32_s32(a5))));
  v12.i32[0] = v9[15].i32[1];
  RB::Fill::Color::prepare(*(a1 + 8), v9[16].u8[0], v12, v13, v14);
  *&v23[12] = v15;
  RB::RenderFrame::alloc_buffer_region(*(*v9 + 16), 0x24, 4uLL, 0, &v24);
  v16 = v24;
  if (v24)
  {
    v17 = *(v24 + 7) + v25.i64[0];
    v18 = v22;
    v19 = *v23;
    *(v17 + 32) = *&v23[16];
    *v17 = v18;
    *(v17 + 16) = v19;
  }

  else
  {
    v24 = 0;
    v25 = 0uLL;
  }

  v9[24].i32[0] = RB::RenderFrame::buffer_id(*(*v9 + 16), v16);
  *(&v9[24] + 4) = vmovn_s64(v25);
  v20 = 18;
  if (v9[16].i32[1] == 2)
  {
    v20 = 131090;
  }

  return RB::RenderPass::draw_indexed_primitives(v9, (v20 & 0xFFFFFFFFFFFF003FLL | ((a3 & 0x3FF) << 6) | (*(a1 + 16) << 16) | ((*(a1 + 20) & 0x3F) << 32)), 4, **(*v9 + 16) + 136, 4uLL, 1uLL, v7, a5);
}

double RB::Path::cubic_bounds_slow(int8x16_t a1, float32x2_t a2, int8x16_t a3, float32x2_t a4, double a5, double a6, int32x4_t a7, int8x16_t a8)
{
  v12 = *a1.i8;
  __asm { FMOV            V0.2S, #-3.0 }

  *v8.i8 = vmla_f32(vsub_f32(a4, vmla_f32(v12, _D0, a2)), _D0, *a3.i8);
  v18 = vadd_f32(vsub_f32(v12, vadd_f32(a2, a2)), *a3.i8);
  *v10.i8 = vadd_f32(v18, v18);
  *a8.i8 = vsub_f32(a2, v12);
  *a1.i8 = vminnm_f32(v12, a4);
  __asm { FMOV            V6.2S, #-4.0 }

  *v11.i8 = vmla_f32(vmul_f32(vmul_f32(*a8.i8, _D6), *v8.i8), *v10.i8, *v10.i8);
  *v9.i8 = vcltz_f32(*v11.i8);
  if ((vpmin_u32(*v9.i8, *v9.i8).u32[0] & 0x80000000) == 0)
  {
    __asm { FMOV            V6.2S, #1.0 }

    *v10.i8 = vmul_f32(vmla_f32(*v10.i8, vorr_s8(vand_s8(*v10.i8, 0x8000000080000000), _D6), vsqrt_f32(*v11.i8)), 0xBF000000BF000000);
    *v11.i8 = vrecpe_f32(*v8.i8);
    *v11.i8 = vmul_f32(vrecps_f32(*v8.i8, *v11.i8), *v11.i8);
    *v11.i8 = vmul_f32(vmul_f32(vrecps_f32(*v8.i8, *v11.i8), *v10.i8), *v11.i8);
    *v8.i8 = vorr_s8(*v9.i8, vceqz_f32(*v8.i8));
    __asm { FMOV            V20.4S, #-1.0 }

    v26 = vbslq_s8(vcltzq_s32(v8), _Q20, v11);
    v22 = vrecpe_f32(*v10.i8);
    v23 = vmul_f32(vrecps_f32(*v10.i8, v22), v22);
    *a8.i8 = vmul_f32(vrecps_f32(*v10.i8, v23), vmul_f32(*a8.i8, v23));
    *v9.i8 = vorr_s8(vceqz_f32(*v10.i8), *v9.i8);
    v24 = vbslq_s8(vcltzq_s32(v9), _Q20, a8);
    *v10.i8 = vminnm_f32(*v26.i8, *v24.i8);
    v25 = vdup_n_s32(0x358637BDu);
    *v26.i8 = vmaxnm_f32(*v26.i8, *v24.i8);
    *v24.i8 = vcgt_f32(v25, *v10.i8);
    v27 = vcltzq_s32(v24);
    v28 = vbslq_s8(v27, v26, v10).u64[0];
    *v10.i8 = vand_s8(vcgt_f32(v28, v25), vcgt_f32(vdup_n_s32(0x3F7FFFEFu), v28));
    if ((vpmax_u32(*v10.i8, *v10.i8).u32[0] & 0x80000000) != 0)
    {
      v29.i64[0] = 0x4000000040000000;
      v29.i64[1] = 0x4000000040000000;
      v30 = vbslq_s8(v27, v29, v26).u64[0];
      *v29.i8 = vsub_f32(_D6, v28);
      __asm { FMOV            V17.2S, #3.0 }

      *v29.i8 = vminnm_f32(*a1.i8, vmla_f32(vmul_f32(vmul_f32(v28, a4), vmul_f32(v28, v28)), *v29.i8, vmla_f32(vmul_f32(vmul_f32(*v29.i8, *v29.i8), v12), vmla_f32(vmul_f32(v28, *a3.i8), a2, *v29.i8), vmul_f32(v28, _D17))));
      a1 = vbslq_s8(vcltzq_s32(v10), v29, a1);
      v32 = vsub_f32(_D6, v30);
      *a7.i8 = vcgt_f32(v32, v25);
      if ((vpmax_u32(*a7.i8, *a7.i8).u32[0] & 0x80000000) != 0)
      {
        *a3.i8 = vminnm_f32(*a1.i8, vmla_f32(vmul_f32(vmul_f32(v30, a4), vmul_f32(v30, v30)), v32, vmla_f32(vmul_f32(vmul_f32(v32, v32), v12), vmla_f32(vmul_f32(v30, *a3.i8), a2, v32), vmul_f32(v30, _D17))));
        a1.i64[0] = vbslq_s8(vcltzq_s32(a7), a3, a1).u64[0];
      }
    }
  }

  return *a1.i64;
}

uint64_t RB::DisplayList::Predicate::matches_color(RB::DisplayList::Predicate *this, const RB::Fill::Color *a2)
{
  if (*(this + 3))
  {
    v2 = *(this + 3);
  }

  else
  {
    v2 = this;
  }

  v3 = *(this + 8);
  if (!v3)
  {
    return 1;
  }

  v5 = (v2 + 8);
  v6 = 24 * v3;
  while (1)
  {
    v7 = *(v5 - 2);
    if (v7 != 3)
    {
      break;
    }

    v8 = *v5;
    if (RB::DisplayList::Predicate::matches_color(*v5, a2) == *(v8 + 40))
    {
      return 0;
    }

LABEL_11:
    v5 += 3;
    v6 -= 24;
    if (!v6)
    {
      return 1;
    }
  }

  if (v7 != 2 || (RB::Fill::Color::matches(v5, a2) & 1) != 0)
  {
    goto LABEL_11;
  }

  return 0;
}

double RB::ColorSpace::Conversion::operator()(float32x4_t *a1, float32x4_t a2)
{
  v2 = a2;
  v3 = a1->u16[0];
  if ((v3 & 0x1C0) == 0 && ((v3 ^ (v3 >> 3)) & 7) == 0)
  {
    return *v2.i64;
  }

  v6 = v3 & 7;
  if (v6 <= 1)
  {
    if (v6 != 1)
    {
      goto LABEL_14;
    }

    v39 = vabsq_f32(a2);
    v8 = vmlaq_f32(vdupq_n_s32(0x3D558919u), vdupq_n_s32(0x3F72A76Eu), v39);
    v8.i32[3] = 0;
    v45 = v2;
    v9 = vmulq_f32(_simd_log2_f4(v8), vdupq_n_s32(0x4019999Au));
    v9.i32[3] = 0;
    v10 = _simd_exp2_f4(v9);
    v11 = vcgeq_f32(vdupq_n_s32(0x3D25AEE6u), v39);
    v11.i32[3] = 0;
    v12 = vbslq_s8(vcltzq_s32(v11), vmulq_f32(v39, vdupq_n_s32(0x3D9E8391u)), v10);
    goto LABEL_13;
  }

  switch(v6)
  {
    case 2:
      v13 = a1->f32[1];
      v40 = vabsq_f32(a2);
      v43 = vmulq_n_f32(v40, a1->f32[2]);
      v14 = v40;
      v14.i32[3] = 0;
      v45 = v2;
      v15 = vmulq_n_f32(_simd_log2_f4(v14), v13);
      v15.i32[3] = 0;
      v16 = _simd_exp2_f4(v15);
      v17 = &a1->f32[3];
      v18 = vld1q_dup_f32(v17);
      v19 = vcgeq_f32(v40, v18);
      v19.i32[3] = 0;
      v12 = vbslq_s8(vcltzq_s32(v19), v16, v43);
LABEL_13:
      v20 = vcltzq_f32(v45);
      v20.i32[3] = 0;
      v2 = vbslq_s8(vcltzq_s32(v20), vnegq_f32(v12), v12);
      goto LABEL_14;
    case 3:
      *v7.i64 = RB::unapply_pq<float,3>(a2);
      break;
    case 4:
      *v7.i64 = RB::unapply_hlg<float>(a2);
      break;
    default:
      goto LABEL_14;
  }

  v2 = v7;
LABEL_14:
  if ((a1->i16[0] & 0x80) != 0)
  {
    v2 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1[5], v2.f32[0]), a1[6], *v2.f32, 1), a1[7], v2, 2);
  }

  if ((a1->i16[0] & 0x40) != 0)
  {
    *v38.i64 = RB::ColorSpace::ToneMapParams<float>::operator()(&a1[1].f32[3], v2);
    v2 = v38;
    v21 = a1->i16[0];
    if ((a1->i16[0] & 0x100) != 0)
    {
      v2 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1[8], v38.f32[0]), a1[9], *v38.f32, 1), a1[10], v38, 2);
    }
  }

  else
  {
    v21 = a1->i16[0];
  }

  v22 = (v21 >> 3) & 7;
  if (v22 <= 1)
  {
    if (v22 != 1)
    {
      return *v2.i64;
    }

    v41 = vabsq_f32(v2);
    v24 = v41;
    v24.i32[3] = 0;
    v46 = v2;
    v25 = vmulq_f32(_simd_log2_f4(v24), vdupq_n_s32(0x3ED555C5u));
    v25.i32[3] = 0;
    v26 = vmlaq_f32(vdupq_n_s32(0xBD6147AE), vdupq_n_s32(0x3F870A3Du), _simd_exp2_f4(v25));
    v27 = vcgeq_f32(vdupq_n_s32(0x3B4D2E1Cu), v41);
    v27.i32[3] = 0;
    v28 = vbslq_s8(vcltzq_s32(v27), vmulq_f32(v41, vdupq_n_s32(0x414EB852u)), v26);
LABEL_26:
    v36 = vcltzq_f32(v46);
    v36.i32[3] = 0;
    v2.i64[0] = vbslq_s8(vcltzq_s32(v36), vnegq_f32(v28), v28).u64[0];
    return *v2.i64;
  }

  switch(v22)
  {
    case 2:
      v29 = a1[1].f32[0];
      v42 = vabsq_f32(v2);
      v44 = vmulq_n_f32(v42, a1[1].f32[1]);
      v30 = v42;
      v30.i32[3] = 0;
      v46 = v2;
      v31 = vmulq_n_f32(_simd_log2_f4(v30), v29);
      v31.i32[3] = 0;
      v32 = _simd_exp2_f4(v31);
      v33 = &a1[1].f32[2];
      v34 = vld1q_dup_f32(v33);
      v35 = vcgeq_f32(v42, v34);
      v35.i32[3] = 0;
      v28 = vbslq_s8(vcltzq_s32(v35), v32, v44);
      goto LABEL_26;
    case 3:
      v23 = RB::apply_pq<float,3>(v2);
      goto LABEL_33;
    case 4:
      v23 = RB::apply_hlg<float>(v2);
LABEL_33:
      *v2.i64 = v23;
      break;
  }

  return *v2.i64;
}

void *RB::DisplayList::GenericClip<RB::Coverage::Path>::copy(uint64_t a1, RB::DisplayList::CachedTransform *this, uint64_t a3, int a4)
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
  v10 = v9;
  if ((*(a1 + 45) & 4) != 0)
  {
    v12 = *(a1 + 45) & 4;
  }

  else if (*(*this + 288) == 1)
  {
    v21[0] = &unk_1F0A39480;
    v21[1] = v7 + 2;
    v21[2] = a1;
    v22 = v8;
    v23 = v9;
    v24 = 0;
    RB::Coverage::Path::simplify(a1 + 56, v21);
    v11 = v24;
    v12 = 4;
    if (v24)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = 0;
  }

  v11 = (v7[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v11 + 96 > v7[5])
  {
    v11 = RB::Heap::alloc_slow(v7 + 2, 0x60uLL, 7);
  }

  else
  {
    v7[4] = v11 + 96;
  }

  v13 = *(a1 + 88);
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 40) = 0;
  *(v11 + 32) = 0;
  *(v11 + 44) = v8;
  *(v11 + 45) = 0;
  *v11 = &unk_1F0A3D298;
  *(v11 + 48) = v10;
  *(v11 + 56) = RBPathRetain(*(a1 + 56), *(a1 + 64));
  *(v11 + 64) = v14;
  v15 = *(a1 + 72);
  if (v15)
  {
    v16 = ((v7[4] + 15) & 0xFFFFFFFFFFFFFFF0);
    if ((v16 + 3) > v7[5])
    {
      v16 = RB::Heap::alloc_slow(v7 + 2, 0x30uLL, 15);
    }

    else
    {
      v7[4] = (v16 + 3);
    }

    v17 = *v15;
    v18 = v15[2];
    v16[1] = v15[1];
    v16[2] = v18;
    *v16 = v17;
  }

  else
  {
    v16 = 0;
  }

  *(v11 + 72) = v16;
  *(v11 + 80) = *(a1 + 80);
  *(v11 + 84) = *(a1 + 84);
  *(v11 + 88) = v13;
  RB::DisplayList::GenericClip<RB::Coverage::Path>::update_bounds(v11);
LABEL_18:
  *(v11 + 32) = RB::DisplayList::CachedTransform::transform_metadata(this, *(a1 + 32), *(a1 + 40));
  *(v11 + 40) = v19;
  *(v11 + 45) |= v12;
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

uint64_t RB::Symbol::Glyph::copied_glyph(RB::Symbol::Glyph *this)
{
  os_unfair_lock_lock(this + 121);
  v2 = *(this + 62);
  if (!v2)
  {
    v3 = [*this copy];

    *(this + 62) = v3;
    [v3 setVariableMinValue:INFINITY];
    [*(this + 62) setVariableMaxValue:INFINITY];
    v2 = *(this + 62);
  }

  os_unfair_lock_unlock(this + 121);
  return v2;
}

void *RB::DisplayList::Predicate::clear(void *this)
{
  v1 = this;
  if (this[3])
  {
    this = this[3];
  }

  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = 24 * v2;
    do
    {
      RB::DisplayList::Predicate::Term::~Term(this);
      this = (v4 + 24);
      v3 -= 24;
    }

    while (v3);
  }

  *(v1 + 8) = 0;
  return this;
}

uint64_t RB::DisplayList::GenericClip<RB::Coverage::Path>::contains(uint64_t a1, float32x2_t a2, float32x2_t a3)
{
  if (*(a1 + 44) != 1)
  {
    return 0;
  }

  v11[2] = v6;
  v11[3] = v5;
  v11[4] = v3;
  v11[5] = v4;
  if (*(a1 + 88) == 0.0)
  {
    return 1;
  }

  v12.var1 = *(a1 + 48);
  v12.var0 = (a1 + 56);
  v11[0] = COERCE_FLOAT32X2_T(RB::Coverage::Path::bounds(v12));
  v11[1] = v10;
  return RB::Rect::intersects(v11, a2, a3) ^ 1;
}

uint64_t RB::DisplayList::Layer::render_items(uint64_t this, RB::CGContext *a2, char *a3)
{
  v3 = (this + 16);
  if (a3)
  {
    v3 = (a3 + 8);
  }

  v4 = *v3;
  if (*v3)
  {
    v6 = 0;
    do
    {
      if (v6)
      {
        if (v6 == v4)
        {
          v6 = 0;
        }
      }

      else
      {
        v7 = v4[3];
        if (!v7)
        {
          goto LABEL_25;
        }

        v8 = v4[1];
        if (!v8)
        {
          goto LABEL_25;
        }

        v9 = *(v8 + 24);
        v6 = v4;
        while (v9 == v7)
        {
          v6 = v8;
          v8 = *(v8 + 8);
          if (!v8)
          {
            break;
          }

          v9 = *(v8 + 24);
        }

        if (v6 != v4)
        {
          v10 = (*(*v4 + 136))(v4, 0);
          v21 = v10;
          v22 = v11;
          v14 = v4[1];
          if (v14 != v6)
          {
            do
            {
              v15 = (*(*v14 + 136))(v14, 0);
              RB::Rect::Union(&v21, v15, v16);
              v14 = v14[1];
            }

            while (v14 != v6);
            v10 = v21;
            v11 = v22;
          }

          v17 = *(a2 + 35);
          v18 = *(a2 + 36);
          RB::Bounds::Bounds(&v20, *&v10, v11, v12, v13);
          if (*(a2 + 11) == v7 && RB::Bounds::contains(a2 + 12, *&v20, *(&v20 + 8)))
          {
            v19 = 1;
            if (!*(a2 + 10) && *(a2 + 35) == v17 && *(a2 + 36) == v18)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v19 = 0;
          }

          RB::CGContext::update_state_slow(a2, 0, v7, v18, &v20, v19, v17);
        }

        else
        {
LABEL_25:
          v6 = 0;
        }
      }

LABEL_28:
      this = (*(*v4 + 176))(v4, a2);
      v4 = v4[1];
    }

    while (v4);
  }

  return this;
}

uint64_t RB::CGContext::compatible_layer_flags(RB::CGContext *this, __int16 a2)
{
  if ((a2 & 0x800) != 0)
  {
    return 0;
  }

  if ((a2 & 0x4000) == 0)
  {
    return 1;
  }

  Type = *(this + 38);
  if (Type < 0)
  {
    Type = CGContextGetType();
    *(this + 38) = Type;
  }

  if (Type == 4)
  {
    if ((*(this + 168) & 1) != 0 || CGBitmapContextGetAlphaInfo(*this) != kCGImageAlphaOnly)
    {
      return 1;
    }
  }

  else if (Type != 2 && (Type != 1 || (a2 & 0x8000) == 0))
  {
    return 1;
  }

  return 0;
}

uint64_t RBDrawingStateBeginCGContext(uint64_t a1, int a2, float a3)
{
  [*(a1 + 8) deviceScale];

  return begin_cgcontext(a1, a3, v6, a2);
}

int *RB::TextIdentity::TextIdentity(int *a1, _DWORD *a2, int a3, unsigned int a4)
{
  *a1 = *a2 & 3 | (4 * a4);
  if (a4)
  {
    memmove(a1 + 1, &a2[a3 + 1], 4 * a4);
  }

  return a1;
}

void RB::CGContext::update_state_slow(uint64_t a1, float64x2_t *a2, float32x2_t *a3, unsigned int a4, _OWORD *a5, char a6, float a7)
{
  if (a6)
  {
    if ((*(a1 + 149) & 1) == 0)
    {
      CGContextSaveGState(*a1);
      *(a1 + 149) = 1;
    }

    goto LABEL_35;
  }

  if (*(a1 + 149) != 1)
  {
    goto LABEL_11;
  }

  CGContextRestoreGState(*a1);
  v14 = *(a1 + 472);
  if (v14)
  {
    v15 = a1 + 176;
    if (*(a1 + 464))
    {
      v15 = *(a1 + 464);
    }

    v16 = v15 + 72 * (v14 - 1);
    v46 = *v16;
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    v19 = *(v16 + 32);
    v20 = *(v16 + 40) | (*(v16 + 44) << 32);
    v21 = *(v16 + 46);
    v22 = *(v16 + 54) | (*(v16 + 58) << 32);
    LODWORD(v13) = *(v16 + 60);
    v23 = *(v16 + 64);
    LOBYTE(v14) = *(v16 + 68);
    v24 = *(v16 + 69);
  }

  else
  {
    v24 = 0;
    v22 = 0;
    v20 = 0;
    v17 = vdup_n_s32(0xC0000001);
    v46 = 0uLL;
    v21 = 0x3C00000000000000;
    v18 = 0x8000000080000000;
    v23 = 2;
    LODWORD(v13) = 1.0;
    v19 = 0x3C00000000000000;
  }

  v25 = v46;
  *(a1 + 80) = v46;
  *(a1 + 96) = v17;
  *(a1 + 104) = v18;
  *(a1 + 112) = v19;
  *(a1 + 120) = v20;
  *(a1 + 124) = WORD2(v20);
  *(a1 + 126) = v21;
  *(a1 + 134) = v22;
  *(a1 + 138) = WORD2(v22);
  *(a1 + 140) = LODWORD(v13);
  *(a1 + 144) = v23;
  *(a1 + 148) = v14;
  *(a1 + 149) = v24;
  if ((v24 & 1) == 0)
  {
LABEL_11:
    CGContextSaveGState(*a1);
    *(a1 + 149) = 1;
  }

  *(a1 + 96) = vdup_n_s32(0xC0000001);
  *(a1 + 88) = a3;
  *(a1 + 104) = 0x8000000080000000;
  if (*(a1 + 80))
  {
    v26 = *(a1 + 48);
    v46 = *(a1 + 32);
    v47 = v26;
    v48 = *(a1 + 64);
    CGContextSetCTM();
    *(a1 + 80) = 0;
  }

  if (!a3)
  {
    v28 = 0;
    v27 = 0;
    goto LABEL_29;
  }

  v27 = 0;
  v28 = 0;
  v29 = a3;
  do
  {
    v30 = *&v29[1] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v30 + 44) == 1)
    {
      v27 = 1;
    }

    else if (*(v30 + 45))
    {
      if (*(a1 + 148) != 1)
      {
        RB::CGContext::set_aliasing_mode_slow(a1, 1);
      }

      v49.origin.x = COERCE_FLOAT(*(v30 + 16));
      v49.origin.y = COERCE_FLOAT(HIDWORD(*(v30 + 16)));
      v49.size.width = COERCE_FLOAT(*(v30 + 24));
      v49.size.height = COERCE_FLOAT(HIDWORD(*(v30 + 24)));
      CGContextClipToRect(*a1, v49);
    }

    else if ((*(*v30 + 104))(*&v29[1] & 0xFFFFFFFFFFFFFFFELL) == 1.0)
    {
      (*(*v30 + 88))(v30, a1);
    }

    else
    {
      v28 = 1;
    }

    v29 = *v29;
  }

  while (v29);
  if ((v27 & 1) == 0)
  {
LABEL_29:
    if ((v28 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  *(a1 + 96) = *a5;
  v46 = *a5;
  RB::Bounds::Bounds(&v44, a3[2], a3[3], v13, v25);
  RB::Bounds::intersect(&v46, v44, v45);
  ClipBoundingBox = CGContextGetClipBoundingBox(*a1);
  y = ClipBoundingBox.origin.y;
  height = ClipBoundingBox.size.height;
  RB::Bounds::Bounds(&v44, vcvt_f32_f64(ClipBoundingBox.origin), vcvt_f32_f64(ClipBoundingBox.size), ClipBoundingBox.size.width, *&ClipBoundingBox.size.height);
  RB::Bounds::intersect(&v46, v44, v45);
  v33 = vcgtz_s32(*(&v46 + 8));
  v34 = vpmin_u32(v33, v33);
  if (v34.i32[0] < 0)
  {
    v34.i32[0] = 0;
    v35 = vceq_s32(*(&v46 + 8), 0x8000000080000000);
    v36 = vdup_lane_s32(vcgt_s32(v34, vpmin_u32(v35, v35)), 0);
    v37 = vbsl_s8(v36, vneg_f32(0x80000000800000), vcvt_f32_s32(*(&v46 + 8)));
    v38 = vbsl_s8(v36, 0x100000001000000, vcvt_f32_s32(*&v46));
    if (v27)
    {
      v44 = a3;
      RB::CGContext::add_soft_mask(a1, 2, &v44, RB::CGContext::add_soft_mask<RB::CGContext::update_state_slow(RB::AffineTransform const*,RB::DisplayList::ClipNode const*,float,RB::BlendMode,RB::Bounds const&,BOOL)::$_0>(RB::CGContext::SoftMaskMode,RB::Rect,RB::CGContext::update_state_slow(RB::AffineTransform const*,RB::DisplayList::ClipNode const*,float,RB::BlendMode,RB::Bounds const&,BOOL)::$_0 const&)::{lambda(RB::CGContext&,void const*)#1}::__invoke, v38, v37);
    }

    if (v28)
    {
      v44 = a3;
      RB::CGContext::add_soft_mask(a1, 0, &v44, RB::CGContext::add_soft_mask<RB::CGContext::update_state_slow(RB::AffineTransform const*,RB::DisplayList::ClipNode const*,float,RB::BlendMode,RB::Bounds const&,BOOL)::$_1>(RB::CGContext::SoftMaskMode,RB::Rect,RB::CGContext::update_state_slow(RB::AffineTransform const*,RB::DisplayList::ClipNode const*,float,RB::BlendMode,RB::Bounds const&,BOOL)::$_1 const&)::{lambda(RB::CGContext&,void const*)#1}::__invoke, v38, v37);
    }
  }

LABEL_35:
  if (*(a1 + 80) != a2)
  {
    *(a1 + 80) = a2;
    if (a2)
    {
      *&v39 = RB::operator*(a2, (a1 + 32));
    }

    else
    {
      v39 = *(a1 + 32);
      v40 = *(a1 + 48);
      v41 = *(a1 + 64);
    }

    v46 = v39;
    v47 = v40;
    v48 = v41;
    CGContextSetCTM();
  }

  if (*(a1 + 140) != a7)
  {
    *(a1 + 140) = a7;
    CGContextSetAlpha(*a1, a7);
  }

  if (*(a1 + 144) != a4)
  {
    *(a1 + 144) = a4;
    v42 = *a1;
    v43 = RB::cg_blend_mode(a4);
    CGContextSetBlendMode(v42, v43);
  }
}

uint64_t RB::Symbol::Animator::set_hidden(os_unfair_lock_s *this, int a2)
{
  os_unfair_lock_lock(this);
  v4 = ((*(*&this[2]._os_unfair_lock_opaque + 107) & 1) == 0) ^ a2;
  if ((v4 & 1) == 0)
  {
    RB::Symbol::Model::copy_on_write(&this[2]);
    if (a2)
    {
      v5 = 0x1000000;
    }

    else
    {
      v5 = 0;
    }

    *(*&this[2]._os_unfair_lock_opaque + 104) = *(*&this[2]._os_unfair_lock_opaque + 104) & 0xFEFFFFFF | v5;
    ++*(*&this[2]._os_unfair_lock_opaque + 100);
    ++this[15]._os_unfair_lock_opaque;
  }

  os_unfair_lock_unlock(this);
  return v4 ^ 1u;
}

void RB::DisplayList::Predicate::Term::~Term(RB::DisplayList::Predicate::Term *this)
{
  if (*this == 3)
  {
    v1 = *(this + 1);
    if (v1)
    {
      v2 = *(v1 + 24);
      if (v2)
      {
        v3 = *(v1 + 24);
      }

      else
      {
        v3 = *(this + 1);
      }

      if (*(v1 + 32))
      {
        v4 = 0;
        do
        {
          RB::DisplayList::Predicate::Term::~Term(v3);
          ++v4;
          v3 = (v5 + 24);
        }

        while (v4 < *(v1 + 32));
        v2 = *(v1 + 24);
      }

      if (v2)
      {
        free(v2);
      }

      MEMORY[0x19A8C09E0](v1, 0x1020C4057BCEDDBLL);
    }
  }
}

uint64_t RB::DisplayList::State::set_text_run(RB::DisplayList::State *this, CFTypeRef cf, RB::DisplayList::Builder *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    goto LABEL_18;
  }

  v5 = cf;
  {
    RB::DisplayList::State::set_text_run(objc_object *,RB::DisplayList::Builder &)::run_type = CTRunGetTypeID();
  }

  {
    RB::DisplayList::State::set_text_run(objc_object *,RB::DisplayList::Builder &)::array_type = CFArrayGetTypeID();
  }

  v6 = CFGetTypeID(v5);
  if (v6 == RB::DisplayList::State::set_text_run(objc_object *,RB::DisplayList::Builder &)::run_type)
  {
    v7 = 0;
LABEL_10:
    v11 = -1;
    goto LABEL_11;
  }

  if (v6 != RB::DisplayList::State::set_text_run(objc_object *,RB::DisplayList::Builder &)::array_type || CFArrayGetCount(v5) != 3)
  {
    v7 = 0;
    v5 = 0;
    goto LABEL_10;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
  v9 = CFArrayGetValueAtIndex(v5, 1);
  v10 = CFArrayGetValueAtIndex(v5, 2);
  v7 = [v9 unsignedIntValue];
  v11 = [v10 unsignedIntValue];
  v5 = ValueAtIndex;
LABEL_11:
  GlyphCount = CTRunGetGlyphCount(v5);
  if (GlyphCount > v7)
  {
    if (GlyphCount < v7 + v11)
    {
      v11 = GlyphCount - v7;
    }

    if (v11)
    {
      v14 = 4 * v11;
      v15 = v14 + 4;
      if (v11 <= 0x3FF)
      {
        MEMORY[0x1EEE9AC00](GlyphCount, v13);
        v16 = (v23 - ((v15 + 15) & 0xFFFFFFFF0));
        bzero(v16, v15);
      }

      else
      {
        v16 = malloc_type_malloc(v14 + 4, 0x100004077774924uLL);
        if (!v16)
        {
          v17 = 1;
LABEL_31:
          free(v16);
          return this & (v17 ^ 1);
        }
      }

      RB::TextIdentity::TextIdentity(v16, v5, v7, v11);
      v19 = *(this + 20);
      if (v19 && RB::TextIdentity::operator==(v16, v19))
      {
        v17 = 1;
      }

      else
      {
        v20 = *(a3 + 1);
        v21 = ((v20[4] + 3) & 0xFFFFFFFFFFFFFFFCLL);
        if (v21 + v15 > v20[5])
        {
          v21 = RB::Heap::alloc_slow(v20 + 2, v15, 3);
        }

        else
        {
          v20[4] = v21 + v15;
        }

        v22 = RB::TextIdentity::TextIdentity(v21, v16, 0, *v16 >> 2);
        v17 = 0;
        if (*(this + 20) == v22)
        {
          LODWORD(this) = 0;
        }

        else
        {
          *(this + 20) = v22;
          *(this + 15) = 0;
          LODWORD(this) = 1;
        }
      }

      if (v11 < 0x400)
      {
        return this & (v17 ^ 1);
      }

      goto LABEL_31;
    }
  }

LABEL_18:
  if (!*(this + 20))
  {
    return 0;
  }

  *(this + 20) = 0;
  *(this + 15) = 0;
  return 1;
}

CGLayer *RB::CGContext::add_soft_mask(uint64_t a1, int a2, uint64_t a3, void (*a4)(CGContextRef *, uint64_t), float32x2_t a5, float32x2_t a6)
{
  v48 = *MEMORY[0x1E69E9840];
  v38 = RB::Rect::from_bounds(vrndm_f32(a5), vrndp_f32(vadd_f32(a6, a5)));
  v11 = vcvtq_f64_f32(v10);
  height = v11.height;
  result = CGLayerCreateWithContext(0, v11, 0);
  if (result)
  {
    Context = CGLayerGetContext(result);
    CGContextTranslateCTM(Context, -*&v38, -*(&v38 + 1));
    RB::CGContext::CGContext(c, Context, *(a1 + 8), *(a1 + 16));
    Type = *(a1 + 152);
    if (Type < 0)
    {
      Type = CGContextGetType();
      *(a1 + 152) = Type;
    }

    v46 = Type;
    v47 = 1;
    if (CGContextGetSoftMask())
    {
      CGSoftMaskGetMatrix();
      v36 = v43;
      v37 = v42;
      v35 = v44;
      CGSoftMaskGetBounds();
      v17 = v16;
      v19 = v18;
      v34 = vmlaq_n_f64(vmlaq_n_f64(v44, v42, -v17), v43, -v19);
      v44 = v34;
      if (RB::AffineTransform::invert(&v42))
      {
        v20 = -1;
      }

      else
      {
        v20 = 0;
      }

      v21 = vdupq_n_s64(v20);
      v39 = vbslq_s8(v21, v42, v37);
      v40 = vbslq_s8(v21, v43, v36);
      v41 = vbslq_s8(v21, v44, v34);
      v22 = *(a1 + 48);
      v23 = vmlaq_n_f64(vmlaq_n_f64(*(a1 + 64), *(a1 + 32), *&v38), v22, *(&v38 + 1));
      v42 = *(a1 + 32);
      v43 = v22;
      v44 = v23;
      v24.f64[0] = RB::operator*(&v39, &v42);
      v27 = vandq_s8(vandq_s8(vceqq_f64(v25, v36), vceqq_f64(v24, v37)), vceqq_f64(v26, v35));
      if ((vandq_s8(vdupq_laneq_s64(v27, 1), v27).u64[0] & 0x8000000000000000) == 0)
      {
        v39 = xmmword_1F0A3EFE8;
        v40.i64[0] = off_1F0A3EFF8;
        operator new();
      }

      CGContextSetSoftMask();
      if (a2 == 2)
      {
        v42.f64[0] = 1.10008428e-19;
        WORD2(v42.f64[1]) = 0;
        LODWORD(v42.f64[1]) = 0;
        *_Q0.f32 = vmvn_s8(vceq_f16(c[14], 0x3C003C003C003C00));
        _Q0.i16[0] = vmaxv_u16(*_Q0.f32);
        if (_Q0.i8[0])
        {
          goto LABEL_15;
        }

        __asm { FCMP            H0, #0 }

        if (!_ZF)
        {
          goto LABEL_15;
        }

        __asm { FCMP            H0, #0 }

        if (!_ZF)
        {
LABEL_15:
          RB::CGContext::set_fill_color_slow(c, &v42, _Q0, 0x3C003C003C003C00);
        }

        v33 = c[0];
        ClipBoundingBox = CGContextGetClipBoundingBox(c[0]);
        CGContextFillRect(v33, ClipBoundingBox);
      }
    }

    a4(c, a3);
    v39 = xmmword_1F0A3F000;
    v40.i64[0] = off_1F0A3F010;
    operator new();
  }

  return result;
}

void sub_195D3F49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  RB::CGContext::~CGContext(&a33);
  CFRelease(v33);
  _Unwind_Resume(a1);
}

uint64_t RB::ContextDelegate::operation(uint64_t a1, uint64_t a2, const char *a3, const void *a4, void *a5)
{
  Info = CGContextDelegateGetInfo();
  if (CFEqual(a4, @"kCGContextClear"))
  {
    RB::ContextDelegate::update(Info, a3, a2, 0);
    [*(Info + 8) setInfinite];
    v14 = *(Info + 16);
    v15 = &RBColorClear;
LABEL_5:
    LODWORD(v10) = *v15;
    LODWORD(v11) = *(v15 + 1);
    LODWORD(v12) = *(v15 + 2);
    LODWORD(v13) = *(v15 + 3);
    [v14 setColor:{v10, v11, v12, v13}];
    RBDrawingStateDrawShape(*(Info + 504), *(Info + 8), *(Info + 16), 0x11u, 1.0);
    return 0;
  }

  if (CFEqual(a4, @"kCGContextErase"))
  {
    RB::ContextDelegate::update(Info, a3, a2, 0);
    [*(Info + 8) setInfinite];
    v14 = *(Info + 16);
    v15 = &RBColorWhite;
    goto LABEL_5;
  }

  if (CFEqual(a4, @"RBDisplayListAttributeTextRun"))
  {
    v17 = *(Info + 608);
    if (v17 == a5)
    {
      return 0;
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (a5)
    {
      v18 = CFRetain(a5);
    }

    else
    {
      v18 = 0;
    }

    result = 0;
    *(Info + 608) = v18;
  }

  else if (CFEqual(a4, @"RBShapeRenderingMode"))
  {
    result = [a5 objectForKeyedSubscript:@"value"];
    if (result)
    {
      *(Info + 616) = [result unsignedIntValue];
      result = [a5 objectForKeyedSubscript:@"argument"];
      if (result)
      {
        v19 = result;
        CTM = CGGStateGetCTM();
        v21 = *(CTM + 16);
        v22 = *(CTM + 32);
        v30[0] = *CTM;
        v30[1] = v21;
        v30[2] = v22;
        v23.f64[0] = RB::operator*(v30, (Info + 448));
        v31[0] = v23;
        v31[1] = v24;
        v31[2] = v25;
        [v19 doubleValue];
        v27 = v26;
        v28 = RB::AffineTransform::scale(v31);
        result = 0;
        v29 = v27 * v28;
        *(Info + 620) = v29;
      }
    }

    else
    {
      *(Info + 616) = 0;
    }
  }

  else
  {
    return 1006;
  }

  return result;
}

uint64_t RB::CGContext::add_soft_mask<RB::CGContext::update_state_slow(RB::AffineTransform const*,RB::DisplayList::ClipNode const*,float,RB::BlendMode,RB::Bounds const&,BOOL)::$_0>(RB::CGContext::SoftMaskMode,RB::Rect,RB::CGContext::update_state_slow(RB::AffineTransform const*,RB::DisplayList::ClipNode const*,float,RB::BlendMode,RB::Bounds const&,BOOL)::$_0 const&)::{lambda(RB::CGContext&,void const*)#1}::__invoke(uint64_t result, void *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    do
    {
      v4 = (v2[1] & 0xFFFFFFFFFFFFFFFELL);
      if (v4[44] == 1)
      {
        _S0 = (*(*v4 + 104))(v2[1] & 0xFFFFFFFFFFFFFFFELL);
        __asm { FCVT            H0, S0 }

        v10 = 0;
        v11 = 0;
        v12 = LOWORD(_S0);
        v13 = 0;
        v14 = 0;
        result = (*(*v4 + 96))(v4, v3, &v10);
      }

      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

void RB::DisplayList::GenericClip<RB::Coverage::Path>::fill(uint64_t a1, CGContextRef *a2, RB::Fill::Color *a3)
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

  RB::Coverage::Path::fill((a1 + 56), a2, a3);
  if (v12)
  {
    transform = v11;
    CGContextSetCTM();
  }
}

void RB::Coverage::Path::fill(RB::Coverage::Path *this, RB::CGContext *a2, const RB::Fill::Color *a3)
{
  if (*(this + 1) == 0x195E47920)
  {
    return;
  }

  v6 = *(this + 29);
  if (v6 >= 2)
  {
    RB::Coverage::Path::make_image_mask(this, a2, &v31);
    a = v31.a;
    if (!*&v31.a)
    {
      return;
    }

    v10 = *(a2 + 125);
    v11 = *(a3 + 13);
    if (v10 == v11 && *(a2 + 125))
    {
      if (*(a2 + 124) == *(a3 + 12))
      {
        goto LABEL_35;
      }
    }

    else if (v10 == v11 || !*(a2 + 125))
    {
      goto LABEL_35;
    }

    if (v11)
    {
LABEL_41:
      RB::CGContext::set_fill_color_slow(a2, a3, v7, v8);
LABEL_42:
      CGContextBeginTransparencyLayer(*a2, 0);
      v26 = *&v31.b;
      v27 = *(&v31.b + 1);
      v28 = *&v31.c;
      v29 = *(&v31.c + 1);
      v34.origin.x = *&v31.b;
      v34.origin.y = *(&v31.b + 1);
      v34.size.width = *&v31.c;
      v34.size.height = *(&v31.c + 1);
      CGContextClipToMask(*a2, v34, *&a);
      v35.origin.x = v26;
      v35.origin.y = v27;
      v35.size.width = v28;
      v35.size.height = v29;
      CGContextFillRect(*a2, v35);
      CGContextEndTransparencyLayer(*a2);
      CFRelease(*&a);
      return;
    }

LABEL_35:
    v7.i16[0] = *(a2 + 56);
    v8.i16[0] = *a3;
    if (*v7.i16 == *a3)
    {
      v7.i16[0] = *(a2 + 57);
      v8.i16[0] = *(a3 + 1);
      if (*v7.i16 == *v8.i16)
      {
        v7.i16[0] = *(a2 + 58);
        v8.i16[0] = *(a3 + 2);
        if (*v7.i16 == *v8.i16)
        {
          v7.i16[0] = *(a2 + 59);
          v8.i16[0] = *(a3 + 3);
          if (*v7.i16 == *v8.i16)
          {
            v7.i16[0] = *(a2 + 60);
            v8.i16[0] = *(a3 + 4);
            if (*v7.i16 == *v8.i16)
            {
              v7.i16[0] = *(a2 + 61);
              v8.i16[0] = *(a3 + 5);
              if (*v7.i16 == *v8.i16)
              {
                goto LABEL_42;
              }
            }
          }
        }
      }
    }

    goto LABEL_41;
  }

  v32 = 0;
  v12 = 0uLL;
  memset(&v31, 0, sizeof(v31));
  v13 = *(this + 2);
  v14 = xmmword_195E42770;
  v15 = xmmword_195E42760;
  if (v13)
  {
    v15 = *v13;
    v14 = v13[1];
    v12 = v13[2];
  }

  v16 = vandq_s8(vandq_s8(vceqq_f64(v15, xmmword_195E42760), vceqq_f64(v14, xmmword_195E42770)), vceqzq_f64(v12));
  v17 = vandq_s8(vdupq_laneq_s64(v16, 1), v16).u64[0];
  LOBYTE(v32) = v17 >= 0;
  if ((v17 & 0x8000000000000000) == 0)
  {
    *&v30.c = v14;
    *&v30.tx = v12;
    *&v30.a = v15;
    CGContextGetCTM(&v31, *a2);
    v18 = *a2;
    transform = v30;
    CGContextConcatCTM(v18, &transform);
    v6 = *(this + 29);
  }

  v19 = rb_clip_mode(v6);
  if (*(a2 + 148) != v19)
  {
    RB::CGContext::set_aliasing_mode_slow(a2, v19);
  }

  v22 = *(a2 + 125);
  v23 = *(a3 + 13);
  if (v22 == v23 && *(a2 + 125))
  {
    if (*(a2 + 124) == *(a3 + 12))
    {
      goto LABEL_21;
    }
  }

  else if (v22 == v23 || !*(a2 + 125))
  {
LABEL_21:
    v20.i16[0] = *(a2 + 56);
    v21.i16[0] = *a3;
    if (*v20.i16 == *a3)
    {
      v20.i16[0] = *(a2 + 57);
      v21.i16[0] = *(a3 + 1);
      if (*v20.i16 == *v21.i16)
      {
        v20.i16[0] = *(a2 + 58);
        v21.i16[0] = *(a3 + 2);
        if (*v20.i16 == *v21.i16)
        {
          v20.i16[0] = *(a2 + 59);
          v21.i16[0] = *(a3 + 3);
          if (*v20.i16 == *v21.i16)
          {
            v20.i16[0] = *(a2 + 60);
            v21.i16[0] = *(a3 + 4);
            if (*v20.i16 == *v21.i16)
            {
              v20.i16[0] = *(a2 + 61);
              v21.i16[0] = *(a3 + 5);
              if (*v20.i16 == *v21.i16)
              {
                goto LABEL_28;
              }
            }
          }
        }
      }
    }

    goto LABEL_27;
  }

  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_27:
  RB::CGContext::set_fill_color_slow(a2, a3, v20, v21);
LABEL_28:
  v24 = RBPathCopyCGPath(*this, *(this + 1));
  if (v24)
  {
    v25 = v24;
    CGContextDrawPathDirect();
    CFRelease(v25);
  }

  if (v32 == 1)
  {
    transform = v31;
    CGContextSetCTM();
  }
}

uint64_t RBDrawingStateSetAttribute(RB::DisplayList::State *this, void *cf, int a3)
{
  v6 = *(this + 1);
  if (v6[3])
  {
    if (a3)
    {
LABEL_3:
      if (a3 == 1)
      {
        result = RB::DisplayList::State::set_text_run(this, cf, (v6 + 2));
        if ((result & 1) == 0)
        {
          return result;
        }
      }

      goto LABEL_8;
    }
  }

  else
  {
    make_contents(*(this + 1));
    if (a3)
    {
      goto LABEL_3;
    }
  }

  [cf floatValue];
  result = RB::DisplayList::State::set_numeric_value(this, v8);
  if (!result)
  {
    return result;
  }

LABEL_8:
  result = v6[40];
  if (result)
  {

    RB::XML::DisplayList::attribute_value(result);
  }

  return result;
}

RB::TextIdentity *RB::TextIdentity::TextIdentity(RB::TextIdentity *this, CTRunRef run, unsigned int a3, unsigned int a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  *this = 4 * a4;
  Status = CTRunGetStatus(run);
  if (Status)
  {
    *this |= 1u;
  }

  if ((Status & 2) != 0)
  {
    *this |= 2u;
  }

  StringIndicesPtr = CTRunGetStringIndicesPtr(run);
  if (StringIndicesPtr)
  {
    if (a4)
    {
      v11 = &StringIndicesPtr[a3];
      v12 = (this + 4);
      v13 = 8 * a4;
      do
      {
        v14 = *v11++;
        *v12++ = v14;
        v13 -= 8;
      }

      while (v13);
    }

    return this;
  }

  if (a4 < 0x201)
  {
    MEMORY[0x1EEE9AC00](0, v10);
    v15 = v22 - ((v16 + 15) & 0xFFFFFFFF0);
    bzero(v15, v16);
  }

  else
  {
    v15 = malloc_type_malloc(8 * a4, 0x100004000313F17uLL);
    if (!v15)
    {
      bzero(this + 4, 4 * a4);
LABEL_18:
      free(v15);
      return this;
    }
  }

  v23.location = a3;
  v23.length = a4;
  CTRunGetStringIndices(run, v23, v15);
  if (a4)
  {
    v17 = (this + 4);
    v18 = 8 * a4;
    v19 = v15;
    do
    {
      v20 = *v19++;
      *v17++ = v20;
      v18 -= 8;
    }

    while (v18);
  }

  if (a4 >= 0x201)
  {
    goto LABEL_18;
  }

  return this;
}

void RB::CGContext::~CGContext(RB::CGContext *this)
{
  if (*(this + 149) == 1)
  {
    CGContextRestoreGState(*this);
  }

  v2 = *(this + 124);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 58);
  if (v3)
  {
    free(v3);
  }
}

void sub_195D3FF44(_Unwind_Exception *a1)
{
  v3 = *(v1 + 992);
  if (v3)
  {
    free(v3);
  }

  v4 = *(v1 + 464);
  if (v4)
  {
    free(v4);
  }

  _Unwind_Resume(a1);
}

void RB::DisplayList::GenericItem1<RB::Coverage::Path,RB::Fill::Color>::render(uint64_t a1, uint64_t a2)
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
  RB::Coverage::Path::fill((a1 + 56), a2, (a1 + 88));
}

uint64_t RB::Bounds::contains(int32x2_t *a1, int32x2_t a2, int32x2_t a3)
{
  v3 = a1[1];
  v4 = vceqz_s32(v3);
  if ((vpmax_u32(v4, v4).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = vcge_s32(a2, *a1);
  v6 = vcge_s32(vadd_s32(*a1, v3), vadd_s32(a3, a2));
  v7 = vcltz_s32(vshl_n_s32(vand_s8(vdup_n_s32(vpmin_u32(v6, v6).i32[0] < 0), v5), 0x1FuLL));
  return vpmin_u32(v7, v7).u32[0] >> 31;
}

void RB::CGContext::set_fill_color_slow(RB::CGContext *this, const RB::Fill::Color *a2, float32x4_t a3, float16x4_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*(this + 149) & 1) == 0)
  {
    CGContextSaveGState(*this);
    *(this + 149) = 1;
  }

  v6 = *a2;
  *(this + 118) = *(a2 + 6);
  *(this + 14) = v6;
  a3.i16[0] = *a2;
  a4.i16[0] = *(a2 + 1);
  _ZF = *a2 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)) && *a4.i16 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0));
  if (_ZF && (RB::CGContext::display_list_context(this, a2) & 1) == 0)
  {
    RB::Fill::Color::log_key_color(a2);
    *(this + 14) = 0x3C003C0000003C00;
    *(this + 62) = 0;
    *(this + 30) = 0;
  }

  if ((*(a2 + 4) & 0x7FFF) != 0)
  {
    RB::Fill::Color::create_cgcolor(a2, *(this + 8), components, *a3.f32, a4);
    CGContextSetFillColorWithColor(*this, *components);
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
    CGContextSetFillColor(*this, components);
  }
}

void sub_195D40268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void RBXMLRecorderMarkCGFrame(void *a1, CGContextRef c)
{
  if (RB::XMLRecorder::enabled == 1)
  {
    ClipBoundingBox = CGContextGetClipBoundingBox(c);

    RBXMLRecorderMarkFrame(c, a1, 17, ClipBoundingBox.size.width, ClipBoundingBox.size.height);
  }
}

void RB::DisplayList::Transform::clear(RB::DisplayList::Transform *this)
{
  if (*(this + 5))
  {
    v2 = *(this + 5);
  }

  else
  {
    v2 = this;
  }

  v3 = *(this + 12);
  if (v3)
  {
    v4 = (v2 + 8);
    v5 = 40 * v3;
    do
    {
      if (*(v4 - 2) == 3 && *v4)
      {
        CFRelease(*v4);
      }

      v4 += 5;
      v5 -= 40;
    }

    while (v5);
  }

  *(this + 12) = 0;
}

const void **RB::CGContext::add_soft_mask(RB::CGContext::SoftMaskMode,RB::Rect,void const*,void (*)(RB::CGContext&,void const*))::$_3::__invoke(const void **result)
{
  if (result)
  {
    v1 = *result;
    if (v1)
    {
      CFRelease(v1);
    }

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

_DWORD *RB::DisplayList::Transform::add_color_from_to(_DWORD *this, const RB::Fill::Color *a2, const RB::Fill::Color *a3)
{
  v5 = this;
  v6 = this[12];
  if (this[13] < (v6 + 1))
  {
    this = RB::vector<RB::DisplayList::Transform::Term,1ul,unsigned int>::reserve_slow(this, v6 + 1);
    v6 = v5[12];
  }

  v7 = *(v5 + 5);
  if (!v7)
  {
    v7 = v5;
  }

  v8 = &v7[10 * v6];
  *v8 = 2;
  v9 = *a2;
  *(v8 + 14) = *(a2 + 6);
  *(v8 + 1) = v9;
  v10 = *a3;
  *(v8 + 7) = *(a3 + 6);
  *(v8 + 22) = v10;
  ++v5[12];
  return this;
}

void RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Color>::apply_transform(uint64_t a1, const RB::DisplayList::Transform *a2, uint64_t a3)
{
  RB::Coverage::Glyphs::apply_transform((a1 + 56), a2, (a3 + 16));

  RB::Fill::Color::apply_transform((a1 + 112), a2, (a3 + 16), v6);
}

uint64_t RB::DisplayList::Contents::apply_transform(uint64_t this, const RB::DisplayList::Transform *a2)
{
  v2 = *(this + 336);
  if (v2)
  {
    v4 = this;
    do
    {
      this = (*(*v2 + 192))(v2, a2, v4);
      v2 = v2[1];
    }

    while (v2);
  }

  return this;
}

void RB::Coverage::Glyphs::apply_transform(RB::Coverage::Glyphs *this, const RB::DisplayList::Transform *a2, RB::Heap *a3)
{
  v6 = *this;
  if (*this)
  {
    CFRetain(*this);
  }

  cf = v6;
  RB::DisplayList::Transform::apply_to_font(a2, &cf, (*(this + 1) + 8 * *(this + 4)), *(this + 1), *(this + 4));
  v7 = cf;
  if (cf != *this)
  {
    *this = cf;
    cf = 0;
    v8 = *(a3 + 4);
    if (!v8)
    {
      RB::Heap::make_object_table(a3);
      v8 = *(a3 + 4);
    }

    RB::ObjectTable::adopt(v8, v7);
    v7 = cf;
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_195D40678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void RB::DisplayList::Transform::apply_to_font(uint64_t a1, CGFont **a2, const CGGlyph *a3, float *a4, size_t a5)
{
  v40 = a4;
  v41 = a3;
  v42[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = a1;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v9 = v5 + 40 * v6;
    v10 = a5 & 0x6000000000000000;
    v11 = 8 * a5;
    while (1)
    {
      if (*v5 != 3)
      {
        goto LABEL_34;
      }

      v12 = RB::FontMixer::shared(a1);
      RB::FontMixer::mix(v12, *a2, *(v5 + 8), *(v5 + 16), v42);
      v14 = v42[0];
      if (!v42[0])
      {
        goto LABEL_34;
      }

      if (a5)
      {
        v15 = *a2;
        if (v42[0] != *a2)
        {
          v16 = *(v5 + 20);
          if ((v16 & 7) != 0 && !v10)
          {
            break;
          }
        }
      }

LABEL_32:
      v39 = v42[0];
      v42[0] = *a2;
      a1 = v42[0];
      *a2 = v39;
      if (a1)
      {
        CFRelease(a1);
      }

LABEL_34:
      v5 += 40;
      if (v5 == v9)
      {
        return;
      }
    }

    if (v11 <= 0x1000)
    {
      MEMORY[0x1EEE9AC00](a1, v13);
      v17 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v17, v11);
    }

    else
    {
      v17 = malloc_type_malloc(v11, 0x100004052888210uLL);
      if (!v17)
      {
LABEL_31:
        free(v17);
        goto LABEL_32;
      }

      v14 = v42[0];
      v15 = *a2;
    }

    if (CGFontGetGlyphAdvances(v15, v41, a5, v17) && CGFontGetGlyphAdvances(v14, v41, a5, &v17[4 * a5]))
    {
      UnitsPerEm = CGFontGetUnitsPerEm(*a2);
      v19 = CGFontGetUnitsPerEm(v14);
      v20 = vrecpe_f32(COERCE_UNSIGNED_INT(UnitsPerEm));
      v21 = vmul_f32(vrecps_f32(COERCE_UNSIGNED_INT(UnitsPerEm), v20), v20);
      LODWORD(v22) = vmul_f32(v21, vrecps_f32(COERCE_UNSIGNED_INT(UnitsPerEm), v21)).u32[0];
      v23 = vrecpe_f32(COERCE_UNSIGNED_INT(v19));
      v24 = vmul_f32(vrecps_f32(COERCE_UNSIGNED_INT(v19), v23), v23);
      LODWORD(v25) = vmul_f32(v24, vrecps_f32(COERCE_UNSIGNED_INT(v19), v24)).u32[0];
      v26 = 0.0;
      if ((v16 & 2) != 0)
      {
        v27 = 1.0;
      }

      else
      {
        v27 = 0.0;
      }

      if (v16)
      {
        v27 = 0.5;
      }

      v28 = 1;
      v29 = v17;
      do
      {
        v26 = (v26 + (v22 * *v29)) - (v25 * v29[a5]);
        v30 = v28;
        ++v29;
        ++v28;
      }

      while (v30 < a5);
      v31 = v26 * v27;
      v32 = 0.0;
      v33 = 1;
      v34 = v17;
      v35 = v40;
      do
      {
        v36 = -((v25 * v34[a5]) - (v22 * *v34));
        v37 = *v35;
        if ((v16 & 4) != 0)
        {
          *v35 = (v31 - v32) + *&v37;
          v32 = v36 + v32;
        }

        else
        {
          *v35 = *&v37 + (v36 * v27);
        }

        ++v34;
        v38 = v33;
        v35 += 2;
        ++v33;
      }

      while (v38 < a5);
    }

    if (v11 <= 0x1000)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }
}

void sub_195D4095C(_Unwind_Exception *exception_object)
{
  if (v1 > 0x1000)
  {
    free(v2);
  }

  v5 = *(v3 - 112);
  if (v5)
  {
    CFRelease(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::blend_into_zero(uint64_t result)
{
  if (result > 0x36)
  {
    return 1;
  }

  v1 = result;
  if (((1 << result) & 0xB5FFFFF04FE55) != 0)
  {
    return 2;
  }

  if (((1 << result) & 0x4000000020000) == 0)
  {
    result = 1;
    if (((1 << v1) & 0x40000000F80000) != 0)
    {
      abort();
    }
  }

  return result;
}

void RB::DisplayList::Transform::apply_to_color(RB::DisplayList::Transform *this, RB::Fill::Color *a2, int32x4_t a3)
{
  if (*(this + 5))
  {
    v3 = *(this + 5);
  }

  else
  {
    v3 = this;
  }

  v4 = *(this + 12);
  if (v4)
  {
    v6 = (v3 + 16);
    for (i = 40 * v4; i; i -= 40)
    {
      v8 = *(v6 - 4);
      if (v8 == 2)
      {
        if (RB::Fill::Color::matches((v6 - 2), a2))
        {
          v14 = *(v6 + 5);
          v15 = *(v6 + 6);
          v16 = *(v6 + 6);
          v12 = *(v6 + 14) | (*(v6 + 9) << 32);
          if (*(v6 - 1) == COERCE_SHORT_FLOAT(-2048))
          {
            v16 = *(a2 + 3) * *(v6 + 6);
          }

          v17.i32[0] = *(v6 + 6);
          v17.i16[2] = *(v6 + 5);
          *&v17.i16[3] = v16;
          a3 = vmovl_s16(vceq_f16(v17, 0xF800F800F800F800));
          if ((vmaxvq_u32(a3) & 0x80000000) != 0)
          {
LABEL_15:
            if ((v12 & 0x10000000000) != 0)
            {
              a3.i64[0] = 0;
              RB::Fill::Color::convert(a2, BYTE4(v12), a3);
            }

            goto LABEL_17;
          }

          *a2 = v15;
          *(a2 + 2) = (v15 | (v14 << 32)) >> 32;
          *(a2 + 3) = v16;
          *(a2 + 2) = v12;
          *(a2 + 6) = BYTE4(v12) | (BYTE5(v12) << 8);
        }
      }

      else if (v8 == 1)
      {
        v9 = *(v6 - 2);
        v10 = v9 | (*(v6 - 2) << 32);
        v11 = v10;
        v12 = *v6 | (*(v6 + 2) << 32);
        v13 = *(a2 + 3) * *(v6 - 1);
        *&v11.i16[3] = v13;
        if ((vmaxvq_u32(vmovl_s16(vceq_f16(v11, 0xF800F800F800F800))) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }

        *a2 = v9;
        *(a2 + 1) = WORD1(v10);
        *(a2 + 2) = WORD2(v10);
        *(a2 + 3) = v13;
        *(a2 + 2) = v12;
        *(a2 + 6) = BYTE4(v12) | (BYTE5(v12) << 8);
      }

LABEL_17:
      v6 += 10;
    }
  }
}

void RB::DisplayList::Transform::Term::~Term(RB::DisplayList::Transform::Term *this)
{
  if (*this == 3)
  {
    v1 = *(this + 1);
    if (v1)
    {
      CFRelease(v1);
    }
  }
}

uint64_t RB::CustomShader::Library::Library(uint64_t a1, int a2, void *a3)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F0A390B0;
  v5 = a3;
  *(a1 + 48) = 0;
  *(a1 + 16) = v5;
  *(a1 + 28) = 0;
  *(a1 + 24) = a2;
  *(a1 + 40) = 0;
  RB::UntypedTable::UntypedTable(a1 + 56, RB::CustomShader::Library::Library(RB::CustomShader::Library::Type,objc_object *)::$_0::__invoke, RB::CustomShader::Library::Library(RB::CustomShader::Library::Type,objc_object *)::$_1::__invoke, 0, RB::CustomShader::Library::Library(RB::CustomShader::Library::Type,objc_object *)::$_2::__invoke);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x100000000;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  os_unfair_lock_lock((a1 + 48));
  *(a1 + 28) = ++RB::CustomShader::Library::_last_id;
  os_unfair_lock_unlock((a1 + 48));
  return a1;
}

uint64_t RB::prefs_int(const __CFString *this, const __CFString *a2)
{
  RB::Config::prefs_value(this, &v6);
  v2 = v6;
  v4 = RB::Config::int_value(v6, v3);
  if (v2)
  {
    CFRelease(v2);
  }

  return v4 & 0xFFFFFFFFFFLL;
}

CFPropertyListRef RB::Config::prefs_value@<X0>(const __CFString *this@<X0>, void *a2@<X8>)
{
  v5 = *MEMORY[0x1E695E8A8];
  v6 = *MEMORY[0x1E695E898];
  result = CFPreferencesCopyValue(this, *MEMORY[0x1E695E8A8], *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E898]);
  *a2 = result;
  if (!result)
  {
    v8 = *MEMORY[0x1E695E8B8];
    result = CFPreferencesCopyValue(this, v5, *MEMORY[0x1E695E8B8], v6);
    *a2 = result;
    if (!result)
    {
      v9 = *MEMORY[0x1E695E890];
      result = CFPreferencesCopyValue(this, *MEMORY[0x1E695E890], v8, *MEMORY[0x1E695E8B0]);
      *a2 = result;
      if (!result)
      {
        result = CFPreferencesCopyValue(this, v9, v8, v6);
        *a2 = result;
      }
    }
  }

  return result;
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Primitive,RB::Fill::Color>::has_no_effect(uint64_t a1)
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

uint64_t RB::Coverage::anonymous namespace::visit_rounded_rect(void (***a1)(void, float32x2_t *), float64x2_t *a2, int a3, uint64_t a4, unsigned int a5, float64_t a6, float64_t a7, double a8, float64_t a9, double a10, float a11, float a12)
{
  v12 = a5;
  v54.f64[0] = a6;
  v54.f64[1] = a7;
  v55.f64[0] = a8;
  v55.f64[1] = a9;
  if (a6 != a7 || a7 != a8 || a8 != a9 || a9 != a6)
  {
    if (a3 && a5 > 1)
    {
      return 0;
    }

    if (a4)
    {
      v22 = *(a4 + 16);
      v23 = *(a4 + 24);
      v24 = *(a4 + 8);
      if (*a4 != v23 || v24 != 0.0 || *&v22 != 0.0)
      {
        result = 0;
        if (v23 != 0.0)
        {
          return result;
        }

        if (*a4 != 0.0 || v24 != *&v22)
        {
          return result;
        }
      }
    }

    RB::clamp_corner_radii(&v54, a2[1].f64);
    if (RB::corners_are_uneven_pill(v54.f64, a2[1].f64))
    {
      return 0;
    }

    result = RB::Rect::representable_cgrect(a2, v27);
    if (!result)
    {
      return result;
    }

    v28 = vcvt_hight_f32_f64(vcvt_f32_f64(v54), v55);
    v29 = vcvt_f32_f64(*a2);
    v30 = vcvt_f32_f64(a2[1]);
    v31 = vbsl_s8(vcltz_f32(v30), vadd_f32(v30, v29), v29);
    v32 = vabs_f32(v30);
    v52 = v31;
    v53 = v32;
    if (a4)
    {
      v41 = v28;
      v52 = RB::operator*(a4, v31, v32);
      v53 = v33;
      v34 = *(a4 + 8);
      v35 = fabs(*a4);
      v36 = fabs(v34);
      if (v34 != 0.0)
      {
        v35 = v36;
      }

      v37 = v35;
      v28 = vmulq_n_f32(v41, v37);
    }

    if (*&a10 != 0.0)
    {
      v38 = vsubq_f32(v28, vdupq_lane_s32(*&a10, 0));
      v39 = vclezq_f32(v38);
      if ((vmaxvq_u32(v39) & 0x80000000) != 0)
      {
        return 0;
      }

      v39.i32[0] = LODWORD(a10);
      v42 = v38;
      result = RB::Rect::inset(&v52, *v39.i8, *&a10);
      v28 = v42;
      if (!result)
      {
        return result;
      }
    }

    if (a3 == 1)
    {
      v28 = vmulq_f32(v28, vdupq_n_s32(0x3FA33333u));
      v40 = 4;
    }

    else if (a3)
    {
      v40 = 2;
    }

    else
    {
      v40 = 3;
    }

    v44[0] = v52;
    v44[1] = v53;
    v45 = v28;
    v46 = 1065353216;
    v47 = a11;
    v48 = a12;
    v49 = v40;
    v50 = v12;
    v51 = 0;
    (**a1)(a1, v44);
    return 1;
  }

  LODWORD(a8) = LODWORD(a10);
}

double RB::clamp_corner_radii(uint64_t a1, double *a2)
{
  v2 = fabs(*a2);
  v3 = fabs(a2[1]);
  if (v2 >= v3)
  {
    *&v4 = v2;
  }

  else
  {
    *&v4 = v3;
  }

  v5 = (a1 + 8);
  v6 = vdupq_lane_s64(v4, 0);
  v7 = vbicq_s8(*a1, vcltzq_f64(*a1));
  v8 = vbslq_s8(vcgtq_f64(v7, v6), v6, v7);
  *a1 = v8;
  v9 = (a1 + 24);
  v10 = (a1 + 16);
  v11 = vbicq_s8(*(a1 + 16), vcltzq_f64(*(a1 + 16)));
  v12 = vbslq_s8(vcgtq_f64(v11, v6), v6, v11);
  *(a1 + 16) = v12;
  v13 = v2 - vaddvq_f64(v8);
  if (v8.f64[0] != v8.f64[1] && v13 < 0.0)
  {
    v14 = v8.f64[1] - v8.f64[0];
    v15 = v8.f64[1] - v8.f64[0] > 0.0;
    if (v8.f64[1] - v8.f64[0] > 0.0)
    {
      v14 = -v14;
      v8.f64[0] = v8.f64[1];
    }

    if (v13 >= v14)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    *(a1 + 8 * v15) = v16 + v8.f64[0];
    v13 = v13 - v16;
  }

  if (v13 < 0.0)
  {
    v17 = *(a1 + 8);
    v18 = *a1 * v13 / (v17 + *a1);
    *a1 = v18 + *a1;
    *(a1 + 8) = v17 + v13 - v18;
  }

  v19 = v12.f64[1];
  v20 = v2 - vaddvq_f64(v12);
  if (v12.f64[1] != v12.f64[0] && v20 < 0.0)
  {
    v21 = v12.f64[0] - v12.f64[1];
    v22 = v12.f64[0] - v12.f64[1] <= 0.0;
    if (v12.f64[0] - v12.f64[1] <= 0.0)
    {
      v12.f64[0] = v12.f64[1];
    }

    else
    {
      v21 = -(v12.f64[0] - v12.f64[1]);
    }

    if (v22)
    {
      v23 = (a1 + 24);
    }

    else
    {
      v23 = (a1 + 16);
    }

    if (v20 >= v21)
    {
      v24 = v20;
    }

    else
    {
      v24 = v21;
    }

    *v23 = v24 + v12.f64[0];
    v20 = v20 - v24;
    v19 = *v9;
  }

  if (v20 < 0.0)
  {
    v25 = *v10;
    v26 = v19 * v20 / (*v10 + v19);
    v19 = v26 + v19;
    *v9 = v19;
    *v10 = v25 + v20 - v26;
  }

  v27 = *a1;
  v28 = v3 - (*a1 + v19);
  if (*a1 != v19 && v28 < 0.0)
  {
    v29 = v19 - v27;
    v30 = v19 - v27 <= 0.0;
    if (v19 - v27 > 0.0)
    {
      v29 = -(v19 - v27);
      v27 = v19;
    }

    v31 = 24;
    if (v30)
    {
      v31 = 0;
    }

    if (v28 >= v29)
    {
      v32 = v3 - (*a1 + v19);
    }

    else
    {
      v32 = v29;
    }

    *(a1 + v31) = v32 + v27;
    v28 = v28 - v32;
  }

  if (v28 < 0.0)
  {
    v33 = *(a1 + 24);
    v34 = *a1 * v28 / (v33 + *a1);
    *a1 = v34 + *a1;
    *(a1 + 24) = v33 + v28 - v34;
  }

  v35 = *v5;
  v36 = *v10;
  result = v3 - (*v5 + *v10);
  if (*v5 != *v10 && result < 0.0)
  {
    v38 = v36 - v35;
    if (v36 - v35 <= 0.0)
    {
      v39 = (a1 + 8);
    }

    else
    {
      v38 = -(v36 - v35);
      v35 = *v10;
      v39 = (a1 + 16);
    }

    if (result >= v38)
    {
      v40 = result;
    }

    else
    {
      v40 = v38;
    }

    *v39 = v40 + v35;
    result = result - v40;
  }

  if (result < 0.0)
  {
    v41 = *v10;
    v42 = *v5 * result / (*v10 + *v5);
    *v5 = v42 + *v5;
    result = v41 + result - v42;
    *v10 = result;
  }

  return result;
}

BOOL RB::corners_are_uneven_pill(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 + *a1;
  v6 = a1[2];
  v5 = a1[3];
  if (v4 < v6 + v5)
  {
    v4 = v6 + v5;
  }

  if (v5 + *a1 >= v6 + v3)
  {
    v7 = v5 + *a1;
  }

  else
  {
    v7 = v6 + v3;
  }

  result = 0;
  if (v4 * 1.52866495 > fabs(*a2) || v7 * 1.52866495 > fabs(a2[1]))
  {
    v8 = v3 == v6 && v2 == v3;
    v9 = v8 && v4 == v7;
    v10 = v9 && v5 == v2;
    if (!v10 || v6 != v5)
    {
      return 1;
    }
  }

  return result;
}

uint64_t RB::DisplayList::GenericClipCopyVisitor<RB::Coverage::Path>::visit(uint64_t a1, _OWORD *a2, int8x16_t a3, double a4, double a5, double a6, int8x16_t a7, int8x16_t a8)
{
  result = RB::Heap::emplace<RB::DisplayList::GenericClip<RB::Coverage::Primitive>,RB::Heap&,RB::Coverage::Primitive&,float &,RB::ClipMode &,RB::AffineTransform const*&>(*(a1 + 8), a3, a4, a5, a6, a7, a8, *(a1 + 8), a2, (*(a1 + 16) + 88), (a1 + 24), (a1 + 32));
  *(a1 + 40) = result;
  return result;
}

os_log_t RB::shared_surface_log(void)::$_0::operator()(uint64_t a1, const char *a2)
{
  v2 = RB::debug_BOOL("RB_LOG_SURFACES", a2);
  if ((v2 & 0x100) == 0 || (v2 & 1) == 0)
  {
    return MEMORY[0x1E69E9C18];
  }

  return os_log_create("com.apple.renderbox", "shared-surface");
}

uint64_t RB::Symbol::Animator::add_animation(uint64_t a1, float32x2_t *a2)
{
  RB::Symbol::Animation::description(a2->u32[0], a2->u32[1], a2[1].i32[0], a2[3].f32[0] > 0.0, v31);
  v34 = a2[2].i32[0];
  v32 = ceilf(a2[2].f32[1]);
  if (v32 <= 0.0)
  {
    return 0;
  }

  v4 = a2[3].f32[0];
  if ((LODWORD(v4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    if (v4 < 0.0)
    {
      v4 = 0.0;
    }

    v33 = v4;
  }

  v5 = vmvn_s8(vceqz_f32(a2[4]));
  if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0)
  {
    v35 = a2[4];
  }

  os_unfair_lock_lock(a1);
  if (v31[1])
  {
    v6 = *(a1 + 24);
    v7 = 88 * v6;
    while (v6)
    {
      --v6;
      v8 = *(a1 + 16);
      v9 = *(v8 + v7 - 84);
      v7 -= 88;
      if (v9 == a2->i32[0])
      {
        if (*(v8 + v7 + 80) == *(a1 + 8))
        {
          RB::Symbol::Animator::remove_animation_at_index(a1, v6, 0);
        }

        break;
      }
    }
  }

  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = v11 + 88 * v10;
  v13 = v11;
  if (v10)
  {
    v13 = *(a1 + 16);
    v14 = *(a1 + 24);
    do
    {
      v15 = v14 >> 1;
      v16 = v13 + 88 * (v14 >> 1);
      v17 = *(v16 + 8);
      v18 = v16 + 88;
      v14 += ~(v14 >> 1);
      if (v17 < a2[1].f32[1])
      {
        v13 = v18;
      }

      else
      {
        v14 = v15;
      }
    }

    while (v14);
  }

  if (v13 != v12)
  {
    while (*(v13 + 8) == a2[1].f32[1])
    {
      v13 += 88;
      if (v13 == v12)
      {
        goto LABEL_26;
      }
    }

    v12 = v13;
  }

LABEL_26:
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  if (*(a1 + 32) < v10 + 1)
  {
    RB::vector<RB::Symbol::Animation,0ul,unsigned long>::reserve_slow(a1 + 16, v10 + 1);
    v21 = *(a1 + 16);
    v10 = *(a1 + 24);
  }

  v22 = v12 - v11;
  v23 = 0x2E8BA2E8BA2E8BA3 * (v22 >> 3);
  v24 = v10 > v23;
  v25 = v10 - v23;
  if (v24)
  {
    memmove((v21 + v22 + 88), (v21 + v22), 88 * v25);
  }

  RB::Symbol::Animation::Animation(v21 + v22, v20, a2->u32[0], v31, a2[1].f32[1]);
  v26 = *(a1 + 16);
  ++*(a1 + 24);
  ++*(a1 + 60);
  v27 = (v26 + v22);
  v28 = a2[6];
  if (v28)
  {
    v29 = [v28 copy];

    v27[8] = v29;
  }

  if (a2[5])
  {
    operator new();
  }

  v19 = *v27;
  os_unfair_lock_unlock(a1);
  return v19;
}

void *RB::vector<RB::SharedSurfaceGroup::Update,0ul,unsigned int>::reserve_slow(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12) + (*(a1 + 12) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 12) + (*(a1 + 12) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,112ul>(*a1, (a1 + 12), v3);
  *a1 = result;
  return result;
}

uint64_t RB::Symbol::Animation::description@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 12) = 1065353216;
  *(a5 + 24) = 0;
  *(a5 + 20) = 1065353216;
  switch(result)
  {
    case 0:
      v5 = 262;
      goto LABEL_13;
    case 1:
      v12 = ~a3 & 0x606 | a2;
      *a5 = v12;
      v13 = (a2 >> 30) ^ 2;
      if ((v13 - 2) < 2)
      {
        goto LABEL_23;
      }

      if (v13 == 1)
      {
        return result;
      }

      if (a2 & 0x10000000) == 0 || (a4)
      {
LABEL_23:
        v8 = 1051372203;
LABEL_26:
        *(a5 + 16) = v8;
      }

      else
      {
        v9 = v12 | 0x40;
LABEL_14:
        *a5 = v9;
      }

      return result;
    case 2:
      *a5 = ~a3 & 0x14 | a2;
      *(a5 + 4) = 4100;
      *(a5 + 12) = 1077936128;
      return result;
    case 3:
      v6 = ~a3 & 0x14 | a2;
      *a5 = v6;
      *(a5 + 4) = 4104;
      if ((a2 & 0x20) != 0)
      {
        goto LABEL_17;
      }

      return result;
    case 4:
      v5 = 22;
      goto LABEL_13;
    case 5:
    case 9:
      v5 = 1073741845;
      goto LABEL_13;
    case 6:
      v5 = 2013265941;
      goto LABEL_13;
    case 7:
      v5 = 129;
      goto LABEL_13;
    case 10:
      *(a5 + 24) = 1065353216;
      v6 = ~a3 & 0x14 | a2;
      *a5 = v6;
      *(a5 + 4) = 1024;
      if ((a2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_17:
      if ((v6 & 0x10) != 0)
      {
        v10 = 67136;
      }

      else
      {
        v10 = 1536;
      }

      v11 = v10 | v6;
      goto LABEL_25;
    case 11:
      v7 = ~a3 & 0x14 | a2;
      *a5 = v7;
      *(a5 + 4) = 2048;
      if ((a2 & 0x20) != 0)
      {
        v11 = v7 | 0x600;
LABEL_25:
        *a5 = v11;
        v8 = 2143289344;
      }

      else
      {
LABEL_8:
        v8 = 1065353216;
      }

      goto LABEL_26;
    case 12:
      *a5 = ~a3 & 0x14 | a2;
      *(a5 + 4) = 4108;
      return result;
    case 13:
    case 14:
      v5 = 21;
LABEL_13:
      v9 = v5 & ~a3 | a2;
      goto LABEL_14;
    default:
      return result;
  }
}

void *RB::details::realloc_vector<unsigned int,112ul>(void *a1, _DWORD *a2, unsigned int a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(112 * a3);
    v6 = ((v5 >> 4) * 0x2492492492492493uLL) >> 64;
    if (*a2 != v6)
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

void *RB::details::realloc_vector<unsigned long,88ul>(void *a1, unint64_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(88 * a3);
    v6 = v5 / 0x58;
    if (v5 / 0x58 != *a2)
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

void *RB::vector<RB::Symbol::Animation,0ul,unsigned long>::reserve_slow(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,88ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

uint64_t RB::Symbol::Animation::Animation(uint64_t result, uint64_t a2, int a3, uint64_t a4, float a5)
{
  *result = atomic_fetch_add_explicit(RB::Symbol::Animation::next_unique_id, 1u, memory_order_relaxed);
  *(result + 4) = a3;
  *(result + 8) = a5;
  *(result + 12) = *a4;
  *(result + 20) = *(a4 + 8);
  *(result + 24) = *(a4 + 20);
  *(result + 28) = *(a4 + 12);
  *(result + 36) = 0;
  *(result + 40) = *(a4 + 24);
  *(result + 48) = vdupq_n_s64(0x7FF0000000000000uLL);
  *(result + 64) = 0;
  *(result + 72) = 0;
  atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
  *(result + 80) = a2;
  if (*(result + 28) > 1.0)
  {
    *(result + 12) |= 0x800u;
  }

  return result;
}

BOOL RB::Symbol::Animator::set_scale_level(os_unfair_lock_s *this, int a2)
{
  os_unfair_lock_lock(this);
  v4 = (*(*&this[2]._os_unfair_lock_opaque + 104) << 8) >> 24;
  if (v4 != a2)
  {
    RB::Symbol::Model::copy_on_write(&this[2]);
    *(*&this[2]._os_unfair_lock_opaque + 106) = a2;
    ++this[15]._os_unfair_lock_opaque;
  }

  os_unfair_lock_unlock(this);
  return v4 != a2;
}

RB::Symbol::Model *RB::Symbol::Model::Model(RB::Symbol::Model *this, const RB::Symbol::Model *a2)
{
  *(this + 2) = 1;
  *this = &unk_1F0A38428;
  v4 = *(a2 + 2);
  *(this + 3) = 0;
  *(this + 2) = v4;
  *(this + 4) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v14 = *(a2 + 3);
    RB::vector<RBColor,0ul,unsigned int>::reserve_slow(this + 24, *(a2 + 8));
    v15 = (*(this + 3) + 16 * *(this + 8));
    v16 = v5;
    do
    {
      v17 = *v14++;
      *v15++ = v17;
      --v16;
    }

    while (v16);
    v6 = *(this + 8);
  }

  else
  {
    v6 = 0;
  }

  *(this + 5) = 0;
  *(this + 8) = v6 + v5;
  *(this + 6) = 0;
  v7 = *(a2 + 12);
  if (v7)
  {
    v18 = *(a2 + 5);
    RB::vector<RB::objc_ptr<void({block_pointer})(RBFill *,CGRect)>,0ul,unsigned int>::reserve_slow(this + 40, *(a2 + 12));
    v19 = (*(this + 5) + 8 * *(this + 12));
    v20 = v7;
    do
    {
      *v19++ = *v18++;
      --v20;
    }

    while (v20);
    v8 = *(this + 12);
  }

  else
  {
    v8 = 0;
  }

  *(this + 12) = v8 + v7;
  *(this + 7) = *(a2 + 7);
  *(this + 8) = *(a2 + 8);
  *(this + 9) = *(a2 + 9);
  *(this + 5) = *(a2 + 5);
  *(this + 24) = *(a2 + 24);
  *(this + 25) = *(a2 + 25);
  v9 = *(this + 26) & 0xFFFFFF00 | *(a2 + 104);
  *(this + 26) = v9;
  v10 = v9 & 0xFFFF00FF | (*(a2 + 105) << 8);
  *(this + 26) = v10;
  v11 = v10 & 0xFF00FFFF | (*(a2 + 106) << 16);
  *(this + 26) = v11;
  v12 = v11 & 0xFEFFFFFF | ((HIBYTE(*(a2 + 26)) & 1) << 24);
  *(this + 26) = v12;
  *(this + 26) = v12 & 0xFDFFFFFF | (((*(a2 + 26) >> 25) & 1) << 25);
  *(this + 27) = *(a2 + 27);
  *(this + 14) = 0;
  return this;
}

void sub_195D41E3C(_Unwind_Exception *a1)
{
  RB::vector<RB::objc_ptr<void({block_pointer})(RBFill *,CGRect)>,0ul,unsigned int>::~vector(v3);
  if (*v2)
  {
    free(*v2);
  }

  _Unwind_Resume(a1);
}

unint64_t RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Color>::has_no_effect(uint64_t a1)
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

RB::Symbol::Model *RB::Symbol::Animation::style_mask(RB::Symbol::Animation *this)
{
  result = *(this + 10);
  if (result)
  {
    return *(RB::Symbol::Model::glyph_info(result) + 464);
  }

  return result;
}

uint64_t RB::Refcount<RB::Surface,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

BOOL RB::Symbol::Animator::set_current_time(os_unfair_lock_s *this, double a2)
{
  os_unfair_lock_lock(this);
  v4 = *&this[10]._os_unfair_lock_opaque;
  if (v4 != a2)
  {
    *&this[10]._os_unfair_lock_opaque = a2;
    ++this[15]._os_unfair_lock_opaque;
  }

  v5 = v4 != a2;
  os_unfair_lock_unlock(this);
  return v5;
}

void RB::DisplayList::GenericItem1<RB::Coverage::Glyphs,RB::Fill::Color>::render(float32x2_t *a1, int32x2_t *a2)
{
  v4 = a1[6];
  v5 = a1[3];
  _H0 = a1[5].i16[2];
  __asm { FCVT            S8, H0 }

  v11 = a1[5].i16[3] & 0x3F;
  *&v12 = (*(*a1 + 136))(a1, 0);
  RB::Bounds::Bounds(&v20, v12, v13, v14, v15);
  if (a2[11] != v5 || !RB::Bounds::contains(a2 + 12, *&v20, *(&v20 + 8)))
  {
    v18 = 0;
LABEL_10:
    RB::CGContext::update_state_slow(a2, v4, v5, v11, &v20, v18, _S8);
    goto LABEL_11;
  }

  v18 = 1;
  if (a2[10] != v4)
  {
    goto LABEL_10;
  }

  v16.i32[0] = a2[17].i32[1];
  if (v16.f32[0] != _S8 || a2[18].i32[0] != v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  RB::Coverage::Glyphs::fill(a1 + 7, a2, &a1[14], v16, v17);
}

void RB::Surface::~Surface(id *this)
{
  *this = &unk_1F0A383F8;
  RB::Surface::invalidate_iosurface(this);

  v2 = this[13];
  if (v2)
  {
    free(v2);
  }

  v3 = this[6];
  if (v3)
  {
    CFRelease(v3);
  }
}

{
  RB::Surface::~Surface(this);

  JUMPOUT(0x19A8C09E0);
}

void sub_195D420C4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 104);
  if (v3)
  {
    free(v3);
  }

  RB::Surface::~Surface(v1);
  _Unwind_Resume(a1);
}

void RB::Symbol::Animation::apply(RB::Symbol::Animation *this, double a2, const RB::Symbol::Model *a3, const RB::Symbol::Animator *a4, RB::Symbol::Presentation *a5, RB::Symbol::KeyframeStorage *a6)
{
  v6 = a3;
  v9 = a2 - *(this + 6);
  v10 = *(a5 + 273);
  if (v10 == 2)
  {
    v123 = a5 + 8;
    if (*(a5 + 125))
    {
      v29 = *(a5 + 125);
    }

    else
    {
      v29 = a5 + 8;
    }

    v30 = *(a5 + 252);
    if (!v30)
    {
      goto LABEL_167;
    }

    v32 = &v29[496 * v30];
    v33 = INFINITY;
    __asm { FMOV            V0.2S, #1.0 }

    v121 = _D0;
    v120 = vdup_n_s32(0x3E99999Au);
    v122 = v32;
    while (1)
    {
      if (*(*v29 + 100) - *(*(this + 10) + 100) >= 0)
      {
        v38 = RB::Symbol::Model::glyph_info(*v29);
        v136[0] = *(v38 + 24);
        v136[1] = 0;
        v137 = *(v38 + 472);
        v39 = *(v38 + 468);
        v138 = 0;
        v139 = v39;
        LOBYTE(v39) = *(v38 + 480);
        v140 = v39 & 1;
        v141 = (v39 & 2) != 0;
        v40 = 0;
        should_variable_draw = RB::Symbol::Model::should_variable_draw(*v29, v38);
        v41 = *(this + 10);
        v42 = (*(v6 + 26) << 8) >> 24;
        v143 = (*(v41 + 26) << 8) >> 24;
        v144 = v42;
        v145 = 0;
        if (*(this + 1) == 6)
        {
          if (*v29 == v41)
          {
            v40 = 256;
          }

          else
          {
            if (*v29 != v6)
            {
              goto LABEL_165;
            }

            v40 = 512;
          }

          v136[1] = v40;
          HIDWORD(v137) = *(RB::Symbol::Model::glyph_info(v41) + 472);
          v138 = *(RB::Symbol::Model::glyph_info(v6) + 472);
          v145 = *(this + 10);
        }

        if ((*(this + 12) & 0x40) != 0)
        {
          v45 = 0;
        }

        else
        {
          RB::Symbol::Animation::local_time(this, v9, v6, 0, v134);
          v44 = RB::Symbol::Animation::keyframes(this, v136, a6, v134, v6, v43);
          if (!v44)
          {
            goto LABEL_168;
          }

          v45 = v44;
          RB::Symbol::Presentation::record_keyframes(a5, this, v40, v44, a6);
          if (*(this + 6) + v135 < v33)
          {
            v33 = *(this + 6) + v135;
          }
        }

        v46 = *(v29 + 112);
        if (v46)
        {
          for (i = 0; i != v46; ++i)
          {
            v48 = *(v29 + 55);
            if (!v48)
            {
              v48 = v29 + 8;
            }

            v49 = &v48[144 * i];
            if ((*(v49 + 35) >> *(this + 1)))
            {
              continue;
            }

            if ((*(this + 12) & 0x40) != 0)
            {
              RB::Symbol::Animation::local_time(this, v9, a3, *v49, v134);
              v45 = RB::Symbol::Animation::keyframes(this, v136, a6, v134, a3, v50);
              if (!v45)
              {
                continue;
              }

              RB::Symbol::Presentation::record_keyframes(a5, this, v136[1], v45, a6);
              if (*(this + 6) + v135 < v33)
              {
                v33 = *(this + 6) + v135;
              }
            }

            v51 = *v45;
            if ((*v45 & 0x1F) != 0)
            {
              v52 = v45;
              do
              {
                if (*(v52 + 2))
                {
                  v53 = *v49;
                  if ((((*(*v49 + 104) | v136[1]) ^ (v51 >> 15)) & (v51 >> 5) & 0x3FF) == 0)
                  {
                    v55 = (v51 >> 25) & 3;
                    if (v55 > 1)
                    {
                      v57 = *(v53 + 22);
                      if (v55 == 3)
                      {
                        v56 = v57;
                      }

                      else
                      {
                        v56 = i;
                      }
                    }

                    else
                    {
                      if (!v55)
                      {
                        goto LABEL_78;
                      }

                      v56 = *(v53 + 18);
                    }

                    if (*(v52 + 1) == v56)
                    {
LABEL_78:
                      v58 = RB::Symbol::Keyframes::eval(v52, v134[0], a6);
                      *v60.i32 = v58;
                      v61 = v59;
                      switch(*v52 & 0x1F)
                      {
                        case 1:
                          *(v49 + 8) = *(v49 + 8) * v58;
                          break;
                        case 2:
                          v75 = *(a3 + 26);
                          v73 = 1.25;
                          if (!BYTE2(v75))
                          {
                            v73 = 1.0;
                          }

                          if ((v75 & 0x800000) != 0)
                          {
                            v73 = 0.5;
                          }

                          v74 = v73 * *v60.i32;
                          goto LABEL_119;
                        case 3:
                          v70 = *(a3 + 26);
                          v71 = 1.25;
                          if (!BYTE2(v70))
                          {
                            v71 = 1.0;
                          }

                          if ((v70 & 0x800000) != 0)
                          {
                            v71 = 0.5;
                          }

                          v72 = *(v49 + 12);
                          v73 = v71 - v72;
                          v74 = v72 + (v73 * *v60.i32);
LABEL_119:
                          *(v49 + 12) = v74;
                          RB::Symbol::Presentation::Layer::add_scale_velocity(v49, v73 * v61);
                          break;
                        case 4:
                          v128 = v58;
                          RB::Symbol::Presentation::Layer::add_scale_velocity(v49, v59);
                          *(v49 + 13) = v128;
                          break;
                        case 5:
                          v68 = *(this + 40);
                          *(v49 + 11) = vmla_n_f32(*(v49 + 88), v68, *v60.i32);
                          v68.f32[0] = v59 * *v60.i32;
                          RB::Symbol::Presentation::Layer::add_velocity(v49, vdup_lane_s32(v68, 0));
                          break;
                        case 6:
                          *(v49 + 15) = *(v49 + 15) + v58;
                          goto LABEL_122;
                        case 7:
                          *(v49 + 16) = *(v49 + 16) + v58;
LABEL_122:
                          RBStrokeRef::clip(v49);
                          break;
                        case 8:
                          *(v49 + 8) = v58;
                          *(v49 + 9) = v58;
                          break;
                        case 9:
                          v77 = vdup_lane_s32(v60, 0);
                          v78 = vbsl_s8(vcgt_f32(v77, *(v49 + 32)), v77, *(v49 + 32));
                          goto LABEL_142;
                        case 0xA:
                          v69 = 0;
                          if ((*(this + 15) & 0x20) == 0)
                          {
                            v69.i32[0] = 1050253722;
                            if (v136[0] == 3)
                            {
                              v127 = v60.i32[0];
                              *v69.i32 = RB::Symbol::Model::alpha(a3, 2uLL, 0.3);
                              v60.i32[0] = v127;
                            }
                          }

                          *(v49 + 4) = vmla_n_f32(*(v49 + 32), vsub_f32(vdup_lane_s32(v69, 0), *(v49 + 32)), *v60.i32);
                          break;
                        case 0xB:
                          if (should_variable_draw == 1)
                          {
                            RB::Symbol::Model::variable_draw_params(a3, *(v29 + 121) + ((*(a3 + 24) - *(v29 + 121)) * v58), *v49, &v131);
                            v76 = v132;
                            *(v49 + 8) = v132;
                            *(v49 + 9) = v76;
                            *(v49 + 9) = v131;
                            *(v49 + 11) = v133;
                            goto LABEL_127;
                          }

                          v79 = *(a3 + 24);
                          v80 = *(*v49 + 88);
                          v129 = *v60.i32;
                          if (v80 == -1)
                          {
                            v81 = RB::Symbol::Model::glyph_info(a3);
                            v82 = RB::Symbol::Model::glyph_info(*v29);
                            v83 = v121;
                            _ZF = v81 == v82;
                            v32 = v122;
                            if (_ZF)
                            {
                              v84 = *(v29 + 55);
                              if (!v84)
                              {
                                v84 = v29 + 8;
                              }

                              v119 = 954437177 * ((v49 - v84) >> 4);
                              v85 = RB::Symbol::Model::glyph_info(a3);
                              v87 = v85 + 112;
                              if (*(v85 + 448))
                              {
                                v87 = *(v85 + 448);
                              }

                              v32 = v122;
                              v83 = __PAIR64__(v121.u32[1], COERCE_UNSIGNED_INT(RB::Symbol::Model::alpha(a3, (*(v87 + 112 * v119 + 104) >> 10), v86)));
                            }
                          }

                          else
                          {
                            if (v80 <= v79)
                            {
                              v88 = a3;
                              v89 = 0;
                            }

                            else
                            {
                              v83 = v120;
                              if (v136[0] != 3)
                              {
                                goto LABEL_141;
                              }

                              v88 = a3;
                              v89 = 2;
                            }

                            *v90.i32 = RB::Symbol::Model::alpha(v88, v89, v79);
                            v83 = vdup_lane_s32(v90, 0);
                          }

LABEL_141:
                          v78 = vmla_n_f32(*(v49 + 32), vsub_f32(v83, *(v49 + 32)), v129);
LABEL_142:
                          *(v49 + 4) = v78;
                          break;
                        case 0xC:
                          if (*(v49 + 8) > 0.0)
                          {
                            v62 = 0.3;
                            if ((v140 & 1) == 0)
                            {
                              v62 = 0.3;
                              if ((*(this + 12) & 0x10) != 0)
                              {
                                v62 = 0.3;
                                if (v136[0] == 3)
                                {
                                  v63 = (*(*v49 + 104) >> 10);
                                  if (v63 <= 1)
                                  {
                                    v64 = v63 + 1;
                                  }

                                  else
                                  {
                                    v64 = v63 - 1;
                                  }

                                  v126 = v60.i32[0];
                                  v65 = RB::Symbol::Model::alpha(a3, v64, 0.3);
                                  v32 = v122;
                                  v66 = RB::Symbol::Model::alpha(a3, (*(*v49 + 104) >> 10), v65);
                                  v60.i32[0] = v126;
                                  v62 = v65 / v66;
                                }
                              }
                            }

                            *(v49 + 8) = (v62 + ((1.0 - v62) * *v60.i32)) * *(v49 + 8);
                          }

                          v67 = *(v49 + 9);
                          if (v67 > 0.0 && (v140 & 1) == 0 && (*(this + 12) & 0x10) != 0)
                          {
                            *(v49 + 9) = v67 * ((*v60.i32 * 0.7) + 0.3);
                          }

                          break;
                        case 0xD:
                          goto LABEL_83;
                        case 0xE:
                        case 0xF:
                          v125 = v58;
                          if (RB::Symbol::Glyph::Layer::can_animate_stroke_length(*v49) || (*(*v49 + 108) & 2) != 0)
                          {
                            if ((*v52 & 0x1F) == 0xE)
                            {
                              *(v49 + 18) = v125;
                            }

                            else
                            {
                              *(v49 + 19) = v125;
                            }

LABEL_127:
                            RB::Symbol::Presentation::Layer::add_stroke_velocity(v49, v61, v29);
                          }

                          else
                          {
                            *v60.i32 = v125;
                            if ((*v52 & 0x1F) == 0xE)
                            {
                              *v60.i32 = 1.0 - v125;
                            }

LABEL_83:
                            *(v49 + 8) = *(v49 + 8) * *v60.i32;
                            if (*v60.i32 <= 0.0)
                            {
                              *(v49 + 9) = 0;
                            }
                          }

                          break;
                        case 0x10:
                          *(v49 + 14) = *(v49 + 14) * v58;
                          break;
                        default:
                          break;
                      }
                    }
                  }
                }

                v54 = *(v52 + 6);
                v52 = (v52 + 24);
                v51 = v54;
              }

              while ((v54 & 0x1F) != 0);
            }

            *(v49 + 35) |= *(this + 5);
          }
        }

        v91 = *(this + 1);
        v92 = v91 > 0xE;
        v93 = (1 << v91) & 0x6040;
        v94 = v92 || v93 == 0;
        v6 = a3;
        if (!v94)
        {
          v95 = *(a5 + 125) ? *(a5 + 125) : v123;
          v96 = *(a5 + 252);
          if (v96)
          {
            v97 = &v95[496 * v96];
            do
            {
              if (!*(v95 + 57))
              {
                v98 = v95 + 8;
                if (*(v95 + 55))
                {
                  v98 = *(v95 + 55);
                }

                v99 = *(v95 + 112);
                if (v99)
                {
                  v100 = 144 * v99;
                  do
                  {
                    if ((*(*v98 + 108) & 2) != 0)
                    {
                      operator new();
                    }

                    v98 += 144;
                    v100 -= 144;
                  }

                  while (v100);
                }
              }

              v95 += 496;
            }

            while (v95 != v97);
          }
        }
      }

LABEL_165:
      v29 += 496;
      if (v29 == v32)
      {
        goto LABEL_168;
      }
    }
  }

  if (v10 == 1)
  {
    v23 = a5 + 8;
    if (*(a5 + 125))
    {
      v23 = *(a5 + 125);
    }

    v24 = *(a5 + 252);
    if (v24)
    {
      v25 = 496 * v24;
      do
      {
        v26 = *(this + 10);
        if (*(*v23 + 100) - *(v26 + 100) >= 0)
        {
          v27 = *(this + 1);
          if (v27)
          {
            if (v27 == 1)
            {
              v23[489] = 1;
            }

            else if (v27 == 4 && (v23[481] & 1) == 0)
            {
              v28 = *(v26 + 106);
              v23[481] = 1;
              v23[480] = v28;
            }
          }
        }

        v23 += 496;
        v25 -= 496;
      }

      while (v25);
    }

    goto LABEL_167;
  }

  if (v10 || (v11 = *(this + 10)) == 0 || (v12 = *(v11 + 104), (v12 & 0x1000000) != 0) || (v12 != 0xFF ? (_ZF = *(v11 + 16) == 0) : (_ZF = 1), _ZF))
  {
LABEL_167:
    v33 = INFINITY;
LABEL_168:
    if (v33 - a2 < 0.00416666667)
    {
      v101 = RB::Symbol::Animation::frame_delay(this, v6);
      v102.i32[0] = *(this + 6);
      v103 = vrecpe_f32(v102);
      v104 = vmul_f32(vrecps_f32(v102, v103), v103);
      v33 = (v101 * vmul_f32(v104, vrecps_f32(v102, v104)).f32[0]) + a2;
    }

    v105 = *(a5 + 134);
    if (v105 > v33)
    {
      v105 = v33;
    }

    *(a5 + 134) = v105;
    return;
  }

  v14 = a5 + 8;
  if (*(a5 + 125))
  {
    v15 = *(a5 + 125);
  }

  else
  {
    v15 = a5 + 8;
  }

  v16 = *(a5 + 252);
  if (!v16)
  {
LABEL_17:
    v18 = *(this + 1);
    if (v18 == 7)
    {
      if (v16)
      {
        v106 = RB::Heap::emplace<RB::Symbol::Presentation::Interpolant>((a5 + 1104));
        *v136 = 0;
        v137 = 0;
        v138 = 0;
        RB::Symbol::Animation::local_time(this, v9, v6, 0, v136);
        v107 = v137;
        *v108.i32 = *&v137 * *v136;
        *v106 = *&v137 * *v136;
        *(v106 + 4) = v107;
        v109 = *(this + 3);
        if (!*(this + 9) || (v109 & 0x80) == 0)
        {
          v110.i32[0] = vdup_lane_s32(v108, 0).u32[0];
          v110.i32[1] = v107;
          *v106 = vmul_f32(vmul_n_f32(v110, *v108.i32), vmla_n_f32(0x40C0000040400000, 0xC0C00000C0000000, *v108.i32));
        }

        *(v106 + 8) = v109 >= 0;
        if (*(a5 + 125))
        {
          v111 = *(a5 + 125);
        }

        else
        {
          v111 = v14;
        }

        LODWORD(v16) = *(a5 + 252);
        *&v111[496 * (v16 - 1) + 464] = v106;
        *(a5 + 1088) = 1;
      }

      v33 = a2;
      goto LABEL_195;
    }

    if (v18 == 6)
    {
      RB::Symbol::Animation::infer_replace_subtype(this, v11, v6);
      v19 = *(this + 3) & 0x7800000;
      v20 = (v19 - 0x800000) >> 23;
      v21 = 1.0;
      if (v20 - 2 < 3)
      {
        v22 = 0x400000004;
LABEL_186:
        v112 = RB::Heap::emplace<RB::Symbol::Presentation::Interpolant>((a5 + 1104));
        *v136 = 0;
        v137 = 0;
        v138 = 0;
        RB::Symbol::Animation::local_time(this, v9, v6, 0, v136);
        v113 = v137;
        v114 = (*v136 * v21) * *&v137;
        if (v114 < 0.0)
        {
          v114 = 0.0;
        }

        if (v114 > 1.0)
        {
          v114 = 1.0;
        }

        *v112 = v114;
        *(v112 + 4) = v113;
        *(v112 + 8) = 0;
        *(v112 + 12) = v22;
        if (*(a5 + 125))
        {
          v115 = *(a5 + 125);
        }

        else
        {
          v115 = v14;
        }

        LODWORD(v16) = *(a5 + 252);
        *&v115[496 * (v16 - 1) + 464] = v112;
        *(a5 + 1088) = 1;
        goto LABEL_194;
      }

      if (v20 < 2)
      {
        if (v19 == 0x800000)
        {
          v21 = 2.0;
        }

        else
        {
          v21 = *"333@";
        }

        v22 = 0x200000002;
        goto LABEL_186;
      }

      if (v20 == 7)
      {
        v22 = 8;
        goto LABEL_186;
      }

      LODWORD(v16) = *(a5 + 252);
    }

LABEL_194:
    v33 = INFINITY;
LABEL_195:
    v116 = *(this + 10);
    if (*(a5 + 253) < (v16 + 1))
    {
      RB::vector<RB::Symbol::Presentation::Symbol,2ul,unsigned int>::reserve_slow(v14, v16 + 1);
      LODWORD(v16) = *(a5 + 252);
    }

    v117 = *(a5 + 125);
    if (!v117)
    {
      v117 = v14;
    }

    v118 = &v117[496 * v16];
    atomic_fetch_add_explicit((v116 + 8), 1u, memory_order_relaxed);
    *v118 = v116;
    *(v118 + 55) = 0;
    *(v118 + 56) = 0x300000000;
    *(v118 + 58) = 0;
    *(v118 + 59) = 0;
    *(v118 + 57) = 0;
    *(v118 + 240) = 0;
    *(v118 + 121) = 2143289344;
    *(v118 + 244) = 0;
    ++*(a5 + 252);
    goto LABEL_168;
  }

  v17 = 496 * v16;
  while (*(v11 + 100) != *(*v15 + 100))
  {
    v15 += 496;
    v17 -= 496;
    if (!v17)
    {
      goto LABEL_17;
    }
  }

  *(this + 3) |= 0x8000u;
}

uint64_t RB::Symbol::Animation::will_apply(uint64_t this, double a2)
{
  if (*(this + 56) != a2)
  {
    v2 = *(this + 36);
    if (v2 >= 2)
    {
      if (v2 != 2)
      {
        return this;
      }

      if ((*(this + 13) & 0x40) == 0 && a2 - *(this + 48) > 0.0333333333)
      {
        *(this + 48) = a2 + -0.0333333333;
      }

      v3 = 3;
    }

    else
    {
      if ((*(this + 13) & 0x40) == 0)
      {
        *(this + 48) = a2;
      }

      if (v2)
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }
    }

    *(this + 36) = v3;
  }

  return this;
}

void RB::Coverage::Glyphs::fill(float32x2_t *this, RB::CGContext *a2, const RB::Fill::Color *a3, float32x4_t a4, double a5)
{
  if (this[6].u8[4] >= 2u)
  {
    RB::Coverage::Glyphs::make_image_mask(this, a2, &v36);
    v10 = *&v36;
    if (!v36)
    {
      return;
    }

    v11 = *(a2 + 125);
    v12 = *(a3 + 13);
    if (v11 != v12 || v11 == 0)
    {
      if (v11 == v12 || !*(a2 + 125))
      {
        goto LABEL_48;
      }
    }

    else if (*(a2 + 124) == *(a3 + 12))
    {
      goto LABEL_48;
    }

    if (v12)
    {
LABEL_54:
      RB::CGContext::set_fill_color_slow(a2, a3, v8, v9);
LABEL_55:
      CGContextBeginTransparencyLayer(*a2, 0);
      v32 = *(&v36 + 2);
      v33 = *(&v36 + 3);
      v34 = *&v37;
      v35 = *(&v37 + 1);
      v42.origin.x = *(&v36 + 2);
      v42.origin.y = *(&v36 + 3);
      v42.size.width = *&v37;
      v42.size.height = *(&v37 + 1);
      CGContextClipToMask(*a2, v42, *&v10);
      v43.origin.x = v32;
      v43.origin.y = v33;
      v43.size.width = v34;
      v43.size.height = v35;
      CGContextFillRect(*a2, v43);
      CGContextEndTransparencyLayer(*a2);
      CFRelease(*&v10);
      return;
    }

LABEL_48:
    v8.i16[0] = *(a2 + 56);
    v9.i16[0] = *a3;
    if (*v8.i16 == *a3)
    {
      v8.i16[0] = *(a2 + 57);
      v9.i16[0] = *(a3 + 1);
      if (*v8.i16 == *v9.i16)
      {
        v8.i16[0] = *(a2 + 58);
        v9.i16[0] = *(a3 + 2);
        if (*v8.i16 == *v9.i16)
        {
          v8.i16[0] = *(a2 + 59);
          v9.i16[0] = *(a3 + 3);
          if (*v8.i16 == *v9.i16)
          {
            v8.i16[0] = *(a2 + 60);
            v9.i16[0] = *(a3 + 4);
            if (*v8.i16 == *v9.i16)
            {
              v8.i16[0] = *(a2 + 61);
              v9.i16[0] = *(a3 + 5);
              if (*v8.i16 == *v9.i16)
              {
                goto LABEL_55;
              }
            }
          }
        }
      }
    }

    goto LABEL_54;
  }

  if (this[2].i32[0] >= 2u)
  {
    LODWORD(a5) = *(a2 + 35);
    a4.i32[0] = 1.0;
    v14 = *(a3 + 3) == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) && *&a5 == 1.0;
    if (!v14 || *(a2 + 36) != 2)
    {
      RB::CGContext::save(a2);
      _H1 = *(a3 + 3);
      __asm { FCVT            S1, H1 }

      RB::CGContext::set_alpha(a2, *(a2 + 35) * _S1);
      v36 = xmmword_195E42760;
      v37 = xmmword_195E42770;
      v38 = 0;
      v39 = 0;
      v21 = RB::Coverage::Glyphs::bounds(this, &v36, 0);
      RB::Bounds::Bounds(v40, *&v21, v22, v23, v24);
      RB::CGContext::begin_layer(a2, 1.0, v40[0], v40[1]);
      *(&v36 + 6) = *(a3 + 6);
      *&v36 = *a3;
      WORD3(v36) = COERCE_UNSIGNED_INT(1.0);
      v27 = *(a2 + 125);
      if (v27 == BYTE13(v36) && *(a2 + 125))
      {
        if (*(a2 + 124) == BYTE12(v36))
        {
          goto LABEL_59;
        }
      }

      else if (v27 == BYTE13(v36) || !*(a2 + 125))
      {
        goto LABEL_59;
      }

      if (BYTE13(v36))
      {
LABEL_65:
        RB::CGContext::set_fill_color_slow(a2, &v36, v25, v26);
LABEL_66:
        RB::Coverage::Glyphs::show(this, a2, 0);
        RB::CGContext::end_layer(a2);
        RB::CGContext::restore(a2);
        return;
      }

LABEL_59:
      v25.i16[0] = *(a2 + 56);
      v26.i16[0] = v36;
      if (*v25.i16 == *&v36)
      {
        v25.i16[0] = *(a2 + 57);
        v26.i16[0] = WORD1(v36);
        if (*v25.i16 == *(&v36 + 1))
        {
          v25.i16[0] = *(a2 + 58);
          v26.i16[0] = WORD2(v36);
          if (*v25.i16 == *(&v36 + 2))
          {
            v25.i16[0] = *(a2 + 59);
            *v26.i16 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
            if (*v25.i16 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              v25.i16[0] = *(a2 + 60);
              v26.i16[0] = WORD4(v36);
              if (*v25.i16 == *(&v36 + 4))
              {
                v25.i16[0] = *(a2 + 61);
                v26.i16[0] = WORD5(v36);
                if (*v25.i16 == *(&v36 + 5))
                {
                  goto LABEL_66;
                }
              }
            }
          }
        }
      }

      goto LABEL_65;
    }
  }

  v28 = *(a2 + 125);
  v29 = *(a3 + 13);
  if (v28 == v29 && v28 != 0)
  {
    if (*(a2 + 124) != *(a3 + 12))
    {
      goto LABEL_35;
    }

LABEL_36:
    a4.i16[0] = *(a2 + 56);
    LOWORD(a5) = *a3;
    if (*a4.i16 == *a3)
    {
      a4.i16[0] = *(a2 + 57);
      LOWORD(a5) = *(a3 + 1);
      if (*a4.i16 == *&a5)
      {
        a4.i16[0] = *(a2 + 58);
        LOWORD(a5) = *(a3 + 2);
        if (*a4.i16 == *&a5)
        {
          a4.i16[0] = *(a2 + 59);
          LOWORD(a5) = *(a3 + 3);
          if (*a4.i16 == *&a5)
          {
            a4.i16[0] = *(a2 + 60);
            LOWORD(a5) = *(a3 + 4);
            if (*a4.i16 == *&a5)
            {
              a4.i16[0] = *(a2 + 61);
              LOWORD(a5) = *(a3 + 5);
              if (*a4.i16 == *&a5)
              {
                goto LABEL_43;
              }
            }
          }
        }
      }
    }

    goto LABEL_42;
  }

  if (v28 == v29 || v28 == 0)
  {
    goto LABEL_36;
  }

LABEL_35:
  if ((v29 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_42:
  RB::CGContext::set_fill_color_slow(a2, a3, a4, *&a5);
LABEL_43:

  RB::Coverage::Glyphs::show(this, a2, 0);
}

uint64_t RBSymbolUpdateLayerColorName(__int128 *a1)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  if ((*(*v1 + 104) & 0x3C0000) == 0x240000)
  {
    return *(*v1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t RB::Symbol::Model::should_variable_draw(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 480) & 4) != 0)
  {
    return (*(a1 + 105) >> 5) & 1;
  }

  else
  {
    return 0;
  }
}

void RB::Coverage::Glyphs::show(float32x2_t **this, CGContextRef *a2, int a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(this + 4);
  if (v6 <= 0x100)
  {
    MEMORY[0x1EEE9AC00](this, a2);
    v7 = (v15 - ((v8 + 15) & 0x1FFFFFFFF0));
    bzero(v7, v8);
  }

  else
  {
    v7 = malloc_type_malloc(16 * v6, 0x1000040451B5BE8uLL);
    if (!v7)
    {
LABEL_14:
      free(v7);
      return;
    }
  }

  v9 = *(this + 4);
  if (v9)
  {
    v10 = this[1];
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = vcvtq_f64_f32(v12);
      --v9;
    }

    while (v9);
  }

  v13 = rb_clip_mode(*(this + 52));
  if (*(a2 + 148) != v13)
  {
    RB::CGContext::set_aliasing_mode_slow(a2, v13);
  }

  CGContextSetFont(*a2, *this);
  CGContextSetFontRenderingStyle();
  if (a3)
  {
    v14 = kCGTextClip;
  }

  else
  {
    v14 = kCGTextFill;
  }

  CGContextSetTextDrawingMode(*a2, v14);
  CGContextSetShouldDrawBitmapRuns();
  CGContextShowGlyphsAtPositions(*a2, &this[1][*(this + 4)], v7, *(this + 4));
  if (v6 >= 0x101)
  {
    goto LABEL_14;
  }
}

float RB::Symbol::Animation::draw_duration(RB::Symbol::Animation *this, const RB::Symbol::Model *a2, int a3, __int16 a4, float a5, int a6)
{
  v10 = a2;
  v24[1] = *MEMORY[0x1E69E9840];
  v11 = RB::Symbol::Model::glyph_info(this);
  v13 = v11;
  v14 = *(v11 + 472);
  if (v14 <= 0x155)
  {
    MEMORY[0x1EEE9AC00](v11, v12);
    v15 = v24 - ((v18 + 15) & 0x1FFFFFFFF0);
    bzero(v15, v18);
  }

  else
  {
    v15 = malloc_type_malloc(12 * v14, 0x1000040FD6F1FF4uLL);
    if (!v15)
    {
      v17 = 0.0;
LABEL_15:
      free(v15);
      return v17;
    }
  }

  *&v16 = a5;
  RB::Symbol::Animation::draw_timing_groups(v15, v13, v10, a3, a4, a6, v16);
  v17 = 0.0;
  if (v14)
  {
    v19 = v15;
    v20 = v14;
    do
    {
      v21 = v19[1];
      if ((v10 & 1) == 0 && *(v19 + 10))
      {
        v21 = v21 + 0.033333;
      }

      if (v21 > 0.0)
      {
        v22 = *v19 + v21;
        if (v17 < v22)
        {
          v17 = v22;
        }
      }

      v19 += 3;
      --v20;
    }

    while (v20);
    if (v14 >= 0x156)
    {
      goto LABEL_15;
    }
  }

  return v17;
}

void RB::Symbol::Animation::local_duration(RB::Symbol::Animation *this, const RB::Symbol::Model *a2)
{
  if (!*(this + 9) || (*(this + 12) & 0x80) == 0)
  {
    v3 = *(this + 1);
    switch(v3)
    {
      case 1:
        RB::Symbol::Model::glyph_info(a2);
        return;
      case 6:
        v6 = *(this + 3);
        v7 = ((v6 & 0x7800000) - 0x800000) >> 23;
        if (v7 <= 4)
        {
          return;
        }

        if (v7 == 5)
        {
          v8 = 0;
        }

        else
        {
          if (v7 != 6 && v7 != 7)
          {
            return;
          }

          v8 = 8;
        }

        if (v6 >> 30 != 3)
        {
          RB::Symbol::Animation::draw_duration(*(this + 10), 0, 0, v8, 0.25, 0);
        }

        RB::Symbol::Animation::draw_duration(a2, 1, 0, v8, 0.25, 0);
        break;
      case 13:
      case 14:
        v4 = 0.16667;
        if (v3 == 13)
        {
          v4 = 0.25;
        }

        v5 = *(this + 3);

        RB::Symbol::Animation::draw_duration(a2, (v3 == 13), v5, 0, v4, 0);
        return;
      default:
        return;
    }
  }
}

void RB::Symbol::Animation::local_time(RB::Symbol::Animation *this@<X0>, float a2@<S0>, const RB::Symbol::Model *a3@<X1>, const RB::Symbol::Glyph::Layer *a4@<X2>, uint64_t a5@<X8>)
{
  v7 = a2;
  v10 = *(this + 3);
  if ((~v10 & 0x10040) == 0)
  {
    v7 = a2 - RB::Symbol::Animation::layer_delay(this, a3, a4);
    v10 = *(this + 3);
  }

  if (v7 >= 0.0001)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0.0001;
  }

  v12 = *(this + 6);
  v13 = v11 * v12;
  if ((v10 & 0x200) != 0)
  {
    v15 = RB::Symbol::Animation::intro_duration(this, a3);
    v16 = v15;
    if (v13 < v15)
    {
      v17 = 0;
      v18 = 0.0;
      goto LABEL_40;
    }

    v19 = v13 - v15;
    if ((v10 & 0x10040) == 0x40)
    {
      v19 = v19 - RB::Symbol::Animation::layer_delay(this, a3, a4);
    }

    v14 = fmaxf(v19, 0.0001);
  }

  else
  {
    v14 = v11 * v12;
  }

  RB::Symbol::Animation::local_duration(this, a3);
  v16 = *&v21;
  v22 = *(this + 3);
  if ((v22 & 0x400) != 0 && (v13 = v14 - ((*&v21 + (*(this + 6) * *(this + 8))) * *(this + 7)), v13 > 0.0))
  {
    v23 = RB::Symbol::Animation::outro_duration(this, v20);
    v16 = v23;
    if (v13 >= v23)
    {
      v13 = v23;
    }

    v18 = 0.0;
    v17 = 2;
  }

  else
  {
    v18 = 0.0;
    v13 = v14;
    if ((v22 & 0x800) != 0)
    {
      v24 = *&v21 + (*(this + 6) * *(this + 8));
      v25 = 0.0;
      if (v24 > 0.0)
      {
        v26 = vrecpe_f32(LODWORD(v24));
        v27 = vmul_f32(vrecps_f32(LODWORD(v24), v26), v26);
        v25 = v14 * vmul_f32(v27, vrecps_f32(LODWORD(v24), v27)).f32[0];
      }

      v28 = *(this + 7);
      if (v28 >= v25)
      {
        v28 = v25;
      }

      v18 = floorf(v28);
      v13 = (v25 - v18) * v24;
    }

    if ((v22 & 0x80) != 0)
    {
      v29 = *(this + 9);
      if (v29)
      {
        *&v21 = v13 * v16;
        HIDWORD(v30) = 0;
        if ((v13 * v16) < 0.0)
        {
          *&v21 = 0.0;
        }

        LODWORD(v30) = 1.0;
        if (*&v21 > 1.0)
        {
          *&v21 = 1.0;
        }

        if (*(v29 + 24))
        {
          v31 = *(v29 + 24);
        }

        else
        {
          v31 = *(this + 9);
        }

        v41 = v16;
        RB::Animation::eval(v31, *(v29 + 32), (v29 + 44), v21, v30);
        v16 = v41;
        v13 = v32;
      }
    }

    if (v13 >= v16)
    {
      if ((*(this + 13) & 8) != 0)
      {
        v33 = *(this + 8);
        if (v33 > 0.0)
        {
          v34 = *(this + 6);
          v35 = vrecpe_f32(v34);
          v36 = vmul_f32(vrecps_f32(v34.u32[0], v35), v35);
          v11 = (((v16 + v14) - v13) + (*(this + 6) * v33)) * vmul_f32(v36, vrecps_f32(v34.u32[0], v36)).f32[0];
        }
      }

      v17 = 1;
      v13 = v16;
    }

    else
    {
      v17 = 1;
    }
  }

LABEL_40:
  v37 = 0;
  if (v13 >= 0.0)
  {
    v38 = v13;
  }

  else
  {
    v38 = 0.0;
  }

  if (v38 > v16)
  {
    v38 = v16;
  }

  *a5 = v38;
  *(a5 + 4) = v18;
  if (v16 > 0.0)
  {
    v39 = vrecpe_f32(LODWORD(v16));
    v40 = vmul_f32(vrecps_f32(LODWORD(v16), v39), v39);
    v37 = vmul_f32(v40, vrecps_f32(LODWORD(v16), v40)).u32[0];
  }

  *(a5 + 8) = v37;
  *(a5 + 12) = v11;
  *(a5 + 16) = v17;
}

uint64_t RB::Symbol::Animation::draw_on_off_keyframes(uint64_t a1, _DWORD *a2, uint64_t a3, RB::Symbol::KeyframeStorage *a4, float *a5, RB::Symbol::Model *this)
{
  v33 = a3;
  v35 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 12);
  v12 = RB::Symbol::Model::glyph_info(this);
  v14 = v12;
  v15 = *(v12 + 472);
  if (v15 <= 0x155)
  {
    MEMORY[0x1EEE9AC00](v12, v13);
    v16 = &v34[-1] - ((v19 + 15) & 0x1FFFFFFFF0);
    bzero(v16, v19);
  }

  else
  {
    v16 = malloc_type_malloc(12 * v15, 0x1000040FD6F1FF4uLL);
    if (!v16)
    {
      v18 = 0;
LABEL_32:
      free(v16);
      return v18;
    }
  }

  LODWORD(v17) = 1042983595;
  if (a2)
  {
    *&v17 = 0.25;
  }

  RB::Symbol::Animation::draw_timing_groups(v16, v14, a2, *(a1 + 12), 0, 0, v17);
  if ((~v11 & 0x80000010) == 0 && v15 == 1)
  {
    v21 = v11 & 0x7FFFFFFF;
  }

  else
  {
    v21 = v11;
  }

  RB::Symbol::KeyframeStorage::clear(a4);
  if (RB::Symbol::Animation::make_draw_on_off_keyframes_(a2, v21, this, v22, v23, v16, a4, 0, 0.0, 0))
  {
    RB::Symbol::Animation::make_appear_disappear_keyframes(a2, *(a1 + 12) & 0x1FFFFFFF | 0x40000000, v33, v16, a4, 16, 0);
  }

  if ((~v21 & 0x80000010) == 0)
  {
    v24 = 0.0;
    v25 = 0.0;
    if (v15)
    {
      v26 = v16;
      v27 = v15;
      do
      {
        v28 = v26[1];
        if ((a2 & 1) == 0 && *(v26 + 10))
        {
          v28 = v28 + 0.033333;
        }

        if (v28 > 0.0)
        {
          v29 = *v26 + v28;
          if (v25 < v29)
          {
            v25 = v29;
          }
        }

        v26 += 3;
        --v27;
      }

      while (v27);
    }

    if (a2)
    {
      v30 = 17;
    }

    else
    {
      v30 = 18;
    }

    v34[0] = v30;
    if (v25 >= 0.0)
    {
      v24 = v25;
    }

    *&v34[1] = v24;
    v34[2] = 0;
    *a5 = RB::Symbol::Keyframes::Value::interpolant(v34, *a5) * v25;
    a5[2] = a5[2] * v31;
  }

  v18 = RB::Symbol::KeyframeStorage::commit(a4);
  if (v15 >= 0x156)
  {
    goto LABEL_32;
  }

  return v18;
}

void sub_195D43EA4(_Unwind_Exception *exception_object)
{
  if (v2 >= 0x156)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void *RB::Symbol::Animation::keyframes(uint64_t a1, _DWORD *a2, RB::Symbol::KeyframeStorage *a3, uint64_t a4, RB::Symbol::Model *this, float a6)
{
  v6 = 0;
  v7 = *(a1 + 4);
  if (v7 > 8)
  {
    if (v7 > 11)
    {
      if ((v7 - 13) < 2)
      {
        return RB::Symbol::Animation::draw_on_off_keyframes(a1, (v7 == 13), a2, a3, a4, this);
      }

      if (v7 == 12)
      {
        return RB::Symbol::Animation::breathe_keyframes(a1, a2, a3);
      }

      return v6;
    }

    if (v7 == 9)
    {
      return RB::Symbol::Animation::appear_disappear_keyframes(a1, (v7 == 5), a2, a3);
    }

    if (v7 == 10)
    {
      return RB::Symbol::Animation::wiggle_keyframes(a1, a2, a3, *(a4 + 16), this);
    }

    else
    {
      return RB::Symbol::Animation::rotate_keyframes(a1, a2, a3, *(a4 + 16));
    }
  }

  else
  {
    if (v7 > 2)
    {
      if (v7 <= 4)
      {
        if (v7 == 3)
        {
          return RB::Symbol::Animation::bounce_keyframes(a1, a2, a3, *(a4 + 16));
        }

        else
        {
          return RB::Symbol::Animation::scale_keyframes(a1, a2, a3);
        }
      }

      if (v7 != 5)
      {
        if (v7 == 6)
        {
          v9 = *(a1 + 12) & 0x7800000;
          v10 = (v9 - 0x800000) >> 23;
          if (v10 > 7)
          {
            return RB::Symbol::Animation::replace_keyframes(a1, a2, a3);
          }

          v11 = 1 << v10;
          if ((v11 & 0x1C) != 0)
          {
            switch(v9)
            {
              case 25165824:
                return &RB::Symbol::Animation::replace_badge_keyframes(RB::Symbol::Animation::KeyframesArgs const&,RB::Symbol::KeyframeStorage &)const::add_keyframes;
              case 41943040:
                return &RB::Symbol::Animation::replace_badge_keyframes(RB::Symbol::Animation::KeyframesArgs const&,RB::Symbol::KeyframeStorage &)const::move_keyframes;
              case 33554432:
                return &RB::Symbol::Animation::replace_badge_keyframes(RB::Symbol::Animation::KeyframesArgs const&,RB::Symbol::KeyframeStorage &)const::remove_keyframes;
              default:
                return 0;
            }
          }

          else
          {
            if ((v11 & 0xE0) != 0)
            {
              return RB::Symbol::Animation::replace_draw_keyframes(a1, a2, a3, this);
            }

            v14 = &RB::Symbol::Animation::replace_slash_keyframes(RB::Symbol::Animation::KeyframesArgs const&,RB::Symbol::KeyframeStorage &)const::remove_keyframes;
            if (v9 != 0x1000000)
            {
              v14 = 0;
            }

            if (v9 == 0x800000)
            {
              return &RB::Symbol::Animation::replace_slash_keyframes(RB::Symbol::Animation::KeyframesArgs const&,RB::Symbol::KeyframeStorage &)const::add_keyframes;
            }

            else
            {
              return v14;
            }
          }
        }

        return v6;
      }

      return RB::Symbol::Animation::appear_disappear_keyframes(a1, (v7 == 5), a2, a3);
    }

    if (!v7)
    {
      return RB::Symbol::Animation::variable_value_keyframes(a1, a2, a3);
    }

    if (v7 != 1)
    {
      if (v7 == 2)
      {
        return RB::Symbol::Animation::pulse_keyframes(a1, a2, a3);
      }

      return v6;
    }

    v12 = *(a4 + 16);
    if (v12 == 1)
    {
      v13 = (*(a1 + 12) >> 30) ^ 2;
      if (v13 > 1)
      {
        if (v13 == 3)
        {
          return RB::Symbol::Animation::vc_cumulative_bounce_keyframes(a1, a2, a3, this, a6);
        }

        else
        {
          return RB::Symbol::Animation::vc_cumulative_keyframes(a1, a2, a3, this, a6);
        }
      }

      else if (v13)
      {
        return RB::Symbol::Animation::vc_sequential_bounce_keyframes(a1, a2, a3, this, a6);
      }

      else
      {
        return RB::Symbol::Animation::vc_sequential_keyframes(a1, a2, a3, this, a6);
      }
    }

    else
    {
      return RB::Symbol::Animation::vc_intro_outro_keyframes(a1, a2, a3, v12);
    }
  }
}

uint64_t RB::Symbol::KeyframeStorage::clear(uint64_t this)
{
  *(this + 776) = 0;
  *(this + 2328) = 0;
  *(this + 2336) = 0;
  return this;
}

_DWORD *RB::Symbol::KeyframeStorage::push_value(_DWORD *__dst, int a2, float a3, float a4)
{
  v7 = __dst;
  v8 = __dst[194];
  v9 = v8 + 1;
  if (__dst[195] < (v8 + 1))
  {
    __dst = RB::vector<RB::Symbol::Keyframes::Value,64ul,unsigned int>::reserve_slow(__dst, v9);
    v8 = v7[194];
    v9 = v8 + 1;
  }

  v10 = *(v7 + 96);
  if (!v10)
  {
    v10 = v7;
  }

  v11 = &v10[3 * v8];
  *v11 = a2;
  v12 = 0.0;
  if (a4 >= 0.0)
  {
    v12 = a4;
  }

  v11[1] = v12;
  v11[2] = a3;
  v7[194] = v9;
  return __dst;
}

_DWORD *RB::Symbol::KeyframeStorage::push_value(_DWORD *this, float a2)
{
  v3 = this;
  v4 = this[194];
  v5 = v4 + 1;
  if (this[195] < (v4 + 1))
  {
    this = RB::vector<RB::Symbol::Keyframes::Value,64ul,unsigned int>::reserve_slow(this, v5);
    v4 = v3[194];
    v5 = v4 + 1;
  }

  v6 = *(v3 + 96);
  if (!v6)
  {
    v6 = v3;
  }

  v7 = &v6[3 * v4];
  *v7 = 0xBF80000000000000;
  v7[2] = a2;
  v3[194] = v5;
  return this;
}

__n128 RB::Symbol::KeyframeStorage::push_keyframes(RB::Symbol::KeyframeStorage *this, const RB::Symbol::Keyframes *a2)
{
  v4 = this + 784;
  v5 = *(this + 582);
  if (*(this + 583) < (v5 + 1))
  {
    RB::vector<RB::Symbol::Keyframes,64ul,unsigned int>::reserve_slow(this + 784, v5 + 1);
    v5 = *(this + 582);
  }

  v6 = *(this + 290);
  if (!v6)
  {
    v6 = v4;
  }

  v7 = &v6[24 * v5];
  result = *a2;
  v7[1].n128_u64[0] = *(a2 + 2);
  *v7 = result;
  ++*(this + 582);
  return result;
}

uint64_t RB::Symbol::KeyframeStorage::commit(RB::Symbol::KeyframeStorage *this)
{
  if ((*(this + 2336) & 1) == 0)
  {
    v2 = *(this + 582);
    if (*(this + 583) < (v2 + 1))
    {
      RB::vector<RB::Symbol::Keyframes,64ul,unsigned int>::reserve_slow(this + 784, v2 + 1);
      v2 = *(this + 582);
    }

    v3 = *(this + 290);
    if (!v3)
    {
      v3 = this + 784;
    }

    v4 = &v3[24 * v2];
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    ++*(this + 582);
    *(this + 2336) = 1;
  }

  if (*(this + 290))
  {
    return *(this + 290);
  }

  else
  {
    return this + 784;
  }
}

uint64_t *RB::Symbol::Presentation::record_keyframes(uint64_t *this, const RB::Symbol::Animation *a2, int a3, const RB::Symbol::Keyframes *a4, RB::Symbol::KeyframeStorage *a5)
{
  v5 = this[273];
  if (v5)
  {
    v10 = this;
    v11 = v5[1];
    if (v5[2] < (v11 + 1))
    {
      this = RB::vector<std::pair<char const*,std::shared_ptr<RB::XML::Value::Base>>,0ul,unsigned long>::reserve_slow(this[273], v11 + 1);
      v11 = v5[1];
    }

    v12 = (*v5 + 24 * v11);
    *v12 = 0;
    v12[1] = 0;
    v12[2] = 0;
    ++v5[1];
    LODWORD(v12) = *a2;
    v13 = v10[273];
    v14 = *v13;
    v15 = v13[1];
    v16 = *v13 + 24 * v15;
    *(v16 - 24) = v12;
    *(v16 - 20) = a3;
    if (*(a5 + 582))
    {
      this = RB::Symbol::KeyframeStorage::commit(a5);
      v17 = v10[273];
      v14 = *v17;
      v15 = v17[1];
      if (this == a4)
      {
        operator new();
      }
    }

    *(v14 + 24 * v15 - 16) = a4;
  }

  return this;
}

float RB::Symbol::Keyframes::eval(RB::Symbol::Keyframes *this, float a2, const RB::Symbol::KeyframeStorage *a3)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(a3 + 96);
    if (!v4)
    {
      v4 = a3;
    }

    v3 = (v4 + 12 * (v3 >> 1));
  }

  v5 = v3[1];
  if (v5 < 0.0)
  {
    return v3[2];
  }

  v6 = a2 - *(this + 2);
  v7 = 1;
  if (v6 >= v5)
  {
    while (1)
    {
      v8 = &v3[3 * v7];
      v9 = v8[1];
      if (v9 < 0.0)
      {
        break;
      }

      v6 = fmaxf(v6 - v5, 0.0);
      ++v7;
      v5 = v8[1];
      if (v6 < v9)
      {
        return v8[2] + ((v3[3 * v7 + 2] - v8[2]) * RB::Symbol::Keyframes::Value::interpolant(v8, v6));
      }
    }

    v3 += 3 * v7;
    return v3[2];
  }

  v8 = v3;
  return v8[2] + ((v3[3 * v7 + 2] - v8[2]) * RB::Symbol::Keyframes::Value::interpolant(v8, v6));
}

float RB::Symbol::Keyframes::Value::interpolant(RB::Symbol::Keyframes::Value *this, float a2)
{
  v3 = *(this + 1);
  v4 = 0;
  if (v3 > 0.0)
  {
    v5 = *(this + 1);
    v6 = vrecpe_f32(LODWORD(v3));
    v7 = vmul_f32(vrecps_f32(v5, v6), v6);
    v4 = vmul_f32(v7, vrecps_f32(v5, v7));
    *v4.i32 = a2 * *v4.i32;
    if (*v4.i32 < 0.0)
    {
      *v4.i32 = 0.0;
    }

    if (*v4.i32 > 1.0)
    {
      *v4.i32 = 1.0;
    }
  }

  if (*this <= 0x29u)
  {
    if (*v8 != 0.0 || v8[1] != 0.0 || v8[2] != 1.0 || v8[3] != 1.0)
    {
      if (*v8 == 0.33 && v8[1] == 0.0 && v8[2] == 0.67 && v8[3] == 1.0)
      {
        v9 = vdup_lane_s32(v4, 0);
        v9.f32[0] = *v4.i32 * *v4.i32;
        v4.i32[0] = vmul_f32(vmla_n_f32(0x40C0000040400000, 0xC0C00000C0000000, *v4.i32), v9).u32[0];
      }

      else
      {
        *v4.i32 = RB::BezierTiming::eval_with_derivative((v8 + 4), *v4.i32);
      }
    }
  }

  return *v4.i32;
}

float RB::Symbol::Animation::frame_delay(RB::Symbol::Animation *this, const RB::Symbol::Model *a2)
{
  v2 = *(this + 1);
  v3 = 0.05;
  if ((v2 - 1) >= 2)
  {
    if (v2)
    {
      return 0.0;
    }

    v5 = RB::Symbol::Model::glyph_info(a2);
    if (RB::Symbol::Model::should_variable_draw(a2, v5))
    {
      return 0.0;
    }
  }

  return v3;
}

double RB::Symbol::Animation::end_time(RB::Symbol::Animation *this, const RB::Symbol::Model *a2, float32x2_t a3)
{
  if ((*(this + 6) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(this + 7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return INFINITY;
  }

  a3.i32[0] = *(this + 6);
  v7 = vrecpe_f32(a3);
  v8 = vmul_f32(vrecps_f32(a3, v7), v7);
  v21 = vmul_f32(v8, vrecps_f32(a3, v8)).f32[0];
  RB::Symbol::Animation::local_duration(this, a2);
  v4 = *(this + 6) + (((*(this + 7) * v10) * v21) + (fmaxf(*(this + 7) + -1.0, 0.0) * *(this + 8)));
  v11 = *(this + 3);
  if ((v11 & 0x40) != 0)
  {
    v12 = RB::Symbol::Model::glyph_info(a2);
    if (*(v12 + 448))
    {
      v13 = *(v12 + 448);
    }

    else
    {
      v13 = (v12 + 112);
    }

    v14 = *(v12 + 456);
    if (v14)
    {
      v15 = 112 * v14;
      v16 = 0.0;
      do
      {
        v17 = RB::Symbol::Animation::layer_delay(this, a2, v13);
        if (v16 < v17)
        {
          v16 = v17;
        }

        v13 = (v13 + 112);
        v15 -= 112;
      }

      while (v15);
      v18 = v16;
    }

    else
    {
      v18 = 0.0;
    }

    v4 = v4 + v18;
    v11 = *(this + 3);
    if ((v11 & 0x200) == 0)
    {
LABEL_7:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_8;
      }

LABEL_22:
      v4 = v4 + (RB::Symbol::Animation::outro_duration(this, v9) * v21);
      if ((v11 & 0x80) != 0)
      {
        return v4;
      }

      goto LABEL_23;
    }
  }

  else if ((v11 & 0x200) == 0)
  {
    goto LABEL_7;
  }

  v4 = v4 + (RB::Symbol::Animation::intro_duration(this, v9) * v21);
  if ((v11 & 0x400) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v11 & 0x80) != 0)
  {
    return v4;
  }

LABEL_23:
  v19 = *(this + 9);
  if (v19)
  {
    v20 = *(v19 + 40);
    if (v4 < *(this + 6) + v20)
    {
      return *(this + 6) + v20;
    }
  }

  return v4;
}

uint64_t rb_transition_method(int a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return dword_195E44F9C[a1 - 1];
  }
}

float RB::Transition::Effect::set_duration(RB::Transition::Effect *this, float a2)
{
  v2 = *this;
  if ((*this & 0x40) != 0)
  {
    v2 = *this & 0xFFBF;
  }

  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  result = (a2 * 255.0) + 0.5;
  *this = v2 & 0xFFFFFF | (result << 24);
  return result;
}

uint64_t RB::DisplayList::Layer::max_required_depth(RB::DisplayList::Layer *this, __n128 _Q0, float a3)
{
  v11 = *(this + 20);
  v12 = *(this + 42);
  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    LOWORD(a3) = *(this + 44);
    _ZF = *&a3 >= *_Q0.n128_u16 || *&a3 == COERCE_SHORT_FLOAT(0);
    if (_ZF)
    {
      *&a3 = *_Q0.n128_u16;
    }

    RB::ColorInfo::operator+=(&v11, (_Q0.n128_u32[0] << 16) | (LODWORD(a3) << 32) | (4 * (*_Q0.n128_u16 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))));
  }

  v8 = v11;
  if (*(this + 78))
  {
    v8 = RB::max_color_depth(v11, 2u);
  }

  for (i = *(this + 4); i; i = i[1])
  {
    (*(*i + 72))(i, &v11, _Q0);
    v8 = RB::max_color_depth(v8, v11);
  }

  return v8;
}

uint64_t RB::max_color_depth(unsigned int a1, unsigned int a2)
{
  v2 = a2 | a1;
  if (a1 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1;
  }

  if (v2 >= 4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t RB::DisplayList::Interpolator::Contents::intern_animation(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a3;
  v4 = a2;
  v6 = RB::Animation::hash(a2, a3);
  v7 = v6;
  v8 = *(a1 + 96);
  if (v8)
  {
    v9 = *(a1 + 88);
    v10 = *(a1 + 96);
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[2 * (v10 >> 1)];
      v14 = *v12;
      v13 = v12 + 2;
      v10 += ~(v10 >> 1);
      if (v14 < v6)
      {
        v9 = v13;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
  }

  else
  {
    v8 = 0;
    v9 = *(a1 + 88);
  }

  if (v9 != (*(a1 + 88) + 8 * v8))
  {
    while (*v9 == v7)
    {
      v16 = v9[1];
      v17 = *(a1 + 104);
      v18 = (v17 + 40 * v16);
      v19 = *v18;
      if (v19)
      {
        v20 = 0;
        v21 = (v17 + 40 * v16 + 8);
        do
        {
          v22 = *v21;
          v21 += 10;
          v20 += v22;
          --v19;
        }

        while (v19);
      }

      else
      {
        v20 = 0;
      }

      if (RB::Animation::equal(v4, v3, (*(a1 + 120) + 4 * v18[1]), v20))
      {
        return (v9[1] + 1);
      }

      v9 += 2;
      if (v9 == (*(a1 + 88) + 8 * *(a1 + 96)))
      {
        break;
      }
    }
  }

  v47 = v7;
  v23 = 0;
  v24 = 0;
  v46 = *(a1 + 112);
  do
  {
    v25 = v4;
    v26 = &v4[v23];
    v27 = v3;
    v28 = RB::Animation::size(v26, v3 - v23);
    v29 = *(a1 + 128);
    v30 = v29 + v28;
    if (v29 < v29 + v28 && *(a1 + 132) < v30)
    {
      RB::vector<RB::Animation::TermOrArg,0ul,unsigned int>::reserve_slow(a1 + 120, v30);
    }

    *(a1 + 128) = v30;
    if (v28)
    {
      v31 = (*(a1 + 120) + 4 * v29);
      v32 = 4 * v28;
      v33 = v26;
      do
      {
        v34 = *v33++;
        *v31++ = v34;
        v32 -= 4;
      }

      while (v32);
    }

    v35 = *(a1 + 112);
    if (*(a1 + 116) < v35 + 1)
    {
      RB::vector<RB::DisplayList::Interpolator::Contents::AnimationTableItem,0ul,unsigned int>::reserve_slow(a1 + 104, v35 + 1);
      v35 = *(a1 + 112);
    }

    v36 = *(a1 + 104) + 40 * v35;
    *(v36 + 32) = 0;
    *v36 = 0u;
    *(v36 + 16) = 0u;
    LODWORD(v36) = *(a1 + 112);
    *(a1 + 112) = v36 + 1;
    v37 = (*(a1 + 104) + 40 * v36);
    *v37 = 1;
    v37[1] = v29;
    v37[2] = v28;
    v38 = RB::Animation::active_duration(v26, v28);
    v39 = *(a1 + 104) + 40 * (*(a1 + 112) - 1);
    *(v39 + 12) = v38;
    RB::Animation::prepare(v26, v28, (v39 + 16));
    v23 = (v28 + v23);
    ++v24;
    v3 = v27;
    v4 = v25;
  }

  while (v23 < v27);
  *(*(a1 + 104) + 40 * v46) = v24;
  v40 = *(a1 + 88);
  v41 = v9 - v40;
  v42 = (v9 - v40) >> 3;
  v43 = *(a1 + 96);
  if (*(a1 + 100) < v43 + 1)
  {
    RB::vector<RB::objc_ptr<void({block_pointer})(RBFill *,CGRect)>,0ul,unsigned int>::reserve_slow(a1 + 88, v43 + 1);
    v40 = *(a1 + 88);
    v43 = *(a1 + 96);
  }

  v44 = v43 > v42;
  v45 = v43 - v42;
  if (v44)
  {
    memmove(&v41[v40 + 8], &v41[v40], 8 * v45);
  }

  *&v41[v40] = v47 | (v46 << 32);
  ++*(a1 + 96);
  return v46 + 1;
}

uint64_t RB::DisplayList::Interpolator::Contents::intern_animation(RB::DisplayList::Interpolator::Contents *this, const RB::Animation *a2)
{
  v2 = *(a2 + 3);
  if (!v2)
  {
    v2 = a2;
  }

  return RB::DisplayList::Interpolator::Contents::intern_animation(this, v2, *(a2 + 8));
}

uint64_t RB::Animation::hash(unsigned int *a1, uint64_t a2)
{
  for (result = 2166136261; a2; --a2)
  {
    v4 = *a1++;
    result = (16777619 * result) ^ v4;
  }

  return result;
}

unint64_t RB::Animation::size(uint64_t a1, unint64_t a2)
{
  result = 0;
  while (result < a2)
  {
    v4 = *(a1 + 4 * result);
    if (v4 == 18)
    {
      result += (2 * *(a1 + 4 * result + 4) + 3);
      return result;
    }

    result += RB::Animation::_term_args[v4] + 1;
    if ((v4 - 15) <= 0xFFFFFFFB)
    {
      return result;
    }
  }

  return result;
}

float RB::Animation::active_duration(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    v4 = 1.0;
    v3 = 0.0;
LABEL_22:
    v12 = 0.0;
    goto LABEL_28;
  }

  v2 = 0;
  v3 = 0.0;
  v4 = 1.0;
  while (1)
  {
    v5 = a1 + 4 * v2;
    v6 = *v5;
    if (*v5 >= 12)
    {
      if (v6 > 12)
      {
        if ((v6 - 15) < 3)
        {
          goto LABEL_23;
        }

        if ((v6 - 13) < 2)
        {
          v16 = v4;
          v12 = *(v5 + 4) * RB::Animation::active_duration(v5 + 8, a2 - v2 - 2);
          v9 = LODWORD(v16);
          goto LABEL_29;
        }

        if (v6 == 18)
        {
          v12 = *(v5 + 8);
          goto LABEL_28;
        }
      }

      else
      {
        v7 = vrecpe_f32(LODWORD(v4));
        v8 = vmul_f32(vrecps_f32(LODWORD(v4), v7), v7);
        v3 = v3 + (vmul_f32(v8, vrecps_f32(LODWORD(v4), v8)).f32[0] * *(v5 + 4));
      }

      goto LABEL_19;
    }

    if (v6 <= 6)
    {
      if (v6 < 5)
      {
        goto LABEL_23;
      }

      if (v6 == 5)
      {
        v10 = *(v5 + 4);
        v11 = 1.5;
        goto LABEL_27;
      }

      if (v6 == 6)
      {
        v10 = *(v5 + 4);
        v11 = 1.65;
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (v6 == 11)
    {
      v4 = *(v5 + 4) * v4;
      goto LABEL_19;
    }

    if ((v6 - 8) < 3)
    {
LABEL_23:
      v12 = *(v5 + 4);
      goto LABEL_28;
    }

    if (v6 == 7)
    {
      break;
    }

LABEL_19:
    v2 += RB::Animation::_term_args[v6] + 1;
    if (v2 >= a2)
    {
      goto LABEL_22;
    }
  }

  v10 = *(v5 + 4);
  v11 = 2.075;
LABEL_27:
  v12 = v10 * v11;
LABEL_28:
  v9 = LODWORD(v4);
LABEL_29:
  v13 = vrecpe_f32(v9);
  v14 = vmul_f32(vrecps_f32(v9, v13), v13);
  return (v12 * vmul_f32(v14, vrecps_f32(v9, v14)).f32[0]) + v3;
}

uint64_t RB::Animation::prepare(uint64_t result, unint64_t a2, float *a3)
{
  if (!a2)
  {
    return result;
  }

  v3 = 0;
  while (1)
  {
    v4 = *(result + 4 * v3);
    if (v4 > 7)
    {
      if ((v4 - 15) < 4)
      {
        return result;
      }

      if ((v4 - 9) < 2)
      {
        v5 = (result + 4 * v3);
        v6 = v5[2];
        v7 = v5[3];
        v8 = 0.0;
        if (v4 == 10)
        {
          v8 = v5[5];
        }

        v21 = sqrtf(v7 / v6);
        v9 = sqrtf(v7 * v6);
        v10 = v5[4] / (v9 + v9);
        if (v10 >= 1.0)
        {
          v26 = v21 - v8;
          v20 = 0.0;
        }

        else
        {
          v20 = sqrtf(-((v10 * v10) + -1.0)) * v21;
          v26 = -(v8 - (v10 * v21)) / v20;
        }

        *a3 = v10;
        v19 = 1.0;
        v22 = 4;
        v23 = 3;
        v24 = 2;
        goto LABEL_32;
      }

      if (v4 == 8)
      {
        v12 = (result + 4 * v3);
        v13 = v12[2];
        v14 = v12[3];
        v21 = v13 * 3.0;
        v15 = (v12[4] - v13) * 3.0;
        v16 = v15 - v21;
        v17 = 1.0 - v15;
        v26 = v14 * 3.0;
        v18 = (v12[5] - v14) * 3.0;
        v19 = v18 - v26;
        v20 = 1.0 - v18;
        *a3 = v17;
        a3[1] = v16;
        v22 = 5;
        v23 = 4;
        v24 = 3;
LABEL_29:
        v25 = 2;
        goto LABEL_33;
      }

      goto LABEL_12;
    }

    if (v4 > 3)
    {
      break;
    }

    if (v4 < 2)
    {
      return result;
    }

    if (v4 == 2)
    {
      v11 = 0x3EF5C294BF3D70A6;
LABEL_28:
      *a3 = v11;
      v26 = 0.0;
      v19 = 3.0;
      v20 = -2.0;
      v22 = 5;
      v23 = 4;
      v24 = 3;
      v21 = 1.26;
      goto LABEL_29;
    }

    if (v4 == 3)
    {
      *a3 = 0x3FDEB852BF3D70A4;
      v19 = 3.0;
      v20 = -2.0;
      v21 = 0.0;
      v22 = 5;
      v23 = 4;
      v24 = 3;
      v25 = 2;
      v26 = 0.0;
      goto LABEL_33;
    }

LABEL_12:
    v3 += RB::Animation::_term_args[v4] + 1;
    if (v3 >= a2)
    {
      return result;
    }
  }

  if (v4 <= 5)
  {
    if (v4 != 4)
    {
      *a3 = 1.0001;
      v19 = 1.0;
      v20 = 0.0;
      v22 = 4;
      v23 = 3;
      v24 = 2;
      v21 = 15.708;
      v25 = 1;
      v26 = 15.708;
      goto LABEL_33;
    }

    v11 = 0xBF47AE143F051EB8;
    goto LABEL_28;
  }

  if (v4 == 6)
  {
    *a3 = 0.74994;
    v19 = 1.0;
    v26 = 1.1337;
    v22 = 4;
    v23 = 3;
    v20 = 10.391;
  }

  else
  {
    *a3 = 0.54972;
    v19 = 1.0;
    v26 = 0.65807;
    v22 = 4;
    v23 = 3;
    v20 = 13.122;
  }

  v24 = 2;
  v21 = 15.708;
LABEL_32:
  v25 = 1;
LABEL_33:
  a3[v25] = v21;
  a3[v24] = v20;
  a3[v23] = v19;
  a3[v22] = v26;
  return result;
}