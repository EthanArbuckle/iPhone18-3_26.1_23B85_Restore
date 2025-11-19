void *md::RenderItemPool::construct(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *(a2 + 8);
  v13 = *(a2 + 24);
  v17 = *(a2 + 88);
  v18 = *(a2 + 104);
  v16 = *(a2 + 72);
  v14 = *(a2 + 40);
  v15 = *(a2 + 56);
  v7 = *(a1 + 8);
  v8 = v7[1];
  if (v8 == *(a1 + 16))
  {
    v7 = *v7;
    if (!v7)
    {
      v7 = malloc_type_malloc(120 * v8 + 16, 0x1020040EDED9539uLL);
      *v7 = 0;
      v7[1] = 0;
      **(a1 + 8) = v7;
    }

    *(a1 + 8) = v7;
    v8 = v7[1];
  }

  v9 = &v7[15 * v8];
  v7[1] = v8 + 1;
  v9[2] = &off_1F2A5D8B8;
  *(v9 + 9) = v15;
  *(v9 + 7) = v14;
  *(v9 + 5) = v13;
  *(v9 + 3) = v12;
  *(v9 + 15) = v18;
  *(v9 + 13) = v17;
  *(v9 + 11) = v16;
  v9[10] = a3;
  v10 = (a4[1] - *a4) >> 4;
  v9[13] = *a4;
  v9[14] = v10;
  return v9 + 2;
}

void gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gss::DashPattern>(uint64_t a1, uint64_t a2, unsigned __int16 a3, unsigned int a4, int a5)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a5 == 2)
  {
    v9 = *a2;
    if (*a2)
    {
      v10 = *v9;
      LODWORD(v9) = *v9 == 1.0;
      if (*(a2 + 10) == 1 && v10 != 0.0 && v10 != 1.0)
      {
        v15 = v10 < 1.0;
        goto LABEL_13;
      }
    }

    v12 = (a2 + v9 + 11);
  }

  else
  {
    v12 = (a2 + 12);
  }

  v13 = *v12;
  if (v13 != 2)
  {
    v14 = gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<gss::DashPattern>(a2, a3, a4, v13, 0);
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::vector[abi:nn200100](a1, v14);
    *(a1 + 32) = *(v14 + 8);
    return;
  }

  v15 = 1;
LABEL_13:
  v21 = 1;
  v20 = 1;
  v16 = gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<gss::DashPattern>(a2, a3, a4, 0, &v21);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::vector[abi:nn200100](v24, v16);
  v25 = *(v16 + 8);
  v17 = gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<gss::DashPattern>(a2, a3, a4, 1u, &v20);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::vector[abi:nn200100](v22, v17);
  v23 = *(v17 + 8);
  if (v15)
  {
    v18 = v24;
  }

  else
  {
    v18 = v22;
  }

  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::vector[abi:nn200100](a1, v18);
  v19 = v22;
  if (v15)
  {
    v19 = v24;
  }

  *(a1 + 32) = *(v19 + 8);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v22);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v24);
}

void sub_1B2B50A94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va1);
  _Unwind_Resume(a1);
}

uint64_t *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<gss::DashPattern>(uint64_t a1, unsigned __int16 a2, unsigned int a3, unsigned int a4, _BYTE *a5)
{
  v6 = *(a1 + 16 * a4 + 16);
  if (!v6)
  {
    goto LABEL_12;
  }

  v9 = a1 + 16 * a4;
  if (*(v9 + 56))
  {
    v10 = *(v9 + 48);
    v11 = 8 * *(v9 + 56);
    while (1)
    {
      v12 = *(*v10 + 72);
      if (v12)
      {
        v15 = *v12;
        v13 = v12 + 2;
        v14 = v15;
        v16 = v15 + 120 * *(v13 + a3);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v16, a2) != *(v16 + 12))
        {
          break;
        }
      }

      v10 += 8;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    if (a3 >= 0x17)
    {
      v21 = 23;
    }

    else
    {
      v21 = a3;
    }

    v22 = v14 + 120 * *(v13 + v21);
    v23 = a2;
    goto LABEL_19;
  }

LABEL_7:
  v17 = *(v6 + 72);
  if (!v17 || (a3 >= 0x17 ? (v18 = 23) : (v18 = a3), v19 = *v17 + 120 * *(v17 + v18 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v19, a2) == *(v19 + 12)))
  {
LABEL_12:
    if (a5)
    {
      *a5 = 0;
    }

    gss::defaultValueForKey<gss::PropertyID,gss::DashPattern>();
    return &gss::defaultValueForKey<gss::PropertyID,gss::DashPattern>(gss::PropertyID)::_defaultValue;
  }

  v23 = a2;
  v22 = v19;
LABEL_19:

  return gss::PropertySetValueHelper<gss::PropertyID,gss::DashPattern>::value(v23, v22);
}

uint64_t std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::vector[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v3 != *a2)
  {
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vallocate[abi:nn200100](a1, v5 >> 2);
    v6 = *(a1 + 8);
    memmove(v6, v4, v5);
    *(a1 + 8) = &v6[v5];
  }

  return a1;
}

void std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](gss::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = gss::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<float>(v2, v1);
  }
}

void std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vdeallocate(gss::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v3 = gss::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<float>(v3, v1);
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
  }
}

void gss::defaultValueForKey<gss::PropertyID,gss::DashPattern>()
{
  {
    qword_1ED65ABD8 = 0;
    gss::defaultValueForKey<gss::PropertyID,gss::DashPattern>(gss::PropertyID)::_defaultValue = 0u;
    unk_1ED65ABC8 = 0u;
    __cxa_atexit(gss::DashPattern::~DashPattern, &gss::defaultValueForKey<gss::PropertyID,gss::DashPattern>(gss::PropertyID)::_defaultValue, &dword_1B2754000);
  }
}

void md::FontGlyphCache::updateGlyphs(uint64_t a1, uint64_t *a2, int a3, uint64_t *a4, char a5, float a6)
{
  v6 = a2;
  if (a6 <= 0.0 || (v7 = atomic_load((*a4 + 130)), (v7 & 1) == 0) || *(*a4 + 56) == *(*a4 + 64))
  {
    v37 = *a2;
    for (i = a2[1]; i != v37; std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(i))
    {
      i -= 40;
    }

    *(v6 + 8) = v37;
    *(v6 + 40) = *(v6 + 32);
  }

  else
  {
    v8 = a5;
    v161 = *a4;
    v12 = *(v161 + 64) - *(v161 + 56);
    v13 = 0xCCCCCCCCCCCCCCCDLL * (v12 >> 3);
    v14 = *a2;
    v15 = a2[1];
    v16 = v15 - *a2;
    v17 = 0xCCCCCCCCCCCCCCCDLL * (v16 >> 3);
    _CF = v13 >= v17;
    v19 = v13 - v17;
    if (v19 != 0 && _CF)
    {
      v20 = a2[2];
      if (0xCCCCCCCCCCCCCCCDLL * ((v20 - v15) >> 3) >= v19)
      {
        v40 = v15 + 40 * v19;
        do
        {
          *(v15 + 32) = 0;
          *v15 = 0uLL;
          *(v15 + 16) = 0uLL;
          *(v15 + 38) = 1;
          v15 += 40;
        }

        while (v15 != v40);
        a2[1] = v40;
      }

      else
      {
        if (v13 > 0x666666666666666)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v21 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - v14) >> 3);
        if (2 * v21 > v13)
        {
          v13 = 2 * v21;
        }

        if (v21 >= 0x333333333333333)
        {
          v22 = 0x666666666666666;
        }

        else
        {
          v22 = v13;
        }

        v23 = mdm::zone_mallocator::instance(a1);
        v24 = pthread_rwlock_rdlock((v23 + 32));
        if (v24)
        {
          geo::read_write_lock::logFailure(v24, "read lock", v25);
        }

        v26 = malloc_type_zone_malloc(*v23, 40 * v22, 0x1020040DBF2485DuLL);
        atomic_fetch_add((v23 + 24), 1u);
        geo::read_write_lock::unlock((v23 + 32));
        v28 = &v26[v16];
        do
        {
          *(v28 + 4) = 0;
          *v28 = 0uLL;
          *(v28 + 1) = 0uLL;
          v28[38] = 1;
          v28 += 40;
        }

        while (v28 != &v26[v12]);
        *&v29 = &v26[v12];
        *(&v29 + 1) = &v26[40 * v22];
        v164 = v29;
        v31 = *v6;
        v30 = *(v6 + 8);
        v32 = &v26[v16 + *v6 - v30];
        v8 = a5;
        if (v30 != *v6)
        {
          v33 = *v6;
          v34 = v32;
          do
          {
            *v34 = *v33;
            *v33 = 0;
            *(v33 + 8) = 0;
            *(v34 + 1) = *(v33 + 16);
            *(v33 + 16) = 0;
            *(v33 + 24) = 0;
            *(v34 + 4) = *(v33 + 32);
            v33 += 40;
            v34 += 40;
          }

          while (v33 != v30);
          do
          {
            std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(v31);
            v31 += 40;
          }

          while (v31 != v30);
        }

        v35 = *v6;
        *v6 = v32;
        *(v6 + 8) = v164;
        if (v35)
        {
          v36 = mdm::zone_mallocator::instance(v27);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TextGlyph>(v36, v35);
        }
      }
    }

    else if (!_CF)
    {
      v39 = v14 + v12;
      while (v15 != v39)
      {
        v15 -= 40;
        std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(v15);
      }

      *(v6 + 8) = v39;
    }

    v41 = v161;
    v43 = *(v161 + 56);
    v42 = *(v161 + 64);
    if (v42 != v43)
    {
      v44 = 0;
      v45 = 0;
      if (a3)
      {
        v46 = 16;
      }

      else
      {
        v46 = 0;
      }

      v156 = (a1 + 112);
      v157 = (a1 + 56);
      v47 = 0.0;
      __asm { FMOV            V1.2D, #1.0 }

      v158 = _Q1;
      v162 = v46;
      v159 = v6;
      do
      {
        v52 = (*v6 + 40 * v45 + v46);
        if (v8 & 1) == 0 && *v52 && (*(*v52 + 62))
        {
          goto LABEL_222;
        }

        v53 = v43 + 40 * v45;
        v54 = *v53;
        glyphs[0] = *v53;
        v165 = v53;
        v55 = *(v53 + 8);
        if (v55 != v44)
        {
          v47 = CGFontGetUnitsPerEm(*(v53 + 8)) * (1.0 / a6);
          v54 = glyphs[0];
          v44 = v55;
        }

        *&v167 = v44;
        *(&v167 + 2) = a6;
        HIDWORD(v167) = v54;
        v56 = std::__hash_table<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,std::__unordered_map_hasher<GlyphCacheKey,std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,std::hash<GlyphCacheKey>,std::equal_to<GlyphCacheKey>,true>,std::__unordered_map_equal<GlyphCacheKey,std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,std::equal_to<GlyphCacheKey>,std::hash<GlyphCacheKey>,true>,geo::allocator_adapter<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,mdm::zone_mallocator>>::find<GlyphCacheKey>((a1 + 32), &v167);
        if (v56)
        {
          v57 = v56;
          ++*(a1 + 144);
          v58 = *(v56 + 4);
          v59 = *(v58 + 32);
          v60 = *(v58 + 40);
          if (v60)
          {
            atomic_fetch_add_explicit((v60 + 8), 1uLL, memory_order_relaxed);
          }

          v61 = v52[1];
          *v52 = v59;
          v52[1] = v60;
          if (v61)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v61);
            v59 = *v52;
          }

          atomic_store(*(a1 + 160), (v59 + 52));
          v62 = *(a1 + 8);
          v63 = *(v57 + 4);
          if (v62 != v63)
          {
            v64 = v63[1];
            if (v64 != v62)
            {
              v65 = *v63;
              *(v65 + 8) = v64;
              *v64 = v65;
              v66 = *v62;
              *(v66 + 8) = v63;
              *v63 = v66;
              *v62 = v63;
              v63[1] = v62;
            }
          }

          goto LABEL_221;
        }

        ++*(a1 + 148);
        v67 = *(a1 + 164);
        v68 = mdm::zone_mallocator::instance(0);
        v69 = pthread_rwlock_rdlock((v68 + 32));
        cf = v44;
        if (v67 == 1)
        {
          if (v69)
          {
            geo::read_write_lock::logFailure(v69, "read lock", v70);
          }

          v71 = malloc_type_zone_malloc(*v68, 0x90uLL, 0x1081040F47FB52AuLL);
          atomic_fetch_add((v68 + 24), 1u);
          geo::read_write_lock::unlock((v68 + 32));
          *(v71 + 1) = 0;
          *(v71 + 2) = 0;
          *v71 = &unk_1F2A38538;
          *(v71 + 72) = 0u;
          *(v71 + 88) = 0u;
          *(v71 + 104) = 0u;
          *(v71 + 120) = 0u;
          *(v71 + 16) = 0;
          *(v71 + 17) = 0;
          *(v71 + 56) = 0u;
          *(v71 + 5) = &unk_1F2A5F758;
          *(v71 + 6) = 0;
          *(v71 + 10) = 0;
          *(v71 + 87) = 0;
          *(v71 + 4) = &unk_1F2A38570;
          *(v71 + 6) = 0u;
          *(v71 + 7) = 0u;
          *(v71 + 34) = 1065353216;
          v71[141] = 0;
          *&v72 = v71 + 32;
          *(&v72 + 1) = v71;
          v73 = v52[1];
          *v52 = v72;
          v46 = v162;
          if (v73)
          {
            goto LABEL_62;
          }
        }

        else
        {
          if (v69)
          {
            geo::read_write_lock::logFailure(v69, "read lock", v70);
          }

          v74 = malloc_type_zone_malloc(*v68, 0x60uLL, 0x10810400286FF01uLL);
          atomic_fetch_add((v68 + 24), 1u);
          geo::read_write_lock::unlock((v68 + 32));
          *(v74 + 1) = 0;
          *(v74 + 2) = 0;
          *v74 = &unk_1F2A385B0;
          *(v74 + 72) = 0u;
          *(v74 + 10) = 0;
          *(v74 + 11) = 0;
          *(v74 + 56) = 0u;
          *(v74 + 4) = &unk_1F2A38590;
          *(v74 + 5) = &unk_1F2A5F758;
          *(v74 + 6) = 0;
          *(v74 + 87) = 0;
          *&v75 = v74 + 32;
          *(&v75 + 1) = v74;
          v73 = v52[1];
          *v52 = v75;
          v44 = cf;
          if (v73)
          {
LABEL_62:
            std::__shared_weak_count::__release_shared[abi:nn200100](v73);
          }
        }

        if (*v52)
        {
          v76 = mdm::zone_mallocator::instance(v73);
          v77 = pthread_rwlock_rdlock((v76 + 32));
          if (v77)
          {
            geo::read_write_lock::logFailure(v77, "read lock", v78);
          }

          v79 = malloc_type_zone_malloc(*v76, 0x30uLL, 0x1020040D1CDCCBAuLL);
          atomic_fetch_add((v76 + 24), 1u);
          geo::read_write_lock::unlock((v76 + 32));
          *v79 = 0;
          v79[1] = 0;
          *(v79 + 1) = v167;
          v80 = v52[1];
          v79[4] = *v52;
          v79[5] = v80;
          if (v80)
          {
            atomic_fetch_add_explicit((v80 + 8), 1uLL, memory_order_relaxed);
          }

          v81 = *(a1 + 8);
          v82 = *(a1 + 16);
          *v79 = a1;
          v79[1] = v81;
          *v81 = v79;
          *(a1 + 8) = v79;
          *(a1 + 16) = v82 + 1;
          prime = std::hash<GlyphCacheKey>::operator()(&v167);
          v84 = prime;
          v85 = *(a1 + 40);
          if (v85)
          {
            v86 = vcnt_s8(v85);
            v86.i16[0] = vaddlv_u8(v86);
            if (v86.u32[0] > 1uLL)
            {
              v76 = prime;
              if (prime >= v85)
              {
                v76 = prime % v85;
              }
            }

            else
            {
              v76 = (v85 - 1) & prime;
            }

            v87 = *(*(a1 + 32) + 8 * v76);
            if (v87)
            {
              for (j = *v87; j; j = *j)
              {
                v89 = *(j + 1);
                if (v89 == prime)
                {
                  if (*(j + 2) == v167 && j[6] == *(&v167 + 2) && *(j + 14) == WORD6(v167))
                  {
                    goto LABEL_143;
                  }
                }

                else
                {
                  if (v86.u32[0] > 1uLL)
                  {
                    if (v89 >= v85)
                    {
                      v89 %= v85;
                    }
                  }

                  else
                  {
                    v89 &= v85 - 1;
                  }

                  if (v89 != v76)
                  {
                    break;
                  }
                }
              }
            }
          }

          v90 = mdm::zone_mallocator::instance(prime);
          v91 = pthread_rwlock_rdlock((v90 + 32));
          if (v91)
          {
            geo::read_write_lock::logFailure(v91, "read lock", v92);
          }

          v6 = malloc_type_zone_malloc(*v90, 0x28uLL, 0x1020040976CB7F3uLL);
          atomic_fetch_add((v90 + 24), 1u);
          geo::read_write_lock::unlock((v90 + 32));
          *v6 = 0;
          *(v6 + 8) = v84;
          *(v6 + 16) = v167;
          *(v6 + 32) = v79;
          v93 = (*(a1 + 72) + 1);
          v94 = *(a1 + 80);
          v44 = cf;
          if (!v85 || (v94 * v85) < v93)
          {
            v95 = (v85 & (v85 - 1)) != 0;
            if (v85 < 3)
            {
              v95 = 1;
            }

            v96 = v95 | (2 * v85);
            v97 = vcvtps_u32_f32(v93 / v94);
            if (v96 <= v97)
            {
              v98 = v97;
            }

            else
            {
              v98 = v96;
            }

            if (v98 == 1)
            {
              v98 = 2;
            }

            else if ((v98 & (v98 - 1)) != 0)
            {
              prime = std::__next_prime(v98);
              v98 = prime;
              v44 = cf;
            }

            v85 = *(a1 + 40);
            if (v98 <= v85)
            {
              if (v98 < v85)
              {
                prime = vcvtps_u32_f32(*(a1 + 72) / *(a1 + 80));
                if (v85 < 3 || (v107 = vcnt_s8(v85), v107.i16[0] = vaddlv_u8(v107), v107.u32[0] > 1uLL))
                {
                  prime = std::__next_prime(prime);
                  v44 = cf;
                }

                else
                {
                  v108 = 1 << -__clz(prime - 1);
                  if (prime >= 2)
                  {
                    prime = v108;
                  }
                }

                if (v98 <= prime)
                {
                  v98 = prime;
                }

                if (v98 >= v85)
                {
                  v85 = *(a1 + 40);
                }

                else
                {
                  if (v98)
                  {
                    goto LABEL_100;
                  }

                  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> **,0>((a1 + 32), 0);
                  v85 = 0;
                  *(a1 + 40) = 0;
                }
              }
            }

            else
            {
LABEL_100:
              v99 = mdm::zone_mallocator::instance(prime);
              v100 = pthread_rwlock_rdlock((v99 + 32));
              if (v100)
              {
                geo::read_write_lock::logFailure(v100, "read lock", v101);
              }

              v102 = malloc_type_zone_malloc(*v99, 8 * v98, 0x2004093837F09uLL);
              atomic_fetch_add((v99 + 24), 1u);
              geo::read_write_lock::unlock((v99 + 32));
              std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> **,0>((a1 + 32), v102);
              v103 = 0;
              *(a1 + 40) = v98;
              do
              {
                *(*(a1 + 32) + 8 * v103++) = 0;
              }

              while (v98 != v103);
              v104 = *v157;
              v44 = cf;
              if (*v157)
              {
                v105 = v104[1];
                v106 = vcnt_s8(v98);
                v106.i16[0] = vaddlv_u8(v106);
                if (v106.u32[0] > 1uLL)
                {
                  if (v105 >= v98)
                  {
                    v105 %= v98;
                  }
                }

                else
                {
                  v105 &= v98 - 1;
                }

                *(*(a1 + 32) + 8 * v105) = v157;
                v109 = *v104;
                if (*v104)
                {
                  do
                  {
                    v110 = v109[1];
                    if (v106.u32[0] > 1uLL)
                    {
                      if (v110 >= v98)
                      {
                        v110 %= v98;
                      }
                    }

                    else
                    {
                      v110 &= v98 - 1;
                    }

                    if (v110 != v105)
                    {
                      v111 = *(a1 + 32);
                      if (!*(v111 + 8 * v110))
                      {
                        *(v111 + 8 * v110) = v104;
                        goto LABEL_124;
                      }

                      *v104 = *v109;
                      *v109 = **(v111 + 8 * v110);
                      **(v111 + 8 * v110) = v109;
                      v109 = v104;
                    }

                    v110 = v105;
LABEL_124:
                    v104 = v109;
                    v109 = *v109;
                    v105 = v110;
                  }

                  while (v109);
                }
              }

              v85 = v98;
            }

            if ((v85 & (v85 - 1)) != 0)
            {
              if (v84 >= v85)
              {
                v76 = v84 % v85;
              }

              else
              {
                v76 = v84;
              }
            }

            else
            {
              v76 = (v85 - 1) & v84;
            }
          }

          v112 = *(a1 + 32);
          v113 = *(v112 + 8 * v76);
          if (v113)
          {
            *v6 = *v113;
            goto LABEL_141;
          }

          *v6 = *v157;
          *v157 = v6;
          *(v112 + 8 * v76) = v157;
          if (*v6)
          {
            v114 = *(*v6 + 8);
            if ((v85 & (v85 - 1)) != 0)
            {
              if (v114 >= v85)
              {
                v114 %= v85;
              }
            }

            else
            {
              v114 &= v85 - 1;
            }

            v113 = (*(a1 + 32) + 8 * v114);
LABEL_141:
            *v113 = v6;
          }

          ++*(a1 + 72);
          v79 = *(a1 + 8);
LABEL_143:
          v115 = *v52;
          v116 = 0x9DDFEA08EB382D69 * ((8 * (*v52 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*v52));
          v117 = 0x9DDFEA08EB382D69 * (HIDWORD(*v52) ^ (v116 >> 47) ^ v116);
          v118 = 0x9DDFEA08EB382D69 * (v117 ^ (v117 >> 47));
          v119 = *(a1 + 96);
          if (v119)
          {
            v120 = vcnt_s8(v119);
            v120.i16[0] = vaddlv_u8(v120);
            if (v120.u32[0] > 1uLL)
            {
              v6 = 0x9DDFEA08EB382D69 * (v117 ^ (v117 >> 47));
              if (v118 >= v119)
              {
                v6 = v118 % v119;
              }
            }

            else
            {
              v6 = v118 & (v119 - 1);
            }

            v121 = *(*(a1 + 88) + 8 * v6);
            if (v121)
            {
              for (k = *v121; k; k = *k)
              {
                v123 = k[1];
                if (v123 == v118)
                {
                  if (k[2] == v115)
                  {
                    v6 = v159;
                    v46 = v162;
                    goto LABEL_216;
                  }
                }

                else
                {
                  if (v120.u32[0] > 1uLL)
                  {
                    if (v123 >= v119)
                    {
                      v123 %= v119;
                    }
                  }

                  else
                  {
                    v123 &= v119 - 1;
                  }

                  if (v123 != v6)
                  {
                    break;
                  }
                }
              }
            }
          }

          v124 = mdm::zone_mallocator::instance(prime);
          v125 = pthread_rwlock_rdlock((v124 + 32));
          if (v125)
          {
            geo::read_write_lock::logFailure(v125, "read lock", v126);
          }

          v127 = malloc_type_zone_malloc(*v124, 0x20uLL, 0x1060040E0B21BF1uLL);
          atomic_fetch_add((v124 + 24), 1u);
          geo::read_write_lock::unlock((v124 + 32));
          *v127 = 0;
          v127[1] = v118;
          v127[2] = v115;
          v127[3] = v79;
          v129 = (*(a1 + 128) + 1);
          v130 = *(a1 + 136);
          v44 = cf;
          if (!v119 || (v130 * v119) < v129)
          {
            v131 = (v119 & (v119 - 1)) != 0;
            if (v119 < 3)
            {
              v131 = 1;
            }

            v132 = v131 | (2 * v119);
            v133 = vcvtps_u32_f32(v129 / v130);
            if (v132 <= v133)
            {
              v134 = v133;
            }

            else
            {
              v134 = v132;
            }

            if (v134 == 1)
            {
              v134 = 2;
            }

            else if ((v134 & (v134 - 1)) != 0)
            {
              v128 = std::__next_prime(v134);
              v134 = v128;
              v44 = cf;
            }

            v119 = *(a1 + 96);
            if (v134 <= v119)
            {
              if (v134 < v119)
              {
                v128 = vcvtps_u32_f32(*(a1 + 128) / *(a1 + 136));
                if (v119 < 3 || (v143 = vcnt_s8(v119), v143.i16[0] = vaddlv_u8(v143), v143.u32[0] > 1uLL))
                {
                  v128 = std::__next_prime(v128);
                  v44 = cf;
                }

                else
                {
                  v144 = 1 << -__clz(v128 - 1);
                  if (v128 >= 2)
                  {
                    v128 = v144;
                  }
                }

                if (v134 <= v128)
                {
                  v134 = v128;
                }

                if (v134 >= v119)
                {
                  v119 = *(a1 + 96);
                }

                else
                {
                  if (v134)
                  {
                    goto LABEL_173;
                  }

                  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<md::FontGlyph *,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<md::FontGlyph *,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<md::FontGlyph *,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> **,0>((a1 + 88), 0);
                  v119 = 0;
                  *(a1 + 96) = 0;
                }
              }
            }

            else
            {
LABEL_173:
              v135 = mdm::zone_mallocator::instance(v128);
              v136 = pthread_rwlock_rdlock((v135 + 32));
              if (v136)
              {
                geo::read_write_lock::logFailure(v136, "read lock", v137);
              }

              v138 = malloc_type_zone_malloc(*v135, 8 * v134, 0x2004093837F09uLL);
              atomic_fetch_add((v135 + 24), 1u);
              geo::read_write_lock::unlock((v135 + 32));
              std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<md::FontGlyph *,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<md::FontGlyph *,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<md::FontGlyph *,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> **,0>((a1 + 88), v138);
              v139 = 0;
              *(a1 + 96) = v134;
              do
              {
                *(*(a1 + 88) + 8 * v139++) = 0;
              }

              while (v134 != v139);
              v140 = *v156;
              v44 = cf;
              if (*v156)
              {
                v141 = v140[1];
                v142 = vcnt_s8(v134);
                v142.i16[0] = vaddlv_u8(v142);
                if (v142.u32[0] > 1uLL)
                {
                  if (v141 >= v134)
                  {
                    v141 %= v134;
                  }
                }

                else
                {
                  v141 &= v134 - 1;
                }

                *(*(a1 + 88) + 8 * v141) = v156;
                v145 = *v140;
                if (*v140)
                {
                  do
                  {
                    v146 = v145[1];
                    if (v142.u32[0] > 1uLL)
                    {
                      if (v146 >= v134)
                      {
                        v146 %= v134;
                      }
                    }

                    else
                    {
                      v146 &= v134 - 1;
                    }

                    if (v146 != v141)
                    {
                      v147 = *(a1 + 88);
                      if (!*(v147 + 8 * v146))
                      {
                        *(v147 + 8 * v146) = v140;
                        goto LABEL_197;
                      }

                      *v140 = *v145;
                      *v145 = **(v147 + 8 * v146);
                      **(v147 + 8 * v146) = v145;
                      v145 = v140;
                    }

                    v146 = v141;
LABEL_197:
                    v140 = v145;
                    v145 = *v145;
                    v141 = v146;
                  }

                  while (v145);
                }
              }

              v119 = v134;
            }

            if ((v119 & (v119 - 1)) != 0)
            {
              if (v118 >= v119)
              {
                v6 = v118 % v119;
              }

              else
              {
                v6 = v118;
              }
            }

            else
            {
              v6 = (v119 - 1) & v118;
            }
          }

          v148 = *(a1 + 88);
          v149 = *(v148 + 8 * v6);
          v46 = v162;
          if (v149)
          {
            *v127 = *v149;
            v6 = v159;
            goto LABEL_214;
          }

          *v127 = *v156;
          *v156 = v127;
          *(v148 + 8 * v6) = v156;
          v6 = v159;
          if (*v127)
          {
            v150 = *(*v127 + 8);
            if ((v119 & (v119 - 1)) != 0)
            {
              if (v150 >= v119)
              {
                v150 %= v119;
              }
            }

            else
            {
              v150 &= v119 - 1;
            }

            v149 = (*(a1 + 88) + 8 * v150);
LABEL_214:
            *v149 = v127;
          }

          ++*(a1 + 128);
          v115 = *v52;
LABEL_216:
          ++*(a1 + 152);
          atomic_store(*(a1 + 160), (v115 + 52));
          v151 = *v52;
          *(v151 + 56) = glyphs[0];
          v152 = *(v151 + 16);
          v8 = a5;
          if (v44)
          {
            CFRetain(v44);
          }

          *(v151 + 16) = v44;
          v41 = v161;
          if (v152)
          {
            CFRelease(v152);
          }

          v153 = *v52;
          *(v153 + 48) = a6;
          *(v153 + 61) = v165[27];
          *(v153 + 60) = v165[28];
          *(v153 + 59) = v165[30];
          *(v153 + 58) = v165[31];
          CGFontGetGlyphBBoxes(v44, glyphs, 1uLL, &bboxes);
          v154 = *v52;
          v155 = vdivq_f64(v158, vdupq_lane_s64(COERCE__INT64(v47), 0));
          v154[2] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(bboxes.origin, v155)), vmulq_f64(vaddq_f64(bboxes.size, bboxes.origin), v155));
          v154[3].i8[14] = 1;
        }

