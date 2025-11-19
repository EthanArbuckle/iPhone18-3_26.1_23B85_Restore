uint64_t gss::trafficDecoder<gss::PropertyID>(uint64_t a1, unint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, void *a6)
{
  v295 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 24);
  v12 = v11 + 1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = v14 + ((v11 + 1) >> 3);
  v16 = (v11 + 1) & 7;
  v17 = v14 + 1;
  if (v15 < v14 + 1)
  {
    if (*(a1 + 24))
    {
      v18 = v14 + 1;
    }

    else
    {
      v18 = *(a1 + 16);
    }

    if (v13 < v18)
    {
      goto LABEL_14;
    }

    if (*(a1 + 24))
    {
      if (v13 >= v17)
      {
        v19 = *a1;
        v20 = (((1 << (8 - v11)) - 1) & *(*a1 + v14)) << v11;
        goto LABEL_27;
      }

      goto LABEL_13;
    }

    if (v13 >= v17)
    {
      v19 = *a1;
      goto LABEL_24;
    }

LABEL_13:
    *(a1 + 16) = v15;
    *(a1 + 24) = v16;
LABEL_14:
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v22 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 743;
      v293 = 2082;
      v294 = "Could not read indication of traffic visibility existing.";
      _os_log_impl(&dword_1B2754000, v22, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v23 = MEMORY[0x1B8C61C80](a6, 743);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " STYL Parse Error Here: ", 24);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Could not read indication of traffic visibility existing.", 57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "\n", 1);
    return 0;
  }

  if (v11 <= 7)
  {
    v21 = v14 + 1;
  }

  else
  {
    v21 = v14 + 2;
  }

  if (v13 < v21)
  {
    goto LABEL_13;
  }

  v19 = *a1;
  if (!*(a1 + 24))
  {
LABEL_24:
    LOBYTE(v20) = *(v19 + v14);
    goto LABEL_27;
  }

  v26 = *(v19 + v14);
  if (v17 >= v13)
  {
    v27 = 0;
  }

  else
  {
    v27 = *(v19 + v17);
  }

  v20 = ((v27 & (0xFFFF << (8 - v11))) >> (8 - v11)) | ((((1 << (8 - v11)) + 255) & v26) << v11);
  *(a1 + 16) = v17;
LABEL_27:
  *(a1 + 16) = v15;
  *(a1 + 24) = v16;
  if ((v20 & 0x80) == 0)
  {
    goto LABEL_28;
  }

  v41 = v12 & 7;
  v42 = v15 + (((v12 & 7u) + 1) >> 3);
  v43 = (v41 + 1) & 7;
  v44 = v15 + 1;
  if (v42 >= v15 + 1)
  {
    if (v13 < v44)
    {
      goto LABEL_58;
    }

    if (v16)
    {
      v52 = 8 - v16;
      v53 = *(v19 + v15);
      if (v44 >= v13)
      {
        v54 = 0;
      }

      else
      {
        v54 = *(v19 + v44);
      }

      v46 = (v54 >> v52) | ((((1 << v52) + 255) & v53) << v41);
      *(a1 + 16) = v44;
      goto LABEL_92;
    }

LABEL_89:
    LOBYTE(v46) = *(v19 + v15);
    goto LABEL_92;
  }

  if (v16)
  {
    v45 = v15 + 1;
  }

  else
  {
    v45 = v15;
  }

  if (v13 < v45)
  {
    goto LABEL_59;
  }

  if (!v16)
  {
    if (v13 < v44)
    {
      goto LABEL_58;
    }

    goto LABEL_89;
  }

  if (v13 < v44)
  {
LABEL_58:
    *(a1 + 16) = v42;
    *(a1 + 24) = v43;
LABEL_59:
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v48 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 746;
      v293 = 2082;
      v294 = "Could not read traffic visibility.";
      _os_log_impl(&dword_1B2754000, v48, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v49 = MEMORY[0x1B8C61C80](a6, 746);
    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " STYL Parse Error Here: ", 24);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Could not read traffic visibility.", 34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "\n", 1);
    return 0;
  }

  v46 = (((1 << (8 - v16)) - 1) & *(v19 + v15)) << v41;
LABEL_92:
  *(a1 + 24) = v43;
  *(a1 + 16) = v42;
  if (((a4 - 90) & 0xFFFC) != 0)
  {
    v67 = 509;
  }

  else
  {
    v67 = 11 * a4 - 948;
  }

  *buf = v67;
  buf[2] = 0;
  geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, buf, &buf[4]);
  *geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 24, v67) = (v46 & 0x80) != 0;
  v16 = *(a1 + 24);
  v15 = *(a1 + 16);
  v13 = *(a1 + 8);
LABEL_28:
  v28 = v16 + 1;
  v29 = (v16 + 1) >> 3;
  v30 = v15 + v29;
  v31 = (v16 + 1) & 7;
  v32 = v15 + 1;
  if (v15 + v29 < v15 + 1)
  {
    if (v16)
    {
      v33 = v15 + 1;
    }

    else
    {
      v33 = v15;
    }

    if (v13 < v33)
    {
      goto LABEL_41;
    }

    if (v16)
    {
      if (v13 >= v32)
      {
        v34 = *a1;
        v35 = (((1 << (8 - v16)) - 1) & *(*a1 + v15)) << v16;
        goto LABEL_72;
      }

      goto LABEL_40;
    }

    if (v13 >= v32)
    {
      v34 = *a1;
      goto LABEL_69;
    }

LABEL_40:
    *(a1 + 16) = v30;
    *(a1 + 24) = v31;
LABEL_41:
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v37 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 751;
      v293 = 2082;
      v294 = "Could not read indication of traffic fill color existing.";
      _os_log_impl(&dword_1B2754000, v37, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v38 = MEMORY[0x1B8C61C80](a6, 751);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " STYL Parse Error Here: ", 24);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Could not read indication of traffic fill color existing.", 57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "\n", 1);
    return 0;
  }

  if (v16 <= 7)
  {
    v36 = v15 + 1;
  }

  else
  {
    v36 = v15 + 2;
  }

  if (v13 < v36)
  {
    goto LABEL_40;
  }

  v34 = *a1;
  if (!v16)
  {
LABEL_69:
    LOBYTE(v35) = *(v34 + v15);
    goto LABEL_72;
  }

  if (v32 >= v13)
  {
    v47 = 0;
  }

  else
  {
    v47 = *(v34 + v32);
  }

  v35 = ((v47 & (0xFFFF << (8 - v16))) >> (8 - v16)) | ((((1 << (8 - v16)) + 255) & *(v34 + v15)) << v16);
  *(a1 + 16) = v32;
LABEL_72:
  *(a1 + 16) = v30;
  *(a1 + 24) = v31;
  if ((v35 & 0x80) != 0)
  {
    *buf = 0;
    v55 = v30 + 5;
    if (!v31)
    {
      v55 = v30 + 4;
    }

    if (v13 < v55)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v56 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 754;
        v293 = 2082;
        v294 = "Could not read traffic fill color.";
        _os_log_impl(&dword_1B2754000, v56, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
      v57 = MEMORY[0x1B8C61C80](a6, 754);
      v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, " STYL Parse Error Here: ", 24);
      v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "Could not read traffic fill color.", 34);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "\n", 1);
      return 0;
    }

    if (v31)
    {
      v60 = 0;
      v61 = 8 - v31;
      v62 = v15 + v29 + 1;
      v63 = (v34 + v62);
      do
      {
        if (v62 >= v13)
        {
          v64 = 0;
        }

        else
        {
          v64 = *v63;
        }

        v65 = *(v63++ - 1);
        *(a1 + 16) = v62;
        buf[v60++] = (v64 >> v61) | ((((1 << v61) - 1) & v65) << (v28 & 7));
        ++v62;
      }

      while (v60 != 4);
      v66 = *buf;
    }

    else
    {
      v66 = *(v34 + v30);
      *(a1 + 16) = v30 + 4;
    }

    if (((a4 - 90) & 0xFFFC) != 0)
    {
      v68 = 509;
    }

    else
    {
      v68 = 11 * a4 - 947;
    }

    *buf = v68;
    buf[2] = 0;
    geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, buf, &buf[4]);
    v69 = bswap32(v66);
    v70 = vshl_u32(vdup_n_s32(v69), 0xFFFFFFE8FFFFFFF0);
    v71.i16[0] = v69;
    v71.i16[1] = BYTE1(v69);
    v71.i16[2] = v70.u8[0];
    v71.i16[3] = v70.u8[4];
    v290 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v71)), vdupq_n_s32(0x3B808081u));
    geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(buf, &v290);
    geo::_wordColor<float,4,(geo::ColorSpace)0>(&v291, *buf);
    v72 = v291;
    *geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 72, v68) = v72;
    v31 = *(a1 + 24);
    v13 = *(a1 + 8);
    v30 = *(a1 + 16);
  }

  v73 = v31 + 1;
  v74 = (v31 + 1) >> 3;
  v75 = v30 + v74;
  v76 = (v31 + 1) & 7;
  v77 = v30 + 1;
  if (v30 + v74 < v30 + 1)
  {
    if (v31)
    {
      v78 = v30 + 1;
    }

    else
    {
      v78 = v30;
    }

    if (v13 < v78)
    {
      goto LABEL_114;
    }

    if (v31)
    {
      if (v13 >= v77)
      {
        v79 = *a1;
        v80 = (((1 << (8 - v31)) - 1) & *(*a1 + v30)) << v31;
        goto LABEL_128;
      }

      goto LABEL_113;
    }

    if (v13 >= v77)
    {
      v79 = *a1;
      goto LABEL_125;
    }

LABEL_113:
    *(a1 + 16) = v75;
    *(a1 + 24) = v76;
LABEL_114:
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v82 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 762;
      v293 = 2082;
      v294 = "Could not read indication of traffic secondary color existing.";
      _os_log_impl(&dword_1B2754000, v82, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v83 = MEMORY[0x1B8C61C80](a6, 762);
    v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, " STYL Parse Error Here: ", 24);
    v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "Could not read indication of traffic secondary color existing.", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "\n", 1);
    return 0;
  }

  if (v31 <= 7)
  {
    v81 = v30 + 1;
  }

  else
  {
    v81 = v30 + 2;
  }

  if (v13 < v81)
  {
    goto LABEL_113;
  }

  v79 = *a1;
  if (!v31)
  {
LABEL_125:
    LOBYTE(v80) = *(v79 + v30);
    goto LABEL_128;
  }

  if (v77 >= v13)
  {
    v87 = 0;
  }

  else
  {
    v87 = *(v79 + v77);
  }

  v80 = ((v87 & (0xFFFF << (8 - v31))) >> (8 - v31)) | ((((1 << (8 - v31)) + 255) & *(v79 + v30)) << v31);
  *(a1 + 16) = v77;
LABEL_128:
  *(a1 + 16) = v75;
  *(a1 + 24) = v76;
  if ((v80 & 0x80) == 0)
  {
    goto LABEL_129;
  }

  *buf = 0;
  v106 = v75 + 5;
  if (!v76)
  {
    v106 = v75 + 4;
  }

  if (v13 < v106)
  {
LABEL_161:
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v114 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 765;
      v293 = 2082;
      v294 = "Could not read traffic secondary color.";
      _os_log_impl(&dword_1B2754000, v114, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v115 = MEMORY[0x1B8C61C80](a6, 765);
    v116 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v115, " STYL Parse Error Here: ", 24);
    v117 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v116, "Could not read traffic secondary color.", 39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v117, "\n", 1);
    return 0;
  }

  if (v76)
  {
    v107 = 0;
    v108 = v73 & 7;
    v109 = 8 - v76;
    v110 = v30 + v74 + 1;
    v111 = (v79 + v110);
    do
    {
      if (v110 >= v13)
      {
        v112 = 0;
      }

      else
      {
        v112 = *v111;
      }

      v113 = *(v111++ - 1);
      *(a1 + 16) = v110;
      buf[v107++] = (v112 >> v109) | ((((1 << v109) - 1) & v113) << v108);
      ++v110;
    }

    while (v107 != 4);
    if (v13 < v106)
    {
      goto LABEL_161;
    }

    v118 = *buf;
  }

  else
  {
    v118 = *(v79 + v75);
    *(a1 + 16) = v75 + 4;
  }

  if (((a4 - 90) & 0xFFFC) != 0)
  {
    v119 = 509;
  }

  else
  {
    v119 = 11 * a4 - 946;
  }

  *buf = v119;
  buf[2] = 0;
  geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, buf, &buf[4]);
  v120 = bswap32(v118);
  v121 = vshl_u32(vdup_n_s32(v120), 0xFFFFFFE8FFFFFFF0);
  v122.i16[0] = v120;
  v122.i16[1] = BYTE1(v120);
  v122.i16[2] = v121.u8[0];
  v122.i16[3] = v121.u8[4];
  v290 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v122)), vdupq_n_s32(0x3B808081u));
  geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(buf, &v290);
  geo::_wordColor<float,4,(geo::ColorSpace)0>(&v291, *buf);
  v123 = v291;
  *geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 72, v119) = v123;
LABEL_129:
  geo::ibitstream::readUIntBits(&v290, a1, 1u);
  if ((v290.i8[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v102 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 773;
      v293 = 2082;
      v294 = "Could not read indication of traffic pill middle length existing.";
      _os_log_impl(&dword_1B2754000, v102, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v103 = MEMORY[0x1B8C61C80](a6, 773);
    v104 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, " STYL Parse Error Here: ", 24);
    v105 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "Could not read indication of traffic pill middle length existing.", 65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, "\n", 1);
    return 0;
  }

  if (v290.i32[1])
  {
    *buf = 0;
    v88 = *(a1 + 8);
    v89 = *(a1 + 16);
    v90 = *(a1 + 24);
    v91 = v89 + 5;
    if (!v90)
    {
      v91 = v89 + 4;
    }

    if (v88 < v91)
    {
      goto LABEL_141;
    }

    v92 = *a1;
    if (*(a1 + 24))
    {
      v93 = 0;
      v94 = v89 + 1;
      v95 = (v92 + v94);
      do
      {
        if (v94 >= v88)
        {
          v96 = 0;
        }

        else
        {
          v96 = *v95;
        }

        v97 = ((v96 & (0xFFFF << (8 - v90))) >> (8 - v90)) | ((((1 << (8 - v90)) + 255) & *(v95 - 1)) << v90);
        *(a1 + 16) = v94;
        buf[v93++] = v97;
        ++v95;
        ++v94;
      }

      while (v93 != 4);
      if (v88 < v91)
      {
LABEL_141:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v98 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 776;
          v293 = 2082;
          v294 = "Could not read traffic pill middle length.";
          _os_log_impl(&dword_1B2754000, v98, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
        v99 = MEMORY[0x1B8C61C80](a6, 776);
        v100 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v99, " STYL Parse Error Here: ", 24);
        v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, "Could not read traffic pill middle length.", 42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "\n", 1);
        return 0;
      }

      v124 = *buf;
    }

    else
    {
      v124 = *(v92 + v89);
      *(a1 + 16) = v89 + 4;
    }

    if (((a4 - 90) & 0xFFFC) != 0)
    {
      v125 = 509;
    }

    else
    {
      v125 = 11 * a4 - 945;
    }

    *buf = v125;
    buf[2] = 0;
    geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, buf, &buf[4]);
    *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v125) = v124;
  }

  geo::ibitstream::readUIntBits(&v290, a1, 1u);
  if ((v290.i8[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v140 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 781;
      v293 = 2082;
      v294 = "Could not read indication of traffic pill spacing existing.";
      _os_log_impl(&dword_1B2754000, v140, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v141 = MEMORY[0x1B8C61C80](a6, 781);
    v142 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v141, " STYL Parse Error Here: ", 24);
    v143 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v142, "Could not read indication of traffic pill spacing existing.", 59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v143, "\n", 1);
    return 0;
  }

  if (v290.i32[1])
  {
    *buf = 0;
    v126 = *(a1 + 8);
    v127 = *(a1 + 16);
    v128 = *(a1 + 24);
    v129 = v127 + 5;
    if (!v128)
    {
      v129 = v127 + 4;
    }

    if (v126 < v129)
    {
      goto LABEL_190;
    }

    v130 = *a1;
    if (*(a1 + 24))
    {
      v131 = 0;
      v132 = v127 + 1;
      v133 = (v130 + v132);
      do
      {
        if (v132 >= v126)
        {
          v134 = 0;
        }

        else
        {
          v134 = *v133;
        }

        v135 = ((v134 & (0xFFFF << (8 - v128))) >> (8 - v128)) | ((((1 << (8 - v128)) + 255) & *(v133 - 1)) << v128);
        *(a1 + 16) = v132;
        buf[v131++] = v135;
        ++v133;
        ++v132;
      }

      while (v131 != 4);
      if (v126 < v129)
      {
LABEL_190:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v136 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 784;
          v293 = 2082;
          v294 = "Could not read traffic pill spacing.";
          _os_log_impl(&dword_1B2754000, v136, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
        v137 = MEMORY[0x1B8C61C80](a6, 784);
        v138 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v137, " STYL Parse Error Here: ", 24);
        v139 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v138, "Could not read traffic pill spacing.", 36);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v139, "\n", 1);
        return 0;
      }

      v144 = *buf;
    }

    else
    {
      v144 = *(v130 + v127);
      *(a1 + 16) = v127 + 4;
    }

    if (((a4 - 90) & 0xFFFC) != 0)
    {
      v145 = 509;
    }

    else
    {
      v145 = 11 * a4 - 944;
    }

    *buf = v145;
    buf[2] = 0;
    geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, buf, &buf[4]);
    *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v145) = v144;
  }

  geo::ibitstream::readUIntBits(&v290, a1, 1u);
  if ((v290.i8[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v160 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 789;
      v293 = 2082;
      v294 = "Could not read indication of traffic secondary width existing.";
      _os_log_impl(&dword_1B2754000, v160, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v161 = MEMORY[0x1B8C61C80](a6, 789);
    v162 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v161, " STYL Parse Error Here: ", 24);
    v163 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v162, "Could not read indication of traffic secondary width existing.", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v163, "\n", 1);
    return 0;
  }

  if (v290.i32[1])
  {
    *buf = 0;
    v146 = *(a1 + 8);
    v147 = *(a1 + 16);
    v148 = *(a1 + 24);
    v149 = v147 + 5;
    if (!v148)
    {
      v149 = v147 + 4;
    }

    if (v146 < v149)
    {
      goto LABEL_218;
    }

    v150 = *a1;
    if (*(a1 + 24))
    {
      v151 = 0;
      v152 = v147 + 1;
      v153 = (v150 + v152);
      do
      {
        if (v152 >= v146)
        {
          v154 = 0;
        }

        else
        {
          v154 = *v153;
        }

        v155 = ((v154 & (0xFFFF << (8 - v148))) >> (8 - v148)) | ((((1 << (8 - v148)) + 255) & *(v153 - 1)) << v148);
        *(a1 + 16) = v152;
        buf[v151++] = v155;
        ++v153;
        ++v152;
      }

      while (v151 != 4);
      if (v146 < v149)
      {
LABEL_218:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v156 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 792;
          v293 = 2082;
          v294 = "Could not read traffic secondary width.";
          _os_log_impl(&dword_1B2754000, v156, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
        v157 = MEMORY[0x1B8C61C80](a6, 792);
        v158 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v157, " STYL Parse Error Here: ", 24);
        v159 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v158, "Could not read traffic secondary width.", 39);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v159, "\n", 1);
        return 0;
      }

      v164 = *buf;
    }

    else
    {
      v164 = *(v150 + v147);
      *(a1 + 16) = v147 + 4;
    }

    if (((a4 - 90) & 0xFFFC) != 0)
    {
      v165 = 509;
    }

    else
    {
      v165 = 11 * a4 - 943;
    }

    *buf = v165;
    buf[2] = 0;
    geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, buf, &buf[4]);
    *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v165) = v164;
  }

  if (*(a5 + 8) >= 2u)
  {
    geo::ibitstream::readUIntBits(&v290, a1, 1u);
    if ((v290.i8[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v180 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 798;
        v293 = 2082;
        v294 = "Could not read indication of traffic width existing.";
        _os_log_impl(&dword_1B2754000, v180, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
      v181 = MEMORY[0x1B8C61C80](a6, 798);
      v182 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v181, " STYL Parse Error Here: ", 24);
      v183 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v182, "Could not read indication of traffic width existing.", 52);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v183, "\n", 1);
      return 0;
    }

    if (v290.i32[1])
    {
      *buf = 0;
      v166 = *(a1 + 8);
      v167 = *(a1 + 16);
      v168 = *(a1 + 24);
      v169 = v167 + 5;
      if (!v168)
      {
        v169 = v167 + 4;
      }

      if (v166 < v169)
      {
        goto LABEL_247;
      }

      v170 = *a1;
      if (*(a1 + 24))
      {
        v171 = 0;
        v172 = v167 + 1;
        v173 = (v170 + v172);
        do
        {
          if (v172 >= v166)
          {
            v174 = 0;
          }

          else
          {
            v174 = *v173;
          }

          v175 = ((v174 & (0xFFFF << (8 - v168))) >> (8 - v168)) | ((((1 << (8 - v168)) + 255) & *(v173 - 1)) << v168);
          *(a1 + 16) = v172;
          buf[v171++] = v175;
          ++v173;
          ++v172;
        }

        while (v171 != 4);
        if (v166 < v169)
        {
LABEL_247:
          if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
          {
            dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
          }

          v176 = GEOGetGeoCSSStyleSheetLog_log;
          if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 801;
            v293 = 2082;
            v294 = "Could not read traffic width.";
            _os_log_impl(&dword_1B2754000, v176, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
          v177 = MEMORY[0x1B8C61C80](a6, 801);
          v178 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v177, " STYL Parse Error Here: ", 24);
          v179 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v178, "Could not read traffic width.", 29);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v179, "\n", 1);
          return 0;
        }

        v184 = *buf;
      }

      else
      {
        v184 = *(v170 + v167);
        *(a1 + 16) = v167 + 4;
      }

      if (((a4 - 90) & 0xFFFC) != 0)
      {
        v185 = 509;
      }

      else
      {
        v185 = 11 * a4 - 942;
      }

      *buf = v185;
      buf[2] = 0;
      geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, buf, &buf[4]);
      *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v185) = v184;
    }

    if (*(a5 + 8) >= 3u)
    {
      geo::ibitstream::readUIntBits(&v290, a1, 1u);
      if ((v290.i8[0] & 1) == 0)
      {
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v200 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 808;
          v293 = 2082;
          v294 = "Could not read indication of traffic min width existing.";
          _os_log_impl(&dword_1B2754000, v200, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
        v201 = MEMORY[0x1B8C61C80](a6, 808);
        v202 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v201, " STYL Parse Error Here: ", 24);
        v203 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v202, "Could not read indication of traffic min width existing.", 56);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v203, "\n", 1);
        return 0;
      }

      if (v290.i32[1])
      {
        *buf = 0;
        v186 = *(a1 + 8);
        v187 = *(a1 + 16);
        v188 = *(a1 + 24);
        v189 = v187 + 5;
        if (!v188)
        {
          v189 = v187 + 4;
        }

        if (v186 < v189)
        {
          goto LABEL_276;
        }

        v190 = *a1;
        if (*(a1 + 24))
        {
          v191 = 0;
          v192 = v187 + 1;
          v193 = (v190 + v192);
          do
          {
            if (v192 >= v186)
            {
              v194 = 0;
            }

            else
            {
              v194 = *v193;
            }

            v195 = ((v194 & (0xFFFF << (8 - v188))) >> (8 - v188)) | ((((1 << (8 - v188)) + 255) & *(v193 - 1)) << v188);
            *(a1 + 16) = v192;
            buf[v191++] = v195;
            ++v193;
            ++v192;
          }

          while (v191 != 4);
          if (v186 < v189)
          {
LABEL_276:
            if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
            {
              dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
            }

            v196 = GEOGetGeoCSSStyleSheetLog_log;
            if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 811;
              v293 = 2082;
              v294 = "Could not read traffic min width.";
              _os_log_impl(&dword_1B2754000, v196, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
            v197 = MEMORY[0x1B8C61C80](a6, 811);
            v198 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v197, " STYL Parse Error Here: ", 24);
            v199 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v198, "Could not read traffic min width.", 33);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v199, "\n", 1);
            return 0;
          }

          v204 = *buf;
        }

        else
        {
          v204 = *(v190 + v187);
          *(a1 + 16) = v187 + 4;
        }

        if (((a4 - 90) & 0xFFFC) != 0)
        {
          v205 = 509;
        }

        else
        {
          v205 = 11 * a4 - 941;
        }

        *buf = v205;
        buf[2] = 0;
        geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, buf, &buf[4]);
        *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v205) = v204;
      }

      geo::ibitstream::readUIntBits(&v290, a1, 1u);
      if ((v290.i8[0] & 1) == 0)
      {
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v220 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 816;
          v293 = 2082;
          v294 = "Could not read indication of traffic secondary min width existing.";
          _os_log_impl(&dword_1B2754000, v220, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
        v221 = MEMORY[0x1B8C61C80](a6, 816);
        v222 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v221, " STYL Parse Error Here: ", 24);
        v223 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v222, "Could not read indication of traffic secondary min width existing.", 66);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v223, "\n", 1);
        return 0;
      }

      if (v290.i32[1])
      {
        *buf = 0;
        v206 = *(a1 + 8);
        v207 = *(a1 + 16);
        v208 = *(a1 + 24);
        v209 = v207 + 5;
        if (!v208)
        {
          v209 = v207 + 4;
        }

        if (v206 < v209)
        {
          goto LABEL_304;
        }

        v210 = *a1;
        if (*(a1 + 24))
        {
          v211 = 0;
          v212 = v207 + 1;
          v213 = (v210 + v212);
          do
          {
            if (v212 >= v206)
            {
              v214 = 0;
            }

            else
            {
              v214 = *v213;
            }

            v215 = ((v214 & (0xFFFF << (8 - v208))) >> (8 - v208)) | ((((1 << (8 - v208)) + 255) & *(v213 - 1)) << v208);
            *(a1 + 16) = v212;
            buf[v211++] = v215;
            ++v213;
            ++v212;
          }

          while (v211 != 4);
          if (v206 < v209)
          {
LABEL_304:
            if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
            {
              dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
            }

            v216 = GEOGetGeoCSSStyleSheetLog_log;
            if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 819;
              v293 = 2082;
              v294 = "Could not read traffic secondary min width.";
              _os_log_impl(&dword_1B2754000, v216, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
            v217 = MEMORY[0x1B8C61C80](a6, 819);
            v218 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v217, " STYL Parse Error Here: ", 24);
            v219 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v218, "Could not read traffic secondary min width.", 43);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v219, "\n", 1);
            return 0;
          }

          v224 = *buf;
        }

        else
        {
          v224 = *(v210 + v207);
          *(a1 + 16) = v207 + 4;
        }

        if (((a4 - 90) & 0xFFFC) != 0)
        {
          v225 = 509;
        }

        else
        {
          v225 = 11 * a4 - 940;
        }

        *buf = v225;
        buf[2] = 0;
        geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, buf, &buf[4]);
        *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v225) = v224;
      }

      geo::ibitstream::readUIntBits(&v290, a1, 1u);
      if ((v290.i8[0] & 1) == 0)
      {
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v240 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 824;
          v293 = 2082;
          v294 = "Could not read indication of traffic max width existing.";
          _os_log_impl(&dword_1B2754000, v240, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
        v241 = MEMORY[0x1B8C61C80](a6, 824);
        v242 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v241, " STYL Parse Error Here: ", 24);
        v243 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v242, "Could not read indication of traffic max width existing.", 56);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v243, "\n", 1);
        return 0;
      }

      if (v290.i32[1])
      {
        *buf = 0;
        v226 = *(a1 + 8);
        v227 = *(a1 + 16);
        v228 = *(a1 + 24);
        v229 = v227 + 5;
        if (!v228)
        {
          v229 = v227 + 4;
        }

        if (v226 < v229)
        {
          goto LABEL_332;
        }

        v230 = *a1;
        if (*(a1 + 24))
        {
          v231 = 0;
          v232 = v227 + 1;
          v233 = (v230 + v232);
          do
          {
            if (v232 >= v226)
            {
              v234 = 0;
            }

            else
            {
              v234 = *v233;
            }

            v235 = ((v234 & (0xFFFF << (8 - v228))) >> (8 - v228)) | ((((1 << (8 - v228)) + 255) & *(v233 - 1)) << v228);
            *(a1 + 16) = v232;
            buf[v231++] = v235;
            ++v233;
            ++v232;
          }

          while (v231 != 4);
          if (v226 < v229)
          {
LABEL_332:
            if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
            {
              dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
            }

            v236 = GEOGetGeoCSSStyleSheetLog_log;
            if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 827;
              v293 = 2082;
              v294 = "Could not read traffic max width.";
              _os_log_impl(&dword_1B2754000, v236, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
            v237 = MEMORY[0x1B8C61C80](a6, 827);
            v238 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v237, " STYL Parse Error Here: ", 24);
            v239 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v238, "Could not read traffic max width.", 33);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v239, "\n", 1);
            return 0;
          }

          v244 = *buf;
        }

        else
        {
          v244 = *(v230 + v227);
          *(a1 + 16) = v227 + 4;
        }

        if (((a4 - 90) & 0xFFFC) != 0)
        {
          v245 = 509;
        }

        else
        {
          v245 = 11 * a4 - 939;
        }

        *buf = v245;
        buf[2] = 0;
        geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, buf, &buf[4]);
        *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v245) = v244;
      }

      geo::ibitstream::readUIntBits(&v290, a1, 1u);
      if ((v290.i8[0] & 1) == 0)
      {
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v260 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 832;
          v293 = 2082;
          v294 = "Could not read indication of traffic secondary max width existing.";
          _os_log_impl(&dword_1B2754000, v260, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
        v261 = MEMORY[0x1B8C61C80](a6, 832);
        v262 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v261, " STYL Parse Error Here: ", 24);
        v263 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v262, "Could not read indication of traffic secondary max width existing.", 66);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v263, "\n", 1);
        return 0;
      }

      if (v290.i32[1])
      {
        *buf = 0;
        v246 = *(a1 + 8);
        v247 = *(a1 + 16);
        v248 = *(a1 + 24);
        v249 = v247 + 5;
        if (!v248)
        {
          v249 = v247 + 4;
        }

        if (v246 < v249)
        {
          goto LABEL_360;
        }

        v250 = *a1;
        if (*(a1 + 24))
        {
          v251 = 0;
          v252 = v247 + 1;
          v253 = (v250 + v252);
          do
          {
            if (v252 >= v246)
            {
              v254 = 0;
            }

            else
            {
              v254 = *v253;
            }

            v255 = ((v254 & (0xFFFF << (8 - v248))) >> (8 - v248)) | ((((1 << (8 - v248)) + 255) & *(v253 - 1)) << v248);
            *(a1 + 16) = v252;
            buf[v251++] = v255;
            ++v253;
            ++v252;
          }

          while (v251 != 4);
          if (v246 < v249)
          {
LABEL_360:
            if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
            {
              dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
            }

            v256 = GEOGetGeoCSSStyleSheetLog_log;
            if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 835;
              v293 = 2082;
              v294 = "Could not read traffic secondary max width.";
              _os_log_impl(&dword_1B2754000, v256, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
            v257 = MEMORY[0x1B8C61C80](a6, 835);
            v258 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v257, " STYL Parse Error Here: ", 24);
            v259 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v258, "Could not read traffic secondary max width.", 43);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v259, "\n", 1);
            return 0;
          }

          v264 = *buf;
        }

        else
        {
          v264 = *(v250 + v247);
          *(a1 + 16) = v247 + 4;
        }

        if (((a4 - 90) & 0xFFFC) != 0)
        {
          v265 = 509;
        }

        else
        {
          v265 = 11 * a4 - 938;
        }

        *buf = v265;
        buf[2] = 0;
        geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, buf, &buf[4]);
        *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v265) = v264;
      }

      if (*(a5 + 8) >= 0xDu)
      {
        geo::ibitstream::readUIntBits(&v290, a1, 1u);
        if ((v290.i8[0] & 1) == 0)
        {
          if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
          {
            dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
          }

          v280 = GEOGetGeoCSSStyleSheetLog_log;
          if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 842;
            v293 = 2082;
            v294 = "Could not read indication of traffic gradient mask color existing.";
            _os_log_impl(&dword_1B2754000, v280, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
          v281 = MEMORY[0x1B8C61C80](a6, 842);
          v282 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v281, " STYL Parse Error Here: ", 24);
          v283 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v282, "Could not read indication of traffic gradient mask color existing.", 66);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v283, "\n", 1);
          return 0;
        }

        if (v290.i32[1])
        {
          *buf = 0;
          v266 = *(a1 + 8);
          v267 = *(a1 + 16);
          v268 = *(a1 + 24);
          v269 = v267 + 5;
          if (!v268)
          {
            v269 = v267 + 4;
          }

          if (v266 < v269)
          {
            goto LABEL_389;
          }

          v270 = *a1;
          if (*(a1 + 24))
          {
            v271 = 0;
            v272 = v267 + 1;
            v273 = (v270 + v272);
            do
            {
              if (v272 >= v266)
              {
                v274 = 0;
              }

              else
              {
                v274 = *v273;
              }

              v275 = ((v274 & (0xFFFF << (8 - v268))) >> (8 - v268)) | ((((1 << (8 - v268)) + 255) & *(v273 - 1)) << v268);
              *(a1 + 16) = v272;
              buf[v271++] = v275;
              ++v273;
              ++v272;
            }

            while (v271 != 4);
            if (v266 < v269)
            {
LABEL_389:
              if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
              {
                dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
              }

              v276 = GEOGetGeoCSSStyleSheetLog_log;
              if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 845;
                v293 = 2082;
                v294 = "Could not read gradient mask color.";
                _os_log_impl(&dword_1B2754000, v276, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
              v277 = MEMORY[0x1B8C61C80](a6, 845);
              v278 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v277, " STYL Parse Error Here: ", 24);
              v279 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v278, "Could not read gradient mask color.", 35);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v279, "\n", 1);
              return 0;
            }

            v284 = *buf;
          }

          else
          {
            v284 = *(v270 + v267);
            *(a1 + 16) = v267 + 4;
          }

          if (((a4 - 90) & 0xFFFC) != 0)
          {
            v285 = 509;
          }

          else
          {
            v285 = a4 + 338;
          }

          *buf = v285;
          buf[2] = 0;
          geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, buf, &buf[4]);
          v286 = bswap32(v284);
          v287 = vshl_u32(vdup_n_s32(v286), 0xFFFFFFE8FFFFFFF0);
          v288.i16[0] = v286;
          v288.i16[1] = BYTE1(v286);
          v288.i16[2] = v287.u8[0];
          v288.i16[3] = v287.u8[4];
          v290 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v288)), vdupq_n_s32(0x3B808081u));
          geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(buf, &v290);
          geo::_wordColor<float,4,(geo::ColorSpace)0>(&v291, *buf);
          v289 = v291;
          *geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 72, v285) = v289;
        }
      }
    }
  }

  return 1;
}

