void sub_1800A3EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = *(v15 + 24);
  v18 = v17;
  atomic_compare_exchange_strong_explicit(v14, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != v17)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *class_rw_t::methods(unint64_t *this, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 1) == 0)
  {
    v3 = *(a2 + 8);
    v4 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 32);
    if (v4)
    {
      v5 = (v4 & 1) == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v6 = v4 & 0xFFFFFFFFFFFFFFFELL;
      if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        goto LABEL_11;
      }
    }

    else if ((v4 & 1) != 0 && (v4 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFFFFCLL | 2;
LABEL_11:
      v8 = v6;
      goto LABEL_13;
    }

    v8 = 0;
    goto LABEL_13;
  }

  v7 = *(a2 + 8);
  *this = 0;
  v8 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_13:
  *this = v8;
  return this;
}

void *list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::ListIterator::ListIterator(void *result, uint64_t a2)
{
  v2 = *a2;
  *result = *a2;
  v3 = *v2;
  if (!*v2)
  {
LABEL_4:
    if (*(a2 + 8))
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = 0;
    }

    result[1] = v5;
    return result;
  }

  v4 = *v2;
  if ((v3 & 3u) <= 1uLL)
  {
    if ((v3 & 3) != 0)
    {
      result[1] = *(a2 + 8);
      return result;
    }

    goto LABEL_4;
  }

  if ((v3 & 3) == 2)
  {
    v6 = *(a2 + 8);
    result[3] = *(a2 + 24);
    *(result + 1) = v6;
  }

  return result;
}

uint64_t entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::signedEnd(uint64_t result, unsigned int *a2, const char *a3, char *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = *a2 & 0xFFFC;
  *(result + 4) = v4;
  v6 = v4 * (v5 & 0xFFFC);
  if ((v6 & 0xFFFFFFFF00000000) != 0)
  {
    _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v4, a2, v5 & 0xFFFC);
  }

  v7 = v5 >> 31;
  if (a2 < 0)
  {
    v7 = 2;
  }

  *(result + 8) = (a2 + v6 + 8) & 0xFFFFFFFFFFFFFFFCLL | v7;
  return result;
}

uint64_t method_t::getCachedDescription(uint64_t this)
{
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  if ((byte_1ED3F57A8 & 1) == 0)
  {
    objc::methodDescriptionMap = 0uLL;
    dword_1ED3F57A0 = 0;
    byte_1ED3F57A8 = 1;
  }

  v15 = 0;
  v4 = objc::DenseMapBase<objc::DenseMap<method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>,method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>::LookupBucketFor<method_t const*>(this, &v15);
  v5 = v15;
  if (v4)
  {
    v7 = v15 + 1;
    v6 = v15[1];
    if (v6)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  if (4 * DWORD2(objc::methodDescriptionMap) + 4 >= (3 * dword_1ED3F57A0))
  {
    objc::DenseMap<method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>::grow(2 * dword_1ED3F57A0);
    v15 = 0;
    objc::DenseMapBase<objc::DenseMap<method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>,method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>::LookupBucketFor<method_t const*>(this, &v15);
LABEL_31:
    v5 = v15;
    goto LABEL_10;
  }

  if (dword_1ED3F57A0 + ~DWORD2(objc::methodDescriptionMap) - HIDWORD(objc::methodDescriptionMap) <= dword_1ED3F57A0 >> 3)
  {
    objc::DenseMap<method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>::grow(dword_1ED3F57A0);
    v15 = 0;
    objc::DenseMapBase<objc::DenseMap<method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>,method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>::LookupBucketFor<method_t const*>(this, &v15);
    goto LABEL_31;
  }

LABEL_10:
  if (*v5 == -2)
  {
    *(&objc::methodDescriptionMap + 1) = vadd_s32(*(&objc::methodDescriptionMap + 8), 0xFFFFFFFF00000001);
  }

  else if (*v5 == -1)
  {
    ++DWORD2(objc::methodDescriptionMap);
  }

  *v5 = this;
  v5[1] = 0;
  v7 = v5 + 1;
LABEL_15:
  v8 = malloc_type_malloc(0x10uLL, 0x90040C859B4A5uLL);
  *v7 = v8;
  if ((this & 3u) > 1)
  {
    if ((this & 3) == 2)
    {
      v9 = *(this & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *(this & 0xFFFFFFFFFFFFFFFCLL);
      }
    }
  }

  else if ((this & 3) != 0)
  {
    v11 = (this & 0xFFFFFFFFFFFFFFFCLL);
    if (dataSegmentsRanges > (this & 0xFFFFFFFFFFFFFFFCLL) || *algn_1ED3F62F8 <= v11)
    {
      v9 = *(v11 + *v11);
    }

    else
    {
      v9 = &byte_1FA920D78[*v11];
    }
  }

  else
  {
    v9 = *(this & 0xFFFFFFFFFFFFFFFCLL);
  }

  *v8 = v9;
  *(*v7 + 8) = method_t::types(this);
  v6 = *v7;
LABEL_26:
  v12 = *(StatusReg + 24);
  v13 = v12;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != v12)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v6;
}

void sub_1800A4400(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void map_images_nolock(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v267 = a4;
  v256 = a2;
  v275 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00]();
  v259 = &v249 - v5;
  v258 = v6;
  *v6 = 0;
  if (map_images_nolock::firstTime)
  {
    loadAllCategoriesIfNeeded();
  }

  else
  {
    size[0] = 0;
    shared_cache_range = _dyld_get_shared_cache_range();
    if (shared_cache_range)
    {
      dataSegmentsRanges = shared_cache_range;
      *algn_1ED3F62F8 = shared_cache_range + size[0];
      objc::SafeRanges::add(shared_cache_range, shared_cache_range + size[0]);
    }

    headerInfoROs = _dyld_for_objc_header_opt_ro();
    objc_debug_headerInfoRWs = _dyld_for_objc_header_opt_rw();
    opt = &_objc_opt_data;
    if (DisablePreopt)
    {
      v8 = "(by OBJC_DISABLE_PREOPTIMIZATION)";
    }

    else if (headerInfoROs)
    {
      v8 = "libobjc is not in the shared cache";
      if (dataSegmentsRanges <= &_objc_empty_cache && *algn_1ED3F62F8 > &_objc_empty_cache)
      {
        preoptimized = 1;
        if (PrintPreopt)
        {
          _objc_inform("PREOPTIMIZATION: is ENABLED (version %d)", 16);
        }

        goto LABEL_9;
      }
    }

    else
    {
      v8 = "(dyld shared cache is absent or out of date)";
    }

    preoptimized = 0;
    opt = 0;
    fixed_up_protocol = 1;
    canonical_protocol = 1;
    if (PrintPreopt)
    {
      _objc_inform("PREOPTIMIZATION: is DISABLED %s", v8);
    }
  }

LABEL_9:
  v253 = a1;
  if (PrintImages)
  {
    _objc_inform("IMAGES: processing %u newly-mapped images...\n", a1);
  }

  prog_image_header = _dyld_get_prog_image_header();
  v252 = a1;
  if (!a1)
  {
    v266 = 0;
    LODWORD(v264) = 0;
    v72 = 0;
    goto LABEL_116;
  }

  LODWORD(a1) = 0;
  v257 = 0;
  LODWORD(v264) = 0;
  v266 = 0;
  v260 = *algn_1ED3F62F8;
  v261 = dataSegmentsRanges;
  v11 = v253;
  do
  {
    --v11;
    v12 = &v256[4 * v11];
    v13 = *v12;
    v14 = v12[2];
    v15 = a1;
    if (!headerInfoROs || (v16 = *headerInfoROs, (*headerInfoROs & 0x80000000) != 0))
    {
LABEL_21:
      magic = v13->magic;
      if (v13->magic + 17958194 >= 2 && magic != -805638658 && magic != -822415874)
      {
        continue;
      }

      size[0] = 0;
      v26 = _dyld_lookup_section_info();
      if (!getsegmentdata(v13, "__OBJC", size) && v26 == 0)
      {
        continue;
      }

      v28 = malloc_type_calloc(0x20uLL, 1uLL, 0x1000040504FFAC1uLL);
      v21 = v28;
      v29 = &addHeader(mach_header_64 const*,char const*,_dyld_section_location_info_s *,int &,int &)::emptyInfo;
      if (v26)
      {
        v29 = v26;
      }

      *v28 = v13 - v28;
      *(v28 + 1) = v29 - (v28 + 8);
      *(v28 + 2) = v14 - (v28 + 16);
      PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v28);
      v31 = (v21 + 24);
      if (PreoptimizedHeaderRW)
      {
        v31 = PreoptimizedHeaderRW;
      }

      *v31 |= 1uLL;
      v32 = 1;
LABEL_45:
      size[0] = 0;
      v37 = header_info::classlist(v21, size);
      v38 = size[0];
      if (v32)
      {
        v39 = size[0];
      }

      else
      {
        v39 = 0;
      }

      if (!v37)
      {
        v38 = 0;
      }

      LODWORD(v263) = v38;
      if (v37)
      {
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }

      v41 = getPreoptimizedHeaderRW(v21);
      v42 = (v21 + 24);
      if (v41)
      {
        v42 = v41;
      }

      *v42 &= 3uLL;
      if (FirstHeader)
      {
        i = LastHeader;
        v44 = v15;
        if (!LastHeader)
        {
          for (i = FirstHeader; ; i = v55 & 0xFFFFFFFFFFFFFFFCLL)
          {
            LastHeader = i;
            v53 = getPreoptimizedHeaderRW(i);
            v54 = (i + 24);
            if (v53)
            {
              v54 = v53;
            }

            v55 = *v54;
            if (v55 < 4)
            {
              break;
            }
          }
        }

        v45 = getPreoptimizedHeaderRW(i);
        v46 = (i + 24);
        if (v45)
        {
          v46 = v45;
        }

        *v46 = v21 & 0xFFFFFFFFFFFFFFFCLL | *v46 & 3;
        LastHeader = v21;
      }

      else
      {
        LastHeader = v21;
        FirstHeader = v21;
        v44 = v15;
      }

      v47 = *v21 + v21;
      if (v261 > v47 || v260 <= v47)
      {
        LODWORD(v265) = v40;
        size[0] = &unk_1EEE9B500;
        v273 = size;
        v49 = *(v47 + 16);
        if (v49)
        {
          v50 = v47 + 32;
          v51 = *(v47 + 16);
          v52 = v47 + 32;
          while (*v52 != 25 || strncmp((v52 + 8), "__TEXT", 0x10uLL))
          {
            v52 += *(v52 + 4);
            if (!--v51)
            {
              goto LABEL_77;
            }
          }

          v51 = v47 - *(v52 + 24);
LABEL_77:
          for (j = 0; j < v49; ++j)
          {
            if (*v50 == 25 && (!strncmp((v50 + 8), "__DATA", 6uLL) || !strncmp((v50 + 8), "__AUTH", 6uLL)))
            {
              (std::function<void ()(segment_command_64 const*,long)>::operator())(v273, v50, v51);
              v49 = *(v47 + 16);
            }

            v50 += *(v50 + 4);
          }
        }

        std::__function::__value_func<void ()(segment_command_64 const*,long)>::~__value_func[abi:nn200100](size);
        v44 = v15;
        v40 = v265;
      }

      *size = *v12;
      *(&v57 + 1) = size[1];
      v272 = v12[2];
      *&v57 = v12[3];
      v265 = v57;
      if (v13 != prog_image_header)
      {
LABEL_103:
        v66 = &v259[40 * v44];
        *v66 = v21;
        *(v66 + 8) = *size;
        *(v66 + 3) = v272;
        *(v66 + 4) = v265;
        if (PrintImages)
        {
          v67 = *v21;
          v68 = dyld_image_path_containing_address();
          v69 = " (bundle)";
          if (v13->filetype != 8)
          {
            v69 = "";
          }

          v70 = " (has class properties)";
          if ((*(*(v21 + 8) + v21 + 8 + 4) & 0x40) == 0)
          {
            v70 = "";
          }

          v71 = " (preoptimized)";
          if ((*(*(v21 + 8) + v21 + 8 + 4) & 8) == 0)
          {
            v71 = "";
          }

          _objc_inform("IMAGES: loading image for %s%s%s%s\n", v68, v69, v70, v71);
        }

        v266 = (v263 + v266);
        LODWORD(v264) = v40 + v264;
        LODWORD(a1) = v15 + 1;
        continue;
      }

      if (v57)
      {
        if ((preoptimized & 1) == 0)
        {
          v64 = *v21 + v21;
LABEL_99:
          v65 = *(v21 + 16) + v21 + 16;
LABEL_100:
          if (hasSignedClassROPointers(v64))
          {
            map_images_nolock::executableHasClassROSigning = 1;
          }

          v44 = v15;
          goto LABEL_103;
        }

        v268[0] = 0;
        header_info::selrefs(v21, v268);
        if (preoptimized != 1 || (*(*(v21 + 8) + v21 + 8 + 4) & 8) == 0 || *(headerInfoROs + 4) >= 0x18u)
        {
          v58 = *(v21 + 16) + v21 + 16;
        }

        v59 = v268[0];
        v60 = *v21;
        v61 = _dyld_lookup_section_info();
        v63 = v62 >> 4;
        if (!v61)
        {
          v63 = 0;
        }

        v257 += v59 + v63;
      }

      v64 = *v21 + v21;
      if (preoptimized == 1 && (*(*(v21 + 8) + v21 + 8 + 4) & 8) != 0 && *(headerInfoROs + 4) < 0x18u)
      {
        goto LABEL_100;
      }

      goto LABEL_99;
    }

    v17 = 0;
    v18 = headerInfoROs + 8;
    v19 = *(headerInfoROs + 4);
    while (1)
    {
      v20 = (v17 + v16) >> 1;
      v21 = v18 + v19 * v20;
      v22 = (*v21 + v21);
      if (v13 == v22)
      {
        break;
      }

      if (v13 >= v22)
      {
        v17 = v20 + 1;
      }

      else
      {
        v16 = v20 - 1;
      }

      if (v17 > v16)
      {
        goto LABEL_21;
      }
    }

    v33 = getPreoptimizedHeaderRW(v18 + v19 * v20);
    v34 = (v21 + 24);
    if (v33)
    {
      v34 = v33;
    }

    if ((*v34 & 1) == 0)
    {
      *v34 |= 1uLL;
      if (PrintPreopt)
      {
        v35 = *v21;
        v36 = dyld_image_path_containing_address();
        _objc_inform("PREOPTIMIZATION: honoring preoptimized header info at %p for %s", v21, v36);
      }

      v32 = 0;
      goto LABEL_45;
    }
  }

  while (v11);
  v72 = v257;
LABEL_116:
  LODWORD(v265) = a1;
  if ((map_images_nolock::firstTime & 1) == 0)
  {
    if (PrintPreopt)
    {
      v73 = v72;
      _objc_inform("PREOPTIMIZATION: using dyld selector opt");
      v72 = v73;
    }

    if (v72)
    {
      v74 = (4 * v72 / 3u + 1) | ((4 * v72 / 3u + 1) >> 1);
      v75 = v74 | (v74 >> 2) | ((v74 | (v74 >> 2)) >> 4);
      dword_1ED3F60A0 = (v75 | (v75 >> 8) | ((v75 | (v75 >> 8)) >> 16)) + 1;
      v76 = malloc_type_malloc(8 * dword_1ED3F60A0, 0xAC185C46uLL);
      if (v76)
      {
        namedSelectors = v76;
      }

      else
      {
        namedSelectors = 0;
      }

      *algn_1ED3F6098 = 0;
      if (dword_1ED3F60A0)
      {
        memset(v76, 255, 8 * dword_1ED3F60A0);
      }
    }

    else
    {
      namedSelectors = 0;
      *algn_1ED3F6098 = 0;
      dword_1ED3F60A0 = 0;
    }

    v77 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(&selLock, &v77, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v77)
    {
      os_unfair_lock_lock_with_options();
    }

    SEL_cxx_construct = __sel_registerName(".cxx_construct", 0, 0);
    SEL_cxx_destruct = __sel_registerName(".cxx_destruct", 0, 0);
    v79 = *(StatusReg + 24);
    v80 = v79;
    atomic_compare_exchange_strong_explicit(&selLock, &v80, 0, memory_order_release, memory_order_relaxed);
    if (v80 != v79)
    {
      os_unfair_lock_unlock(&selLock);
    }

    objc::AssociationsManager::_mapStorage = 0uLL;
    dword_1ED3F5F58 = 0;
    pthread_key_init_np();
    pthread_key_init_np();
    if (DebugScanWeakTables)
    {
      _objc_inform("Starting background scan of weak references.");
      size[0] = 0;
      v81 = pthread_create(size, 0, weakTableScanThread, 0);
      v82 = v81;
      if (v81)
      {
        v245 = strerror(v81);
        _objc_fatal("pthread_create failed with error %d (%s)", v246, v247, v248, v82, v245);
      }

      pthread_detach(size[0]);
    }

    v83 = _dyld_get_prog_image_header();
    if (v83)
    {
      if (*(v83 + 4) == 16777228 && (*(v83 + 8) & 0xFFFFFF) == 2)
      {
        map_images_nolock::executableIsARM64e = 1;
        goto LABEL_143;
      }
    }
  }

  if (map_images_nolock::executableIsARM64e == 1)
  {
LABEL_143:
    if (DebugClassRXSigning)
    {
      v84 = map_images_nolock::executableHasClassROSigning;
    }

    else
    {
      v84 = 0;
    }

    if (!v265)
    {
      goto LABEL_433;
    }

    v85 = v265;
    v86 = v259;
    while (1)
    {
      v87 = *v86;
      if (preoptimized != 1 || (*(v87 + v87[1] + 12) & 8) == 0 || *(headerInfoROs + 4) >= 0x18u)
      {
        v88 = v87 + v87[2] + 16;
      }

      if (hasSignedClassROPointers(v87 + *v87))
      {
        goto LABEL_158;
      }

      if (objc::disableEnforceClassRXPtrAuth)
      {
        break;
      }

      *v258 = 1;
      objc::disableEnforceClassRXPtrAuth = 1;
      if (v84)
      {
        goto LABEL_157;
      }

LABEL_158:
      v86 += 5;
      if (!--v85)
      {
        goto LABEL_161;
      }
    }

    if (!v84)
    {
      goto LABEL_158;
    }

LABEL_157:
    v89 = *v87;
    v90 = dyld_image_path_containing_address();
    _objc_inform("%s has un-signed class_ro_t pointers, but the main executable was compiled with class_ro_t pointer signing enabled", v90);
    goto LABEL_158;
  }