LABEL_221:
        v43 = *(v41 + 56);
        v42 = *(v41 + 64);
LABEL_222:
        ++v45;
      }

      while (v45 < 0xCCCCCCCCCCCCCCCDLL * ((v42 - v43) >> 3));
    }
  }
}

void gdc::ComponentStorageWrapper<md::LabelRenderDescriptorComponent>::emplace(uint64_t *a1, uint64_t a2, void *a3)
{
  v26 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v26);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 < v7)
    {
      *v8 = *a3;
      v15 = (v8 + 1);
    }

    else
    {
      v9 = a1[10];
      v10 = (v8 - v9) >> 3;
      if ((v10 + 1) >> 61)
      {
        goto LABEL_27;
      }

      v11 = v7 - v9;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v13);
      }

      v14 = (8 * v10);
      *v14 = *a3;
      v15 = 8 * v10 + 8;
      v16 = a1[10];
      v17 = a1[11] - v16;
      v18 = v14 - v17;
      memcpy(v14 - v17, v16, v17);
      v19 = a1[10];
      a1[10] = v18;
      a1[11] = v15;
      a1[12] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    a1[11] = v15;
  }

  else
  {
    v23 = (a1[10] + v5 - a1[7]);
    *v23 = *a3;
    if (v23 != a1[11])
    {
      v24 = a1[16];
      if (v24)
      {
        v25 = a1[31];
        do
        {
          std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v24[6], v25, &v26, 1);
          v24 = *v24;
        }

        while (v24);
      }

      return;
    }
  }

  v20 = a1[22];
  if (v20)
  {
    v21 = a1[31];
    while (1)
    {
      v28[0] = &v26;
      v28[1] = 1;
      v27 = v21;
      v22 = v20[6];
      if (!v22)
      {
        break;
      }

      (*(*v22 + 48))(v22, &v27, v28);
      v20 = *v20;
      if (!v20)
      {
        return;
      }
    }

    std::__throw_bad_function_call[abi:nn200100]();
LABEL_27:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

float md::HorizontalTextLabelPart::pushToRenderModel(uint64_t a1, gdc::Registry **a2, float a3)
{
  v10 = *MEMORY[0x1E69E9840];
  md::TextLabelPart::pushToRenderModel(a1, a2, a3);
  if (*(a1 + 889) == 1)
  {
    v6 = *(a1 + 488);
    if (*(a1 + 472) && v6 != 0)
    {
      result = *(a1 + 796);
      if (result > 0.0)
      {
        *(a1 + 1206) = *(a1 + 558);
        *(a1 + 1240) = v6;
        *(a1 + 1209) = *(a1 + 565) ^ 1;
        *(a1 + 1202) = *(a1 + 556);
        v8 = *(a1 + 32);
        v9 = 0;
        if (*(v8 + 78) == 1)
        {
          v9 = *(v8 + 72);
        }

        *(a1 + 1232) = v9;
        *(a1 + 1201) = *(a1 + 825);
        gdc::Registry::create(*a2);
      }
    }
  }

  return result;
}

void md::Label::updateStateMachineForDisplay(uint64_t a1, int a2, char a3, md::LabelManager *a4)
{
  if (a4 && ((*(a4 + *(a1 + 1291) + 3340) & 1) != 0 || *(a4 + 3416) != 1 || *(a1 + 1343) == 1))
  {
    if ((0x27u >> (a2 - 3)))
    {
      v6 = 0x80808050508uLL >> (8 * ((a2 - 3) & 0x1Fu));
    }

    else
    {
      v6 = a2;
    }

    v7 = 1;
    if ((a2 - 3) <= 5)
    {
      LOBYTE(a2) = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 1152);
  v9 = byte_1B3417EAE[4 * a2 + *(a1 + 1152)];
  if (*(a1 + 1158) == 1)
  {
    if (v9 == 1)
    {
      v9 = 3;
      goto LABEL_16;
    }

    if (v9 == 2)
    {
      v9 = 0;
LABEL_16:
      *(a1 + 1158) = 0;
      atomic_load((a1 + 1330));
LABEL_20:
      *(a1 + 1152) = v9;
      *(a1 + 1153) = a3;
      goto LABEL_21;
    }

    if (v8 != v9)
    {
      *(a1 + 1158) = 0;
    }
  }

  atomic_load((a1 + 1330));
  if (v9 != 255)
  {
    goto LABEL_20;
  }

  v9 = *(a1 + 1152);
LABEL_21:
  if (v9 == 3)
  {
    *(a1 + 1200) = 1065353216;
    *(a1 + 1204) = (*(a1 + 1216))(1.0);
    if (v7)
    {
      *(a1 + 1232) = 1065353216;
      *(a1 + 1236) = (*(a1 + 1248))(1.0);
    }
  }

  else if (!v9)
  {
    *(a1 + 1200) = 0;
    *(a1 + 1204) = (*(a1 + 1224))(0.0);
    *(a1 + 1232) = 0;
    *(a1 + 1236) = (*(a1 + 1256))(0.0);
    *(a1 + 1189) = 38;
    md::Label::clearAnimatingPart(a1);
  }

  v10 = *(a1 + 1152);
  if (v8 != 2 && v10 == 2)
  {
    *(a1 + 1192) = *(a1 + 440);
LABEL_27:
    v11 = atomic_load((a1 + 1331));
    if (v11)
    {

      md::Label::setupPickedHideAnimation(a1, a4);
    }

    else
    {
      v12 = atomic_load((a1 + 1332));
      if (v12)
      {

        md::Label::setupOccludedHideAnimation(a1, a4);
      }

      else
      {

        md::Label::setupHideAnimation(a1);
      }
    }

    return;
  }

  if (v10 != 1)
  {
    if (v10 != 2)
    {
      return;
    }

    goto LABEL_27;
  }

  md::Label::setupShowAnimation(a1);
}

uint64_t md::IconLabelPart::layoutForDisplay(float32x2_t *a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5)
{
  a1[68].i32[0] = a5->i32[0];
  a1[68].i32[1] = a5->i32[1];
  if (a1[103].i8[0] == 1)
  {
    a1[103].i8[0] = 0;
  }

  a1[101] = 1065353216;
  v9 = a1[2];
  if (v9)
  {
    v10 = *(*&v9 + 1264);
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    a3 = v10;
  }

  v12 = 1.0;
  if (a3)
  {
    v13 = v10 == 0;
    v14 = 563;
    if (!v13)
    {
      v14 = 564;
    }

    v15 = a1->u8[v14];
    v17 = *(a3 + 24);
    v16 = *(a3 + 32);
    if (0x8E38E38E38E38E39 * ((v16 - v17) >> 4) <= v15)
    {
      if (v17 == v16 || (*(a3 + 89) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v17 = (v17 + 144 * v15);
    }

    if (v17)
    {
      if (*(v17 + 9))
      {
        a1[102].f32[1] = md::LabelAnimation::alpha(v17);
        a1[103].i8[0] = 1;
      }

      v18 = *(v17 + 7);
      if (v18)
      {
        v12 = fmaxf(*(v17 + 16) + (*(*v18 + 32 * *(v18 + 32) + 8) * (*(v17 + 17) - *(v17 + 16))), 0.0);
        a1[101].f32[0] = v12;
      }

      v19 = *(v17 + 1);
      if (*v17 != v19)
      {
        v20 = *v17;
        while (*(v20 + 16) != 2)
        {
          v20 += 24;
          if (v20 == v19)
          {
            goto LABEL_27;
          }
        }

        v12 = md::LabelAnimation::property(*v17, v19, 2);
      }

LABEL_27:
      if (*(v17 + 11))
      {
        v21 = md::LabelAnimation::translation(v17).f32[0];
        v23 = v22;
        v24 = (*(*a1 + 312))(a1);
        v25 = a1[101].f32[0];
        a1[68].f32[0] = v21 - (v24 * v25);
        a1[68].f32[1] = v23 - (v26 * v25);
      }

      if (*(v17 + 15))
      {
        a1[101].f32[1] = md::LabelAnimation::rotation(v17);
      }
    }
  }

LABEL_31:
  v27 = *(*&a1[4] + 68);
  a1[52].f32[0] = v27;
  a1[44].i32[0] = a4->i32[0];
  a1[44].i32[1] = a4->i32[1];
  a1[63].i8[6] = fabsf(v27 + -1.0) > 0.000001;
  a1[52].f32[1] = v12;
  v28 = a1[66].f32[0];
  v29.i32[0] = *(a2 + 896);
  a1[67].i32[0] = v29.i32[0];
  v30 = *(a2 + 900);
  v31.f32[0] = -v30;
  v31.i32[1] = v29.i32[0];
  v29.f32[1] = v30;
  a1[67].f32[1] = v30;
  v32 = vmla_n_f32(vmul_n_f32(v29, v28), v31, a1[66].f32[1]);
  a1[41] = v32;
  a1[63].i8[4] = fabsf(v32.f32[0] + -1.0) > 0.000001;
  v33 = vadd_f32(*a5, *a4);
  a1[65] = v33;
  a1[43] = v33;
  md::CollisionObject::setupShapeData(&a1[39]);
  v34 = a1[2];
  if (v34)
  {
    a1[101].f32[0] = a1[101].f32[0] * *(*&v34 + 1236);
    a1[76].i32[0] = *(*&v34 + 1388);
    a1[103].i8[4] = *(*&v34 + 1159);
  }

  v39 = (*(*a1 + 928))(a1);
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v43 = a1[76].f32[1];
  if (v43 != 1.0)
  {
    v39 = v39 * v43;
    v40 = v36 * v43;
    v41 = v37 * v43;
    v42 = v38 * v43;
  }

  v79.i64[0] = __PAIR64__(LODWORD(v40), LODWORD(v39));
  v79.i64[1] = __PAIR64__(LODWORD(v42), LODWORD(v41));
  if (a1[70].i8[5] == 1)
  {
    a1[95].f32[0] = v39;
    a1[95].f32[1] = v40;
    a1[96].f32[0] = v41;
    a1[96].f32[1] = v40;
    a1[97].f32[0] = v41;
    a1[97].f32[1] = v42;
    a1[98].f32[0] = v39;
    a1[98].f32[1] = v42;
    goto LABEL_48;
  }

  v44 = *(*&a1[4] + 68);
  v45 = a1[68];
  v46 = *a4;
  v47 = a1[101].f32[0] * v44;
  if (fabsf(v47 + -1.0) > 0.000001)
  {
    v39 = v47 * v39;
    v40 = v47 * v40;
    v79.i64[0] = __PAIR64__(LODWORD(v40), LODWORD(v39));
    v41 = v47 * v41;
    v42 = v42 * v47;
    v79.i64[1] = __PAIR64__(LODWORD(v42), LODWORD(v41));
  }

  *v48.f32 = vmla_n_f32(v46, v45, v44);
  v49 = a1[101].f32[1];
  if ((a1[63].i8[4] & 1) != 0 || v49 != 0.0)
  {
    v63 = v48.f32[1];
    v64 = a1[41].f32[0];
    v65 = a1[41].f32[1];
    if (v49 != 0.0)
    {
      v76 = v48.i32[0];
      v66 = __sincosf_stret(v49);
      v48.i32[0] = v76;
      v67 = v66.__sinval * v64;
      v64 = -((v66.__sinval * v65) - (v66.__cosval * v64));
      v65 = v67 + (v66.__cosval * v65);
    }

    a1[95].f32[0] = v48.f32[0] + ((v64 * v39) - (v40 * v65));
    a1[95].f32[1] = ((v65 * v39) + (v64 * v40)) + v63;
    a1[96].f32[0] = ((v64 * v41) - (v40 * v65)) + v48.f32[0];
    a1[96].f32[1] = ((v65 * v41) + (v64 * v40)) + v63;
    a1[97].f32[0] = ((v64 * v41) - (v42 * v65)) + v48.f32[0];
    a1[97].f32[1] = ((v65 * v41) + (v64 * v42)) + v63;
    a1[98].f32[0] = ((v64 * v39) - (v42 * v65)) + v48.f32[0];
    a1[98].f32[1] = ((v65 * v39) + (v64 * v42)) + v63;
    return 37;
  }

  v50 = 0;
  v51 = &v79;
  *&v52 = 0xFF7FFFFF7F7FFFFFLL;
  v53 = 1;
  do
  {
    if (v79.f32[v50 + 2] < v51->f32[0])
    {
      v61 = 2139095039;
      v60 = -8388609;
      goto LABEL_54;
    }

    v54 = v53;
    v53 = 0;
    v51 = &v79.i32[1];
    v50 = 1;
  }

  while ((v54 & 1) != 0);
  v55 = 0;
  v80 = v79;
  v56 = &v80;
  v57 = 1;
  while (v80.f32[v55 + 2] >= v56->f32[0])
  {
    v58 = v57;
    v57 = 0;
    v56 = &v80.i32[1];
    v55 = 1;
    if ((v58 & 1) == 0)
    {
      v48.i64[1] = v48.i64[0];
      v59 = vaddq_f32(v80, v48);
      v60 = HIDWORD(v59);
      v61 = v59;
      *&v52 = v59 >> 32;
      goto LABEL_54;
    }
  }

  v61 = v80.i32[0];
  *&v52 = *(v80.i64 + 4);
  v60 = v80.i32[3];
LABEL_54:
  v78.i32[0] = v61;
  *(v78.i64 + 4) = v52;
  v78.i32[3] = v60;
  if (*(a2 + 3021) == 1)
  {
    v75 = v61;
    v77 = v52;
    if ((*(**(*(a2 + 168) + 32) + 8))(*(*(a2 + 168) + 32)))
    {
      v61 = v75;
      *&v52 = v77;
    }

    else
    {
      v68 = 0;
      v61 = v75;
      *&v52 = v77;
      *v69.f32 = vdup_lane_s32(v77, 0);
      v69.i32[0] = v75;
      v70 = &v78;
      v71 = 1;
      v72.i64[0] = v78.i64[0];
      while (v78.f32[v68 + 2] >= v70->f32[0])
      {
        v73 = v71;
        v71 = 0;
        v70 = &v78.i32[1];
        v68 = 1;
        if ((v73 & 1) == 0)
        {
          v72.i64[1] = v78.i64[0];
          v69.i64[1] = v69.i64[0];
          v74 = vaddq_f32(v78, vsubq_f32(vrndaq_f32(v69), v72));
          v60 = HIDWORD(v74);
          v61 = v74;
          *&v52 = v74 >> 32;
          break;
        }
      }
    }
  }

  *(&v52 + 1) = v52;
  a1[95].i32[0] = v61;
  *&a1[95].i32[1] = v52;
  a1[97].i32[1] = v60;
  a1[98].i32[0] = v61;
  a1[98].i32[1] = v60;
  if (a1[70].i8[5])
  {
LABEL_48:
    md::IconLabelPart::generateModelMatrix(a1, v35);
    a1[53] = (*(*a1 + 144))(a1);
  }

  return 37;
}

float md::IconLabelPart::meshRect(md::IconLabelPart *this)
{
  v1 = *(this + 562);
  v2 = *(this + 80);
  if (v1 != 1)
  {
    return md::LabelIcon::centeredRenderBounds(v2);
  }

  v3 = atomic_load(&v2[18]);
  if (v3)
  {
    return v2[6].f32[0];
  }

  else
  {
    return 3.4028e38;
  }
}

uint64_t ta2::TextureAtlasRegion::texture(ta2::TextureAtlasRegion *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    return *(v1 + 192);
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::GlyphMeshData &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::GlyphMeshDescriptor>,md::GlyphMeshDescriptor*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (a3 + 32);
    v6 = result;
    do
    {
      *(v5 - 16) = *v6;
      v7 = *(v6 + 32);
      if (v7)
      {
        if (v6 + 8 == v7)
        {
          *v5 = v5 - 3;
          (*(**(v6 + 32) + 24))(*(v6 + 32));
        }

        else
        {
          *v5 = v7;
          *(v6 + 32) = 0;
        }
      }

      else
      {
        *v5 = 0;
      }

      v6 += 40;
      v5 += 5;
    }

    while (v6 != a2);
    do
    {
      result = std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::GlyphMeshData &)>::~__value_func[abi:nn200100](v4 + 8);
      v4 += 40;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__function::__func<md::TextLabelPart::pushToRenderModel(md::LabelRenderModel &,float)::$_0,std::allocator<md::TextLabelPart::pushToRenderModel(md::LabelRenderModel &,float)::$_0>,void ()(md::LabelRenderDescriptor const&,md::GlyphMeshData &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4D1F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__split_buffer<md::GlyphMeshDescriptor>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::GlyphMeshData &)>::~__value_func[abi:nn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::GlyphMeshData &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

BOOL md::Label::isFading(md::Label *this)
{
  if (*(this + 1339) != 1)
  {
    return 0;
  }

  v2 = *(this + 34);
  if (!v2 || ((*(*v2 + 616))(v2) & 1) == 0)
  {
    v3 = *(this + 37);
    if ((!v3 || ((*(*v3 + 696))(v3) & 1) == 0) && !*(this + 38))
    {
      v4 = *(this + 1152);
      if (v4 == 1)
      {
        if (*(this + 300) >= 1.0 && *(this + 308) >= 1.0)
        {
          return *(this + 158) != 0;
        }
      }

      else if (v4 == 3)
      {
        if (*(this + 308) >= 1.0)
        {
          return *(this + 158) != 0;
        }
      }

      else if (v4 != 2 || *(this + 300) <= 0.0)
      {
        return *(this + 158) != 0;
      }
    }
  }

  return 1;
}

uint64_t md::IconLabelPart::populateMeshDescriptor(uint64_t a1, uint64_t a2)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F2A4BEC8;
  v3[1] = a1;
  v3[3] = v3;
  std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::swap[abi:nn200100](v3, (a2 + 8));
  return std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::~__value_func[abi:nn200100](v3);
}

void *std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

uint64_t gdc::ComponentStorageWrapper<md::IconMeshDescriptor>::emplace(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  v28 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v28);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 < v7)
    {
      *v8 = *a3;
      result = std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::__value_func[abi:nn200100]((v8 + 2), (a3 + 2));
      v19 = v8 + 10;
      a1[11] = (v8 + 10);
    }

    else
    {
      v9 = a1[10];
      v10 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 3);
      if (v10 + 1 > 0x666666666666666)
      {
        goto LABEL_25;
      }

      v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v9) >> 3);
      v12 = 2 * v11;
      if (2 * v11 <= v10 + 1)
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x333333333333333)
      {
        v13 = 0x666666666666666;
      }

      else
      {
        v13 = v12;
      }

      v33 = a1 + 10;
      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::IconMeshDescriptor>>(v13);
      }

      v30 = 0;
      v31 = 40 * v10;
      v32 = 40 * v10;
      *v31 = *a3;
      std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::__value_func[abi:nn200100](40 * v10 + 8, (a3 + 2));
      *&v32 = v32 + 40;
      v14 = a1[10];
      v15 = a1[11];
      v16 = v31 + v14 - v15;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::IconMeshDescriptor>,md::IconMeshDescriptor*>(v14, v15, v16);
      v17 = a1[10];
      a1[10] = v16;
      v18 = a1[12];
      v27 = v32;
      *(a1 + 11) = v32;
      *&v32 = v17;
      *(&v32 + 1) = v18;
      v30 = v17;
      v31 = v17;
      result = std::__split_buffer<md::IconMeshDescriptor>::~__split_buffer(&v30);
      v19 = v27;
    }

    a1[11] = v19;
  }

  else
  {
    v24 = (a1[10] + 40 * ((v5 - a1[7]) >> 3));
    *v24 = *a3;
    result = std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::operator=[abi:nn200100]((v24 + 2), (a3 + 2));
    if (v24 != a1[11])
    {
      v25 = a1[16];
      if (v25)
      {
        v26 = a1[31];
        do
        {
          result = std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v25[6], v26, &v28, 1);
          v25 = *v25;
        }

        while (v25);
      }

      return result;
    }
  }

  v20 = a1[22];
  if (v20)
  {
    v21 = a1[31];
    while (1)
    {
      v30 = &v28;
      v31 = 1;
      v29 = v21;
      v22 = v20[6];
      if (!v22)
      {
        break;
      }

      result = (*(*v22 + 48))(v22, &v29, &v30);
      v20 = *v20;
      if (!v20)
      {
        return result;
      }
    }

    std::__throw_bad_function_call[abi:nn200100]();
LABEL_25:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::IconMeshDescriptor>,md::IconMeshDescriptor*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (a3 + 32);
    v6 = result;
    do
    {
      *(v5 - 8) = *v6;
      v7 = *(v6 + 32);
      if (v7)
      {
        if (v6 + 8 == v7)
        {
          *v5 = v5 - 3;
          (*(**(v6 + 32) + 24))(*(v6 + 32));
        }

        else
        {
          *v5 = v7;
          *(v6 + 32) = 0;
        }
      }

      else
      {
        *v5 = 0;
      }

      v6 += 40;
      v5 += 5;
    }

    while (v6 != a2);
    do
    {
      result = std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::~__value_func[abi:nn200100](v4 + 8);
      v4 += 40;
    }

    while (v4 != a2);
  }

  return result;
}

float32x4_t md::CaptionedIconLabelPart::pixelBoundsForDisplay(md::CaptionedIconLabelPart *this)
{
  v1 = 0;
  v2 = (this + 716);
  v3 = 1;
  result = xmmword_1B33B0730;
  while (*(this + v1 + 181) >= v2->f32[v1])
  {
    v5 = v3;
    v3 = 0;
    v1 = 1;
    if ((v5 & 1) == 0)
    {
      v6 = 0;
      v11 = *v2;
      v7 = &v11;
      v8 = 1;
      while (v11.f32[v6 + 2] >= v7->f32[0])
      {
        v9 = v8;
        v8 = 0;
        v7 = &v11.i32[1];
        v6 = 1;
        if ((v9 & 1) == 0)
        {
          v10.i64[0] = *(this + 65);
          v10.i64[1] = v10.i64[0];
          return vaddq_f32(v11, v10);
        }
      }

      return v11;
    }
  }

  return result;
}

float md::CaptionedIconLabelPart::pushToRenderModel(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a3.n128_f32[0];
  if (*(a1 + 925) == 1)
  {
    (*(***(a1 + 576) + 128))(**(a1 + 576), a2, a3);
  }

  if (*(a1 + 926) == 1 && (*(a1 + 732) & 1) == 0)
  {
    if (*(a1 + 952))
    {
      *(a1 + 952) = 0;
      *(a1 + 948) = 1065353216;
      v6 = 1.0;
    }

    else
    {
      v6 = *(a1 + 948);
    }

    v7 = *(*(a1 + 576) + 8 * *(a1 + 925));
    (*(*v7 + 128))(v7, a2, v6 * v3);
  }

  result = fmaxf(fminf(v3, 1.0), 0.0);
  *(a1 + 552) = result;
  return result;
}

uint64_t md::PointIconLabelPart::pushToRenderModel(uint64_t a1, gdc::Registry **a2, float a3)
{
  md::IconLabelPart::pushToRenderModel(a1, a2, a3);
  result = *(a1 + 840);
  if (result)
  {
    v5.n128_f32[0] = (a3 * 0.25) * *(a1 + 600);
    v7 = *(*result + 128);

    return v7(v5);
  }

  return result;
}

uint64_t md::CompositeLabelPart::isAnimating(md::CompositeLabelPart *this)
{
  v1 = *(this + 72);
  v2 = *(this + 73);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 8;
  do
  {
    result = (*(**(v3 - 8) + 712))(*(v3 - 8));
    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 8;
  }

  while (!v5);
  return result;
}

void md::LightingLogicContext::quantizedShadowViewProjectionMatrix(md::LightingLogicContext *this, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v6 = fmax(*(a2 + 304) - *(a2 + 280), *(a2 + 312) - *(a2 + 288));
  *&v30 = v6;
  v7.i64[0] = a3;
  v7.i64[1] = a4;
  v31 = vcvtq_f64_u64(v7);
  v8.f64[0] = gm::Box<double,3>::center<double>(a2 + 280);
  v10 = 0;
  v11 = *(a2 + 320);
  v12 = *(a2 + 296);
  v13 = *(a2 + 264);
  v14 = *(a2 + 272);
  v33 = 0u;
  v34 = 0u;
  v15 = v13 + -1.0;
  if (!v14)
  {
    v15 = 1.0 - v13;
  }

  v36 = 0uLL;
  v37 = 0uLL;
  v38 = v15 / (v12 - v11);
  v39 = 0;
  v16 = vdivq_f64(vdupq_lane_s64(v30, 0), v31);
  v8.f64[1] = v9;
  v17 = vdupq_lane_s64(COERCE__INT64(*&v30 * 0.5), 0);
  v18 = vsubq_f64(v8, v17);
  v19 = vaddq_f64(v17, v8);
  v20 = vmulq_f64(vrndmq_f64(vdivq_f64(v18, v16)), v16);
  v21 = vmulq_f64(vrndmq_f64(vdivq_f64(v19, v16)), v16);
  v22 = vsubq_f64(v21, v20);
  v32 = 2.0 / v22.f64[0];
  v35 = 2.0 / v22.f64[1];
  v40 = vdivq_f64(vnegq_f64(vaddq_f64(v21, v20)), v22);
  v41 = -(v11 - v13 * v12) / (v12 - v11);
  v42 = 0x3FF0000000000000;
  v23 = &v32;
  do
  {
    v24 = 0;
    v25 = a2 + 328;
    do
    {
      v26 = 0;
      v27 = 0.0;
      v28 = v23;
      do
      {
        v29 = *v28;
        v28 += 4;
        v27 = v27 + *(v25 + v26) * v29;
        v26 += 8;
      }

      while (v26 != 32);
      *(this + 4 * v24++ + v10) = v27;
      v25 += 32;
    }

    while (v24 != 4);
    ++v10;
    ++v23;
  }

  while (v10 != 4);
}