uint64_t std::__function::__func<md::PendingSceneLogic::PendingSceneLogic(md::World *,md::RunLoopController *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_1,std::allocator<md::PendingSceneLogic::PendingSceneLogic(md::World *,md::RunLoopController *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29EB3F0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FlatTileSelector::FlatTileSelector(uint64_t this, double a2)
{
  *(this + 8) = 256;
  *(this + 16) = a2;
  *this = &unk_1F2A602F8;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t gdc::ConsistentZTileSelector::ConsistentZTileSelector(uint64_t this, double a2)
{
  *(this + 8) = 256;
  *(this + 16) = 0;
  *this = &unk_1F2A60868;
  return this;
}

uint64_t std::__function::__value_func<float ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<float ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_2,std::allocator<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_2>,void ()(unsigned int,gdc::GlobeTileSelectorOptions &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A21160;
  a2[1] = v2;
  return result;
}

unsigned __int8 *geo::QuadTile::computeHash(unsigned __int8 *this)
{
  v1 = (((*this - 0x61C8864680B583EBLL) << 6) + ((*this - 0x61C8864680B583EBLL) >> 2) + this[1] - 0x61C8864680B583EBLL) ^ (*this - 0x61C8864680B583EBLL);
  v2 = (*(this + 1) + (v1 << 6) + (v1 >> 2) - 0x61C8864680B583EBLL) ^ v1;
  *(this + 2) = (*(this + 2) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583EBLL) ^ v2;
  return this;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addAlbedoFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 112);
  if (!v6)
  {
    if (a5)
    {
      v11 = 8;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 8u);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void **std::unique_ptr<gms::MaterialSheet<ggl::Texture2D>>::~unique_ptr[abi:nn200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = gms::MaterialSheet<ggl::Texture2D>::~MaterialSheet(v2);
    MEMORY[0x1B8C62190](v3, 0x20C40AE183EC4);
  }

  return a1;
}

uint64_t *std::unique_ptr<gms::TextureStore<ggl::Texture2D>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    gms::TextureStore<ggl::Texture2D>::~TextureStore(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

void gms::MaterialManager<ggl::Texture2D>::setClientStyleState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 136);
  v4 = *(a1 + 136);
  if (v4 != a2)
  {
    *(a1 + 440) = 0;
    std::shared_ptr<md::LabelTile>::operator=[abi:nn200100]((a1 + 136), a2, a3);
    v6 = *(a1 + 96);
    gss::ClientStyleState<gss::PropertyID>::sourceClientStyleAttributes(v13, *(a1 + 136));
    v8 = *(a1 + 120);
    v7 = *(a1 + 128);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *(v6 + 80);
    *(v6 + 72) = v8;
    *(v6 + 80) = v7;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v13);
    v4 = v5->i64[0];
  }

  if (*(v4 + 264) == *(a1 + 440))
  {
    v10 = *(a1 + 232);
    *(a1 + 232) = vextq_s8(v10, v10, 8uLL);
    std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::clear(v10.i64[0]);
    v11 = v5[12];
    v5[12] = vextq_s8(v11, v11, 8uLL);
    std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::clear(v11.i64[0]);
    v12 = v5[18];
    v5[18] = vextq_s8(v12, v12, 8uLL);
    std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::clear(v12.i64[0]);
  }

  else
  {
    *(a1 + 440) = *(v4 + 264);
    gms::MaterialManager<ggl::Texture2D>::clearCaches(a1);
  }
}

void gms::MaterialManager<ggl::Texture2D>::clearCaches(uint64_t *a1)
{
  std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::clear(a1[29]);
  std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::clear(a1[30]);
  std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::clear(a1[41]);
  std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::clear(a1[42]);
  std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::clear(a1[53]);
  v2 = a1[54];

  std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::clear(v2);
}

uint64_t std::__function::__func<md::LightingLogic::LightingLogic(NSObject  {objcproto17OS_dispatch_queue}*)::$_0,std::allocator<md::LightingLogic::LightingLogic(NSObject  {objcproto17OS_dispatch_queue}*)::$_0>,BOOL ()(BOOL const&)>::operator()(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    return MEMORY[0x1EEE0BE10]();
  }

  else
  {
    return 0;
  }
}

void *std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::__find_equal<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!std::operator<[abi:nn200100]<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!std::operator<[abi:nn200100]<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void gdc::Registry::create(gdc::Registry *this)
{
  v17 = 0xFFFFFFFF00000000;
  v2 = *(this + 10);
  if (*(this + 9) != v2)
  {
    v3 = *(v2 - 4);
    *(this + 10) = v2 - 4;
    v4 = *(this + 6) + 8 * v3;
    v5 = *(v4 + 2);
    if (v5 == 65534)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5 + 1;
    }

    *v4 = (v3 << 32) | (v6 << 16) | *(this + 20);
    v17 = *(*(this + 6) + 8 * v3);
    operator new();
  }

  v7 = *(this + 6);
  v8 = *(this + 7);
  v9 = v8 - v7;
  v10 = *(this + 8);
  if (v8 >= v10)
  {
    v12 = (v9 >> 3) + 1;
    if (v12 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v10 - v7;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v14);
    }

    v15 = (8 * (v9 >> 3));
    *v15 = *(this + 20);
    v15[1] = v9 >> 3;
    v11 = v15 + 2;
    memcpy(0, v7, v9);
    v16 = *(this + 6);
    *(this + 6) = 0;
    *(this + 7) = v11;
    *(this + 8) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v8 = *(this + 20);
    *(v8 + 1) = v9 >> 3;
    v11 = v8 + 8;
  }

  *(this + 7) = v11;
  v17 = *(v11 - 1);
  operator new();
}

uint64_t gm::Box<float,3>::forEachCorner(_DWORD *a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    v5 = 0;
    v6 = a1;
    do
    {
      v7 = v6 + 3;
      if ((v4 >> v5))
      {
        v7 = v6;
      }

      *(&v11 + v5++) = *v7;
      ++v6;
    }

    while (v5 != 3);
    v8 = *(a2 + 24);
    if (!v8)
    {
      break;
    }

    result = (*(*v8 + 48))(v8, &v11);
    if (++v4 == 8)
    {
      return result;
    }
  }

  v10 = std::__throw_bad_function_call[abi:nn200100]();
  return md::VenueLogic::setNearestVenueDidChangeCallback(v10);
}

uint64_t md::VenueLogic::setNearestVenueDidChangeCallback(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = (a1 + 696);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      v9 = v8;
      (*(*v4 + 24))(v4, v8);
    }

    else
    {
      v9 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v9 = 0;
  }

  if (v3 != v8)
  {
    v5 = v9;
    v6 = *(a1 + 720);
    if (v9 == v8)
    {
      if (v6 == v3)
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = 0;
        (*(**(a1 + 720) + 24))(*(a1 + 720), v8);
        (*(**(a1 + 720) + 32))(*(a1 + 720));
        *(a1 + 720) = 0;
        v9 = v8;
        (*(v10[0] + 24))(v10, v3);
        (*(v10[0] + 32))(v10);
      }

      else
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = *(a1 + 720);
      }

      *(a1 + 720) = v3;
    }

    else if (v6 == v3)
    {
      (*(*v6 + 24))(*(a1 + 720), v8);
      (*(**(a1 + 720) + 32))(*(a1 + 720));
      *(a1 + 720) = v9;
      v9 = v8;
    }

    else
    {
      v9 = *(a1 + 720);
      *(a1 + 720) = v5;
    }
  }

  return std::__function::__value_func<void ()(md::Venue const*,md::VenueBuilding const*)>::~__value_func[abi:nn200100](v8);
}

uint64_t md::VenueLogic::setFocusedVenueDidChangeCallback(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = (a1 + 728);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      v9 = v8;
      (*(*v4 + 24))(v4, v8);
    }

    else
    {
      v9 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v9 = 0;
  }

  if (v3 != v8)
  {
    v5 = v9;
    v6 = *(a1 + 752);
    if (v9 == v8)
    {
      if (v6 == v3)
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = 0;
        (*(**(a1 + 752) + 24))(*(a1 + 752), v8);
        (*(**(a1 + 752) + 32))(*(a1 + 752));
        *(a1 + 752) = 0;
        v9 = v8;
        (*(v10[0] + 24))(v10, v3);
        (*(v10[0] + 32))(v10);
      }

      else
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = *(a1 + 752);
      }

      *(a1 + 752) = v3;
    }

    else if (v6 == v3)
    {
      (*(*v6 + 24))(*(a1 + 752), v8);
      (*(**(a1 + 752) + 32))(*(a1 + 752));
      *(a1 + 752) = v9;
      v9 = v8;
    }

    else
    {
      v9 = *(a1 + 752);
      *(a1 + 752) = v5;
    }
  }

  return std::__function::__value_func<void ()(md::Venue const*)>::~__value_func[abi:nn200100](v8);
}

uint64_t std::__function::__value_func<void ()(md::Venue const*,md::VenueBuilding const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t md::VenueLogic::setRunAnimationCallback(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = (a1 + 792);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      v9 = v8;
      (*(*v4 + 24))(v4, v8);
    }

    else
    {
      v9 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v9 = 0;
  }

  if (v3 != v8)
  {
    v5 = v9;
    v6 = *(a1 + 816);
    if (v9 == v8)
    {
      if (v6 == v3)
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = 0;
        (*(**(a1 + 816) + 24))(*(a1 + 816), v8);
        (*(**(a1 + 816) + 32))(*(a1 + 816));
        *(a1 + 816) = 0;
        v9 = v8;
        (*(v10[0] + 24))(v10, v3);
        (*(v10[0] + 32))(v10);
      }

      else
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = *(a1 + 816);
      }

      *(a1 + 816) = v3;
    }

    else if (v6 == v3)
    {
      (*(*v6 + 24))(*(a1 + 816), v8);
      (*(**(a1 + 816) + 32))(*(a1 + 816));
      *(a1 + 816) = v9;
      v9 = v8;
    }

    else
    {
      v9 = *(a1 + 816);
      *(a1 + 816) = v5;
    }
  }

  return std::__function::__value_func<void ()(VKAnimation *)>::~__value_func[abi:nn200100](v8);
}

uint64_t std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

md::PuckStyleInfo *md::PuckStyleInfo::PuckStyleInfo(md::PuckStyleInfo *this, char a2)
{
  *this = xmmword_1B33B0A50;
  geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(this + 16, &md::TransitLine::_resolveStyle(int,std::shared_ptr<gss::FeatureQueryImpl<gss::PropertyID>> &,md::TransitLine::ResolvedStyle &)::kZeroBrightnessColor);
  geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(this + 32, &md::kDefaultArrowColor);
  geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(this + 48, &md::kDefaultArrowColorStale);
  *(this + 64) = a2;
  *(this + 17) = 0;
  *(this + 36) = 0;
  return this;
}

void ggl::ARMeshShader::typedReflection(ggl::ARMeshShader *this)
{
  {
    if (v1)
    {
      ggl::ARMeshShader::typedReflection(void)::ref = "ARMeshShader";
      ggl::aRMeshShaderVertexFunctionDescriptor(v1);
      qword_1ED65EFA8 = &ggl::aRMeshShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65EFB0 = 447170558;
      ggl::aRMeshShaderFragmentFunctionDescriptor(v2);
      qword_1ED65EFB8 = &ggl::aRMeshShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65EFC0 = 583202196;
      qword_1ED65EFC8 = ggl::aRMeshShaderShaderConstants(void)::ref;
      unk_1ED65EFD0 = 7;
      qword_1ED65EFD8 = ggl::aRMeshShaderShaderTextures(void)::ref;
      unk_1ED65EFE0 = 2;
      qword_1ED65EFE8 = ggl::aRMeshShaderShaderSamplers(void)::ref;
      unk_1ED65EFF0 = 2;
    }
  }
}

void ggl::ARCameraImageShader::typedReflection(ggl::ARCameraImageShader *this)
{
  {
    if (v1)
    {
      ggl::ARCameraImageShader::typedReflection(void)::ref = "ARCameraImageShader";
      ggl::aRCameraImageShaderVertexFunctionDescriptor(v1);
      qword_1ED66CC70 = &ggl::aRCameraImageShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66CC78 = -1250973574;
      ggl::aRCameraImageShaderFragmentFunctionDescriptor(v2);
      qword_1ED66CC80 = &ggl::aRCameraImageShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66CC88 = 1301870842;
      qword_1ED66CC90 = ggl::aRCameraImageShaderShaderConstants(void)::ref;
      unk_1ED66CC98 = 1;
      qword_1ED66CCA0 = ggl::aRCameraImageShaderShaderTextures(void)::ref;
      unk_1ED66CCA8 = 1;
      qword_1ED66CCB0 = &ggl::aRCameraImageShaderShaderSamplers(void)::ref;
      unk_1ED66CCB8 = 1;
    }
  }
}

void ggl::ClutShader::typedReflection(ggl::ClutShader *this)
{
  {
    if (v1)
    {
      ggl::ClutShader::typedReflection(void)::ref = "ClutShader";
      ggl::clutShaderVertexFunctionDescriptor(v1);
      qword_1ED66DFA8 = &ggl::clutShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66DFB0 = -629351302;
      ggl::clutShaderFragmentFunctionDescriptor(v2);
      qword_1ED66DFB8 = &ggl::clutShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66DFC0 = 451945164;
      qword_1ED66DFC8 = ggl::clutShaderShaderConstants(void)::ref;
      unk_1ED66DFD0 = 3;
      qword_1ED66DFD8 = ggl::clutShaderShaderTextures(void)::ref;
      unk_1ED66DFE0 = 2;
      qword_1ED66DFE8 = ggl::clutShaderShaderSamplers(void)::ref;
      unk_1ED66DFF0 = 2;
    }
  }
}

void ggl::DebugShader::typedReflection(ggl::DebugShader *this)
{
  {
    if (v1)
    {
      ggl::DebugShader::typedReflection(void)::ref = "DebugShader";
      ggl::debugShaderVertexFunctionDescriptor(v1);
      qword_1ED66DC58 = &ggl::debugShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66DC60 = 1903617105;
      ggl::debugShaderFragmentFunctionDescriptor(v2);
      qword_1ED66DC68 = &ggl::debugShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66DC70 = 1149422641;
      qword_1ED66DC78 = ggl::debugShaderShaderConstants(void)::ref;
      unk_1ED66DC80 = 3;
      qword_1ED66DC88 = &ggl::debugShaderShaderTextures(void)::ref;
      unk_1ED66DC90 = 0;
      qword_1ED66DC98 = &ggl::debugShaderShaderSamplers(void)::ref;
      unk_1ED66DCA0 = 0;
    }
  }
}

void ggl::DebugExtendedShader::typedReflection(ggl::DebugExtendedShader *this)
{
  {
    if (v1)
    {
      ggl::DebugExtendedShader::typedReflection(void)::ref = "DebugExtendedShader";
      ggl::debugExtendedShaderVertexFunctionDescriptor(v1);
      qword_1ED66CB58 = &ggl::debugExtendedShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66CB60 = -961099581;
      ggl::debugExtendedShaderFragmentFunctionDescriptor(v2);
      qword_1ED66CB68 = &ggl::debugExtendedShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66CB70 = 892206986;
      qword_1ED66CB78 = ggl::debugExtendedShaderShaderConstants(void)::ref;
      unk_1ED66CB80 = 3;
      qword_1ED66CB88 = &ggl::debugExtendedShaderShaderTextures(void)::ref;
      unk_1ED66CB90 = 0;
      qword_1ED66CB98 = &ggl::debugExtendedShaderShaderSamplers(void)::ref;
      unk_1ED66CBA0 = 0;
    }
  }
}

void ggl::HillshadeShader::typedReflection(ggl::HillshadeShader *this)
{
  {
    if (v1)
    {
      ggl::HillshadeShader::typedReflection(void)::ref = "HillshadeShader";
      ggl::hillshadeShaderVertexFunctionDescriptor(v1);
      qword_1ED65ED10 = &ggl::hillshadeShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65ED18 = 368518581;
      ggl::hillshadeShaderFragmentFunctionDescriptor(v2);
      qword_1ED65ED20 = &ggl::hillshadeShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65ED28 = -1829540738;
      qword_1ED65ED30 = ggl::hillshadeShaderShaderConstants(void)::ref;
      unk_1ED65ED38 = 3;
      qword_1ED65ED40 = ggl::hillshadeShaderShaderTextures(void)::ref;
      unk_1ED65ED48 = 1;
      qword_1ED65ED50 = &ggl::hillshadeShaderShaderSamplers(void)::ref;
      unk_1ED65ED58 = 1;
    }
  }
}

void ggl::DiffuseBuildingPointyRoofShader::typedReflection(ggl::DiffuseBuildingPointyRoofShader *this)
{
  {
    if (v1)
    {
      ggl::DiffuseBuildingPointyRoofShader::typedReflection(void)::ref = "DiffuseBuildingPointyRoofShader";
      ggl::diffuseBuildingPointyRoofShaderVertexFunctionDescriptor(v1);
      qword_1ED66AC78 = &ggl::diffuseBuildingPointyRoofShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66AC80 = 1347535206;
      ggl::diffuseBuildingPointyRoofShaderFragmentFunctionDescriptor(v2);
      qword_1ED66AC88 = &ggl::diffuseBuildingPointyRoofShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66AC90 = -1618896539;
      qword_1ED66AC98 = ggl::diffuseBuildingPointyRoofShaderShaderConstants(void)::ref;
      unk_1ED66ACA0 = 7;
      qword_1ED66ACA8 = &ggl::diffuseBuildingPointyRoofShaderShaderTextures(void)::ref;
      unk_1ED66ACB0 = 0;
      qword_1ED66ACB8 = &ggl::diffuseBuildingPointyRoofShaderShaderSamplers(void)::ref;
      unk_1ED66ACC0 = 0;
    }
  }
}