LABEL_161:
  if (!v265)
  {
    goto LABEL_433;
  }

  v270 = 0;
  v254 = _read_images::doneOnce;
  if ((_read_images::doneOnce & 1) == 0)
  {
    _read_images::doneOnce = 1;
    if (DisableTaggedPointers)
    {
      objc_debug_taggedpointer_mask = 0;
      objc_debug_taggedpointer_slot_shift = 0;
      objc_debug_taggedpointer_slot_mask = 0;
      objc_debug_taggedpointer_payload_lshift = 0;
      objc_debug_taggedpointer_payload_rshift = 0;
      objc_debug_taggedpointer_ext_mask = 0;
      objc_debug_taggedpointer_ext_slot_shift = 0;
      objc_debug_taggedpointer_ext_slot_mask = 0;
      objc_debug_taggedpointer_ext_payload_lshift = 0;
      objc_debug_taggedpointer_ext_payload_rshift = 0;
    }

    if (DisableTaggedPointerObfuscation || !dyld_program_sdk_at_least())
    {
      objc_debug_taggedpointer_obfuscator = 0;
    }

    else
    {
      arc4random_buf(&objc_debug_taggedpointer_obfuscator, 8uLL);
      objc_debug_taggedpointer_obfuscator &= 0x3FFFFFFFFFFFFFF8uLL;
      for (k = 6u; k != -1; --k)
      {
        v92 = arc4random_uniform(k + 1);
        v93 = objc_debug_tag60_permutations[k];
        objc_debug_tag60_permutations[k] = objc_debug_tag60_permutations[v92];
        objc_debug_tag60_permutations[v92] = v93;
      }
    }

    if (PrintConnecting)
    {
      _objc_inform("CLASS: found %d classes during launch", v266);
    }

    v94 = v264;
    if (!preoptimized)
    {
      v94 = v266;
    }

    v95 = 5726623064 * v94;
    size[1] = _mapStrIsEqual;
    v272 = _mapNoFree;
    LODWORD(v273) = 0;
    size[0] = namedClassTableHashCallback;
    v96 = v95 >> 63;
    v97 = HIDWORD(v95);
    v268[0] = namedClassTableHashCallback;
    if (_mapStrIsEqual)
    {
      v98 = _mapStrIsEqual;
    }

    else
    {
      v98 = 0;
    }

    v268[1] = v98;
    if (_mapNoFree)
    {
      v99 = _mapNoFree;
    }

    else
    {
      v99 = 0;
    }

    v268[2] = v99;
    v269 = 0;
    gdb_objc_realized_classes = NXCreateMapTable(v268, v97 + v96);
  }

  v100 = 0;
  v101 = v265;
  v250 = v265;
  v102 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&selLock, &v100, *(v102 + 24), memory_order_acquire, memory_order_acquire);
  if (v100)
  {
    os_unfair_lock_lock_with_options();
  }

  v103 = v259;
  prog_image_header = &v259[40 * v250];
  v264 = v267 + 16;
  do
  {
    if ((v103[32] & 1) == 0 || (preoptimized & 1) == 0)
    {
      v104 = *(**v103 + *v103 + 12);
      v105 = header_info::selrefs(*v103, &v270);
      v106 = v270;
      _read_images::UnfixedSelectors += v270;
      if (v270)
      {
        v107 = v105;
        v108 = ~(-858993459 * ((v103 - v259) >> 3));
        do
        {
          v109 = __sel_registerName(*v107, 0, v104 == 8);
          if (*v107 != v109)
          {
            (*(v267 + 16))(v267, (v101 + v108));
            if ((v103[32] & 2) == 0 || !MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
            {
              goto LABEL_205;
            }

            if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
            {
LABEL_457:
              __break(1u);
              return;
            }

            if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) == 0)
            {
              if (!MEMORY[0xFFFFFC10C])
              {
                goto LABEL_457;
              }

              if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
              {
                goto LABEL_457;
              }

              v110 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v110 & 0xFE) != 2)
              {
                goto LABEL_457;
              }

              _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
              __isb(0xFu);
              v111 = MEMORY[0xFFFFFC0D0];
              if (v111 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
              {
                goto LABEL_457;
              }

              *v107 = v109;
              if (!MEMORY[0xFFFFFC10C])
              {
                goto LABEL_457;
              }

              if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
              {
                goto LABEL_457;
              }

              v112 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v112 & 0xFE) != 2)
              {
                goto LABEL_457;
              }

              _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
              __isb(0xFu);
              v113 = MEMORY[0xFFFFFC0D8];
              if (v113 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
              {
                goto LABEL_457;
              }
            }

            else
            {
LABEL_205:
              *v107 = v109;
            }
          }

          ++v107;
          --v106;
        }

        while (v106);
      }
    }

    v103 += 40;
  }

  while (v103 != prog_image_header);
  v114 = *(v102 + 24);
  v115 = v114;
  atomic_compare_exchange_strong_explicit(&selLock, &v115, 0, memory_order_release, memory_order_relaxed);
  if (v115 != v114)
  {
    os_unfair_lock_unlock(&selLock);
  }

  LODWORD(v263) = dyld_shared_cache_some_image_overridden();
  v116 = 0;
  v266 = 0;
  v117 = v259;
  while (2)
  {
    v118 = *v117;
    v119 = *(v117 + 8);
    if ((v119 & 1) != 0 && preoptimized == 1)
    {
      v120 = v263;
      if ((*(opt + 4) & 2) == 0)
      {
        v120 = 1;
      }

      v121 = "the image may contain classes with missing weak superclasses";
      if ((v120 & 1) != 0 || future_named_class_map && (v121 = "there are unresolved future classes pending", *(future_named_class_map + 8)))
      {
        if (PrintPreopt)
        {
          v122 = *v118;
          v123 = dyld_image_path_containing_address();
          _objc_inform("PREOPTIMIZATION: reading classes manually from %s because %s", v123, v121);
        }

        goto LABEL_220;
      }
    }

    else
    {
LABEL_220:
      v124 = header_info::classlist(v118, &v270);
      v125 = v270;
      if (v270)
      {
        v126 = v124;
        v127 = 0;
        v128 = v119 & 1;
        v129 = *(v118 + *v118 + 12);
        v130 = preoptimized;
        do
        {
          v131 = *(v126 + 8 * v127);
          Class = readClass(v131, v129 == 8, v128 & v130);
          v133 = Class;
          if (Class != v131 && Class != 0)
          {
            v135 = v266 + 1;
            v116 = malloc_type_realloc(v116, 8 * (v266 + 1), 0x80040B8603338uLL);
            *(v116 + v266) = v133;
            v125 = v270;
            v266 = v135;
          }

          ++v127;
        }

        while (v127 < v125);
      }
    }

    v117 += 40;
    if (v117 != prog_image_header)
    {
      continue;
    }

    break;
  }

  if (byte_1ED3F5988 == 1)
  {
    v136 = v259;
    do
    {
      v137 = *v136;
      if (preoptimized != 1 || (*(v137 + v137[1] + 12) & 8) == 0 || *(headerInfoROs + 4) >= 0x18u)
      {
        v138 = v137 + v137[2] + 16;
      }

      v139 = *v137;
      v141 = _dyld_lookup_section_info();
      v142 = ~(-858993459 * ((v136 - v259) >> 3));
      if (v141)
      {
        v143 = v140 >= 8;
      }

      else
      {
        v143 = 0;
      }

      if (v143)
      {
        v144 = v140 >> 3;
        do
        {
          remapClassRef(v141++, (v265 + v142), (*(v136 + 8) >> 1) & 1, v267);
          --v144;
        }

        while (v144);
      }

      v145 = *v136;
      if (preoptimized != 1 || (*(v145 + v145[1] + 12) & 8) == 0 || *(headerInfoROs + 4) >= 0x18u)
      {
        v146 = v145 + v145[2] + 16;
      }

      v147 = *v145;
      v149 = _dyld_lookup_section_info();
      if (v149)
      {
        v150 = v148 >> 3;
      }

      else
      {
        v150 = 0;
      }

      if (v150)
      {
        v151 = v150;
        do
        {
          remapClassRef(v149++, (v265 + v142), (*(v136 + 8) >> 1) & 1, v267);
          --v151;
        }

        while (v151);
      }

      v136 += 40;
    }

    while (v136 != prog_image_header);
    v270 = v150;
  }

  v251 = &v272;
  v255 = *algn_1ED3F62F8;
  v258 = dataSegmentsRanges;
  v257 = Protocol >> 55;
  v152 = v259;
  while (2)
  {
    v263 = protocols();
    if ((v152[32] & 1) == 0)
    {
      v153 = 0;
      goto LABEL_261;
    }

    if (v254 & 1 | ((preoptimized & 1) == 0))
    {
      v153 = preoptimized & 1;
LABEL_261:
      v154 = *(**v152 + *v152 + 12);
      v155 = header_info::protocollist(*v152, &v270);
      v156 = v270;
      if (v270)
      {
        v157 = v155;
        LODWORD(v260) = ~(-858993459 * ((v152 - v259) >> 3));
        v158 = NXMapInsert;
        if (v154 == 8)
        {
          v158 = NXMapKeyCopyingInsert;
        }

        v261 = v158;
        do
        {
          v159 = *v157;
          v160 = *(v152 + 8);
          Protocol = getProtocol(*(*v157 + 8));
          v162 = Protocol;
          if (Protocol)
          {
            if (Protocol != v159)
            {
              if (PrintProtocols)
              {
                v163 = protocol_t::demangledName(Protocol);
                _objc_inform("PROTOCOLS: protocol at %p is %s  (duplicate of %p)", v159, v163, v162);
              }

              if (v153)
              {
                v164 = canonical_protocol ? 0 : 0x20000000;
                if (v164 & *(v162 + 17)) == 0 && !DisablePreopt && (preoptimized)
                {
                  v165 = v159[1];
                  v268[0] = 0;
                  size[0] = MEMORY[0x1E69E9820];
                  size[1] = 3321888768;
                  v272 = __getSharedCachePreoptimizedProtocol_block_invoke;
                  v273 = &__block_descriptor_40_e8_32c47_ZTSKZ34getSharedCachePreoptimizedProtocolE3__0_e16_v28__0_v8B16_B20l;
                  v274 = v268;
                  _dyld_for_each_objc_protocol();
                  if (v268[0])
                  {
                    v166 = *(v268[0] + 68);
                    v167 = canonical_protocol ? 0 : 0x20000000;
                    if ((v167 & v166) != 0)
                    {
                      if (canonical_protocol)
                      {
                        v168 = -1;
                      }

                      else
                      {
                        v168 = -536870913;
                      }

                      *(v268[0] + 68) = v168 & v166;
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (!v153)
            {
              (*(v267 + 16))(v267, (v265 + v260));
              v179 = 0;
              v180 = 0;
              if (v258 <= v159)
              {
                if (v255 <= v159)
                {
                  goto LABEL_300;
                }

                if (preoptimized)
                {
                  v180 = 0;
                  v179 = 0;
                  if ((v160 & 2) == 0)
                  {
                    goto LABEL_324;
                  }

LABEL_306:
                  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
                  {
                    goto LABEL_324;
                  }

                  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
                  {
                    goto LABEL_457;
                  }

                  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) == 0)
                  {
                    if (!MEMORY[0xFFFFFC10C])
                    {
                      goto LABEL_457;
                    }

                    if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
                    {
                      goto LABEL_457;
                    }

                    v181 = MEMORY[0xFFFFFC10C];
                    __dmb(0xAu);
                    if ((v181 & 0xFE) != 2)
                    {
                      goto LABEL_457;
                    }

                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                    __isb(0xFu);
                    v182 = MEMORY[0xFFFFFC0D0];
                    if (v182 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
                      goto LABEL_457;
                    }

                    if (v257)
                    {
                      _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", 0xFFFFFC0D0, v175, v176, Protocol);
                    }

                    *v159 = Protocol & 0x7FFFFFFFFFFFF8;
                    if (v180)
                    {
                      v159[10] = v179;
                    }

                    if (!MEMORY[0xFFFFFC10C])
                    {
                      goto LABEL_457;
                    }

                    if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
                    {
                      goto LABEL_457;
                    }

                    v183 = MEMORY[0xFFFFFC10C];
                    __dmb(0xAu);
                    if ((v183 & 0xFE) != 2)
                    {
                      goto LABEL_457;
                    }

                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                    __isb(0xFu);
                    v184 = MEMORY[0xFFFFFC0D8];
                    if (v184 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
                      goto LABEL_457;
                    }

                    if (!v180)
                    {
                      goto LABEL_332;
                    }

LABEL_327:
                    if (fixed_up_protocol)
                    {
                      v185 = -1073741824;
                    }

                    else
                    {
                      v185 = 0x40000000;
                    }

                    if ((*(v159 + 17) & 0xC0000000) != v185)
                    {
                      fixupProtocol(v159, (v265 + v260), (v160 >> 1) & 1, v267, v177, v178);
                    }

                    goto LABEL_332;
                  }

                  if (v257)
                  {
                    _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", v174, v175, v176, Protocol);
                  }

LABEL_325:
                  *v159 = Protocol & 0x7FFFFFFFFFFFF8;
                  if (v180)
                  {
                    v159[10] = v179;
                    goto LABEL_327;
                  }

LABEL_332:
                  v261(v263, v159[1], v159);
                  if (PrintProtocols)
                  {
                    v186 = protocol_t::demangledName(v159);
                    _objc_inform("PROTOCOLS: protocol at %p is %s", v159, v186);
                  }

                  goto LABEL_334;
                }

                if ((v159 + *(v159 + 16)) <= v159 + 10 || v159[10])
                {
                  v179 = 0;
                  v180 = 1;
LABEL_300:
                  if ((v160 & 2) == 0)
                  {
                    goto LABEL_324;
                  }

                  goto LABEL_306;
                }

                v179 = copySwiftV1DemangledName(v159[1], 1);
                if (!v179)
                {
                  v179 = v159[1];
                }

                v180 = 1;
              }

              if ((v160 & 2) != 0)
              {
                goto LABEL_306;
              }

LABEL_324:
              if (v257)
              {
                _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", v174, v175, v176, Protocol);
              }

              goto LABEL_325;
            }

            v169 = v159[1];
            PreoptimizedProtocol = getPreoptimizedProtocol();
            if (PreoptimizedProtocol)
            {
              v171 = PreoptimizedProtocol;
            }

            else
            {
              v171 = v159;
            }

            v261(v263, v171[1], v171);
            if (PrintProtocols)
            {
              v172 = protocol_t::demangledName(v171);
              _objc_inform("PROTOCOLS: protocol at %p is %s", v171, v172);
              if (v171 != v159)
              {
                v173 = protocol_t::demangledName(v171);
                _objc_inform("PROTOCOLS: protocol at %p is %s  (duplicate of %p)", v159, v173, v171);
              }
            }
          }

LABEL_334:
          v157 += 8;
          --v156;
        }

        while (v156);
      }
    }

    else if (PrintProtocols)
    {
      v187 = **v152;
      v188 = dyld_image_path_containing_address();
      _objc_inform("PROTOCOLS: Skipping reading protocols in image: %s", v188);
    }

    v152 += 40;
    if (v152 != prog_image_header)
    {
      continue;
    }

    break;
  }

  v189 = v270;
  v190 = v259;
  while (2)
  {
    v191 = *v190;
    if (v254)
    {
      if (!preoptimized)
      {
        goto LABEL_349;
      }

LABEL_347:
      if ((*(v191 + v191[1] + 12) & 8) == 0 || *(headerInfoROs + 4) >= 0x18u)
      {
LABEL_349:
        v192 = v191 + v191[2] + 16;
      }

      v193 = *v191;
      v195 = _dyld_lookup_section_info();
      if (v195)
      {
        v189 = v194 >> 3;
      }

      else
      {
        v189 = 0;
      }

      if (v189)
      {
        v196 = 0;
        v197 = ~(-858993459 * ((v190 - v259) >> 3));
        do
        {
          v198 = *(v195 + 8 * v196);
          if (canonical_protocol)
          {
            v199 = 0;
          }

          else
          {
            v199 = 0x20000000;
          }

          if ((v199 & *(v198 + 68)) == 0)
          {
            v200 = *(v190 + 8);
            v201 = getProtocol(*(v198 + 8));
            v202 = v201 ? v201 : v198;
            if (*(v195 + 8 * v196) != v202)
            {
              v203 = (v200 & 2) == 0;
              (*(v267 + 16))(v267, (v265 + v197));
              if ((v200 & 2) == 0 || !MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
              {
                goto LABEL_378;
              }

              if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
              {
LABEL_453:
                v270 = v189;
                __break(1u);
LABEL_454:
                v241 = objc_class::nameForLogging(v203);
                _objc_fatal("Swift class %s with a metadata initializer is not allowed to be non-lazy", v242, v243, v244, v241);
              }

              if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) == 0)
              {
                if (!MEMORY[0xFFFFFC10C])
                {
                  goto LABEL_453;
                }

                if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
                {
                  goto LABEL_453;
                }

                v204 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v204 & 0xFE) != 2)
                {
                  goto LABEL_453;
                }

                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v205 = MEMORY[0xFFFFFC0D0];
                if (v205 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  goto LABEL_453;
                }

                *(v195 + 8 * v196) = v202;
                if (!MEMORY[0xFFFFFC10C])
                {
                  goto LABEL_453;
                }

                if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
                {
                  goto LABEL_453;
                }

                v206 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v206 & 0xFE) != 2)
                {
                  goto LABEL_453;
                }

                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                __isb(0xFu);
                v207 = MEMORY[0xFFFFFC0D8];
                if (v207 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  goto LABEL_453;
                }
              }

              else
              {
LABEL_378:
                *(v195 + 8 * v196) = v202;
              }

              ++UnfixedProtocolReferences;
            }
          }

          ++v196;
        }

        while (v189 != v196);
      }
    }

    else
    {
      if (!preoptimized)
      {
        goto LABEL_349;
      }

      if ((*(v191 + v191[1] + 12) & 8) == 0)
      {
        goto LABEL_347;
      }
    }

    v190 += 40;
    if (v190 != prog_image_header)
    {
      continue;
    }

    break;
  }

  v270 = v189;
  if (didInitialAttachCategories == 1)
  {
    v208 = 40 * v250;
    v209 = 40 * v250;
    v210 = v259;
    do
    {
      if (*(*v210 + *(*v210 + 1) + 12))
      {
        load_categories_nolock(*v210);
      }

      v210 += 5;
      v209 -= 40;
    }

    while (v209);
    v211 = v259;
    do
    {
      if ((*(*v211 + *(*v211 + 1) + 12) & 1) == 0)
      {
        load_categories_nolock(*v211);
      }

      v211 += 5;
      v208 -= 40;
    }

    while (v208);
  }

  v212 = v259;
  do
  {
    v213 = header_info::nlclslist(*v212, &v270);
    v215 = v270;
    if (v270)
    {
      v216 = v213;
      do
      {
        v217 = remapClass(*v216);
        v203 = v217;
        if (v217)
        {
          addClassTableEntry(v217, 1);
          if ((*(v203 + 32) & 2) != 0)
          {
            v218 = class_data_bits_t::safe_ro<(Authentication)0>((v203 + 32));
            if ((*v218 & 0x40) != 0)
            {
              if (*(v218 + 72))
              {
                goto LABEL_454;
              }
            }
          }

          realizeClassWithoutSwift(v203, 0);
        }

        ++v216;
        --v215;
      }

      while (v215);
    }

    v212 += 5;
  }

  while (v212 != prog_image_header);
  if (v116)
  {
    if (v266)
    {
      v219 = v116;
      do
      {
        v220 = *v219;
        if ((*(*v219 + 4) & 2) != 0)
        {
          _objc_fatal("Swift class is not allowed to be future", v214, v9, v10);
        }

        realizeClassWithoutSwift(*v219, 0);
        objc_class::setInstancesRequireRawIsaRecursively(v220, 0);
        ++v219;
        --v266;
      }

      while (v266);
    }

    free(v116);
  }

  if (DebugNonFragileIvars)
  {
    realizeAllClasses();
  }

  if (PrintPreopt)
  {
    v221 = v259;
    do
    {
      v222 = *v221;
      v223 = v221;
      v224 = *(v221 + 8);
      if (v224 & 1) != 0 && (v225 = "PREOPTIMIZATION: honoring preoptimized selectors in %s", (preoptimized) || (v225 = "PREOPTIMIZATION: IGNORING preoptimized selectors in %s", (*(v222 + v222[1] + 12) & 8) != 0))
      {
        v226 = *v222;
        v227 = dyld_image_path_containing_address();
        _objc_inform(v225, v227);
      }

      v228 = header_info::classlist(v222, &v270);
      v229 = v270;
      if (v270)
      {
        v230 = v228;
        do
        {
          v231 = remapClass(*v230);
          v232 = v231;
          if (v231)
          {
            ++_read_images::PreoptTotalClasses;
            if ((v224 & 1) != 0 && preoptimized == 1)
            {
              ++_read_images::PreoptOptimizedClasses;
            }

            _read_images::$_2::operator()(v231);
            _read_images::$_2::operator()(*v232 & 0xFFFFFFFF8);
          }

          ++v230;
          --v229;
        }

        while (v229);
      }

      v221 = v223 + 40;
    }

    while (v223 + 40 != prog_image_header);
    _objc_inform("PREOPTIMIZATION: %zu selector references not pre-optimized", _read_images::UnfixedSelectors);
    if (_read_images::PreoptTotalMethodLists)
    {
      _objc_inform("PREOPTIMIZATION: %u/%u (%.3g%%) method lists pre-sorted", _read_images::PreoptOptimizedMethodLists, _read_images::PreoptTotalMethodLists, _read_images::PreoptOptimizedMethodLists * 100.0 / _read_images::PreoptTotalMethodLists);
    }

    else
    {
      _objc_inform("PREOPTIMIZATION: %u/%u (%.3g%%) method lists pre-sorted", _read_images::PreoptOptimizedMethodLists, 0, 0.0);
    }

    if (_read_images::PreoptTotalClasses)
    {
      _objc_inform("PREOPTIMIZATION: %u/%u (%.3g%%) classes pre-registered", _read_images::PreoptOptimizedClasses, _read_images::PreoptTotalClasses, _read_images::PreoptOptimizedClasses * 100.0 / _read_images::PreoptTotalClasses);
    }

    else
    {
      _objc_inform("PREOPTIMIZATION: %u/%u (%.3g%%) classes pre-registered", _read_images::PreoptOptimizedClasses, 0, 0.0);
    }

    _objc_inform("PREOPTIMIZATION: %zu protocol references not pre-optimized", UnfixedProtocolReferences);
  }

LABEL_433:
  map_images_nolock::firstTime = 1;
  if (loadImageCallbacks >= 5uLL)
  {
    v233 = qword_1ED3F60E8;
  }

  else
  {
    v233 = &qword_1ED3F60E8;
  }

  if (loadImageCallbacks)
  {
    v234 = &v233[2 * loadImageCallbacks];
    do
    {
      v235 = v252 == 0;
      loadImageCallback::operator=(size, v233, v9, v10);
      v237 = v256;
      v238 = v253;
      if (!v235)
      {
        do
        {
          if (LOBYTE(size[1]) == 2)
          {
            (size[0])(*v237, v237[2]);
          }

          else
          {
            if (LOBYTE(size[1]) != 1)
            {
              if (size[0])
              {
                v240 = size[0];
              }

              else
              {
                v240 = 0;
              }

              _objc_fatal("Corrupt load image callback, unknown kind %u, func %p", v236, v9, v10, LOBYTE(size[1]), v240);
            }

            (size[0])(*v237);
          }

          v237 += 4;
          --v238;
        }

        while (v238);
      }

      v233 += 2;
    }

    while (v233 != v234);
  }

  v239 = *MEMORY[0x1E69E9840];
}

void sub_1800A6610(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(&selLock);
  }

  _Unwind_Resume(exception_object);
}

void map_images(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = 0;
  v13 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    os_unfair_lock_lock_with_options();
  }

  map_images_nolock(a1, a2, &v13, a3);
  v11 = *(StatusReg + 24);
  v12 = v11;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != v11)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  if (v13 == 1)
  {
    if (DebugClassRXSigning == 2)
    {
      _objc_fatal("class_rx signing mismatch", v8, v9, v10);
    }

    if (!DisableClassROFaults)
    {

      _objc_fault("class_ro_t enforcement disabled");
    }
  }
}

void sub_1800A678C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getPreoptimizedHeaderRW(uint64_t a1)
{
  if ((*(*(a1 + 8) + a1 + 8 + 4) & 8) == 0)
  {
    return 0;
  }

  if (!headerInfoROs || objc_debug_headerInfoRWs == 0)
  {
    return 0;
  }

  else
  {
    return objc_debug_headerInfoRWs + 8 * ((a1 - headerInfoROs - 8) / *(headerInfoROs + 4)) + 8;
  }
}

unint64_t class_data_bits_t::safe_ro<(Authentication)0>(void *a1)
{
  if ((*a1 & 0x8000000000000000) != 0)
  {
    return class_rw_t::ro((*a1 & 0xF00007FFFFFFFF8));
  }

  else
  {
    return *a1 & 0xF00007FFFFFFFF8;
  }
}

unint64_t _class_lookUpIvar(unint64_t result, char *a2, uint64_t *a3, int *a4)
{
  v7 = result;
  if (a2)
  {
    v8 = **a2;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  if (!result)
  {
    goto LABEL_44;
  }

  for (i = result; ; i = *(i + 8))
  {
    result = class_rw_t::ro((*(i + 32) & 0xF00007FFFFFFFF8));
    if ((*result & 0x280) != 0)
    {
      break;
    }

    if (!*(i + 8))
    {
      goto LABEL_44;
    }
  }

  v10 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v10, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    os_unfair_lock_lock_with_options();
  }

  while (1)
  {
    v12 = class_rw_t::ro((*(v7 + 32) & 0xF00007FFFFFFFF8));
    v16 = *(v12 + 48);
    v17 = v16 + 2;
    if (v16 && v17 <= a2)
    {
      v20 = *v16;
      v19 = v16[1];
      v21 = v19 * v20;
      if ((v21 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v13, v14, v15, v19, *(v12 + 48), v20);
      }

      if (v17 + v21 > a2)
      {
        break;
      }
    }

    if (!*(v7 + 8))
    {
      v7 = 0;
      break;
    }

    v7 = *(v7 + 8);
  }

  v22 = *(StatusReg + 24);
  v23 = v22;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v23, 0, memory_order_release, memory_order_relaxed);
  if (v23 != v22)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  result = class_rw_t::ro((*(v7 + 32) & 0xF00007FFFFFFFF8));
  if ((*result & 0x280) == 0)
  {
    goto LABEL_44;
  }

  v24 = *a3;
  v25 = v24 - ((*(class_rw_t::ro((*(v7 + 32) & 0xF00007FFFFFFFF8)) + 4) + 7) & 0xFFFFFFF8);
  result = class_data_bits_t::safe_ro<(Authentication)0>((v7 + 32));
  if (*result)
  {
    goto LABEL_34;
  }

  v26 = *(result + 16);
  if (!v26)
  {
    goto LABEL_34;
  }

  v27 = 0;
  v28 = v25 >> 3;
  while (1)
  {
    v30 = *v26++;
    v29 = v30;
    v31 = v27 + (v30 >> 4);
    if (!v30 || v31 > v28)
    {
      break;
    }

    v27 = v31 + (v29 & 0xF);
    v33 = 1;
    if (v27 > v28)
    {
      goto LABEL_45;
    }
  }

  if (v7)
  {
LABEL_34:
    result = class_data_bits_t::safe_ro<(Authentication)0>((v7 + 32));
    v34 = *(result + 56);
    if (v34)
    {
      v35 = 0;
      v36 = v25 >> 3;
      do
      {
        v38 = *v34++;
        v37 = v38;
        v39 = v35 + (v38 >> 4);
        if (!v38 || v39 > v36)
        {
          break;
        }

        v35 = v39 + (v37 & 0xF);
        v33 = 2;
      }

      while (v35 <= v36);
    }
  }

  result = class_rw_t::ro((*(v7 + 32) & 0xF00007FFFFFFFF8));
  if ((*result & 0x80) != 0)
  {
    v33 = 3;
  }

  else
  {
LABEL_44:
    v33 = 0;
  }

LABEL_45:
  *a4 = v33;
  return result;
}

void sub_1800A6BF4(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

id object_getIvar(id a1, Ivar a2)
{
  result = 0;
  if (a1 >= 1 && a2)
  {
    v5 = 0;
    v4 = 0;
    _class_lookUpIvar(*a1 & 0xFFFFFFFF8, a2, &v5, &v4);
    if (v4 == 2)
    {
      return objc_loadWeak((a1 + v5));
    }

    else
    {
      return *(a1 + v5);
    }
  }

  return result;
}

ptrdiff_t ivar_getOffset(ptrdiff_t v)
{
  if (v)
  {
    return **v;
  }

  return v;
}

unint64_t _thisThreadIsInitializingClass(void *a1)
{
  result = _fetchInitializingClassList(0);
  if (result)
  {
    if ((*a1 - 1) < 0xF || (*(a1[4] & 0xF00007FFFFFFFF8) & 1) == 0)
    {
      a1 = (*a1 & 0xFFFFFFFF8);
    }

    v3 = *result;
    if (v3 < 1)
    {
      return 0;
    }

    else
    {
      v4 = *(result + 8);
      v5 = v3 - 1;
      do
      {
        v6 = *v4++;
        result = a1 == v6;
      }

      while (a1 != v6 && v5-- != 0);
    }
  }

  return result;
}

void *_fetchInitializingClassList(int a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 320);
  if (a1 && !v3)
  {
    v3 = malloc_type_malloc(0x48uLL, 0x201A97EDuLL);
    *v3 = 0u;
    v3[1] = 0u;
    v3[2] = 0u;
    v3[3] = 0u;
    *(v3 + 8) = 0;
    *(StatusReg + 320) = v3;
    goto LABEL_4;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *v3;
  if (!*v3)
  {
LABEL_4:
    if (a1)
    {
      v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x10800407411B482uLL);
      *v3 = v4;
      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:
  if (!v4[1])
  {
    *v4 = 4;
    v4[1] = malloc_type_calloc(4uLL, 8uLL, 0x80040B8603338uLL);
  }

  return v4;
}

objc_class *realizeClassMaybeSwiftMaybeRelock(objc_class *a1, int a2)
{
  if ((*(a1 + 4) & 2) == 0 && (*(a1 + 4) & 1) == 0)
  {
    v4 = realizeClassWithoutSwift(a1, 0);
    if ((a2 & 1) == 0)
    {
      v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v6 = v5;
      atomic_compare_exchange_strong_explicit(&runtimeLock, &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 != v5)
      {
        os_unfair_lock_unlock(&runtimeLock);
      }
    }

    return v4;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 24);
  v9 = v8;
  atomic_compare_exchange_strong_explicit(&runtimeLock, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != v8)
  {
    os_unfair_lock_unlock(&runtimeLock);
  }

  v10 = class_data_bits_t::safe_ro<(Authentication)0>(a1 + 4);
  if ((*v10 & 0x40) != 0 && (v11 = *(v10 + 72)) != 0)
  {
    v12 = *(v10 + 72);
    if (PrintConnecting)
    {
      v19 = objc_class::nameForLogging(a1);
      _objc_inform("CLASS: calling Swift metadata initializer for class '%s' (%p)", v19, a1);
    }

    v4 = v11(a1, 0);
    if (v4 == a1)
    {
      goto LABEL_21;
    }

    v13 = 0;
    atomic_compare_exchange_strong_explicit(&runtimeLock, &v13, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v13)
    {
      os_unfair_lock_lock_with_options();
    }

    addRemappedClass(a1, v4);
  }

  else
  {
    v14 = 0;
    atomic_compare_exchange_strong_explicit(&runtimeLock, &v14, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v14)
    {
      os_unfair_lock_lock_with_options();
    }

    v4 = realizeClassWithoutSwift(a1, 0);
  }

  v15 = *(StatusReg + 24);
  v16 = v15;
  atomic_compare_exchange_strong_explicit(&runtimeLock, &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 != v15)
  {
    os_unfair_lock_unlock(&runtimeLock);
  }

LABEL_21:
  if (a2)
  {
    v17 = 0;
    atomic_compare_exchange_strong_explicit(&runtimeLock, &v17, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v17)
    {
      os_unfair_lock_lock_with_options();
    }
  }

  return v4;
}

void sub_1800A7024(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void objc_object::sidetable_unlock(objc_object *this)
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v3 = v2;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != v2)
  {
    os_unfair_lock_unlock(v1);
  }
}

atomic_uint *objc_object::sidetable_lock(objc_object *this)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit(result, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return os_unfair_lock_lock_with_options();
  }

  return result;
}