void std::__function::__func<md::ita::UpdateShadowConstants::operator()(ecs2::Query<md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle &>)::$_0,std::allocator<md::ita::UpdateShadowConstants::operator()(ecs2::Query<md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle &>)::$_0>,void ()(md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle &)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v5 = md::VKMRenderResourcesStore::getConstantData<ggl::DaVinci::Shadow>(**(a1 + 8), *a3);
  TileMatrix = md::VKMRenderResourcesStore::getTileMatrix(**(a1 + 8), *a2);
  v7 = TileMatrix[5];
  v30[4] = TileMatrix[4];
  v30[5] = v7;
  v8 = TileMatrix[7];
  v30[6] = TileMatrix[6];
  v30[7] = v8;
  v9 = TileMatrix[1];
  v30[0] = *TileMatrix;
  v30[1] = v9;
  v10 = TileMatrix[3];
  v30[2] = TileMatrix[2];
  v30[3] = v10;
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v28, v5);
  v11 = 0;
  v12 = *(a1 + 16);
  do
  {
    v13 = 0;
    v14 = v30;
    do
    {
      v15 = 0;
      v16 = 0.0;
      v17 = v12;
      do
      {
        v18 = *v17;
        v17 += 4;
        v16 = v16 + *(v14 + v15) * v18;
        v15 += 8;
      }

      while (v15 != 32);
      *&v26[4 * v13++ + v11] = v16;
      v14 += 2;
    }

    while (v13 != 4);
    ++v11;
    ++v12;
  }

  while (v11 != 4);
  v19 = 0;
  v20 = v26;
  do
  {
    v22 = *v20;
    v21 = v20[1];
    v20 += 2;
    v27[v19++] = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
  }

  while (v19 != 4);
  v23 = v29;
  v24 = v27[1];
  *v29 = v27[0];
  v23[1] = v24;
  v25 = v27[3];
  v23[2] = v27[2];
  v23[3] = v25;
  ggl::BufferMemory::~BufferMemory(v28);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileShadowConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileShadowConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileShadowConstantDataHandle>();
    *algn_1EB83BE58 = 0xF2296D6406C155CBLL;
    qword_1EB83BE60 = "md::ls::TileShadowConstantDataHandle]";
    qword_1EB83BE68 = 36;
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::CanCastShadow>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanCastShadow>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanCastShadow>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanCastShadow>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanCastShadow>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CanCastShadow>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanCastShadow>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CanCastShadow>(void)::localId;
    unk_1EB82D8C0 = 0x8D203CEEEBEC82DELL;
    qword_1EB82D8C8 = "md::ls::CanCastShadow]";
    qword_1EB82D8D0 = 21;
  }
}

void std::__function::__func<md::ita::PrepareShadowSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_0,std::allocator<md::ita::PrepareShadowSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = **(a1 + 8);
  v6 = ecs2::ExecutionTaskContext::currentEntity(a1);
  ecs2::addComponent<md::ls::SliceAssignmentT<(md::SliceType)3>>(v5, v6);
  v7 = *(a1 + 16);

  ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>::insert(v7, a3);
}

uint64_t ecs2::addComponent<md::ls::SliceAssignmentT<(md::SliceType)3>>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A33730;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A33730;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A337D0[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SliceAssignmentT<(md::SliceType)3>>(ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)3> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A33730;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SliceAssignmentT<(md::SliceType)3>>(ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)3> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)3>>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>(void)::metadata) = *(a2 + 4096);
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)3> const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::AppliedWantsDynamicShadowBounds const*,md::BoundData const&>,std::tuple<>>::containsAll<md::ls::MeshRenderableID const,md::ls::SliceAssignmentT<(md::SliceType)3> const,md::ls::VisibilityGroupID const,md::ls::SharedRenderableDataHandle const,md::BoundData const>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0 && *(v11 + 4 * (a3 & 0x3F)) == a2 && (v12 = *(a1[7] + 8), v3 < (*(a1[7] + 16) - v12) >> 3) && (v13 = *(v12 + 8 * v3)) != 0)
  {
    return *(v13 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<md::ita::PrepareCulledShadowSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)3> const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::AppliedWantsDynamicShadowBounds const*,md::BoundData const&>)::$_0,std::allocator<md::ita::PrepareCulledShadowSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)3> const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::AppliedWantsDynamicShadowBounds const*,md::BoundData const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)3> const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::AppliedWantsDynamicShadowBounds const*,md::BoundData const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = *a6;
  RenderableData = md::VKMRenderResourcesStore::getRenderableData(**(a1 + 8), *a5);
  v21 = 0;
  v22 = 0uLL;
  if (v10)
  {
    for (i = 0; i != 12; i += 4)
    {
      *(&v21 + i) = *(RenderableData + 256 + i);
    }

    for (j = 0; j != 12; j += 4)
    {
      *(&v22 + j + 4) = *(RenderableData + 268 + j);
    }
  }

  else if (*(RenderableData + 288))
  {
    v14 = *(RenderableData + 280);
    v15 = *(RenderableData + 284);
    v16 = v15 + (*(a7 + 2) * v14);
    v17 = v15 + (*(a7 + 5) * v14);
    v18 = *(a7 + 12);
    v21 = *a7;
    *&v22 = v16;
    *(&v22 + 4) = v18;
    *(&v22 + 3) = v17;
  }

  else
  {
    v21 = *a7;
    v22 = *(a7 + 1);
  }

  v19 = gdc::fastFrustumBoxIntersection<float>(RenderableData, &v21);
  if (v19)
  {
    v20 = ecs2::ExecutionTaskContext::currentEntity(v19);
    v24[0] = &unk_1F2A33968;
    v24[1] = v20 << 32;
    v24[3] = v24;
    v25[3] = v25;
    v25[0] = &unk_1F2A33968;
    v25[1] = v20 << 32;
    v26 = 0;
    ecs2::Runtime::queueCommand();
    if (v26 != -1)
    {
      (off_1F2A337D0[v26])(&v23, v25);
    }

    v26 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v24);
    ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>::insert(*(a1 + 24), a4);
  }
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SliceAssignmentT<(md::SliceType)4>>(ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)4> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A33968;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SliceAssignmentT<(md::SliceType)4>>(ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)4> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)4>>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>(void)::metadata) = *(a2 + 4096);
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)4> const&,md::ls::RenderableMeshVertexFormat const&,md::ls::TileType const&,md::ls::MeshLayerTypeV const&,md::ls::PendingProcessingShadow const&,md::ls::AssociationHandle *,md::ls::HasMeshHandle const*,md::ls::PositionScaleInfoConstantDataHandle const*,md::ls::ViewConstantDataHandle const*,md::ls::TransformConstantDataHandle const*,md::ls::IndexRange const*,md::ls::NormalsHandle const*,md::ls::InstanceTransformHandle const*,md::ls::UVsHandle const*,md::ls::NeedsZBias const*,md::ls::InstanceCount const*,md::ls::ElevationHandle const*,md::ls::ShadowConstantDataHandle const&,md::ls::IsMercator const*,md::ls::PreserveHeight const*,md::ls::SharedUniqueID const*>,std::tuple<>>::containsAll<md::ls::MeshRenderableID const,md::ls::SliceAssignmentT<(md::SliceType)4> const,md::ls::RenderableMeshVertexFormat const,md::ls::TileType const,md::ls::MeshLayerTypeV const,md::ls::PendingProcessingShadow const,md::ls::ShadowConstantDataHandle const>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0 && *(v11 + 4 * (a3 & 0x3F)) == a2 && (v12 = *(a1[6] + 8), v3 < (*(a1[6] + 16) - v12) >> 3) && (v13 = *(v12 + 8 * v3)) != 0 && *(v13 + 4 * (a3 & 0x3F)) == a2 && (v14 = *(a1[7] + 8), v3 < (*(a1[7] + 16) - v14) >> 3) && (v15 = *(v14 + 8 * v3)) != 0 && *(v15 + 4 * (a3 & 0x3F)) == a2 && (v16 = *(a1[20] + 8), v3 < (*(a1[20] + 16) - v16) >> 3) && (v17 = *(v16 + 8 * v3)) != 0)
  {
    return *(v17 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void md::PatternedBatch::layout(uint64_t a1, float *a2)
{
  v130 = *MEMORY[0x1E69E9840];
  v115 = 0.0;
  v114 = 0;
  v113 = 0;
  v127 = 0uLL;
  v128 = 0;
  v124 = 0uLL;
  v125 = 0;
  v121 = 0uLL;
  v122 = 0;
  v4 = *(a1 + 920);
  v5 = *(a1 + 928);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v106, v4, v5);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = v108;
  if (v108)
  {
    md::getRoadWidths(&v106, &v115, &v114 + 1, &v114, &v113, a2[2]);
    if (a2[2] >= 0x17)
    {
      v7 = 23;
    }

    else
    {
      v7 = a2[2];
    }

    v8 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v106 + 24), 91, v7, 2u, 0);
    v9 = a2[15];
    v10 = v115 > 0.0 && v115 >= v9;
    v11 = *(&v114 + 1) > 0.0 && *(&v114 + 1) >= v9;
    v12 = *&v114 > 0.0 && *&v114 >= v9;
    if (v10 || (v8 & 1) == 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v11 || v12;
    }

    if (!v13)
    {
      v104 = 0;
      v39 = 0;
      v33 = 0.0;
      goto LABEL_66;
    }

    v14 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(*a2 + 16), *(*(*a2 + 16) + 8));
    if (*(a2 + 12) >= 0x17u)
    {
      v15 = 23;
    }

    else
    {
      v15 = *(a2 + 12);
    }

    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v106 + 24), 465, v15, 2u, 0);
    v104 = v16 >= 1.0;
    if (a2[2] >= 0x17)
    {
      v17 = 23;
    }

    else
    {
      v17 = a2[2];
    }

    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gss::DashPattern>(&v118, *(v106 + 24), 0x12Cu, v17, 2);
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vdeallocate(&v124);
    v124 = v118;
    v125 = v119;
    v119 = 0;
    v118 = 0uLL;
    v126 = v120;
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v118);
    if (a2[2] >= 0x17)
    {
      v18 = 23;
    }

    else
    {
      v18 = a2[2];
    }

    if (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v106 + 24), 108, v18, 2u, 0))
    {
      md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(&v118, v14, &v106, 2u, a2[2]);
    }

    else
    {
      md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(&v118, v14, &v106, a2[2], 2u);
    }

    v111 = v118;
    if (a2[2] >= 0x17)
    {
      v19 = 23;
    }

    else
    {
      v19 = a2[2];
    }

    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gss::DashPattern>(&v118, *(v106 + 24), 0x12Du, v19, 2);
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vdeallocate(&v127);
    v127 = v118;
    v128 = v119;
    v119 = 0;
    v118 = 0uLL;
    v129 = v120;
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v118);
    if (a2[2] >= 0x17)
    {
      v20 = 23;
    }

    else
    {
      v20 = a2[2];
    }

    if (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v106 + 24), 107, v20, 2u, 0))
    {
      md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)93,(gss::PropertyID)490>(&v118, v14, &v106, a2[2]);
    }

    else
    {
      md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)93,(gss::PropertyID)490>(&v118, v14, &v106, a2[2]);
    }

    v112 = v118;
    if (a2[2] >= 0x17)
    {
      v21 = 23;
    }

    else
    {
      v21 = a2[2];
    }

    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gss::DashPattern>(&v118, *(v106 + 24), 0x12Cu, v21, 2);
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vdeallocate(&v121);
    v121 = v118;
    v122 = v119;
    v119 = 0;
    v118 = 0uLL;
    v123 = v120;
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v118);
    if (a2[2] >= 0x17)
    {
      v22 = 23;
    }

    else
    {
      v22 = a2[2];
    }

    v23 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v106 + 24), 407, v22, 2u, 0);
    v24 = a2[2];
    if (!v23)
    {
      if (v24 >= 0x17)
      {
        v25 = 23;
      }

      else
      {
        v25 = v24;
      }

      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v117, *(v106 + 24), 403, v25, 2u, 0);
      v118 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v117)), vdupq_n_s32(0x37800080u));
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v106 + 24), 508, v25, 2u, 0);
      md::AccessibilityHelper::luminanceAdjustedColor(v109, *v14, &v118, v26);
      v27 = *(v106 + 24);
      v28 = *v27;
LABEL_44:
      if (a2[2] >= 0x17)
      {
        v29 = 23;
      }

      else
      {
        v29 = a2[2];
      }

      if (v28)
      {
        v30 = *v28;
        v31 = *v28 == 1.0;
        if (*(v27 + 10) == 1 && v30 != 0.0 && v30 != 1.0)
        {
LABEL_52:
          if (gss::RenderStyle<gss::PropertyID>::hasValueForKeyAtZAtEnd(v27, 0x134u, v29, 0))
          {
            goto LABEL_55;
          }

          v32 = 1;
LABEL_54:
          v33 = 0.0;
          if (!gss::RenderStyle<gss::PropertyID>::hasValueForKeyAtZAtEnd(v27, 0x134u, v29, v32))
          {
LABEL_56:
            v35 = a2[27];
            v36 = v111.f32[3] * v35;
            v111.f32[3] = v36;
            v37 = v112.f32[3] * v35;
            v112.f32[3] = v112.f32[3] * v35;
            v38 = v110 * v35;
            v110 = v38;
            if (v36 <= 0.0)
            {
              v10 = 0;
            }

            if (v37 <= 0.0)
            {
              v11 = 0;
            }

            v39 = v38 > 0.0;
            if (v38 <= 0.0)
            {
              v12 = 0;
            }

            if (*(a2 + 112) == 1 && v36 <= 0.0 && (v10 = 0, v37 <= 0.0))
            {
              v11 = 0;
            }

            else
            {
              v39 = 1;
            }

LABEL_66:
            v40 = a2[2];
            v41 = *(v106 + 24);
            if (v40 >= 0x17)
            {
              v42 = 23;
            }

            else
            {
              v42 = v40;
            }

            v43 = *v41;
            if (*v41 && (v44 = *v43, LODWORD(v43) = *v43 == 1.0, *(v41 + 10) == 1) && (v44 != 0.0 ? (v45 = v44 == 1.0) : (v45 = 1), !v45) || (v46 = *(v41 + v43 + 11), v46 == 2))
            {
              if (gss::RenderStyle<gss::PropertyID>::hasValueForKeyAtZAtEnd(*(v106 + 24), 0x1A2u, v42, 0))
              {
LABEL_80:
                gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v118, v41, 418, 2u, fminf(fmaxf(v40, 0.0), 23.0));
                goto LABEL_81;
              }

              v46 = 1;
            }

            if (!gss::RenderStyle<gss::PropertyID>::hasValueForKeyAtZAtEnd(v41, 0x1A2u, v42, v46))
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          }

LABEL_55:
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v27, 308, v29, 2u, 0);
          v33 = v34;
          goto LABEL_56;
        }
      }

      else
      {
        v31 = 0;
      }

      v32 = *(v27 + v31 + 11);
      if (v32 != 2)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v94 = fminf(fmaxf(v24, 0.0), 23.0);
    gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v117, *(v106 + 24), 403, 2u, v94);
    v118 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v117)), vdupq_n_s32(0x37800080u));
    v27 = *(v106 + 24);
    v28 = *v27;
    if (*v27)
    {
      v95 = *v28;
      v96 = *v28 == 1.0;
      if (*(v27 + 10) == 1 && v95 != 0.0 && v95 != 1.0)
      {
        goto LABEL_152;
      }
    }

    else
    {
      v96 = 0;
    }

    v97 = *(v27 + v96 + 11);
    v95 = 0.0;
    if (v97 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(v106 + 24), 508, v97, 0, v94);
LABEL_148:
      md::AccessibilityHelper::luminanceAdjustedColor(v109, *v14, &v118, v98);
      goto LABEL_44;
    }

LABEL_152:
    v117.i8[0] = 1;
    v116 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v27, 508, 0, &v117, v94);
    v101 = v100;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v27, 508, 1, &v116, v94);
    v98 = v101 + ((v102 - v101) * v95);
    goto LABEL_148;
  }

  v82 = xmmword_1B33B0560;
  v83 = (a1 + 264);
  v84 = vdupq_n_s64(2uLL);
  v85 = 6;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v82)).u8[0])
    {
      *(v83 - 128) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v82)).i32[1])
    {
      *v83 = 0;
    }

    v82 = vaddq_s64(v82, v84);
    v83 += 256;
    v85 -= 2;
  }

  while (v85);
  v104 = 0;
  v39 = 0;
  v12 = 0;
  v10 = 0;
  v11 = 0;
  *(a1 + 912) = 0;
  v33 = 0.0;
LABEL_81:
  if (v108 == 1)
  {
    (*(*v106 + 56))(v106);
  }

  if (v107)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v107);
  }

  if (*(&v106 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v106 + 1));
  }

  if (v6)
  {
    v103 = v12;
    v47 = *(*(a1 + 8) + 200);
    v48 = *(a2 + 12);
    v49 = +[VKDebugSettings sharedSettings];
    v50 = [v49 enableTileClippingDebug];

    md::PatternedPipelineStateManager::pipelineStateForFunctionConstants(&v106, *(v47 + 32), *(a1 + 1041), *(a2 + 107), *(a2 + 106), v48 != 0, v50, 0);
    v105 = v106;
    md::PatternedPipelineStateManager::pipelineStateForFunctionConstants(&v106, *(v47 + 32), *(a1 + 1041) & 1, *(a2 + 107) & 1, *(a2 + 106) & 1, v48 != 0, v50, v33 > 0.0);
    v51 = *(&v106 + 1);
    ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(a1 + 944), v106, *(&v106 + 1));
    ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(a1 + 952), v105, *(&v105 + 1));
    ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(a1 + 960), v105, *(&v105 + 1));
    v52 = *(a1 + 944);
    v53 = *(v52 + 136);
    *(v53 + 48) = v48;
    *(v53 + 56) = 0;
    v54 = *(v52 + 232);
    v55 = *(v54 + 56);
    *(v54 + 48) = 0;
    *(v54 + 56) = 0;
    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v55);
    }

    v56 = *(a1 + 952);
    v57 = *(v56 + 136);
    *(v57 + 48) = v48;
    *(v57 + 56) = 0;
    v58 = *(v56 + 232);
    v59 = *(v58 + 56);
    *(v58 + 48) = 0;
    *(v58 + 56) = 0;
    if (v59)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v59);
    }

    v60 = *(a1 + 960);
    v61 = *(v60 + 136);
    *(v61 + 48) = v48;
    *(v61 + 56) = 0;
    v62 = *(v60 + 232);
    v63 = *(v62 + 56);
    *(v62 + 48) = 0;
    *(v62 + 56) = 0;
    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v63);
    }

    if ((*(a1 + 1041) & 1) == 0)
    {
      ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(a1 + 976), *(v47 + 40), *(v47 + 48));
      ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(a1 + 968), *(v47 + 40), *(v47 + 48));
      ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(a1 + 984), *(v47 + 40), *(v47 + 48));
    }

    if (v39)
    {
      v64 = a2[5];
      v65 = v64 * v115;
      v66 = *(&v114 + 1) * v64;
      v67 = *&v114 * v64;
      v68 = v64 * v33;
      v69 = xmmword_1B33B0560;
      v70 = (a1 + 264);
      v71 = vdupq_n_s64(2uLL);
      v72 = 6;
      do
      {
        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v69)).u8[0])
        {
          *(v70 - 128) = 1;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v69)).i32[1])
        {
          *v70 = 1;
        }

        v69 = vaddq_s64(v69, v71);
        v70 += 256;
        v72 -= 2;
      }

      while (v72);
      *(a1 + 912) = 1;
      v73 = (*(a1 + 1041) ^ 1) & a2[14];
      v74 = *(*(a1 + 8) + 200);
      if (v10)
      {
        v75 = *(a1 + 952);
        *(a1 + 176) = v75;
        v76 = v104;
        setupPatternedShader<ggl::PatternedRibbon::BasePipelineSetup>(v75, (v74 + 56), &v124, &v111, (a1 + 992), v104, v64, v65, 0.0);
        v77 = v73 & 1;
      }

      else
      {
        v77 = 0;
        *(a1 + 264) = 0;
        v76 = v104;
      }

      *(a1 + 648) = v77;
      if (v11)
      {
        v86 = *(a1 + 944);
        *(a1 + 48) = v86;
        setupPatternedShader<ggl::PatternedRibbon::BasePipelineSetup>(v86, (v74 + 56), &v127, &v112, (a1 + 1008), v76, a2[5], v66, v68);
        v87 = v73 & 1;
      }

      else
      {
        v87 = 0;
        *(a1 + 136) = 0;
      }

      *(a1 + 520) = v87;
      v88 = v103;
      if (v103)
      {
        v99 = *(a1 + 960);
        *(a1 + 304) = v99;
        setupPatternedShader<ggl::PatternedRibbon::BasePipelineSetup>(v99, (v74 + 56), &v121, v109, (a1 + 1024), v76, a2[5], v67, 0.0);
        v88 = v73 & 1;
      }

      else
      {
        *(a1 + 392) = 0;
      }

      *(a1 + 776) = v88;
      v89 = *(a2 + 57);
      v90 = xmmword_1B33B0560;
      v91 = (a1 + 184);
      v92 = vdupq_n_s64(2uLL);
      v93 = 6;
      do
      {
        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v90)).u8[0])
        {
          *(v91 - 32) = v89;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v90)).i32[1])
        {
          *v91 = v89;
        }

        v90 = vaddq_s64(v90, v92);
        v91 += 64;
        v93 -= 2;
      }

      while (v93);
      if (((*(a1 + 1041) | v73) & 1) == 0)
      {
        *(a1 + 56) = v89;
        *(a1 + 312) = v89 + 1;
        *(a1 + 184) = v89 + 2;
      }

      md::RoadBatch::setRenderOrdersForStrokeAndFill(0, 0, a1 + 16, a1 + 144, 0, 0, *(a1 + 936), 1, *(a1 + 920), *(a1 + 928), a2, *(a1 + 1040) & 0xFE, a1 + 272);
      if (v73)
      {
        md::RoadBatch::setRenderOrdersForStrokeAndFill(0, 0, a1 + 400, a1 + 528, 0, 0, *(a1 + 936), 1, *(a1 + 920), *(a1 + 928), a2, *(a1 + 1040) | 1, a1 + 656);
      }
    }

    else
    {
      v78 = xmmword_1B33B0560;
      v79 = (a1 + 264);
      v80 = vdupq_n_s64(2uLL);
      v81 = 6;
      do
      {
        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v78)).u8[0])
        {
          *(v79 - 128) = 0;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v78)).i32[1])
        {
          *v79 = 0;
        }

        v78 = vaddq_s64(v78, v80);
        v79 += 256;
        v81 -= 2;
      }

      while (v81);
      *(a1 + 912) = 0;
    }

    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v51);
    }

    if (*(&v105 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v105 + 1));
    }
  }

  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v121);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v124);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v127);
}

void sub_1B2B5559C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a25 == 1)
  {
    (*(*a21 + 56))(a21);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a24);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a43);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v43 - 224));
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v43 - 176));
  _Unwind_Resume(a1);
}

void md::PatternedLayer::layout(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 56) == 1)
  {
    v55 = *(a1 + 200);
    v56 = *(v55 + 8);
    *(a1 + 56) = v56;
    *(a1 + 64) = v56;
    *(a1 + 72) = *(v55 + 8);
    v57 = *(v55 + 24);
    v4 = (v55 + 24);
    *(a1 + 80) = v57;
    *(a1 + 88) = v57;
    v7 = 96;
  }

  else
  {
    v4 = *(a1 + 200);
    if (*(a2 + 105) == 1)
    {
      v6 = v4[2];
      v4 += 2;
      v5 = v6;
    }

    else
    {
      v5 = *v4;
    }

    *(a1 + 56) = v5;
    *(a1 + 64) = v5;
    v7 = 72;
  }

  *(a1 + v7) = *v4;
  v8 = *a2;
  if (*(a2 + 104) == 1)
  {
    v9 = 0;
    v10 = *(a2 + 64);
    do
    {
      v11 = *(a1 + 56 + v9);
      if (v11)
      {
        v12 = gdc::Context::get<md::CameraContext>(*(v8 + 1));
        v13 = gdc::CameraView::position(v12);
        v60 = *v13;
        *&v61[0] = *(v13 + 16);
        geo::Geocentric<double>::toMercator3<double>(&v60, &v62);
        v14 = v63;
        *(v11 + 40) = md::RoadLayer::calculateZBias(v15, v10, v14);
      }

      v9 += 8;
    }

    while (v9 != 48);
  }

  md::LayoutContext::frameState(v8);
  if ((*(v16 + 632) & 1) == 0)
  {
    v39 = *(a1 + 8);
    v38 = *(a1 + 16);
    goto LABEL_57;
  }

  v17 = *(*v2 + 8);
  v18 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v17, 0x1AF456233693CD46uLL);
  if (v18 && (v19 = v18[5], *(v19 + 8) == 0x1AF456233693CD46))
  {
    v20 = *(v19 + 32);
  }

  else
  {
    v20 = 0;
  }

  v58 = a1;
  v59 = v2;
  if (*(v20 + 3784))
  {
    v21 = *(a1 + 112);
    if (v21)
    {
      v22 = 0;
      v23 = 0;
      v24 = *(gdc::Camera::cameraFrame(v20) + 16);
      do
      {
        for (i = 0; i != 4; ++i)
        {
          v26 = v22 | (4 * i);
          geo::Frustum<double>::transformed(&v62, v20 + 984, v21 + 1696 + 56 * v26);
          v27 = v21 + 32 + 104 * v26;
          v28 = *(v27 + 56);
          v29 = *(v27 + 88);
          v61[0] = *(v27 + 72);
          v61[1] = v29;
          v60 = v28;
          v68 = 0uLL;
          v69 = v24;
          gm::Box<double,3>::operator+=(&v60, &v68);
          for (j = 0; j != 192; j += 32)
          {
            v31 = 0;
            v32 = *(&v62 + j + 16);
            v66 = *(&v62 + j);
            v67 = v32;
            do
            {
              v33 = &v61[-1] + v31;
              if (*(&v66 + v31) >= 0.0)
              {
                v33 = v61 + v31 + 8;
              }

              *(&v68 + v31) = *v33;
              v31 += 8;
            }

            while (v31 != 24);
            v34 = 0;
            v35 = 0.0;
            do
            {
              v35 = v35 + *(&v62 + j + v34) * *(&v68 + v34);
              v34 += 8;
            }

            while (v34 != 24);
            v36 = *&v64[j] + v35;
            if (v36 < 0.0)
            {
              break;
            }
          }

          v37 = 1 << (4 * i + v22);
          if (v36 < 0.0)
          {
            v37 = 0;
          }

          v23 |= v37;
        }

        ++v22;
      }

      while (v22 != 4);
      goto LABEL_38;
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(&v62, *(a1 + 160), 0);
    v41 = v65;
    v42 = 0.0;
  }

  else
  {
    v40 = 0.0;
    if (*md::LayoutContext::get<md::ElevationContext>(v17) == 1 && *(a1 + 152) == 1)
    {
      v40 = *(gdc::Camera::cameraFrame(v20) + 16) * 0.0000000249532021 * (1 << *(a1 + 121));
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(&v62, *(a1 + 160), 0);
    v41 = v65;
    v42 = v40;
  }

  v23 = ggl::CullingGrid::intersectedCellsForView(v41, v42);
  ggl::BufferMemory::~BufferMemory(&v62);
LABEL_38:
  v39 = *(v58 + 8);
  v38 = *(v58 + 16);
  if (v39 == v38)
  {
    v2 = v59;
  }

  else
  {
    v43 = vdupq_n_s64(2uLL);
    v44 = *(v58 + 8);
    v2 = v59;
    do
    {
      v45 = *v44;
      v46 = *(*v44 + 888);
      v47 = *(*v44 + 896);
      if (v46 == v47)
      {
        v48 = 0;
      }

      else
      {
        v48 = 0;
        do
        {
          v49 = *v46++;
          v50 = (*(v49 + 96) & v23) != 0;
          v48 |= v50;
          *(v49 + 48) = v50;
        }

        while (v46 != v47);
      }

      v51 = v48 & 1;
      v52 = (v45 + 264);
      v53 = 6;
      v54 = xmmword_1B33B0560;
      do
      {
        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v54)).u8[0])
        {
          *(v52 - 128) = v51;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v54)).i32[1])
        {
          *v52 = v51;
        }

        v54 = vaddq_s64(v54, v43);
        v52 += 256;
        v53 -= 2;
      }

      while (v53);
      *(v45 + 912) = v51;
      ++v44;
    }

    while (v44 != v38);
  }