void ggl::ElevatedFillNoWidthClipColorShader::typedReflection(ggl::ElevatedFillNoWidthClipColorShader *this)
{
  {
    if (v1)
    {
      ggl::ElevatedFillNoWidthClipColorShader::typedReflection(void)::ref = "ElevatedFillNoWidthClipColorShader";
      ggl::elevatedFillNoWidthClipColorShaderVertexFunctionDescriptor(v1);
      qword_1ED65DEC8 = &ggl::elevatedFillNoWidthClipColorShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65DED0 = -1863592563;
      ggl::elevatedFillNoWidthClipColorShaderFragmentFunctionDescriptor(v2);
      qword_1ED65DED8 = &ggl::elevatedFillNoWidthClipColorShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65DEE0 = 953264005;
      qword_1ED65DEE8 = ggl::elevatedFillNoWidthClipColorShaderShaderConstants(void)::ref;
      unk_1ED65DEF0 = 4;
      qword_1ED65DEF8 = &ggl::elevatedFillNoWidthClipColorShaderShaderTextures(void)::ref;
      unk_1ED65DF00 = 0;
      qword_1ED65DF08 = &ggl::elevatedFillNoWidthClipColorShaderShaderSamplers(void)::ref;
      unk_1ED65DF10 = 0;
    }
  }
}

void ggl::Glyph3dLowPrecisionShader::typedReflection(ggl::Glyph3dLowPrecisionShader *this)
{
  {
    if (v1)
    {
      ggl::Glyph3dLowPrecisionShader::typedReflection(void)::ref = "Glyph3dLowPrecisionShader";
      ggl::glyph3dLowPrecisionShaderVertexFunctionDescriptor(v1);
      qword_1ED66B710 = &ggl::glyph3dLowPrecisionShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66B718 = 1923259439;
      ggl::glyph3dLowPrecisionShaderFragmentFunctionDescriptor(v2);
      qword_1ED66B720 = &ggl::glyph3dLowPrecisionShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66B728 = -1411358061;
      qword_1ED66B730 = ggl::glyph3dLowPrecisionShaderShaderConstants(void)::ref;
      unk_1ED66B738 = 6;
      qword_1ED66B740 = ggl::glyph3dLowPrecisionShaderShaderTextures(void)::ref;
      unk_1ED66B748 = 3;
      qword_1ED66B750 = ggl::glyph3dLowPrecisionShaderShaderSamplers(void)::ref;
      unk_1ED66B758 = 3;
    }
  }
}

void ggl::GradientPolylineOverlayAlphaShader::typedReflection(ggl::GradientPolylineOverlayAlphaShader *this)
{
  {
    if (v1)
    {
      ggl::GradientPolylineOverlayAlphaShader::typedReflection(void)::ref = "GradientPolylineOverlayAlphaShader";
      ggl::gradientPolylineOverlayAlphaShaderVertexFunctionDescriptor(v1);
      qword_1ED66A898 = &ggl::gradientPolylineOverlayAlphaShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66A8A0 = 1527713323;
      ggl::gradientPolylineOverlayAlphaShaderFragmentFunctionDescriptor(v2);
      qword_1ED66A8A8 = &ggl::gradientPolylineOverlayAlphaShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66A8B0 = -779256750;
      qword_1ED66A8B8 = ggl::gradientPolylineOverlayAlphaShaderShaderConstants(void)::ref;
      unk_1ED66A8C0 = 4;
      qword_1ED66A8C8 = ggl::gradientPolylineOverlayAlphaShaderShaderTextures(void)::ref;
      unk_1ED66A8D0 = 1;
      qword_1ED66A8D8 = ggl::gradientPolylineOverlayAlphaShaderShaderSamplers(void)::ref;
      unk_1ED66A8E0 = 1;
    }
  }
}

void ggl::IconShader::typedReflection(ggl::IconShader *this)
{
  {
    if (v1)
    {
      ggl::IconShader::typedReflection(void)::ref = "IconShader";
      ggl::iconShaderVertexFunctionDescriptor(v1);
      qword_1ED66DE90 = &ggl::iconShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66DE98 = 1083868096;
      ggl::iconShaderFragmentFunctionDescriptor(v2);
      qword_1ED66DEA0 = &ggl::iconShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66DEA8 = -15814019;
      qword_1ED66DEB0 = ggl::iconShaderShaderConstants(void)::ref;
      unk_1ED66DEB8 = 3;
      qword_1ED66DEC0 = ggl::iconShaderShaderTextures(void)::ref;
      unk_1ED66DEC8 = 2;
      qword_1ED66DED0 = ggl::iconShaderShaderSamplers(void)::ref;
      unk_1ED66DED8 = 2;
    }
  }
}

void ggl::ImageCopyShader::typedReflection(ggl::ImageCopyShader *this)
{
  {
    if (v1)
    {
      ggl::ImageCopyShader::typedReflection(void)::ref = "ImageCopyShader";
      ggl::imageCopyShaderVertexFunctionDescriptor(v1);
      qword_1ED66D650 = &ggl::imageCopyShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66D658 = 1332569269;
      ggl::imageCopyShaderFragmentFunctionDescriptor(v2);
      qword_1ED66D660 = &ggl::imageCopyShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66D668 = -1826076702;
      qword_1ED66D670 = &ggl::imageCopyShaderShaderConstants(void)::ref;
      unk_1ED66D678 = 0;
      qword_1ED66D680 = ggl::imageCopyShaderShaderTextures(void)::ref;
      unk_1ED66D688 = 1;
      qword_1ED66D690 = &ggl::imageCopyShaderShaderSamplers(void)::ref;
      unk_1ED66D698 = 1;
    }
  }
}

void ggl::ManeuverPointShader::typedReflection(ggl::ManeuverPointShader *this)
{
  {
    if (v1)
    {
      ggl::ManeuverPointShader::typedReflection(void)::ref = "ManeuverPointShader";
      ggl::maneuverPointShaderVertexFunctionDescriptor(v1);
      qword_1ED66C9F0 = &ggl::maneuverPointShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66C9F8 = 998340277;
      ggl::maneuverPointShaderFragmentFunctionDescriptor(v2);
      qword_1ED66CA00 = &ggl::maneuverPointShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66CA08 = 1620132422;
      qword_1ED66CA10 = ggl::maneuverPointShaderShaderConstants(void)::ref;
      unk_1ED66CA18 = 2;
      qword_1ED66CA20 = ggl::maneuverPointShaderShaderTextures(void)::ref;
      unk_1ED66CA28 = 1;
      qword_1ED66CA30 = &ggl::maneuverPointShaderShaderSamplers(void)::ref;
      unk_1ED66CA38 = 1;
    }
  }
}

void ggl::PatternedRouteLineShader::typedReflection(ggl::PatternedRouteLineShader *this)
{
  {
    if (v1)
    {
      ggl::PatternedRouteLineShader::typedReflection(void)::ref = "PatternedRouteLineShader";
      ggl::patternedRouteLineShaderVertexFunctionDescriptor(v1);
      qword_1ED66B940 = &ggl::patternedRouteLineShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66B948 = 1909648118;
      ggl::patternedRouteLineShaderFragmentFunctionDescriptor(v2);
      qword_1ED66B950 = &ggl::patternedRouteLineShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66B958 = 1115474876;
      qword_1ED66B960 = ggl::patternedRouteLineShaderShaderConstants(void)::ref;
      unk_1ED66B968 = 4;
      qword_1ED66B970 = ggl::patternedRouteLineShaderShaderTextures(void)::ref;
      unk_1ED66B978 = 1;
      qword_1ED66B980 = ggl::patternedRouteLineShaderShaderSamplers(void)::ref;
      unk_1ED66B988 = 1;
    }
  }
}

void ggl::RouteLineTrafficShader::typedReflection(ggl::RouteLineTrafficShader *this)
{
  {
    if (v1)
    {
      ggl::RouteLineTrafficShader::typedReflection(void)::ref = "RouteLineTrafficShader";
      ggl::routeLineTrafficShaderVertexFunctionDescriptor(v1);
      qword_1ED66BF38 = &ggl::routeLineTrafficShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66BF40 = 617560409;
      ggl::routeLineTrafficShaderFragmentFunctionDescriptor(v2);
      qword_1ED66BF48 = &ggl::routeLineTrafficShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66BF50 = 1949941225;
      qword_1ED66BF58 = ggl::routeLineTrafficShaderShaderConstants(void)::ref;
      unk_1ED66BF60 = 3;
      qword_1ED66BF68 = ggl::routeLineTrafficShaderShaderTextures(void)::ref;
      unk_1ED66BF70 = 1;
      qword_1ED66BF78 = &ggl::routeLineTrafficShaderShaderSamplers(void)::ref;
      unk_1ED66BF80 = 1;
    }
  }
}

void ggl::SDFGlyphHaloShader::typedReflection(ggl::SDFGlyphHaloShader *this)
{
  {
    if (v1)
    {
      ggl::SDFGlyphHaloShader::typedReflection(void)::ref = "SDFGlyphHaloShader";
      ggl::sDFGlyphHaloShaderVertexFunctionDescriptor(v1);
      qword_1ED66CDE0 = &ggl::sDFGlyphHaloShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66CDE8 = -1889696317;
      ggl::sDFGlyphHaloShaderFragmentFunctionDescriptor(v2);
      qword_1ED66CDF0 = &ggl::sDFGlyphHaloShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66CDF8 = 1027640140;
      qword_1ED66CE00 = ggl::sDFGlyphHaloShaderShaderConstants(void)::ref;
      unk_1ED66CE08 = 6;
      qword_1ED66CE10 = ggl::sDFGlyphHaloShaderShaderTextures(void)::ref;
      unk_1ED66CE18 = 3;
      qword_1ED66CE20 = ggl::sDFGlyphHaloShaderShaderSamplers(void)::ref;
      unk_1ED66CE28 = 3;
    }
  }
}

void ggl::SDFGlyphSuperSampleShader::typedReflection(ggl::SDFGlyphSuperSampleShader *this)
{
  {
    if (v1)
    {
      ggl::SDFGlyphSuperSampleShader::typedReflection(void)::ref = "SDFGlyphSuperSampleShader";
      ggl::sDFGlyphSuperSampleShaderVertexFunctionDescriptor(v1);
      qword_1ED66B5A0 = &ggl::sDFGlyphSuperSampleShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66B5A8 = -1830279396;
      ggl::sDFGlyphSuperSampleShaderFragmentFunctionDescriptor(v2);
      qword_1ED66B5B0 = &ggl::sDFGlyphSuperSampleShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66B5B8 = 54037997;
      qword_1ED66B5C0 = ggl::sDFGlyphSuperSampleShaderShaderConstants(void)::ref;
      unk_1ED66B5C8 = 6;
      qword_1ED66B5D0 = ggl::sDFGlyphSuperSampleShaderShaderTextures(void)::ref;
      unk_1ED66B5D8 = 3;
      qword_1ED66B5E0 = ggl::sDFGlyphSuperSampleShaderShaderSamplers(void)::ref;
      unk_1ED66B5E8 = 3;
    }
  }
}

void ggl::StandardPostchainDownsampleCoCShader::typedReflection(ggl::StandardPostchainDownsampleCoCShader *this)
{
  {
    if (v1)
    {
      ggl::StandardPostchainDownsampleCoCShader::typedReflection(void)::ref = "StandardPostchainDownsampleCoCShader";
      ggl::standardPostchainDownsampleCoCShaderVertexFunctionDescriptor(v1);
      qword_1ED65DDB0 = &ggl::standardPostchainDownsampleCoCShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65DDB8 = 579759095;
      ggl::standardPostchainDownsampleCoCShaderFragmentFunctionDescriptor(v2);
      qword_1ED65DDC0 = &ggl::standardPostchainDownsampleCoCShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65DDC8 = -1042802153;
      qword_1ED65DDD0 = &ggl::standardPostchainDownsampleCoCShaderShaderConstants(void)::ref;
      unk_1ED65DDD8 = 0;
      qword_1ED65DDE0 = ggl::standardPostchainDownsampleCoCShaderShaderTextures(void)::ref;
      unk_1ED65DDE8 = 1;
      qword_1ED65DDF0 = ggl::standardPostchainDownsampleCoCShaderShaderSamplers(void)::ref;
      unk_1ED65DDF8 = 1;
    }
  }
}

void ggl::StandardPostchainBGBlurShader::typedReflection(ggl::StandardPostchainBGBlurShader *this)
{
  {
    if (v1)
    {
      ggl::StandardPostchainBGBlurShader::typedReflection(void)::ref = "StandardPostchainBGBlurShader";
      ggl::standardPostchainBGBlurShaderVertexFunctionDescriptor(v1);
      qword_1ED65E320 = &ggl::standardPostchainBGBlurShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65E328 = 1416575352;
      ggl::standardPostchainBGBlurShaderFragmentFunctionDescriptor(v2);
      qword_1ED65E330 = &ggl::standardPostchainBGBlurShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65E338 = -123283286;
      qword_1ED65E340 = ggl::standardPostchainBGBlurShaderShaderConstants(void)::ref;
      unk_1ED65E348 = 1;
      qword_1ED65E350 = ggl::standardPostchainBGBlurShaderShaderTextures(void)::ref;
      unk_1ED65E358 = 1;
      qword_1ED65E360 = ggl::standardPostchainBGBlurShaderShaderSamplers(void)::ref;
      unk_1ED65E368 = 1;
    }
  }
}

void ggl::StandardPostchainTentBlurShader::typedReflection(ggl::StandardPostchainTentBlurShader *this)
{
  {
    if (v1)
    {
      ggl::StandardPostchainTentBlurShader::typedReflection(void)::ref = "StandardPostchainTentBlurShader";
      ggl::standardPostchainTentBlurShaderVertexFunctionDescriptor(v1);
      qword_1ED65E140 = &ggl::standardPostchainTentBlurShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65E148 = -1356793045;
      ggl::standardPostchainTentBlurShaderFragmentFunctionDescriptor(v2);
      qword_1ED65E150 = &ggl::standardPostchainTentBlurShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65E158 = 475696878;
      qword_1ED65E160 = &ggl::standardPostchainTentBlurShaderShaderConstants(void)::ref;
      unk_1ED65E168 = 0;
      qword_1ED65E170 = ggl::standardPostchainTentBlurShaderShaderTextures(void)::ref;
      unk_1ED65E178 = 1;
      qword_1ED65E180 = ggl::standardPostchainTentBlurShaderShaderSamplers(void)::ref;
      unk_1ED65E188 = 1;
    }
  }
}

void ggl::StandardPostchainSSAOBlurShader::typedReflection(ggl::StandardPostchainSSAOBlurShader *this)
{
  {
    if (v1)
    {
      ggl::StandardPostchainSSAOBlurShader::typedReflection(void)::ref = "StandardPostchainSSAOBlurShader";
      ggl::standardPostchainSSAOBlurShaderVertexFunctionDescriptor(v1);
      qword_1ED65E1A0 = &ggl::standardPostchainSSAOBlurShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65E1A8 = -1052788624;
      ggl::standardPostchainSSAOBlurShaderFragmentFunctionDescriptor(v2);
      qword_1ED65E1B0 = &ggl::standardPostchainSSAOBlurShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65E1B8 = -1430227900;
      qword_1ED65E1C0 = ggl::standardPostchainSSAOBlurShaderShaderConstants(void)::ref;
      unk_1ED65E1C8 = 1;
      qword_1ED65E1D0 = ggl::standardPostchainSSAOBlurShaderShaderTextures(void)::ref;
      unk_1ED65E1D8 = 2;
      qword_1ED65E1E0 = ggl::standardPostchainSSAOBlurShaderShaderSamplers(void)::ref;
      unk_1ED65E1E8 = 2;
    }
  }
}

void ggl::TexturedShader::typedReflection(ggl::TexturedShader *this)
{
  {
    if (v1)
    {
      ggl::TexturedShader::typedReflection(void)::ref = "TexturedShader";
      ggl::texturedShaderVertexFunctionDescriptor(v1);
      qword_1ED66D768 = &ggl::texturedShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66D770 = -412149443;
      ggl::texturedShaderFragmentFunctionDescriptor(v2);
      qword_1ED66D778 = &ggl::texturedShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66D780 = 1321660450;
      qword_1ED66D788 = ggl::texturedShaderShaderConstants(void)::ref;
      unk_1ED66D790 = 3;
      qword_1ED66D798 = ggl::texturedShaderShaderTextures(void)::ref;
      unk_1ED66D7A0 = 1;
      qword_1ED66D7A8 = ggl::texturedShaderShaderSamplers(void)::ref;
      unk_1ED66D7B0 = 1;
    }
  }
}

void ggl::DaVinciGroundShadowMapShader::typedReflection(ggl::DaVinciGroundShadowMapShader *this)
{
  {
    if (v1)
    {
      ggl::DaVinciGroundShadowMapShader::typedReflection(void)::ref = "DaVinciGroundShadowMapShader";
      ggl::daVinciGroundShadowMapShaderVertexFunctionDescriptor(v1);
      qword_1ED66B168 = &ggl::daVinciGroundShadowMapShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66B170 = 1483004353;
      ggl::daVinciGroundShadowMapShaderFragmentFunctionDescriptor(v2);
      qword_1ED66B178 = &ggl::daVinciGroundShadowMapShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66B180 = 1839932200;
      qword_1ED66B188 = ggl::daVinciGroundShadowMapShaderShaderConstants(void)::ref;
      unk_1ED66B190 = 6;
      qword_1ED66B198 = &ggl::daVinciGroundShadowMapShaderShaderTextures(void)::ref;
      unk_1ED66B1A0 = 0;
      qword_1ED66B1A8 = &ggl::daVinciGroundShadowMapShaderShaderSamplers(void)::ref;
      unk_1ED66B1B0 = 0;
    }
  }
}

void ggl::flyoverPostchainFGBlurShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverPostchainFGBlurShaderVertexFunctionDescriptor(void)::ref = 4288982952;
    qword_1ED65BF40 = "FlyoverPostchainFGBlurShader";
    unk_1ED65BF48 = ggl::flyoverPostchainFGBlurShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED65BF50 = 1;
    unk_1ED65BF58 = &ggl::flyoverPostchainFGBlurShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED65BF60 = 0;
    unk_1ED65BF68 = &ggl::flyoverPostchainFGBlurShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED65BF70 = 0;
    unk_1ED65BF78 = &ggl::flyoverPostchainFGBlurShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED65BF80 = 0;
    unk_1ED65BF88 = &ggl::flyoverPostchainFGBlurShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65BF98 = 0;
    unk_1ED65BFA0 = 0;
    qword_1ED65BF90 = 0;
  }
}

void ggl::FlyoverNightShader::typedReflection(ggl::FlyoverNightShader *this)
{
  {
    if (v1)
    {
      ggl::FlyoverNightShader::typedReflection(void)::ref = "FlyoverNightShader";
      ggl::flyoverNightShaderVertexFunctionDescriptor(v1);
      qword_1ED66CEF0 = &ggl::flyoverNightShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66CEF8 = 1280689199;
      ggl::flyoverNightShaderFragmentFunctionDescriptor(v2);
      qword_1ED66CF00 = &ggl::flyoverNightShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66CF08 = -833583710;
      qword_1ED66CF10 = ggl::flyoverNightShaderShaderConstants(void)::ref;
      unk_1ED66CF18 = 5;
      qword_1ED66CF20 = ggl::flyoverNightShaderShaderTextures(void)::ref;
      unk_1ED66CF28 = 3;
      qword_1ED66CF30 = ggl::flyoverNightShaderShaderSamplers(void)::ref;
      unk_1ED66CF38 = 3;
    }
  }
}

void ggl::blurYShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::blurYShaderVertexFunctionDescriptor(void)::ref = 1275627149;
    qword_1ED669D58 = "BlurYShader";
    unk_1ED669D60 = ggl::blurYShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED669D68 = 1;
    unk_1ED669D70 = &ggl::blurYShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED669D78 = 0;
    unk_1ED669D80 = &ggl::blurYShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED669D88 = 0;
    unk_1ED669D90 = &ggl::blurYShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED669D98 = 0;
    unk_1ED669DA0 = &ggl::blurYShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED669DB0 = 0;
    unk_1ED669DB8 = 0;
    qword_1ED669DA8 = 0;
  }
}

void ggl::shrinkBlur4XShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::shrinkBlur4XShaderFragmentFunctionDescriptor(void)::ref = 0x12D70748BLL;
    qword_1ED6673B0 = "ShrinkBlur4XShader";
    unk_1ED6673B8 = 0;
    qword_1ED6673C0 = 0;
    unk_1ED6673C8 = &ggl::shrinkBlur4XShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED6673D0 = 0;
    unk_1ED6673D8 = &ggl::shrinkBlur4XShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED6673E0 = 0;
    unk_1ED6673E8 = &ggl::shrinkBlur4XShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED6673F0 = 1;
    unk_1ED6673F8 = &ggl::shrinkBlur4XShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED667408 = 0;
    unk_1ED667410 = 0;
    qword_1ED667400 = 1;
  }
}

void ggl::vSCompositingShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::vSCompositingShaderVertexFunctionDescriptor(void)::ref = 3113290169;
    qword_1ED667A08 = "VSCompositingShader";
    unk_1ED667A10 = ggl::vSCompositingShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED667A18 = 1;
    unk_1ED667A20 = &ggl::vSCompositingShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED667A28 = 0;
    unk_1ED667A30 = &ggl::vSCompositingShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED667A38 = 0;
    unk_1ED667A40 = &ggl::vSCompositingShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED667A48 = 0;
    unk_1ED667A50 = &ggl::vSCompositingShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED667A60 = 0;
    unk_1ED667A68 = 0;
    qword_1ED667A58 = 0;
  }
}

void ggl::vSCompositingShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::vSCompositingShaderFragmentFunctionDescriptor(void)::ref = 0x10C9EE3F7;
    qword_1ED666850 = "VSCompositingShader";
    unk_1ED666858 = 0;
    qword_1ED666860 = 0;
    unk_1ED666868 = &ggl::vSCompositingShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED666870 = 1;
    unk_1ED666878 = &ggl::vSCompositingShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED666880 = 0;
    unk_1ED666888 = &ggl::vSCompositingShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED666890 = 7;
    unk_1ED666898 = &ggl::vSCompositingShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6668A8 = 0;
    unk_1ED6668B0 = 0;
    qword_1ED6668A0 = 7;
  }
}

void ggl::ViewStretchAlphaShader::typedReflection(ggl::ViewStretchAlphaShader *this)
{
  {
    if (v1)
    {
      ggl::ViewStretchAlphaShader::typedReflection(void)::ref = "ViewStretchAlphaShader";
      ggl::viewStretchAlphaShaderVertexFunctionDescriptor(v1);
      qword_1ED66BD68 = &ggl::viewStretchAlphaShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66BD70 = -1009486521;
      ggl::viewStretchAlphaShaderFragmentFunctionDescriptor(v2);
      qword_1ED66BD78 = &ggl::viewStretchAlphaShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66BD80 = -552441706;
      qword_1ED66BD88 = ggl::viewStretchAlphaShaderShaderConstants(void)::ref;
      unk_1ED66BD90 = 2;
      qword_1ED66BD98 = ggl::viewStretchAlphaShaderShaderTextures(void)::ref;
      unk_1ED66BDA0 = 1;
      qword_1ED66BDA8 = &ggl::viewStretchAlphaShaderShaderSamplers(void)::ref;
      unk_1ED66BDB0 = 1;
    }
  }
}

void ggl::VSPassthroughShader::typedReflection(ggl::VSPassthroughShader *this)
{
  {
    if (v1)
    {
      ggl::VSPassthroughShader::typedReflection(void)::ref = "VSPassthroughShader";
      ggl::vSPassthroughShaderVertexFunctionDescriptor(v1);
      qword_1ED66C718 = &ggl::vSPassthroughShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66C720 = -832466412;
      ggl::vSPassthroughShaderFragmentFunctionDescriptor(v2);
      qword_1ED66C728 = &ggl::vSPassthroughShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66C730 = 1894390895;
      qword_1ED66C738 = &ggl::vSPassthroughShaderShaderConstants(void)::ref;
      unk_1ED66C740 = 0;
      qword_1ED66C748 = ggl::vSPassthroughShaderShaderTextures(void)::ref;
      unk_1ED66C750 = 2;
      qword_1ED66C758 = ggl::vSPassthroughShaderShaderSamplers(void)::ref;
      unk_1ED66C760 = 2;
    }
  }
}