objc_object *_objc_rootRetainCount(objc_object *this)
{
  if ((this & 0x8000000000000000) != 0)
  {
    return this;
  }

  objc_object::sidetable_lock(this);
  isa = this->isa;
  if (this->isa)
  {
    v2 = isa >> 56;
    if ((isa & 0x80000000000000) != 0)
    {
      v2 += objc_object::sidetable_getExtraRC_nolock(this);
    }

    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v8 = v7;
    if (v8 != v7)
    {
    }

    return v2;
  }

  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v6 = v5;
  if (v6 != v5)
  {
  }

  return objc_object::sidetable_retainCount(this);
}

id objc_initWeakOrNil(id *location, id val)
{
  v2 = val;
  if (!val)
  {
    *location = 0;
    return v2;
  }

  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = &objc_debug_taggedpointer_classes[val & 7];
  v8 = &objc_debug_taggedpointer_ext_classes[(val >> 55)];
  while (1)
  {
    v9 = 0;
    atomic_compare_exchange_strong_explicit(v5, &v9, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v9)
    {
      os_unfair_lock_lock_with_options();
    }

    if ((v2 & 0x8000000000000000) == 0)
    {
      v10 = *v2 & 0x7FFFFFFFFFFFF8;
      if (!v10)
      {
        goto LABEL_13;
      }

      v11 = *v2 & 0x7FFFFFFFFFFFF8;
LABEL_8:
      v12 = v10;
      goto LABEL_14;
    }

    if (!*v7)
    {
      goto LABEL_13;
    }

    v12 = *v7;
    if (*v7 == __NSUnrecognizedTaggedPointer)
    {
      v10 = *v8;
      if (!*v8)
      {
LABEL_13:
        v12 = 0;
        goto LABEL_14;
      }

      v13 = *v8;
      goto LABEL_8;
    }

LABEL_14:
    if (v12 == v4)
    {
      break;
    }

    v14 = *(*(v12 + 4) & 0xF00007FFFFFFFF8);
    if ((v14 & 1) == 0)
    {
      v14 = *(*((*v12 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
    }

    if ((v14 & 0x20000000) != 0)
    {
      break;
    }

    v15 = *(StatusReg + 24);
    v16 = v15;
    atomic_compare_exchange_strong_explicit(v5, &v16, 0, memory_order_release, memory_order_relaxed);
    if (v16 != v15)
    {
    }

    class_initialize(v12, v2);
    v4 = v12;
  }

  v17 = weak_register_no_lock(v5 + 4, v2, location, 0);
  v2 = v17;
  if (v17 >= 1)
  {
    v18 = *v17;
    if (*v17)
    {
      while ((v18 & 4) == 0)
      {
        v19 = v18;
        atomic_compare_exchange_strong_explicit(v17, &v19, v18 | 4, memory_order_relaxed, memory_order_relaxed);
        if (v19 == v18)
        {
          break;
        }

        v18 = v19;
        if ((v19 & 1) == 0)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_26:
      objc_object::sidetable_setWeaklyReferenced_nolock(v17);
    }
  }

  *location = v2;
  v20 = *(StatusReg + 24);
  v21 = v20;
  atomic_compare_exchange_strong_explicit(v5, &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 != v20)
  {
    os_unfair_lock_unlock(v5);
  }

  callSetWeaklyReferenced(v2);
  return v2;
}

char *copySwiftV1MangledName(const char *a1, int a2)
{
  v4 = 0;
  if (!a1)
  {
    return v4;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = &a1[v4];
    if (a1[v4] != 46)
    {
      break;
    }

    ++v6;
    v5 = v4;
LABEL_7:
    ++v4;
  }

  if (a1[v4])
  {
    goto LABEL_7;
  }

  v4 = 0;
  if (v6 == 1 && v5 && v5 < v7 - a1 - 1)
  {
    v11[1] = v2;
    v11[2] = v3;
    v11[0] = 0;
    if (v5 == 5 && (*a1 == 1718187859 ? (v8 = a1[4] == 116) : (v8 = 0), v8))
    {
      asprintf(v11, "_Tt%cs%zu%.*s%s");
    }

    else
    {
      v9 = 80;
      if (!a2)
      {
        v9 = 67;
      }

      asprintf(v11, "_Tt%c%zu%.*s%zu%.*s%s", v9, v5);
    }

    return v11[0];
  }

  return v4;
}

unint64_t protocol_getMethod(protocol_t *a1, objc_selector *a2, const char *a3, char *a4, uint64_t a5, objc_selector ***a6)
{
  if (!a1)
  {
    return 0;
  }

  v10 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v10, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    os_unfair_lock_lock_with_options();
  }

  if (fixed_up_protocol)
  {
    v12 = -1073741824;
  }

  else
  {
    v12 = 0x40000000;
  }

  if ((*(a1 + 17) & 0xC0000000) != v12)
  {
    fixupProtocol(a1, 0xFFFFFFFFLL, 0, 0, a5, a6);
  }

  Method_nolock = protocol_getMethod_nolock(a1, a2, a3, a4, a5);
  if (Method_nolock)
  {
    v14 = Method_nolock;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(StatusReg + 24);
  v16 = v15;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 != v15)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v14;
}

void sub_1800A775C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

unint64_t protocol_getMethod_nolock(protocol_t *a1, objc_selector *a2, const char *a3, char *a4, BOOL a5)
{
  result = 0;
  if (a1 && a2)
  {
    v8 = a4;
    v9 = a3;
    v10 = 32;
    if (a4)
    {
      v10 = 24;
    }

    v11 = 48;
    if (a4)
    {
      v11 = 40;
    }

    if (!a3)
    {
      v10 = v11;
    }

    v12 = *(a1 + v10);
    if (!v12 || (result = search_method_list(v12, a2, a3, a4)) == 0)
    {
      v13 = *(a1 + 2);
      if (v13 && *v13)
      {
        v14 = 0;
        v15 = 1;
        while (1)
        {
          v16 = v13[v14 + 1];
          v17 = canonical_protocol ? 0 : 0x20000000;
          if ((v17 & *(v16 + 68)) == 0)
          {
            Protocol = getProtocol(*(v16 + 8));
            if (Protocol)
            {
              v16 = Protocol;
            }
          }

          result = protocol_getMethod_nolock(v16, a2, v9, v8, a5);
          if (result)
          {
            break;
          }

          v14 = v15;
          v13 = *(a1 + 2);
          if (*v13 <= v15++)
          {
            return 0;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t search_method_list(unint64_t a1, char *a2, const char *a3, char *a4)
{
  v5 = *a1;
  if (*a1 > -1 || (a1 & 0x8000000000000000) != 0)
  {
    v7 = 24;
  }

  else
  {
    v7 = 12;
  }

  v8 = v5 & 0xFFFC;
  if ((~*a1 & 3) == 0 && v8 == v7)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v18 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 2;
      v19 = *(a1 + 4);
      if (v19 >= 5)
      {
        v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 2;
        do
        {
          result = v12 + v7 * (v19 >> 1);
          v20 = *(result & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *(result & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v20 == a2)
          {
            if (result > v18)
            {
              v39 = v12 + v7 * ((v19 >> 1) - 1);
              do
              {
                v40 = *(v39 & 0xFFFFFFFFFFFFFFFCLL);
                if (v40)
                {
                  v41 = *(v39 & 0xFFFFFFFFFFFFFFFCLL);
                }

                if (v40 != a2)
                {
                  break;
                }

                result -= v7;
                v39 -= v7;
              }

              while (result > v18);
            }

            return result;
          }

          if (v20 < a2)
          {
            v12 = result + v7;
          }

          v22 = v19 - (v20 < a2);
          v19 = v22 >> 1;
        }

        while (v22 > 9);
        if (v19)
        {
          goto LABEL_33;
        }

        return 0;
      }

      v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 2;
      if (v19)
      {
LABEL_33:
        v23 = v19 - 1;
        v24 = v12;
        while (1)
        {
          v25 = v23;
          v26 = *(v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *(v24 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v26 == a2)
          {
            break;
          }

          result = 0;
          if (v26 <= a2)
          {
            v12 += v7;
            --v23;
            v24 += v7;
            if (v25)
            {
              continue;
            }
          }

          return result;
        }

        return v12;
      }
    }

    else
    {
      if (v5 < 0)
      {
        if (dataSegmentsRanges > a1 || *algn_1ED3F62F8 <= a1)
        {
          v42 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
          v43 = *(a1 + 4);
          if (v43 >= 5)
          {
            v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
            while (1)
            {
              result = v12 + v7 * (v43 >> 1);
              v44 = *((result & 0xFFFFFFFFFFFFFFFCLL) + *(result & 0xFFFFFFFFFFFFFFFCLL));
              v45 = v44 >= a2;
              if (v44 == a2)
              {
                break;
              }

              v46 = v44 < a2;
              if (!v45)
              {
                v12 = result + v7;
              }

              v47 = v43 - v46;
              v43 = v47 >> 1;
              if (v47 <= 9)
              {
                goto LABEL_80;
              }
            }

            if (result > v42)
            {
              v53 = v12 + v7 * ((v43 >> 1) - 1);
              do
              {
                if (*((v53 & 0xFFFFFFFFFFFFFFFCLL) + *(v53 & 0xFFFFFFFFFFFFFFFCLL)) != a2)
                {
                  break;
                }

                result -= v7;
                v53 -= v7;
              }

              while (result > v42);
            }

            return result;
          }

          v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
LABEL_80:
          if (!v43)
          {
            return 0;
          }

          v49 = v43 - 1;
          v50 = v12;
          while (1)
          {
            v51 = *((v50 & 0xFFFFFFFFFFFFFFFCLL) + *(v50 & 0xFFFFFFFFFFFFFFFCLL));
            if (v51 == a2)
            {
              break;
            }

            result = 0;
            v12 += v7;
            v52 = v51 > a2 || v49-- == 0;
            v50 += v7;
            if (v52)
            {
              return result;
            }
          }
        }

        else
        {
          result = 0;
          if (dataSegmentsRanges > a2 || *algn_1ED3F62F8 <= a2)
          {
            return result;
          }

          v28 = a2 - byte_1FA920D78;
          v29 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
          v30 = *(a1 + 4);
          if (v30 >= 5)
          {
            v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
            while (1)
            {
              result = v12 + v7 * (v30 >> 1);
              v31 = *(result & 0xFFFFFFFFFFFFFFFCLL);
              v32 = v28 > v31;
              if (v28 == v31)
              {
                break;
              }

              v33 = v28 > v31;
              if (v32)
              {
                v12 = result + v7;
              }

              v34 = v30 - v33;
              v30 = v34 >> 1;
              if (v34 <= 9)
              {
                goto LABEL_95;
              }
            }

            if (result > v29)
            {
              v58 = v12 + v7 * ((v30 >> 1) - 1);
              do
              {
                if (v28 != *(v58 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  break;
                }

                result -= v7;
                v58 -= v7;
              }

              while (result > v29);
            }

            return result;
          }

          v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
LABEL_95:
          if (!v30)
          {
            return 0;
          }

          v54 = v30 - 1;
          v55 = v12;
          while (1)
          {
            v56 = *(v55 & 0xFFFFFFFFFFFFFFFCLL);
            if (v28 == v56)
            {
              break;
            }

            result = 0;
            v12 += v7;
            v57 = v28 < v56 || v54-- == 0;
            v55 += v7;
            if (v57)
            {
              return result;
            }
          }
        }

        return v12;
      }

      v10 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v11 = *(a1 + 4);
      if (v11 >= 5)
      {
        v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          result = v12 + 24 * (v11 >> 1);
          v14 = *(result & 0xFFFFFFFFFFFFFFFCLL);
          v15 = v14 >= a2;
          if (v14 == a2)
          {
            if (result > v10)
            {
              v48 = v12 + 24 * (v11 >> 1) - 24;
              do
              {
                if (*(v48 & 0xFFFFFFFFFFFFFFFCLL) != a2)
                {
                  break;
                }

                result -= 24;
                v48 -= 24;
              }

              while (result > v10);
            }

            return result;
          }

          v16 = v14 < a2;
          if (!v15)
          {
            v12 = result + 24;
          }

          v17 = v11 - v16;
          v11 = v17 >> 1;
        }

        while (v17 > 9);
        if (v11)
        {
          goto LABEL_52;
        }

        return 0;
      }

      v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      if (v11)
      {
LABEL_52:
        v35 = v11 - 1;
        v36 = v12;
        while (1)
        {
          v37 = *(v36 & 0xFFFFFFFFFFFFFFFCLL);
          if (v37 == a2)
          {
            break;
          }

          v12 += v7;
          v38 = v37 > a2 || v35-- == 0;
          v36 += v7;
          if (v38)
          {
            return 0;
          }
        }

        return v12;
      }
    }

    return 0;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    v59 = *(a1 + 4);
    v64 = v59 * (v5 & 0xFFFC);
    if ((v64 & 0xFFFFFFFF00000000) != 0)
    {
      goto LABEL_146;
    }

    v65 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    v66 = (a1 + 8 + v64) & 0xFFFFFFFFFFFFFFFCLL;
    if (v65 != v66)
    {
      v67 = v66 | 2;
      v68 = v8;
      v69 = v65 | 2;
      v63 = v65 | 2;
      while (1)
      {
        v70 = *(v69 & 0xFFFFFFFFFFFFFFFCLL);
        if (v70)
        {
          v71 = *(v69 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v70 == a2)
        {
          break;
        }

        result = 0;
        v63 += v68;
        v69 += v68;
        if (v63 == v67)
        {
          return result;
        }
      }

      return v63;
    }

    return 0;
  }

  if ((v5 & 0x80000000) == 0)
  {
    v59 = *(a1 + 4);
    v60 = v59 * (v5 & 0xFFFC);
    if ((v60 & 0xFFFFFFFF00000000) == 0)
    {
      v61 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v62 = (a1 + 8 + v60) & 0xFFFFFFFFFFFFFFFCLL;
      if (v61 != v62)
      {
        v63 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        while (*(v61 & 0xFFFFFFFFFFFFFFFCLL) != a2)
        {
          result = 0;
          v63 += v8;
          v61 += v8;
          if (v63 == v62)
          {
            return result;
          }
        }

        return v63;
      }

      return 0;
    }

LABEL_146:
    _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v59, a1, v8);
  }

  if (dataSegmentsRanges > a1 || *algn_1ED3F62F8 <= a1)
  {
    v59 = *(a1 + 4);
    v79 = v59 * (v5 & 0xFFFC);
    if ((v79 & 0xFFFFFFFF00000000) == 0)
    {
      v80 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v81 = (a1 + 8 + v79) & 0xFFFFFFFFFFFFFFFCLL;
      if (v80 != v81)
      {
        v82 = v81 | 1;
        v83 = v8;
        v84 = v80 | 1;
        v63 = v80 | 1;
        while (*((v84 & 0xFFFFFFFFFFFFFFFCLL) + *(v84 & 0xFFFFFFFFFFFFFFFCLL)) != a2)
        {
          result = 0;
          v63 += v83;
          v84 += v83;
          if (v63 == v82)
          {
            return result;
          }
        }

        return v63;
      }

      return 0;
    }

    goto LABEL_146;
  }

  result = 0;
  if (dataSegmentsRanges <= a2 && *algn_1ED3F62F8 > a2)
  {
    v59 = *(a1 + 4);
    v72 = v59 * (v5 & 0xFFFC);
    if ((v72 & 0xFFFFFFFF00000000) != 0)
    {
      goto LABEL_146;
    }

    v73 = a1 + 8;
    v74 = v73 & 0xFFFFFFFFFFFFFFFCLL;
    v75 = (v73 + v72) & 0xFFFFFFFFFFFFFFFCLL;
    if (v74 != v75)
    {
      v76 = v75 | 1;
      v77 = v74 | 1;
      v78 = v77;
      while (&byte_1FA920D78[*(v77 & 0xFFFFFFFFFFFFFFFCLL)] != a2)
      {
        result = 0;
        v78 += v8;
        v77 += v8;
        if (v78 == v76)
        {
          return result;
        }
      }

      return v78;
    }

    return 0;
  }

  return result;
}

Protocol **__cdecl class_copyProtocolList(Class cls, unsigned int *outCount)
{
  if (cls)
  {
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    realizeAndInitializeIfNeeded_locked(0, cls, 0);
    class_rw_t::protocols(&v49, *(cls + 4) & 0xF00007FFFFFFFF8);
    if ((*cls - 1) < 0xF || (*(cls + 4) & 0x8000000000000000) == 0 || (v12 = *((*(cls + 4) & 0xF00007FFFFFFFF8) + 4), qword_1ED3F6308 <= v12) || ((v13 = *(qword_1ED3F6300 + 16 * v12 + 8), *(qword_1ED3F6300 + 16 * v12) <= cls) ? (v14 = v13 > cls) : (v14 = 0), !v14))
    {
      if (objc::allocatedClasses + 8 * qword_1ED3F6160 == objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-cls) && (dataSegmentsContain(cls, v43, v6, v7) & 1) == 0)
      {
        _objc_fatal("Attempt to use unknown class %p.", v6, v7, v8, cls);
      }
    }

    if (!v49)
    {
      v13 = 0;
      v15 = 0;
      goto LABEL_18;
    }

    v15 = (v49 & 3);
    if ((v49 & 3) == 0)
    {
      v13 = v49;
      goto LABEL_18;
    }

    if (v49 >= 4)
    {
      if (v15 == 2)
      {
        v13 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v49 & 0xFFFFFFFFFFFFFFFCLL) == 0)
        {
          v15 = 0;
          goto LABEL_18;
        }

        if (DisablePreattachedCategories)
        {
          v40 = *v13;
          v21 = v13[1];
          v44 = v21 * v40;
          if ((v44 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_90;
          }

          v9 = (v13 + v44 + 8);
          v45 = v21 == 0;
          if (v21)
          {
            v21 = v21;
          }

          else
          {
            v21 = 0;
          }

          if (!v45)
          {
            v9 = (v9 - v40);
          }

          v10 = *v13;
        }

        else
        {
          v9 = (v13 + 2);
          v10 = *v13;
          v21 = v13[1];
          v40 = v10;
        }

        v41 = v21 * v40;
        if ((v41 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_90;
        }

        for (i = v13 + v41 + 8; v9 < i; v9 = (v9 + v10))
        {
          if (*(objc_debug_headerInfoRWs + 8 + 8 * *v9))
          {
            break;
          }
        }
      }

      else if (v15 == 1)
      {
        v15 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v49 & 0xFFFFFFFFFFFFFFFCLL) != 0)
        {
          v13 = v15 + 2;
LABEL_72:
          i = *v15;
          v15 += 2 * i + 2;
        }

LABEL_18:
        v17 = 0;
        if (!v49)
        {
          goto LABEL_35;
        }

        while (1)
        {
          v18 = v49 & 3;
          if (v18 <= 1)
          {
            break;
          }

          if (v18 == 2 && v9 == i)
          {
            goto LABEL_39;
          }

          v21 = v13[1];
          v22 = v21 * *v13;
          if ((v22 & 0xFFFFFFFF00000000) != 0)
          {
            v40 = *v13;
            goto LABEL_90;
          }

          v23 = *(v9 + (*v9 >> 16));
          v24 = v13 + v22 + 8;
          v25 = (v9 + v10);
          do
          {
            v9 = v25;
            if (v25 >= v24)
            {
              break;
            }

            v6 = *(objc_debug_headerInfoRWs + 8 + 8 * *v25);
            v25 = (v25 + v10);
          }

          while ((v6 & 1) == 0);
LABEL_37:
          while (1)
          {
            v17 += v23;
            if (v49)
            {
              break;
            }

LABEL_35:
            if (v13 == v15)
            {
              goto LABEL_39;
            }

            v23 = *v13;
            v13 = 0;
          }
        }

        if ((v49 & 3) != 0)
        {
          if (v13 != v15)
          {
            v19 = v13;
            v13 = *v13;
            goto LABEL_34;
          }
        }

        else if (v13 != v15)
        {
          v19 = 0;
LABEL_34:
          v23 = *v13;
          v13 = &v19[2 * (v18 == 1)];
          goto LABEL_37;
        }

LABEL_39:
        if (v17)
        {
          v16 = malloc_type_malloc(8 * (v17 + 1), 0x80040B8603338uLL);
          list_array_tt<unsigned long,protocol_list_t,RawPtr>::begin(v47, &v49, v26, v27);
          list_array_tt<unsigned long,protocol_list_t,RawPtr>::end(v46, &v49, v28, v29);
          v30 = 0;
          while (!list_array_tt<unsigned long,protocol_list_t,RawPtr>::iteratorImpl<false>::operator==(v47, v46))
          {
            v34 = *v48;
            if (canonical_protocol)
            {
              v35 = 0;
            }

            else
            {
              v35 = 0x20000000;
            }

            if ((v35 & *(*v48 + 68)) == 0)
            {
              Protocol = getProtocol(*(v34 + 8));
              if (Protocol)
              {
                v34 = Protocol;
              }
            }

            v16[v30] = v34;
            list_array_tt<unsigned long,protocol_list_t,RawPtr>::iteratorImpl<false>::operator++(v47, v31, v32, v33);
            ++v30;
          }

          v16[v30] = 0;
          if (outCount)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v16 = 0;
          v30 = 0;
          if (outCount)
          {
LABEL_50:
            *outCount = v30;
          }
        }

        v37 = *(StatusReg + 24);
        v38 = v37;
        atomic_compare_exchange_strong_explicit(runtimeLock, &v38, 0, memory_order_release, memory_order_relaxed);
        if (v38 != v37)
        {
          os_unfair_lock_unlock(runtimeLock);
        }

        return v16;
      }
    }

    else
    {
      v13 = 0;
    }

    if (v15 == 2)
    {
      v15 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v49 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        v40 = *v15;
        v21 = v15[1];
        v42 = v21 * v40;
        if ((v42 & 0xFFFFFFFF00000000) != 0)
        {
          v13 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_90:
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v6, v7, v8, v21, v13, v40);
        }

        i = v15 + v42 + 8;
      }
    }

    else
    {
      if (v15 == 1)
      {
        v15 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v49 & 0xFFFFFFFFFFFFFFFCLL) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_72;
      }

      v15 = 0;
    }

    goto LABEL_18;
  }

  v16 = 0;
  if (outCount)
  {
    *outCount = 0;
  }

  return v16;
}

void sub_1800A8404(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

unint64_t _method_getImplementationAndName(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  result = method_t::imp(v1, 1);
  if ((v1 & 3) > 1)
  {
    if ((v1 & 3) == 2 && *(v1 & 0xFFFFFFFFFFFFFFFCLL))
    {
      v4 = *(v1 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  else if ((v1 & 3) != 0)
  {
    v5 = (v1 & 0xFFFFFFFFFFFFFFFCLL);
    if (dataSegmentsRanges > (v1 & 0xFFFFFFFFFFFFFFFCLL) || *algn_1ED3F62F8 <= v5)
    {
      v7 = *(v5 + *v5);
    }

    else
    {
      v6 = &byte_1FA920D78[*v5];
    }
  }

  else
  {
    v3 = *(v1 & 0xFFFFFFFFFFFFFFFCLL);
  }

  return result;
}

size_t class_getInstanceSize(size_t cls)
{
  if (cls)
  {
    v1 = cls;
    objc_class::realizeIfNeeded(cls);
    return (*(class_rw_t::ro((*(v1 + 32) & 0xF00007FFFFFFFF8)) + 8) + 7) & 0xFFFFFFF8;
  }

  return cls;
}

char *objc_class::nameForLogging(objc_class *this)
{
  if ((*this - 1) < 0xF)
  {
    v12 = 0;
    asprintf(&v12, "<stub class %p>");
LABEL_16:
    v7 = v12;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = *(StatusReg + 320);
    if (!v9)
    {
      v9 = malloc_type_malloc(0x48uLL, 0x201A97EDuLL);
      *v9 = 0u;
      v9[1] = 0u;
      v9[2] = 0u;
      v9[3] = 0u;
      *(v9 + 8) = 0;
      *(StatusReg + 320) = v9;
    }

    v10 = *(v9 + 3);
    if (v10)
    {
      free(v10);
    }

    v11 = v9[2];
    *(v9 + 5) = *(v9 + 6);
    *(v9 + 24) = v11;
    *(v9 + 6) = v7;
    return v12;
  }

  if ((*(this + 4) & 0x8000000000000000) == 0 && (*((*(this + 4) & 0xF00007FFFFFFFF8) + 3) & 0x40) == 0)
  {
    goto LABEL_11;
  }

  if ((*(this + 4) & 2) == 0 && (*(this + 4) & 1) == 0)
  {
    return atomic_load_explicit((class_rw_t::ro((*(this + 4) & 0xF00007FFFFFFFF8)) + 24), memory_order_acquire);
  }

  v3 = *((*(this + 4) & 0xF00007FFFFFFFF8) + 8);
  if ((v3 & 1) == 0 || (v4 = *((*(this + 4) & 0xF00007FFFFFFFF8) + 8), (v3 & 0xFFFFFFFFFFFFFFFELL) == 0) || (result = *((v3 & 0xFFFFFFFFFFFFFFFELL) + 32)) == 0)
  {
LABEL_11:
    v12 = 0;
    explicit = atomic_load_explicit((class_data_bits_t::safe_ro<(Authentication)0>(this + 4) + 24), memory_order_acquire);
    if (explicit)
    {
      v6 = copySwiftV1DemangledName(explicit, 0);
      if (!v6)
      {
        v6 = strdup(explicit);
      }

      v12 = v6;
    }

    else
    {
      asprintf(&v12, "<lazily named class %p>");
    }

    goto LABEL_16;
  }

  return result;
}

const char *__cdecl method_getTypeEncoding(const char *m)
{
  if (m)
  {
    return method_t::types(m);
  }

  return m;
}

unint64_t getMethodFromRelativeList(unsigned int *a1, _BYTE *a2, const char *a3, char *a4)
{
  if (dataSegmentsRanges > a2 || *algn_1ED3F62F8 <= a2)
  {
    return 0;
  }

  if (DisablePreattachedCategories)
  {
    v6 = *a1;
    v96 = a1[1];
    v97 = v96 * v6;
    if ((v97 & 0xFFFFFFFF00000000) != 0)
    {
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v96, a1, v6);
    }

    v98 = a1 + v97 + 8;
    v7 = v96 ? v96 : 0;
    v5 = (v96 ? v98 - v6 : v98);
  }

  else
  {
    v5 = (a1 + 2);
    v6 = *a1;
    v7 = a1[1];
  }

  v8 = v7 * v6;
  if ((v8 & 0xFFFFFFFF00000000) != 0)
  {
    _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v7, a1, v6);
  }

  v9 = a1 + v8 + 8;
  v10 = objc_debug_headerInfoRWs + 8;
  while (v5 < v9 && (*(v10 + 8 * *v5) & 1) == 0)
  {
    v5 = (v5 + v6);
  }

  if (v5 == v9)
  {
    return 0;
  }

  v11 = a2 - &unk_1FA920D78;
LABEL_15:
  v12 = v5 + (*v5 >> 16);
  v13 = *v12;
  if ((v12 & 0x8000000000000000) == 0 && v13 <= -1)
  {
    v15 = 12;
  }

  else
  {
    v15 = 24;
  }

  v16 = v13 & 0xFFFC;
  if ((~*v12 & 3) != 0 || v16 != v15)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      v69 = *(v12 + 4);
      v74 = v69 * v16;
      if ((v74 & 0xFFFFFFFF00000000) == 0)
      {
        v75 = v12 + 8;
        v76 = v75 & 0xFFFFFFFFFFFFFFFCLL;
        v77 = (v75 + v74) & 0xFFFFFFFFFFFFFFFCLL;
        if ((v75 & 0xFFFFFFFFFFFFFFFCLL) != v77)
        {
          v78 = v16;
          v79 = v77 | 2;
          v80 = v76 | 2;
          v20 = v76 | 2;
          while (1)
          {
            v81 = *(v80 & 0xFFFFFFFFFFFFFFFCLL);
            if (v81)
            {
              v82 = *(v80 & 0xFFFFFFFFFFFFFFFCLL);
            }

            if (v81 == a2)
            {
              goto LABEL_121;
            }

            v20 += v78;
            v80 += v78;
            if (v20 == v79)
            {
              goto LABEL_122;
            }
          }
        }

        goto LABEL_122;
      }
    }

    else if (v13 < 0)
    {
      v69 = *(v12 + 4);
      v83 = v69 * v16;
      if (dataSegmentsRanges <= v12 && *algn_1ED3F62F8 > v12)
      {
        if ((v83 & 0xFFFFFFFF00000000) == 0)
        {
          v90 = v12 + 8;
          v91 = (v12 + 8) & 0xFFFFFFFFFFFFFFFCLL;
          v92 = (v90 + v83) & 0xFFFFFFFFFFFFFFFCLL;
          if (v91 != v92)
          {
            v93 = v92 | 1;
            v94 = v91 | 1;
            v20 = v94;
            while (&unk_1FA920D78 + *(v94 & 0xFFFFFFFFFFFFFFFCLL) != a2)
            {
              v20 += v16;
              v94 += v16;
              if (v20 == v93)
              {
                goto LABEL_122;
              }
            }

            goto LABEL_121;
          }

          goto LABEL_122;
        }
      }

      else if ((v83 & 0xFFFFFFFF00000000) == 0)
      {
        v85 = v12 + 8;
        v86 = (v12 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        v87 = (v85 + v83) & 0xFFFFFFFFFFFFFFFCLL;
        if (v86 != v87)
        {
          v88 = v87 | 1;
          v89 = v86 | 1;
          v20 = v89;
          while (*((v89 & 0xFFFFFFFFFFFFFFFCLL) + *(v89 & 0xFFFFFFFFFFFFFFFCLL)) != a2)
          {
            v20 += v16;
            v89 += v16;
            if (v20 == v88)
            {
              goto LABEL_122;
            }
          }

          goto LABEL_121;
        }

        goto LABEL_122;
      }
    }

    else
    {
      v69 = *(v12 + 4);
      v70 = v69 * v16;
      if ((v70 & 0xFFFFFFFF00000000) == 0)
      {
        v71 = v12 + 8;
        v72 = v71 & 0xFFFFFFFFFFFFFFFCLL;
        v73 = (v71 + v70) & 0xFFFFFFFFFFFFFFFCLL;
        if (v72 != v73)
        {
          v20 = v72;
          while (*(v72 & 0xFFFFFFFFFFFFFFFCLL) != a2)
          {
            v20 += v16;
            v72 += v16;
            if (v20 == v73)
            {
              goto LABEL_122;
            }
          }

          goto LABEL_121;
        }

        goto LABEL_122;
      }
    }

    _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, 3, 0xC, v69, v5 + (*v5 >> 16), v16);
  }

  v18 = (v12 + 8) & 0xFFFFFFFFFFFFFFFCLL;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v27 = v18 | 2;
    v28 = *(v12 + 4);
    if (v28 < 5)
    {
      v20 = v18 | 2;
      if (!v28)
      {
        goto LABEL_122;
      }

      goto LABEL_68;
    }

    v20 = v18 | 2;
    while (1)
    {
      result = v20 + v15 * (v28 >> 1);
      v29 = *(result & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *(result & 0xFFFFFFFFFFFFFFFCLL);
      }

      v31 = v29 >= a2;
      if (v29 == a2)
      {
        break;
      }

      v32 = v29 < a2;
      if (!v31)
      {
        v20 = result + v15;
      }

      v33 = v28 - v32;
      v28 = v33 >> 1;
      if (v33 <= 9)
      {
        if (!v28)
        {
          goto LABEL_122;
        }

LABEL_68:
        v46 = v28 - 1;
        v47 = v20;
        do
        {
          v48 = v46;
          v49 = *(v47 & 0xFFFFFFFFFFFFFFFCLL);
          if (v49)
          {
            v50 = *(v47 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v49 == a2)
          {
            goto LABEL_121;
          }

          if (v49 > a2)
          {
            break;
          }

          v20 += v15;
          v46 = v48 - 1;
          v47 += v15;
        }

        while (v48);
        goto LABEL_122;
      }
    }

    if (result > v27)
    {
      v56 = v20 + v15 * ((v28 >> 1) - 1);
      while (1)
      {
        v57 = *(v56 & 0xFFFFFFFFFFFFFFFCLL);
        if (v57)
        {
          v58 = *(v56 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v57 != a2)
        {
          break;
        }

        result -= v15;
        v56 -= v15;
        if (result <= v27)
        {
          return result;
        }
      }
    }

    goto LABEL_120;
  }

  if (v13 < 0)
  {
    v34 = v18 | 1;
    v35 = *(v12 + 4);
    if (dataSegmentsRanges <= v12 && *algn_1ED3F62F8 > v12)
    {
      if (v35 < 5)
      {
        v20 = v34;
        if (!v35)
        {
          goto LABEL_122;
        }

LABEL_102:
        v63 = v35 - 1;
        v64 = v20;
        while (1)
        {
          v65 = *(v64 & 0xFFFFFFFFFFFFFFFCLL);
          if (v11 == v65)
          {
            goto LABEL_121;
          }

          v20 += v15;
          v66 = v11 < v65 || v63-- == 0;
          v64 += v15;
          if (v66)
          {
            goto LABEL_122;
          }
        }
      }

      v20 = v34;
      while (1)
      {
        result = v20 + v15 * (v35 >> 1);
        v51 = *(result & 0xFFFFFFFFFFFFFFFCLL);
        v52 = v11 > v51;
        if (v11 == v51)
        {
          break;
        }

        v53 = v11 > v51;
        v54 = result + v15;
        if (v52)
        {
          v20 = v54;
        }

        v55 = v35 - v53;
        v35 = (v35 - v53) >> 1;
        if (v55 <= 9)
        {
          if (!v35)
          {
            goto LABEL_122;
          }

          goto LABEL_102;
        }
      }

      if (result > v34)
      {
        v68 = v20 + v15 * ((v35 >> 1) - 1);
        while (v11 == *(v68 & 0xFFFFFFFFFFFFFFFCLL))
        {
          result -= v15;
          v68 -= v15;
          if (result <= v34)
          {
            return result;
          }
        }
      }
    }

    else
    {
      if (v35 < 5)
      {
        v20 = v34;
        if (!v35)
        {
          goto LABEL_122;
        }

LABEL_93:
        v59 = v35 - 1;
        v60 = v20;
        while (1)
        {
          v61 = *((v60 & 0xFFFFFFFFFFFFFFFCLL) + *(v60 & 0xFFFFFFFFFFFFFFFCLL));
          if (v61 == a2)
          {
            goto LABEL_121;
          }

          v20 += v15;
          v62 = v61 > a2 || v59-- == 0;
          v60 += v15;
          if (v62)
          {
            goto LABEL_122;
          }
        }
      }

      v20 = v34;
      while (1)
      {
        result = v20 + v15 * (v35 >> 1);
        v37 = *((result & 0xFFFFFFFFFFFFFFFCLL) + *(result & 0xFFFFFFFFFFFFFFFCLL));
        v38 = v37 >= a2;
        if (v37 == a2)
        {
          break;
        }

        v39 = v37 < a2;
        v40 = result + v15;
        if (!v38)
        {
          v20 = v40;
        }

        v41 = v35 - v39;
        v35 = (v35 - v39) >> 1;
        if (v41 <= 9)
        {
          if (!v35)
          {
            goto LABEL_122;
          }

          goto LABEL_93;
        }
      }

      if (result > v34)
      {
        v67 = v20 + v15 * ((v35 >> 1) - 1);
        while (*((v67 & 0xFFFFFFFFFFFFFFFCLL) + *(v67 & 0xFFFFFFFFFFFFFFFCLL)) == a2)
        {
          result -= v15;
          v67 -= v15;
          if (result <= v34)
          {
            return result;
          }
        }
      }
    }

    goto LABEL_120;
  }

  v19 = *(v12 + 4);
  if (v19 < 5)
  {
    v20 = (v12 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    if (v19)
    {
      goto LABEL_59;
    }

    goto LABEL_122;
  }

  v20 = (v12 + 8) & 0xFFFFFFFFFFFFFFFCLL;
  while (1)
  {
    result = v20 + 24 * (v19 >> 1);
    v22 = *(result & 0xFFFFFFFFFFFFFFFCLL);
    v23 = v22 >= a2;
    if (v22 == a2)
    {
      break;
    }

    v24 = v22 < a2;
    v25 = result + 24;
    if (!v23)
    {
      v20 = v25;
    }

    v26 = v19 - v24;
    v19 = (v19 - v24) >> 1;
    if (v26 <= 9)
    {
      if (!v19)
      {
        goto LABEL_122;
      }

LABEL_59:
      v42 = v19 - 1;
      v43 = v20;
      while (1)
      {
        v44 = *(v43 & 0xFFFFFFFFFFFFFFFCLL);
        if (v44 == a2)
        {
          break;
        }

        v20 += v15;
        v45 = v44 > a2 || v42-- == 0;
        v43 += v15;
        if (v45)
        {
          goto LABEL_122;
        }
      }

LABEL_121:
      result = v20;
      if (v20)
      {
        return result;
      }

      do
      {
LABEL_122:
        v5 = (v5 + v6);
      }

      while (v5 < v9 && (*(v10 + 8 * *v5) & 1) == 0);
      if (v5 == v9)
      {
        return 0;
      }

      goto LABEL_15;
    }
  }

  if (result <= v18)
  {
LABEL_120:
    v20 = result;
    goto LABEL_121;
  }

  v95 = v20 + 24 * (v19 >> 1) - 24;
  do
  {
    if (*(v95 & 0xFFFFFFFFFFFFFFFCLL) != a2)
    {
      break;
    }

    result -= 24;
    v95 -= 24;
  }

  while (result > v18);
  return result;
}

id objc_constructInstance(Class cls, void *bytes)
{
  result = 0;
  if (!cls || !bytes)
  {
    return result;
  }

  objc_class::realizeIfNeeded(cls);
  v8 = *(cls + 15);
  v9 = cls & 0xFF80000000000007;
  if ((v8 & 0x2000) == 0)
  {
    if (!v9)
    {
      v10 = cls & 0x7FFFFFFFFFFFF8 | 0x100000000000001;
      goto LABEL_8;
    }

LABEL_13:
    _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", v5, v6, v7, cls);
  }

  if (v9)
  {
    goto LABEL_13;
  }

  v10 = cls & 0x7FFFFFFFFFFFF8;
LABEL_8:
  *bytes = v10;
  result = bytes;
  if ((v8 & 2) != 0)
  {

    return object_cxxConstructFromClass(bytes, cls, 0);
  }

  return result;
}

const char *__cdecl object_getClassName(id a1)
{
  if (!a1)
  {
    return "nil";
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    v4 = &objc_debug_taggedpointer_classes[a1 & 7];
    v1 = *v4;
    if (!*v4)
    {
      return "nil";
    }

    v5 = *v4;
    if (v1 == __NSUnrecognizedTaggedPointer)
    {
      v6 = (&objc_debug_taggedpointer_ext_classes + 8 * (a1 >> 55));
      v1 = *v6;
      if (!*v6)
      {
        return "nil";
      }

      v7 = *v6;
    }
  }

  else
  {
    v1 = (*a1 & 0x7FFFFFFFFFFFF8);
    if (!v1)
    {
      return "nil";
    }

    v2 = *a1 & 0x7FFFFFFFFFFFF8;
  }

  if (v1)
  {
    return objc_class::demangledName(v1, 1);
  }

  return "nil";
}

uint64_t *objc_object::sidetable_addExtraRC_nolock(objc_object *this, uint64_t a2)
{
  v6 = -this;
  v4 = *result;
  if ((*result & 0x8000000000000000) == 0)
  {
    if (__CFADD__(v4, 4 * a2))
    {
      v5 = *result & 3 | 0x8000000000000000;
    }

    else
    {
      v5 = v4 + 4 * a2;
    }

    *result = v5;
  }

  return result;
}

uint64_t method_t::types(uint64_t this)
{
  if ((this & 3u) > 1)
  {
    if ((this & 3) == 2)
    {
      if (*((this & 0xFFFFFFFFFFFFFFFCLL) + 8))
      {
        return *((this & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v1 = this & 0xFFFFFFFFFFFFFFFCLL;
    if ((this & 3) != 0)
    {
      v2 = *(v1 + 4);
      v3 = v2 + v1 + 4;
      if (v2)
      {
        return v3;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return *(v1 + 8);
    }
  }

  return this;
}

Method class_getInstanceMethod(Class cls, SEL name)
{
  v2 = 0;
  if (cls && name)
  {
    v4 = cls;
    lookUpImpOrForward(0, name, cls, 2u);
    v7 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v7, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v7)
    {
      os_unfair_lock_lock_with_options();
    }

    while (1)
    {
      MethodNoSuper_nolock = getMethodNoSuper_nolock(v4, name, v5, v6);
      if (MethodNoSuper_nolock)
      {
        break;
      }

      if (!*(v4 + 1))
      {
        v2 = 0;
        goto LABEL_10;
      }

      v4 = *(v4 + 1);
    }

    v2 = MethodNoSuper_nolock;
LABEL_10:
    v10 = *(StatusReg + 24);
    v11 = v10;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 != v10)
    {
      os_unfair_lock_unlock(runtimeLock);
    }
  }

  return v2;
}

void sub_1800A9210(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void objc_copyStruct(void *dest, const void *src, ptrdiff_t size, BOOL atomic, BOOL hasStrong)
{
  if (atomic)
  {
    v8 = &StructLocks[16 * (((dest >> 4) ^ (dest >> 9)) & 7)];
    locker_mixin<lockdebug::lock_mixin<objc_lock_base_t>>::lockWith(&StructLocks[16 * (((src >> 4) ^ (src >> 9)) & 7)], v8);
    memmove(dest, src, size);

    locker_mixin<lockdebug::lock_mixin<objc_lock_base_t>>::unlockWith(&StructLocks[16 * (((src >> 4) ^ (src >> 9)) & 7)], v8);
  }

  else
  {

    memmove(dest, src, size);
  }
}

objc_object *objc_object::rootRetain_overflow(objc_object *this, int a2)
{
  v2 = this;
  if ((this & 0x8000000000000000) == 0)
  {
    isa = this->isa;
    if (this->isa)
    {
      v5 = 0;
      while (isa >> 55)
      {
        v6 = isa + 0x100000000000000;
        if (isa >= 0xFF00000000000000)
        {
          if (((a2 | v5) & 1) == 0)
          {
            objc_object::sidetable_lock(v2);
          }

          v9 = isa;
          atomic_compare_exchange_strong_explicit(v2, &v9, v6 & 0x7FFFFFFFFFFFFFLL | 0x8080000000000000, memory_order_relaxed, memory_order_relaxed);
          if (v9 == isa)
          {
            objc_object::sidetable_addExtraRC_nolock(v2, 128);
            LOBYTE(v5) = 1;
LABEL_26:
            if (!a2 && (v5 & 1) != 0)
            {
              objc_object::sidetable_unlock(v2);
            }

            return v2;
          }

          v5 = 1;
          isa = v9;
        }

        else
        {
          v7 = isa;
          atomic_compare_exchange_strong_explicit(v2, &v7, v6, memory_order_relaxed, memory_order_relaxed);
          v8 = v7 == isa;
          isa = v7;
          if (v8)
          {
            goto LABEL_26;
          }
        }

        if ((isa & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if (v5)
      {
        objc_object::sidetable_unlock(v2);
      }

      if (a2)
      {
        return 0;
      }
    }

    else if ((*((isa & 0xFFFFFFFF8) + 0x1E) & 4) == 0)
    {
      LOBYTE(v5) = 0;
LABEL_20:
      if (a2)
      {
        if (!objc_object::sidetable_tryRetain(v2))
        {
          return 0;
        }
      }

      else
      {
        objc_object::sidetable_retain(v2, v5 & 1);
      }
    }
  }

  return v2;
}

uint64_t *objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>,DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>::InsertIntoBucketImpl<DisguisedPtr<objc_object const>>(int32x2_t *a1, uint64_t *a2, uint64_t *a3)
{
  v8 = a3;
  v5 = a1[1].i32[0];
  v6 = a1[2].u32[0];
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - a1[1].i32[1] > v6 >> 3)
  {
    goto LABEL_3;
  }

  a3 = v8;
LABEL_3:
  if (*a3 == 2)
  {
    a1[1] = vadd_s32(a1[1], 0xFFFFFFFF00000001);
  }

  else if (*a3 == 1)
  {
    ++a1[1].i32[0];
  }

  return a3;
}

BOOL objc::DenseMapBase<objc::DenseMap<char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>,char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>::LookupBucketFor<char const*>(uint64_t a1, char *__s1, char ***a3)
{
  if (*a1)
  {
    v6 = *a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = __s1;
    do
    {
      v10 = v8;
      v11 = *v9++;
      v8 = 257 * v8 + v11;
    }

    while (v11);
    v22 = 0;
    v12 = v7 - 1;
    for (i = 1; ; i = v21 + 1)
    {
      v21 = i;
      v14 = v10 & v12;
      v15 = &v6[v10 & v12];
      v16 = *v15;
      isEqual = objc::DenseMapInfo<char const*>::isEqual(__s1, *v15);
      if (isEqual)
      {
        break;
      }

      if (objc::DenseMapInfo<char const*>::isEqual(v16, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (v22)
        {
          v15 = v22;
        }

        break;
      }

      if (v21 > v7)
      {
        objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>,DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::FatalCorruptHashTables(a1, v6, v7);
      }

      v18 = objc::DenseMapInfo<char const*>::isEqual(v16, 0xFFFFFFFFFFFFFFFELL);
      v19 = v22;
      if (v18 && v22 == 0)
      {
        v19 = &v6[v14];
      }

      v22 = v19;
      v10 = v14 + v21;
    }
  }

  else
  {
    v15 = 0;
    isEqual = 0;
  }

  *a3 = v15;
  return isEqual;
}

BOOL objc::DenseMapBase<objc::DenseMap<char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>,char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>::try_emplace<objc::detail::DenseSetEmpty&>(uint64_t a1, int32x2_t *a2, char **a3)
{
  v14 = 0;
  result = objc::DenseMapBase<objc::DenseMap<char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>,char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>::LookupBucketFor<char const*>(a2, *a3, &v14);
  v7 = v14;
  if (result)
  {
    v8 = 0;
    v9 = *a2;
    goto LABEL_3;
  }

  v11 = a2[1].i32[0];
  v12 = a2[2].u32[0];
  if (4 * v11 + 4 >= 3 * v12)
  {
    v12 *= 2;
    goto LABEL_12;
  }

  if (v12 + ~v11 - a2[1].i32[1] <= v12 >> 3)
  {
LABEL_12:
    objc::DenseMap<char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>::grow(a2, v12);
    v14 = 0;
    objc::DenseMapBase<objc::DenseMap<char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>,char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>::LookupBucketFor<char const*>(a2, *a3, &v14);
    v7 = v14;
  }

  v13 = *v7;
  result = objc::DenseMapInfo<char const*>::isEqual(*v7, 0xFFFFFFFFFFFFFFFFLL);
  if (result)
  {
    ++a2[1].i32[0];
  }

  else
  {
    result = objc::DenseMapInfo<char const*>::isEqual(v13, 0xFFFFFFFFFFFFFFFELL);
    if (result)
    {
      a2[1] = vadd_s32(a2[1], 0xFFFFFFFF00000001);
    }
  }

  *v7 = *a3;
  v9 = *a2;
  v8 = 1;
LABEL_3:
  v10 = *&v9 + 8 * a2[2].u32[0];
  *a1 = v7;
  *(a1 + 8) = v10;
  *(a1 + 16) = v8;
  return result;
}

BOOL objc::DenseMapInfo<char const*>::isEqual(char *__s1, char *a2)
{
  if (__s1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a2 != -2 && __s1 != -2 && __s1 != -1 && a2 != -1)
  {
    return strcmp(__s1, a2) == 0;
  }

  return result;
}

unsigned int method_getNumberOfArguments(Method m)
{
  if (!m)
  {
    return 0;
  }

  v1 = method_t::types(m);
  v5 = SkipFirstType(v1, v2, v3, v4) - 1;
  do
  {
    v10 = *++v5;
    v9 = v10;
  }

  while ((v10 - 48) < 0xA);
  if (!v9)
  {
    return 0;
  }

  v11 = 0;
  do
  {
    Type = SkipFirstType(v5, v6, v7, v8);
    v13 = Type + 1;
    v14 = *Type;
    if (v14 != 43)
    {
      v13 = Type;
    }

    v15 = *v13 == 45;
    if (v14 == 43)
    {
      ++v15;
    }

    v5 = &Type[v15 - 1];
    do
    {
      v17 = *++v5;
      v16 = v17;
    }

    while ((v17 - 48) < 0xA);
    ++v11;
  }

  while (v16);
  return v11;
}

const char *SkipFirstType(const char *a1, uint64_t a2, const char *a3, char *a4)
{
  do
  {
    v5 = a1;
    v7 = *a1++;
    v6 = v7;
    v8 = (v7 - 78);
    if (v8 > 0x2D)
    {
      goto LABEL_8;
    }
  }

  while (((1 << v8) & 0x1300010103) != 0);
  if (v8 == 13)
  {
    do
    {
      v11 = *++v5;
    }

    while ((v11 - 48) < 0xA);
    v12 = &v5[SubtypeUntil(v5, 93, a3, a4)];
    return v12 + 1;
  }

  if (v8 == 45)
  {
    v9 = a1;
    v10 = 125;
LABEL_14:
    v12 = &a1[SubtypeUntil(v9, v10, a3, a4)];
    return v12 + 1;
  }

LABEL_8:
  if (v6 == 40)
  {
    v9 = a1;
    v10 = 41;
    goto LABEL_14;
  }

  if (v6 != 64)
  {
    return v5 + 1;
  }

  if (v5[1] == 63)
  {
    return v5 + 2;
  }

  return a1;
}

const char *encoding_getArgumentInfo(const char *a1, uint64_t a2, char *a3, char *a4)
{
  v6 = a2;
  result = SkipFirstType(a1, a2, a3, a4) - 1;
  do
  {
    v12 = *++result;
    v11 = v12;
  }

  while ((v12 - 48) < 0xA);
  v15 = v11 == 0;
  v13 = v11 != 0;
  v14 = 0;
  v15 = v15 || v6 == 0;
  if (!v15)
  {
    v16 = 0;
    do
    {
      Type = SkipFirstType(result, v8, v9, v10);
      v18 = Type;
      v19 = *Type == 43;
      if (*Type == 43)
      {
        v20 = Type + 1;
      }

      else
      {
        v20 = Type;
      }

      v21 = *v20;
      if (v21 == 45)
      {
        result = v20 + 1;
      }

      else
      {
        result = v20;
      }

      if (v16)
      {
        result = &v18[(v21 == 45) - 1 + v19];
        do
        {
          v23 = *++result;
          v22 = v23;
        }

        while ((v23 - 48) < 0xA);
      }

      else
      {
        v24 = *result;
        if ((v24 - 48) > 9)
        {
          v22 = *result;
        }

        else
        {
          do
          {
            v25 = *++result;
            v22 = v25;
            v14 = 10 * v14 + (v24 - 48);
            LOBYTE(v24) = v25;
          }

          while ((v25 - 48) < 0xA);
        }

        if (v21 == 45)
        {
          v14 = -v14;
        }
      }

      ++v16;
      v15 = v22 == 0;
      v13 = v22 != 0;
    }

    while (!v15 && v16 != v6);
  }

  if (v13)
  {
    *a3 = result;
    result = SkipFirstType(result, v8, v9, v10);
    if (v6)
    {
      v27 = *result;
      v28 = v27 == 43;
      if (v27 == 43)
      {
        v29 = result + 1;
      }

      else
      {
        v29 = result;
      }

      v30 = *v29;
      if (v30 == 45)
      {
        ++v29;
      }

      v31 = *v29;
      if ((v31 - 48) > 9)
      {
        v32 = 0;
      }

      else
      {
        v32 = 0;
        v33 = &result[(v30 == 45) + 1 + v28];
        do
        {
          v32 = 10 * v32 + (v31 - 48);
          v34 = *v33++;
          LOBYTE(v31) = v34;
        }

        while ((v34 - 48) < 0xA);
      }

      if (v30 == 45)
      {
        v35 = -v32;
      }

      else
      {
        v35 = v32;
      }

      v13 = v35 - v14;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a4 = v13;
  return result;
}

void method_getReturnType(Method m, char *dst, size_t dst_len)
{
  if (!m)
  {
    if (!dst)
    {
      return;
    }

    goto LABEL_10;
  }

  v5 = method_t::types(m);
  if (!dst)
  {
    return;
  }

  v9 = v5;
  if (!v5)
  {
LABEL_10:
    v14 = dst;
    v13 = dst_len;
    goto LABEL_11;
  }

  Type = SkipFirstType(v5, v6, v7, v8);
  v11 = Type - v9;
  if (Type - v9 >= dst_len)
  {
    v12 = dst_len;
  }

  else
  {
    v12 = Type - v9;
  }

  strncpy(dst, v9, v12);
  v13 = dst_len - v11;
  if (dst_len > v11)
  {
    v14 = &dst[v11];
LABEL_11:

    bzero(v14, v13);
  }
}

char *objc::SafeRanges::add(objc::SafeRanges *this, uint64_t a2)
{
  v4 = qword_1ED3F6308;
  if (qword_1ED3F6308 == (HIDWORD(qword_1ED3F6308) & 0x7FFFFFFF))
  {
    v5 = 1 << (29 - __clz(qword_1ED3F6308));
    if (qword_1ED3F6308 >= 0x10)
    {
      v6 = v5;
    }

    else
    {
      v6 = 4;
    }

    v7 = v6 + HIDWORD(qword_1ED3F6308);
    HIDWORD(qword_1ED3F6308) = HIDWORD(qword_1ED3F6308) & 0x80000000 | v7 & 0x7FFFFFFF;
    result = malloc_type_realloc(qword_1ED3F6300, 16 * (v7 & 0x7FFFFFFF), 0x1000040451B5BE8uLL);
    qword_1ED3F6300 = result;
    v4 = qword_1ED3F6308;
  }

  else
  {
    result = qword_1ED3F6300;
  }

  v9 = v4 + 1;
  v10 = &result[16 * v4];
  *v10 = this;
  *(v10 + 1) = a2;
  qword_1ED3F6308 = __PAIR64__(HIDWORD(qword_1ED3F6308), v9) & 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

uint64_t header_info::classlist(header_info *this, unint64_t *a2)
{
  if (preoptimized != 1 || (*(this + *(this + 1) + 12) & 8) == 0 || *(headerInfoROs + 4) >= 0x18u)
  {
    v3 = this + *(this + 2) + 16;
  }

  v4 = *this;
  result = _dyld_lookup_section_info();
  v7 = v6 >> 3;
  if (!result)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t std::__function::__value_func<void ()(segment_command_64 const*,long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t header_info::selrefs(header_info *this, unint64_t *a2)
{
  if (preoptimized != 1 || (*(this + *(this + 1) + 12) & 8) == 0 || *(headerInfoROs + 4) >= 0x18u)
  {
    v3 = this + *(this + 2) + 16;
  }

  v4 = *this;
  result = _dyld_lookup_section_info();
  v7 = v6 >> 3;
  if (!result)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t hasSignedClassROPointers(unint64_t a1)
{
  if (dataSegmentsRanges <= a1 && *algn_1ED3F62F8 > a1)
  {
    return 1;
  }

  v2 = _dyld_lookup_section_info();
  if (v2)
  {
    return (*(v2 + 4) >> 4) & 1;
  }

  else
  {
    return 1;
  }
}

_DWORD *NXCreateMapTable(uint64_t *a1, unsigned int a2)
{
  v4 = malloc_type_malloc(0x18uLL, 0x10E0040A403B16CuLL);
  v5 = prototypes;
  if (!prototypes)
  {
    v19 = *protoPrototype;
    v5 = NXCreateHashTable(&v19, 0, 0);
    prototypes = v5;
  }

  if (*a1 && (v6 = *a1, v7 = a1 + 1, a1[1]) && (v8 = a1[1], v9 = a1 + 2, a1[2]) && (v10 = a1[2], !*(a1 + 6)))
  {
    v11 = NXHashGet(v5, a1);
    if (!v11)
    {
      v12 = malloc_type_malloc(0x20uLL, 0x1080040AA79BA9DuLL);
      v11 = v12;
      if (*a1)
      {
        v13 = *a1;
      }

      *v12 = *a1;
      if (*v7)
      {
        v14 = *v7;
      }

      v12[1] = *v7;
      if (*v9)
      {
        v15 = *v9;
      }

      v12[2] = *v9;
      *(v12 + 6) = *(a1 + 6);
      NXHashInsert(prototypes, v12);
    }

    *v4 = v11;
    v16 = 1 << -__clz(a2);
    if (a2 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 2;
    }

    v4[2] = 0;
    v4[3] = v17 - 1;
    *(v4 + 2) = allocBuckets(v17);
  }

  else
  {
    _objc_inform("*** NXCreateMapTable: invalid creation parameters\n", v19.hash, v19.isEqual);
    return 0;
  }

  return v4;
}

NXHashTable *__cdecl NXCreateHashTable(NXHashTablePrototype *prototype, unsigned int capacity, const void *info)
{
  v6 = malloc_type_malloc(0x20uLL, 0x10E00402E54A04BuLL);
  v7 = prototypes;
  if (!prototypes)
  {
    v8 = malloc_type_malloc(8uLL, 0x76B70482uLL);
    ::free(v8);
    v9 = malloc_type_malloc(0x20uLL, 0x10E00402E54A04BuLL);
    prototypes = v9;
    *v9 = &protoPrototype;
    v9[1] = 0x100000001;
    v10 = malloc_type_calloc(1uLL, 0x10uLL, 0x10C20406D26F19BuLL);
    v7 = prototypes;
    *(prototypes + 16) = v10;
    v7->info = 0;
    *v10 = 1;
    v10[1] = &protoPrototype;
  }

  if (prototype->hash)
  {
    hash = prototype->hash;
  }

  else
  {
    prototype->hash = NXPtrHash;
  }

  p_isEqual = &prototype->isEqual;
  if (prototype->isEqual)
  {
    isEqual = prototype->isEqual;
  }

  else
  {
    *p_isEqual = NXPtrIsEqual;
  }

  p_free = &prototype->free;
  if (prototype->free)
  {
    free = prototype->free;
  }

  else
  {
    *p_free = NXNoEffectFree;
  }

  if (prototype->style)
  {
    _objc_inform("*** NXCreateHashTable: invalid style\n");
    return 0;
  }

  v16 = NXHashGet(v7, prototype);
  if (!v16)
  {
    v17 = malloc_type_malloc(0x20uLL, 0x1080040AA79BA9DuLL);
    if (prototype->hash)
    {
      v18 = prototype->hash;
    }

    *v17 = prototype->hash;
    if (*p_isEqual)
    {
      v19 = *p_isEqual;
    }

    v17[1] = *p_isEqual;
    if (*p_free)
    {
      v20 = *p_free;
    }

    v17[2] = *p_free;
    *(v17 + 6) = prototype->style;
    NXHashInsert(prototypes, v17);
    v16 = NXHashGet(prototypes, prototype);
    if (!v16)
    {
      _objc_inform("*** NXCreateHashTable: bug\n");
      return 0;
    }
  }

  v6->prototype = v16;
  v6->info = info;
  v21 = -1 << -__clz(capacity);
  if (capacity > 1)
  {
    v22 = ~v21;
  }

  else
  {
    v22 = 1;
  }

  v6->count = 0;
  v6->nbBuckets = v22;
  v6->buckets = malloc_type_calloc(v22, 0x10uLL, 0x10C20406D26F19BuLL);
  return v6;
}

void *__cdecl NXHashGet(NXHashTable *table, const void *data)
{
  buckets = table->buckets;
  v5 = &buckets[16 * ((table->prototype->hash)(table->info) % table->nbBuckets)];
  v6 = *v5;
  if (!*v5)
  {
    return 0;
  }

  if (v6 == 1)
  {
    v9 = *(v5 + 1);
    i = (v5 + 8);
    v7 = v9;
    if (v9 != data)
    {
      if ((table->prototype->isEqual)(table->info, data))
      {
        return *i;
      }

      return 0;
    }
  }

  else
  {
    for (i = *(v5 + 1); ; ++i)
    {
      v7 = *i;
      if (*i == data)
      {
        break;
      }

      if ((table->prototype->isEqual)(table->info, data))
      {
        return *i;
      }

      if (!--v6)
      {
        return 0;
      }
    }
  }

  return v7;
}

unint64_t hashPrototype(const void *a1, uint64_t *a2)
{
  if (*a2)
  {
    v2 = *a2;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = a2[1];
  }

  else
  {
    v3 = 0;
  }

  v4 = a2[2];
  if (v4)
  {
    v5 = a2[2];
  }

  return *(a2 + 6) ^ ((v3 ^ v2 ^ v4) >> 16) ^ v2 ^ v3 ^ v4;
}

BOOL isEqualPrototype(const void *a1, void *a2, void *a3)
{
  if (*a2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 0;
  }

  if (*a3)
  {
    v4 = *a3;
  }

  if (v3 != *a3)
  {
    return 0;
  }

  if (a2[1])
  {
    v5 = a2[1];
  }

  else
  {
    v5 = 0;
  }

  v6 = a3[1];
  if (v6)
  {
    v7 = a3[1];
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = a2[2] ? a2[2] : 0;
  v9 = a3[2];
  if (v9)
  {
    v10 = a3[2];
  }

  return v8 == v9 && *(a2 + 6) == *(a3 + 6);
}

void *__cdecl NXHashInsert(NXHashTable *table, const void *data)
{
  buckets = table->buckets;
  v5 = &buckets[16 * ((table->prototype->hash)(table->info) % table->nbBuckets)];
  v6 = *v5;
  if (*v5 == 1)
  {
    v7 = *(v5 + 1);
    if (v7 != data)
    {
      if (!(table->prototype->isEqual)(table->info, data))
      {
        v12 = malloc_type_calloc(3uLL, 8uLL, 0x80040B8603338uLL);
        v13 = *(v5 + 1);
        v12[1] = data;
        v12[2] = v13;
        ++*v5;
        *(v5 + 1) = v12 + 1;
        goto LABEL_18;
      }

      v7 = *(v5 + 1);
    }

    *(v5 + 1) = data;
    return v7;
  }

  if (!v6)
  {
    v7 = 0;
    *v5 = 1;
    *(v5 + 1) = data;
    ++table->count;
    return v7;
  }

  v8 = *(v5 + 1);
  do
  {
    v7 = *v8;
    if (*v8 == data)
    {
      goto LABEL_16;
    }

    if ((table->prototype->isEqual)(table->info, data))
    {
      v7 = *v8;
LABEL_16:
      *v8 = data;
      return v7;
    }

    ++v8;
    --v6;
  }

  while (v6);
  v9 = malloc_type_calloc((*v5 + 2), 8uLL, 0x80040B8603338uLL);
  v10 = (v9 + 8);
  v11 = *v5;
  if (v11)
  {
    memmove(v9 + 16, *(v5 + 1), 8 * v11);
  }

  *v10 = data;
  free((*(v5 + 1) - 8));
  ++*v5;
  *(v5 + 1) = v10;
LABEL_18:
  nbBuckets = table->nbBuckets;
  v15 = table->count + 1;
  table->count = v15;
  if (v15 > nbBuckets)
  {
    _NXHashRehashToCapacity(table, (2 * nbBuckets) | 1);
  }

  return 0;
}

void _NXHashRehashToCapacity(uint64_t a1, unsigned int a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0x10E00402E54A04BuLL);
  v5 = v4;
  if (*a1)
  {
    v6 = *a1;
  }

  v4->prototype = *a1;
  *&v4->count = *(a1 + 8);
  v4->buckets = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 12) = a2;
  v7 = malloc_type_calloc(a2, 0x10uLL, 0x10C20406D26F19BuLL);
  v8 = 0;
  *(a1 + 16) = v7;
  nbBuckets = v5->nbBuckets;
  while (1)
  {
    buckets = v5->buckets;
    if (!v8)
    {
      break;
    }

LABEL_9:
    --v8;
    v14 = &buckets[16 * nbBuckets];
    v16 = *v14;
    v15 = (v14 + 8);
    if (v16 != 1)
    {
      v15 = (*v15 + 8 * v8);
    }

    NXHashInsert(a1, *v15);
  }

  v11 = nbBuckets;
  v12 = &buckets[16 * nbBuckets - 16];
  while (v11)
  {
    --v11;
    v13 = *v12;
    v12 -= 16;
    v8 = v13;
    if (v13)
    {
      nbBuckets = v11;
      goto LABEL_9;
    }
  }

  freeBuckets(v5, 0);
  if (v5->count != *(a1 + 8))
  {
    _objc_inform("*** hashtable: count differs after rehashing; probably indicates a broken invariant: there are x and y such as isEqual(x, y) is TRUE but hash(x) != hash (y)\n");
  }

  free(v5->buckets);

  free(v5);
}

void freeBuckets(NXHashTable *a1, int a2)
{
  nbBuckets = a1->nbBuckets;
  if (nbBuckets)
  {
    for (i = a1->buckets; !*i; i += 2)
    {
LABEL_16:
      if (!--nbBuckets)
      {
        return;
      }
    }

    free = NXNoEffectFree;
    if (a2)
    {
      if (!a1->prototype->free)
      {
        v7 = 0;
LABEL_9:
        v8 = *i;
        v9 = i[1];
        if (*i)
        {
          info = a1->info;
          if (v8 == 1)
          {
            (v7)(a1->info, i[1]);
LABEL_15:
            *i = 0;
            i[1] = 0;
            goto LABEL_16;
          }

          v11 = i[1];
          do
          {
            --v8;
            v12 = *v11++;
            (v7)(info, v12);
          }

          while (v8);
        }

        ::free((v9 - 8));
        goto LABEL_15;
      }

      free = a1->prototype->free;
    }

    v7 = free;
    goto LABEL_9;
  }
}

unint64_t hashPrototype(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    v2 = *a2;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = a2[1];
  }

  else
  {
    v3 = 0;
  }

  v4 = a2[2];
  if (v4)
  {
    v5 = a2[2];
  }

  return v4 ^ v2 ^ v3 ^ *(a2 + 6) ^ ((v4 ^ v2 ^ v3) >> 16);
}

void *allocBuckets(int a1)
{
  v1 = a1;
  result = malloc_type_malloc(16 * (a1 + 1), 0xC0040D1025EB5uLL) + 16;
  if (v1)
  {
    v3 = result;
    do
    {
      *v3 = -1;
      v3[1] = 0;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

atomic_ullong protocols(void)
{
  if (!protocols(void)::protocol_map[0])
  {
    v3[0] = _mapStrHash;
    v3[1] = _mapStrIsEqual;
    v3[2] = _mapNoFree;
    v4 = 0;
    v0 = NXCreateMapTable(v3, 0x10u);
    while (1)
    {
      v1 = protocols(void)::protocol_map[0];
      if (protocols(void)::protocol_map[0])
      {
        break;
      }

      atomic_compare_exchange_strong(protocols(void)::protocol_map, &v1, v0);
      if (!v1)
      {
        return protocols(void)::protocol_map[0];
      }
    }

    NXFreeMapTable(v0);
  }

  return protocols(void)::protocol_map[0];
}

BOOL isEqualPrototype(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*a2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 0;
  }

  if (*a3)
  {
    v4 = *a3;
  }

  if (v3 != *a3)
  {
    return 0;
  }

  if (a2[1])
  {
    v5 = a2[1];
  }

  else
  {
    v5 = 0;
  }

  v6 = a3[1];
  if (v6)
  {
    v7 = a3[1];
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = a2[2] ? a2[2] : 0;
  v9 = a3[2];
  if (v9)
  {
    v10 = a3[2];
  }

  return v8 == v9 && *(a2 + 6) == *(a3 + 6);
}

uint64_t header_info::nlclslist(header_info *this, unint64_t *a2)
{
  if (preoptimized != 1 || (*(this + *(this + 1) + 12) & 8) == 0 || *(headerInfoROs + 4) >= 0x18u)
  {
    v3 = this + *(this + 2) + 16;
  }

  v4 = *this;
  result = _dyld_lookup_section_info();
  v7 = v6 >> 3;
  if (!result)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

unint64_t addClassTableEntry(unint64_t result, char a2)
{
  for (i = result; ; i = *i & 0xFFFFFFFF8)
  {
    if ((*i - 1) < 0xF || (*(i + 32) & 0x8000000000000000) == 0 || (v4 = *((*(i + 32) & 0xF00007FFFFFFFF8) + 4), qword_1ED3F6308 <= v4) || (*(qword_1ED3F6300 + 16 * v4) <= i ? (v5 = *(qword_1ED3F6300 + 16 * v4 + 8) > i) : (v5 = 0), !v5))
    {
      result = objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-i);
      if (objc::allocatedClasses + 8 * qword_1ED3F6160 == result)
      {
        result = dataSegmentsContain(i, v8, v6, v7);
        if ((result & 1) == 0)
        {
          v9 = -i;
          result = objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::try_emplace<objc::detail::DenseSetEmpty&>(v10, &objc::allocatedClasses, &v9);
        }
      }
    }

    if ((a2 & 1) == 0)
    {
      break;
    }

    a2 = 0;
  }

  return result;
}

uint64_t objc::SafeRanges::find(objc::SafeRanges *this, unsigned int *a2, unsigned int *a3, __n128 a4)
{
  if ((dword_1ED3F630C & 0x80000000) == 0)
  {
    v6 = 126 - 2 * __clz(dword_1ED3F6308);
    if (dword_1ED3F6308)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,objc::SafeRanges::find(unsigned long,unsigned int &)::$_0 &,objc::SafeRanges::Range *,false>(qword_1ED3F6300, (qword_1ED3F6300 + 16 * dword_1ED3F6308), v7, 1, a4);
    dword_1ED3F630C |= 0x80000000;
  }

  v8 = dword_1ED3F6308;
  if (dword_1ED3F6308)
  {
    v9 = 0;
    do
    {
      v10 = (v8 + v9) >> 1;
      v11 = (qword_1ED3F6300 + 16 * v10);
      if (*v11 <= this)
      {
        if (v11[1] > this)
        {
          result = 1;
          goto LABEL_15;
        }

        v9 = v10 + 1;
      }

      else
      {
        v8 = (v8 + v9) >> 1;
      }
    }

    while (v9 < v8);
  }

  result = 0;
  v10 = -1;
LABEL_15:
  *a2 = v10;
  return result;
}

uint64_t dataSegmentsContain(objc_class *a1, __n128 a2, uint64_t a3, unsigned int *a4)
{
  v6 = 0;
  result = objc::SafeRanges::find(a1, &v6, a4, a2);
  if (result && (*a1 - 1) >= 0xF && (*(a1 + 4) & 0x8000000000000000) != 0)
  {
    *((*(a1 + 4) & 0xF00007FFFFFFFF8) + 4) = v6;
  }

  return result;
}

uint64_t objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(uint64_t a1)
{
  v2 = 0;
  if (objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::LookupBucketFor<DisguisedPtr<objc_class>>(&objc::allocatedClasses, a1, &v2))
  {
    return v2;
  }

  else
  {
    return objc::allocatedClasses + 8 * qword_1ED3F6160;
  }
}

uint64_t objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::LookupBucketFor<DisguisedPtr<objc_class>>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0x8A970BE7488FDA55 * (-a2 ^ (-a2 >> 4));
    v7 = v5 - 1;
    v8 = (v5 - 1) & (bswap64(v6) ^ v6);
    v9 = &v3[v8];
    v10 = *v9;
    if (*v9 == a2)
    {
      v11 = 1;
    }

    else
    {
      v13 = 0;
      v14 = 1;
      while (v10 != 1)
      {
        if (v14 > v5)
        {
          objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>,DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::FatalCorruptHashTables(a1, v3, *(a1 + 16));
        }

        if (v13)
        {
          v15 = 0;
        }

        else
        {
          v15 = v10 == 2;
        }

        if (v15)
        {
          v13 = v9;
        }

        v16 = v8 + v14++;
        v8 = v16 & v7;
        v9 = &v3[v16 & v7];
        v10 = *v9;
        v11 = 1;
        if (*v9 == a2)
        {
          goto LABEL_7;
        }
      }

      v11 = 0;
      if (v13)
      {
        v9 = v13;
      }
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

LABEL_7:
  *a3 = v9;
  return v11;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,objc::SafeRanges::find(unsigned long,unsigned int &)::$_0 &,objc::SafeRanges::Range *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        if (v9->n128_u64[0] >= *v12)
        {
          return result;
        }

LABEL_107:
        v127 = *v12;
        *v12 = *v9;
        result = v127;
LABEL_108:
        *v9 = result;
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
      v58 = (v12 + 16);
      v61 = *(v12 + 16);
      v62 = (v12 + 32);
      v63 = *(v12 + 32);
      if (v61 >= *v12)
      {
        if (v63 < v61)
        {
          result = *v58;
          *v58 = *v62;
          *v62 = result;
          if (*(v12 + 16) < *v12)
          {
            v130 = *v12;
            *v12 = *v58;
            result = v130;
            *v58 = v130;
          }
        }
      }

      else
      {
        if (v63 < v61)
        {
          v128 = *v12;
          *v12 = *v62;
          result = v128;
          goto LABEL_187;
        }

        v132 = *v12;
        *v12 = *v58;
        result = v132;
        *v58 = v132;
        if (v63 < *(v12 + 16))
        {
          result = *v58;
          *v58 = *v62;
LABEL_187:
          *v62 = result;
        }
      }

      if (v9->n128_u64[0] >= v62->n128_u64[0])
      {
        return result;
      }

      result = *v62;
      *v62 = *v9;
      *v9 = result;
      if (v62->n128_u64[0] >= v58->n128_u64[0])
      {
        return result;
      }

      result = *v58;
      *v58 = *v62;
      *v62 = result;
LABEL_191:
      if (*(v12 + 16) < *v12)
      {
        v133 = *v12;
        *v12 = *v58;
        result = v133;
        *v58 = v133;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,objc::SafeRanges::find(unsigned long,unsigned int &)::$_0 &,objc::SafeRanges::Range *,0>(v12, (v12 + 16), (v12 + 32), (v12 + 48), a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v64 = (v12 + 16);
      v66 = v12 == a2 || v64 == a2;
      if (a4)
      {
        if (!v66)
        {
          v67 = 0;
          v68 = v12;
          do
          {
            v69 = v64;
            v70 = v68[2];
            if (v70 < *v68)
            {
              v71 = v68[3];
              v72 = v67;
              while (1)
              {
                result = *(v12 + v72);
                *(v12 + v72 + 16) = result;
                if (!v72)
                {
                  break;
                }

                v73 = *(v12 + v72 - 16);
                v72 -= 16;
                if (v70 >= v73)
                {
                  v74 = (v12 + v72 + 16);
                  goto LABEL_127;
                }
              }

              v74 = v12;
LABEL_127:
              *v74 = v70;
              v74[1] = v71;
            }

            v64 = v69 + 1;
            v67 += 16;
            v68 = v69;
          }

          while (&v69[1] != a2);
        }
      }

      else if (!v66)
      {
        do
        {
          v104 = v64;
          v105 = a1[1].n128_u64[0];
          if (v105 < a1->n128_u64[0])
          {
            v106 = a1[1].n128_u64[1];
            v107 = v104;
            do
            {
              result = v107[-1];
              *v107 = result;
              v108 = v107[-2].n128_u64[0];
              --v107;
            }

            while (v105 < v108);
            v107->n128_u64[0] = v105;
            v107->n128_u64[1] = v106;
          }

          v64 = v104 + 1;
          a1 = v104;
        }

        while (&v104[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v75 = (v13 - 2) >> 1;
        v76 = v75;
        do
        {
          v77 = v76;
          if (v75 >= v76)
          {
            v78 = (2 * v76) | 1;
            v79 = (v12 + 16 * v78);
            if (2 * v77 + 2 >= v13)
            {
              v80 = *v79;
            }

            else
            {
              v80 = v79[2];
              v81 = *v79 >= v80;
              if (*v79 > v80)
              {
                v80 = *v79;
              }

              if (!v81)
              {
                v79 += 2;
                v78 = 2 * v77 + 2;
              }
            }

            v82 = (v12 + 16 * v77);
            v83 = *v82;
            if (v80 >= *v82)
            {
              v84 = v82[1];
              do
              {
                v85 = v82;
                v82 = v79;
                *v85 = *v79;
                if (v75 < v78)
                {
                  break;
                }

                v86 = (2 * v78) | 1;
                v79 = (v12 + 16 * v86);
                v78 = 2 * v78 + 2;
                if (v78 >= v13)
                {
                  v87 = *v79;
                  v78 = v86;
                }

                else
                {
                  v87 = *v79;
                  v88 = v79[2];
                  if (*v79 <= v88)
                  {
                    v87 = v79[2];
                  }

                  if (*v79 >= v88)
                  {
                    v78 = v86;
                  }

                  else
                  {
                    v79 += 2;
                  }
                }
              }

              while (v87 >= v83);
              *v82 = v83;
              v82[1] = v84;
            }
          }

          v76 = v77 - 1;
        }

        while (v77);
        do
        {
          v89 = 0;
          v129 = *v12;
          v90 = v12;
          do
          {
            v91 = &v90[v89];
            v92 = v91 + 1;
            v93 = (2 * v89) | 1;
            v89 = 2 * v89 + 2;
            if (v89 >= v13)
            {
              v89 = v93;
            }

            else
            {
              v95 = v91[2].n128_u64[0];
              v94 = v91 + 2;
              if (v94[-1].n128_u64[0] >= v95)
              {
                v89 = v93;
              }

              else
              {
                v92 = v94;
              }
            }

            *v90 = *v92;
            v90 = v92;
          }

          while (v89 <= ((v13 - 2) >> 1));
          if (v92 == --a2)
          {
            result = v129;
            *v92 = v129;
          }

          else
          {
            *v92 = *a2;
            result = v129;
            *a2 = v129;
            v96 = (&v92[1] - v12) >> 4;
            v97 = v96 < 2;
            v98 = v96 - 2;
            if (!v97)
            {
              v99 = v98 >> 1;
              v100 = (v12 + 16 * v99);
              v101 = v92->n128_u64[0];
              if (v100->n128_u64[0] < v92->n128_u64[0])
              {
                v102 = v92->n128_u64[1];
                do
                {
                  v103 = v92;
                  v92 = v100;
                  result = *v100;
                  *v103 = *v100;
                  if (!v99)
                  {
                    break;
                  }

                  v99 = (v99 - 1) >> 1;
                  v100 = (v12 + 16 * v99);
                }

                while (v100->n128_u64[0] < v101);
                v92->n128_u64[0] = v101;
                v92->n128_u64[1] = v102;
              }
            }
          }

          v97 = v13-- <= 2;
        }

        while (!v97);
      }

      return result;
    }

    v14 = (v12 + 16 * (v13 >> 1));
    v15 = v14;
    v16 = v9->n128_u64[0];
    if (v13 >= 0x81)
    {
      v17 = v14->n128_u64[0];
      if (v14->n128_u64[0] >= *v12)
      {
        if (v16 < v17)
        {
          v111 = *v14;
          *v14 = *v9;
          *v9 = v111;
          if (v14->n128_u64[0] < *v12)
          {
            v112 = *v12;
            *v12 = *v14;
            *v14 = v112;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v109 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v115 = *v12;
        *v12 = *v14;
        *v14 = v115;
        if (v9->n128_u64[0] < v14->n128_u64[0])
        {
          v109 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v109;
        }
      }

      v19 = (v12 + 16);
      v20 = v14 - 1;
      v21 = v14[-1].n128_u64[0];
      v22 = v10->n128_u64[0];
      if (v21 >= *(v12 + 16))
      {
        if (v22 < v21)
        {
          v116 = *v20;
          *v20 = *v10;
          *v10 = v116;
          if (v20->n128_u64[0] < v19->n128_u64[0])
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (v10->n128_u64[0] < v20->n128_u64[0])
        {
          v118 = *v20;
          *v20 = *v10;
          v23 = v118;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = (v12 + 32);
      v29 = v14[1].n128_u64[0];
      v27 = v14 + 1;
      v28 = v29;
      v30 = v11->n128_u64[0];
      if (v29 >= *(v12 + 32))
      {
        if (v30 < v28)
        {
          v119 = *v27;
          *v27 = *v11;
          *v11 = v119;
          if (v27->n128_u64[0] < v26->n128_u64[0])
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v28)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (v11->n128_u64[0] < v27->n128_u64[0])
        {
          v120 = *v27;
          *v27 = *v11;
          v31 = v120;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = v15->n128_u64[0];
      v35 = v27->n128_u64[0];
      if (v15->n128_u64[0] >= v20->n128_u64[0])
      {
        if (v35 < v34)
        {
          v122 = *v15;
          *v15 = *v27;
          *v27 = v122;
          if (v15->n128_u64[0] < v20->n128_u64[0])
          {
            v123 = *v20;
            *v20 = *v15;
            *v15 = v123;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v121 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v124 = *v20;
        *v20 = *v15;
        *v15 = v124;
        if (v27->n128_u64[0] < v15->n128_u64[0])
        {
          v121 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v121;
        }
      }

      v125 = *v12;
      *v12 = *v15;
      result = v125;
      *v15 = v125;
      goto LABEL_58;
    }

    v18 = *v12;
    if (*v12 >= v14->n128_u64[0])
    {
      if (v16 < v18)
      {
        v113 = *v12;
        *v12 = *v9;
        result = v113;
        *v9 = v113;
        if (*v12 < v14->n128_u64[0])
        {
          v114 = *v14;
          *v14 = *v12;
          result = v114;
          *v12 = v114;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v18)
    {
      v117 = *v14;
      *v14 = *v12;
      result = v117;
      *v12 = v117;
      if (v9->n128_u64[0] >= *v12)
      {
        goto LABEL_58;
      }

      v110 = *v12;
      *v12 = *v9;
    }

    else
    {
      v110 = *v14;
      *v14 = *v9;
    }

    result = v110;
    *v9 = v110;
LABEL_58:
    --a3;
    v36 = *v12;
    if ((a4 & 1) != 0 || *(v12 - 16) < v36)
    {
      v37 = *(v12 + 8);
      v38 = v12;
      do
      {
        v39 = v38;
        v40 = *(v38 + 16);
        v38 += 16;
      }

      while (v40 < v36);
      v41 = a2;
      if (v39 == v12)
      {
        v41 = a2;
        do
        {
          if (v38 >= v41)
          {
            break;
          }

          v43 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v43 >= v36);
      }

      else
      {
        do
        {
          v42 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v42 >= v36);
      }

      v12 = v38;
      if (v38 < v41)
      {
        v44 = v41;
        do
        {
          result = *v12;
          *v12 = *v44;
          *v44 = result;
          do
          {
            v45 = *(v12 + 16);
            v12 += 16;
          }

          while (v45 < v36);
          do
          {
            v46 = v44[-1].n128_u64[0];
            --v44;
          }

          while (v46 >= v36);
        }

        while (v12 < v44);
      }

      v47 = (v12 - 16);
      if ((v12 - 16) != a1)
      {
        result = *v47;
        *a1 = *v47;
      }

      *(v12 - 16) = v36;
      *(v12 - 8) = v37;
      if (v38 < v41)
      {
        goto LABEL_79;
      }

      v48 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,objc::SafeRanges::find(unsigned long,unsigned int &)::$_0 &,objc::SafeRanges::Range *>(a1, (v12 - 16), result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,objc::SafeRanges::find(unsigned long,unsigned int &)::$_0 &,objc::SafeRanges::Range *>(v12, a2, v49))
      {
        a2 = (v12 - 16);
        if (!v48)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v48)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,objc::SafeRanges::find(unsigned long,unsigned int &)::$_0 &,objc::SafeRanges::Range *,false>(a1, v12 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      if (v36 >= v9->n128_u64[0])
      {
        v51 = v12 + 16;
        do
        {
          v12 = v51;
          if (v51 >= a2)
          {
            break;
          }

          v51 += 16;
        }

        while (v36 >= *v12);
      }

      else
      {
        do
        {
          v50 = *(v12 + 16);
          v12 += 16;
        }

        while (v36 >= v50);
      }

      v52 = a2;
      if (v12 < a2)
      {
        v52 = a2;
        do
        {
          v53 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v36 < v53);
      }

      v54 = a1->n128_u64[1];
      while (v12 < v52)
      {
        v126 = *v12;
        *v12 = *v52;
        result = v126;
        *v52 = v126;
        do
        {
          v55 = *(v12 + 16);
          v12 += 16;
        }

        while (v36 >= v55);
        do
        {
          v56 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v36 < v56);
      }

      v57 = (v12 - 16);
      if ((v12 - 16) != a1)
      {
        result = *v57;
        *a1 = *v57;
      }

      a4 = 0;
      *(v12 - 16) = v36;
      *(v12 - 8) = v54;
    }
  }

  v58 = (v12 + 16);
  v59 = *(v12 + 16);
  v60 = v9->n128_u64[0];
  if (v59 >= *v12)
  {
    if (v60 >= v59)
    {
      return result;
    }

    result = *v58;
    *v58 = *v9;
    *v9 = result;
    goto LABEL_191;
  }

  if (v60 < v59)
  {
    goto LABEL_107;
  }

  v131 = *v12;
  *v12 = *v58;
  result = v131;
  *v58 = v131;
  if (v9->n128_u64[0] < *(v12 + 16))
  {
    result = *v58;
    *v58 = *v9;
    goto LABEL_108;
  }

  return result;
}

objc_class *realizeClassWithoutSwift(objc_class *a1, objc_class *a2)
{
  v2 = a1;
  if (!a1 || (*a1 - 1) >= 0xF && (*(a1 + 4) & 0x8000000000000000) != 0)
  {
    return v2;
  }

  v4 = (a1 + 32);
  v5 = class_data_bits_t::safe_ro<(Authentication)0>(a1 + 4);
  v6 = *v5 & 1;
  v162 = a2;
  if ((*v5 & 0x40000000) != 0)
  {
    v11 = *v4;
    v7 = class_rw_t::ro((*v4 & 0xF00007FFFFFFFF8));
    v12 = (*v4 & 0xF00007FFFFFFFF8);
    do
    {
      v13 = *v12;
      v14 = *v12;
      atomic_compare_exchange_strong(v12, &v14, *v12 & 0x3FF7FFFF | 0x80080000);
    }

    while (v14 != v13);
    v160 = (v11 & 0xF00007FFFFFFFF8);
  }

  else
  {
    v7 = v5;
    v8 = malloc_type_calloc(0x20uLL, 1uLL, 0x1080040D2A7D70AuLL);
    v9 = v8 + 1;
    v10 = v8[1];
    if (v10)
    {
      v15 = v8[1];
      v9 = (v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    *v9 = v7;
    *v8 = v6 | 0x80080000;
    v160 = v8;
    class_data_bits_t::setData(v2 + 4, v8);
  }

  if (DisablePreoptCaches || (v16 = (v2 + 16), v18 = dataSegmentsRanges, v17 = *algn_1ED3F62F8, dataSegmentsRanges > v2 + 16) || *algn_1ED3F62F8 <= v16 || !*(v2 + 3))
  {
    *(v2 + 2) = &_objc_empty_cache;
    *(v2 + 3) = 0;
    if (!v6)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v19 = *(v2 + 3);
  if (!dyld_shared_cache_some_image_overridden() || !*v19)
  {
LABEL_31:
    *(v2 + 3) = 0;
    atomic_store(v19, v2 + 2);
    *(v2 + 14) = 0;
    *(v2 + 6) = ((v2 + 16) >> 32) ^ (v2 + 16);
    *(v2 + 14) = *(v19 + 10) & 0x3FFF;
    if (!v6)
    {
      goto LABEL_35;
    }

LABEL_34:
    atomic_fetch_or_explicit(v2 + 15, 4u, memory_order_relaxed);
    goto LABEL_35;
  }

  v20 = v2;
  v21 = (v2 + *v19);
  while (1)
  {
    v22 = *(v20 + 1);
    if (!v22)
    {
      break;
    }

    if (v18 > v22 || v17 <= v22)
    {
      break;
    }

    v20 = *(v20 + 1);
    v24 = class_data_bits_t::safe_ro<(Authentication)0>((v22 + 32));
    if (v18 > v24 || v17 <= v24)
    {
      break;
    }

    if (v20 == v21)
    {
      goto LABEL_31;
    }
  }

  *v16 = &_objc_empty_cache;
  *(v2 + 3) = 0;
  objc_class::setDisallowPreoptCachesRecursively(v2, "roots");
  if (v6)
  {
    goto LABEL_34;
  }

LABEL_35:
  v26 = &OBJC_IVAR___Object_isa;
  if (PrintConnecting)
  {
    v104 = objc_class::nameForLogging(v2);
    v105 = "";
    v106 = " (meta)";
    if (!v6)
    {
      v106 = "";
    }

    if ((*(v2 + 4) & 2) != 0)
    {
      v107 = "(swift)";
    }

    else
    {
      v107 = "";
    }

    if (*(v2 + 4))
    {
      v105 = "(pre-stable swift)";
    }

    _objc_inform("CLASS: realizing class '%s'%s %p %p #%u %s%s", v104, v106, v2, v7, 0, v107, v105);
  }

  if (*(v2 + 1))
  {
    v27 = *(v2 + 1);
  }

  else
  {
    v27 = 0;
  }

  v28 = remapClass(v27);
  v29 = realizeClassWithoutSwift(v28, 0);
  v30 = remapClass(*v2 & 0xFFFFFFFF8);
  v34 = realizeClassWithoutSwift(v30, 0);
  if (!v29 && (*class_data_bits_t::safe_ro<(Authentication)0>(v2 + 4) & 2) == 0)
  {
    if (PrintConnecting)
    {
      v140 = objc_class::nameForLogging(v2);
      v141 = "";
      if (v6)
      {
        v141 = " (meta)";
      }

      _objc_inform("CLASS: '%s'%s %p has missing weak superclass, disabling.", v140, v141, v2);
    }

    addRemappedClass(v2, 0);
    *v2 = 0;
    return 0;
  }

  if (v6)
  {
    atomic_fetch_or_explicit(v2 + 15, 0x2000u, memory_order_relaxed);
    goto LABEL_48;
  }

  if (DisableNonpointerIsa)
  {
    goto LABEL_46;
  }

  v58 = *(v2 + 15);
  if ((realizeClassWithoutSwift(objc_class *,objc_class *)::hackedDispatch & 1) == 0)
  {
    explicit = atomic_load_explicit(v7 + 3, memory_order_acquire);
    if (explicit)
    {
      if (!strcmp(explicit, "OS_object"))
      {
        LOBYTE(v35) = 0;
        realizeClassWithoutSwift(objc_class *,objc_class *)::hackedDispatch = 1;
        v26 = &OBJC_IVAR___Object_isa;
        goto LABEL_47;
      }
    }
  }

  v26 = &OBJC_IVAR___Object_isa;
  if (v29 && *(v29 + 8))
  {
    v60 = *(v29 + 8);
    v61 = *(v29 + 30);
    if (((v61 | v58) & 0x2000) != 0)
    {
      v35 = (v61 >> 13) & 1;
      goto LABEL_47;
    }
  }

  else if ((v58 & 0x2000) != 0)
  {
LABEL_46:
    LOBYTE(v35) = 0;
LABEL_47:
    objc_class::setInstancesRequireRawIsaRecursively(v2, v35);
  }

LABEL_48:
  *(v2 + 1) = v29;
  if ((v34 & 0xFF80000000000007) != 0)
  {
    _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", v31, v32, v33, v34);
  }

  *v2 = v34 & 0x7FFFFFFFFFFFF8;
  if (!v6 && v29)
  {
    v36 = *v4;
    v37 = class_rw_t::ro((*(v29 + 32) & 0xF00007FFFFFFFF8));
    if (DebugNonFragileIvars)
    {
      v38 = objc_class::mangledName(v2);
      if (!strstr(v38, "NSCF") && strncmp(v38, "__CF", 4uLL) && strcmp(v38, "NSConstantString") && strcmp(v38, "NSSimpleCString"))
      {
        v62 = *(v7 + 1);
        ro_writeable_nolock = make_ro_writeable_nolock((v36 & 0xF00007FFFFFFFF8));
        v64 = class_rw_t::ro((v36 & 0xF00007FFFFFFFF8));
        v7 = v64;
        v68 = *(v64 + 48);
        if (!v68)
        {
          goto LABEL_184;
        }

        v69 = *v68;
        v70 = v68[1];
        v71 = v70 * v69;
        if ((v71 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_241;
        }

        if (v71)
        {
          v72 = 0;
          v73 = 8;
          do
          {
            v74 = *(v68 + v72 + 32);
            if (v74 == -1)
            {
              v75 = 8;
            }

            else
            {
              v75 = 1 << v74;
            }

            if (v75 > v73)
            {
              v73 = v75;
            }

            v72 += v69;
          }

          while (v71 != v72);
        }

        else
        {
LABEL_184:
          v73 = 8;
        }

        v132 = *(v64 + 4);
        v133 = v132 / v73 * v73;
        v134 = *(ro_writeable_nolock + 8) - v133;
        *(ro_writeable_nolock + 4) = v132 % v73;
        *(ro_writeable_nolock + 8) = v134;
        if (PrintIvars)
        {
          v149 = objc_class::nameForLogging(v2);
          _objc_inform("IVARS: DEBUG: forcing ivars for class '%s' to slide (instanceStart %zu -> %zu)", v149, v62, *(v7 + 1));
          v68 = v7[6];
          if (v68)
          {
LABEL_187:
            v69 = *v68;
            v70 = v68[1];
            v135 = v70 * v69;
            if ((v135 & 0xFFFFFFFF00000000) == 0)
            {
              if (v135)
              {
                v136 = 0;
                v137 = v68 + 2;
                do
                {
                  v138 = *(v137 + v136);
                  if (v138)
                  {
                    *v138 -= v133;
                  }

                  v136 += v69;
                }

                while (v135 != v136);
              }

              goto LABEL_53;
            }

LABEL_241:
            _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v65, v66, v67, v70, v68, v69);
          }
        }

        else if (v68)
        {
          goto LABEL_187;
        }
      }
    }

LABEL_53:
    if (*(v7 + 1) < *(v37 + 8))
    {
      if (PrintIvars)
      {
        v139 = objc_class::nameForLogging(v2);
        _objc_inform("IVARS: sliding ivars for class %s (superclass was %u bytes, now %u)", v139, *(v7 + 1), *(v37 + 8));
      }

      v39 = make_ro_writeable_nolock((v36 & 0xF00007FFFFFFFF8));
      v7 = class_rw_t::ro((v36 & 0xF00007FFFFFFFF8));
      v43 = *(v39 + 4);
      v44 = *(v37 + 8) - v43;
      v45 = *(v39 + 48);
      if (v45)
      {
        v47 = *v45;
        v46 = v45[1];
        v48 = v46 * v47;
        if ((v48 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v40, v41, v42, v46, v45, *v45);
        }

        if (v48)
        {
          v49 = v48;
          v50 = v45 + 8;
          v51 = v48;
          v52 = 1;
          do
          {
            if (*(v50 - 3))
            {
              v53 = *v50 == -1 ? 8 : 1 << *v50;
              if (v53 > v52)
              {
                v52 = v53;
              }
            }

            v50 = (v50 + v47);
            v51 -= v47;
          }

          while (v51);
          v44 = (v44 + v52 - 1) & -v52;
          v54 = v45 + 8;
          do
          {
            v55 = *(v54 - 3);
            if (v55)
            {
              v56 = *v55;
              *v55 += v44;
              if (PrintIvars)
              {
                if (*v54 == -1)
                {
                  v57 = 8;
                }

                else
                {
                  v57 = 1 << *v54;
                }

                _objc_inform("IVARS:    offset %u -> %u for %s (size %u, align %u)", v56, v56 + v44, *(v54 - 2), v54[1], v57);
              }
            }

            v54 = (v54 + v47);
            v49 -= v47;
          }

          while (v49);
          v43 = *(v39 + 4);
          v26 = &OBJC_IVAR___Object_isa;
        }
      }

      v76 = v44 + v43;
      v77 = *(v39 + 8) + v44;
      *(v39 + 4) = v76;
      *(v39 + 8) = v77;
      atomic_load_explicit(v7 + 3, memory_order_acquire);
      gdb_objc_class_changed();
    }
  }

  objc_class::setInstanceSize(v2, *(v7 + 2));
  v78 = *v7;
  if ((*v7 & 4) != 0)
  {
    atomic_fetch_or_explicit(v2 + 15, 1u, memory_order_relaxed);
    v78 = *v7;
    if ((*v7 & 0x100) == 0)
    {
      atomic_fetch_or_explicit(v2 + 15, 2u, memory_order_relaxed);
      v78 = *v7;
    }
  }

  if ((v78 & 0x400) != 0)
  {
    *v160 |= 0x100000u;
    if (v29)
    {
LABEL_108:
      addSubclass(v29, v2);
      goto LABEL_110;
    }
  }

  else if (v29)
  {
    if ((*((*(v29 + 32) & 0xF00007FFFFFFFF8) + 2) & 0x10) != 0)
    {
      *v160 |= 0x100000u;
    }

    goto LABEL_108;
  }

  ++objc_debug_realized_class_generation_count;
  *((*(v2 + 4) & 0xF00007FFFFFFFF8) + 0x18) = _firstRealizedClass;
  _firstRealizedClass = v2;
LABEL_110:
  v79 = *(v2 + 15);
  v80 = *(v2 + 4);
  v84 = class_rw_t::ro((v80 & 0xF00007FFFFFFFF8));
  if (v26[324])
  {
    v108 = objc_class::nameForLogging(v2);
    v109 = "(meta)";
    if ((v79 & 4) == 0)
    {
      v109 = "";
    }

    _objc_inform("CLASS: methodizing class '%s' %s", v108, v109);
  }

  v161 = v79;
  v85 = *(v84 + 32);
  if (v85)
  {
    v86 = (*(v84 + 32) & 1) == 0;
  }

  else
  {
    v86 = 0;
  }

  if (v86)
  {
    v164 = v85 & 0xFFFFFFFFFFFFFFFELL;
    if ((v85 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      v100 = class_rw_t::ro((*(v2 + 4) & 0xF00007FFFFFFFF8));
      prepareMethodLists(v2, &v164, 1, 1, (*v100 >> 29) & 1, 0);
    }

    goto LABEL_133;
  }

  v164 = 0;
  if (v85)
  {
    v87 = (v85 & 0xFFFFFFFFFFFFFFFELL);
    if ((v85 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      v159 = v80;
      if (DisablePreattachedCategories)
      {
        v90 = *v87;
        v89 = v87[1];
        v150 = v89 * v90;
        if ((v150 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_242;
        }

        v151 = v87 + v150 + 8;
        v152 = v89 == 0;
        if (v89)
        {
          v89 = v89;
        }

        else
        {
          v89 = 0;
        }

        if (v152)
        {
          j = v151;
        }

        else
        {
          j = (v151 - v90);
        }
      }

      else
      {
        j = (v87 + 2);
        v90 = *v87;
        v89 = v87[1];
      }

      v91 = v89 * v90;
      if ((v91 & 0xFFFFFFFF00000000) != 0)
      {
        goto LABEL_238;
      }

      v92 = v87 + 2;
      for (i = v87 + v91 + 8; j < i; j = (j + v90))
      {
        if (*(objc_debug_headerInfoRWs + 8 + 8 * *j))
        {
          break;
        }
      }

      if (j == i)
      {
        v94 = 0;
      }

      else
      {
        v94 = 0;
        do
        {
          v163 = j + (*j >> 16);
          v96 = *v87;
          v95 = v87[1];
          v97 = v95 * v96;
          if ((v97 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_229;
          }

          v98 = v92 + v97;
          for (j = (j + v90); j < v98; j = (j + v90))
          {
            if (*(objc_debug_headerInfoRWs + 8 + 8 * *j))
            {
              break;
            }
          }

          v99 = class_rw_t::ro((*(v2 + 4) & 0xF00007FFFFFFFF8));
          prepareMethodLists(v2, &v163, 1, j == i, (*v99 >> 29) & 1, 0);
          ++v94;
        }

        while (j != i);
        LODWORD(v89) = v87[1];
      }

      if (v89 < 0x64 || v94 > v89 >> 1)
      {
        goto LABEL_133;
      }

      if (!PrintConnecting)
      {
        goto LABEL_162;
      }

      v142 = objc_class::nameForLogging(v2);
      v143 = "(meta)";
      if ((v161 & 4) == 0)
      {
        v143 = "";
      }

      _objc_inform("CLASS: Copying preoptimized categories for sparsely loaded class '%s' %s - %u lists, %u loaded - loaded lists are:", v142, v143, v87[1], v94);
      if (!DisablePreattachedCategories)
      {
        v90 = *v87;
        v89 = v87[1];
        m = (v87 + 2);
        goto LABEL_201;
      }

      v90 = *v87;
      v89 = v87[1];
      v156 = v89 * v90;
      if ((v156 & 0xFFFFFFFF00000000) == 0)
      {
        v157 = (v92 + v156);
        v158 = v89 == 0;
        if (v89)
        {
          v89 = v89;
        }

        else
        {
          v89 = 0;
        }

        if (v158)
        {
          m = v157;
        }

        else
        {
          m = (v157 - v90);
        }

LABEL_201:
        v145 = v89 * v90;
        if ((v145 & 0xFFFFFFFF00000000) == 0)
        {
          for (k = (v92 + v145); m < k; m = (m + v90))
          {
            if (*(objc_debug_headerInfoRWs + 8 + 8 * *m))
            {
              break;
            }
          }

          if (m != k)
          {
            while (1)
            {
              _objc_inform("    %p", m + (*m >> 16));
              v96 = *v87;
              v95 = v87[1];
              v147 = v95 * v96;
              if ((v147 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              v148 = v92 + v147;
              for (m = (m + v90); m < v148; m = (m + v90))
              {
                if (*(objc_debug_headerInfoRWs + 8 + 8 * *m))
                {
                  break;
                }
              }

              if (m == k)
              {
                goto LABEL_162;
              }
            }

LABEL_229:
            _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v81, v82, v83, v95, v87, v96);
          }

LABEL_162:
          v110 = class_rw_t::extAllocIfNeeded((v159 & 0xF00007FFFFFFFF8));
          v117 = v110 + 1;
          v116 = v110[1];
          if (v116)
          {
            v118 = &runtimeLock;
            if ((v110[1] & 3) == 2)
            {
              v119 = (v116 & 0xFFFFFFFFFFFFFFFCLL);
            }

            else
            {
              v119 = 0;
            }
          }

          else
          {
            v119 = 0;
            v118 = &runtimeLock;
          }

          if (DisablePreattachedCategories)
          {
            v122 = *v119;
            v121 = v119[1];
            v153 = v121 * v122;
            if ((v153 & 0xFFFFFFFF00000000) != 0)
            {
              _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v111, v112, v113, v121, v119, *v119);
            }

            v154 = v119 + v153 + 8;
            v155 = v121 == 0;
            if (v121)
            {
              v121 = v121;
            }

            else
            {
              v121 = 0;
            }

            if (v155)
            {
              ii = v154;
            }

            else
            {
              ii = (v154 - v122);
            }
          }

          else
          {
            ii = (v119 + 2);
            v122 = *v119;
            v121 = v119[1];
          }

          v123 = v121 * v122;
          if ((v123 & 0xFFFFFFFF00000000) != 0)
          {
            _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v111, v112, v113, v121, v119, v122);
          }

          for (n = v119 + v123 + 8; ii < n; ii = (ii + v122))
          {
            if (*(*(v118 + 264) + 8 + 8 * *ii))
            {
              break;
            }
          }

          if (v94 == 1)
          {
            *ii;
            *v117 = ii + (*ii >> 16);
          }

          else
          {
            v125 = malloc_type_malloc(8 * v94 + 8, 0x1000040D9BFD5C6uLL);
            *v117 = v125 | 1;
            *v125 = v94;
            if (v94)
            {
              v126 = 0;
              v128 = *v119;
              v127 = v119[1];
              v129 = v127 * v128;
              v130 = (v129 & 0xFFFFFFFF00000000) != 0;
              v131 = v119 + v129 + 8;
              do
              {
                *ii;
                *(v125 + 8 + 8 * v126) = ii + (*ii >> 16);
                if (v130)
                {
                  _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v111, v112, v113, v127, v119, v128);
                }

                for (ii = (ii + v122); ii < v131; ii = (ii + v122))
                {
                  if (*(*(v118 + 264) + 8 + 8 * *ii))
                  {
                    break;
                  }
                }

                ++v126;
              }

              while (v126 != v94);
            }
          }

          list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::validate(v117, v111, v112, v113, v114, v115);
          goto LABEL_133;
        }

LABEL_238:
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v81, v82, v83, v89, v87, v90);
      }

LABEL_242:
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v81, v82, v83, v89, v87, v90);
    }
  }

LABEL_133:
  if ((*v2 & 0xFFFFFFFF8) == v2)
  {
    addMethod(v2, "initialize", objc_noop_imp, "", 0);
  }

  if (v162)
  {
    if ((v161 & 4) != 0)
    {
      v101 = 2;
    }

    else
    {
      v101 = 4;
    }

    objc::UnattachedCategories::attachToClass(v2, v162, v101);
  }

  if ((v161 & 4) != 0)
  {
    v102 = 2;
  }

  else
  {
    v102 = 1;
  }

  objc::UnattachedCategories::attachToClass(v2, v2, v102);
  return v2;
}

uint64_t remapClass(uint64_t a1)
{
  v1 = a1;
  if (!a1 || byte_1ED3F5988 != 1)
  {
    return v1;
  }

  v6 = 0;
  if (objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc_class *,objc::DenseMapValueInfo<objc_class *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc_class *>>,DisguisedPtr<objc_class>,objc_class *,objc::DenseMapValueInfo<objc_class *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc_class *>>::LookupBucketFor<DisguisedPtr<objc_class>>(-a1, &v6))
  {
    v2 = v6;
    if (remappedClasses(BOOL)::remapped_class_map)
    {
LABEL_5:
      v3 = remappedClasses(BOOL)::remapped_class_map;
      goto LABEL_11;
    }
  }

  else
  {
    if (remappedClasses(BOOL)::remapped_class_map)
    {
      v4 = remappedClasses(BOOL)::remapped_class_map;
    }

    else
    {
      v4 = 0;
    }

    v2 = v4 + 16 * dword_1ED3F5980;
    if (remappedClasses(BOOL)::remapped_class_map)
    {
      goto LABEL_5;
    }
  }

  v3 = 0;
LABEL_11:
  if (v3 + 16 * dword_1ED3F5980 != v2)
  {
    return *(v2 + 8);
  }

  return v1;
}

uint64_t addSubclass(uint64_t result, objc_class *a2)
{
  if (!result || !a2)
  {
    return result;
  }

  v3 = result;
  ++objc_debug_realized_class_generation_count;
  *((*(a2 + 4) & 0xF00007FFFFFFFF8) + 0x18) = *((*(result + 32) & 0xF00007FFFFFFFF8) + 0x10);
  *((*(result + 32) & 0xF00007FFFFFFFF8) + 0x10) = a2;
  v4 = *(result + 30);
  if ((v4 & 2) == 0)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_27:
    atomic_fetch_or_explicit(a2 + 15, 1u, memory_order_relaxed);
    v4 = *(result + 30);
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  atomic_fetch_or_explicit(a2 + 15, 2u, memory_order_relaxed);
  v4 = *(result + 30);
  if (v4)
  {
    goto LABEL_27;
  }

LABEL_5:
  if ((v4 & 0x1000) != 0)
  {
LABEL_6:
    atomic_fetch_or_explicit(a2 + 15, 0x1000u, memory_order_relaxed);
    v4 = *(result + 30);
  }

LABEL_7:
  v5 = *(result + 32) & 4;
  if ((v4 & 0x4000) == 0)
  {
    LODWORD(v5) = v5 + 1;
  }

  v6 = v5 ^ 4;
  if (v4 >= 0)
  {
    v7 = v6 | 0x10;
  }

  else
  {
    v7 = v6;
  }

  if ((*(a2 + 15) & 0x4000) == 0)
  {
    v7 &= 0xFFFFFFFC;
  }

  if ((*(a2 + 4) & 4) == 0)
  {
    v7 &= 0xFFFFFFF3;
  }

  if (*(a2 + 15) >= 0)
  {
    v8 = v7 & 0xFFFFFFEF;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    result = objc::Scanner::propagateCustomFlags(a2, v8, 1);
  }

  if ((*(*(v3 + 32) & 0xF00007FFFFFFFF8) & 2) != 0)
  {
    result = objc_class::setDisallowPreoptCachesRecursively(a2, "addSubclass");
  }

  else if ((*(*(v3 + 32) & 0xF00007FFFFFFFF8) & 4) != 0 && (*(*(a2 + 4) & 0xF00007FFFFFFFF8) & 4) == 0)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3321888768;
    v20 = ___ZN10objc_class39setDisallowPreoptInlinedSelsRecursivelyEPKc_block_invoke;
    v21 = &__block_descriptor_48_e8_32c69_ZTSKZN10objc_class39setDisallowPreoptInlinedSelsRecursivelyEPKcE3__0_e8_B16__0_8l;
    v22 = a2;
    v23 = "addSubclass";
    v9 = *(gdb_objc_realized_classes + 8);
    if (DisablePreopt)
    {
      v10 = 0;
    }

    else
    {
      v10 = _dyld_objc_class_count();
    }

    v11 = (16 * (v10 + v9)) | 0xF;
    v12 = a2;
    while (1)
    {
      result = (v20)(&v18, v12);
      if (result && (v16 = (v12 + 32), *((*(v12 + 4) & 0xF00007FFFFFFFF8) + 0x10)))
      {
        v17 = 16;
      }

      else
      {
        while (1)
        {
          v16 = (v12 + 32);
          if (v12 == a2 || *((*(v12 + 4) & 0xF00007FFFFFFFF8) + 0x18))
          {
            break;
          }

          if (*(v12 + 1))
          {
            v12 = *(v12 + 1);
          }

          else
          {
            v12 = 0;
          }

          if (!--v11)
          {
            goto LABEL_51;
          }
        }

        if (v12 == a2)
        {
          break;
        }

        v17 = 24;
      }

      v12 = *((*v16 & 0xF00007FFFFFFFF8) + v17);
      if (!--v11)
      {
LABEL_51:
        _objc_fatal("Memory corruption in class list.", v13, v14, v15, v18, v19);
      }
    }
  }

  if ((*(v3 + 30) & 0x2000) != 0 && *(v3 + 8))
  {

    return objc_class::setInstancesRequireRawIsaRecursively(a2, 1);
  }

  return result;
}

void objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>,DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
  v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
  v7 = v6 | HIWORD(v6);
  if ((v7 + 1) > 4)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 4;
  }

  *(a1 + 16) = v8;
  v9 = malloc_type_malloc(16 * v8, 0xAC185C46uLL);
  if (v9)
  {
    *a1 = v9;
    *(a1 + 8) = 0;
    if (v4)
    {
      v10 = v9;
LABEL_13:
      v12 = *(a1 + 16);
      if (v12)
      {
        v13 = 0;
        v14 = v12 + 0xFFFFFFFFFFFFFFFLL;
        v15 = v14 & 0xFFFFFFFFFFFFFFFLL;
        v16 = (v14 & 0xFFFFFFFFFFFFFFFLL) - (v14 & 1) + 2;
        v17 = vdupq_n_s64(v15);
        v18 = v10 + 16;
        do
        {
          v19 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(vdupq_n_s64(v13), xmmword_1800DA160)));
          if (v19.i8[0])
          {
            *(v18 - 2) = 1;
          }

          if (v19.i8[4])
          {
            *v18 = 1;
          }

          v13 += 2;
          v18 += 4;
        }

        while (v16 != v13);
      }

      if (v3)
      {
        v20 = 16 * v3;
        v21 = v4 + 1;
        do
        {
          if (*v21)
          {
            v22 = *(v21 - 1);
            if ((v22 - 1) >= 2)
            {
              v33 = 0;
              v23 = v33;
              v24 = *v21;
              *v33 = *(v21 - 1);
              v23[1] = v24;
              ++*(a1 + 8);
            }
          }

          v21 += 2;
          v20 -= 16;
        }

        while (v20);
      }

      free(v4);
      return;
    }

    v11 = v9;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = v25 + 0xFFFFFFFFFFFFFFFLL;
    v28 = v27 & 0xFFFFFFFFFFFFFFFLL;
    v29 = (v27 & 0xFFFFFFFFFFFFFFFLL) - (v27 & 1) + 2;
    v30 = vdupq_n_s64(v28);
    v31 = v11 + 16;
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v26), xmmword_1800DA160)));
      if (v32.i8[0])
      {
        *(v31 - 2) = 1;
      }

      if (v32.i8[4])
      {
        *v31 = 1;
      }

      v26 += 2;
      v31 += 4;
    }

    while (v29 != v26);
  }
}

void objc_moveWeak(id *to, id *from)
{
  v4 = *from;
  if (*from)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    while (1)
    {
      v7 = 0;
      atomic_compare_exchange_strong_explicit(v8, &v7, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v7)
      {
        os_unfair_lock_lock_with_options();
      }

      if (*from == v4)
      {
        break;
      }

      v9 = *(StatusReg + 24);
      v10 = v9;
      atomic_compare_exchange_strong_explicit(v8, &v10, 0, memory_order_release, memory_order_relaxed);
      if (v10 != v9)
      {
      }

      v4 = *from;
      if (!*from)
      {
        goto LABEL_9;
      }
    }

    weak_unregister_no_lock(v8 + 4, v4, from, v2);
    weak_register_no_lock(v8 + 4, v4, to, 2);
    *to = v4;
    *from = 0;
    v11 = *(StatusReg + 24);
    v12 = v11;
    atomic_compare_exchange_strong_explicit(v8, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 != v11)
    {
    }
  }

  else
  {
LABEL_9:
    *to = 0;
  }
}

uint64_t _objc_rootTryRetain(objc_object *a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 1;
  }

  isa = a1->isa;
  if (a1->isa)
  {
    while (1)
    {
      v2 = isa >> 55 != 0;
      if (!(isa >> 55))
      {
        return v2;
      }

      if (isa >= 0xFF00000000000000)
      {
        return objc_object::rootRetain_overflow(a1, 1) != 0;
      }

      v3 = isa;
      atomic_compare_exchange_strong_explicit(a1, &v3, isa + 0x100000000000000, memory_order_relaxed, memory_order_relaxed);
      if (v3 == isa)
      {
        return 1;
      }

      isa = v3;
      if ((v3 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  if ((*((isa & 0xFFFFFFFF8) + 0x1E) & 4) != 0)
  {
    return 1;
  }

LABEL_7:

  return objc_object::sidetable_tryRetain(a1);
}

uint64_t cache_t::allocateBuckets(cache_t *this)
{
  if (PrintCaches)
  {
    v1 = __clz(this) ^ 0x1F;
    if (this < 2)
    {
      v1 = 0;
    }

    if (v1 <= 0xF)
    {
      ++cache_counts[v1];
    }

    ++cache_allocations;
  }

  return malloc_type_zone_malloc_with_options();
}

void cache_t::collect_free(uint64_t a1, unsigned int a2)
{
  if (PrintCaches)
  {
    v4 = __clz(a2) ^ 0x1F;
    if (a2 < 2)
    {
      v4 = 0;
    }

    if (v4 <= 0xF)
    {
      --cache_counts[v4];
    }
  }

  if (_garbage_make_room(void)::first)
  {
    v5 = garbage_count;
    v6 = garbage_refs;
    if (garbage_count != garbage_max)
    {
      goto LABEL_11;
    }

    v6 = malloc_type_realloc(garbage_refs, 16 * garbage_count, 0x80040B8603338uLL);
    garbage_refs = v6;
    v7 = 2 * garbage_max;
  }

  else
  {
    _garbage_make_room(void)::first = 1;
    v6 = malloc_type_malloc(0x400uLL, 0x80040B8603338uLL);
    garbage_refs = v6;
    v7 = 128;
  }

  garbage_max = v7;
  v5 = garbage_count;
LABEL_11:
  garbage_byte_size += 16 * a2;
  garbage_count = v5 + 1;
  v6[v5] = a1;

  cache_t::collectNolock(0);
}

void cache_t::collectNolock(cache_t *this)
{
  if (garbage_byte_size >> 15)
  {
    v1 = 0;
  }

  else
  {
    v1 = this == 0;
  }

  if (v1)
  {
    return;
  }

  if (this)
  {
      ;
    }

LABEL_13:
    if (PrintCaches)
    {
      _objc_inform("CACHES: COLLECTING %zu bytes (%zu allocations, %zu collections)", garbage_byte_size, cache_allocations, ++cache_collections);
    }

    v2 = garbage_count;
    if (DebugScribbleCaches)
    {
      if (!garbage_count)
      {
LABEL_25:
        garbage_count = 0;
        garbage_byte_size = 0;
        if (PrintCaches)
        {
          v9 = 0;
          v10 = 0;
          v11 = 0;
          do
          {
            v12 = cache_counts[v9];
            if (v12)
            {
              _objc_inform("CACHES: %4d slots: %4d caches, %6zu bytes", 1 << v9, v12, 16 * (v12 << v9));
              v11 += v12;
              v10 += 16 * (v12 << v9);
            }

            ++v9;
          }

          while (v9 != 16);
          _objc_inform("CACHES:      total: %4zu caches, %6zu bytes", v11, v10);
        }

        return;
      }

      do
      {
        --v2;
        v3 = *(garbage_refs + 8 * v2);
        v4 = malloc_size(v3);
        if (v4 >= 0x10)
        {
          v5 = v4 >> 4;
          v6 = v3;
          do
          {
            *v6 = v3;
            v6 += 2;
            --v5;
          }

          while (v5);
        }
      }

      while (v2);
      v2 = garbage_count;
    }

    if (v2)
    {
      v7 = garbage_refs - 8;
      do
      {
        v8 = *(v7 + 8 * v2);
        *(v7 + 8 * v2) = 0;
        free(v8);
        --v2;
      }

      while (v2);
    }

    goto LABEL_25;
  }

  if (!_collecting_in_critical())
  {
    goto LABEL_13;
  }

  if (PrintCaches)
  {

    _objc_inform("CACHES: not collecting; objc_msgSend in progress");
  }
}

void (*resolveMethod_locked(objc_object *a1, objc_selector *a2, objc_class *a3, unsigned int a4))(void)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = *(StatusReg + 24);
  v10 = v9;
  atomic_compare_exchange_strong_explicit(&runtimeLock, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != v9)
  {
    os_unfair_lock_unlock(&runtimeLock);
  }

  if ((*(a3 + 15) & 4) == 0)
  {
    goto LABEL_12;
  }

  if (lookUpImpOrNilTryCache(a1, "resolveClassMethod:", a3))
  {
    v11 = 0;
    atomic_compare_exchange_strong_explicit(&runtimeLock, &v11, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v11)
    {
      os_unfair_lock_lock_with_options();
    }

    MaybeUnrealizedNonMetaClass = getMaybeUnrealizedNonMetaClass(a3, a1);
    v13 = *(StatusReg + 24);
    v14 = v13;
    atomic_compare_exchange_strong_explicit(&runtimeLock, &v14, 0, memory_order_release, memory_order_relaxed);
    if (v14 != v13)
    {
      os_unfair_lock_unlock(&runtimeLock);
    }

    v15 = [(objc_class *)MaybeUnrealizedNonMetaClass resolveClassMethod:a2];
    v16 = lookUpImpOrNilTryCache(a1, a2, a3);
    if (v15 && PrintResolving)
    {
      if (v16)
      {
        v24 = *(a3 + 15);
        objc_class::nameForLogging(a3);
        _objc_inform("RESOLVE: method %c[%s %s] dynamically resolved to %p");
      }

      else
      {
        objc_class::nameForLogging(a3);
        v22 = *(a3 + 15);
        objc_class::nameForLogging(a3);
        _objc_inform("RESOLVE: +[%s resolveClassMethod:%s] returned YES, but no new implementation of %c[%s %s] was found");
      }
    }
  }

  if (!lookUpImpOrNilTryCache(a1, a2, a3))
  {
LABEL_12:
    if ((*a3 & 0x7FFFFFFFFFFFF8) != 0)
    {
      v17 = (*a3 & 0x7FFFFFFFFFFFF8);
    }

    else
    {
      v17 = 0;
    }

    if (lookUpImpOrNilTryCache(a3, "resolveInstanceMethod:", v17))
    {
      v18 = [(objc_class *)a3 resolveInstanceMethod:a2];
      v19 = lookUpImpOrNilTryCache(a1, a2, a3);
      if (v18)
      {
        if (PrintResolving)
        {
          if (v19)
          {
            v23 = *(a3 + 15);
            objc_class::nameForLogging(a3);
            _objc_inform("RESOLVE: method %c[%s %s] dynamically resolved to %p");
          }

          else
          {
            objc_class::nameForLogging(a3);
            v21 = *(a3 + 15);
            objc_class::nameForLogging(a3);
            _objc_inform("RESOLVE: +[%s resolveInstanceMethod:%s] returned YES, but no new implementation of %c[%s %s] was found");
          }
        }
      }
    }
  }

  return lookUpImpOrForwardTryCache(a1, a2, a3, a4);
}

void sub_1800AE310(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void (*lookUpImpOrNilTryCache(objc_object *a1, unint64_t a2, objc_class *a3))(void)
{
  v6 = *(*(a3 + 4) & 0xF00007FFFFFFFF8);
  if ((v6 & 1) == 0)
  {
    v6 = *(*((*a3 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
  }

  if ((v6 & 0x20000000) != 0 && ((result = cache_getImp(a3, a2, 0)) != 0 || (*(a3 + 2) & 1) != 0 && (result = cache_getImp(a3 + *((*(a3 + 2) & 0x7FFFFFFFFFFFFELL) - 16), a2, 0)) != 0))
  {
    if (result == _objc_msgForward_impcache)
    {
      return 0;
    }
  }

  else
  {

    return lookUpImpOrForward(a1, a2, a3);
  }

  return result;
}

void weak_resize(char **a1, size_t count)
{
  v4 = a1[2];
  v5 = *a1;
  v6 = malloc_type_calloc(count, 0x28uLL, 0x10A20404071C379uLL);
  a1[2] = (count - 1);
  a1[3] = 0;
  *a1 = v6;
  a1[1] = 0;
  if (v5)
  {
    if (v4)
    {
      v9 = (v4 + 1);
    }

    else
    {
      v9 = 0;
    }

    if (v9 >= 1)
    {
      v10 = &v5[40 * v9];
      v11 = v5;
      do
      {
        if (*v11)
        {
          weak_entry_insert(a1, v11, v7, v8);
        }

        v11 += 40;
      }

      while (v11 < v10);
    }

    free(v5);
  }
}

void AutoreleasePoolPage::kill(AutoreleasePoolPage *this)
{
  v2 = this;
  do
  {
    v3 = v2;
    v2 = *(v2 + 5);
  }

  while (v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  do
  {
    v5 = *(v3 + 4);
    if (v5)
    {
      *(v5 + 5) = 0;
    }

    if (*v3 != -1583242847 || strncmp(v3 + 4, "AUTORELEASE!", 0xCuLL) || *(v3 + 3) != *StatusReg)
    {
      AutoreleasePoolPage::busted_die(v3);
    }

    *v3 = 0;
    *(v3 + 1) = 0;
    free(v3);
    v6 = v3 == this;
    v3 = v5;
  }

  while (!v6);
}

void sub_1800AE5C8(_Unwind_Exception *a1)
{
  *v1 = 0;
  v1[1] = 0;
  _Unwind_Resume(a1);
}

void objc_tls_direct_base<AutoreleasePoolPage *,(tls_key)3,AutoreleasePoolPage::HotPageDealloc>::dtor_(const void **this)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v3 = (StatusReg[44] & 0xFFFFFFFFFFFFFFFCLL);
    if (!v3)
    {
      break;
    }

    StatusReg[44] = 0;
    StatusReg[45] = 0;
  }

  if (this != 1)
  {
    if (this)
    {
      if (*this != -1583242847)
      {
        AutoreleasePoolPage::busted_die(this);
      }

      v4 = StatusReg + 43;
      StatusReg[43] = this;
      while (1)
      {
        v5 = this[4];
        if (!v5)
        {
          break;
        }

        this = this[4];
        if (*v5 != -1583242847)
        {
          AutoreleasePoolPage::busted_die(v5);
        }
      }

      if (this[2] != this + 7)
      {
        objc_autoreleasePoolPop(this + 7);
      }

      if (!(DebugMissingPools | DebugPoolAllocation))
      {
        AutoreleasePoolPage::kill(this);
      }
    }

    else
    {
      v4 = StatusReg + 43;
    }

    *v4 = 0;
  }
}

void tls_autoptr_direct_impl<_objc_pthread_data,(tls_key)0>::dtor_(char *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[1];
      if (v3)
      {
        free(v3);
      }

      free(v2);
    }

    v4 = *(a1 + 1);
    if (v4)
    {
      free(v4);
    }

    for (i = 24; i != 56; i += 8)
    {
      v6 = *&a1[i];
      if (v6)
      {
        free(v6);
      }
    }

    free(*(a1 + 7));

    free(a1);
  }
}

BOOL objc_isUniquelyReferenced(objc_object *this)
{
  if (this < 1)
  {
    return 0;
  }

  if ((*((this->isa & 0xFFFFFFFF8) + 0x20) & 4) != 0)
  {
    objc_object::sidetable_lock(this);
    isa = this->isa;
    if (this->isa)
    {
      v6 = (isa >> 56);
      if ((isa & 0x80000000000000) != 0)
      {
        v6 += objc_object::sidetable_getExtraRC_nolock(this);
      }

      v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v9 = v8;
      if (v9 != v8)
      {
      }

      return v6 == 1;
    }

    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v4 = v3;
    if (v4 != v3)
    {
    }

    v5 = objc_object::sidetable_retainCount(this);
  }

  else
  {
    v5 = [(objc_object *)this retainCount];
  }

  v6 = v5;
  return v6 == 1;
}

const char *__cdecl protocol_getName(Protocol *p)
{
  if (p)
  {
    return protocol_t::demangledName(p);
  }

  else
  {
    return "nil";
  }
}

atomic_ullong protocol_t::demangledName(char **this)
{
  v2 = (this + 10);
  if ((this + *(this + 16)) <= this + 10)
  {
    v2 = (this + 1);
  }

  else if (!*v2)
  {
    v3 = copySwiftV1DemangledName(this[1], 1);
    v4 = 0;
    if (v3)
    {
      atomic_compare_exchange_strong(v2, &v4, v3);
      if (v4)
      {
        free(v3);
      }
    }

    else
    {
      atomic_compare_exchange_strong(this + 10, &v4, this[1]);
    }
  }

  return *v2;
}

objc_method_description *__cdecl protocol_copyMethodDescriptionList(Protocol *p, BOOL isRequiredMethod, BOOL isInstanceMethod, unsigned int *outCount)
{
  if (p)
  {
    v7 = isInstanceMethod;
    v8 = isRequiredMethod;
    v10 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v10, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v10)
    {
      os_unfair_lock_lock_with_options();
    }

    if (fixed_up_protocol)
    {
      v12 = -1073741824;
    }

    else
    {
      v12 = 0x40000000;
    }

    if ((HIDWORD(p[8].super.isa) & 0xC0000000) != v12)
    {
      fixupProtocol(p, 0xFFFFFFFFLL, 0, 0, v4, v5);
    }

    v13 = 32;
    if (v7)
    {
      v13 = 24;
    }

    v14 = 48;
    if (v7)
    {
      v14 = 40;
    }

    if (!v8)
    {
      v13 = v14;
    }

    v15 = *(&p->super.isa + v13);
    if (v15)
    {
      v16 = malloc_type_calloc((v15[1] + 1), 0x10uLL, 0x90040C859B4A5uLL);
      v17 = *v15;
      entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::end(v15, v18, v19, v20);
      v23 = v21;
      v24 = v17 >> 31;
      if (v15 < 0)
      {
        v24 = 2;
      }

      v25 = v24 | (v15 + 2) & 0xFFFFFFFFFFFFFFFCLL;
      if (v25 == v21)
      {
        v26 = 0;
        if (!outCount)
        {
LABEL_25:
          v27 = *(StatusReg + 24);
          v28 = v27;
          atomic_compare_exchange_strong_explicit(runtimeLock, &v28, 0, memory_order_release, memory_order_relaxed);
          if (v28 != v27)
          {
            os_unfair_lock_unlock(runtimeLock);
          }

          return v16;
        }
      }

      else
      {
        v39 = StatusReg;
        v26 = 0;
        v30 = v17 & 0xFFFC;
        v31 = dataSegmentsRanges;
        v32 = *algn_1ED3F62F8;
        v33 = v24 | (v15 + 2) & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          if ((v25 & 3) > 1)
          {
            if ((v25 & 3) == 2)
            {
              v22 = *(v25 & 0xFFFFFFFFFFFFFFFCLL);
              if (v22)
              {
                v34 = *(v25 & 0xFFFFFFFFFFFFFFFCLL);
              }
            }
          }

          else if ((v25 & 3) != 0)
          {
            v35 = v25 & 0xFFFFFFFFFFFFFFFCLL;
            v36 = *(v25 & 0xFFFFFFFFFFFFFFFCLL);
            if (v31 <= (v25 & 0xFFFFFFFFFFFFFFFCLL) && v32 > v35)
            {
              v22 = &byte_1FA920D78[v36];
            }

            else
            {
              v22 = *(v35 + v36);
            }
          }

          else
          {
            v22 = *(v25 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v38 = &v16[v26];
          v38->name = v22;
          v38->types = method_t::types(v33);
          ++v26;
          v33 += v30;
          v25 += v30;
        }

        while (v33 != v23);
        StatusReg = v39;
        if (!outCount)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v26 = 0;
      v16 = 0;
      if (!outCount)
      {
        goto LABEL_25;
      }
    }

    *outCount = v26;
    goto LABEL_25;
  }

  v16 = 0;
  if (outCount)
  {
    *outCount = 0;
  }

  return v16;
}

void sub_1800AEB48(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void _objc_fatalv(char *a1, va_list a2, const char *a3, char *a4)
{
  v8 = 0;
  vasprintf(&v8, a1, a2);
  v7 = 0;
  v4 = getpid();
  asprintf(&v7, "objc[%d]: %s\n", v4, v8);
  _objc_syslog(v7);
  if (!DebugDontCrash)
  {
    _objc_crashlog(v8);
    abort_with_reason();
  }

  v6 = 0;
  v5 = getpid();
  asprintf(&v6, "objc[%d]: HALTED\n", v5);
  _objc_syslog(v6);
  _Exit(1);
}

objc_object *objc_object::sidetable_retain(objc_object *this, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = 0;
    atomic_compare_exchange_strong_explicit(v3, &v4, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }
  }

  v9 = -this;
  if ((*v5 & 0x8000000000000000) == 0)
  {
    *v5 += 4;
  }

  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v7 = v6;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != v6)
  {
    os_unfair_lock_unlock(v3);
  }

  return this;
}

uint64_t *objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>,DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>::try_emplace<unsigned long>(uint64_t a1, int32x2_t *a2, uint64_t *a3, uint64_t *a4)
{
  v14 = 0;
  v9 = v14;
  if (result)
  {
    v10 = 0;
    v11 = *a2;
  }

  else
  {
    v9 = result;
    v13 = *a4;
    *result = *a3;
    result[1] = v13;
    v11 = *a2;
    v10 = 1;
  }

  v12 = *&v11 + 16 * a2[2].u32[0];
  *a1 = v9;
  *(a1 + 8) = v12;
  *(a1 + 16) = v10;
  return result;
}

BOOL objc_object::sidetable_release(objc_object *this, char a2, int a3)
{
  if ((a2 & 1) == 0)
  {
    v6 = 0;
    atomic_compare_exchange_strong_explicit(v5, &v6, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      os_unfair_lock_lock_with_options();
    }
  }

  v15 = -this;
  v14 = 2;
  if (v17)
  {
    v7 = 1;
    goto LABEL_11;
  }

  v8 = *(v16 + 8);
  v7 = v8 < 2;
  if (v8 <= 1)
  {
    v9 = v8 | 2;
LABEL_10:
    *(v16 + 8) = v9;
    goto LABEL_11;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v8 - 4;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:
  v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v11 = v10;
  atomic_compare_exchange_strong_explicit(v5, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != v10)
  {
    os_unfair_lock_unlock(v5);
  }

  if ((v7 & a3) == 1)
  {
    if ((*((this->isa & 0xFFFFFFFF8) + 0x1E) & 0x1000) != 0)
    {
      v12 = &selRef__objc_initiateDealloc;
    }

    else
    {
      v12 = &selRef_dealloc;
    }

    [this *v12];
  }

  return v7;
}

void AutoreleasePoolPage::busted_die(const void **this)
{
  AutoreleasePoolPage::busted<void (*)(char const*,...)>(this, _objc_fatal);
  __break(1u);
  JUMPOUT(0x1800AEF40);
}

void fixupMethodList(uint64_t a1, uint64_t a2, const char *a3, char *a4, void **a5)
{
  if (!*(a1 + 4))
  {
    return;
  }

  v5 = a3;
  v7 = *a1;
  if ((*a1 >= 0 || a1 <= -1) && (*a1 & 1) == 0)
  {
    v11 = a4;
    v12 = a2;
    v13 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(&selLock, &v13, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v13)
    {
      os_unfair_lock_lock_with_options();
    }

    v53 = v11;
    v54 = v5;
    if (v11)
    {
      *a5 = malloc_type_malloc(8 * *(a1 + 4), 0x50040EE9192B6uLL);
      v14 = *a1;
      entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::end(a1, v15, v16, v17);
      v18 = a2;
      v19 = v14 >> 31;
      if (a1 < 0)
      {
        v19 = 2;
      }

      v20 = v19 | (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      if (v20 != a2)
      {
        v21 = v14 & 0xFFFC;
        v22 = *algn_1ED3F62F8;
        v56 = dataSegmentsRanges;
        v23 = v19 | (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v24 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if ((v20 & 3) != 0)
          {
            if ((v20 & 3) == 2)
            {
              v25 = *v24;
              if (*v24)
              {
                v26 = *v24;
                v27 = v25;
              }

              else
              {
                v27 = 0;
              }
            }

            else
            {
              v28 = *v24;
              if (v56 <= v24 && v22 > v24)
              {
                v27 = &unk_1FA920D78 + v28;
              }

              else
              {
                v27 = *(v24 + v28);
              }
            }
          }

          else
          {
            v27 = *v24;
          }

          v30 = *a1;
          *(*a5 + ((v20 - a1) / (v30 & 0xFFFCu))) = __sel_registerName(v27, 0, v12);
          v23 += v21;
          v20 += v21;
        }

        while (v23 != v18);
      }
    }

    else
    {
      v31 = *a1;
      if (a5)
      {
        entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::end(a1, a2, a3, a4);
        v32 = a2;
        v33 = v31 >> 31;
        if (a1 < 0)
        {
          v33 = 2;
        }

        v34 = v33 | (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        if (v34 != a2)
        {
          v35 = v31 & 0xFFFC;
          v36 = v34 - a1;
          do
          {
            method_t::setName(v34, *(*a5 + (v36 / (*a1 & 0xFFFCu))));
            v34 += v35;
            v36 += v35;
          }

          while (v34 != v32);
        }
      }

      else
      {
        entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::end(a1, a2, a3, a4);
        v37 = a2;
        v38 = (v31 >> 31) & 1;
        if (a1 < 0)
        {
          v38 = 2;
        }

        v39 = v38 | (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        if (v39 != a2)
        {
          v40 = v31 & 0xFFFC;
          v41 = dataSegmentsRanges;
          v42 = *algn_1ED3F62F8;
          v43 = v38 | (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v44 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
            if ((v39 & 3) != 0)
            {
              if ((v39 & 3) == 2)
              {
                v45 = *v44;
                if (*v44)
                {
                  v46 = *v44;
                  v47 = v45;
                }

                else
                {
                  v47 = 0;
                }
              }

              else
              {
                v48 = *v44;
                if (v41 <= v44 && v42 > v44)
                {
                  v47 = &unk_1FA920D78 + v48;
                }

                else
                {
                  v47 = *(v44 + v48);
                }
              }
            }

            else
            {
              v47 = *v44;
            }

            v50 = __sel_registerName(v47, 0, v12);
            method_t::setName(v43, v50);
            v43 += v40;
            v39 += v40;
          }

          while (v43 != v37);
        }
      }
    }

    v51 = *(StatusReg + 24);
    v52 = v51;
    atomic_compare_exchange_strong_explicit(&selLock, &v52, 0, memory_order_release, memory_order_relaxed);
    if (v52 != v51)
    {
      os_unfair_lock_unlock(&selLock);
    }

    v5 = v54;
    if (v53)
    {
      return;
    }

    v7 = *a1;
  }

  if (v5)
  {
    if ((a1 & 0x8000000000000000) == 0 && v7 < 0)
    {
      return;
    }

    if ((v7 & 0xFFFC) == 0x18)
    {
      method_list_t::sortBySELAddress(a1, a2, a3, a4);
      v7 = *a1;
    }
  }

  if (a1 < 0 || (v7 & 0x80000000) == 0)
  {
    *a1 = v7 | 3;
  }
}

void sub_1800AF2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a11 + 24);
  v13 = v12;
  atomic_compare_exchange_strong_explicit(&selLock, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != v12)
  {
    os_unfair_lock_unlock(&selLock);
  }

  _Unwind_Resume(exception_object);
}

unint64_t addMethod(objc_class *a1, objc_selector *a2, void (*a3)(void), const char *a4, char a5)
{
  if ((*a1 - 1) < 0xF || (*(a1 + 4) & 0x8000000000000000) == 0 || (v10 = *((*(a1 + 4) & 0xF00007FFFFFFFF8) + 4), dword_1ED3F6308 <= v10) || (*(qword_1ED3F6300 + 16 * v10) <= a1 ? (v11 = *(qword_1ED3F6300 + 16 * v10 + 8) > a1) : (v11 = 0), !v11))
  {
    if (objc::allocatedClasses + 8 * qword_1ED3F6160 == objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-a1) && (dataSegmentsContain(a1, v25, v23, v24) & 1) == 0)
    {
      _objc_fatal("Attempt to use unknown class %p.", v26, v27, v28, a1);
    }
  }

  realizeAndInitializeIfNeeded_locked(0, a1, 0);
  MethodNoSuper_nolock = getMethodNoSuper_nolock(a1, a2, v12, v13);
  if (MethodNoSuper_nolock)
  {
    if (a5)
    {

      return _method_setImplementation(a1, MethodNoSuper_nolock, a3);
    }

    else
    {

      return method_t::imp(MethodNoSuper_nolock, 0);
    }
  }

  else
  {
    v16 = (malloc_type_calloc(0x20uLL, 1uLL, 0xD985931uLL) | 0x8000000000000000);
    *v16 = 0x10000001BLL;
    v17 = ((v16 + 8) & 0xFFFFFFFFFFFFFFFCLL);
    if (a2)
    {
      v18 = a2;
    }

    else
    {
      v18 = 0;
    }

    *v17 = v18;
    v19 = strlen(a4);
    if ((_dyld_is_memory_immutable() & 1) == 0)
    {
      v20 = malloc_type_malloc(v19 + 1, 0x9620E368uLL);
      memcpy(v20, a4, v19 + 1);
      a4 = v20;
    }

    if (a4)
    {
      v21 = a4;
    }

    else
    {
      v21 = 0;
    }

    v17[1] = v21;
    if (a3)
    {
      v22 = a3;
    }

    else
    {
      v22 = 0;
    }

    v17[2] = v22;
    addMethods_finish(a1, v16);
    return 0;
  }
}

void prepareMethodLists(void *a1, unint64_t *a2, int a3, char a4, uint64_t a5, const char *a6)
{
  if (!a3)
  {
    return;
  }

  if ((a4 & 1) == 0)
  {
    v10 = a1[2];
    if ((v10 & 1) != 0 || (v10 != &_objc_empty_cache ? (v11 = HIWORD(a1[2]) == 0) : (v11 = 0), v11))
    {
      objc_class::setDisallowPreoptCachesRecursively(a1, a6);
    }

    else if ((*(a1[4] & 0xF00007FFFFFFFF8) & 4) == 0)
    {
      if (a3 <= 0)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  if (a3 < 1)
  {
    goto LABEL_17;
  }

LABEL_13:
  v12 = a3;
  v13 = a2;
  do
  {
    if ((~**v13 & 3) != 0)
    {
      fixupMethodList(*v13, a5, 1, 0, 0);
    }

    ++v13;
    --v12;
  }

  while (v12);
LABEL_17:
  v14 = *(a1[4] & 0xF00007FFFFFFFF8);
  if ((v14 & 1) == 0)
  {
    v14 = *(*((*a1 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
  }

  if ((v14 & 0x20000000) != 0 && a3 >= 1)
  {
    v15 = 0;
    v16 = &a2[a3];
    do
    {
      v18 = *a2++;
      v17 = v18;
      v19 = *v18;
      if ((v18 & 0x8000000000000000) != 0)
      {
        v41 = v19 & 0xFFFC;
        v42 = *(v17 + 4);
        v43 = v42 * v41;
        if ((v43 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v15, "_tryRetain", "_isDeallocating", "retainCount", "allowsWeakReference", "retainWeakReference", v42, v17, v41);
        }

        v44 = v17 + 8;
        v45 = (v44 + v43) & 0xFFFFFFFFFFFFFFFCLL;
        if ((v44 & 0xFFFFFFFFFFFFFFFCLL) != v45)
        {
          v46 = v45 | 2;
          v47 = v44 & 0xFFFFFFFFFFFFFFFCLL | 2;
          do
          {
            v48 = v47;
            while (1)
            {
              v49 = *(v47 & 0xFFFFFFFFFFFFFFFCLL);
              if (v49)
              {
                v50 = *(v47 & 0xFFFFFFFFFFFFFFFCLL);
              }

              if ((objc::InterestingSelectorZeroes & v49) == 0 && (objc::InterestingSelectorOnes & v49) == objc::InterestingSelectorOnes)
              {
                break;
              }

              v48 += v41;
              v47 += v41;
              if (v48 == v46)
              {
                goto LABEL_83;
              }
            }

            if ("alloc" == v49 || "allocWithZone:" == v49)
            {
              v15 = v15 | 1;
            }

            else if ("retain" == v49 || "release" == v49 || "autorelease" == v49 || "_tryRetain" == v49 || "_isDeallocating" == v49 || "retainCount" == v49 || "allowsWeakReference" == v49 || "retainWeakReference" == v49)
            {
              v15 = v15 | 4;
            }

            else if ("respondsToSelector:" == v49 || "isKindOfClass:" == v49 || "class" == v49 || "self" == v49 || &sel_new == v49)
            {
              v15 = v15 | 0x10;
            }

            else
            {
              v15 = v15;
            }

            if (v15 == 21)
            {
              break;
            }

            v47 = v48 + v41;
          }

          while (v48 + v41 != v46);
        }
      }

      else if (v19 < 0)
      {
        v20 = v19 & 0xFFFC;
        v21 = *(v17 + 4);
        v55 = v21 * v20;
        if (dataSegmentsRanges <= v17 && *algn_1ED3F62F8 > v17)
        {
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
LABEL_249:
            _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v15, "_tryRetain", "_isDeallocating", "retainCount", "allowsWeakReference", "retainWeakReference", v21, v17, v20);
          }

          v77 = v17 + 8;
          v78 = v77 & 0xFFFFFFFFFFFFFFFCLL;
          v79 = (v77 + v55) & 0xFFFFFFFFFFFFFFFCLL;
          if (v78 != v79)
          {
            v80 = v79 | 1;
            v81 = v78 | 1;
            do
            {
              v82 = v81;
              while (1)
              {
                v83 = &unk_1FA920D78 + *(v81 & 0xFFFFFFFFFFFFFFFCLL);
                if ((v83 & objc::InterestingSelectorZeroes) == 0 && (objc::InterestingSelectorOnes & v83) == objc::InterestingSelectorOnes)
                {
                  break;
                }

                v82 += v20;
                v81 += v20;
                if (v82 == v80)
                {
                  goto LABEL_83;
                }
              }

              if ("alloc" == v83 || "allocWithZone:" == v83)
              {
                v15 = v15 | 1;
              }

              else if ("retain" == v83 || "release" == v83 || "autorelease" == v83 || "_tryRetain" == v83 || "_isDeallocating" == v83 || "retainCount" == v83 || "allowsWeakReference" == v83 || "retainWeakReference" == v83)
              {
                v15 = v15 | 4;
              }

              else if ("respondsToSelector:" == v83 || "isKindOfClass:" == v83 || "class" == v83 || "self" == v83 || &sel_new == v83)
              {
                v15 = v15 | 0x10;
              }

              else
              {
                v15 = v15;
              }

              if (v15 == 21)
              {
                break;
              }

              v81 = v82 + v20;
            }

            while (v82 + v20 != v80);
          }
        }

        else
        {
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_249;
          }

          v57 = v17 + 8;
          v58 = v57 & 0xFFFFFFFFFFFFFFFCLL;
          v59 = (v57 + v55) & 0xFFFFFFFFFFFFFFFCLL;
          if (v58 != v59)
          {
            v60 = v59 | 1;
            v61 = v58 | 1;
            do
            {
              v62 = v61;
              while (1)
              {
                v63 = *((v61 & 0xFFFFFFFFFFFFFFFCLL) + *(v61 & 0xFFFFFFFFFFFFFFFCLL));
                if ((objc::InterestingSelectorZeroes & v63) == 0 && (objc::InterestingSelectorOnes & v63) == objc::InterestingSelectorOnes)
                {
                  break;
                }

                v62 += v20;
                v61 += v20;
                if (v62 == v60)
                {
                  goto LABEL_83;
                }
              }

              if ("alloc" == v63 || "allocWithZone:" == v63)
              {
                v15 = v15 | 1;
              }

              else if ("retain" == v63 || "release" == v63 || "autorelease" == v63 || "_tryRetain" == v63 || "_isDeallocating" == v63 || "retainCount" == v63 || "allowsWeakReference" == v63 || "retainWeakReference" == v63)
              {
                v15 = v15 | 4;
              }

              else if ("respondsToSelector:" == v63 || "isKindOfClass:" == v63 || "class" == v63 || "self" == v63 || &sel_new == v63)
              {
                v15 = v15 | 0x10;
              }

              else
              {
                v15 = v15;
              }

              if (v15 == 21)
              {
                break;
              }

              v61 = v62 + v20;
            }

            while (v61 != v60);
          }
        }
      }

      else
      {
        v20 = v19 & 0xFFFC;
        v21 = *(v17 + 4);
        v22 = v21 * v20;
        if ((v22 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_249;
        }

        v23 = v17 + 8;
        v24 = v23 & 0xFFFFFFFFFFFFFFFCLL;
        v25 = (v23 + v22) & 0xFFFFFFFFFFFFFFFCLL;
        while (v24 != v25)
        {
          v26 = v24;
          while (1)
          {
            v27 = *(v24 & 0xFFFFFFFFFFFFFFFCLL);
            if ((objc::InterestingSelectorZeroes & v27) == 0 && (objc::InterestingSelectorOnes & v27) == objc::InterestingSelectorOnes)
            {
              break;
            }

            v26 += v20;
            v24 += v20;
            if (v26 == v25)
            {
              goto LABEL_83;
            }
          }

          if ("alloc" == v27 || "allocWithZone:" == v27)
          {
            v15 = v15 | 1;
          }

          else
          {
            v30 = "retain" == v27 || "release" == v27;
            v31 = v30 || "autorelease" == v27;
            v32 = v31 || "_tryRetain" == v27;
            v33 = v32 || "_isDeallocating" == v27;
            v34 = v33 || "retainCount" == v27;
            v35 = v34 || "allowsWeakReference" == v27;
            if (v35 || "retainWeakReference" == v27)
            {
              v15 = v15 | 4;
            }

            else
            {
              v37 = "respondsToSelector:" == v27 || "isKindOfClass:" == v27;
              v38 = v37 || "class" == v27;
              v39 = v38 || "self" == v27;
              v40 = v39 || &sel_new == v27;
              v15 = v40 ? v15 | 0x10 : v15;
            }
          }

          if (v15 == 21)
          {
            break;
          }

          v24 = v26 + v20;
        }
      }

LABEL_83:
      ;
    }

    while (a2 < v16);
    if (v15)
    {

      objc::Scanner::propagateCustomFlags(a1, v15, 0);
    }
  }
}