LABEL_57:
  while (v39 != v38)
  {
    if (*(*v39 + 912) == 1)
    {
      md::PatternedBatch::layout(*v39, v2);
    }

    ++v39;
  }
}

uint64_t *gss::PropertySetValueHelper<gss::PropertyID,gss::DashPattern>::value(unsigned __int16 a1, uint64_t a2)
{
  v3 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((a2 + 96), a1);
  if (v3 != *(a2 + 108))
  {
    return *(*(a2 + 96) + *(a2 + 104) + 16 * v3 + 8);
  }

  {
    return &gss::PropertySetValueHelper<gss::PropertyID,gss::DashPattern>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
  }

  {
    gss::PropertySetValueHelper<gss::PropertyID,gss::DashPattern>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue = 0;
    *algn_1EB82EC88 = 0;
    qword_1EB82EC90 = 0;
    __cxa_atexit(gss::DashPattern::~DashPattern, &gss::PropertySetValueHelper<gss::PropertyID,gss::DashPattern>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue, &dword_1B2754000);
  }

  return &gss::PropertySetValueHelper<gss::PropertyID,gss::DashPattern>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
}

uint64_t md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::collectRenderItems(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &off_1F2A36858;
  v4[1] = a3;
  v4[3] = v4;
  md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::collectRenderItemsForPasses(a1, a2, v4);
  return std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v4);
}

void sub_1B2B55C54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &off_1F2A36858;
  a2[1] = v2;
  return result;
}

void std::function<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    (*(*a1 + 48))(a1, &v6, &v5);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    md::RoadBatch::layout(v3, v4);
  }
}

void md::RoadBatch::layout(uint64_t a1, uint64_t a2)
{
  *&v57[17] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1072);
  if (!v4)
  {
    v49 = atomic_exchange(md::RoadBatch::layout(md::RoadLayoutContext const&)::FAULTED__VectorKit, 1u);
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v50 = GEOGetVectorKitVKDefaultLog_log;
    v51 = v50;
    if (v49)
    {
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_56;
      }

      *buf = 136315650;
      *v57 = "_style != nullptr";
      LOWORD(v57[2]) = 2080;
      *(&v57[2] + 2) = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/RoadFramework.mm";
      HIWORD(v57[4]) = 1024;
      v57[5] = 624;
      v52 = v51;
      v53 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_56;
      }

      *buf = 136315650;
      *v57 = "_style != nullptr";
      LOWORD(v57[2]) = 2080;
      *(&v57[2] + 2) = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/RoadFramework.mm";
      HIWORD(v57[4]) = 1024;
      v57[5] = 624;
      v52 = v51;
      v53 = OS_LOG_TYPE_FAULT;
    }

    _os_log_impl(&dword_1B2754000, v52, v53, "Null style detected: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
LABEL_56:

    v4 = *(a1 + 1072);
    if (!v4)
    {
      return;
    }
  }

  v5 = *(v4 + 72);
  *(a1 + 136) = v5;
  *(a1 + 264) = v5;
  *(a1 + 392) = v5;
  *(a1 + 520) = v5;
  *(a1 + 648) = v5;
  *(a1 + 776) = v5;
  *(a1 + 904) = v5;
  *(a1 + 1040) = v5;
  if (v5 == 1)
  {
    *(*(*(a1 + 1120) + 168) + 8) = *(v4 + 16);
    **(*(a1 + 1128) + 168) = *(*(a1 + 1072) + 16);
    if (*(a2 + 76) == 1)
    {
      v6 = *(*(a1 + 1072) + 48);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(*(a1 + 8) + 208);
    v8 = *(a2 + 96);
    v9 = +[VKDebugSettings sharedSettings];
    v10 = [v9 enableTileClippingDebug];

    v11 = *v7;
    v12 = *(a2 + 88);
    v13 = *(a2 + 106);
    v14 = *(a2 + 107);
    v15 = *(a2 + 117);
    memset(&v57[9] + 2, 0, 22);
    memset(&v57[1] + 2, 0, 32);
    buf[0] = v12;
    buf[1] = v13;
    buf[2] = v14;
    buf[3] = v6 & 1;
    LOBYTE(v57[0]) = v8 != 0;
    BYTE1(v57[0]) = v10;
    HIWORD(v57[0]) = 0;
    LOBYTE(v57[1]) = 0;
    BYTE1(v57[1]) = v15;
    v17 = ggl::packFunctionConstantKey(buf, v16);
    v18 = *(v11 + 104);
    if (!v18)
    {
      goto LABEL_14;
    }

    v19 = (v11 + 104);
    do
    {
      v20 = v18[4];
      v21 = v20 >= v17;
      v22 = v20 < v17;
      if (v21)
      {
        v19 = v18;
      }

      v18 = v18[v22];
    }

    while (v18);
    if (v19 == (v11 + 104) || v17 < v19[4])
    {
LABEL_14:
      std::allocate_shared[abi:nn200100]<ggl::SolidRibbon::PipelineState,std::allocator<ggl::SolidRibbon::PipelineState>,std::shared_ptr<ggl::SolidRibbonShader> &,ggl::ColorBufferOperation &,ggl::RenderTargetFormat &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,0>();
    }

    v55 = v19[5];
    v54 = v19[6];
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = *(a1 + 1112);
    v24 = *(a1 + 1104);
    v25 = *(a1 + 1088);
    ggl::GlobeAtmosphere::BasePipelineSetup::setState(v23, v55, v54);
    ggl::GlobeAtmosphere::BasePipelineSetup::setState(v24, v55, v54);
    ggl::GlobeAtmosphere::BasePipelineSetup::setState(v25, v55, v54);
    v26 = v23[17];
    *(v26 + 48) = v8;
    *(v26 + 56) = 0;
    v27 = v23[29];
    v28 = *(v27 + 56);
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }

    v29 = v24[17];
    *(v29 + 48) = v8;
    *(v29 + 56) = 0;
    v30 = v24[29];
    v31 = *(v30 + 56);
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v31);
    }

    v32 = v25[17];
    *(v32 + 48) = v8;
    *(v32 + 56) = 0;
    v33 = v25[29];
    v34 = *(v33 + 56);
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }

    v35 = v23[2];
    if ((v6 & (v35 != 0)) == 1 && *(v35 + 308) == 1)
    {
      v36 = v24[2];
      if (v36)
      {
        if (*(v36 + 308) == 1)
        {
          v37 = *(a2 + 80);
          if (!v37)
          {
            v37 = **(*(a2 + 120) + 152);
          }

          *(v23[21] + 8) = v37;
          v38 = *(a2 + 80);
          if (!v38)
          {
            v38 = **(*(a2 + 120) + 152);
          }

          *(v24[21] + 8) = v38;
        }
      }
    }

    v39 = *(a1 + 1072);
    *(a1 + 648) = v39[268];
    *(a1 + 776) = v39[269];
    *(a1 + 136) = v39[264];
    *(a1 + 264) = v39[265];
    *(a1 + 392) = v39[266];
    *(a1 + 520) = v39[267];
    *(a1 + 904) = v39[270];
    if ((v39[79] & 1) == 0)
    {
      if (v39[73])
      {
        v41 = 4;
      }

      else
      {
        v40 = v39[75] == 0;
        v41 = 3;
        if (!v40)
        {
          v41 = 4;
        }
      }

      md::RoadBatch::setRenderOrdersForStrokeAndFill(*(a2 + 108), a1 + 144, a1 + 272, a1 + 16 + (v41 << 7), a1 + 656, 0, *(a1 + 1064), *(a1 + 1068), *(a1 + 1048), *(a1 + 1056), a2, *(a1 + 1144), 0);
    }

    v42 = *(a2 + 57);
    v43 = xmmword_1B33B0550;
    v44 = xmmword_1B33B0560;
    v45 = (a1 + 312);
    v46 = 8;
    v47 = vdupq_n_s64(7uLL);
    v48 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v47, v44)), *v43.i8).u8[0])
      {
        *(v45 - 64) = v42;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v44)), *&v43).i8[2])
      {
        *(v45 - 32) = v42;
      }

      if (vuzp1_s16(*&v43, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v43))).i32[1])
      {
        *v45 = v42;
        v45[32] = v42;
      }

      v43 = vaddq_s64(v43, v48);
      v44 = vaddq_s64(v44, v48);
      v45 += 128;
      v46 -= 4;
    }

    while (v46);
    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v54);
    }
  }
}

void sub_1B2B562D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<md::LabelMapTile::loadResourcesTile(std::shared_ptr<md::ResourceInfo> const&)::$_0,std::allocator<md::LabelMapTile::loadResourcesTile(std::shared_ptr<md::ResourceInfo> const&)::$_0>,void ()(md::LabelManager *)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

uint64_t md::FontAtlas::commitGlyphs(std::__shared_weak_count *a1, uint64_t a2, unsigned __int16 *a3, _BYTE *a4)
{
  if (*(a2 + 68) > 0.0 && md::FontAtlas::commitGlyphs(a1, a2, a3, 1))
  {
    *a4 = 1;
    v8 = *a2;
    v9 = *(a2 + 8);
    if (*a2 != v9)
    {
      do
      {
        v11 = v8[2];
        v10 = v8[3];
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
        }

        v12 = v8[1];
        *v8 = v11;
        v8[1] = v10;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v12);
        }

        v13 = v8[3];
        v8[2] = 0;
        v8[3] = 0;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v13);
        }

        v8 += 5;
      }

      while (v8 != v9);
    }

    *(a2 + 64) = *(a2 + 68);
    *(a2 + 68) = -1082130432;
    return 1;
  }

  else
  {

    return md::FontAtlas::commitGlyphs(a1, a2, a3, 0);
  }
}

uint64_t md::FontAtlas::commitGlyphs(std::__shared_weak_count *a1, void *a2, unsigned __int16 *a3, int a4)
{
  v4 = *a3;
  v54 = 1;
  if (v4 < a3[1])
  {
    v7 = a1;
    if (a4)
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    p_shared_owners = &a1[3].__shared_owners_;
    p_shared_weak_owners = &a1[3].__shared_weak_owners_;
    v54 = 1;
    v53 = v8;
    v55 = &a1[3].__shared_owners_;
    while (1)
    {
      v10 = (*a2 + 40 * v4 + v8);
      v11 = *v10;
      if (*(*v10 + 62) != 1)
      {
        goto LABEL_29;
      }

      on_zero_shared_weak = *(v11 + 96);
      if (on_zero_shared_weak)
      {
        goto LABEL_8;
      }

      v18 = atomic_load((v11 + 109));
      if ((v18 & 1) == 0)
      {
        if ((*(v11 + 108) & 1) == 0)
        {
          *(v11 + 108) = 1;
          shared_owners = v7[4].__shared_owners_;
          if ((*(*(shared_owners + 24) + 3417) | LOBYTE(v7[5].__vftable)))
          {
            v20 = *v10;
            a1 = (***shared_owners)(*shared_owners, *v10);
            v21 = atomic_load((shared_owners + 76));
            atomic_store(v21, (v20 + 52));
            atomic_store(1u, (v20 + 109));
          }

          else
          {
            v25 = *(shared_owners + 40);
            v26 = *(shared_owners + 48);
            if (v25 >= v26)
            {
              v29 = *(shared_owners + 32);
              v30 = (v25 - v29) >> 4;
              v31 = v30 + 1;
              if ((v30 + 1) >> 60)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v32 = v26 - v29;
              if (v32 >> 3 > v31)
              {
                v31 = v32 >> 3;
              }

              if (v32 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v33 = v31;
              }

              if (v33)
              {
                v34 = mdm::zone_mallocator::instance(a1);
                v35 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::FontGlyph>>(v34, v33);
              }

              else
              {
                v35 = 0;
              }

              v36 = &v35[16 * v30];
              v37 = *v10;
              *v36 = *v10;
              if (*(&v37 + 1))
              {
                atomic_fetch_add_explicit((*(&v37 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v38 = &v35[16 * v33];
              v28 = v36 + 16;
              v39 = *(shared_owners + 32);
              v40 = *(shared_owners + 40) - v39;
              v41 = &v36[-v40];
              a1 = memcpy(&v36[-v40], v39, v40);
              v42 = *(shared_owners + 32);
              *(shared_owners + 32) = v41;
              *(shared_owners + 40) = v28;
              *(shared_owners + 48) = v38;
              if (v42)
              {
                v43 = mdm::zone_mallocator::instance(a1);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::FontGlyph>>(v43, v42);
              }
            }

            else
            {
              v27 = v10[1];
              *v25 = *v10;
              v25[1] = v27;
              if (v27)
              {
                atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
              }

              v28 = v25 + 2;
            }

            *(shared_owners + 40) = v28;
          }

          a1 = ggl::Performance::Counters::instance(a1);
          atomic_fetch_add((a1[1].__shared_owners_ + 136), 1uLL);
          v8 = v53;
          p_shared_owners = v55;
        }

        v44 = atomic_load((v11 + 109));
        if ((v44 & 1) == 0)
        {
          v54 = 0;
          goto LABEL_29;
        }
      }

      if (*(v11 + 80))
      {
        break;
      }

LABEL_29:
      if (++v4 >= a3[1])
      {
        return v54 & 1;
      }
    }

    v45 = 8;
    if (*(v11 + 61))
    {
      v45 = 16;
    }

    (*(**(v7->__shared_owners_ + v45) + 32))(&v57);
    v46 = v57;
    if (v57)
    {
      v47 = v7[2].__shared_owners_;
      if (v7[2].__vftable == v47)
      {
        operator new[]();
      }

      on_zero_shared_weak = v47[-1].__on_zero_shared_weak;
      v7[2].__shared_owners_ = &v47[-1].__on_zero_shared_weak;
      v48 = v58;
      if (v58)
      {
        atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v49 = *(on_zero_shared_weak + 40);
      *(on_zero_shared_weak + 32) = v46;
      *(on_zero_shared_weak + 40) = v48;
      v8 = v53;
      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v49);
      }

      v50 = (*(v11 + 48) * 0.0625);
      shared_weak_owners = v7[5].__shared_weak_owners_;
      if (((v7[6].__vftable - shared_weak_owners) >> 2) - 1 < v50)
      {
        v50 = ((v7[6].__vftable - shared_weak_owners) >> 2) - 1;
      }

      ++*(shared_weak_owners + 4 * v50);
    }

    else
    {
      on_zero_shared_weak = 0;
    }

    a1 = v58;
    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v58);
    }

    if (!on_zero_shared_weak)
    {
      p_shared_owners = v55;
      goto LABEL_29;
    }

    atomic_store(0, (v11 + 109));
    *(v11 + 108) = 0;
    a1 = *(v11 + 88);
    *(v11 + 80) = 0;
    *(v11 + 88) = 0;
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
    }

    *(v11 + 96) = on_zero_shared_weak;
    *(on_zero_shared_weak + 8) = v11;
    p_shared_owners = v55;
LABEL_8:
    v13 = v7[4].__shared_weak_owners_;
    if (*on_zero_shared_weak != v13)
    {
      *on_zero_shared_weak = v13;
      v14 = (on_zero_shared_weak + 16);
      v15 = *(on_zero_shared_weak + 16);
      if (v15)
      {
        v16 = *p_shared_owners;
        v17 = *(on_zero_shared_weak + 24);
        goto LABEL_16;
      }

      v17 = *(on_zero_shared_weak + 24);
      v16 = *p_shared_owners;
      if (v17)
      {
LABEL_16:
        if (v16 == on_zero_shared_weak)
        {
          v22 = p_shared_owners;
        }

        else
        {
          v22 = (v15 + 24);
        }

        *v22 = v17;
        v23 = p_shared_weak_owners;
        if (*p_shared_weak_owners == on_zero_shared_weak)
        {
LABEL_22:
          *v23 = v15;
        }

        else if (v17)
        {
          v23 = (v17 + 16);
          goto LABEL_22;
        }

        *v14 = 0;
        *(on_zero_shared_weak + 24) = 0;
        --LODWORD(v7[4].__vftable);
        v24 = v7[3].__shared_weak_owners_;
      }

      else
      {
        if (v16 == on_zero_shared_weak)
        {
          v17 = 0;
          v16 = on_zero_shared_weak;
          goto LABEL_16;
        }

        v24 = *p_shared_weak_owners;
        if (*p_shared_weak_owners == on_zero_shared_weak)
        {
          v17 = 0;
          goto LABEL_16;
        }
      }

      *v14 = v24;
      if (v24)
      {
        *(v24 + 24) = on_zero_shared_weak;
      }

      *p_shared_weak_owners = on_zero_shared_weak;
      if (!*p_shared_owners)
      {
        *p_shared_owners = on_zero_shared_weak;
      }

      ++LODWORD(v7[4].__vftable);
      ++HIDWORD(v7[4].__shared_weak_owners_);
      a1 = ggl::Performance::Counters::instance(a1);
      p_shared_owners = v55;
      atomic_fetch_add((a1[1].__shared_owners_ + 144), 1uLL);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  return v54 & 1;
}

void sub_1B2B56AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  geo::read_write_lock::unlock((v19 + 32));
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  _Unwind_Resume(a1);
}

void md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing::operator()(void ****a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = ecs2::ExecutionTask<>::service<md::RenderLayerProvider>(***a1, (**a1)[1]);
  v3 = ecs2::ExecutionTask<>::service<mre::GGLResourceStore>(***a1, (**a1)[1]);
  (*(*v2 + 48))(v2);
  operator new();
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

double std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateStyleTextureIfNecessaryPendingOnly>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateStyleTextureIfNecessaryPendingOnly>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::UpdateStyleTextureIfNecessaryPendingOnly::operator()((a1 + 8), a2);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::GradientConstantDataHandle1>(ecs2::Entity,md::ls::GradientConstantDataHandle1 &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A352D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::GradientConstantDataHandle2>(ecs2::Entity,md::ls::GradientConstantDataHandle2 &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A353E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>();
    unk_1EB82EC60 = 0x4B2419C7BBAFEE01;
    qword_1EB82EC68 = "md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>]";
    qword_1EB82EC70 = 55;
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<md::ita::AssignShadowTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignShadowTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  md::VKMRenderResourcesStore::getPipelineDataSet(**(a1 + 8), *a4);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(**(a1 + 8), *a4);
  v8 = **(a1 + 16);

  return md::setTextureForPipeline<DaVinci::AmbientTexture>(a3, Pipeline, v8);
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::ItemsPrepared const&,md::ls::GradientConstantDataHandle1 const&,md::ls::GradientConstantDataHandle2 const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> const&,md::ls::PipelineSetup &>,std::tuple<>>::isValid(unsigned __int16 **a1)
{
  v1 = (*a1)[1];
  v2 = v1 >> 6;
  v3 = *(a1[2] + 1);
  if (v1 >> 6 < (*(a1[2] + 2) - v3) >> 3 && (v4 = *(v3 + 8 * v2)) != 0 && (v5 = **a1, v6 = 4 * (v1 & 0x3F), *(v4 + v6) == v5) && (v7 = *(a1[3] + 1), v2 < (*(a1[3] + 2) - v7) >> 3) && (v9 = *(v7 + 8 * v2)) != 0 && *(v9 + v6) == v5 && (v10 = *(a1[5] + 1), v2 < (*(a1[5] + 2) - v10) >> 3) && (v11 = *(v10 + 8 * v2)) != 0 && *(v11 + v6) == v5 && (v12 = *(a1[6] + 1), v2 < (*(a1[6] + 2) - v12) >> 3) && (v13 = *(v12 + 8 * v2)) != 0)
  {
    return *(v13 + v6) == v5;
  }

  else
  {
    return 0;
  }
}

uint64_t md::VKMRenderResourcesStore::getConstantData<ggl::DaVinci::GradientParameters>(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 1447, a2);
  if (v3 == a1[1452])
  {
    return 0;
  }

  v4 = (v3 - a1[1451]) >> 3;
  v5 = (v4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v6 = *(a1[1460] + v5);
  ++*(*(a1[1454] + v5) + 24 * (v4 & 0x3F));
  if (!v6)
  {
    return 0;
  }

  else
  {
    return *(v6 + 24 * (v4 & 0x3F));
  }
}

void md::setConstantDataForPipeline<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>(void *a1, void *a2, uint64_t a3, int a4)
{
  v8 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>();
  if (std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a1, v8))
  {
    if (a4)
    {
      {
        if (v13)
        {
          md::typeToIntOrVectorMap(v13);
          md::setConstantDataForPipeline<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>(std::unordered_set<unsigned long> const&,ggl::PipelineSetup *,ggl::ConstantData *,int)::typeBindingInfoMap = &md::typeToIntOrVectorMap(void)::typeToIntOrVectorMap;
        }
      }

      v9 = md::setConstantDataForPipeline<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>(std::unordered_set<unsigned long> const&,ggl::PipelineSetup *,ggl::ConstantData *,int)::typeBindingInfoMap;
    }

    else
    {
      {
        if (v14)
        {
          md::typeToIntMap(v14);
          md::setConstantDataForPipeline<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>(std::unordered_set<unsigned long> const&,ggl::PipelineSetup *,ggl::ConstantData *,int)::typeBindingInfoMap = &md::typeToIntMap(void)::typeToIntMap;
        }
      }

      v9 = md::setConstantDataForPipeline<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>(std::unordered_set<unsigned long> const&,ggl::PipelineSetup *,ggl::ConstantData *,int)::typeBindingInfoMap;
    }

    v10 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(v9, v8);
    if (!v10)
    {
      abort();
    }

    v11 = *(v10 + 7);
    v12 = *(v10 + 6);
    if (v12 != -1)
    {
      ggl::PipelineSetup::setConstantData(a2, v12, a3, 1);
    }

    if (v11 != -1)
    {

      ggl::PipelineSetup::setConstantData(a2, v11, a3, 2);
    }
  }
}

void ggl::PipelineSetup::setConstantData(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v8 = a1[2];
    if (v8)
    {
      v9 = *(*(*(v8 + 48) + 72) + 8);
      v10 = *(v9 + 40);
      if (v10)
      {
        v11 = *(v9 + 32);
        v12 = v11 + 1;
        v13 = v10;
        while (1)
        {
          v14 = *v12;
          v12 += 2;
          if (v14 == a2)
          {
            break;
          }

          if (!--v13)
          {
            goto LABEL_16;
          }
        }

        do
        {
          if (v11[1] == a2)
          {
            v15 = *v11;
            goto LABEL_12;
          }

          v11 += 2;
          --v10;
        }

        while (v10);
        v15 = -1;
LABEL_12:
        v16 = (a1[17] + 16 * v15);
        *v16 = a3;
        v16[1] = 0;
        v17 = (a1[29] + 16 * v15);
        v18 = v17[1];
        *v17 = 0;
        v17[1] = 0;
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v18);
        }

        v19 = (a1[33] + 16 * v15);
        v20 = v19[1];
        *v19 = 0;
        v19[1] = 0;
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v20);
        }
      }
    }
  }

LABEL_16:
  if ((a4 & 2) != 0)
  {
    v21 = a1[2];
    if (v21)
    {
      v22 = *(*(*(v21 + 48) + 72) + 24);
      v23 = *(v22 + 40);
      if (v23)
      {
        v24 = *(v22 + 32);
        v25 = v24 + 1;
        v26 = v23;
        while (1)
        {
          v27 = *v25;
          v25 += 2;
          if (v27 == a2)
          {
            break;
          }

          if (!--v26)
          {
            return;
          }
        }

        do
        {
          if (v24[1] == a2)
          {
            v28 = *v24;
            goto LABEL_27;
          }

          v24 += 2;
          --v23;
        }

        while (v23);
        v28 = -1;
LABEL_27:
        v29 = (a1[17] + 16 * v28);
        *v29 = a3;
        v29[1] = 0;
        v30 = (a1[29] + 16 * v28);
        v31 = v30[1];
        *v30 = 0;
        v30[1] = 0;
        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v31);
        }

        v32 = (a1[33] + 16 * v28);
        v33 = v32[1];
        *v32 = 0;
        v32[1] = 0;
        if (v33)
        {

          std::__shared_weak_count::__release_shared[abi:nn200100](v33);
        }
      }
    }
  }
}

void ggl::PipelineSetup::setConstantDataWithoutCheck(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1[17] + 16 * a2);
  *v5 = a3;
  v5[1] = 0;
  v6 = (a1[29] + 16 * a2);
  v7 = v6[1];
  *v6 = 0;
  v6[1] = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = (a1[33] + 16 * a2);
  v9 = v8[1];
  *v8 = 0;
  v8[1] = 0;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

void *md::VKMRenderResourcesStore::getRenderItem(uint64_t a1, unint64_t a2, unint64_t a3)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 192), a2);
  if (result)
  {
    v5 = result[3];
    if (a3 >= (result[4] - v5) >> 3)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    return *(v5 + 8 * a3);
  }

  return result;
}

uint64_t md::RenderLayerProviderWrapper::getCommandBuffer(uint64_t a1, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = v3[3];
  if (a2 < ((v3[4] - v4) >> 3))
  {
    v5 = *(v4 + 8 * a2);
    if (v5 && (v5 ^ a2) >> 32 == 0)
    {
      v10 = v3[7];
      v11 = 8 * *(v4 + 8 * a2) + v3[6];
      if (v10 != v11)
      {
        return *v11;
      }
    }
  }

  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v7 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = (*(*(a1 + 8) + 56) - *(*(a1 + 8) + 48)) >> 3;
    v12 = 134218754;
    v13 = v8;
    v14 = 2080;
    v15 = "false";
    v16 = 2080;
    v17 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/RenderLayerProvider.hpp";
    v18 = 1024;
    v19 = 116;
    _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_ERROR, "Failed to resolve command buffer for handle (%zu): Assertion with expression - %s : Failed in file - %s line - %i", &v12, 0x26u);
  }

  return 0;
}

void *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<gm::Matrix<float,2,1>>(uint64_t a1, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  v5 = *(a1 + 16 * a3 + 16);
  if (v5)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      while (1)
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v13 = *v10;
          v11 = v10 + 2;
          v12 = v13;
          v14 = v13 + 120 * *(v11 + a2);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v14, 0x92u) != *(v14 + 12))
          {
            break;
          }
        }

        v8 += 8;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      if (a2 >= 0x17)
      {
        v19 = 23;
      }

      else
      {
        v19 = a2;
      }

      v20 = v12 + 120 * *(v11 + v19);
      v21 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v20 + 72), 0x92u);
      if (v21 == *(v20 + 84))
      {
        return &gss::PropertySetValueHelper<gss::PropertyID,gm::Matrix<float,2,1>>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
      }

      v22 = *(v20 + 72);
      v23 = *(v20 + 80);
      return (v22 + v23 + 8 * v21);
    }