void *std::unique_ptr<md::SharedDeviceResources>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[9];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v2[7];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = v2[5];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = v2[3];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = v2[1];
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t ggl::pixelFormatPixelsSize(int a1, unint64_t a2, unint64_t a3)
{
  result = 0;
  switch(a1)
  {
    case 1:
    case 2:
    case 25:
      return a3 * a2;
    case 3:
    case 4:
    case 6:
    case 19:
    case 24:
    case 27:
      return 2 * a3 * a2;
    case 5:
    case 7:
    case 8:
    case 12:
    case 13:
    case 14:
    case 15:
    case 20:
    case 21:
    case 26:
      return 4 * a3 * a2;
    case 9:
    case 16:
    case 17:
      v9 = a3 * a2;
      return 8 * v9;
    case 10:
    case 11:
      return 3 * a3 * a2;
    case 18:
      v19 = a3 * a2;
      return 16 * v19;
    case 22:
      v20 = a2 >> 2;
      if ((a2 & 3) != 0)
      {
        ++v20;
      }

      v21 = a3 >> 2;
      if ((a3 & 3) != 0)
      {
        ++v21;
      }

      v9 = v20 * v21;
      return 8 * v9;
    case 28:
    case 44:
      v15.i64[0] = a2;
      v15.i64[1] = a3;
      v7 = vcvtq_f64_u64(v15);
      __asm { FMOV            V1.2D, #0.25 }

      goto LABEL_33;
    case 29:
    case 45:
      v16.i64[0] = a2;
      v16.i64[1] = a3;
      v7 = vcvtq_f64_u64(v16);
      _Q1 = xmmword_1B33B2390;
      goto LABEL_33;
    case 30:
    case 46:
      v18.i64[0] = a2;
      v18.i64[1] = a3;
      v7 = vcvtq_f64_u64(v18);
      v10 = 0x3FC999999999999ALL;
      goto LABEL_32;
    case 31:
    case 47:
      v17.i64[0] = a2;
      v17.i64[1] = a3;
      v7 = vcvtq_f64_u64(v17);
      _Q1 = xmmword_1B33B2380;
      goto LABEL_33;
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
      v5 = a1 & 0xFFFFFFEF;
      v6.i64[0] = a2;
      v6.i64[1] = a3;
      if (v5 > 34)
      {
        switch(v5)
        {
          case '#':
            v7 = vcvtq_f64_u64(v6);
            __asm { FMOV            V1.2D, #0.125 }

            goto LABEL_33;
          case '$':
            v7 = vcvtq_f64_u64(v6);
            _Q1 = xmmword_1B33B11F0;
            goto LABEL_33;
          case '%':
            v7 = vcvtq_f64_u64(v6);
            _Q1 = xmmword_1B33B2330;
            goto LABEL_33;
        }
      }

      else
      {
        switch(v5)
        {
          case ' ':
            v7 = vcvtq_f64_u64(v6);
            v10 = 0x3FC5555555555555;
LABEL_32:
            _Q1 = vdupq_n_s64(v10);
            goto LABEL_33;
          case '!':
            v7 = vcvtq_f64_u64(v6);
            _Q1 = xmmword_1B33B2350;
            goto LABEL_33;
          case '""':
            v7 = vcvtq_f64_u64(v6);
            _Q1 = xmmword_1B33B2340;
            goto LABEL_33;
        }
      }

      if (v5 > 39)
      {
        if (v5 != 40)
        {
          if (v5 != 41)
          {
            goto LABEL_34;
          }

          v7 = vcvtq_f64_u64(v6);
          v10 = 0x3FB5555555555555;
          goto LABEL_32;
        }

        v7 = vcvtq_f64_u64(v6);
        _Q1 = xmmword_1B33B2360;
      }

      else
      {
        if (v5 != 38)
        {
          if (v5 != 39)
          {
            goto LABEL_34;
          }

          v7 = vcvtq_f64_u64(v6);
          v10 = 0x3FB999999999999ALL;
          goto LABEL_32;
        }

        v7 = vcvtq_f64_u64(v6);
        _Q1 = xmmword_1B33B2370;
      }

LABEL_33:
      v6 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(v7, _Q1)));
LABEL_34:
      v19 = v6.i64[0] * v6.i64[1];
      return 16 * v19;
    case 42:
    case 43:
      v9 = 3 * a3 * a2;
      return 8 * v9;
    case 58:
      return 4;
    default:
      return result;
  }
}

{
  result = 0;
  switch(a1)
  {
    case 1:
    case 2:
    case 25:
      return a3 * a2;
    case 3:
    case 4:
    case 6:
    case 19:
    case 24:
    case 27:
      return 2 * a3 * a2;
    case 5:
    case 7:
    case 8:
    case 12:
    case 13:
    case 14:
    case 15:
    case 20:
    case 21:
    case 26:
      return 4 * a3 * a2;
    case 9:
    case 16:
    case 17:
      v9 = a3 * a2;
      return 8 * v9;
    case 10:
    case 11:
      return 3 * a3 * a2;
    case 18:
      v19 = a3 * a2;
      return 16 * v19;
    case 22:
      v20 = a2 >> 2;
      if ((a2 & 3) != 0)
      {
        ++v20;
      }

      v21 = a3 >> 2;
      if ((a3 & 3) != 0)
      {
        ++v21;
      }

      v9 = v20 * v21;
      return 8 * v9;
    case 28:
    case 44:
      v15.i64[0] = a2;
      v15.i64[1] = a3;
      v7 = vcvtq_f64_u64(v15);
      __asm { FMOV            V1.2D, #0.25 }

      goto LABEL_33;
    case 29:
    case 45:
      v16.i64[0] = a2;
      v16.i64[1] = a3;
      v7 = vcvtq_f64_u64(v16);
      _Q1 = xmmword_1B33B2390;
      goto LABEL_33;
    case 30:
    case 46:
      v18.i64[0] = a2;
      v18.i64[1] = a3;
      v7 = vcvtq_f64_u64(v18);
      v10 = 0x3FC999999999999ALL;
      goto LABEL_32;
    case 31:
    case 47:
      v17.i64[0] = a2;
      v17.i64[1] = a3;
      v7 = vcvtq_f64_u64(v17);
      _Q1 = xmmword_1B33B2380;
      goto LABEL_33;
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
      v5 = a1 & 0xFFFFFFEF;
      v6.i64[0] = a2;
      v6.i64[1] = a3;
      if (v5 > 34)
      {
        switch(v5)
        {
          case '#':
            v7 = vcvtq_f64_u64(v6);
            __asm { FMOV            V1.2D, #0.125 }

            goto LABEL_33;
          case '$':
            v7 = vcvtq_f64_u64(v6);
            _Q1 = xmmword_1B33B11F0;
            goto LABEL_33;
          case '%':
            v7 = vcvtq_f64_u64(v6);
            _Q1 = xmmword_1B33B2330;
            goto LABEL_33;
        }
      }

      else
      {
        switch(v5)
        {
          case ' ':
            v7 = vcvtq_f64_u64(v6);
            v10 = 0x3FC5555555555555;
LABEL_32:
            _Q1 = vdupq_n_s64(v10);
            goto LABEL_33;
          case '!':
            v7 = vcvtq_f64_u64(v6);
            _Q1 = xmmword_1B33B2350;
            goto LABEL_33;
          case '""':
            v7 = vcvtq_f64_u64(v6);
            _Q1 = xmmword_1B33B2340;
            goto LABEL_33;
        }
      }

      if (v5 > 39)
      {
        if (v5 != 40)
        {
          if (v5 != 41)
          {
            goto LABEL_34;
          }

          v7 = vcvtq_f64_u64(v6);
          v10 = 0x3FB5555555555555;
          goto LABEL_32;
        }

        v7 = vcvtq_f64_u64(v6);
        _Q1 = xmmword_1B33B2360;
      }

      else
      {
        if (v5 != 38)
        {
          if (v5 != 39)
          {
            goto LABEL_34;
          }

          v7 = vcvtq_f64_u64(v6);
          v10 = 0x3FB999999999999ALL;
          goto LABEL_32;
        }

        v7 = vcvtq_f64_u64(v6);
        _Q1 = xmmword_1B33B2370;
      }

LABEL_33:
      v6 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(v7, _Q1)));
LABEL_34:
      v19 = v6.i64[0] * v6.i64[1];
      return 16 * v19;
    case 42:
    case 43:
      v9 = 3 * a3 * a2;
      return 8 * v9;
    case 58:
      return 4;
    default:
      return result;
  }
}

void sub_1B28681FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *(v9 + 152);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *(v9 + 128);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  std::vector<std::pair<md::StylesheetKey,std::shared_ptr<gss::StyleSheet<gss::ScenePropertyID>>>>::__destroy_vector::operator()[abi:nn200100](&a9);
  std::vector<std::pair<md::StylesheetKey,std::shared_ptr<gss::StyleSheet<gss::ScenePropertyID>>>>::__destroy_vector::operator()[abi:nn200100](&a9);

  v14 = *(v9 + 32);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v15);
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:nn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void parseUnnamedRow(uint64_t a1, void *a2)
{
  v37 = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a2 + 4;
  v5 = "";
  v6 = MEMORY[0x1E69E5310];
  do
  {
    while (1)
    {
      v7 = std::istream::peek();
      std::string::basic_string[abi:nn200100]<0>(&v38, v5);
      if (v7 == 34)
      {
        if (std::istream::get() != 34)
        {
          goto LABEL_28;
        }

        while (1)
        {
          if (*(v4 + *(*a2 - 24)))
          {
            v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, "Error: ", 7);
            v9 = MEMORY[0x1B8C61C80](v8, 93);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, ": Parse error in CSV file\n", 26);
          }

          v10 = std::istream::get();
          if (v10 == 92)
          {
            v11 = std::istream::get();
            if (*(v4 + *(*a2 - 24)))
            {
              v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, "Error: ", 7);
              v17 = MEMORY[0x1B8C61C80](v16, 101);
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, ": Parse error in CSV file\n", 26);
              goto LABEL_28;
            }

            if (v11 == 114)
            {
              v12 = 13;
            }

            else
            {
              v12 = v11;
            }

            if (v11 == 116)
            {
              v13 = 9;
            }

            else
            {
              v13 = v12;
            }

            if (v11 == 110)
            {
              v10 = 10;
            }

            else
            {
              v10 = v13;
            }
          }

          else if (v10 == 34)
          {
            goto LABEL_28;
          }

          std::string::push_back(&v38, v10);
        }
      }

      while (!*(v4 + *(*a2 - 24)))
      {
        v14 = std::istream::peek();
        if (v14 <= 0x2C && ((1 << v14) & 0x100000002400) != 0)
        {
          break;
        }

        std::istream::get();
        std::string::push_back(&v38, v14);
      }

LABEL_28:
      v19 = *(a1 + 8);
      v18 = *(a1 + 16);
      if (v19 >= v18)
      {
        v21 = v5;
        v22 = 0xAAAAAAAAAAAAAAABLL * ((v19 - *a1) >> 3);
        v23 = v22 + 1;
        if (v22 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v24 = 0xAAAAAAAAAAAAAAABLL * ((v18 - *a1) >> 3);
        if (2 * v24 > v23)
        {
          v23 = 2 * v24;
        }

        if (v24 >= 0x555555555555555)
        {
          v25 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v25 = v23;
        }

        v39.__end_cap_.__value_ = a1;
        if (v25)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v25);
        }

        v27 = (24 * v22);
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v27, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
        }

        else
        {
          v28 = *&v38.__r_.__value_.__l.__data_;
          v27->__r_.__value_.__r.__words[2] = v38.__r_.__value_.__r.__words[2];
          *&v27->__r_.__value_.__l.__data_ = v28;
        }

        v26 = v27 + 1;
        v29 = *(a1 + 8) - *a1;
        v30 = v27 - v29;
        memcpy(v27 - v29, *a1, v29);
        v31 = *a1;
        *a1 = v30;
        *(a1 + 8) = v27 + 1;
        v32 = *(a1 + 16);
        *(a1 + 16) = 0;
        v39.__end_ = v31;
        v39.__end_cap_.__value_ = v32;
        v39.__first_ = v31;
        v39.__begin_ = v31;
        std::__split_buffer<std::string>::~__split_buffer(&v39);
        v5 = v21;
      }

      else
      {
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(*(a1 + 8), v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
        }

        else
        {
          v20 = *&v38.__r_.__value_.__l.__data_;
          *(v19 + 16) = *(&v38.__r_.__value_.__l + 2);
          *v19 = v20;
        }

        v26 = (v19 + 24);
      }

      *(a1 + 8) = v26;
      v33 = std::istream::get();
      if (*(v4 + *(*a2 - 24)))
      {
        v34 = 0;
        v37 = 1;
        goto LABEL_55;
      }

      if (v33 != 10)
      {
        if (v33 == 44)
        {
          v34 = 1;
          goto LABEL_55;
        }

        if (v33 == 13)
        {
          if (std::istream::peek() == 10)
          {
            std::istream::get();
          }
        }

        else
        {
          v35 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, "Error: ", 7);
          v36 = MEMORY[0x1B8C61C80](v35, 67);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v36, ": Parse error in CSV file\n", 26);
        }
      }

      v34 = 0;
      v37 = 1;
LABEL_55:
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if ((v34 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    operator delete(v38.__r_.__value_.__l.__data_);
  }

  while ((v34 & 1) != 0);
LABEL_59:
  if ((v37 & 1) == 0)
  {
    v39.__first_ = a1;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v39);
  }
}

uint64_t ggl::MetalResourceManager::upload(ggl::MetalResourceManager *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(v6 + 24);
  if (v7)
  {
    if (!v5)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v7 = ggl::MetalResourceManager::newTexture(a1, *(a2 + 8));
    if (!v5)
    {
      goto LABEL_42;
    }
  }

  v8 = *(a2 + 36);
  v9 = *(a2 + 28);
  if (*a3 && v7[120] == 1)
  {
    ggl::RenderResourceFences::update(v7 + 16, (*a3 + 16));
  }

  v10 = ggl::MetalTextureResource::texture(v7, a2);
  if (v5[2])
  {
    v11 = 0;
    v12 = vsub_s32(v8, v9);
    do
    {
      v13 = (*(*v5 + 16))(v5, v11);
      if (v13)
      {
        v14 = 0;
        v15 = vneg_s32(vdup_n_s32(v11));
        v16 = vmax_u32(vshl_u32(v12, v15), 0x100000001);
        switch(*(v6 + 68))
        {
          case 1:
          case 2:
          case 0x19:
            v14 = v16.u32[0];
            break;
          case 3:
          case 4:
          case 6:
          case 0x13:
          case 0x18:
          case 0x1B:
          case 0x2A:
          case 0x2B:
            v14 = 2 * v16.u32[0];
            break;
          case 5:
          case 7:
          case 8:
          case 0xC:
          case 0xD:
          case 0xE:
          case 0xF:
          case 0x15:
          case 0x3A:
            v14 = 4 * v16.u32[0];
            break;
          case 9:
          case 0x10:
          case 0x11:
            v14 = 8 * v16.u32[0];
            break;
          case 0xA:
          case 0xB:
          case 0x14:
            v14 = 3 * v16.u32[0];
            break;
          case 0x12:
            v14 = 16 * v16.u32[0];
            break;
          case 0x16:
            v24 = v16.u32[0] >> 2;
            if ((v16.i8[0] & 3) != 0)
            {
              ++v24;
            }

            v14 = 8 * v24;
            break;
          case 0x1A:
            v14 = 32 * v16.u32[0];
            break;
          case 0x1C:
          case 0x2C:
            v19 = vcvtd_n_f64_u32(v16.u32[0], 2uLL);
            goto LABEL_20;
          case 0x1D:
          case 0x1E:
          case 0x2D:
          case 0x2E:
            v17 = v16.u32[0];
            v18 = 0.2;
            goto LABEL_19;
          case 0x1F:
          case 0x20:
          case 0x2F:
          case 0x30:
            v17 = v16.u32[0];
            v18 = 0.166666667;
            goto LABEL_19;
          case 0x21:
          case 0x22:
          case 0x23:
          case 0x31:
          case 0x32:
          case 0x33:
            v19 = vcvtd_n_f64_u32(v16.u32[0], 3uLL);
            goto LABEL_20;
          case 0x24:
          case 0x25:
          case 0x26:
          case 0x27:
          case 0x34:
          case 0x35:
          case 0x36:
          case 0x37:
            v17 = v16.u32[0];
            v18 = 0.1;
            goto LABEL_19;
          case 0x28:
          case 0x29:
          case 0x38:
          case 0x39:
            v17 = v16.u32[0];
            v18 = 0.0833333333;
LABEL_19:
            v19 = v17 * v18;
LABEL_20:
            v14 = 16 * vcvtpd_u64_f64(v19);
            break;
          default:
            break;
        }

        v20 = vshl_u32(*(a2 + 28), v15);
        if ((*(a2 + 17) & (*(a2 + 16) - 1 < 5)) != 0)
        {
          v21 = *(a2 + 16);
        }

        else
        {
          v21 = 0;
        }

        if (*(a2 + 24))
        {
          v22 = *(a2 + 20);
        }

        else
        {
          v22 = v21;
        }

        *&v23 = v20.u32[0];
        *(&v23 + 1) = v20.u32[1];
        v26 = v23;
        v27 = 0;
        *&v23 = v16.u32[0];
        *(&v23 + 1) = v16.u32[1];
        v28 = v23;
        v29 = 1;
        [v10 replaceRegion:&v26 mipmapLevel:v11 slice:v22 withBytes:v13 bytesPerRow:v14 bytesPerImage:0];
      }

      ++v11;
    }

    while (v11 < v5[2]);
  }

  if (ggl::Performance::Counters::instance(void)::onceToken[0] != -1)
  {
    dispatch_once(ggl::Performance::Counters::instance(void)::onceToken, &__block_literal_global_50855);
  }

  atomic_fetch_add((*(ggl::Performance::Counters::instance(void)::counters + 32) + 40), 1uLL);

LABEL_42:
  result = *(a2 + 72);
  if (result)
  {
    return (*(*result + 48))(result, a2);
  }

  return result;
}

uint64_t ggl::MetalResourceAccessor::load(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 80);
  v4[0] = 0;
  v4[1] = 0;
  return ggl::MetalResourceManager::upload(v2, a2, v4);
}

char *ggl::MetalResourceManager::newTexture(ggl::MetalResourceManager *this, const ggl::Texture *a2)
{
  simpleValidateTexture(a2);
  v4 = *(a2 + 14);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v8 = *(a2 + 49);
      v10 = *(a2 + 22);
      v6 = *(a2 + 17);
      v5 = 0;
      v37 = 6 * ggl::pixelFormatPixelsSize(v6, v8, v8);
      v7 = 5;
      v11 = 1;
      v9 = v8;
      goto LABEL_18;
    }

    if (v4 == 4)
    {
      v5 = 0;
      goto LABEL_7;
    }

LABEL_17:
    v37 = 0;
    v5 = 0;
    v8 = 0;
    v9 = 0;
    v7 = 0;
    v6 = *(a2 + 17);
    v11 = 1;
    v10 = 1;
    goto LABEL_18;
  }

  if (v4 < 2)
  {
    v5 = *(a2 + 11) != 0;
LABEL_7:
    v6 = *(a2 + 17);
    if (*(a2 + 18) <= 1u)
    {
      v7 = 2;
    }

    else
    {
      v7 = 4;
    }

    v9 = *(a2 + 20);
    v8 = *(a2 + 21);
    v10 = *(a2 + 26);
    v37 = ggl::pixelFormatPixelsSize(*(a2 + 17), v9, v8);
    v11 = 1;
    goto LABEL_18;
  }

  if (v4 != 2)
  {
    goto LABEL_17;
  }

  v6 = *(a2 + 17);
  if (*(a2 + 18) <= 1u)
  {
    v7 = 3;
  }

  else
  {
    v7 = 8;
  }

  v9 = *(a2 + 20);
  v8 = *(a2 + 21);
  v11 = *(a2 + 22);
  v10 = *(a2 + 23);
  v5 = 0;
  v37 = ggl::pixelFormatPixelsSize(*(a2 + 17), v9, v8) * v11;
LABEL_18:
  PixelFormat = ggl::getPixelFormat(v6, *(*(this + 32) + 16));
  v13 = ggl::zone_mallocator::instance(PixelFormat);
  v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v13, 0x88uLL);
  ggl::MetalTextureResource::MetalTextureResource(v14);
  if (v5)
  {
    if (*(a2 + 16) == 2)
    {
      v14[120] = 1;
      *(v14 + 16) = 3;
      std::vector<NSObject  {objcproto10MTLTexture}* {__strong},geo::allocator_adapter<NSObject  {objcproto10MTLTexture}* {__strong},ggl::zone_mallocator>>::resize((v14 + 32), 3uLL);
    }

    if (*(v14 + 16))
    {
      v15 = 0;
      v16 = *(*(a2 + 11) + 24);
      do
      {
        v17 = *(*(v16 + 32) + 8 * v15);
        v18 = [v17 newTextureViewWithPixelFormat:PixelFormat];
        v19 = *(v14 + 4);
        v20 = *(v19 + 8 * v15);
        *(v19 + 8 * v15) = v18;

        ++v15;
      }

      while (v15 < *(v14 + 16));
    }

    v21 = *(a2 + 3);
    if (v21 && v21 != 3735927469)
    {
      ggl::RenderDataHolder::replaceRenderResource(a2, this, v14);
    }

    else
    {
      ggl::RenderDataHolder::setRenderResource(a2, this, v14);
    }

    goto LABEL_47;
  }

  v22 = objc_alloc_init(MEMORY[0x1E69741C0]);
  [v22 setTextureType:v7];
  [v22 setPixelFormat:PixelFormat];
  [v22 setWidth:v9];
  [v22 setHeight:v8];
  [v22 setDepth:1];
  [v22 setMipmapLevelCount:v10];
  [v22 setSampleCount:*(a2 + 18)];
  [v22 setArrayLength:v11];
  [v22 setCpuCacheMode:0];
  v23 = *(a2 + 17);
  if ((v23 - 19) < 8 && (((0x87u >> (v23 - 19)) & 1) != 0 || (v23 - 25) < 2) || *(a2 + 18) > 1u || *(a2 + 16) == 3)
  {
    v24 = 2;
  }

  else
  {
    v24 = 0;
  }

  [v22 setStorageMode:v24];
  v25 = *(a2 + 15) - 1;
  if (v25 >= 5)
  {
    v26 = 0;
  }

  else
  {
    v26 = qword_1B341C628[v25];
  }

  [v22 setUsage:v26];
  if (*(a2 + 16) == 2)
  {
    v14[120] = 1;
    *(v14 + 16) = 3;
    std::vector<NSObject  {objcproto10MTLTexture}* {__strong},geo::allocator_adapter<NSObject  {objcproto10MTLTexture}* {__strong},ggl::zone_mallocator>>::resize((v14 + 32), 3uLL);
  }

  if (!*(v14 + 16))
  {
LABEL_45:
    ggl::RenderDataHolder::setRenderResource(a2, this, v14);

LABEL_47:
    v35 = *(v14 + 16) * v37;
    *(v14 + 3) = v35;
    ggl::ResourceManager::_addResourceStat(this, "Texture", 0x4DDB34EE00000007uLL, v35);
    return v14;
  }

  v27 = 0;
  while (1)
  {
    v28 = *(a2 + 14);
    v29 = *(*(this + 32) + 104);
    v30 = v29;
    v31 = v28 == 4 ? [v29 newTextureWithDescriptor:v22 iosurface:*(a2 + 20) plane:0] : objc_msgSend(v29, "newTextureWithDescriptor:", v22);
    v32 = v31;

    if (!v32)
    {
      break;
    }

    v33 = *(v14 + 4);
    v34 = *(v33 + 8 * v27);
    *(v33 + 8 * v27) = v32;

    if (++v27 >= *(v14 + 16))
    {
      goto LABEL_45;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1B2754000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Metal returned null texture.", buf, 2u);
  }

  result = abort_with_reason();
  __break(1u);
  return result;
}

void ggl::IsoAlphaAtlas::IsoAlphaAtlas(ggl::IsoAlphaAtlas *this, unsigned int a2, float a3, float a4, ggl::Device *a5, float a6, float a7)
{
  v7[6] = *MEMORY[0x1E69E9840];
  *this = 0x800000080;
  *(this + 2) = a3;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  ggl::AlphaAtlas::generateTexture(v7, a3, 0.15, a6, a7);
}

BOOL geo::StringLiteral::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) == *(a2 + 12) && (v2 = *(a1 + 8), v2 == *(a2 + 8)))
  {
    return memcmp(*a1, *a2, v2) == 0;
  }

  else
  {
    return 0;
  }
}

void geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = v5;
  v4 = *(a1 + 8);
  *(a1 + 8) = v5;
}

uint64_t __assign_helper_atomic_property__5(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(GEOResourceManifestManager *,GEOActiveTileGroup *,GEOActiveTileGroup *)>::__value_func[abi:nn200100](v6, a2);
  if (v6 != a1)
  {
    v3 = v7;
    v4 = *(a1 + 24);
    if (v7 == v6)
    {
      if (v4 == a1)
      {
        (*(*v7 + 24))();
        (*(*v7 + 32))(v7);
        v7 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v6);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v7 = v6;
        (*(v8[0] + 24))(v8, a1);
        (*(v8[0] + 32))(v8);
      }

      else
      {
        (*(*v7 + 24))();
        (*(*v7 + 32))(v7);
        v7 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v4 == a1)
    {
      (*(*v4 + 24))(*(a1 + 24), v6);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v7;
      v7 = v6;
    }

    else
    {
      v7 = *(a1 + 24);
      *(a1 + 24) = v3;
    }
  }

  return std::__function::__value_func<void ()(GEOResourceManifestManager *,GEOActiveTileGroup *,GEOActiveTileGroup *)>::~__value_func[abi:nn200100](v6);
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

_BYTE *ggl::StencilManager::reset(_BYTE *this)
{
  *this = 1;
  this[1] = this[2];
  return this;
}

unint64_t md::DaVinciPipelineStateManager<ggl::DaVinci::LinearDepthPipelineState,std::shared_ptr<ggl::LinearDepthShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(void *a1, int8x8_t *a2, uint64_t *a3, uint8x8_t a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *(a3 + 9);
  v9 = *(a3 + 11);
  v10 = *(a3 + 12);
  a4.i32[0] = *(a3 + 13);
  v36 = vmovl_u8(a4);
  v11 = *(a3 + 17);
  v12 = *(a3 + 18);
  v13 = *(a3 + 19);
  v14 = *(a3 + 20);
  v15 = *(a3 + 21);
  v16 = *(a3 + 22);
  v17 = *(a3 + 24);
  v18 = *(a3 + 25);
  v19 = *(a3 + 26);
  v20 = *(a3 + 27);
  v21 = *(a3 + 28);
  v22 = *(a3 + 29);
  v23 = *(a3 + 30);
  v24 = *(a3 + 31);
  v25 = *(a3 + 32);
  v26 = *(a3 + 10);
  v27 = *(a3 + 33);
  v60[0] = 0;
  memset(&v60[15], 0, 15);
  v37 = v6;
  v38 = v7;
  v39 = v8;
  v40 = v9;
  v41 = v10;
  v42 = a4.i32[0];
  v43 = 0;
  v44 = v11;
  v45 = v12;
  v46 = v13;
  v47 = v14;
  v48 = v15;
  v49 = v16;
  v50 = v17;
  v51 = BYTE2(v6) | BYTE3(v6);
  v52 = (v36.i8[4] & 1) == 0;
  v53 = v7 ^ 1;
  v54 = 0;
  v55 = 0;
  v56 = v18;
  v57 = v19;
  v58 = v20;
  v59 = v21;
  v60[1] = v22;
  v60[2] = v23;
  v60[3] = v24;
  v60[4] = v25;
  v60[5] = v26;
  v60[6] = v8 & v36.i8[4] | v12 | v11;
  *&v60[7] = v25 ^ 1u;
  v60[8] = v27;
  result = ggl::packFunctionConstantKey(&v37, v15);
  v29 = a2[13];
  if (!*&v29)
  {
    goto LABEL_17;
  }

  v30 = vcnt_s8(v29);
  v30.i16[0] = vaddlv_u8(v30);
  if (v30.u32[0] > 1uLL)
  {
    v31 = result;
    if (result >= *&v29)
    {
      v31 = result % *&v29;
    }
  }

  else
  {
    v31 = (*&v29 - 1) & result;
  }

  v32 = *(*&a2[12] + 8 * v31);
  if (!v32 || (v33 = *v32) == 0)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    v34 = v33[1];
    if (v34 == result)
    {
      break;
    }

    if (v30.u32[0] > 1uLL)
    {
      if (v34 >= *&v29)
      {
        v34 %= *&v29;
      }
    }

    else
    {
      v34 &= *&v29 - 1;
    }

    if (v34 != v31)
    {
      goto LABEL_17;
    }

LABEL_16:
    v33 = *v33;
    if (!v33)
    {
      goto LABEL_17;
    }
  }

  if (v33[2] != result)
  {
    goto LABEL_16;
  }

  v35 = v33[4];
  *a1 = v33[3];
  a1[1] = v35;
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B286AD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25)
{
  v28 = v26[4];
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  operator delete(v26);
  std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(ggl::DaVinci::GroundPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::DaVinci::GroundNonCompressedPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *ggl::BufferMemory::BufferMemory(void *this)
{
  this[5] = 0;
  *this = 0;
  this[1] = 0;
  return this;
}

ggl::zone_mallocator *std::__split_buffer<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::Tile::Clipping> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Tile::Clipping> *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::Tile::Clipping> *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::ConstantDataTyped<ggl::Tile::Clipping> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Tile::Clipping> *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle>>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle>>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::Style> *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::Style> *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> * ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void sub_1B286B98C(_Unwind_Exception *a1)
{
  (*(*v3 + 8))(v3);
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void md::LabelsLogic::setNeedsLayoutCallback(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::__value_func[abi:nn200100](v3, a2);
  v4 = a1;
  operator new();
}

void sub_1B286BD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::function<void ()(md::LabelManager *,std::shared_ptr<md::LabelMarker> const&)>::operator=(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v8 = v7;
      (*(*v3 + 24))(v3, v7);
    }

    else
    {
      v8 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v7 != a1)
  {
    v4 = v8;
    v5 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v5 == a1)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  std::__function::__value_func<void ()(md::LabelManager *,std::shared_ptr<md::LabelMarker> const&)>::~__value_func[abi:nn200100](v7);
  return a1;
}

void md::LabelsLogic::setDidLayoutCallback(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(md::LabelManager *)>::__value_func[abi:nn200100](v3, a2);
  v4 = a1;
  operator new();
}

void sub_1B286C480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(md::LabelManager *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::LabelManager *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(VKARWalkingFeatureDidUpdateInfo *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](uint64_t a1, unsigned int a2)
{
  v4 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1, a2);
  v5 = v4;
  if (v4 != *(a1 + 12))
  {
    return *a1 + *(a1 + 8) + 2 * v4;
  }

  if ((*(a1 + 16) & 1) == 0 && geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1, a2) == v4)
  {
    isSpaceAvailable = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(a1);
    v7 = *(a1 + 12);
    v5 = *(a1 + 12);
    if (isSpaceAvailable)
    {
      v8 = *a1;
      *(*a1 + 4 * v7) = a2;
      *(v8 + *(a1 + 8) + 2 * v7) = 0;
      v5 = *(a1 + 12) + 1;
      *(a1 + 12) = v5;
      *(a1 + 17) = 0;
    }
  }

  return *a1 + *(a1 + 8) + 2 * v5 - 2;
}

void geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  if (v5 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = *(a2 + 12);
  }

  else
  {
    v6 = *(a2 + 12);
    if ((*(a1 + 16) & 1) == 0 && *(a1 + 14) < v6)
    {
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1, *(a2 + 12), 0);
      v6 = *(a2 + 12);
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (v8 != v6 && geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(a1))
    {
      if (v9 & 1 | (v8 >= *(a2 + 12)))
      {
        v10 = v9;
      }

      else
      {
        v7 = (*a2 + 4 * v8);
        v2 = (*a2 + *(a2 + 8) + 2 * v8);
        v10 = 1;
      }

      v11 = *(a1 + 12);
      v12 = *a1;
      *(*a1 + 4 * v11) = *v7;
      *(v12 + *(a1 + 8) + 2 * v11) = *v2;
      ++*(a1 + 12);
      if (v8 + 1 < *(a2 + 12))
      {
        ++v8;
      }

      else
      {
        v8 = *(a2 + 12);
      }

      if (v10)
      {
        v9 = 0;
      }

      else
      {
        v9 = v10;
      }
    }

    LOBYTE(v5) = *(a2 + 16);
  }

  *(a1 + 16) = v5;
  *(a1 + 17) = *(a2 + 17);
}

void gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(uint64_t a1, unsigned int a2, int a3)
{
  v16 = (a1 + 16);
  v7 = pthread_rwlock_wrlock((a1 + 16));
  if (v7)
  {
    geo::read_write_lock::logFailure(v7, "write lock", v8);
  }

  v9 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1 + 216, a2);
  if (v9 == *(a1 + 228) || (v3 = (*(a1 + 216) + *(a1 + 224) + 2 * v9), *v3 != a3))
  {
    *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a1 + 216, a2) = a3;
    if (*(a1 + 232) & 1) != 0 || (*(a1 + 233))
    {
      v10 = 1;
    }

    else
    {
      v10 = 1;
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1 + 216, *(a1 + 230), 1);
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1 + 240, a2);
  v12 = *(a1 + 252);
  if (v11 == v12)
  {
    goto LABEL_16;
  }

  if (v11 < v12)
  {
    v3 = (*(a1 + 240) + *(a1 + 248) + 2 * v11);
  }

  if (*v3 != a3)
  {
LABEL_16:
    *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a1 + 240, a2) = a3;
    if ((*(a1 + 256) & 1) == 0 && (*(a1 + 257) & 1) == 0)
    {
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1 + 240, *(a1 + 254), 1);
    }
  }

  else if (!v10)
  {
    goto LABEL_23;
  }

  v13 = COERCE_FLOAT(atomic_load((a1 + 272)));
  v14 = v13 <= 0.0;
  v15 = 1;
  if (v14)
  {
    v15 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>((a1 + 240), a1 + 216) ^ 1;
  }

  atomic_store(v15, (a1 + 270));
  atomic_fetch_add((a1 + 264), 1u);
LABEL_23:
  geo::write_lock_guard::~write_lock_guard(&v16);
}

void sub_1B286CD20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  geo::write_lock_guard::~write_lock_guard(va);
  _Unwind_Resume(a1);
}

void geo::write_lock_guard::~write_lock_guard(pthread_rwlock_t **this)
{
  v1 = pthread_rwlock_unlock(*this);
  if (v1)
  {
    geo::read_write_lock::logFailure(v1, "unlock", v2);
  }
}

double __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  result = *(a2 + 52);
  *(a1 + 52) = result;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  return result;
}

id ___ZN2md19StyleSheetExtension12initWithNameIN3gss15ScenePropertyIDEEENSt3__110shared_ptrINS2_10StyleSheetIT_EEEERKNS4_12basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEfNS2_13TargetDisplayERNS_16StylesheetVendorEP17VKResourceManagerb_block_invoke_2(uint64_t a1, void *a2, float a3)
{
  v5 = a2;
  v6 = vcvtms_u32_f32(a3);
  v7 = ((a3 - floorf(a3)) * 10.0) + 0.5;
  if (v7)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"@%lu.%ux", v6, v7];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"@%lux", v6];
  }
  v8 = ;
  v9 = a3;
  v10 = *(a1 + 56);
  v11 = *(v10 + 23);
  if (a3 <= 1.9)
  {
    if (v11 < 0)
    {
      v10 = *v10;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s%@.%@", v9, v10, v5, *(a1 + 32)];
  }

  else
  {
    if (v11 < 0)
    {
      v10 = *v10;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s%@%@.%@", v9, v10, v5, v8, *(a1 + 32)];
  }

  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = [*(a1 + 40) dataForResourceWithName:*(*(*(a1 + 48) + 8) + 40)];

  return v15;
}

void sub_1B286D270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13, void **a14, uint64_t a15, void **a16)
{
  if (*(v16 + 3023) < 0)
  {
    operator delete(*v22);
  }

  std::unique_ptr<std::vector<std::function<void ()(BOOL)>,geo::allocator_adapter<std::function<void ()(BOOL)>,gss::zone_mallocator>>>::reset[abi:nn200100]((v16 + 2984), 0);
  std::unique_ptr<std::vector<std::function<void ()(BOOL)>,geo::allocator_adapter<std::function<void ()(BOOL)>,gss::zone_mallocator>>>::reset[abi:nn200100]((v16 + 2976), 0);
  std::mutex::~mutex((v16 + 2912));
  std::mutex::~mutex((v16 + 2848));
  std::future<void>::~future((v16 + 2840));
  std::future<void>::~future(v21);
  MEMORY[0x1B8C61FC0](v16 + 2824);
  MEMORY[0x1B8C61FC0](v16 + 2816);
  std::__hash_table<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,std::__unordered_map_hasher<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,std::hash<gss::StyleSheetResultCacheKey>,std::equal_to<gss::StyleSheetResultCacheKey>,true>,std::__unordered_map_equal<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,std::equal_to<gss::StyleSheetResultCacheKey>,std::hash<gss::StyleSheetResultCacheKey>,true>,geo::allocator_adapter<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,gss::zone_mallocator>>::__deallocate_node(*(v16 + 2776));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *> *> *,gss::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v16 + 2752));
  geo::read_write_lock::~read_write_lock((v16 + 2552));
  v24 = (v16 + 2488);
  v25 = -2048;
  do
  {
    std::mutex::~mutex(v24);
    v24 = (v26 - 64);
    v25 += 64;
  }

  while (v25);
  std::vector<std::unique_ptr<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo>>>::__destroy_vector::operator()[abi:nn200100](&a16);
  a16 = a10;
  std::vector<std::unique_ptr<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo>>>::__destroy_vector::operator()[abi:nn200100](&a16);
  a16 = a11;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a16);
  a16 = a12;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a16);
  a16 = a13;
  std::vector<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>::__destroy_vector::operator()[abi:nn200100](&a16);
  a16 = a14;
  std::vector<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>::__destroy_vector::operator()[abi:nn200100](&a16);
  a16 = (v16 + 256);
  std::vector<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>::__destroy_vector::operator()[abi:nn200100](&a16);
  std::mutex::~mutex(v20);
  std::unique_ptr<gss::StyleMatchingTree<gss::CartoStyle<gss::ScenePropertyID>>>::reset[abi:nn200100](v19, 0);
  geo::intern_vector<std::shared_ptr<gss::StylePropertySet<gss::ScenePropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::StylePropertySet<gss::ScenePropertyID>>,gss::zone_mallocator>>::deallocateStorage(v18);
  v27 = *(v16 + 152);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  v28 = *(v16 + 136);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  v29 = *(v16 + 120);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  geo::intern_vector<std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>,gss::zone_mallocator>>::deallocateStorage(v17);
  if (*(v16 + 79) < 0)
  {
    operator delete(*(v16 + 56));
  }

  v30 = *(v16 + 48);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }

  v31 = *(v16 + 32);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v32);
  _Unwind_Resume(a1);
}

void ___ZN2md16StylesheetVendor15localizationMapEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      std::string::basic_string[abi:nn200100]<0>(&v12, [v5 UTF8String]);
      v8 = *(v7 + 96);
      v9 = [v6 intValue];
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v12;
      }

      v11 = v9;
      std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,geo::allocator_adapter<std::__hash_value_type<std::string,int>,gss::zone_mallocator>>::__emplace_unique_key_args<std::string,std::pair<std::string const,int>>(v8, &__p, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_1B286D524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void md::StyleSheetExtension::currencyMap(md::StyleSheetExtension *this, md::StylesheetVendor *a2)
{
  os_unfair_lock_lock(a2 + 8);
  if ((*(a2 + 112) & 1) == 0)
  {
    v4 = [*(a2 + 2) dataForResourceWithName:@"CurrencyStyleAttributes.plist"];
    if (v4)
    {
      [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:0];
      objc_claimAutoreleasedReturnValue();
    }

    operator new();
  }

  v5 = *(a2 + 16);
  *this = *(a2 + 15);
  *(this + 1) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(a2 + 8);
}

void ___ZN2md16StylesheetVendor11currencyMapEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      std::string::basic_string[abi:nn200100]<0>(&v12, [v5 UTF8String]);
      v8 = *(v7 + 120);
      v9 = [v6 intValue];
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v12;
      }

      v11 = v9;
      std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,geo::allocator_adapter<std::__hash_value_type<std::string,int>,gss::zone_mallocator>>::__emplace_unique_key_args<std::string,std::pair<std::string const,int>>(v8, &__p, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_1B286D824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

uint64_t geo::_retain_ptr<NSData * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2A608E0;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

void std::__function::__func<gss::StyleSheet<gss::ScenePropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1},std::allocator<gss::StyleSheet<gss::ScenePropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](a1 + 40);

  operator delete(a1);
}

void std::__function::__func<std::shared_ptr<gss::StyleSheet<gss::ScenePropertyID>> md::StyleSheetExtension::initWithName<gss::ScenePropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1},std::allocator<std::shared_ptr<gss::StyleSheet<gss::ScenePropertyID>> md::StyleSheetExtension::initWithName<gss::ScenePropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1}>,void ()(BOOL)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1},std::allocator<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1}>,void ()(BOOL)>::destroy[abi:nn200100](a1 + 8);

  operator delete(a1);
}

void gss::StyleManagerExtension::initWithName<gss::PropertyID>(void *a1, uint64_t a2, unsigned int a3, void *a4, float a5)
{
  v9 = a4;
  [v9 stylesheetVendor];
  gss::StyleManagerExtension::initWithName<gss::PropertyID>(a1, a2, a3, v10, a5);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

void sub_1B286D9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<gss::StyleSheet<gss::ScenePropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1},std::allocator<gss::StyleSheet<gss::ScenePropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  std::ostringstream::basic_ostringstream[abi:nn200100](v2);
  v3[0] = &unk_1F2A29988;
  v3[1] = v1;
  v3[3] = v3;
  v2[36] = 0;
  operator new();
}

void sub_1B286DBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v26 - 120);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v26 - 88);
  a9 = *MEMORY[0x1E69E54E8];
  *(&a9 + *(a9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a10 = MEMORY[0x1E69E5548] + 16;
  if (a23 < 0)
  {
    operator delete(__p);
  }

  a10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a11);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a26);
  _Unwind_Resume(a1);
}

uint64_t gss::decodeAttributeEncoding(uint64_t *a1, _DWORD *a2, unsigned __int8 a3, unsigned __int8 a4, void *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 24);
  v9 = a1[1];
  v8 = a1[2];
  v10 = v8 + ((v7 + 1) >> 3);
  v11 = (v7 + 1) & 7;
  v12 = v8 + 1;
  if (v10 < v8 + 1)
  {
    if (*(a1 + 24))
    {
      v13 = v8 + 1;
    }

    else
    {
      v13 = a1[2];
    }

    if (v9 < v13)
    {
      goto LABEL_14;
    }

    if (*(a1 + 24))
    {
      if (v9 >= v12)
      {
        v14 = (((1 << (8 - v7)) - 1) & *(*a1 + v8)) << v7;
        goto LABEL_27;
      }

      goto LABEL_13;
    }

    if (v9 >= v12)
    {
      LOBYTE(v14) = *(*a1 + v8);
      goto LABEL_27;
    }

LABEL_13:
    a1[2] = v10;
    *(a1 + 24) = v11;
LABEL_14:
    v16 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylDecoding.hpp";
      v37 = 1024;
      v38 = 128;
      v39 = 2082;
      v40 = "Could not read attribute's type.";
      _os_log_impl(&dword_1B2754000, v16, OS_LOG_TYPE_ERROR, "Read/write lock %s resulted in non-zero value %d", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylDecoding.hpp", 82);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v17 = MEMORY[0x1B8C61C80](a5, 128);
    v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, " STYL Parse Error Here: ", 24);
    v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, "Could not read attribute's type.", 32);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, "\n", 1);
    return 0;
  }

  if (v7 <= 7)
  {
    v15 = v8 + 1;
  }

  else
  {
    v15 = v8 + 2;
  }

  if (v9 < v15)
  {
    goto LABEL_13;
  }

  v22 = *a1;
  if (*(a1 + 24))
  {
    v23 = *(v22 + v8);
    if (v12 >= v9)
    {
      v24 = 0;
    }

    else
    {
      v24 = *(v22 + v12);
    }

    v14 = ((v24 & (0xFFFF << (8 - v7))) >> (8 - v7)) | ((((1 << (8 - v7)) + 255) & v23) << v7);
    a1[2] = v12;
  }

  else
  {
    LOBYTE(v14) = *(v22 + v8);
  }

LABEL_27:
  a1[2] = v10;
  *(a1 + 24) = v11;
  if ((v14 & 0x80) == 0)
  {
    geo::ibitstream::readUIntBits(v33, a1, a4);
    if (v33[0])
    {
      *a2 = v34 + 0x10000;
      return 1;
    }

    v25 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylDecoding.hpp";
      v37 = 1024;
      v38 = 132;
      v39 = 2082;
      v40 = "Could not read client attribute id.";
      _os_log_impl(&dword_1B2754000, v25, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylDecoding.hpp", 82);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v26 = MEMORY[0x1B8C61C80](a5, 132);
    v27 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, " STYL Parse Error Here: ", 24);
    v28 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v27, "Could not read client attribute id.", 35);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v28, "\n", 1);
    return 0;
  }

  geo::ibitstream::readUIntBits(v33, a1, a3);
  v20 = v33[0];
  if (v33[0])
  {
    *a2 = v34;
  }

  else
  {
    v29 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylDecoding.hpp";
      v37 = 1024;
      v38 = 130;
      v39 = 2082;
      v40 = "Could not read feature attribute id.";
      _os_log_impl(&dword_1B2754000, v29, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylDecoding.hpp", 82);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v30 = MEMORY[0x1B8C61C80](a5, 130);
    v31 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, " STYL Parse Error Here: ", 24);
    v32 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v31, "Could not read feature attribute id.", 36);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, "\n", 1);
  }

  return v20;
}

uint64_t gss::GlobalProperties::loadFromStylChapterBitstream(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v839 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 24);
  v9 = v8 + 1;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = v11 + ((v8 + 1) >> 3);
  v13 = (v8 + 1) & 7;
  v14 = v11 + 1;
  if (v12 < v11 + 1)
  {
    if (*(a2 + 24))
    {
      v15 = v11 + 1;
    }

    else
    {
      v15 = *(a2 + 16);
    }

    if (v10 < v15)
    {
      goto LABEL_14;
    }

    if (*(a2 + 24))
    {
      if (v10 >= v14)
      {
        v16 = *a2;
        v17 = (((1 << (8 - v8)) - 1) & *(*a2 + v11)) << v8;
        goto LABEL_27;
      }

      goto LABEL_13;
    }

    if (v10 >= v14)
    {
      v16 = *a2;
      goto LABEL_24;
    }

LABEL_13:
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
LABEL_14:
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v19 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 20;
      v837 = 2082;
      v838 = "Could not read indication of raster polygon changeover z existing.";
      _os_log_impl(&dword_1B2754000, v19, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v20 = MEMORY[0x1B8C61C80](a4, 20);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " STYL Parse Error Here: ", 24);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Could not read indication of raster polygon changeover z existing.", 66);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "\n", 1);
    return 0;
  }

  if (v8 <= 7)
  {
    v18 = v11 + 1;
  }

  else
  {
    v18 = v11 + 2;
  }

  if (v10 < v18)
  {
    goto LABEL_13;
  }

  v16 = *a2;
  if (!*(a2 + 24))
  {
LABEL_24:
    LOBYTE(v17) = *(v16 + v11);
    goto LABEL_27;
  }

  v23 = *(v16 + v11);
  if (v14 >= v10)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(v16 + v14);
  }

  v17 = ((v24 & (0xFFFF << (8 - v8))) >> (8 - v8)) | ((((1 << (8 - v8)) + 255) & v23) << v8);
  *(a2 + 16) = v14;
LABEL_27:
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  v25 = v9 & 7;
  if ((v17 & 0x80) != 0)
  {
    v26 = v12 + 1;
    if (v10 < v12 + 1)
    {
      *(a2 + 16) = v26;
      *(a2 + 24) = v13;
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v27 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 22;
        v837 = 2082;
        v838 = "Could not read raster polygon changeover z.";
        _os_log_impl(&dword_1B2754000, v27, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v28 = MEMORY[0x1B8C61C80](a4, 22);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " STYL Parse Error Here: ", 24);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Could not read raster polygon changeover z.", 43);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "\n", 1);
      return 0;
    }

    if (v13)
    {
      v31 = *(v16 + v12);
      if (v26 >= v10)
      {
        v32 = 0;
      }

      else
      {
        v32 = *(v16 + v26);
      }

      LODWORD(v12) = (v32 >> (8 - v13)) | ((((1 << (8 - v13)) + 255) & v31) << v25);
      *(a2 + 16) = v26;
    }

    else
    {
      LOBYTE(v12) = *(v16 + v12);
    }

    *(a2 + 16) = v26;
    *(a2 + 24) = v13;
    *(a1 + 36) = vcvts_n_f32_u32(v12, 3uLL);
  }

  else
  {
    v26 = v12;
  }

  v33 = v25 + 1;
  v34 = (v25 + 1) >> 3;
  v35 = v26 + v34;
  v36 = (v25 + 1) & 7;
  v37 = v26 + 1;
  if (v26 + v34 < v26 + 1)
  {
    if (v13)
    {
      v38 = v26 + 1;
    }

    else
    {
      v38 = v26;
    }

    if (v10 < v38)
    {
      goto LABEL_52;
    }

    if (v13)
    {
      if (v10 >= v37)
      {
        v39 = *a2;
        v40 = (((1 << (8 - v13)) - 1) & *(*a2 + v26)) << v25;
        goto LABEL_65;
      }

      goto LABEL_51;
    }

    if (v10 >= v37)
    {
      v39 = *a2;
      goto LABEL_62;
    }

LABEL_51:
    *(a2 + 16) = v35;
    *(a2 + 24) = v36;
LABEL_52:
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v41 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 24;
      v837 = 2082;
      v838 = "Could not read indication of min triangle width existing.";
      _os_log_impl(&dword_1B2754000, v41, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v42 = MEMORY[0x1B8C61C80](a4, 24);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " STYL Parse Error Here: ", 24);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "Could not read indication of min triangle width existing.", 57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "\n", 1);
    return 0;
  }

  if (v10 < v37)
  {
    goto LABEL_51;
  }

  v39 = *a2;
  if (!v13)
  {
LABEL_62:
    LOBYTE(v40) = *(v39 + v26);
    goto LABEL_65;
  }

  v45 = 8 - v13;
  if (v37 >= v10)
  {
    v46 = 0;
  }

  else
  {
    v46 = *(v39 + v37);
  }

  v40 = (v46 >> v45) | ((((1 << v45) + 255) & *(v39 + v26)) << v25);
  *(a2 + 16) = v37;
LABEL_65:
  *(a2 + 16) = v35;
  *(a2 + 24) = v36;
  if ((v40 & 0x80) != 0)
  {
    *buf = 0;
    v47 = v35 + 5;
    if (!v36)
    {
      v47 = v35 + 4;
    }

    if (v10 < v47)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v48 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 26;
        v837 = 2082;
        v838 = "Could not read min line triangle width.";
        _os_log_impl(&dword_1B2754000, v48, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v49 = MEMORY[0x1B8C61C80](a4, 26);
      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " STYL Parse Error Here: ", 24);
      v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Could not read min line triangle width.", 39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "\n", 1);
      return 0;
    }

    if (v36)
    {
      v52 = 0;
      v53 = v26 + v34 + 1;
      do
      {
        v35 = v53;
        if (v53 >= v10)
        {
          v54 = 0;
        }

        else
        {
          v54 = *(v39 + v53);
        }

        v55 = (((1 << (8 - v36)) + 255) & *(v39 + v35 - 1)) << (v33 & 7);
        *(a2 + 16) = v35;
        buf[v52++] = (v54 >> (8 - v36)) | v55;
        v53 = v35 + 1;
      }

      while (v52 != 4);
      v56 = *buf;
    }

    else
    {
      v56 = *(v39 + v35);
      *(a2 + 16) = v35 + 4;
      v35 += 4;
    }

    *(a1 + 40) = v56;
  }

  v57 = v33 & 7;
  v58 = v35 + (((v33 & 7u) + 1) >> 3);
  v59 = ((v33 & 7) + 1) & 7;
  v60 = v35 + 1;
  if (v58 < v35 + 1)
  {
    if (v36)
    {
      v61 = v35 + 1;
    }

    else
    {
      v61 = v35;
    }

    if (v10 < v61)
    {
      goto LABEL_93;
    }

    if (v36)
    {
      if (v10 >= v60)
      {
        v62 = (((1 << (8 - v36)) - 1) & *(*a2 + v35)) << v57;
        goto LABEL_107;
      }

      goto LABEL_92;
    }

    if (v10 >= v60)
    {
      LOBYTE(v62) = *(*a2 + v35);
      goto LABEL_107;
    }

LABEL_92:
    *(a2 + 16) = v58;
    *(a2 + 24) = v59;
LABEL_93:
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v63 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 28;
      v837 = 2082;
      v838 = "Could not read indication of building changeover z existing.";
      _os_log_impl(&dword_1B2754000, v63, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v64 = MEMORY[0x1B8C61C80](a4, 28);
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " STYL Parse Error Here: ", 24);
    v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "Could not read indication of building changeover z existing.", 60);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "\n", 1);
    return 0;
  }

  if (v10 < v60)
  {
    goto LABEL_92;
  }

  v68 = *a2;
  if (v36)
  {
    v69 = 8 - v36;
    v70 = *(v68 + v35);
    if (v60 >= v10)
    {
      v71 = 0;
    }

    else
    {
      v71 = *(v68 + v60);
    }

    v62 = (v71 >> v69) | ((((1 << v69) + 255) & v70) << v57);
    *(a2 + 16) = v60;
  }

  else
  {
    LOBYTE(v62) = *(v68 + v35);
  }