LABEL_7:
    v15 = *(v5 + 72);
    if (v15)
    {
      v16 = a2 >= 0x17 ? 23 : a2;
      v17 = *v15 + 120 * *(v15 + v16 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v17, 0x92u) != *(v17 + 12))
      {
        v21 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v17 + 72), 0x92u);
        if (v21 == *(v17 + 84))
        {
          return &gss::PropertySetValueHelper<gss::PropertyID,gm::Matrix<float,2,1>>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
        }

        v22 = *(v17 + 72);
        v23 = *(v17 + 80);
        return (v22 + v23 + 8 * v21);
      }
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  return &gss::defaultValueForKey<gss::PropertyID,gm::Matrix<float,2,1>>(gss::PropertyID)::_defaultValue;
}

float32x2_t gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gm::Matrix<float,2,1>>(uint64_t a1, unsigned int a2, int a3)
{
  if (a3 == 2)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = *v5;
      LODWORD(v5) = *v5 == 1.0;
      if (*(a1 + 10) == 1 && v6 != 0.0 && v6 != 1.0)
      {
        goto LABEL_12;
      }
    }

    v8 = (a1 + v5 + 11);
  }

  else
  {
    v8 = (a1 + 12);
  }

  v9 = *v8;
  v6 = 0.0;
  if (v9 == 2)
  {
LABEL_12:
    v12 = v6;
    v14 = 1;
    v11 = *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<gm::Matrix<float,2,1>>(a1, a2, 0, &v14);
    return vmla_n_f32(v11, vsub_f32(*gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<gm::Matrix<float,2,1>>(a1, a2, 1u, &v13), v11), v12);
  }

  return *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<gm::Matrix<float,2,1>>(a1, a2, v9, 0);
}

void md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)93,(gss::PropertyID)490>(uint64_t a1, char *a2, uint64_t a3, float a4)
{
  v7 = fminf(fmaxf(a4, 0.0), 23.0);
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v18, *(*a3 + 24), 93, 2u, v7);
  v17 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v18)), vdupq_n_s32(0x37800080u));
  v8 = *(*a3 + 24);
  v9 = *v8;
  if (*v8 && (v10 = *v9, LODWORD(v9) = *v9 == 1.0, *(v8 + 10) == 1) && (v10 != 0.0 ? (v11 = v10 == 1.0) : (v11 = 1), !v11) || (v12 = *(v8 + v9 + 11), v10 = 0.0, v12 == 2))
  {
    v18.i8[0] = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v8, 490, 0, &v18, v7);
    v15 = v14;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v8, 490, 1, &v19, v7);
    v13 = v15 + ((v16 - v15) * v10);
  }

  else
  {
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v8, 490, v12, 0, v7);
  }

  md::AccessibilityHelper::luminanceAdjustedColor(a1, *a2, &v17, v13);
}

void md::RoadBatch::setRenderOrdersForStrokeAndFill(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v19 = a9;
  if (a10)
  {
    atomic_fetch_add_explicit(&a10->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = a10;
    atomic_fetch_add_explicit(&a10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v23 = 0;
  }

  v24 = 0;
  v25 = 0;
  v22 = a9;
  v26 = 0;
  if (a9)
  {
    v19 = (*(*a9 + 48))(a9, &v24);
  }

  v26 = v19;
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  md::RoadBatch::setRenderOrdersForStrokeAndFill(a1, a2, a3, a4, a5, a6, a7, a8, &v22, a11, a12, a13);
  if (v26 == 1)
  {
    (*(*v22 + 56))(v22);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }
}

void sub_1B2B5823C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, char a18)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void md::RoadBatch::setRenderOrdersForStrokeAndFill(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8, _BYTE *a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v59 = *MEMORY[0x1E69E9840];
  if (a9[32] == 1)
  {
    v16 = *(*a9 + 24);
    if (*(a10 + 12) >= 0x17u)
    {
      v17 = 23;
    }

    else
    {
      v17 = *(a10 + 12);
    }

    v18 = *v16;
    if (*v16 && (v20 = *v18, LODWORD(v18) = *v18 == 1.0, *(v16 + 10) == 1) && (v20 != 0.0 ? (v49 = v20 == 1.0) : (v49 = 1), !v49) || (v19 = *(v16 + v18 + 11), v20 = 0.0, v19 == 2))
    {
      buf[0] = 1;
      v54 = 1;
      v21 = *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<unsigned int>(v16, 104, v17, 0, buf);
      v22 = *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<unsigned int>(v16, 104, v17, 1u, &v54);
      if (v20 >= 1.0)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21;
      }
    }

    else
    {
      v23 = *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<unsigned int>(*(*a9 + 24), 104, v17, v19, 0);
    }

    v24 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v16, 106, v17, 2, 0);
    if (v23 >= 0x100)
    {
      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v25 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = a2;
        v27 = a3;
        v28 = a4;
        v29 = a7;
        v30 = *(*a9 + 24);
        v31 = *(v30 + 16);
        v32 = *(v30 + 24);
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          v33 = "";
        }

        *buf = 67109378;
        v56 = v23;
        v57 = 2080;
        v58 = v33;
        _os_log_impl(&dword_1B2754000, v25, OS_LOG_TYPE_INFO, "Stroke Z index (%d) in style %s is too large - clamping to 255", buf, 0x12u);
        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v32);
        }

        a7 = v29;
        a4 = v28;
        a3 = v27;
        a2 = v26;
      }

      v23 = 255;
    }

    if (v24 >= 0x100)
    {
      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v34 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = a7;
        v36 = *(*a9 + 24);
        v37 = *(v36 + 16);
        v38 = *(v36 + 24);
        if (v38)
        {
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v39 = *(v37 + 104);
        if (!v39)
        {
          v39 = "";
        }

        *buf = 67109378;
        v56 = v24;
        v57 = 2080;
        v58 = v39;
        _os_log_impl(&dword_1B2754000, v34, OS_LOG_TYPE_INFO, "Fill Z index (%d) in style %s is too large - clamping to 255", buf, 0x12u);
        if (v38)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v38);
        }

        a7 = v35;
      }

      v24 = 255;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v40 = v23 - 1;
  if (!v23)
  {
    v40 = 0;
  }

  v41 = a11 | (a7 << 28) | 4;
  v42 = v24 << 8;
  if (a2)
  {
    *(a2 + 48) = v41;
  }

  v43 = v41 | v42 | (v23 << 19);
  if (a3)
  {
    *(a3 + 48) = v43;
  }

  if (a12)
  {
    *(a12 + 48) = v41 | v42 | (v40 << 19);
  }

  v44 = +[VKDebugSettings sharedSettings];
  v45 = [v44 prioritizeTrafficSkeleton];

  if (a4)
  {
    v46 = 196608;
    if (a1)
    {
      v46 = 0x20000;
    }

    v47 = 0x10000;
    if (v45 ^ 1 | a8)
    {
      v47 = v46;
    }

    *(a4 + 48) = v47 | v43;
  }

  if (a5)
  {
    *(a5 + 48) = v43 | 0x40000;
  }

  if (a6)
  {
    v48 = 0x20000;
    if (a1)
    {
      v48 = 196608;
    }

    *(a6 + 48) = v43 | v48;
  }
}

uint64_t md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItemsForPasses(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *v5;
      std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v42, v3);
      if (*(v6 + 1040) == 1)
      {
        ggl::Batcher::reset((v6 + 912));
        v7 = (v6 + 992);
        v8 = *(v6 + 992);
        if (v8)
        {
          do
          {
            if (v8[1])
            {
              v9 = 0;
              v10 = v8 + 2;
              v11 = v8 + 2;
              v12 = (v8 + 2);
              do
              {
                v13 = *v12;
                v12 += 15;
                (*v13)(v11);
                ++v9;
                v10 += 15;
                v11 = v12;
              }

              while (v9 < v8[1]);
            }

            v8[1] = 0;
            v8 = *v8;
          }

          while (v8);
          v14 = *v7;
        }

        else
        {
          v14 = 0;
        }

        *(v6 + 1000) = v14;
        std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v43, v42);
        if (*(v6 + 1040) == 1)
        {
          memset(&v41, 0, sizeof(v41));
          std::vector<unsigned int>::reserve(&v41, 5uLL);
          v16 = 0;
          v17 = 0;
          v18 = v6 + 16;
          v19 = (v6 + 136);
          do
          {
            if (*v19 == 1)
            {
              v40 = v16;
              std::vector<unsigned int>::push_back[abi:nn200100](&v41, &v40);
              v20 = *(*(v6 + 8) + 8 * v16 + 56);
              *(v19 - 12) = v20;
              v17 |= *(v20 + 58) == 1;
            }

            ++v16;
            v19 += 128;
          }

          while (v16 != 7);
          begin = v41.__begin_;
          if (v41.__begin_ != v41.__end_)
          {
            v22 = *(v6 + 1016);
            v23 = *(v6 + 1024);
            if (v22 == v23)
            {
              v24 = 0;
            }

            else
            {
              v24 = 0;
              do
              {
                v30 = *v22;
                if (*(*v22 + 48) == 1)
                {
                  if (*(v30 + 88) != v24)
                  {
                    if (v24)
                    {
                      v37 = ggl::Batcher::commit((v6 + 912), 0xC8u, v15);
                      if (v37[1] != *v37)
                      {
                        v34 = v41.__begin_;
                        end = v41.__end_;
                        v36 = v41.__end_;
                        while (v34 != end)
                        {
                          v32 = *v34;
                          v33 = md::RenderItemPool::construct(v6 + 992, v18 + (v32 << 7), v24, v37);
                          std::function<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v44, v32, v33);
                          ++v34;
                          end = v36;
                        }
                      }
                    }

                    v30 = *v22;
                    v24 = *(*v22 + 88);
                  }

                  v31 = 16;
                  if (v17)
                  {
                    v31 = 32;
                  }

                  ggl::Batcher::addRange(v6 + 912, (v30 + v31));
                }

                ++v22;
              }

              while (v22 != v23);
              begin = v41.__begin_;
            }

            v25 = ggl::Batcher::commit((v6 + 912), 0xC8u, v15);
            if (v25[1] != *v25)
            {
              v26 = v41.__end_;
              if (begin != v41.__end_)
              {
                v27 = v25;
                do
                {
                  v28 = *begin;
                  v29 = md::RenderItemPool::construct(v7, v18 + (v28 << 7), v24, v27);
                  std::function<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v44, v28, v29);
                  ++begin;
                }

                while (begin != v26);
                begin = v41.__begin_;
              }
            }
          }

          v4 = a2;
          v3 = a3;
          if (begin)
          {
            v41.__end_ = begin;
            operator delete(begin);
          }
        }

        std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v43);
      }

      result = std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v42);
      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

void sub_1B2B58A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&a22);
  std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&a18);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &off_1F2A36810;
  a2[1] = v2;
  return result;
}

uint64_t std::function<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItems(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &off_1F2A36810;
  v4[1] = a3;
  v4[3] = v4;
  md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItemsForPasses(a1, a2, v4);
  return std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v4);
}

void sub_1B2B58CC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

char *std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vallocate[abi:nn200100](gss::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = gss::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<float>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[4 * a2];
  return result;
}

uint64_t md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::collectRenderItemsForPasses(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v41, a3);
      if (*(v6 + 912) == 1)
      {
        ggl::Batcher::reset((v6 + 784));
        v7 = (v6 + 864);
        v8 = *(v6 + 864);
        if (v8)
        {
          do
          {
            if (v8[1])
            {
              v9 = 0;
              v10 = v8 + 2;
              v11 = v8 + 2;
              v12 = (v8 + 2);
              do
              {
                v13 = *v12;
                v12 += 15;
                (*v13)(v11);
                ++v9;
                v10 += 15;
                v11 = v12;
              }

              while (v9 < v8[1]);
            }

            v8[1] = 0;
            v8 = *v8;
          }

          while (v8);
          v14 = *v7;
        }

        else
        {
          v14 = 0;
        }

        *(v6 + 872) = v14;
        std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v42, v41);
        if (*(v6 + 912) == 1)
        {
          memset(&v40, 0, sizeof(v40));
          std::vector<unsigned int>::reserve(&v40, 5uLL);
          v16 = 0;
          v17 = 0;
          v18 = v6 + 16;
          v19 = (v6 + 136);
          do
          {
            if (*v19 == 1)
            {
              v39 = v16;
              std::vector<unsigned int>::push_back[abi:nn200100](&v40, &v39);
              v20 = *(*(v6 + 8) + 8 * v16 + 56);
              *(v19 - 12) = v20;
              v17 |= *(v20 + 58) == 1;
            }

            ++v16;
            v19 += 128;
          }

          while (v16 != 6);
          begin = v40.__begin_;
          if (v40.__begin_ != v40.__end_)
          {
            v22 = *(v6 + 888);
            v23 = *(v6 + 896);
            if (v22 == v23)
            {
              v24 = 0;
            }

            else
            {
              v24 = 0;
              do
              {
                v30 = *v22;
                if (*(*v22 + 48) == 1)
                {
                  v35 = v23;
                  if (*(v30 + 88) != v24)
                  {
                    if (v24)
                    {
                      v37 = ggl::Batcher::commit((v6 + 784), 0xC8u, v15);
                      if (v37[1] != *v37)
                      {
                        v33 = v40.__begin_;
                        end = v40.__end_;
                        v36 = v40.__end_;
                        while (v33 != end)
                        {
                          v38 = *v33;
                          v32 = md::RenderItemPool::construct(v6 + 864, v18 + (v38 << 7), v24, v37);
                          std::function<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v43, v38, v32);
                          ++v33;
                          end = v36;
                        }
                      }
                    }

                    v30 = *v22;
                    v24 = *(*v22 + 88);
                  }

                  v31 = 16;
                  if (v17)
                  {
                    v31 = 32;
                  }

                  ggl::Batcher::addRange(v6 + 784, (v30 + v31));
                  v23 = v35;
                }

                ++v22;
              }

              while (v22 != v23);
              begin = v40.__begin_;
            }

            v25 = ggl::Batcher::commit((v6 + 784), 0xC8u, v15);
            if (v25[1] != *v25)
            {
              v26 = v40.__end_;
              if (begin != v40.__end_)
              {
                v27 = v25;
                do
                {
                  v28 = *begin;
                  v29 = md::RenderItemPool::construct(v7, v18 + (v28 << 7), v24, v27);
                  std::function<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v43, v28, v29);
                  ++begin;
                }

                while (begin != v26);
                begin = v40.__begin_;
              }
            }
          }

          if (begin)
          {
            v40.__end_ = begin;
            operator delete(begin);
          }
        }

        std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v42);
      }

      result = std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v41);
      ++v5;
    }

    while (v5 != a2);
  }

  return result;
}

void sub_1B2B59050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&a22);
  std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&a18);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile&,std::unique_ptr<md::LabelMapTileSourceData>>(void *a1, geo::QuadTile *this)
{
  if (*(this + 24) == 1)
  {
    geo::QuadTile::computeHash(this);
    *(this + 24) = 0;
  }

  v4 = *(this + 2);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_20;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = *(this + 2);
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v11 = *(v10 + 1);
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_20;
    }

LABEL_19:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  if (!std::equal_to<geo::QuadTile>::operator()[abi:nn200100](v10 + 16, this))
  {
    goto LABEL_19;
  }

  return v10;
}

void sub_1B2B59620(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<md::LabelMapTileSourceData>::~unique_ptr[abi:nn200100](v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1B2B59708(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

unsigned __int8 **std::remove_if[abi:nn200100]<std::__wrap_iter<std::shared_ptr<md::LabelMapTileCommand> *>,md::LabelMapTile::removeCommand(md::LabelMapTileCommandType)::$_0>(unsigned __int8 **a1, unsigned __int8 **a2, unsigned __int8 a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v6 = a3;
    v3 = a1;
    while (**v3 != a3)
    {
      v3 += 2;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 2; i != a2; i += 2)
      {
        v8 = *i;
        if (**i != v6)
        {
          v9 = i[1];
          *i = 0;
          i[1] = 0;
          v10 = v3[1];
          *v3 = v8;
          v3[1] = v9;
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v10);
          }

          v3 += 2;
        }
      }
    }
  }

  return v3;
}

void std::__function::__func<md::StandardLabelMapTile::loadElevationData(std::shared_ptr<md::ElevationTileData> const&)::$_0,std::allocator<md::StandardLabelMapTile::loadElevationData(std::shared_ptr<md::ElevationTileData> const&)::$_0>,void ()(md::LabelManager *)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void md::LabelMapTile::loadResourcesTile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a3)
    {
      atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
    }

    v3 = 0;
    operator new();
  }
}

void sub_1B2B599C4(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  std::__function::__value_func<void ()(md::LabelManager *)>::~__value_func[abi:nn200100](va);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(a1);
}

void md::LabelMapTile::loadLabelTiles(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v6 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v3 = *(a2 + v2);
    *&v4[v2] = v3;
    if (*(&v3 + 1))
    {
      atomic_fetch_add_explicit((*(&v3 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v2 += 16;
    if (v2 == 160)
    {
      v5 = 0;
      operator new();
    }
  }
}

void sub_1B2B59C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v12 = *(v10 - 88);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  std::__function::__value_func<void ()(md::LabelManager *)>::~__value_func[abi:nn200100](v10 - 72);
  v13 = 160;
  while (1)
  {
    v14 = *(&a10 + v13);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    v13 -= 16;
    if (!v13)
    {
      _Unwind_Resume(a1);
    }
  }
}

void std::__function::__func<md::LabelMapTile::loadLabelTiles(md::LabelTileSet const&)::$_0,std::allocator<md::LabelMapTile::loadLabelTiles(md::LabelTileSet const&)::$_0>,void ()(md::LabelManager *)>::destroy_deallocate(char *__p)
{
  for (i = 168; i != 8; i -= 16)
  {
    v3 = *&__p[i];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  operator delete(__p);
}

BOOL md::DynamicTrafficTileList::isNewer(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 - *a1) >> 4 != (a2[1] - *a2) >> 3)
  {
    return 1;
  }

  if (v3 == v2)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    updated = zilch::TrafficDynamicTile::feedUpdateTimeSeconds(*(*(v2 + v6) + 144));
    v9 = *(*a2 + 8 * v7);
    v10 = updated <= v9;
    result = updated > v9;
    if (!v10)
    {
      break;
    }

    ++v7;
    v2 = *a1;
    v6 += 16;
    if (v7 >= (a1[1] - *a1) >> 4)
    {
      return 0;
    }
  }

  return result;
}

void std::__function::__func<md::LabelMapTile::loadTrafficTile(std::shared_ptr<md::LabelTrafficTile> const&)::$_0,std::allocator<md::LabelMapTile::loadTrafficTile(std::shared_ptr<md::LabelTrafficTile> const&)::$_0>,void ()(md::LabelManager *)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

uint64_t md::CaptionedIconLabelPart::animate(md::CaptionedIconLabelPart *this, float a2)
{
  result = (*(*this + 616))(this);
  if (result)
  {
    v5 = 1.0;
    if (*(this + 732))
    {
      v5 = 0.0;
    }

    v6 = *(this + 237);
    v7 = v6 < v5;
    v8 = fmaxf(v5, v6 - (a2 * 5.0));
    v9 = fminf(v6 + (a2 * 5.0), v5);
    if (!v7)
    {
      v9 = v8;
    }

    *(this + 237) = v9;
  }

  return result;
}

BOOL md::CaptionedIconLabelPart::isFading(md::CaptionedIconLabelPart *this)
{
  if (*(this + 926) != 1)
  {
    return 0;
  }

  v1 = 1.0;
  if (*(this + 732))
  {
    v1 = 0.0;
  }

  return *(this + 237) != v1;
}

void std::__function::__func<md::StandardLabelMapTile::loadElevationData(std::shared_ptr<md::ElevationTileData> const&)::$_0,std::allocator<md::StandardLabelMapTile::loadElevationData(std::shared_ptr<md::ElevationTileData> const&)::$_0>,void ()(md::LabelManager *)>::operator()(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (*(v2 + 560) != v1)
  {
    v3 = a1[3];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    *(v2 + 560) = v1;
    v4 = *(v2 + 568);
    *(v2 + 568) = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    *(v2 + 130) = 1;
  }
}

void std::__function::__func<md::LabelMapTile::loadResourcesTile(std::shared_ptr<md::ResourceInfo> const&)::$_0,std::allocator<md::LabelMapTile::loadResourcesTile(std::shared_ptr<md::ResourceInfo> const&)::$_0>,void ()(md::LabelManager *)>::operator()(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v1 != *(v2 + 160))
  {
    v3 = a1[3];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v4 = *(v2 + 168);
    *(v2 + 160) = v1;
    *(v2 + 168) = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    *(v2 + 131) = 1;
  }
}

void std::__function::__func<md::LabelMapTile::loadLabelTiles(md::LabelTileSet const&)::$_0,std::allocator<md::LabelMapTile::loadLabelTiles(md::LabelTileSet const&)::$_0>,void ()(md::LabelManager *)>::operator()(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = (v2 + 184);
  v4 = (a1 + 24);
  do
  {
    v5 = *(v4 - 1);
    if (*(v3 - 1) != v5)
    {
      v6 = *v4;
      if (*v4)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = *v3;
      *(v3 - 1) = v5;
      *v3 = v6;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      v2[130] = 1;
      if (v1 == 7)
      {
        v2[135] = 1;
      }

      else if (v1 == 3)
      {
        v2[134] = 1;
      }
    }

    ++v1;
    v3 += 2;
    v4 += 2;
  }

  while (v1 != 10);
}

void std::__function::__func<md::LabelMapTile::loadTrafficTile(std::shared_ptr<md::LabelTrafficTile> const&)::$_0,std::allocator<md::LabelMapTile::loadTrafficTile(std::shared_ptr<md::LabelTrafficTile> const&)::$_0>,void ()(md::LabelManager *)>::operator()(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (*(v2 + 336) != v1)
  {
    v3 = a1[3];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v4 = *(v2 + 344);
    *(v2 + 336) = v1;
    *(v2 + 344) = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    *(v2 + 132) = 1;
  }
}

void md::Label::layoutForDisplay(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v107 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 296);
  if (!v6)
  {
    goto LABEL_6;
  }

  if ((*(*v6 + 688))(v6) && (*(a2 + 3407) & 1) == 0)
  {
    md::Label::stopStyleAnimation(a1);
  }

  v7 = *(a1 + 296);
  if (!v7)
  {
LABEL_6:
    v7 = *(a1 + 272);
  }

  if (*(a2 + 457) == 1 && (*(a1 + 1163) & 1) == 0)
  {
    goto LABEL_48;
  }

  if (!v7)
  {
    v21 = a1;
    v22 = 2;
    v23 = 8;
    goto LABEL_49;
  }

  if (((*(*v7 + 88))(v7) & 1) == 0)
  {
LABEL_48:
    v21 = a1;
    v22 = 2;
    v23 = 32;
    goto LABEL_49;
  }

  v8 = *(a1 + 1080);
  if (!v8 || (v9 = *(a1 + 440), v10 = *(a2 + 464), v9 == v10))
  {
    *(a1 + 912) = *(a1 + 936);
    *(a1 + 896) = *(a1 + 920);
  }

  else
  {
    LOBYTE(v10) = *(v8 + 16);
    v11 = exp2f(v9 - LODWORD(v10));
    v63 = *v8;
    v100 = 0u;
    v102 = 0;
    v98 = 0u;
    v99 = 0u;
    v101 = 0u;
    v97 = 0x3FF0000000000000;
    *&v100 = 0x3FF0000000000000;
    v103 = 0x3FF0000000000000;
    v104 = 0;
    v105 = v63;
    v106 = xmmword_1B33B0740;
    v87 = 0u;
    v89 = 0;
    v92 = 0u;
    v91 = 0u;
    v88 = 0u;
    v86 = 0u;
    v85 = 0u;
    v93 = 0x3FF0000000000000;
    v84 = 1.0 / v11;
    *&v87 = v84;
    v90 = v84;
    gm::operator*<double,4,4,4>(&v94, &v97, &v84);
    v77 = 0u;
    v79 = 0;
    v78 = 0u;
    v76 = 0u;
    v75 = 0u;
    v74 = 0x3FF0000000000000;
    *&v77 = 0x3FF0000000000000;
    v81 = 0;
    v80 = 0x3FF0000000000000;
    v82 = vnegq_f64(v63);
    v83 = xmmword_1B33B0740;
    gm::operator*<double,4,4,4>(v65, &v94, &v74);
    *(a1 + 896) = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v65, a1 + 920);
    *(a1 + 904) = v12;
    *(a1 + 912) = v13;
  }

  v14 = 0;
  v15 = *(a2 + 484);
  do
  {
    *&v65[v14] = *(a1 + v14 + 968) * v15;
    v14 += 8;
  }

  while (v14 != 24);
  v16 = 0;
  v94 = *v65;
  v95 = *&v65[16];
  do
  {
    *&v65[v16] = *(&v94 + v16) + *(a1 + v16 + 896);
    v16 += 8;
  }

  while (v16 != 24);
  v17 = *&v65[16];
  *(a1 + 1040) = *v65;
  *(a1 + 1056) = v17;
  v94 = xmmword_1B33B0710;
  v95 = 0.0;
  v96 = 0;
  v65[0] = 0;
  v65[12] = 0;
  md::LabelLayoutContext::evaluateWorldPoint(a2 + 432, a1 + 1040, v65, *(a1 + 1300), 0, &v94, *(a1 + 224));
  *(a1 + 1120) = HIDWORD(v94);
  v18 = DWORD2(v94);
  v19 = fmaxf(*&v94, 0.0);
  *(a1 + 440) = v19;
  v20 = v19;
  if (v19 >= 0x17)
  {
    LOBYTE(v20) = 23;
  }

  *(a1 + 452) = v20;
  *(a1 + 1132) = v18;
  if (*(a3 + 2) == 1 && v96 == 1)
  {
    v21 = a1;
    v22 = 2;
    v23 = 3;
LABEL_49:

    md::Label::updateStateMachineForDisplay(v21, v22, v23, 0);
    return;
  }

  v24 = v95;
  *(a1 + 448) = v24;
  v25 = atomic_load((a1 + 1331));
  if (v25)
  {
    goto LABEL_26;
  }

  v26 = atomic_load((a1 + 1328));
  if (v26)
  {
    goto LABEL_26;
  }

  v58 = *(a1 + 440);
  v59 = *(a1 + 1124);
  if (v58 < v59)
  {
    v28 = 6;
    if (v58 < (v59 + -0.4))
    {
LABEL_87:
      v29 = 0;
      v27 = 1;
      goto LABEL_27;
    }

LABEL_90:
    v29 = 0;
    v27 = *(a1 + 1364);
    goto LABEL_27;
  }

  v60 = *(a1 + 1128);
  if (v58 >= v60)
  {
    v28 = 7;
    if (v58 > (v60 + 0.4))
    {
      goto LABEL_87;
    }

    goto LABEL_90;
  }

LABEL_26:
  v27 = 0;
  v28 = 37;
  v29 = 1;
LABEL_27:
  if (*(a1 + 1189) != v28)
  {
    *(a1 + 1189) = v28;
    if ((*(a1 + 1185) & 1) == 0 && *(a1 + 1184) == 1)
    {
      md::Label::updateClusterState(a1, a2, v28, *(a1 + 1165));
    }
  }

  v30 = *(a2 + 1664);
  v31 = (*(**(a1 + 8) + 368))(*(a1 + 8));
  v32 = 0;
  if (v31 && v30)
  {
    v32 = *(v30 + 280) > 0.0;
  }

  *(a1 + 1157) = v32;
  if (v27)
  {
    v21 = a1;
    v22 = 8;
    v23 = v28;
    goto LABEL_49;
  }

  if (v29)
  {
    if (*(a1 + 1340))
    {
      if (*(a1 + 1272))
      {
        *v65 = a1;
        memcpy(&v65[8], (a2 + 432), 0x480uLL);
        geo::ConvexHull2<double>::ConvexHull2(&v66, (a2 + 1584));
        v61 = *(a2 + 1624);
        v67 = *(a2 + 1608);
        v68 = v61;
        std::vector<md::LabelFlexZone>::vector[abi:nn200100](&v69, (a2 + 1640));
        v62 = *(a2 + 1680);
        v70 = *(a2 + 1664);
        v71 = v62;
        v72 = *(a2 + 1696);
        v73 = *(a2 + 1712);
        if (*(*(a1 + 1272) + 52) == 2)
        {
          *(a1 + 1164) = 0;
        }

        md::Label::layoutForDisplay(md::LabelManager *,md::LabelLayoutOptions const&)::$_0::$_0(v64, v65);
        std::function<gm::Matrix<float,2,1> ()(void)>::function<md::Label::layoutForDisplay(md::LabelManager *,md::LabelLayoutOptions const&)::$_0,void>(&v97);
      }

      LOBYTE(v28) = 37;
      goto LABEL_37;
    }

    LOBYTE(v28) = 30;
    md::Label::updateStateMachineForDisplay(a1, 3, 30, a2);
    v7 = *(a1 + 296);
    if (!v7)
    {
      v7 = *(a1 + 272);
    }
  }

  else if (v28 == 37)
  {
LABEL_37:
    v33 = 4;
    goto LABEL_38;
  }

  if (!*(a1 + 1152))
  {
    *(a1 + 1153) = v28;
    return;
  }

  v33 = 3;
LABEL_38:
  if (*(a2 + 3416) != 1 || *(a1 + 1343) == 1)
  {
    md::Label::setAnimationsToEnd(a1);
  }

  if (((*(**(a1 + 8) + 368))(*(a1 + 8)) & 1) == 0)
  {
    *(a1 + 1388) = *(a2 + 3372);
  }

  if (*(a1 + 1291) == 4)
  {
    *(a1 + 1148) = *(a2 + 500);
  }

  v34 = *(a1 + 1155);
  v35 = 1.0;
  if (v34 > 2)
  {
    if (v34 == 4)
    {
      v35 = exp2f(*(a1 + 440) + -5.0);
      goto LABEL_54;
    }

    if (v34 != 3)
    {
      goto LABEL_54;
    }

LABEL_107:
    v35 = *(a2 + 688) / v95;
    if (*(a1 + 847) == 3)
    {
      v35 = *(a1 + 1144) * v35;
    }

    goto LABEL_54;
  }

  if (v34 != 2)
  {
    if (v34 != 1)
    {
      goto LABEL_54;
    }

    goto LABEL_107;
  }

  v36 = *(a1 + 1104);
  v35 = fmaxf(md::LabelStylePropertyRamp::valueAtZ(v36, fminf(fmaxf(*(a1 + 440), 0.0), 23.0)), 0.01);
  v36[28] = v35;
LABEL_54:
  v37 = (a1 + 408);
  *(a1 + 444) = v35;
  if (*(a1 + 304))
  {
    for (i = 0; i != 24; i += 8)
    {
      *&v65[i] = *(a1 + i + 1016) + *(a1 + i + 1040);
    }

    v39 = *&v65[16];
    *v37 = *v65;
    *(a1 + 424) = v39;
    v40 = *(a1 + 1140);
    if (v40 != 0.0)
    {
      v41 = 0;
      v42 = *(a1 + 232) * v40 * *(a2 + 1616);
      do
      {
        *&v65[v41] = v42 * *(a1 + 944 + v41);
        v41 += 8;
      }

      while (v41 != 24);
      for (j = 0; j != 24; j += 8)
      {
        *(v37 + j) = *(v37 + j) + *&v65[j];
      }
    }

    if (*(a1 + 259) == 1)
    {
      v44.n128_u64[0] = md::LabelLayoutContext::projectPointToPixel(a2 + 432, a1 + 408, (a1 + 432));
    }

    else
    {
      v44.n128_f32[0] = md::Label::featurePixel(a1, a2, 1);
      *(a1 + 432) = v44.n128_u32[0];
      *(a1 + 436) = v45;
    }

    v46 = *(a1 + 304);
    *v65 = 0;
    (*(*v46 + 120))(v46, a2, 0, a1 + 432, v65, v44);
  }

  for (k = 0; k != 24; k += 8)
  {
    *&v65[k] = *(a1 + k + 992) + *(a1 + k + 1040);
  }

  v48 = *&v65[16];
  *v37 = *v65;
  *(a1 + 424) = v48;
  v49 = *(a1 + 1136);
  if (v49 != 0.0)
  {
    v50 = 0;
    v51 = *(a1 + 232) * v49 * *(a2 + 1616);
    do
    {
      *&v65[v50] = v51 * *(a1 + 944 + v50);
      v50 += 8;
    }

    while (v50 != 24);
    for (m = 0; m != 24; m += 8)
    {
      *(v37 + m) = *(v37 + m) + *&v65[m];
    }
  }

  if (*(a1 + 259) == 1)
  {
    md::LabelLayoutContext::projectPointToPixel(a2 + 432, a1 + 408, (a1 + 432));
  }

  else
  {
    *(a1 + 432) = md::Label::featurePixel(a1, a2, 1);
    *(a1 + 436) = v53;
  }

  *v65 = 0;
  v54 = (*(*v7 + 120))(v7, a2, 0, a1 + 432, v65);
  if ((v54 & 0xFE) == 0x12)
  {
    v55 = 3;
  }

  else
  {
    v55 = 2;
  }

  if (v54 == 37)
  {
    v56 = v28;
  }

  else
  {
    v56 = v54;
  }

  if (v54 == 37)
  {
    v57 = v33;
  }

  else
  {
    v57 = v55;
  }

  md::Label::updateStateMachineForDisplay(a1, v57, v56, a2);
}

void sub_1B2B5AB68(_Unwind_Exception *a1)
{
  std::__function::__value_func<gm::Matrix<float,2,1> ()(void)>::~__value_func[abi:nn200100](v1 - 200);
  v3 = STACK[0x4E0];
  if (STACK[0x4E0])
  {
    STACK[0x4E8] = v3;
    operator delete(v3);
  }

  v4 = STACK[0x4A8];
  if (STACK[0x4A8])
  {
    STACK[0x4B0] = v4;
    operator delete(v4);
  }

  v5 = STACK[0x9F0];
  if (STACK[0x9F0])
  {
    STACK[0x9F8] = v5;
    operator delete(v5);
  }

  v6 = STACK[0x9B8];
  if (STACK[0x9B8])
  {
    STACK[0x9C0] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t md::CurvedTextLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2, md::LabelAnimator *a3, __int32 *a4, __int32 *a5)
{
  v8 = md::TextLabelPart::layoutForDisplay(a1, a2, a3, a4, a5);
  if (v8 != 37)
  {
    return v8;
  }

  v9 = *(a1 + 592);
  *(a1 + 816) = ((*(v9 + 72) - *(v9 + 64)) << 10) & 0xFFFF0000;
  *(a1 + 820) = 0;
  LOBYTE(v81[0]) = 0;
  if (*(a1 + 812) == *(a1 + 814) || (v10 = md::FontAtlas::commitGlyphs(*(a2 + 304), v9 + 128, (a1 + 812), v81)) != 0)
  {
    LOBYTE(v10) = md::FontAtlas::commitGlyphs(*(a2 + 304), v9 + 32, (a1 + 808), v81);
  }

  *(a1 + 883) = v10;
  v11 = *(a2 + 1608);
  if (*(a1 + 1208) != v11)
  {
    *(a1 + 1208) = v11;
    v12 = *(*(a1 + 592) + 108);
    if (*(a1 + 1212) == v12)
    {
      goto LABEL_11;
    }

LABEL_10:
    *(a1 + 1212) = v12;
    goto LABEL_11;
  }

  v12 = *(*(a1 + 592) + 108);
  if (*(a1 + 1212) != v12)
  {
    goto LABEL_10;
  }

  if (((*(a1 + 1347) | LOBYTE(v81[0])) & 1) == 0)
  {
    v13 = *(a1 + 1348);
    goto LABEL_23;
  }

LABEL_11:
  v14 = *(a1 + 32);
  v15 = *(v14 + 64);
  *(a1 + 1345) = v15;
  if (*(a1 + 887) == 1)
  {
    v15 = *(a2 + 472);
  }

  *(a1 + 1168) = v15;
  *(a1 + 1188) = *(v14 + 68) * *(a1 + 748);
  *(a1 + 1216) = a1 + 312;
  v16 = *(a1 + 16);
  v17 = (v16 + 408);
  for (i = 153; i != 156; ++i)
  {
    v19 = *v17++;
    *(a1 + 8 * i) = v19;
  }

  v20 = 0;
  *(a1 + 1264) = *(v16 + 1064);
  *(a1 + 1272) = *(v16 + 1120);
  *(a1 + 1204) = *(a2 + 176);
  v21 = v16 + 944;
  do
  {
    v22 = *(v21 + 8 * v20);
    *(v81 + v20++) = v22;
  }

  while (v20 != 3);
  *(a1 + 1248) = v81[0];
  *(a1 + 1256) = v81[1];
  v23 = *(a1 + 728);
  v24 = *(a1 + 736);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 1356) = *(v23 + 468);
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  else
  {
    *(a1 + 1356) = *(v23 + 468);
  }

  (*(**(a1 + 1280) + 32))(v81);
  if (v81[0] && LOBYTE(v81[1]) != 1)
  {
    *(a1 + 1347) = 1;
    if (*(a1 + 1348) == 37)
    {
      v13 = 37;
    }

    else
    {
      v13 = 31;
    }
  }

  else
  {
    md::LabelLayoutContext::projectPointToPixel(a2 + 432, *(a1 + 16) + 1040, &v79);
    v13 = md::CurvedTextLabelPart::placeGlyphsOnRoadPath(a1, 1, (a1 + 1482), a1 + 1168, a2 + 432, a2);
    *(a1 + 1347) = 0;
    *(a1 + 1348) = v13;
    if (v81[1])
    {
      std::mutex::unlock(v81[0]);
    }
  }

LABEL_23:
  if (*(a1 + 565) == 1)
  {
    v25 = 0;
    v26 = *(a1 + 16);
    do
    {
      *&v81[v25] = *(a2 + 568 + v25 * 8) - *(v26 + 408 + v25 * 8);
      ++v25;
    }

    while (v25 != 3);
    v27 = 0;
    v79 = *v81;
    v80 = v82;
    v28 = 0.0;
    do
    {
      v28 = v28 + *(&v79 + v27) * *(&v79 + v27);
      v27 += 8;
    }

    while (v27 != 24);
    v29 = 0;
    v30 = 1.0 / sqrt(v28);
    do
    {
      *&v81[v29] = *(&v79 + v29 * 8) * v30;
      ++v29;
    }

    while (v29 != 3);
    v31 = 0;
    v32 = v26 + 944;
    v33 = 0.0;
    do
    {
      v33 = v33 + *(v32 + v31 * 8) * *&v81[v31];
      ++v31;
    }

    while (v31 != 3);
    v34 = v33;
    v35 = fmaxf(fminf(v34, 1.0), 0.0);
    if (v35 >= 0.5)
    {
      v36 = 1.0;
    }

    else
    {
      v36 = v35 + v35;
    }

    *(a1 + 1200) = v36;
  }

  *(a1 + 520) = *a4;
  *(a1 + 524) = a4[1];
  *(a1 + 344) = *a4;
  *(a1 + 348) = a4[1];
  md::CollisionObject::setupShapeData(a1 + 312);
  v37 = *(a1 + 565);
  if (v37 == 1)
  {
    if (*(a1 + 1423) == 2)
    {
      v44 = *(a2 + 760);
      memset(&v88[1], 0, 24);
      memset(&v88[5], 0, 24);
      v88[0] = v44;
      v88[4] = v44;
      v88[8] = v44;
      v45 = *(a1 + 16);
    }

    else
    {
      v56 = 0;
      v45 = *(a1 + 16);
      do
      {
        *&v81[v56] = *(v45 + v56 * 8 + 408) - *(a2 + 568 + v56 * 8);
        ++v56;
      }

      while (v56 != 3);
      v57 = 0;
      v58 = 0.0;
      do
      {
        v58 = v58 + *(a2 + 592 + v57 * 8) * *&v81[v57];
        ++v57;
      }

      while (v57 != 3);
      v59 = 0;
      v60 = *(a2 + 752) * *(*(a1 + 32) + 68) * v58;
      do
      {
        *&v88[v59] = v60 * *(a2 + 1424 + v59 * 8);
        ++v59;
      }

      while (v59 != 9);
    }

    v61 = 0;
    v62 = v81;
    v63 = v88;
    do
    {
      v64 = 0;
      v65 = v62;
      do
      {
        *v65 = v63[v64];
        v65 += 4;
        v64 += 3;
      }

      while (v64 != 9);
      ++v61;
      ++v62;
      ++v63;
    }

    while (v61 != 3);
    *(&v82 + 1) = 0;
    *(&v84 + 1) = 0;
    v66 = (v45 + 408);
    v67 = *(v45 + 424);
    *(&v86 + 1) = 0;
    *&v87 = v67;
    v68 = *v66;
    *(&v87 + 1) = 0x3FF0000000000000;
    v69 = *(a1 + 856);
    v69[6] = v68;
    *v69 = *v81;
    v69[3] = v84;
    v69[2] = v83;
    v69[1] = v82;
    v69[5] = v86;
    v69[4] = v85;
    v69[7] = v87;
  }

  v38 = 0;
  v39 = 1;
  while (vabds_f32(*(a1 + 1456 + 4 * v38), *(a1 + 800 + 4 * v38)) < 0.1)
  {
    v40 = v39;
    v39 = 0;
    v38 = 1;
    if ((v40 & 1) == 0)
    {
      return v13;
    }
  }

  v41 = *(a1 + 800);
  *(a1 + 1456) = v41;
  v42 = *(a1 + 804);
  *(a1 + 1460) = v42;
  if (v37 && (*(*(a2 + 232) + 17) & 1) == 0)
  {
    v46 = 0;
    v47 = *(a1 + 16) + 944;
    do
    {
      v48 = *(v47 + 8 * v46);
      *(&v79 + v46++) = v48;
    }

    while (v46 != 3);
    v49 = 0;
    v78 = 0;
    v50 = vneg_f32(*(&v79 + 4));
    v76 = v50.i32[0];
    v77 = *&v79;
    v51.i32[0] = vdup_lane_s32(*(&v79 + 4), 1).u32[0];
    v51.i32[1] = v79;
    v74 = vrev64_s32(vmul_f32(v51, v50));
    v75 = vmul_f32(*(&v79 + 4), *(&v79 + 4)).f32[0] + (v77 * v77);
    do
    {
      *(v81 + v49) = *(&v76 + v49) * v41;
      v49 += 4;
    }

    while (v49 != 12);
    v52 = 0;
    v72 = v81[0];
    v73 = v81[1];
    v53 = -v42;
    do
    {
      *(v81 + v52 * 4) = *&v74.i32[v52] * v53;
      ++v52;
    }

    while (v52 != 3);
    v54 = 0;
    v70 = v81[0];
    v71 = v81[1];
    do
    {
      *(v81 + v54) = *(&v70 + v54) + *(&v72 + v54);
      v54 += 4;
    }

    while (v54 != 12);
    v55 = v81[1];
    *(a1 + 1464) = v81[0];
    *(a1 + 1472) = v55;
  }

  else
  {
    *(a1 + 1464) = v41;
    *(a1 + 1468) = -v42;
    *(a1 + 1472) = 0;
  }

  return v13;
}

void sub_1B2B5B2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::mutex *a21, char a22)
{
  if (a22 == 1)
  {
    std::mutex::unlock(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::TextLabelPart::prepareQuadsForDisplay(md::TextLabelPart *this, mdm::zone_mallocator **a2, md::LabelAnimator *a3)
{
  if (*(this + 887) == 1)
  {
    v7 = (a2 + 59);
    v6 = *(this + 4);
  }

  else
  {
    v6 = *(this + 4);
    v7 = (v6 + 64);
  }

  v8 = *(this + 74);
  if ((*(v8 + 8) >> *(v6 + 76)))
  {
    v9 = *(this + 91);
    v10 = fminf(fmaxf(*v7, 0.0), 23.0);
    v11 = md::LabelStylePropertyRamp::valueAtZ((v9 + 2), v10);
    v9[114] = v11;
    v12 = md::LabelStylePropertyRamp::valueAtZ((v9 + 30), v10);
    v9[115] = v12;
    v13 = md::LabelStylePropertyRamp::valueAtZ((v9 + 58), v10);
    v9[116] = v13;
    v9[117] = md::LabelStylePropertyRamp::valueAtZ((v9 + 86), v10);
    if (*(this + 876) == 1)
    {
      v11 = *(this + 218);
    }

    *(this + 187) = v11;
    *(this + 192) = v13;
    if (*(this + 888))
    {
      v14 = v12;
    }

    else
    {
      v14 = 0.0;
    }

    *(this + 186) = v14;
  }

  else
  {
    v11 = *(this + 187);
  }

  if (v11 <= 0.0)
  {
    return 27;
  }

  v15 = *(this + 2);
  if (v15)
  {
    v15 = *(v15 + 158);
  }

  v16 = v15 == 0;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = a3;
  }

  if (v17)
  {
    v18 = 563;
    if (!v16)
    {
      v18 = 564;
    }

    v19 = *(this + v18);
    v20 = *(v17 + 3);
    v21 = *(v17 + 4);
    if (0x8E38E38E38E38E39 * ((v21 - v20) >> 4) > v19)
    {
      v20 += 144 * v19;
      goto LABEL_21;
    }

    if (v20 != v21 && (*(v17 + 89) & 1) != 0)
    {
LABEL_21:
      *(this + 232) = 1065353216;
      v22 = 1.0;
      if (v20)
      {
        v23 = *(v20 + 56);
        if (v23)
        {
          v22 = fmaxf(*(v20 + 64) + (*(*v23 + 32 * *(v23 + 32) + 8) * (*(v20 + 68) - *(v20 + 64))), 0.0);
          *(this + 232) = v22;
        }
      }

      goto LABEL_27;
    }
  }

  *(this + 232) = 1065353216;
  v22 = 1.0;
LABEL_27:
  v24 = v22 * *(v6 + 68);
  v25 = fmaxf(v24 * v11, 0.0);
  if (*(this + 881))
  {
    v11 = v25;
  }

  else
  {
    v24 = 1.0;
  }

  v26 = *(this + 186) * v24;
  v27 = v11 != *(this + 189) || v26 != *(this + 190);
  md::LabelTextDataLoader::loadTextData(a2[34], (v8 + 16), 1, v25);
  v28 = atomic_load((*(v8 + 16) + 130));
  if (v28)
  {
    v29 = md::FontTrackingCache::trackingScale(a2[39], *(v8 + 16), v11, 0);
    v30 = v11 / *(*(v8 + 16) + 120);
    v31 = *(a2[38] + 16);
    if (v31)
    {
      md::FontGlyphCache::populateQuads(v31, v8 + 32, (v8 + 16), v27, v11, v25, v26, v29, v30);
    }

    if (*(v8 + 208) != 1)
    {
      goto LABEL_39;
    }

    md::LabelTextDataLoader::loadTextData(a2[34], (v8 + 112), 1, v25);
    v32 = atomic_load((*(v8 + 112) + 130));
    if (v32)
    {
      v33 = *(a2[38] + 16);
      if (v33)
      {
        md::FontGlyphCache::populateQuads(v33, v8 + 128, (v8 + 112), v27, v11, v25, v26, v29, v30);
      }

LABEL_39:
      *(this + 189) = v11;
      *(this + 190) = v26;
      return 37;
    }
  }

  return 11;
}

uint64_t md::TextLabelPart::layoutForDisplay(float32x2_t *this, mdm::zone_mallocator **a2, md::LabelAnimator *a3, __int32 *a4, __int32 *a5)
{
  this[68].i32[0] = *a5;
  this[68].i32[1] = a5[1];
  this[51].i32[0] = this[99].i32[0];
  this[106].i32[0] = *a4;
  this[106].i32[1] = a4[1];
  if (this[117].i8[4] == 1)
  {
    this[117].i8[4] = 0;
  }

  v6 = this[2];
  if (v6)
  {
    v6 = *(*&v6 + 1264);
  }

  v7 = *&v6 == 0;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = a3;
  }

  if (v8)
  {
    v9 = 563;
    if (!v7)
    {
      v9 = 564;
    }

    v10 = this->u8[v9];
    v11 = *(v8 + 3);
    v12 = *(v8 + 4);
    if (0x8E38E38E38E38E39 * ((v12 - v11) >> 4) <= v10)
    {
      if (v11 == v12 || (*(v8 + 89) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 += 18 * v10;
    }

    if (v11)
    {
      v13 = v11[9];
      if (v13)
      {
        this[117].f32[0] = fmaxf(fminf(v11[10].f32[0] + (*(**&v13 + 32 * *(*&v13 + 32) + 8) * (v11[10].f32[1] - v11[10].f32[0])), 1.0), 0.0);
        this[117].i8[4] = 1;
      }

      v14 = v11[11];
      if (v14)
      {
        v15 = vmla_n_f32(v11[12], vsub_f32(v11[13], v11[12]), *(**&v14 + 32 * *(*&v14 + 32) + 8));
        if (this[63].i8[4] == 1)
        {
          v16 = this[41];
          v17 = vmul_n_f32(v16, v15.f32[0]);
          v18 = vrev64_s32(vmul_lane_f32(v16, v15, 1));
          v15.i32[0] = vsub_f32(v17, v18).u32[0];
          v15.i32[1] = vadd_f32(v17, v18).i32[1];
        }

        if (v11[14].i8[0] == 1)
        {
          v15 = vadd_f32(this[68], v15);
        }

        this[68] = v15;
      }
    }
  }

LABEL_24:
  result = md::TextLabelPart::prepareQuadsForDisplay(this, a2, a3);
  if (result == 37)
  {
    v20 = *(*&this[74] + 16);
    v21 = atomic_load((v20 + 130));
    if ((v21 & 1) == 0 || *(v20 + 56) == *(v20 + 64))
    {
      return 12;
    }

    else if (*(*&this[74] + 64) == *(*&this[74] + 72))
    {
      return 13;
    }

    else
    {
      v22 = this[2];
      if (v22)
      {
        this[96].i32[1] = *(*&v22 + 1388);
        this[105].i8[6] = *(*&v22 + 1159);
      }

      return 37;
    }
  }

  return result;
}

float md::LabelStylePropertyRamp::valueAtZ(md::LabelStylePropertyRamp *this, float a2)
{
  v2 = fminf(fmaxf(a2, 0.0), 23.0);
  v3 = v2;
  if (v2 >= 0x17)
  {
    v4 = 23;
  }

  else
  {
    v4 = v2;
  }

  v5 = *(this + v4);
  if (((*(this + 12) >> v4) & 1) == 0)
  {
    return *(this + v4);
  }

  if (v3 >= 0x16)
  {
    v3 = 22;
  }

  v6 = *(this + v3 + 1);
  if (*(this + 104))
  {
    return v5 + ((v6 - v5) * (v2 - v4));
  }

  result = 0.0;
  if (v5 != 0.0 && v6 != 0.0)
  {
    return v5 + ((v6 - v5) * (v2 - v4));
  }

  return result;
}

double md::FontTrackingCache::trackingScale(md::FontTrackingCache *this, const md::TextDataString *a2, float a3, int a4)
{
  if (*(a2 + 125) != 1)
  {
    return (a3 / *(a2 + 30));
  }

  v6 = a3 / *(this + 30);
  if (v6 < 7.0)
  {
    return (a3 / *(a2 + 30));
  }

  v8 = v6;
  if (v6 >= 23)
  {
    v8 = 23;
  }

  if (v8 <= 7)
  {
    v9 = 7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 + 1;
  v11 = *(a2 + 2);
  v12 = std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::find<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>(this + 8, v11);
  if (!v12 || (v13 = v12[5], v14 = atomic_load((v13 + 8 + v9)), (v14 & 1) == 0) || (v15 = atomic_load((v13 + 8 + v10)), (v15 & 1) == 0))
  {
    if (a4)
    {
      v21 = std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::find<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>(this + 1, v11);
      if (v21)
      {
        v22 = v21[5] + 36;
LABEL_23:
        v17 = (v22 + 4 * v9);
        v18 = (v22 + 4 * v10);
        return ((*v17 + ((*v18 - *v17) * (v6 - v9))) * *(this + 30));
      }

      v26 = v11;
      v23 = (this + 8);
    }

    else
    {
      v26 = v11;
      v23 = (this + 64);
    }

    v24 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,geo::allocator_adapter<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v23, v11, &v26)[5];
    if (!v24)
    {
      operator new();
    }

    v25 = *(a2 + 5);
    if (a4)
    {
      md::FontTrackingCache::generateFontScales(v25, v24, 7u, 24);
      *(this + 124) = 1;
    }

    else
    {
      md::FontTrackingCache::generateFontScales(v25, v24, v9, v9 + 1);
    }

    v22 = v24 + 36;
    goto LABEL_23;
  }

  v16 = v13 + 36;
  v17 = (v13 + 36 + 4 * v9);
  v18 = (v16 + 4 * v10);
  return ((*v17 + ((*v18 - *v17) * (v6 - v9))) * *(this + 30));
}

void md::LabelTextDataLoader::loadTextData(mdm::zone_mallocator *a1, uint64_t *a2, int a3, float a4)
{
  v4 = atomic_load((*a2 + 129));
  if ((v4 & 1) == 0)
  {
    v6 = atomic_load((*a2 + 130));
    if ((v6 & 1) == 0)
    {
      v9 = *(a1 + 2);
      if ((*(v9 + 3417) & 1) != 0 || a3)
      {
        v14 = *a2;
        v15 = [*(v9 + 96) grlFontManager];

        md::TextDataString::generateGlyphInfos(v14, v15, a4);
      }

      else
      {
        v10 = *(a1 + 4);
        v11 = *(a1 + 5);
        if (v10 >= v11)
        {
          v16 = *(a1 + 3);
          v17 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v16) >> 3);
          v18 = v17 + 1;
          if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v19 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v16) >> 3);
          if (2 * v19 > v18)
          {
            v18 = 2 * v19;
          }

          if (v19 >= 0x555555555555555)
          {
            v20 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            v21 = mdm::zone_mallocator::instance(a1);
            v22 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<std::shared_ptr<md::TextDataString>,float>>(v21, v20);
          }

          else
          {
            v22 = 0;
          }

          v23 = a2[1];
          v24 = &v22[24 * v17];
          *v24 = *a2;
          *(v24 + 1) = v23;
          if (v23)
          {
            atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
          }

          v25 = &v22[24 * v20];
          *(v24 + 4) = a4;
          v13 = v24 + 24;
          v26 = *(a1 + 3);
          v27 = *(a1 + 4) - v26;
          v28 = &v24[-v27];
          v29 = memcpy(&v24[-v27], v26, v27);
          v30 = *(a1 + 3);
          *(a1 + 3) = v28;
          *(a1 + 4) = v13;
          *(a1 + 5) = v25;
          if (v30)
          {
            v31 = mdm::zone_mallocator::instance(v29);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<std::shared_ptr<md::TextDataString>,float>>(v31, v30);
          }
        }

        else
        {
          v12 = a2[1];
          *v10 = *a2;
          *(v10 + 8) = v12;
          if (v12)
          {
            atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
          }

          *(v10 + 16) = a4;
          v13 = (v10 + 24);
        }

        *(a1 + 4) = v13;
        atomic_store(1u, (*a2 + 129));
      }
    }
  }
}