LABEL_107:
  *(a2 + 16) = v58;
  *(a2 + 24) = v59;
  if ((v62 & 0x80) != 0)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v90 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 30;
        v837 = 2082;
        v838 = "Could not read building changeover z.";
        _os_log_impl(&dword_1B2754000, v90, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v91 = MEMORY[0x1B8C61C80](a4, 30);
      v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, " STYL Parse Error Here: ", 24);
      v93 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, "Could not read building changeover z.", 37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, "\n", 1);
      return 0;
    }

    *(a1 + 44) = v834 * 0.125;
    *a1 = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v86 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 33;
      v837 = 2082;
      v838 = "Could not read indication of min traffic type (unknown) z existing.";
      _os_log_impl(&dword_1B2754000, v86, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v87 = MEMORY[0x1B8C61C80](a4, 33);
    v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, " STYL Parse Error Here: ", 24);
    v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "Could not read indication of min traffic type (unknown) z existing.", 67);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v98 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 35;
        v837 = 2082;
        v838 = "Could not read min traffic type (unknown) z.";
        _os_log_impl(&dword_1B2754000, v98, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v99 = MEMORY[0x1B8C61C80](a4, 35);
      v100 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v99, " STYL Parse Error Here: ", 24);
      v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, "Could not read min traffic type (unknown) z.", 44);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "\n", 1);
      return 0;
    }

    *(a1 + 48) = v834 * 0.125;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v94 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 37;
      v837 = 2082;
      v838 = "Could not read indication of min traffic type (accident) z existing.";
      _os_log_impl(&dword_1B2754000, v94, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v95 = MEMORY[0x1B8C61C80](a4, 37);
    v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, " STYL Parse Error Here: ", 24);
    v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, "Could not read indication of min traffic type (accident) z existing.", 68);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v106 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 39;
        v837 = 2082;
        v838 = "Could not read min traffic type (accident) z.";
        _os_log_impl(&dword_1B2754000, v106, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v107 = MEMORY[0x1B8C61C80](a4, 39);
      v108 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v107, " STYL Parse Error Here: ", 24);
      v109 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v108, "Could not read min traffic type (accident) z.", 45);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v109, "\n", 1);
      return 0;
    }

    *(a1 + 52) = v834 * 0.125;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v102 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 41;
      v837 = 2082;
      v838 = "Could not read indication of min traffic type (construction) z existing.";
      _os_log_impl(&dword_1B2754000, v102, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v103 = MEMORY[0x1B8C61C80](a4, 41);
    v104 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, " STYL Parse Error Here: ", 24);
    v105 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "Could not read indication of min traffic type (construction) z existing.", 72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v114 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 43;
        v837 = 2082;
        v838 = "Could not read min traffic type (construction) z.";
        _os_log_impl(&dword_1B2754000, v114, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v115 = MEMORY[0x1B8C61C80](a4, 43);
      v116 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v115, " STYL Parse Error Here: ", 24);
      v117 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v116, "Could not read min traffic type (construction) z.", 49);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v117, "\n", 1);
      return 0;
    }

    *(a1 + 56) = v834 * 0.125;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v110 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 45;
      v837 = 2082;
      v838 = "Could not read indication of min traffic type (road closure) z existing.";
      _os_log_impl(&dword_1B2754000, v110, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v111 = MEMORY[0x1B8C61C80](a4, 45);
    v112 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, " STYL Parse Error Here: ", 24);
    v113 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v112, "Could not read indication of min traffic type (road closure) z existing.", 72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v113, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v122 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 47;
        v837 = 2082;
        v838 = "Could not read min traffic type (road closure) z.";
        _os_log_impl(&dword_1B2754000, v122, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v123 = MEMORY[0x1B8C61C80](a4, 47);
      v124 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v123, " STYL Parse Error Here: ", 24);
      v125 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v124, "Could not read min traffic type (road closure) z.", 49);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v125, "\n", 1);
      return 0;
    }

    *(a1 + 60) = v834 * 0.125;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v118 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 49;
      v837 = 2082;
      v838 = "Could not read indication of min traffic type (event) z existing.";
      _os_log_impl(&dword_1B2754000, v118, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v119 = MEMORY[0x1B8C61C80](a4, 49);
    v120 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v119, " STYL Parse Error Here: ", 24);
    v121 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v120, "Could not read indication of min traffic type (event) z existing.", 65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v121, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v130 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 51;
        v837 = 2082;
        v838 = "Could not read min traffic type (event) z.";
        _os_log_impl(&dword_1B2754000, v130, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v131 = MEMORY[0x1B8C61C80](a4, 51);
      v132 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v131, " STYL Parse Error Here: ", 24);
      v133 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v132, "Could not read min traffic type (event) z.", 42);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v133, "\n", 1);
      return 0;
    }

    *(a1 + 64) = v834 * 0.125;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v126 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 53;
      v837 = 2082;
      v838 = "Could not read indication of min traffic type (hazard) z existing.";
      _os_log_impl(&dword_1B2754000, v126, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v127 = MEMORY[0x1B8C61C80](a4, 53);
    v128 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v127, " STYL Parse Error Here: ", 24);
    v129 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v128, "Could not read indication of min traffic type (hazard) z existing.", 66);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v129, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v138 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 55;
        v837 = 2082;
        v838 = "Could not read min traffic type (hazard) z.";
        _os_log_impl(&dword_1B2754000, v138, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v139 = MEMORY[0x1B8C61C80](a4, 55);
      v140 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v139, " STYL Parse Error Here: ", 24);
      v141 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v140, "Could not read min traffic type (hazard) z.", 43);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v141, "\n", 1);
      return 0;
    }

    *(a1 + 68) = v834 * 0.125;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v134 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 57;
      v837 = 2082;
      v838 = "Could not read indication of min traffic type (lane closure) z existing.";
      _os_log_impl(&dword_1B2754000, v134, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v135 = MEMORY[0x1B8C61C80](a4, 57);
    v136 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v135, " STYL Parse Error Here: ", 24);
    v137 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v136, "Could not read indication of min traffic type (lane closure) z existing.", 72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v137, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v146 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 59;
        v837 = 2082;
        v838 = "Could not read min traffic type (lane closure) z.";
        _os_log_impl(&dword_1B2754000, v146, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v147 = MEMORY[0x1B8C61C80](a4, 59);
      v148 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v147, " STYL Parse Error Here: ", 24);
      v149 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v148, "Could not read min traffic type (lane closure) z.", 49);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v149, "\n", 1);
      return 0;
    }

    *(a1 + 72) = v834 * 0.125;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v142 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 61;
      v837 = 2082;
      v838 = "Could not read indication of min traffic type (ramp closure) z existing.";
      _os_log_impl(&dword_1B2754000, v142, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v143 = MEMORY[0x1B8C61C80](a4, 61);
    v144 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v143, " STYL Parse Error Here: ", 24);
    v145 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v144, "Could not read indication of min traffic type (ramp closure) z existing.", 72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v145, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v154 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 63;
        v837 = 2082;
        v838 = "Could not read min traffic type (ramp closure) z.";
        _os_log_impl(&dword_1B2754000, v154, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v155 = MEMORY[0x1B8C61C80](a4, 63);
      v156 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v155, " STYL Parse Error Here: ", 24);
      v157 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v156, "Could not read min traffic type (ramp closure) z.", 49);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v157, "\n", 1);
      return 0;
    }

    *(a1 + 76) = v834 * 0.125;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v150 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 65;
      v837 = 2082;
      v838 = "Could not read indication of realistic night brightness existing.";
      _os_log_impl(&dword_1B2754000, v150, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v151 = MEMORY[0x1B8C61C80](a4, 65);
    v152 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v151, " STYL Parse Error Here: ", 24);
    v153 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v152, "Could not read indication of realistic night brightness existing.", 65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v153, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 0xAu);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v162 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 67;
        v837 = 2082;
        v838 = "Could not read realistic night brightness.";
        _os_log_impl(&dword_1B2754000, v162, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v163 = MEMORY[0x1B8C61C80](a4, 67);
      v164 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v163, " STYL Parse Error Here: ", 24);
      v165 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v164, "Could not read realistic night brightness.", 42);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v165, "\n", 1);
      return 0;
    }

    *(a1 + 84) = v834 * 0.00097752;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v158 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 69;
      v837 = 2082;
      v838 = "Could not read indication of shield night brightness existing.";
      _os_log_impl(&dword_1B2754000, v158, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v159 = MEMORY[0x1B8C61C80](a4, 69);
    v160 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v159, " STYL Parse Error Here: ", 24);
    v161 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v160, "Could not read indication of shield night brightness existing.", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v161, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 0xAu);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v170 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 71;
        v837 = 2082;
        v838 = "Could not read shield night brightness.";
        _os_log_impl(&dword_1B2754000, v170, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v171 = MEMORY[0x1B8C61C80](a4, 71);
      v172 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v171, " STYL Parse Error Here: ", 24);
      v173 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v172, "Could not read shield night brightness.", 39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v173, "\n", 1);
      return 0;
    }

    *(a1 + 88) = v834 * 0.00097752;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v166 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 73;
      v837 = 2082;
      v838 = "Could not read indication of realistic shield night brightness existing.";
      _os_log_impl(&dword_1B2754000, v166, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v167 = MEMORY[0x1B8C61C80](a4, 73);
    v168 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v167, " STYL Parse Error Here: ", 24);
    v169 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v168, "Could not read indication of realistic shield night brightness existing.", 72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v169, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 0xAu);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v178 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 75;
        v837 = 2082;
        v838 = "Could not read realistic shieldnight brightness.";
        _os_log_impl(&dword_1B2754000, v178, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v179 = MEMORY[0x1B8C61C80](a4, 75);
      v180 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v179, " STYL Parse Error Here: ", 24);
      v181 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v180, "Could not read realistic shieldnight brightness.", 48);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v181, "\n", 1);
      return 0;
    }

    *(a1 + 92) = v834 * 0.00097752;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v174 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 77;
      v837 = 2082;
      v838 = "Could not read indication of background rasters zoom range existing.";
      _os_log_impl(&dword_1B2754000, v174, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v175 = MEMORY[0x1B8C61C80](a4, 77);
    v176 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v175, " STYL Parse Error Here: ", 24);
    v177 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v176, "Could not read indication of background rasters zoom range existing.", 68);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v177, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v182 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 79;
        v837 = 2082;
        v838 = "Could not read background rasters min zoom.";
        _os_log_impl(&dword_1B2754000, v182, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v183 = MEMORY[0x1B8C61C80](a4, 79);
      v184 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v183, " STYL Parse Error Here: ", 24);
      v185 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v184, "Could not read background rasters min zoom.", 43);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v185, "\n", 1);
      return 0;
    }

    *(a1 + 96) = v834 * 0.125;
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v190 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 80;
        v837 = 2082;
        v838 = "Could not read background rasters max zoom.";
        _os_log_impl(&dword_1B2754000, v190, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v191 = MEMORY[0x1B8C61C80](a4, 80);
      v192 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v191, " STYL Parse Error Here: ", 24);
      v193 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v192, "Could not read background rasters max zoom.", 43);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v193, "\n", 1);
      return 0;
    }

    *(a1 + 100) = v834 * 0.125;
    *(a1 + 1) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v186 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 83;
      v837 = 2082;
      v838 = "Could not read indication of standard rasters zoom range existing.";
      _os_log_impl(&dword_1B2754000, v186, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v187 = MEMORY[0x1B8C61C80](a4, 83);
    v188 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v187, " STYL Parse Error Here: ", 24);
    v189 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v188, "Could not read indication of standard rasters zoom range existing.", 66);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v189, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v194 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 85;
        v837 = 2082;
        v838 = "Could not read standard rasters min zoom.";
        _os_log_impl(&dword_1B2754000, v194, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v195 = MEMORY[0x1B8C61C80](a4, 85);
      v196 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v195, " STYL Parse Error Here: ", 24);
      v197 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v196, "Could not read standard rasters min zoom.", 41);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v197, "\n", 1);
      return 0;
    }

    *(a1 + 104) = v834 * 0.125;
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v202 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 86;
        v837 = 2082;
        v838 = "Could not read standard rasters max zoom.";
        _os_log_impl(&dword_1B2754000, v202, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v203 = MEMORY[0x1B8C61C80](a4, 86);
      v204 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v203, " STYL Parse Error Here: ", 24);
      v205 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v204, "Could not read standard rasters max zoom.", 41);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v205, "\n", 1);
      return 0;
    }

    *(a1 + 108) = v834 * 0.125;
    *(a1 + 2) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v198 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 89;
      v837 = 2082;
      v838 = "Could not read indication of satellite rasters zoom range existing.";
      _os_log_impl(&dword_1B2754000, v198, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v199 = MEMORY[0x1B8C61C80](a4, 89);
    v200 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v199, " STYL Parse Error Here: ", 24);
    v201 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v200, "Could not read indication of satellite rasters zoom range existing.", 67);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v201, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v206 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 91;
        v837 = 2082;
        v838 = "Could not read satellite rasters min zoom.";
        _os_log_impl(&dword_1B2754000, v206, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v207 = MEMORY[0x1B8C61C80](a4, 91);
      v208 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v207, " STYL Parse Error Here: ", 24);
      v209 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v208, "Could not read satellite rasters min zoom.", 42);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v209, "\n", 1);
      return 0;
    }

    *(a1 + 112) = v834 * 0.125;
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v214 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 92;
        v837 = 2082;
        v838 = "Could not read satellite rasters max zoom.";
        _os_log_impl(&dword_1B2754000, v214, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v215 = MEMORY[0x1B8C61C80](a4, 92);
      v216 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v215, " STYL Parse Error Here: ", 24);
      v217 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v216, "Could not read satellite rasters max zoom.", 42);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v217, "\n", 1);
      return 0;
    }

    *(a1 + 116) = v834 * 0.125;
    *(a1 + 3) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v210 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 95;
      v837 = 2082;
      v838 = "Could not read indication of hybrid rasters zoom range existing.";
      _os_log_impl(&dword_1B2754000, v210, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v211 = MEMORY[0x1B8C61C80](a4, 95);
    v212 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v211, " STYL Parse Error Here: ", 24);
    v213 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v212, "Could not read indication of hybrid rasters zoom range existing.", 64);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v218 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 97;
        v837 = 2082;
        v838 = "Could not read hybrid rasters min zoom.";
        _os_log_impl(&dword_1B2754000, v218, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v219 = MEMORY[0x1B8C61C80](a4, 97);
      v220 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v219, " STYL Parse Error Here: ", 24);
      v221 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v220, "Could not read hybrid rasters min zoom.", 39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v221, "\n", 1);
      return 0;
    }

    *(a1 + 120) = v834 * 0.125;
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v226 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 98;
        v837 = 2082;
        v838 = "Could not read hybrid rasters max zoom.";
        _os_log_impl(&dword_1B2754000, v226, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v227 = MEMORY[0x1B8C61C80](a4, 98);
      v228 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v227, " STYL Parse Error Here: ", 24);
      v229 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v228, "Could not read hybrid rasters max zoom.", 39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v229, "\n", 1);
      return 0;
    }

    *(a1 + 124) = v834 * 0.125;
    *(a1 + 4) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v222 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 101;
      v837 = 2082;
      v838 = "Could not read indication of ground cover zoom range existing.";
      _os_log_impl(&dword_1B2754000, v222, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v223 = MEMORY[0x1B8C61C80](a4, 101);
    v224 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v223, " STYL Parse Error Here: ", 24);
    v225 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v224, "Could not read indication of ground cover zoom range existing.", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v225, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v230 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 103;
        v837 = 2082;
        v838 = "Could not read ground cover min zoom.";
        _os_log_impl(&dword_1B2754000, v230, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v231 = MEMORY[0x1B8C61C80](a4, 103);
      v232 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v231, " STYL Parse Error Here: ", 24);
      v233 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v232, "Could not read ground cover min zoom.", 37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v233, "\n", 1);
      return 0;
    }

    *(a1 + 128) = v834 * 0.125;
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v238 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 104;
        v837 = 2082;
        v838 = "Could not read ground cover max zoom.";
        _os_log_impl(&dword_1B2754000, v238, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v239 = MEMORY[0x1B8C61C80](a4, 104);
      v240 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v239, " STYL Parse Error Here: ", 24);
      v241 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v240, "Could not read ground cover max zoom.", 37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v241, "\n", 1);
      return 0;
    }

    *(a1 + 132) = v834 * 0.125;
    *(a1 + 5) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v234 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 107;
      v837 = 2082;
      v838 = "Could not read indication of raster traffic zoom range existing.";
      _os_log_impl(&dword_1B2754000, v234, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v235 = MEMORY[0x1B8C61C80](a4, 107);
    v236 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v235, " STYL Parse Error Here: ", 24);
    v237 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v236, "Could not read indication of raster traffic zoom range existing.", 64);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v237, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v242 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 109;
        v837 = 2082;
        v838 = "Could not read raster traffic min zoom.";
        _os_log_impl(&dword_1B2754000, v242, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v243 = MEMORY[0x1B8C61C80](a4, 109);
      v244 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v243, " STYL Parse Error Here: ", 24);
      v245 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v244, "Could not read raster traffic min zoom.", 39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v245, "\n", 1);
      return 0;
    }

    *(a1 + 136) = v834 * 0.125;
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v250 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 110;
        v837 = 2082;
        v838 = "Could not read raster traffic max zoom.";
        _os_log_impl(&dword_1B2754000, v250, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v251 = MEMORY[0x1B8C61C80](a4, 110);
      v252 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v251, " STYL Parse Error Here: ", 24);
      v253 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v252, "Could not read raster traffic max zoom.", 39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v253, "\n", 1);
      return 0;
    }

    *(a1 + 140) = v834 * 0.125;
    *(a1 + 6) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v246 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 113;
      v837 = 2082;
      v838 = "Could not read indication of vector polygons zoom range existing.";
      _os_log_impl(&dword_1B2754000, v246, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v247 = MEMORY[0x1B8C61C80](a4, 113);
    v248 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v247, " STYL Parse Error Here: ", 24);
    v249 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v248, "Could not read indication of vector polygons zoom range existing.", 65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v249, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v254 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 115;
        v837 = 2082;
        v838 = "Could not read vector polygons min zoom.";
        _os_log_impl(&dword_1B2754000, v254, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v255 = MEMORY[0x1B8C61C80](a4, 115);
      v256 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v255, " STYL Parse Error Here: ", 24);
      v257 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v256, "Could not read vector polygons min zoom.", 40);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v257, "\n", 1);
      return 0;
    }

    *(a1 + 144) = v834 * 0.125;
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v262 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 116;
        v837 = 2082;
        v838 = "Could not read vector polygons max zoom.";
        _os_log_impl(&dword_1B2754000, v262, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v263 = MEMORY[0x1B8C61C80](a4, 116);
      v264 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v263, " STYL Parse Error Here: ", 24);
      v265 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v264, "Could not read vector polygons max zoom.", 40);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v265, "\n", 1);
      return 0;
    }

    *(a1 + 148) = v834 * 0.125;
    *(a1 + 7) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v258 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 119;
      v837 = 2082;
      v838 = "Could not read indication of vector roads zoom range existing.";
      _os_log_impl(&dword_1B2754000, v258, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v259 = MEMORY[0x1B8C61C80](a4, 119);
    v260 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v259, " STYL Parse Error Here: ", 24);
    v261 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v260, "Could not read indication of vector roads zoom range existing.", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v261, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v266 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 121;
        v837 = 2082;
        v838 = "Could not read vector roads min zoom.";
        _os_log_impl(&dword_1B2754000, v266, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v267 = MEMORY[0x1B8C61C80](a4, 121);
      v268 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v267, " STYL Parse Error Here: ", 24);
      v269 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v268, "Could not read vector roads min zoom.", 37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v269, "\n", 1);
      return 0;
    }

    *(a1 + 152) = v834 * 0.125;
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v274 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 122;
        v837 = 2082;
        v838 = "Could not read vector roads max zoom.";
        _os_log_impl(&dword_1B2754000, v274, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v275 = MEMORY[0x1B8C61C80](a4, 122);
      v276 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v275, " STYL Parse Error Here: ", 24);
      v277 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v276, "Could not read vector roads max zoom.", 37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v277, "\n", 1);
      return 0;
    }

    *(a1 + 156) = v834 * 0.125;
    *(a1 + 8) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v270 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 125;
      v837 = 2082;
      v838 = "Could not read indication of vector land cover zoom range existing.";
      _os_log_impl(&dword_1B2754000, v270, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v271 = MEMORY[0x1B8C61C80](a4, 125);
    v272 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v271, " STYL Parse Error Here: ", 24);
    v273 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v272, "Could not read indication of vector land cover zoom range existing.", 67);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v273, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v278 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 127;
        v837 = 2082;
        v838 = "Could not read vector land cover min zoom.";
        _os_log_impl(&dword_1B2754000, v278, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v279 = MEMORY[0x1B8C61C80](a4, 127);
      v280 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v279, " STYL Parse Error Here: ", 24);
      v281 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v280, "Could not read vector land cover min zoom.", 42);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v281, "\n", 1);
      return 0;
    }

    *(a1 + 160) = v834 * 0.125;
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v286 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 128;
        v837 = 2082;
        v838 = "Could not read vector land cover max zoom.";
        _os_log_impl(&dword_1B2754000, v286, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v287 = MEMORY[0x1B8C61C80](a4, 128);
      v288 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v287, " STYL Parse Error Here: ", 24);
      v289 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v288, "Could not read vector land cover max zoom.", 42);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v289, "\n", 1);
      return 0;
    }

    *(a1 + 164) = v834 * 0.125;
    *(a1 + 9) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v282 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 131;
      v837 = 2082;
      v838 = "Could not read indication of vector buildings zoom range existing.";
      _os_log_impl(&dword_1B2754000, v282, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v283 = MEMORY[0x1B8C61C80](a4, 131);
    v284 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v283, " STYL Parse Error Here: ", 24);
    v285 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v284, "Could not read indication of vector buildings zoom range existing.", 66);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v285, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v290 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 133;
        v837 = 2082;
        v838 = "Could not read vector buildings min zoom.";
        _os_log_impl(&dword_1B2754000, v290, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v291 = MEMORY[0x1B8C61C80](a4, 133);
      v292 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v291, " STYL Parse Error Here: ", 24);
      v293 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v292, "Could not read vector buildings min zoom.", 41);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v293, "\n", 1);
      return 0;
    }

    *(a1 + 168) = v834 * 0.125;
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v298 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 134;
        v837 = 2082;
        v838 = "Could not read vector buildings max zoom.";
        _os_log_impl(&dword_1B2754000, v298, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v299 = MEMORY[0x1B8C61C80](a4, 134);
      v300 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v299, " STYL Parse Error Here: ", 24);
      v301 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v300, "Could not read vector buildings max zoom.", 41);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v301, "\n", 1);
      return 0;
    }

    *(a1 + 172) = v834 * 0.125;
    *(a1 + 10) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v294 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 137;
      v837 = 2082;
      v838 = "Could not read indication of vector PoIs zoom range existing.";
      _os_log_impl(&dword_1B2754000, v294, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v295 = MEMORY[0x1B8C61C80](a4, 137);
    v296 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v295, " STYL Parse Error Here: ", 24);
    v297 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v296, "Could not read indication of vector PoIs zoom range existing.", 61);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v297, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v302 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 139;
        v837 = 2082;
        v838 = "Could not read vector PoIs min zoom.";
        _os_log_impl(&dword_1B2754000, v302, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v303 = MEMORY[0x1B8C61C80](a4, 139);
      v304 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v303, " STYL Parse Error Here: ", 24);
      v305 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v304, "Could not read vector PoIs min zoom.", 36);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v305, "\n", 1);
      return 0;
    }

    *(a1 + 176) = v834 * 0.125;
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v310 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 140;
        v837 = 2082;
        v838 = "Could not read vector PoIs max zoom.";
        _os_log_impl(&dword_1B2754000, v310, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v311 = MEMORY[0x1B8C61C80](a4, 140);
      v312 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v311, " STYL Parse Error Here: ", 24);
      v313 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v312, "Could not read vector PoIs max zoom.", 36);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v313, "\n", 1);
      return 0;
    }

    *(a1 + 180) = v834 * 0.125;
    *(a1 + 11) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v306 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 143;
      v837 = 2082;
      v838 = "Could not read indication of vector traffic zoom range existing.";
      _os_log_impl(&dword_1B2754000, v306, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v307 = MEMORY[0x1B8C61C80](a4, 143);
    v308 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v307, " STYL Parse Error Here: ", 24);
    v309 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v308, "Could not read indication of vector traffic zoom range existing.", 64);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v309, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v314 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 145;
        v837 = 2082;
        v838 = "Could not read vector traffic min zoom.";
        _os_log_impl(&dword_1B2754000, v314, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v315 = MEMORY[0x1B8C61C80](a4, 145);
      v316 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v315, " STYL Parse Error Here: ", 24);
      v317 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v316, "Could not read vector traffic min zoom.", 39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v317, "\n", 1);
      return 0;
    }

    *(a1 + 184) = v834 * 0.125;
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v322 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 146;
        v837 = 2082;
        v838 = "Could not read vector traffic max zoom.";
        _os_log_impl(&dword_1B2754000, v322, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v323 = MEMORY[0x1B8C61C80](a4, 146);
      v324 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v323, " STYL Parse Error Here: ", 24);
      v325 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v324, "Could not read vector traffic max zoom.", 39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v325, "\n", 1);
      return 0;
    }

    *(a1 + 188) = v834 * 0.125;
    *(a1 + 12) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v318 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 149;
      v837 = 2082;
      v838 = "Could not read indication of tile limit satellite scale existing.";
      _os_log_impl(&dword_1B2754000, v318, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v319 = MEMORY[0x1B8C61C80](a4, 149);
    v320 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v319, " STYL Parse Error Here: ", 24);
    v321 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v320, "Could not read indication of tile limit satellite scale existing.", 65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v321, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v72 = *(a2 + 8);
    v73 = *(a2 + 16);
    v74 = *(a2 + 24);
    v75 = v73 + 5;
    if (!v74)
    {
      v75 = v73 + 4;
    }

    if (v72 < v75)
    {
      goto LABEL_226;
    }

    v76 = *a2;
    if (*(a2 + 24))
    {
      v77 = 0;
      v78 = v73 + 1;
      v79 = (v76 + v78);
      do
      {
        if (v78 >= v72)
        {
          v80 = 0;
        }

        else
        {
          v80 = *v79;
        }

        v81 = ((v80 & (0xFFFF << (8 - v74))) >> (8 - v74)) | ((((1 << (8 - v74)) + 255) & *(v79 - 1)) << v74);
        *(a2 + 16) = v78;
        buf[v77++] = v81;
        ++v79;
        ++v78;
      }

      while (v77 != 4);
      if (v72 < v75)
      {
LABEL_226:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v82 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 151;
          v837 = 2082;
          v838 = "Could not read tile limit satellite scale.";
          _os_log_impl(&dword_1B2754000, v82, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v83 = MEMORY[0x1B8C61C80](a4, 151);
        v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, " STYL Parse Error Here: ", 24);
        v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "Could not read tile limit satellite scale.", 42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "\n", 1);
        return 0;
      }

      v326 = *buf;
    }

    else
    {
      v326 = *(v76 + v73);
      *(a2 + 16) = v73 + 4;
    }

    *(a1 + 200) = v326;
    *(a1 + 14) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v341 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 154;
      v837 = 2082;
      v838 = "Could not read indication of global LoD scale existing.";
      _os_log_impl(&dword_1B2754000, v341, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v342 = MEMORY[0x1B8C61C80](a4, 154);
    v343 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v342, " STYL Parse Error Here: ", 24);
    v344 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v343, "Could not read indication of global LoD scale existing.", 55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v344, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v327 = *(a2 + 8);
    v328 = *(a2 + 16);
    v329 = *(a2 + 24);
    v330 = v328 + 5;
    if (!v329)
    {
      v330 = v328 + 4;
    }

    if (v327 < v330)
    {
      goto LABEL_546;
    }

    v331 = *a2;
    if (*(a2 + 24))
    {
      v332 = 0;
      v333 = v328 + 1;
      v334 = (v331 + v333);
      do
      {
        if (v333 >= v327)
        {
          v335 = 0;
        }

        else
        {
          v335 = *v334;
        }

        v336 = ((v335 & (0xFFFF << (8 - v329))) >> (8 - v329)) | ((((1 << (8 - v329)) + 255) & *(v334 - 1)) << v329);
        *(a2 + 16) = v333;
        buf[v332++] = v336;
        ++v334;
        ++v333;
      }

      while (v332 != 4);
      if (v327 < v330)
      {
LABEL_546:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v337 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 156;
          v837 = 2082;
          v838 = "Could not read global LoD scale.";
          _os_log_impl(&dword_1B2754000, v337, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v338 = MEMORY[0x1B8C61C80](a4, 156);
        v339 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v338, " STYL Parse Error Here: ", 24);
        v340 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v339, "Could not read global LoD scale.", 32);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v340, "\n", 1);
        return 0;
      }

      v345 = *buf;
    }

    else
    {
      v345 = *(v331 + v328);
      *(a2 + 16) = v328 + 4;
    }

    *(a1 + 204) = v345;
    *(a1 + 15) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v360 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 159;
      v837 = 2082;
      v838 = "Could not read indication of LoD offset existing.";
      _os_log_impl(&dword_1B2754000, v360, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v361 = MEMORY[0x1B8C61C80](a4, 159);
    v362 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v361, " STYL Parse Error Here: ", 24);
    v363 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v362, "Could not read indication of LoD offset existing.", 49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v363, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v346 = *(a2 + 8);
    v347 = *(a2 + 16);
    v348 = *(a2 + 24);
    v349 = v347 + 5;
    if (!v348)
    {
      v349 = v347 + 4;
    }

    if (v346 < v349)
    {
      goto LABEL_571;
    }

    v350 = *a2;
    if (*(a2 + 24))
    {
      v351 = 0;
      v352 = v347 + 1;
      v353 = (v350 + v352);
      do
      {
        if (v352 >= v346)
        {
          v354 = 0;
        }

        else
        {
          v354 = *v353;
        }

        v355 = ((v354 & (0xFFFF << (8 - v348))) >> (8 - v348)) | ((((1 << (8 - v348)) + 255) & *(v353 - 1)) << v348);
        *(a2 + 16) = v352;
        buf[v351++] = v355;
        ++v353;
        ++v352;
      }

      while (v351 != 4);
      if (v346 < v349)
      {
LABEL_571:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v356 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 161;
          v837 = 2082;
          v838 = "Could not read LoD offset.";
          _os_log_impl(&dword_1B2754000, v356, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v357 = MEMORY[0x1B8C61C80](a4, 161);
        v358 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v357, " STYL Parse Error Here: ", 24);
        v359 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v358, "Could not read LoD offset.", 26);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v359, "\n", 1);
        return 0;
      }

      v364 = *buf;
    }

    else
    {
      v364 = *(v350 + v347);
      *(a2 + 16) = v347 + 4;
    }

    *(a1 + 208) = v364;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v375 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 163;
      v837 = 2082;
      v838 = "Could not read indication of label icon scale existing.";
      _os_log_impl(&dword_1B2754000, v375, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v376 = MEMORY[0x1B8C61C80](a4, 163);
    v377 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v376, " STYL Parse Error Here: ", 24);
    v378 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v377, "Could not read indication of label icon scale existing.", 55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v378, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v365 = *(a2 + 8);
    v366 = *(a2 + 16);
    v367 = *(a2 + 24);
    v368 = v366 + 5;
    if (!v367)
    {
      v368 = v366 + 4;
    }

    if (v365 < v368)
    {
      goto LABEL_596;
    }

    v369 = *a2;
    if (*(a2 + 24))
    {
      v370 = 0;
      v371 = v366 + 1;
      v372 = (v369 + v371);
      do
      {
        if (v371 >= v365)
        {
          v373 = 0;
        }

        else
        {
          v373 = *v372;
        }

        v374 = ((v373 & (0xFFFF << (8 - v367))) >> (8 - v367)) | ((((1 << (8 - v367)) + 255) & *(v372 - 1)) << v367);
        *(a2 + 16) = v371;
        buf[v370++] = v374;
        ++v372;
        ++v371;
      }

      while (v370 != 4);
      if (v365 < v368)
      {
LABEL_596:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v390 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 165;
          v837 = 2082;
          v838 = "Could not read label icon scale.";
          _os_log_impl(&dword_1B2754000, v390, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v391 = MEMORY[0x1B8C61C80](a4, 165);
        v392 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v391, " STYL Parse Error Here: ", 24);
        v393 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v392, "Could not read label icon scale.", 32);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v393, "\n", 1);
        return 0;
      }

      v379 = *buf;
    }

    else
    {
      v379 = *(v369 + v366);
      *(a2 + 16) = v366 + 4;
    }

    *(a1 + 216) = v379;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v409 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 167;
      v837 = 2082;
      v838 = "Could not read indication of nav label road sign height existing.";
      _os_log_impl(&dword_1B2754000, v409, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v410 = MEMORY[0x1B8C61C80](a4, 167);
    v411 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v410, " STYL Parse Error Here: ", 24);
    v412 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v411, "Could not read indication of nav label road sign height existing.", 65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v412, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v380 = *(a2 + 8);
    v381 = *(a2 + 16);
    v382 = *(a2 + 24);
    v383 = v381 + 5;
    if (!v382)
    {
      v383 = v381 + 4;
    }

    if (v380 < v383)
    {
      goto LABEL_618;
    }

    v384 = *a2;
    if (*(a2 + 24))
    {
      v385 = 0;
      v386 = v381 + 1;
      v387 = (v384 + v386);
      do
      {
        if (v386 >= v380)
        {
          v388 = 0;
        }

        else
        {
          v388 = *v387;
        }

        v389 = ((v388 & (0xFFFF << (8 - v382))) >> (8 - v382)) | ((((1 << (8 - v382)) + 255) & *(v387 - 1)) << v382);
        *(a2 + 16) = v386;
        buf[v385++] = v389;
        ++v387;
        ++v386;
      }

      while (v385 != 4);
      if (v380 < v383)
      {
LABEL_618:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v405 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 169;
          v837 = 2082;
          v838 = "Could not read nav label road sign height.";
          _os_log_impl(&dword_1B2754000, v405, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v406 = MEMORY[0x1B8C61C80](a4, 169);
        v407 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v406, " STYL Parse Error Here: ", 24);
        v408 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v407, "Could not read nav label road sign height.", 42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v408, "\n", 1);
        return 0;
      }

      v394 = *buf;
    }

    else
    {
      v394 = *(v384 + v381);
      *(a2 + 16) = v381 + 4;
    }

    *(a1 + 220) = v394;
    *(a1 + 16) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v428 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 172;
      v837 = 2082;
      v838 = "Could not read indication of nav label road sign height (small) existing.";
      _os_log_impl(&dword_1B2754000, v428, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v429 = MEMORY[0x1B8C61C80](a4, 172);
    v430 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v429, " STYL Parse Error Here: ", 24);
    v431 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v430, "Could not read indication of nav label road sign height (small) existing.", 73);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v431, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v395 = *(a2 + 8);
    v396 = *(a2 + 16);
    v397 = *(a2 + 24);
    v398 = v396 + 5;
    if (!v397)
    {
      v398 = v396 + 4;
    }

    if (v395 < v398)
    {
      goto LABEL_641;
    }

    v399 = *a2;
    if (*(a2 + 24))
    {
      v400 = 0;
      v401 = v396 + 1;
      v402 = (v399 + v401);
      do
      {
        if (v401 >= v395)
        {
          v403 = 0;
        }

        else
        {
          v403 = *v402;
        }

        v404 = ((v403 & (0xFFFF << (8 - v397))) >> (8 - v397)) | ((((1 << (8 - v397)) + 255) & *(v402 - 1)) << v397);
        *(a2 + 16) = v401;
        buf[v400++] = v404;
        ++v402;
        ++v401;
      }

      while (v400 != 4);
      if (v395 < v398)
      {
LABEL_641:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v424 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 174;
          v837 = 2082;
          v838 = "Could not read nav label road sign height (small).";
          _os_log_impl(&dword_1B2754000, v424, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v425 = MEMORY[0x1B8C61C80](a4, 174);
        v426 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v425, " STYL Parse Error Here: ", 24);
        v427 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v426, "Could not read nav label road sign height (small).", 50);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v427, "\n", 1);
        return 0;
      }

      v413 = *buf;
    }

    else
    {
      v413 = *(v399 + v396);
      *(a2 + 16) = v396 + 4;
    }

    *(a1 + 224) = v413;
    *(a1 + 17) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v447 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 177;
      v837 = 2082;
      v838 = "Could not read indication of nav label road sign height (medium) existing.";
      _os_log_impl(&dword_1B2754000, v447, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v448 = MEMORY[0x1B8C61C80](a4, 177);
    v449 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v448, " STYL Parse Error Here: ", 24);
    v450 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v449, "Could not read indication of nav label road sign height (medium) existing.", 74);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v450, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v414 = *(a2 + 8);
    v415 = *(a2 + 16);
    v416 = *(a2 + 24);
    v417 = v415 + 5;
    if (!v416)
    {
      v417 = v415 + 4;
    }

    if (v414 < v417)
    {
      goto LABEL_668;
    }

    v418 = *a2;
    if (*(a2 + 24))
    {
      v419 = 0;
      v420 = v415 + 1;
      v421 = (v418 + v420);
      do
      {
        if (v420 >= v414)
        {
          v422 = 0;
        }

        else
        {
          v422 = *v421;
        }

        v423 = ((v422 & (0xFFFF << (8 - v416))) >> (8 - v416)) | ((((1 << (8 - v416)) + 255) & *(v421 - 1)) << v416);
        *(a2 + 16) = v420;
        buf[v419++] = v423;
        ++v421;
        ++v420;
      }

      while (v419 != 4);
      if (v414 < v417)
      {
LABEL_668:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v443 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 179;
          v837 = 2082;
          v838 = "Could not read nav label road sign height (medium).";
          _os_log_impl(&dword_1B2754000, v443, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v444 = MEMORY[0x1B8C61C80](a4, 179);
        v445 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v444, " STYL Parse Error Here: ", 24);
        v446 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v445, "Could not read nav label road sign height (medium).", 51);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v446, "\n", 1);
        return 0;
      }

      v432 = *buf;
    }

    else
    {
      v432 = *(v418 + v415);
      *(a2 + 16) = v415 + 4;
    }

    *(a1 + 228) = v432;
    *(a1 + 18) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v466 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 182;
      v837 = 2082;
      v838 = "Could not read indication of nav label road sign height (large) existing.";
      _os_log_impl(&dword_1B2754000, v466, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v467 = MEMORY[0x1B8C61C80](a4, 182);
    v468 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v467, " STYL Parse Error Here: ", 24);
    v469 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v468, "Could not read indication of nav label road sign height (large) existing.", 73);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v469, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v433 = *(a2 + 8);
    v434 = *(a2 + 16);
    v435 = *(a2 + 24);
    v436 = v434 + 5;
    if (!v435)
    {
      v436 = v434 + 4;
    }

    if (v433 < v436)
    {
      goto LABEL_695;
    }

    v437 = *a2;
    if (*(a2 + 24))
    {
      v438 = 0;
      v439 = v434 + 1;
      v440 = (v437 + v439);
      do
      {
        if (v439 >= v433)
        {
          v441 = 0;
        }

        else
        {
          v441 = *v440;
        }

        v442 = ((v441 & (0xFFFF << (8 - v435))) >> (8 - v435)) | ((((1 << (8 - v435)) + 255) & *(v440 - 1)) << v435);
        *(a2 + 16) = v439;
        buf[v438++] = v442;
        ++v440;
        ++v439;
      }

      while (v438 != 4);
      if (v433 < v436)
      {
LABEL_695:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v462 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 184;
          v837 = 2082;
          v838 = "Could not read nav label road sign height (large).";
          _os_log_impl(&dword_1B2754000, v462, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v463 = MEMORY[0x1B8C61C80](a4, 184);
        v464 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v463, " STYL Parse Error Here: ", 24);
        v465 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v464, "Could not read nav label road sign height (large).", 50);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v465, "\n", 1);
        return 0;
      }

      v451 = *buf;
    }

    else
    {
      v451 = *(v437 + v434);
      *(a2 + 16) = v434 + 4;
    }

    *(a1 + 232) = v451;
    *(a1 + 19) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v485 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 187;
      v837 = 2082;
      v838 = "Could not read indication of nav label road sign height (extra large) existing.";
      _os_log_impl(&dword_1B2754000, v485, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v486 = MEMORY[0x1B8C61C80](a4, 187);
    v487 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v486, " STYL Parse Error Here: ", 24);
    v488 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v487, "Could not read indication of nav label road sign height (extra large) existing.", 79);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v488, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v452 = *(a2 + 8);
    v453 = *(a2 + 16);
    v454 = *(a2 + 24);
    v455 = v453 + 5;
    if (!v454)
    {
      v455 = v453 + 4;
    }

    if (v452 < v455)
    {
      goto LABEL_722;
    }

    v456 = *a2;
    if (*(a2 + 24))
    {
      v457 = 0;
      v458 = v453 + 1;
      v459 = (v456 + v458);
      do
      {
        if (v458 >= v452)
        {
          v460 = 0;
        }

        else
        {
          v460 = *v459;
        }

        v461 = ((v460 & (0xFFFF << (8 - v454))) >> (8 - v454)) | ((((1 << (8 - v454)) + 255) & *(v459 - 1)) << v454);
        *(a2 + 16) = v458;
        buf[v457++] = v461;
        ++v459;
        ++v458;
      }

      while (v457 != 4);
      if (v452 < v455)
      {
LABEL_722:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v481 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 189;
          v837 = 2082;
          v838 = "Could not read nav label road sign height (extra large).";
          _os_log_impl(&dword_1B2754000, v481, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v482 = MEMORY[0x1B8C61C80](a4, 189);
        v483 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v482, " STYL Parse Error Here: ", 24);
        v484 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v483, "Could not read nav label road sign height (extra large).", 56);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v484, "\n", 1);
        return 0;
      }

      v470 = *buf;
    }

    else
    {
      v470 = *(v456 + v453);
      *(a2 + 16) = v453 + 4;
    }

    *(a1 + 236) = v470;
    *(a1 + 20) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v505 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 192;
      v837 = 2082;
      v838 = "Could not read indication of nav label road sign height (extra extra large) existing.";
      _os_log_impl(&dword_1B2754000, v505, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v506 = MEMORY[0x1B8C61C80](a4, 192);
    v507 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v506, " STYL Parse Error Here: ", 24);
    v508 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v507, "Could not read indication of nav label road sign height (extra extra large) existing.", 85);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v508, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v471 = *(a2 + 8);
    v472 = *(a2 + 16);
    v473 = *(a2 + 24);
    v474 = v472 + 5;
    if (!v473)
    {
      v474 = v472 + 4;
    }

    if (v471 < v474)
    {
      goto LABEL_749;
    }

    v475 = *a2;
    if (*(a2 + 24))
    {
      v476 = 0;
      v477 = v472 + 1;
      v478 = (v475 + v477);
      do
      {
        if (v477 >= v471)
        {
          v479 = 0;
        }

        else
        {
          v479 = *v478;
        }

        v480 = ((v479 & (0xFFFF << (8 - v473))) >> (8 - v473)) | ((((1 << (8 - v473)) + 255) & *(v478 - 1)) << v473);
        *(a2 + 16) = v477;
        buf[v476++] = v480;
        ++v478;
        ++v477;
      }

      while (v476 != 4);
      if (v471 < v474)
      {
LABEL_749:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v501 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 194;
          v837 = 2082;
          v838 = "Could not read nav label road sign height (extra extra large).";
          _os_log_impl(&dword_1B2754000, v501, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v502 = MEMORY[0x1B8C61C80](a4, 194);
        v503 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v502, " STYL Parse Error Here: ", 24);
        v504 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v503, "Could not read nav label road sign height (extra extra large).", 62);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v504, "\n", 1);
        return 0;
      }

      v489 = *buf;
    }

    else
    {
      v489 = *(v475 + v472);
      *(a2 + 16) = v472 + 4;
    }

    *(a1 + 240) = v489;
    *(a1 + 21) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v523 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 197;
      v837 = 2082;
      v838 = "Could not read indication of nav label max road signs existing.";
      _os_log_impl(&dword_1B2754000, v523, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v524 = MEMORY[0x1B8C61C80](a4, 197);
    v525 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v524, " STYL Parse Error Here: ", 24);
    v526 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v525, "Could not read indication of nav label max road signs existing.", 63);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v526, "\n", 1);
    return 0;
  }

  if (v832)
  {
    v490 = 0;
    v491 = 0;
    v492 = 0;
    v493 = *(a2 + 24);
    v494 = *(a2 + 24) != 0;
    v495 = *(a2 + 8);
    v496 = *(a2 + 16) + 1;
    v497 = (*a2 + v496);
    do
    {
      if (v495 < v494 + v496)
      {
        break;
      }

      v498 = *(v497 - 1);
      if (v493)
      {
        if (v496 >= v495)
        {
          v499 = 0;
        }

        else
        {
          v499 = *v497;
        }

        *(a2 + 16) = v496;
        v498 = ((v499 & (0xFFFF << (8 - v493))) >> (8 - v493)) | ((((1 << (8 - v493)) + 255) & v498) << v493);
      }

      else
      {
        *(a2 + 16) = v496;
      }

      v492 |= (v498 & 0x7F) << v490;
      if ((v498 & 0x80) == 0)
      {
        *(a1 + 248) = v492;
        *(a1 + 22) = 1;
        goto LABEL_790;
      }

      v490 += 7;
      ++v497;
      ++v496;
    }

    while (v491++ < 9);
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v519 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 199;
      v837 = 2082;
      v838 = "Could not read nav label max road signs.";
      _os_log_impl(&dword_1B2754000, v519, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v520 = MEMORY[0x1B8C61C80](a4, 199);
    v521 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v520, " STYL Parse Error Here: ", 24);
    v522 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v521, "Could not read nav label max road signs.", 40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v522, "\n", 1);
    return 0;
  }