mdm::zone_mallocator *md::FontGlyphCache::populateQuads(mdm::zone_mallocator *result, uint64_t a2, uint64_t *a3, char a4, float a5, float a6, float a7, double a8, float a9)
{
  v15 = result;
  v16 = *(a2 + 72);
  v17 = *(result + 39);
  if (v16 != v17)
  {
    *(a2 + 72) = v17;
  }

  v28 = a6 <= 64.0;
  v18 = fminf(ceilf(a6 * 0.03125) * 32.0, 128.0);
  v19 = ceilf(a6 * 0.0625) * 16.0;
  if (v28)
  {
    v18 = v19;
  }

  v20 = *(a2 + 64);
  v21 = v18 == v20 && v16 == v17;
  v22 = !v21;
  v23 = *(result + 164);
  if (!v21)
  {
    ++*(a2 + 76);
    if ((v23 & 1) == 0)
    {
      goto LABEL_32;
    }

    v24 = *(a2 + 68);
LABEL_24:
    v28 = v18 == v20 || v20 <= 0.0;
    v29 = !v28;
    if (v24 > 0.0 || (v29 & 1) != 0)
    {
      *(a2 + 68) = v18;
      md::FontGlyphCache::updateGlyphs(result, a2, 1, a3, v22, v18);
      v18 = *(a2 + 64);
      goto LABEL_33;
    }

LABEL_32:
    *(a2 + 64) = v18;
LABEL_33:
    md::FontGlyphCache::updateGlyphs(v15, a2, 0, a3, v22, v18);
    goto LABEL_34;
  }

  v24 = *(a2 + 68);
  v25 = *a2;
  v26 = *(a2 + 8);
  if (*a2 != v26)
  {
    while (*v25)
    {
      if (*(*v25 + 62) != 1)
      {
        break;
      }

      if ((v23 & (v24 > 0.0)) != 0)
      {
        v27 = v25[2];
        if (!v27 || *(v27 + 62) != 1)
        {
          break;
        }
      }

      v25 += 5;
      if (v25 == v26)
      {
        goto LABEL_21;
      }
    }

    ++*(a2 + 76);
    if ((v23 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

LABEL_21:
  if ((a4 & 1) == 0)
  {
    return result;
  }

  ++*(a2 + 76);
LABEL_34:
  v30 = *a3;

  return md::FontGlyphCache::updateQuads(a2, v30, a5, a7, a8, a9);
}

uint64_t ggl::DaVinci::GroundPipelineSetup::deviceDataIsEnabled(ggl::DaVinci::GroundPipelineSetup *this, uint64_t a2)
{
  if (a2 == 3)
  {
    v2 = *(*(this + 2) + 316);
  }

  else if (a2 == 2)
  {
    v2 = *(*(this + 2) + 344);
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t ggl::DaVinci::GroundPipelineSetup::textureIsEnabled(ggl::DaVinci::GroundPipelineSetup *this, uint64_t a2)
{
  if (a2 > 6)
  {
    if (a2 > 9)
    {
      if (a2 != 10)
      {
        if (a2 == 12)
        {
          v2 = *(*(this + 2) + 311);
          return v2 & 1;
        }

        if (a2 == 11)
        {
          v2 = *(*(this + 2) + 310);
          return v2 & 1;
        }

        goto LABEL_24;
      }
    }

    else if (a2 == 8 || a2 == 7)
    {
      v2 = *(*(this + 2) + 314);
      return v2 & 1;
    }

    v2 = *(*(this + 2) + 338);
    return v2 & 1;
  }

  if (a2 > 3)
  {
    if (a2 == 5)
    {
      v2 = *(*(this + 2) + 327);
    }

    else if (a2 == 4)
    {
      v2 = *(*(this + 2) + 315);
    }

    else
    {
      v2 = *(*(this + 2) + 324);
    }

    return v2 & 1;
  }

  if (a2 == 1)
  {
    v2 = *(*(this + 2) + 309);
    return v2 & 1;
  }

  v2 = 1;
  if ((a2 - 2) >= 2 && a2)
  {
LABEL_24:
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t ggl::DaVinci::GroundPipelineSetup::constantDataIsEnabled(ggl::DaVinci::GroundPipelineSetup *this, uint64_t a2)
{
  v2 = 1;
  switch(a2)
  {
    case 0:
    case 1:
    case 3:
    case 5:
    case 8:
    case 10:
    case 13:
    case 28:
      return v2 & 1;
    case 2:
    case 18:
      v2 = *(*(this + 2) + 309);
      break;
    case 4:
      v2 = *(*(this + 2) + 329);
      break;
    case 6:
      v2 = *(*(this + 2) + 330);
      break;
    case 7:
      v2 = *(*(this + 2) + 331);
      break;
    case 9:
      v2 = *(*(this + 2) + 335);
      break;
    case 11:
      v2 = *(*(this + 2) + 336);
      break;
    case 12:
    case 21:
      v2 = *(*(this + 2) + 326);
      break;
    case 14:
      v2 = *(*(this + 2) + 317);
      break;
    case 15:
      v2 = *(*(this + 2) + 318);
      break;
    case 16:
    case 25:
    case 26:
      v2 = *(*(this + 2) + 324);
      break;
    case 17:
      v2 = *(*(this + 2) + 343);
      break;
    case 19:
      v2 = *(*(this + 2) + 327);
      break;
    case 20:
      v2 = *(*(this + 2) + 320);
      break;
    case 22:
      v2 = *(*(this + 2) + 310);
      break;
    case 23:
    case 24:
      v2 = *(*(this + 2) + 311);
      break;
    case 27:
      v2 = *(*(this + 2) + 325);
      break;
    case 29:
      v2 = *(*(this + 2) + 315);
      break;
    case 30:
      v2 = *(*(this + 2) + 346);
      break;
    default:
      v2 = 0;
      break;
  }

  return v2 & 1;
}

void *ggl::MetalResourceManager::getSamplerStateResource(ggl::MetalResourceManager *this, const ggl::Texture *a2)
{
  v3 = 0;
  v4 = *(a2 + 14);
  if (v4 <= 2)
  {
    if (v4 != 1 && v4 != 2)
    {
      return v3;
    }

    goto LABEL_7;
  }

  if (v4 != 3)
  {
    if (v4 != 4)
    {
      return v3;
    }

LABEL_7:
    v5 = *(a2 + 17);
    goto LABEL_9;
  }

  v5 = *(a2 + 26);
LABEL_9:
  v3 = *(v5 + 24);
  if (!v3)
  {
    v6 = objc_alloc_init(MEMORY[0x1E6974170]);
    v7 = v6;
    v8 = *(v5 + 36) - 1;
    if (v8 > 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = qword_1B341CA20[v8];
    }

    [v6 setSAddressMode:v9];
    v10 = *(v5 + 40) - 1;
    if (v10 > 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = qword_1B341CA20[v10];
    }

    [v7 setTAddressMode:v11];
    [v7 setMinFilter:*(v5 + 52) != 0];
    [v7 setMagFilter:*(v5 + 48) != 0];
    if (*(v5 + 56))
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [v7 setMipFilter:v12];
    [v7 setMaxAnisotropy:*(v5 + 44)];
    v13 = (*(v5 + 60) - 1);
    if (v13 < 7)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 0;
    }

    [v7 setCompareFunction:v14];
    v15 = [*(*(this + 32) + 104) newSamplerStateWithDescriptor:v7];
    v16 = ggl::zone_mallocator::instance(v15);
    v3 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v16, 0x28uLL);
    *v3 = 0;
    *(v3 + 4) = 513;
    *(v3 + 2) = 0;
    *(v3 + 3) = 0;
    *(v3 + 4) = 0;
    objc_storeStrong(v3 + 4, v15);
    ggl::RenderDataHolder::setRenderResource(v5, this, v3);
    ggl::ResourceManager::_addResourceStat(this, "SamplerState", 0xC9803BE00000000CLL, 0);
  }

  return v3;
}

uint64_t ggl::SolidRibbon::PipelineSetup::constantDataIsEnabled(ggl::SolidRibbon::PipelineSetup *this, unint64_t a2)
{
  if (a2 == 3)
  {
    v2 = *(*(this + 2) + 309);
  }

  else
  {
    v2 = a2 < 3;
  }

  return v2 & 1;
}

uint64_t ggl::DaVinciTraffic::BasePipelineSetup::constantDataIsEnabled(ggl::DaVinciTraffic::BasePipelineSetup *this, unint64_t a2)
{
  v2 = 1;
  if (a2 >= 2 && a2 != 3)
  {
    if (a2 == 2)
    {
      v2 = *(*(this + 2) + 309);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}

void sub_1B2B5C3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10)
{
  std::mutex::unlock((a10 + 32));

  _Unwind_Resume(a1);
}

char *gss::RenderStyle<gss::PropertyID>::styleValueForKey<BOOL>(uint64_t a1, int a2, unsigned int a3, _BYTE *a4)
{
  v6 = *(a1 + 16 * a3 + 16);
  if (v6)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      do
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v11 = *v10;
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v10, a2) != *(v11 + 6))
          {
            goto LABEL_14;
          }
        }

        v8 += 8;
        v9 -= 8;
      }

      while (v9);
    }

    v12 = *(v6 + 72);
    if (v12)
    {
      v11 = *v12;
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v12, a2) != *(v11 + 6))
      {
LABEL_14:
        v14 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v11 + 3, a2);
        if (v14 == *(v11 + 18))
        {
          return &gss::PropertySetValueHelper<gss::PropertyID,BOOL>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
        }

        else
        {
          return v11[3] + *(v11 + 8) + v14;
        }
      }
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  return gss::defaultValueForKey<gss::PropertyID,BOOL>(a2);
}

void md::RouteLineSection::updateStyleQueryIfNecessary(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, int a4, int a5, int a6, uint64_t **a7, uint64_t **a8, float a9, unsigned __int8 a10, int a11, int a12)
{
  v173 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 200));
  v19 = [WeakRetained composedRouteSegmentIndex];

  v20 = *(a1 + 248);
  if (v20)
  {
    if (v19 != a11 || (v20 = *(a1 + 264)) != 0)
    {
      if (*(a1 + 233) == a4 && *(a1 + 234) == a5 && *(a1 + 235) == a6 && gss::DisplayStyle::operator==(a3, (a1 + 238)) && *(a1 + 376) == a11 && *(a1 + 380) == a12 && (((*(a1 + 312) == 0) ^ a10) & 1) != 0)
      {
        return;
      }

      LODWORD(v20) = 1;
    }
  }

  v21 = *(a1 + 376);
  if (v21 == -1)
  {
    v21 = 0;
  }

  v22 = v21 <= v19;
  v23 = v21 >= v19;
  if (v22)
  {
    v24 = v23;
  }

  else
  {
    v24 = 2;
  }

  if (a11 == -1)
  {
    v25 = 0;
  }

  else
  {
    v25 = a11;
  }

  v22 = v25 <= v19;
  LODWORD(v26) = v25 >= v19;
  if (v22)
  {
    v26 = v26;
  }

  else
  {
    v26 = 2;
  }

  v149 = v26;
  v27 = *(a1 + 224);
  if (a12 == -1)
  {
    v28 = 0;
  }

  else
  {
    v28 = a12;
  }

  v22 = v28 <= v27;
  LODWORD(v29) = v28 >= v27;
  if (v22)
  {
    v29 = v29;
  }

  else
  {
    v29 = 2;
  }

  v153 = v29;
  v30 = *(a1 + 380);
  if (v30 == -1)
  {
    v30 = 0;
  }

  v22 = v30 <= v27;
  v31 = v30 >= v27;
  if (v22)
  {
    v32 = v31;
  }

  else
  {
    v32 = 2;
  }

  if (!v20 || *(a1 + 233) != a4 || *(a1 + 234) != a5 || *(a1 + 235) != a6 || !gss::DisplayStyle::operator==(a3, (a1 + 238)) || v24 != v149 || v32 != v153)
  {
    v34 = *a2;
    v33 = a2[1];
    if (v33)
    {
      atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
    }

    v35 = *(a1 + 368);
    *(a1 + 360) = v34;
    *(a1 + 368) = v33;
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v35);
    }

    *(a1 + 233) = a4;
    *(a1 + 234) = a5;
    *(a1 + 235) = a6;
    *(a1 + 238) = *a3;
    *(a1 + 384) = v153;
    v155[0] = 0;
    v155[1] = 0;
    v156 = 256;
    *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v155, 0x10002u) = a4;
    if (a6)
    {
      *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v155, 0x10002u) = 3;
    }

    *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v155, 0x1004Du) = a5;
    *&v169 = *(a1 + 238);
    gss::DisplayStyle::applyDisplayStyle(&v169, v155);
    *(a1 + 376) = a11;
    *(a1 + 380) = a12;
    v36 = *(a1 + 40);
    if (v36)
    {
      v37 = *(a1 + 40);
      md::createFeatureAttributeSet(v168, v37);
    }

    else
    {
      memset(v168, 0, 24);
    }

    v38 = *(a1 + 272);
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v38);
    }

    v164 = 0;
    v165 = 0;
    v166 = 0;
    LOBYTE(v160) = 0;
    v163 = 0;
    v172 = &v167;
    v39 = gss::zone_mallocator::instance(v38);
    v40 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v39, 1);
    *v40 = 0xB00000005;
    v41 = &v40[-(v165 - v164)];
    memcpy(v41, v164, v165 - v164);
    v42 = v164;
    v43 = v166;
    v164 = v41;
    v165 = v40 + 8;
    v166 = (v40 + 8);
    v170 = v42;
    v171 = v43;
    *&v169 = v42;
    *(&v169 + 1) = v42;
    v44 = std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(&v169);
    v165 = v40 + 8;
    v45 = *(a1 + 192);
    if ((v40 + 8) >= v166)
    {
      v47 = (v40 + 8 - v164) >> 3;
      if ((v47 + 1) >> 61)
      {
        goto LABEL_191;
      }

      v48 = (v166 - v164) >> 2;
      if (v48 <= v47 + 1)
      {
        v48 = v47 + 1;
      }

      if (v166 - v164 >= 0x7FFFFFFFFFFFFFF8)
      {
        v49 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v49 = v48;
      }

      v172 = &v167;
      if (v49)
      {
        v50 = gss::zone_mallocator::instance(v44);
        v51 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v50, v49);
      }

      else
      {
        v51 = 0;
      }

      v52 = &v51[8 * v49];
      v53 = ((v45 << 32) | 0x10009) + 7;
      v54 = &v51[8 * v47];
      *v54 = v53;
      v46 = (v54 + 1);
      v55 = &v51[8 * v47 - (v165 - v164)];
      memcpy(v55, v164, v165 - v164);
      v56 = v164;
      v57 = v166;
      v164 = v55;
      v165 = v46;
      v166 = v52;
      v170 = v56;
      v171 = v57;
      *&v169 = v56;
      *(&v169 + 1) = v56;
      v44 = std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(&v169);
    }

    else
    {
      *(v40 + 1) = ((v45 << 32) | 0x10009) + 7;
      v46 = (v40 + 16);
    }

    v165 = v46;
    v58 = a10;
    if (v46 >= v166)
    {
      v60 = (v46 - v164) >> 3;
      if ((v60 + 1) >> 61)
      {
        goto LABEL_191;
      }

      v61 = (v166 - v164) >> 2;
      if (v61 <= v60 + 1)
      {
        v61 = v60 + 1;
      }

      if (v166 - v164 >= 0x7FFFFFFFFFFFFFF8)
      {
        v62 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v62 = v61;
      }

      v172 = &v167;
      if (v62)
      {
        v63 = gss::zone_mallocator::instance(v44);
        v64 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v63, v62);
      }

      else
      {
        v64 = 0;
      }

      v66 = &v64[8 * v62];
      v65 = &v64[8 * v60];
      *v65 = ((v153 << 32) | 0x10009) + 75;
      v59 = (v65 + 8);
      v67 = &v65[-(v165 - v164)];
      memcpy(v67, v164, v165 - v164);
      v68 = v164;
      v69 = v166;
      v164 = v67;
      v165 = v59;
      v166 = v66;
      v170 = v68;
      v171 = v69;
      *&v169 = v68;
      *(&v169 + 1) = v68;
      v44 = std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(&v169);
    }

    else
    {
      *v46 = ((v153 << 32) | 0x10009) + 75;
      v59 = v46 + 2;
    }

    v165 = v59;
    if (v59 >= v166)
    {
      v71 = (v59 - v164) >> 3;
      if ((v71 + 1) >> 61)
      {
        goto LABEL_191;
      }

      v72 = (v166 - v164) >> 2;
      if (v72 <= v71 + 1)
      {
        v72 = v71 + 1;
      }

      if (v166 - v164 >= 0x7FFFFFFFFFFFFFF8)
      {
        v73 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v73 = v72;
      }

      v172 = &v167;
      if (v73)
      {
        v74 = gss::zone_mallocator::instance(v44);
        v75 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v74, v73);
      }

      else
      {
        v75 = 0;
      }

      v77 = &v75[8 * v73];
      v76 = &v75[8 * v71];
      *v76 = ((v149 << 32) | 0x10009) + 11;
      v70 = (v76 + 8);
      v78 = &v76[-(v165 - v164)];
      memcpy(v78, v164, v165 - v164);
      v79 = v164;
      v80 = v166;
      v164 = v78;
      v165 = v70;
      v166 = v77;
      v170 = v79;
      v171 = v80;
      *&v169 = v79;
      *(&v169 + 1) = v79;
      std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(&v169);
    }

    else
    {
      *v59 = ((v149 << 32) | 0x10009) + 11;
      v70 = v59 + 2;
    }

    v165 = v70;
    v81 = a2;
    if (v19 != a11)
    {
      goto LABEL_118;
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v157, &v164);
    LOBYTE(v171) = v159;
    v82 = v157;
    v169 = v157;
    v83 = v158;
    v170 = v158;
    v157 = 0uLL;
    v158 = 0;
    LOBYTE(v172) = 1;
    if (v163)
    {
      v150 = v82;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__vdeallocate(&v160);
      v160 = v150;
      v161 = v83;
      v170 = 0;
      v169 = 0uLL;
    }

    else
    {
      v162 = v159;
      v160 = v82;
      v161 = v83;
      v170 = 0;
      v169 = 0uLL;
      v163 = 1;
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v169);
    v85 = v165;
    if (v165 >= v166)
    {
      v87 = (v165 - v164) >> 3;
      if ((v87 + 1) >> 61)
      {
        goto LABEL_191;
      }

      v88 = (v166 - v164) >> 2;
      if (v88 <= v87 + 1)
      {
        v88 = v87 + 1;
      }

      if (v166 - v164 >= 0x7FFFFFFFFFFFFFF8)
      {
        v89 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v89 = v88;
      }

      v172 = &v167;
      if (v89)
      {
        v90 = gss::zone_mallocator::instance(v84);
        v91 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v90, v89);
      }

      else
      {
        v91 = 0;
      }

      v93 = &v91[8 * v89];
      v92 = &v91[8 * v87];
      *v92 = 65545;
      v86 = (v92 + 8);
      v94 = &v92[-(v165 - v164)];
      memcpy(v94, v164, v165 - v164);
      v95 = v164;
      v96 = v166;
      v164 = v94;
      v165 = v86;
      v166 = v93;
      v170 = v95;
      v171 = v96;
      *&v169 = v95;
      *(&v169 + 1) = v95;
      v84 = std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(&v169);
    }

    else
    {
      *v165 = 65545;
      v86 = (v85 + 8);
    }

    v165 = v86;
    if ((v163 & 1) == 0)
    {
      v147 = std::__throw_bad_optional_access[abi:nn200100]();
      if (v171)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v171);
      }

      if (*(&v169 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v169 + 1));
      }

      _Unwind_Resume(v147);
    }

    v97 = *(&v160 + 1);
    if (*(&v160 + 1) < v161)
    {
      **(&v160 + 1) = 0x200010009;
      v98 = (v97 + 8);
LABEL_117:
      *(&v160 + 1) = v98;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v157);
LABEL_118:
      if (v163 == 1)
      {
        gss::FeatureAttributeSet::setByReplacingAttributes(&v169, v168, v160, *(&v160 + 1));
        gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v157, *a2, &v169, v155);
        v109 = v157;
        v157 = 0uLL;
        v110 = *(a1 + 272);
        *(a1 + 264) = v109;
        if (v110)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v110);
          if (*(&v157 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v157 + 1));
          }
        }

        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v169);
      }

      gss::FeatureAttributeSet::setByReplacingAttributes(&v157, v168, v164, v165);
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v169, *a2, &v157, v155);
      v111 = v169;
      v169 = 0uLL;
      v112 = *(a1 + 256);
      *(a1 + 248) = v111;
      if (v112)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v112);
        if (*(&v169 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v169 + 1));
        }

        v113 = *(a1 + 248);
      }

      else
      {
        v113 = v111;
      }

      *(a1 + 236) = 0;
      if (!v113)
      {
        goto LABEL_157;
      }

      v114 = *(a1 + 256);
      if (v114)
      {
        atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v169, v113, v114);
      if (v114)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v114);
      }

      if (v172 != 1)
      {
LABEL_153:
        if (v171)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v171);
        }

        if (*(&v169 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v169 + 1));
        }

LABEL_157:
        v129 = *(a1 + 288);
        *(a1 + 280) = 0;
        *(a1 + 288) = 0;
        if (v129)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v129);
        }

        if ((*(a1 + 376) & 0x80000000) != 0)
        {
          *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v155, 0x1003Au) = 1;
          gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v169, *v81, &v157, v155);
          v140 = v169;
          v169 = 0uLL;
          v141 = *(a1 + 288);
          *(a1 + 280) = v140;
          if (v141)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v141);
            if (*(&v169 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v169 + 1));
            }
          }
        }

        v169 = 0uLL;
        LOWORD(v170) = 256;
        v130 = *(a1 + 233);
        *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](&v169, 0x10002u) = v130;
        v131 = *(a1 + 234);
        *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](&v169, 0x1004Du) = v131;
        if (*(a1 + 235) == 1)
        {
          *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](&v169, 0x10002u) = 3;
        }

        *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](&v169, 0x10054u) = v153;
        gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v154, *v81, a7, &v169);
        v132 = v154;
        v154 = 0uLL;
        v133 = *(a1 + 304);
        *(a1 + 296) = v132;
        if (v133)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v133);
          if (*(&v154 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v154 + 1));
          }
        }

        v134 = 0uLL;
        if (v58)
        {
          gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v154, *v81, a8, &v169);
          v134 = v154;
        }

        v154 = 0uLL;
        v135 = *(a1 + 320);
        *(a1 + 312) = v134;
        if (v135)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v135);
          if (*(&v154 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v154 + 1));
          }
        }

        *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](&v169, 0x1003Au) = 1;
        gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v154, *v81, a7, &v169);
        v136 = v154;
        v154 = 0uLL;
        v137 = *(a1 + 336);
        *(a1 + 328) = v136;
        if (v137)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v137);
          if (*(&v154 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v154 + 1));
          }
        }

        v138 = 0uLL;
        if (v58)
        {
          gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v154, *v81, a8, &v169);
          v138 = v154;
        }

        v154 = 0uLL;
        v139 = *(a1 + 352);
        *(a1 + 344) = v138;
        if (v139)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v139);
          if (*(&v154 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v154 + 1));
          }
        }

        geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v169);
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v157);
        if (v163 == 1)
        {
          std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v160);
        }

        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v164);
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v168);
        geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v155);
        return;
      }

      v115 = v169;
      v116 = *(v169 + 24);
      if (a9 >= 0x17)
      {
        v117 = 23;
      }

      else
      {
        v117 = a9;
      }

      v118 = *(v116 + 11);
      if (v118 == 2)
      {
        v119 = *(v116 + 16);
        if (v119)
        {
          v120 = *(v119 + 72);
          if (v120)
          {
            v121 = *v120 + 120 * *(v120 + v117 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v121, 0x1D0u) != *(v121 + 12))
            {
              goto LABEL_151;
            }
          }

          if (*(v116 + 56))
          {
            v122 = *(v116 + 48);
            v123 = 8 * *(v116 + 56);
            while (1)
            {
              v124 = *(*v122 + 72);
              if (v124)
              {
                v125 = *v124 + 120 * *(v124 + v117 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v125, 0x1D0u) != *(v125 + 12))
                {
                  goto LABEL_151;
                }
              }

              v122 += 8;
              v118 = 1;
              v123 -= 8;
              if (!v123)
              {
                goto LABEL_148;
              }
            }
          }
        }

        v118 = 1;
      }

LABEL_148:
      v126 = *(v116 + 16 * v118 + 16);
      if (!v126)
      {
LABEL_152:
        *(a1 + 236) = v126;
        (*(*v115 + 56))(v115);
        v81 = a2;
        v58 = a10;
        goto LABEL_153;
      }

      v127 = *(v126 + 72);
      if (!v127 || (v128 = *v127 + 120 * *(v127 + v117 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v128, 0x1D0u) == *(v128 + 12)))
      {
        v142 = v116 + 16 * v118;
        v126 = *(v142 + 56);
        if (!*(v142 + 56))
        {
          goto LABEL_152;
        }

        v143 = *(v142 + 48);
        v144 = 8 * v126;
        while (1)
        {
          v145 = *(*v143 + 72);
          if (v145)
          {
            v146 = *v145 + 120 * *(v145 + v117 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v146, 0x1D0u) != *(v146 + 12))
            {
              break;
            }
          }

          LOBYTE(v126) = 0;
          v143 += 8;
          v144 -= 8;
          if (!v144)
          {
            goto LABEL_152;
          }
        }
      }

LABEL_151:
      LOBYTE(v126) = 1;
      goto LABEL_152;
    }

    v99 = (*(&v160 + 1) - v160) >> 3;
    if (!((v99 + 1) >> 61))
    {
      v100 = (v161 - v160) >> 2;
      if (v100 <= v99 + 1)
      {
        v100 = v99 + 1;
      }

      if ((v161 - v160) >= 0x7FFFFFFFFFFFFFF8)
      {
        v101 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v101 = v100;
      }

      v172 = &v162;
      if (v101)
      {
        v102 = gss::zone_mallocator::instance(v84);
        v103 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v102, v101);
      }

      else
      {
        v103 = 0;
      }

      v105 = &v103[8 * v101];
      v104 = &v103[8 * v99];
      *v104 = 0x200010009;
      v98 = v104 + 8;
      v106 = &v104[-(*(&v160 + 1) - v160)];
      memcpy(v106, v160, *(&v160 + 1) - v160);
      v107 = v160;
      v108 = v161;
      *&v160 = v106;
      *(&v160 + 1) = v98;
      v161 = v105;
      v170 = v107;
      v171 = v108;
      *&v169 = v107;
      *(&v169 + 1) = v107;
      std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(&v169);
      goto LABEL_117;
    }

LABEL_191:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

void md::trafficColorForSpeed(void *a1, uint64_t a2, int a3, int a4, float a5)
{
  v7 = a3;
  *a1 = 0;
  a1[1] = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      goto LABEL_31;
    }

    if (a3 != 4)
    {
      v7 = 3;
      goto LABEL_31;
    }

    v11 = *(*a2 + 24);
    if (a5 >= 0x17)
    {
      v12 = 23;
    }

    else
    {
      v12 = a5;
    }

    v13 = *v11;
    if (*v11 && (v14 = *v13, LODWORD(v13) = *v13 == 1.0, *(v11 + 10) == 1) && (v14 != 0.0 ? (v15 = v14 == 1.0) : (v15 = 1), !v15) || (v16 = *(v11 + v13 + 11), v16 == 2))
    {
      v17 = *(v11 + 16);
      if (v17)
      {
        v18 = *(v17 + 72);
        if (v18)
        {
          v19 = *v18 + 120 * *(v18 + v12 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v19, 0x5Cu) != *(v19 + 12))
          {
            goto LABEL_47;
          }
        }

        if (*(v11 + 56))
        {
          v20 = *(v11 + 48);
          v21 = 8 * *(v11 + 56);
          while (1)
          {
            v22 = *(*v20 + 72);
            if (v22)
            {
              v23 = *v22 + 120 * *(v22 + v12 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v23, 0x5Cu) != *(v23 + 12))
              {
                goto LABEL_47;
              }
            }

            v20 += 8;
            v16 = 1;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_44;
            }
          }
        }
      }

      v16 = 1;
    }

LABEL_44:
    v30 = *(v11 + 16 * v16 + 16);
    if (v30)
    {
      v31 = *(v30 + 72);
      if (v31)
      {
        v32 = *v31 + 120 * *(v31 + v12 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v32, 0x5Cu) != *(v32 + 12))
        {
LABEL_47:
          v28 = fminf(fmaxf(a5, 0.0), 23.0);
          v27 = v11;
          v29 = 92;
          goto LABEL_48;
        }
      }

      v34 = v11 + 16 * v16;
      if (*(v34 + 56))
      {
        v35 = *(v34 + 48);
        v36 = 8 * *(v34 + 56);
        do
        {
          v37 = *(*v35 + 72);
          if (v37)
          {
            v38 = *v37 + 120 * *(v37 + v12 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v38, 0x5Cu) != *(v38 + 12))
            {
              goto LABEL_47;
            }
          }

          v35 += 8;
          v36 -= 8;
        }

        while (v36);
      }
    }

    v26 = 0;
    v25.i64[0] = 0;
    if (!a4)
    {
      goto LABEL_51;
    }

LABEL_50:
    *a1 = vmul_lane_f32(*v25.i8, v26, 1);
    *(a1 + 2) = vmul_lane_f32(v26, v26, 1).u32[0];
    goto LABEL_51;
  }

  if (a3 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 3;
  }

  if (a3)
  {
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

LABEL_31:
  v24 = md::trafficVisibleAtSpeed(a2, v7);
  v25.i64[0] = 0;
  if (v24)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v27 = *(*a2 + 24);
        v28 = fminf(fmaxf(a5, 0.0), 23.0);
        v29 = 65;
      }

      else
      {
        v26 = 0;
        if (v7 != 3)
        {
          goto LABEL_49;
        }

        v27 = *(*a2 + 24);
        v28 = fminf(fmaxf(a5, 0.0), 23.0);
        v29 = 76;
      }
    }

    else if (v7)
    {
      v26 = 0;
      if (v7 != 1)
      {
        goto LABEL_49;
      }

      v27 = *(*a2 + 24);
      v28 = fminf(fmaxf(a5, 0.0), 23.0);
      v29 = 54;
    }

    else
    {
      v27 = *(*a2 + 24);
      v28 = fminf(fmaxf(a5, 0.0), 23.0);
      v29 = 43;
    }

LABEL_48:
    gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v39, v27, v29, 2u, v28);
    v25 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v39[0])), vdupq_n_s32(0x37800080u));
    *a1 = v25;
    v26 = vextq_s8(v25, v25, 8uLL).u64[0];
LABEL_49:
    if (!a4)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v26 = 0;
  if (a4)
  {
    goto LABEL_50;
  }

LABEL_51:
  if (fabsf(v26.f32[1]) < 0.00000011921)
  {
    if (GEOGetVectorKitRouteLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
    }

    v33 = GEOGetVectorKitRouteLog_log;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v39[0].i16[0] = 0;
      _os_log_impl(&dword_1B2754000, v33, OS_LOG_TYPE_INFO, "RouteLine trafficColor is 0", v39, 2u);
    }
  }
}

uint64_t md::trafficVisibleAtSpeed(uint64_t a1, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      hasValueForKey = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*a1 + 24), 0x40u, 2u);
      v4 = *(*a1 + 24);
      if (hasValueForKey)
      {
        v5 = 64;
        goto LABEL_16;
      }
    }

    else
    {
      if (a2 != 3)
      {
        return 0;
      }

      v6 = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*a1 + 24), 0x4Bu, 2u);
      v4 = *(*a1 + 24);
      if (v6)
      {
        v5 = 75;
        goto LABEL_16;
      }
    }

LABEL_15:
    v5 = 165;
    goto LABEL_16;
  }

  if (!a2)
  {
    v8 = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*a1 + 24), 0x2Au, 2u);
    v4 = *(*a1 + 24);
    if (v8)
    {
      v5 = 42;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a2 != 1)
  {
    return 0;
  }

  v3 = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*a1 + 24), 0x35u, 2u);
  v4 = *(*a1 + 24);
  if (!v3)
  {
    goto LABEL_15;
  }

  v5 = 53;
LABEL_16:

  return gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(v5, 2u, v4);
}

void *gdc::Context::context<md::RouteOverlayContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x13043386C0978CC2uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x13043386C0978CC2)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

float32x4_t occludedColorForColor(float32x4_t *a1, float32x4_t *a2)
{
  v2 = 0;
  v9 = 0x3F170A3D3E99999ALL;
  v10 = 1038174126;
  v3 = a2->i32[2];
  v7 = a2->i64[0];
  v8 = v3;
  v4 = 0;
  do
  {
    *v4.i32 = *v4.i32 + (*(&v9 + v2) * *(&v7 + v2));
    v2 += 4;
  }

  while (v2 != 12);
  v5 = vdupq_lane_s32(v4, 0);
  v5.i32[3] = HIDWORD(*a2);
  result = vmulq_f32(vmlaq_f32(*a2, vdupq_n_s32(0x3E19999Au), vsubq_f32(v5, *a2)), vdupq_n_s32(0x3F666666u));
  *a1 = result;
  return result;
}

unint64_t md::SinglePassRoutePipelineStateManager::pipelineStateForFunctionConstants(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  v13[0] = *a3;
  v13[1] = *(a3 + 1);
  *(&v14 + 5) = *(a3 + 2);
  result = ggl::packFunctionConstantKey(v13, a2);
  v6 = *(a2 + 104);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = (a2 + 104);
  do
  {
    v8 = v6[4];
    v9 = v8 >= result;
    v10 = v8 < result;
    if (v9)
    {
      v7 = v6;
    }

    v6 = v6[v10];
  }

  while (v6);
  if (v7 == (a2 + 104) || result < v7[4])
  {
LABEL_9:
    operator new();
  }

  v12 = v7[5];
  v11 = v7[6];
  *a1 = v12;
  a1[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B2B5DF70(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v4);
}

uint64_t md::RouteStyledOverlayBatch::StyleProperties::StyleProperties(uint64_t a1, uint64_t *a2, float a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1092616192;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  std::string::basic_string[abi:nn200100]<0>((a1 + 56), "");
  std::string::basic_string[abi:nn200100]<0>((a1 + 80), "");
  *(a1 + 104) = 1065353216;
  v6 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v210, v6, v7);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if ((v213 & 1) == 0)
  {
    if (GEOGetVectorKitRouteLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
    }

    v22 = GEOGetVectorKitRouteLog_log;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      LOWORD(v209.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_1B2754000, v22, OS_LOG_TYPE_INFO, "***RouteStyledOverlayBatch failed to get style for StyleProperties", &v209, 2u);
    }

    goto LABEL_261;
  }

  v8 = v210[3];
  if (a3 >= 0x17)
  {
    v9 = 23;
  }

  else
  {
    v9 = a3;
  }

  v10 = *v8;
  if (!*v8)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v11 = *v10;
  v12 = *v10 == 1.0;
  if (*(v8 + 10) != 1 || (v11 != 0.0 ? (v13 = v11 == 1.0) : (v13 = 1), v13))
  {
LABEL_16:
    v14 = *(v8 + v12 + 11);
    if (v14 != 2)
    {
      goto LABEL_32;
    }
  }

  v15 = *(v8 + 16);
  if (v15)
  {
    v16 = *(v15 + 72);
    if (v16)
    {
      v17 = *v16 + 120 * *(v16 + v9 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v17, 0x140u) != *(v17 + 12))
      {
        goto LABEL_35;
      }
    }

    if (*(v8 + 56))
    {
      v18 = *(v8 + 48);
      v19 = 8 * *(v8 + 56);
      while (1)
      {
        v20 = *(*v18 + 72);
        if (v20)
        {
          v21 = *v20 + 120 * *(v20 + v9 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v21, 0x140u) != *(v21 + 12))
          {
            goto LABEL_35;
          }
        }

        v18 += 8;
        v14 = 1;
        v19 -= 8;
        if (!v19)
        {
          goto LABEL_32;
        }
      }
    }
  }

  v14 = 1;
LABEL_32:
  v23 = *(v8 + 16 * v14 + 16);
  if (!v23)
  {
    goto LABEL_45;
  }

  v24 = *(v23 + 72);
  if (v24)
  {
    v25 = *v24 + 120 * *(v24 + v9 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v25, 0x140u) != *(v25 + 12))
    {
LABEL_35:
      v26 = fminf(fmaxf(a3, 0.0), 23.0);
      if (v10)
      {
        v27 = *v10;
        v28 = *v10 == 1.0;
        if (*(v8 + 10) == 1 && v27 != 0.0 && v27 != 1.0)
        {
          goto LABEL_274;
        }
      }

      else
      {
        v28 = 0;
      }

      v30 = *(v8 + v28 + 11);
      v27 = 0.0;
      if (v30 != 2)
      {
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v8, 320, v30, 0, v26);
LABEL_44:
        *a1 = v31;
        goto LABEL_45;
      }

LABEL_274:
      v209.__r_.__value_.__s.__data_[0] = 1;
      v214 = 1;
      v186 = v26;
      v187 = v27;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v8, 320, 0, &v209, v26);
      v189 = v188;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v8, 320, 1, &v214, v186);
      v31 = v189 + ((v190 - v189) * v187);
      goto LABEL_44;
    }
  }

  v43 = v8 + 16 * v14;
  if (*(v43 + 56))
  {
    v44 = *(v43 + 48);
    v45 = 8 * *(v43 + 56);
    do
    {
      v46 = *(*v44 + 72);
      if (v46)
      {
        v47 = *v46 + 120 * *(v46 + v9 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v47, 0x140u) != *(v47 + 12))
        {
          goto LABEL_35;
        }
      }

      v44 += 8;
      v45 -= 8;
    }

    while (v45);
  }

LABEL_45:
  if (!v10)
  {
    v33 = 0;
    goto LABEL_52;
  }

  v32 = *v10;
  v33 = *v10 == 1.0;
  if (*(v8 + 10) != 1 || (v32 != 0.0 ? (v34 = v32 == 1.0) : (v34 = 1), v34))
  {
LABEL_52:
    v35 = *(v8 + v33 + 11);
    if (v35 != 2)
    {
      goto LABEL_69;
    }
  }

  v36 = *(v8 + 16);
  if (v36)
  {
    v37 = *(v36 + 72);
    if (v37)
    {
      v38 = *v37 + 120 * *(v37 + v9 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v38, 0xC2u) != *(v38 + 12))
      {
        goto LABEL_72;
      }
    }

    if (*(v8 + 56))
    {
      v39 = *(v8 + 48);
      v40 = 8 * *(v8 + 56);
      while (1)
      {
        v41 = *(*v39 + 72);
        if (v41)
        {
          v42 = *v41 + 120 * *(v41 + v9 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v42, 0xC2u) != *(v42 + 12))
          {
            goto LABEL_72;
          }
        }

        v39 += 8;
        v35 = 1;
        v40 -= 8;
        if (!v40)
        {
          goto LABEL_69;
        }
      }
    }
  }

  v35 = 1;
LABEL_69:
  v48 = *(v8 + 16 * v35 + 16);
  if (!v48)
  {
    goto LABEL_82;
  }

  v49 = *(v48 + 72);
  if (v49)
  {
    v50 = *v49 + 120 * *(v49 + v9 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v50, 0xC2u) != *(v50 + 12))
    {
LABEL_72:
      v51 = fminf(fmaxf(a3, 0.0), 23.0);
      if (v10)
      {
        v52 = *v10;
        v53 = *v10 == 1.0;
        if (*(v8 + 10) == 1 && v52 != 0.0 && v52 != 1.0)
        {
          goto LABEL_275;
        }
      }

      else
      {
        v53 = 0;
      }

      v55 = *(v8 + v53 + 11);
      v52 = 0.0;
      if (v55 != 2)
      {
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v8, 194, v55, 0, v51);
LABEL_81:
        *(a1 + 12) = v56;
        goto LABEL_82;
      }

LABEL_275:
      v209.__r_.__value_.__s.__data_[0] = 1;
      v214 = 1;
      v191 = v51;
      v192 = v52;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v8, 194, 0, &v209, v51);
      v194 = v193;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v8, 194, 1, &v214, v191);
      v56 = v194 + ((v195 - v194) * v192);
      goto LABEL_81;
    }
  }

  v74 = v8 + 16 * v35;
  if (*(v74 + 56))
  {
    v75 = *(v74 + 48);
    v76 = 8 * *(v74 + 56);
    do
    {
      v77 = *(*v75 + 72);
      if (v77)
      {
        v78 = *v77 + 120 * *(v77 + v9 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v78, 0xC2u) != *(v78 + 12))
        {
          goto LABEL_72;
        }
      }

      v75 += 8;
      v76 -= 8;
    }

    while (v76);
  }

LABEL_82:
  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v8, 0x88u, 2u))
  {
    gss::RenderStyleHelper<gss::PropertyID,std::string>::valueForKey(&v209, 0x88u, 2, v210[3], 0);
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 56) = v209;
  }

  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v210[3], 0x1A7u, 2u))
  {
    gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<gm::Matrix<float,2,1>>(v210[3], 0x1A7u, fminf(fmaxf(a3, 0.0), 23.0));
    *(a1 + 20) = v57;
    *(a1 + 24) = v58;
  }

  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v210[3], 0x1ABu, 2u))
  {
    gss::RenderStyleHelper<gss::PropertyID,std::string>::valueForKey(&v209, 0x1ABu, 2, v210[3], 0);
    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    *(a1 + 80) = v209;
  }

  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v210[3], 0x1A5u, 2u))
  {
    gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<gm::Matrix<float,2,1>>(v210[3], 0x1A5u, fminf(fmaxf(a3, 0.0), 23.0));
    *(a1 + 36) = v59;
    *(a1 + 40) = v60;
  }

  v61 = v210[3];
  v62 = *v61;
  if (!*v61)
  {
    v64 = 0;
    goto LABEL_101;
  }

  v63 = *v62;
  v64 = *v62 == 1.0;
  if (*(v61 + 10) != 1 || (v63 != 0.0 ? (v65 = v63 == 1.0) : (v65 = 1), v65))
  {
LABEL_101:
    v66 = *(v61 + v64 + 11);
    if (v66 != 2)
    {
      goto LABEL_118;
    }
  }

  v67 = *(v61 + 16);
  if (v67)
  {
    v68 = *(v67 + 72);
    if (v68)
    {
      v69 = *v68 + 120 * *(v68 + v9 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v69, 0x1A9u) != *(v69 + 12))
      {
        goto LABEL_121;
      }
    }

    if (*(v61 + 56))
    {
      v70 = *(v61 + 48);
      v71 = 8 * *(v61 + 56);
      while (1)
      {
        v72 = *(*v70 + 72);
        if (v72)
        {
          v73 = *v72 + 120 * *(v72 + v9 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v73, 0x1A9u) != *(v73 + 12))
          {
            goto LABEL_121;
          }
        }

        v70 += 8;
        v66 = 1;
        v71 -= 8;
        if (!v71)
        {
          goto LABEL_118;
        }
      }
    }
  }

  v66 = 1;
LABEL_118:
  v79 = *(v61 + 16 * v66 + 16);
  if (!v79)
  {
    goto LABEL_131;
  }

  v80 = *(v79 + 72);
  if (v80)
  {
    v81 = *v80 + 120 * *(v80 + v9 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v81, 0x1A9u) != *(v81 + 12))
    {
LABEL_121:
      v82 = fminf(fmaxf(a3, 0.0), 23.0);
      if (v62)
      {
        v83 = *v62;
        v84 = *v62 == 1.0;
        if (*(v61 + 10) == 1 && v83 != 0.0 && v83 != 1.0)
        {
          goto LABEL_276;
        }
      }

      else
      {
        v84 = 0;
      }

      v86 = *(v61 + v84 + 11);
      v83 = 0.0;
      if (v86 != 2)
      {
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v61, 425, v86, 0, v82);
LABEL_130:
        *(a1 + 8) = v87;
        goto LABEL_131;
      }

LABEL_276:
      v209.__r_.__value_.__s.__data_[0] = 1;
      v214 = 1;
      v196 = v82;
      v197 = v83;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v61, 425, 0, &v209, v82);
      v199 = v198;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v61, 425, 1, &v214, v196);
      v87 = v199 + ((v200 - v199) * v197);
      goto LABEL_130;
    }
  }

  v99 = v61 + 16 * v66;
  if (*(v99 + 56))
  {
    v100 = *(v99 + 48);
    v101 = 8 * *(v99 + 56);
    do
    {
      v102 = *(*v100 + 72);
      if (v102)
      {
        v103 = *v102 + 120 * *(v102 + v9 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v103, 0x1A9u) != *(v103 + 12))
        {
          goto LABEL_121;
        }
      }

      v100 += 8;
      v101 -= 8;
    }

    while (v101);
  }

LABEL_131:
  if (!v62)
  {
    v89 = 0;
    goto LABEL_138;
  }

  v88 = *v62;
  v89 = *v62 == 1.0;
  if (*(v61 + 10) != 1 || (v88 != 0.0 ? (v90 = v88 == 1.0) : (v90 = 1), v90))
  {
LABEL_138:
    v91 = *(v61 + v89 + 11);
    if (v91 != 2)
    {
      goto LABEL_155;
    }
  }

  v92 = *(v61 + 16);
  if (v92)
  {
    v93 = *(v92 + 72);
    if (v93)
    {
      v94 = *v93 + 120 * *(v93 + v9 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v94, 0x1AAu) != *(v94 + 12))
      {
        goto LABEL_158;
      }
    }

    if (*(v61 + 56))
    {
      v95 = *(v61 + 48);
      v96 = 8 * *(v61 + 56);
      while (1)
      {
        v97 = *(*v95 + 72);
        if (v97)
        {
          v98 = *v97 + 120 * *(v97 + v9 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v98, 0x1AAu) != *(v98 + 12))
          {
            goto LABEL_158;
          }
        }

        v95 += 8;
        v91 = 1;
        v96 -= 8;
        if (!v96)
        {
          goto LABEL_155;
        }
      }
    }
  }

  v91 = 1;
LABEL_155:
  v104 = *(v61 + 16 * v91 + 16);
  if (!v104)
  {
    goto LABEL_168;
  }

  v105 = *(v104 + 72);
  if (v105)
  {
    v106 = *v105 + 120 * *(v105 + v9 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v106, 0x1AAu) != *(v106 + 12))
    {
LABEL_158:
      v107 = fminf(fmaxf(a3, 0.0), 23.0);
      if (v62)
      {
        v108 = *v62;
        v109 = *v62 == 1.0;
        if (*(v61 + 10) == 1 && v108 != 0.0 && v108 != 1.0)
        {
          goto LABEL_277;
        }
      }

      else
      {
        v109 = 0;
      }

      v111 = *(v61 + v109 + 11);
      v108 = 0.0;
      if (v111 != 2)
      {
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v61, 426, v111, 0, v107);
LABEL_167:
        *(a1 + 4) = v112;
        goto LABEL_168;
      }

LABEL_277:
      v209.__r_.__value_.__s.__data_[0] = 1;
      v214 = 1;
      v201 = v107;
      v202 = v108;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v61, 426, 0, &v209, v107);
      v204 = v203;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v61, 426, 1, &v214, v201);
      v112 = v204 + ((v205 - v204) * v202);
      goto LABEL_167;
    }
  }

  v124 = v61 + 16 * v91;
  if (*(v124 + 56))
  {
    v125 = *(v124 + 48);
    v126 = 8 * *(v124 + 56);
    do
    {
      v127 = *(*v125 + 72);
      if (v127)
      {
        v128 = *v127 + 120 * *(v127 + v9 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v128, 0x1AAu) != *(v128 + 12))
        {
          goto LABEL_158;
        }
      }

      v125 += 8;
      v126 -= 8;
    }

    while (v126);
  }

LABEL_168:
  if (!v62)
  {
    v114 = 0;
    goto LABEL_175;
  }

  v113 = *v62;
  v114 = *v62 == 1.0;
  if (*(v61 + 10) != 1 || (v113 != 0.0 ? (v115 = v113 == 1.0) : (v115 = 1), v115))
  {
LABEL_175:
    v116 = *(v61 + v114 + 11);
    if (v116 != 2)
    {
      goto LABEL_192;
    }
  }

  v117 = *(v61 + 16);
  if (v117)
  {
    v118 = *(v117 + 72);
    if (v118)
    {
      v119 = *v118 + 120 * *(v118 + v9 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v119, 0x1A6u) != *(v119 + 12))
      {
LABEL_195:
        gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<gm::Matrix<float,2,1>>(v61, 0x1A6u, fminf(fmaxf(a3, 0.0), 23.0));
        *(a1 + 44) = v132;
        *(a1 + 48) = v133;
        v61 = v210[3];
        v62 = *v61;
        goto LABEL_196;
      }
    }

    if (*(v61 + 56))
    {
      v120 = *(v61 + 48);
      v121 = 8 * *(v61 + 56);
      while (1)
      {
        v122 = *(*v120 + 72);
        if (v122)
        {
          v123 = *v122 + 120 * *(v122 + v9 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v123, 0x1A6u) != *(v123 + 12))
          {
            goto LABEL_195;
          }
        }

        v120 += 8;
        v116 = 1;
        v121 -= 8;
        if (!v121)
        {
          goto LABEL_192;
        }
      }
    }
  }

  v116 = 1;
LABEL_192:
  v129 = *(v61 + 16 * v116 + 16);
  if (!v129)
  {
    goto LABEL_196;
  }

  v130 = *(v129 + 72);
  if (v130)
  {
    v131 = *v130 + 120 * *(v130 + v9 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v131, 0x1A6u) != *(v131 + 12))
    {
      goto LABEL_195;
    }
  }

  v145 = v61 + 16 * v116;
  if (*(v145 + 56))
  {
    v146 = *(v145 + 48);
    v147 = 8 * *(v145 + 56);
    do
    {
      v148 = *(*v146 + 72);
      if (v148)
      {
        v149 = *v148 + 120 * *(v148 + v9 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v149, 0x1A6u) != *(v149 + 12))
        {
          goto LABEL_195;
        }
      }

      v146 += 8;
      v147 -= 8;
    }

    while (v147);
  }

LABEL_196:
  if (!v62)
  {
    v135 = 0;
    goto LABEL_203;
  }

  v134 = *v62;
  v135 = *v62 == 1.0;
  if (*(v61 + 10) != 1 || (v134 != 0.0 ? (v136 = v134 == 1.0) : (v136 = 1), v136))
  {
LABEL_203:
    v137 = *(v61 + v135 + 11);
    if (v137 != 2)
    {
      goto LABEL_220;
    }
  }

  v138 = *(v61 + 16);
  if (v138)
  {
    v139 = *(v138 + 72);
    if (v139)
    {
      v140 = *v139 + 120 * *(v139 + v9 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v140, 0x1A8u) != *(v140 + 12))
      {
LABEL_223:
        gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<gm::Matrix<float,2,1>>(v61, 0x1A8u, fminf(fmaxf(a3, 0.0), 23.0));
        *(a1 + 28) = v153;
        *(a1 + 32) = v154;
        v61 = v210[3];
        v62 = *v61;
        goto LABEL_224;
      }
    }

    if (*(v61 + 56))
    {
      v141 = *(v61 + 48);
      v142 = 8 * *(v61 + 56);
      while (1)
      {
        v143 = *(*v141 + 72);
        if (v143)
        {
          v144 = *v143 + 120 * *(v143 + v9 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v144, 0x1A8u) != *(v144 + 12))
          {
            goto LABEL_223;
          }
        }

        v141 += 8;
        v137 = 1;
        v142 -= 8;
        if (!v142)
        {
          goto LABEL_220;
        }
      }
    }
  }

  v137 = 1;
LABEL_220:
  v150 = *(v61 + 16 * v137 + 16);
  if (!v150)
  {
    goto LABEL_224;
  }

  v151 = *(v150 + 72);
  if (v151)
  {
    v152 = *v151 + 120 * *(v151 + v9 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v152, 0x1A8u) != *(v152 + 12))
    {
      goto LABEL_223;
    }
  }

  v166 = v61 + 16 * v137;
  if (*(v166 + 56))
  {
    v167 = *(v166 + 48);
    v168 = 8 * *(v166 + 56);
    do
    {
      v169 = *(*v167 + 72);
      if (v169)
      {
        v170 = *v169 + 120 * *(v169 + v9 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v170, 0x1A8u) != *(v170 + 12))
        {
          goto LABEL_223;
        }
      }

      v167 += 8;
      v168 -= 8;
    }

    while (v168);
  }

LABEL_224:
  if (v62)
  {
    v155 = *v62;
    v156 = *v62 == 1.0;
    if (*(v61 + 10) == 1 && v155 != 0.0 && v155 != 1.0)
    {
LABEL_232:
      v159 = *(v61 + 16);
      if (v159)
      {
        v160 = *(v159 + 72);
        if (v160)
        {
          v161 = *v160 + 120 * *(v160 + v9 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v161, 0x19Eu) != *(v161 + 12))
          {
            goto LABEL_251;
          }
        }

        if (*(v61 + 56))
        {
          v162 = *(v61 + 48);
          v163 = 8 * *(v61 + 56);
          while (1)
          {
            v164 = *(*v162 + 72);
            if (v164)
            {
              v165 = *v164 + 120 * *(v164 + v9 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v165, 0x19Eu) != *(v165 + 12))
              {
                goto LABEL_251;
              }
            }

            v162 += 8;
            v158 = 1;
            v163 -= 8;
            if (!v163)
            {
              goto LABEL_248;
            }
          }
        }
      }

      v158 = 1;
      goto LABEL_248;
    }
  }

  else
  {
    v156 = 0;
  }

  v158 = *(v61 + v156 + 11);
  if (v158 == 2)
  {
    goto LABEL_232;
  }

LABEL_248:
  v171 = *(v61 + 16 * v158 + 16);
  if (!v171)
  {
    goto LABEL_261;
  }

  v172 = *(v171 + 72);
  if (v172)
  {
    v173 = *v172 + 120 * *(v172 + v9 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v173, 0x19Eu) != *(v173 + 12))
    {
LABEL_251:
      v174 = fminf(fmaxf(a3, 0.0), 23.0);
      if (v62)
      {
        v175 = *v62;
        v176 = *v62 == 1.0;
        if (*(v61 + 10) == 1 && v175 != 0.0 && v175 != 1.0)
        {
          goto LABEL_278;
        }
      }

      else
      {
        v176 = 0;
      }

      v178 = *(v61 + v176 + 11);
      v175 = 0.0;
      if (v178 != 2)
      {
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v61, 414, v178, 0, v174);
LABEL_260:
        *(a1 + 16) = v179;
        goto LABEL_261;
      }

LABEL_278:
      v209.__r_.__value_.__s.__data_[0] = 1;
      v214 = 1;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v61, 414, 0, &v209, v174);
      v207 = v206;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v61, 414, 1, &v214, v174);
      v179 = v207 + ((v208 - v207) * v175);
      goto LABEL_260;
    }
  }

  v181 = v61 + 16 * v158;
  if (*(v181 + 56))
  {
    v182 = *(v181 + 48);
    v183 = 8 * *(v181 + 56);
    do
    {
      v184 = *(*v182 + 72);
      if (v184)
      {
        v185 = *v184 + 120 * *(v184 + v9 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v185, 0x19Eu) != *(v185 + 12))
        {
          goto LABEL_251;
        }
      }

      v182 += 8;
      v183 -= 8;
    }

    while (v183);
  }

LABEL_261:
  if (v213 == 1)
  {
    (*(*v210 + 56))(v210);
  }

  if (v212)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v212);
  }

  if (v211)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v211);
  }

  return a1;
}