LABEL_790:
  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v542 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 203;
      v837 = 2082;
      v838 = "Could not read label disable alternate text positions.";
      _os_log_impl(&dword_1B2754000, v542, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v543 = MEMORY[0x1B8C61C80](a4, 203);
    v544 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v543, " STYL Parse Error Here: ", 24);
    v545 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v544, "Could not read label disable alternate text positions.", 54);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v545, "\n", 1);
    return 0;
  }

  *(a1 + 256) = v832 != 0;
  if (*(a3 + 8) < 2u)
  {
    return 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v546 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 207;
      v837 = 2082;
      v838 = "Could not read indication of min traffic type (traffic) z existing.";
      _os_log_impl(&dword_1B2754000, v546, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v547 = MEMORY[0x1B8C61C80](a4, 207);
    v548 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v547, " STYL Parse Error Here: ", 24);
    v549 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v548, "Could not read indication of min traffic type (traffic) z existing.", 67);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v549, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v550 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 209;
        v837 = 2082;
        v838 = "Could not read min traffic type (traffic) z.";
        _os_log_impl(&dword_1B2754000, v550, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v551 = MEMORY[0x1B8C61C80](a4, 209);
      v552 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v551, " STYL Parse Error Here: ", 24);
      v553 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v552, "Could not read min traffic type (traffic) z.", 44);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v553, "\n", 1);
      return 0;
    }

    *(a1 + 80) = v834 * 0.125;
  }

  if (*(a3 + 8) < 4u)
  {
    return 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v554 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 214;
      v837 = 2082;
      v838 = "Could not read indication of maneuver distance (immediate) existing.";
      _os_log_impl(&dword_1B2754000, v554, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v555 = MEMORY[0x1B8C61C80](a4, 214);
    v556 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v555, " STYL Parse Error Here: ", 24);
    v557 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v556, "Could not read indication of maneuver distance (immediate) existing.", 68);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v557, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v509 = *(a2 + 8);
    v510 = *(a2 + 16);
    v511 = *(a2 + 24);
    v512 = v510 + 5;
    if (!v511)
    {
      v512 = v510 + 4;
    }

    if (v509 < v512)
    {
      goto LABEL_809;
    }

    v513 = *a2;
    if (*(a2 + 24))
    {
      v514 = 0;
      v515 = v510 + 1;
      v516 = (v513 + v515);
      do
      {
        if (v515 >= v509)
        {
          v517 = 0;
        }

        else
        {
          v517 = *v516;
        }

        v518 = ((v517 & (0xFFFF << (8 - v511))) >> (8 - v511)) | ((((1 << (8 - v511)) + 255) & *(v516 - 1)) << v511);
        *(a2 + 16) = v515;
        buf[v514++] = v518;
        ++v516;
        ++v515;
      }

      while (v514 != 4);
      if (v509 < v512)
      {
LABEL_809:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v538 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 216;
          v837 = 2082;
          v838 = "Could not read maneuver distance (immediate).";
          _os_log_impl(&dword_1B2754000, v538, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v539 = MEMORY[0x1B8C61C80](a4, 216);
        v540 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v539, " STYL Parse Error Here: ", 24);
        v541 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v540, "Could not read maneuver distance (immediate).", 45);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v541, "\n", 1);
        return 0;
      }

      v527 = *buf;
    }

    else
    {
      v527 = *(v513 + v510);
      *(a2 + 16) = v510 + 4;
    }

    *(a1 + 260) = v527;
    *(a1 + 23) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v573 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 220;
      v837 = 2082;
      v838 = "Could not read indication of maneuver distance (extremely near) existing.";
      _os_log_impl(&dword_1B2754000, v573, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v574 = MEMORY[0x1B8C61C80](a4, 220);
    v575 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v574, " STYL Parse Error Here: ", 24);
    v576 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v575, "Could not read indication of maneuver distance (extremely near) existing.", 73);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v576, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v528 = *(a2 + 8);
    v529 = *(a2 + 16);
    v530 = *(a2 + 24);
    v531 = v529 + 5;
    if (!v530)
    {
      v531 = v529 + 4;
    }

    if (v528 < v531)
    {
      goto LABEL_842;
    }

    v532 = *a2;
    if (*(a2 + 24))
    {
      v533 = 0;
      v534 = v529 + 1;
      v535 = (v532 + v534);
      do
      {
        if (v534 >= v528)
        {
          v536 = 0;
        }

        else
        {
          v536 = *v535;
        }

        v537 = ((v536 & (0xFFFF << (8 - v530))) >> (8 - v530)) | ((((1 << (8 - v530)) + 255) & *(v535 - 1)) << v530);
        *(a2 + 16) = v534;
        buf[v533++] = v537;
        ++v535;
        ++v534;
      }

      while (v533 != 4);
      if (v528 < v531)
      {
LABEL_842:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v569 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 222;
          v837 = 2082;
          v838 = "Could not read maneuver distance (extremely near).";
          _os_log_impl(&dword_1B2754000, v569, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v570 = MEMORY[0x1B8C61C80](a4, 222);
        v571 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v570, " STYL Parse Error Here: ", 24);
        v572 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v571, "Could not read maneuver distance (extremely near).", 50);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v572, "\n", 1);
        return 0;
      }

      v558 = *buf;
    }

    else
    {
      v558 = *(v532 + v529);
      *(a2 + 16) = v529 + 4;
    }

    *(a1 + 264) = v558;
    *(a1 + 24) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v592 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 226;
      v837 = 2082;
      v838 = "Could not read indication of maneuver distance (very near) existing.";
      _os_log_impl(&dword_1B2754000, v592, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v593 = MEMORY[0x1B8C61C80](a4, 226);
    v594 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v593, " STYL Parse Error Here: ", 24);
    v595 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v594, "Could not read indication of maneuver distance (very near) existing.", 68);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v595, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v559 = *(a2 + 8);
    v560 = *(a2 + 16);
    v561 = *(a2 + 24);
    v562 = v560 + 5;
    if (!v561)
    {
      v562 = v560 + 4;
    }

    if (v559 < v562)
    {
      goto LABEL_881;
    }

    v563 = *a2;
    if (*(a2 + 24))
    {
      v564 = 0;
      v565 = v560 + 1;
      v566 = (v563 + v565);
      do
      {
        if (v565 >= v559)
        {
          v567 = 0;
        }

        else
        {
          v567 = *v566;
        }

        v568 = ((v567 & (0xFFFF << (8 - v561))) >> (8 - v561)) | ((((1 << (8 - v561)) + 255) & *(v566 - 1)) << v561);
        *(a2 + 16) = v565;
        buf[v564++] = v568;
        ++v566;
        ++v565;
      }

      while (v564 != 4);
      if (v559 < v562)
      {
LABEL_881:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v588 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 228;
          v837 = 2082;
          v838 = "Could not read maneuver distance (very near).";
          _os_log_impl(&dword_1B2754000, v588, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v589 = MEMORY[0x1B8C61C80](a4, 228);
        v590 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v589, " STYL Parse Error Here: ", 24);
        v591 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v590, "Could not read maneuver distance (very near).", 45);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v591, "\n", 1);
        return 0;
      }

      v577 = *buf;
    }

    else
    {
      v577 = *(v563 + v560);
      *(a2 + 16) = v560 + 4;
    }

    *(a1 + 268) = v577;
    *(a1 + 25) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v611 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 232;
      v837 = 2082;
      v838 = "Could not read indication of maneuver distance (near) existing.";
      _os_log_impl(&dword_1B2754000, v611, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v612 = MEMORY[0x1B8C61C80](a4, 232);
    v613 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v612, " STYL Parse Error Here: ", 24);
    v614 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v613, "Could not read indication of maneuver distance (near) existing.", 63);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v614, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v578 = *(a2 + 8);
    v579 = *(a2 + 16);
    v580 = *(a2 + 24);
    v581 = v579 + 5;
    if (!v580)
    {
      v581 = v579 + 4;
    }

    if (v578 < v581)
    {
      goto LABEL_908;
    }

    v582 = *a2;
    if (*(a2 + 24))
    {
      v583 = 0;
      v584 = v579 + 1;
      v585 = (v582 + v584);
      do
      {
        if (v584 >= v578)
        {
          v586 = 0;
        }

        else
        {
          v586 = *v585;
        }

        v587 = ((v586 & (0xFFFF << (8 - v580))) >> (8 - v580)) | ((((1 << (8 - v580)) + 255) & *(v585 - 1)) << v580);
        *(a2 + 16) = v584;
        buf[v583++] = v587;
        ++v585;
        ++v584;
      }

      while (v583 != 4);
      if (v578 < v581)
      {
LABEL_908:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v607 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 234;
          v837 = 2082;
          v838 = "Could not read maneuver distance (near).";
          _os_log_impl(&dword_1B2754000, v607, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v608 = MEMORY[0x1B8C61C80](a4, 234);
        v609 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v608, " STYL Parse Error Here: ", 24);
        v610 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v609, "Could not read maneuver distance (near).", 40);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v610, "\n", 1);
        return 0;
      }

      v596 = *buf;
    }

    else
    {
      v596 = *(v582 + v579);
      *(a2 + 16) = v579 + 4;
    }

    *(a1 + 272) = v596;
    *(a1 + 26) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v630 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 238;
      v837 = 2082;
      v838 = "Could not read indication of maneuver distance (medium) existing.";
      _os_log_impl(&dword_1B2754000, v630, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v631 = MEMORY[0x1B8C61C80](a4, 238);
    v632 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v631, " STYL Parse Error Here: ", 24);
    v633 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v632, "Could not read indication of maneuver distance (medium) existing.", 65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v633, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v597 = *(a2 + 8);
    v598 = *(a2 + 16);
    v599 = *(a2 + 24);
    v600 = v598 + 5;
    if (!v599)
    {
      v600 = v598 + 4;
    }

    if (v597 < v600)
    {
      goto LABEL_935;
    }

    v601 = *a2;
    if (*(a2 + 24))
    {
      v602 = 0;
      v603 = v598 + 1;
      v604 = (v601 + v603);
      do
      {
        if (v603 >= v597)
        {
          v605 = 0;
        }

        else
        {
          v605 = *v604;
        }

        v606 = ((v605 & (0xFFFF << (8 - v599))) >> (8 - v599)) | ((((1 << (8 - v599)) + 255) & *(v604 - 1)) << v599);
        *(a2 + 16) = v603;
        buf[v602++] = v606;
        ++v604;
        ++v603;
      }

      while (v602 != 4);
      if (v597 < v600)
      {
LABEL_935:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v626 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 240;
          v837 = 2082;
          v838 = "Could not read maneuver distance (medium).";
          _os_log_impl(&dword_1B2754000, v626, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v627 = MEMORY[0x1B8C61C80](a4, 240);
        v628 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v627, " STYL Parse Error Here: ", 24);
        v629 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v628, "Could not read maneuver distance (medium).", 42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v629, "\n", 1);
        return 0;
      }

      v615 = *buf;
    }

    else
    {
      v615 = *(v601 + v598);
      *(a2 + 16) = v598 + 4;
    }

    *(a1 + 276) = v615;
    *(a1 + 27) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v649 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 244;
      v837 = 2082;
      v838 = "Could not read indication of maneuver distance (far) existing.";
      _os_log_impl(&dword_1B2754000, v649, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v650 = MEMORY[0x1B8C61C80](a4, 244);
    v651 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v650, " STYL Parse Error Here: ", 24);
    v652 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v651, "Could not read indication of maneuver distance (far) existing.", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v652, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v616 = *(a2 + 8);
    v617 = *(a2 + 16);
    v618 = *(a2 + 24);
    v619 = v617 + 5;
    if (!v618)
    {
      v619 = v617 + 4;
    }

    if (v616 < v619)
    {
      goto LABEL_962;
    }

    v620 = *a2;
    if (*(a2 + 24))
    {
      v621 = 0;
      v622 = v617 + 1;
      v623 = (v620 + v622);
      do
      {
        if (v622 >= v616)
        {
          v624 = 0;
        }

        else
        {
          v624 = *v623;
        }

        v625 = ((v624 & (0xFFFF << (8 - v618))) >> (8 - v618)) | ((((1 << (8 - v618)) + 255) & *(v623 - 1)) << v618);
        *(a2 + 16) = v622;
        buf[v621++] = v625;
        ++v623;
        ++v622;
      }

      while (v621 != 4);
      if (v616 < v619)
      {
LABEL_962:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v645 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 246;
          v837 = 2082;
          v838 = "Could not read maneuver distance (far).";
          _os_log_impl(&dword_1B2754000, v645, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v646 = MEMORY[0x1B8C61C80](a4, 246);
        v647 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v646, " STYL Parse Error Here: ", 24);
        v648 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v647, "Could not read maneuver distance (far).", 39);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v648, "\n", 1);
        return 0;
      }

      v634 = *buf;
    }

    else
    {
      v634 = *(v620 + v617);
      *(a2 + 16) = v617 + 4;
    }

    *(a1 + 280) = v634;
    *(a1 + 28) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v663 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 250;
      v837 = 2082;
      v838 = "Could not read indication of maneuver distance (very far) existing.";
      _os_log_impl(&dword_1B2754000, v663, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v664 = MEMORY[0x1B8C61C80](a4, 250);
    v665 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v664, " STYL Parse Error Here: ", 24);
    v666 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v665, "Could not read indication of maneuver distance (very far) existing.", 67);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v666, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v635 = *(a2 + 8);
    v636 = *(a2 + 16);
    v637 = *(a2 + 24);
    v638 = v636 + 5;
    if (!v637)
    {
      v638 = v636 + 4;
    }

    if (v635 < v638)
    {
      goto LABEL_989;
    }

    v639 = *a2;
    if (*(a2 + 24))
    {
      v640 = 0;
      v641 = v636 + 1;
      v642 = (v639 + v641);
      do
      {
        if (v641 >= v635)
        {
          v643 = 0;
        }

        else
        {
          v643 = *v642;
        }

        v644 = ((v643 & (0xFFFF << (8 - v637))) >> (8 - v637)) | ((((1 << (8 - v637)) + 255) & *(v642 - 1)) << v637);
        *(a2 + 16) = v641;
        buf[v640++] = v644;
        ++v642;
        ++v641;
      }

      while (v640 != 4);
      if (v635 < v638)
      {
LABEL_989:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v659 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 252;
          v837 = 2082;
          v838 = "Could not read maneuver distance (very far).";
          _os_log_impl(&dword_1B2754000, v659, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v660 = MEMORY[0x1B8C61C80](a4, 252);
        v661 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v660, " STYL Parse Error Here: ", 24);
        v662 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v661, "Could not read maneuver distance (very far).", 44);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v662, "\n", 1);
        return 0;
      }

      v653 = *buf;
    }

    else
    {
      v653 = *(v639 + v636);
      *(a2 + 16) = v636 + 4;
    }

    *(a1 + 284) = v653;
    *(a1 + 29) = 1;
  }

  if (*(a3 + 8) < 5u)
  {
    return 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v675 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 258;
      v837 = 2082;
      v838 = "Could not read indication of nav map zoom level transition z existing.";
      _os_log_impl(&dword_1B2754000, v675, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v676 = MEMORY[0x1B8C61C80](a4, 258);
    v677 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v676, " STYL Parse Error Here: ", 24);
    v678 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v677, "Could not read indication of nav map zoom level transition z existing.", 70);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v678, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v679 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 260;
        v837 = 2082;
        v838 = "Could not read nav map zoom level transition z.";
        _os_log_impl(&dword_1B2754000, v679, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v680 = MEMORY[0x1B8C61C80](a4, 260);
      v681 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v680, " STYL Parse Error Here: ", 24);
      v682 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v681, "Could not read nav map zoom level transition z.", 47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v682, "\n", 1);
      return 0;
    }

    *(a1 + 288) = v834 * 0.125;
    *(a1 + 30) = 1;
  }

  if (*(a3 + 8) < 6u)
  {
    return 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v683 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 267;
      v837 = 2082;
      v838 = "Could not read suppress oppositie carriageway signs.";
      _os_log_impl(&dword_1B2754000, v683, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v684 = MEMORY[0x1B8C61C80](a4, 267);
    v685 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v684, " STYL Parse Error Here: ", 24);
    v686 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v685, "Could not read suppress oppositie carriageway signs.", 52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v686, "\n", 1);
    return 0;
  }

  *(a1 + 257) = v832 != 0;
  if (*(a3 + 8) < 7u)
  {
    return 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v687 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 272;
      v837 = 2082;
      v838 = "Could not read indication of vector venue zoom range existing.";
      _os_log_impl(&dword_1B2754000, v687, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v688 = MEMORY[0x1B8C61C80](a4, 272);
    v689 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v688, " STYL Parse Error Here: ", 24);
    v690 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v689, "Could not read indication of vector venue zoom range existing.", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v690, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v691 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 274;
        v837 = 2082;
        v838 = "Could not read vector traffic min zoom.";
        _os_log_impl(&dword_1B2754000, v691, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v692 = MEMORY[0x1B8C61C80](a4, 274);
      v693 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v692, " STYL Parse Error Here: ", 24);
      v694 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v693, "Could not read vector traffic min zoom.", 39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v694, "\n", 1);
      return 0;
    }

    *(a1 + 192) = v834 * 0.125;
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v695 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 275;
        v837 = 2082;
        v838 = "Could not read vector traffic max zoom.";
        _os_log_impl(&dword_1B2754000, v695, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v696 = MEMORY[0x1B8C61C80](a4, 275);
      v697 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v696, " STYL Parse Error Here: ", 24);
      v698 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v697, "Could not read vector traffic max zoom.", 39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v698, "\n", 1);
      return 0;
    }

    *(a1 + 196) = v834 * 0.125;
    *(a1 + 13) = 1;
  }

  if (*(a3 + 8) < 8u)
  {
    return 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v699 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 281;
      v837 = 2082;
      v838 = "Could not read building shadow color existing.";
      _os_log_impl(&dword_1B2754000, v699, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v700 = MEMORY[0x1B8C61C80](a4, 281);
    v701 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v700, " STYL Parse Error Here: ", 24);
    v702 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v701, "Could not read building shadow color existing.", 46);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v702, "\n", 1);
    return 0;
  }

  if (v832)
  {
    v654 = *(a2 + 24);
    v655 = *(a2 + 24) != 0;
    v656 = *(a2 + 8);
    v657 = *(a2 + 16);
    v658 = v657 + 2;
    if (!*(a2 + 24))
    {
      v658 = v657 + 1;
    }

    if (v656 < v658)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v671 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 284;
        v837 = 2082;
        v838 = "Could not read building shadow red";
        _os_log_impl(&dword_1B2754000, v671, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v672 = MEMORY[0x1B8C61C80](a4, 284);
      v673 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v672, " STYL Parse Error Here: ", 24);
      v674 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v673, "Could not read building shadow red", 34);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v674, "\n", 1);
      return 0;
    }

    v667 = v657 + 1;
    v668 = *a2;
    if (*(a2 + 24))
    {
      v669 = *(v668 + v657);
      if (v667 >= v656)
      {
        v670 = 0;
      }

      else
      {
        v670 = *(v668 + v667);
      }

      *(a2 + 16) = v667;
      LODWORD(v657) = ((v670 & (0xFFFF << (8 - v654))) >> (8 - v654)) | ((((1 << (8 - v654)) + 255) & v669) << v654);
    }

    else
    {
      LOBYTE(v657) = *(v668 + v657);
      *(a2 + 16) = v667;
    }

    v703 = v667 + 1;
    if (v656 < v667 + 1 + v655)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v707 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 285;
        v837 = 2082;
        v838 = "Could not read building shadow green";
        _os_log_impl(&dword_1B2754000, v707, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v708 = MEMORY[0x1B8C61C80](a4, 285);
      v709 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v708, " STYL Parse Error Here: ", 24);
      v710 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v709, "Could not read building shadow green", 36);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v710, "\n", 1);
      return 0;
    }

    v704 = *a2;
    if (v654)
    {
      v705 = *(v704 + v667);
      if (v703 >= v656)
      {
        v706 = 0;
      }

      else
      {
        v706 = *(v704 + v703);
      }

      *(a2 + 16) = v703;
      v711 = ((v706 & (0xFFFF << (8 - v654))) >> (8 - v654)) | ((((1 << (8 - v654)) + 255) & v705) << v654);
    }

    else
    {
      LOBYTE(v711) = *(v704 + v667);
      *(a2 + 16) = v703;
    }

    v712 = v703 + 1;
    if (v656 < v703 + 1 + v655)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v716 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 286;
        v837 = 2082;
        v838 = "Could not read building shadow blue";
        _os_log_impl(&dword_1B2754000, v716, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v717 = MEMORY[0x1B8C61C80](a4, 286);
      v718 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v717, " STYL Parse Error Here: ", 24);
      v719 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v718, "Could not read building shadow blue", 35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v719, "\n", 1);
      return 0;
    }

    v713 = *a2;
    if (v654)
    {
      v714 = *(v713 + v703);
      if (v712 >= v656)
      {
        v715 = 0;
      }

      else
      {
        v715 = *(v713 + v712);
      }

      *(a2 + 16) = v712;
      v720 = ((v715 & (0xFFFF << (8 - v654))) >> (8 - v654)) | ((((1 << (8 - v654)) + 255) & v714) << v654);
    }

    else
    {
      LOBYTE(v720) = *(v713 + v703);
      *(a2 + 16) = v712;
    }

    v721 = v712 + 1;
    if (v656 < v712 + 1 + v655)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v726 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 287;
        v837 = 2082;
        v838 = "Could not read building shadow alpha";
        _os_log_impl(&dword_1B2754000, v726, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v727 = MEMORY[0x1B8C61C80](a4, 287);
      v728 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v727, " STYL Parse Error Here: ", 24);
      v729 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v728, "Could not read building shadow alpha", 36);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v729, "\n", 1);
      return 0;
    }

    v722 = v657 * 0.0039216;
    v723 = *a2;
    if (v654)
    {
      v724 = *(v723 + v712);
      if (v721 >= v656)
      {
        v725 = 0;
      }

      else
      {
        v725 = *(v723 + v721);
      }

      *(a2 + 16) = v721;
      v730 = ((v725 & (0xFFFF << (8 - v654))) >> (8 - v654)) | ((((1 << (8 - v654)) + 255) & v724) << v654);
    }

    else
    {
      LOBYTE(v730) = *(v723 + v712);
      *(a2 + 16) = v721;
    }

    *(a1 + 300) = v722;
    *(a1 + 304) = v711 * 0.0039216;
    *(a1 + 308) = v720 * 0.0039216;
    *(a1 + 312) = v730 * 0.0039216;
  }

  if (*(a3 + 8) < 9u)
  {
    return 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v756 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 293;
      v837 = 2082;
      v838 = "Could not read venue dimming factor existing.";
      _os_log_impl(&dword_1B2754000, v756, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v757 = MEMORY[0x1B8C61C80](a4, 293);
    v758 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v757, " STYL Parse Error Here: ", 24);
    v759 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v758, "Could not read venue dimming factor existing.", 45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v759, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v760 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 295;
        v837 = 2082;
        v838 = "Could not read venue dimming factor";
        _os_log_impl(&dword_1B2754000, v760, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v761 = MEMORY[0x1B8C61C80](a4, 295);
      v762 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v761, " STYL Parse Error Here: ", 24);
      v763 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v762, "Could not read venue dimming factor", 35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v763, "\n", 1);
      return 0;
    }

    *(a1 + 316) = v834 * 0.0039216;
  }

  if (*(a3 + 8) < 0xBu)
  {
    return 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v764 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 300;
      v837 = 2082;
      v838 = "Could not read value standard map zoom level transition z existing.";
      _os_log_impl(&dword_1B2754000, v764, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v765 = MEMORY[0x1B8C61C80](a4, 300);
    v766 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v765, " STYL Parse Error Here: ", 24);
    v767 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v766, "Could not read value standard map zoom level transition z existing.", 67);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v767, "\n", 1);
    return 0;
  }

  if (v832)
  {
    geo::ibitstream::readUIntBits(buf, a2, 8u);
    if ((buf[0] & 1) == 0)
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v768 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 302;
        v837 = 2082;
        v838 = "Could not read standard map zoom level transition z.";
        _os_log_impl(&dword_1B2754000, v768, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v769 = MEMORY[0x1B8C61C80](a4, 302);
      v770 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v769, " STYL Parse Error Here: ", 24);
      v771 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v770, "Could not read standard map zoom level transition z.", 52);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v771, "\n", 1);
      return 0;
    }

    *(a1 + 292) = v834 * 0.125;
    *(a1 + 31) = 1;
  }

  if (*(a3 + 8) < 0xBu)
  {
    return 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v772 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 309;
      v837 = 2082;
      v838 = "Could not read value force 3d buildings";
      _os_log_impl(&dword_1B2754000, v772, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v773 = MEMORY[0x1B8C61C80](a4, 309);
    v774 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v773, " STYL Parse Error Here: ", 24);
    v775 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v774, "Could not read value force 3d buildings", 39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v775, "\n", 1);
    return 0;
  }

  *(a1 + 296) = v832 != 0;
  if (*(a3 + 8) < 0xCu)
  {
    return 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v776 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 315;
      v837 = 2082;
      v838 = "Could not read value round buildings";
      _os_log_impl(&dword_1B2754000, v776, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v777 = MEMORY[0x1B8C61C80](a4, 315);
    v778 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v777, " STYL Parse Error Here: ", 24);
    v779 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v778, "Could not read value round buildings", 36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v779, "\n", 1);
    return 0;
  }

  *(a1 + 297) = v832 != 0;
  if (*(a3 + 8) < 0xEu)
  {
    return 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v780 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 320;
      v837 = 2082;
      v838 = "Could not read indication of route sinuosity (straight) existing.";
      _os_log_impl(&dword_1B2754000, v780, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v781 = MEMORY[0x1B8C61C80](a4, 320);
    v782 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v781, " STYL Parse Error Here: ", 24);
    v783 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v782, "Could not read indication of route sinuosity (straight) existing.", 65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v783, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v731 = *(a2 + 8);
    v732 = *(a2 + 16);
    v733 = *(a2 + 24);
    v734 = v732 + 5;
    if (!v733)
    {
      v734 = v732 + 4;
    }

    if (v731 < v734)
    {
      goto LABEL_1152;
    }

    v735 = *a2;
    if (*(a2 + 24))
    {
      v736 = 0;
      v737 = v732 + 1;
      v738 = (v735 + v737);
      do
      {
        if (v737 >= v731)
        {
          v739 = 0;
        }

        else
        {
          v739 = *v738;
        }

        v740 = ((v739 & (0xFFFF << (8 - v733))) >> (8 - v733)) | ((((1 << (8 - v733)) + 255) & *(v738 - 1)) << v733);
        *(a2 + 16) = v737;
        buf[v736++] = v740;
        ++v738;
        ++v737;
      }

      while (v736 != 4);
      if (v731 < v734)
      {
LABEL_1152:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v752 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 322;
          v837 = 2082;
          v838 = "Could not read route sinuosity (straight).";
          _os_log_impl(&dword_1B2754000, v752, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v753 = MEMORY[0x1B8C61C80](a4, 322);
        v754 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v753, " STYL Parse Error Here: ", 24);
        v755 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v754, "Could not read route sinuosity (straight).", 42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v755, "\n", 1);
        return 0;
      }

      v741 = *buf;
    }

    else
    {
      v741 = *(v735 + v732);
      *(a2 + 16) = v732 + 4;
    }

    *(a1 + 320) = v741;
    *(a1 + 32) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v799 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 326;
      v837 = 2082;
      v838 = "Could not read indication of route sinuosity (low) existing.";
      _os_log_impl(&dword_1B2754000, v799, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v800 = MEMORY[0x1B8C61C80](a4, 326);
    v801 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v800, " STYL Parse Error Here: ", 24);
    v802 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v801, "Could not read indication of route sinuosity (low) existing.", 60);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v802, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v742 = *(a2 + 8);
    v743 = *(a2 + 16);
    v744 = *(a2 + 24);
    v745 = v743 + 5;
    if (!v744)
    {
      v745 = v743 + 4;
    }

    if (v742 < v745)
    {
      goto LABEL_1183;
    }

    v746 = *a2;
    if (*(a2 + 24))
    {
      v747 = 0;
      v748 = v743 + 1;
      v749 = (v746 + v748);
      do
      {
        if (v748 >= v742)
        {
          v750 = 0;
        }

        else
        {
          v750 = *v749;
        }

        v751 = ((v750 & (0xFFFF << (8 - v744))) >> (8 - v744)) | ((((1 << (8 - v744)) + 255) & *(v749 - 1)) << v744);
        *(a2 + 16) = v748;
        buf[v747++] = v751;
        ++v749;
        ++v748;
      }

      while (v747 != 4);
      if (v742 < v745)
      {
LABEL_1183:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v795 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 328;
          v837 = 2082;
          v838 = "Could not read route sinuosity (low).";
          _os_log_impl(&dword_1B2754000, v795, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v796 = MEMORY[0x1B8C61C80](a4, 328);
        v797 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v796, " STYL Parse Error Here: ", 24);
        v798 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v797, "Could not read route sinuosity (low).", 37);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v798, "\n", 1);
        return 0;
      }

      v784 = *buf;
    }

    else
    {
      v784 = *(v746 + v743);
      *(a2 + 16) = v743 + 4;
    }

    *(a1 + 324) = v784;
    *(a1 + 33) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v818 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 332;
      v837 = 2082;
      v838 = "Could not read indication of route sinuosity (medium) existing.";
      _os_log_impl(&dword_1B2754000, v818, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v819 = MEMORY[0x1B8C61C80](a4, 332);
    v820 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v819, " STYL Parse Error Here: ", 24);
    v821 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v820, "Could not read indication of route sinuosity (medium) existing.", 63);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v821, "\n", 1);
    return 0;
  }

  if (v832)
  {
    *buf = 0;
    v785 = *(a2 + 8);
    v786 = *(a2 + 16);
    v787 = *(a2 + 24);
    v788 = v786 + 5;
    if (!v787)
    {
      v788 = v786 + 4;
    }

    if (v785 < v788)
    {
      goto LABEL_1234;
    }

    v789 = *a2;
    if (*(a2 + 24))
    {
      v790 = 0;
      v791 = v786 + 1;
      v792 = (v789 + v791);
      do
      {
        if (v791 >= v785)
        {
          v793 = 0;
        }

        else
        {
          v793 = *v792;
        }

        v794 = ((v793 & (0xFFFF << (8 - v787))) >> (8 - v787)) | ((((1 << (8 - v787)) + 255) & *(v792 - 1)) << v787);
        *(a2 + 16) = v791;
        buf[v790++] = v794;
        ++v792;
        ++v791;
      }

      while (v790 != 4);
      if (v785 < v788)
      {
LABEL_1234:
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v814 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
          v835 = 1024;
          v836 = 334;
          v837 = 2082;
          v838 = "Could not read route sinuosity (medium).";
          _os_log_impl(&dword_1B2754000, v814, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
        v815 = MEMORY[0x1B8C61C80](a4, 334);
        v816 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v815, " STYL Parse Error Here: ", 24);
        v817 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v816, "Could not read route sinuosity (medium).", 40);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v817, "\n", 1);
        return 0;
      }

      v803 = *buf;
    }

    else
    {
      v803 = *(v789 + v786);
      *(a2 + 16) = v786 + 4;
    }

    *(a1 + 328) = v803;
    *(a1 + 34) = 1;
  }

  geo::ibitstream::readUIntBits(v831, a2, 1u);
  if ((v831[0] & 1) == 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v827 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
      v835 = 1024;
      v836 = 338;
      v837 = 2082;
      v838 = "Could not read indication of route sinuosity (high) existing.";
      _os_log_impl(&dword_1B2754000, v827, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
    v828 = MEMORY[0x1B8C61C80](a4, 338);
    v829 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v828, " STYL Parse Error Here: ", 24);
    v830 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v829, "Could not read indication of route sinuosity (high) existing.", 61);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v830, "\n", 1);
    return 0;
  }

  if (!v832)
  {
    return 1;
  }

  *buf = 0;
  v804 = *(a2 + 8);
  v805 = *(a2 + 16);
  v806 = *(a2 + 24);
  v807 = v805 + 5;
  if (!v806)
  {
    v807 = v805 + 4;
  }

  if (v804 < v807)
  {
    goto LABEL_1261;
  }

  v808 = *a2;
  if (*(a2 + 24))
  {
    v809 = 0;
    v810 = v805 + 1;
    v811 = (v808 + v810);
    do
    {
      if (v810 >= v804)
      {
        v812 = 0;
      }

      else
      {
        v812 = *v811;
      }

      v813 = ((v812 & (0xFFFF << (8 - v806))) >> (8 - v806)) | ((((1 << (8 - v806)) + 255) & *(v811 - 1)) << v806);
      *(a2 + 16) = v810;
      buf[v809++] = v813;
      ++v811;
      ++v810;
    }

    while (v809 != 4);
    if (v804 < v807)
    {
LABEL_1261:
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v823 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v834 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp";
        v835 = 1024;
        v836 = 340;
        v837 = 2082;
        v838 = "Could not read route sinuosity (high).";
        _os_log_impl(&dword_1B2754000, v823, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/GlobalProperties.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, ":", 1);
      v824 = MEMORY[0x1B8C61C80](a4, 340);
      v825 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v824, " STYL Parse Error Here: ", 24);
      v826 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v825, "Could not read route sinuosity (high).", 38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v826, "\n", 1);
      return 0;
    }

    v822 = *buf;
  }

  else
  {
    v822 = *(v808 + v805);
    *(a2 + 16) = v805 + 4;
  }

  *(a1 + 332) = v822;
  result = 1;
  *(a1 + 35) = 1;
  return result;
}