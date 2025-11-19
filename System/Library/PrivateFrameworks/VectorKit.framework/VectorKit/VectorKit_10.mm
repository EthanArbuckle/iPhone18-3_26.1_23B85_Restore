void *gss::propertyDecoderForIndex<gss::ScenePropertyID>(void *result, unsigned int a2)
{
  *result = &unk_1F2A5EBD0;
  v2 = gss::unknownPropertyDecoder<gss::ScenePropertyID>;
  if (a2 <= 0x5B)
  {
    v2 = off_1F2A5EC70[a2];
  }

  result[1] = v2;
  result[3] = result;
  return result;
}

uint64_t geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::ScenePropertyID const,unsigned char> const*>(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = result;
    if ((*(result + 16) & 1) == 0)
    {
      v5 = a2;
      v6 = *(result + 12);
      do
      {
        result = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v3, *v5);
        if (result == v6)
        {
          result = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(v3);
          if (!result)
          {
            return result;
          }

          v7 = (*v3 + *(v3 + 12));
          *v7 = *v5;
          v7[*(v3 + 8)] = v5[1];
          v6 = *(v3 + 12) + 1;
          *(v3 + 12) = v6;
          *(v3 + 17) = 0;
        }

        v5 += 2;
      }

      while (v5 != a3);
    }
  }

  return result;
}

uint64_t geo::intern_linear_map<gss::ScenePropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](uint64_t a1, unsigned __int8 a2)
{
  v4 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1, a2);
  LOWORD(v5) = v4;
  if (v4 != *(a1 + 12))
  {
    return *a1 + *(a1 + 8) + 4 * v4;
  }

  if ((*(a1 + 16) & 1) == 0 && geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1, a2) == v4)
  {
    isSpaceAvailable = geo::intern_linear_map<gss::ScenePropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(a1);
    v5 = *(a1 + 12);
    if (isSpaceAvailable)
    {
      v7 = *a1;
      v7[v5] = a2;
      *&v7[4 * v5 + *(a1 + 8)] = 0;
      LOWORD(v5) = v5 + 1;
      *(a1 + 12) = v5;
      *(a1 + 17) = 0;
    }
  }

  return *a1 + *(a1 + 8) + 4 * v5 - 4;
}

uint64_t std::__function::__value_func<BOOL ()(geo::ibitstream &,gss::StylePropertySet<gss::ScenePropertyID> &,unsigned long long,gss::SceneConfigPropertyIndex,gss::DecodingContext const&,std::ostringstream &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t gss::uintDecoder<gss::ScenePropertyID>(uint64_t *a1, uint64_t a2, unint64_t a3, unsigned int a4, unsigned int a5, void *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a5 >= 0x5C)
  {
    v6 = 92;
  }

  else
  {
    v6 = a5;
  }

  if (a5 > 0x5B)
  {
    return 1;
  }

  if (a4 <= a3)
  {
    geo::ibitstream::readUIntBits(v19, a1, a3);
    if (v19[0])
    {
      v14 = v20;
      buf[0] = v6;
      buf[1] = 0;
      geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::ScenePropertyID const,unsigned char> const*>(a2, buf, &buf[2]);
      *geo::intern_linear_map<gss::ScenePropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v6) = v14;
      return 1;
    }

    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v15 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v23 = 1024;
      v24 = 89;
      v25 = 2082;
      v26 = "Could not read unsigned integer.";
      _os_log_impl(&dword_1B2754000, v15, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v16 = MEMORY[0x1B8C61C80](a6, 89);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " STYL Parse Error Here: ", 24);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Could not read unsigned integer.", 32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\n", 1);
  }

  else
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v9 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v23 = 1024;
      v24 = 88;
      v25 = 2082;
      v26 = "Found unsigned integer property with too few bits.";
      _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v10 = MEMORY[0x1B8C61C80](a6, 88);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " STYL Parse Error Here: ", 24);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Found unsigned integer property with too few bits.", 50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  }

  return 0;
}

uint64_t gss::angleNeg180To180Decoder<gss::ScenePropertyID>(uint64_t *a1, uint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a4 >= 0x5C)
  {
    v6 = 92;
  }

  else
  {
    v6 = a4;
  }

  if (a4 > 0x5B)
  {
    return 1;
  }

  if (a3 <= 8)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v11 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v23 = 1024;
      v24 = 183;
      v25 = 2082;
      v26 = "Found -180° - 180° property with too few bits.";
      _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v12 = MEMORY[0x1B8C61C80](a6, 183);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " STYL Parse Error Here: ", 24);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Found -180° - 180° property with too few bits.", 48);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "\n", 1);
  }

  else
  {
    geo::ibitstream::readUIntBits(v19, a1, a3);
    if (v19[0])
    {
      v10 = v20;
      buf[0] = v6;
      buf[1] = 0;
      geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::ScenePropertyID const,unsigned char> const*>(a2, buf, &buf[2]);
      *geo::intern_linear_map<gss::ScenePropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v6) = v10 - 180;
      return 1;
    }

    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v15 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v23 = 1024;
      v24 = 184;
      v25 = 2082;
      v26 = "Could not read -180° - 180° angle.";
      _os_log_impl(&dword_1B2754000, v15, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v16 = MEMORY[0x1B8C61C80](a6, 184);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " STYL Parse Error Here: ", 24);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Could not read -180° - 180° angle.", 36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\n", 1);
  }

  return 0;
}

uint64_t gss::rgba8Decoder<gss::ScenePropertyID>(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a4 >= 0x5C)
  {
    v6 = 92;
  }

  else
  {
    v6 = a4;
  }

  if (a4 > 0x5B)
  {
    return 1;
  }

  if (a3 == 32)
  {
    *buf = 0;
    v9 = a1[1];
    v10 = a1[2];
    v11 = *(a1 + 24);
    v12 = v10 + 5;
    if (!v11)
    {
      v12 = v10 + 4;
    }

    if (v9 >= v12)
    {
      v22 = *a1;
      if (*(a1 + 24))
      {
        v23 = 0;
        v24 = v10 + 1;
        v25 = (v22 + v24);
        do
        {
          if (v24 >= v9)
          {
            v26 = 0;
          }

          else
          {
            v26 = *v25;
          }

          v27 = ((v26 & (0xFFFF << (8 - v11))) >> (8 - v11)) | ((((1 << (8 - v11)) + 255) & *(v25 - 1)) << v11);
          a1[2] = v24;
          buf[v23++] = v27;
          ++v25;
          ++v24;
        }

        while (v23 != 4);
        v28 = *buf;
      }

      else
      {
        v28 = *(v22 + v10);
        a1[2] = v10 + 4;
      }

      buf[0] = v6;
      buf[1] = 0;
      geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::ScenePropertyID const,unsigned char> const*>(a2, buf, &buf[2]);
      v29 = bswap32(v28);
      v30 = vshl_u32(vdup_n_s32(v29), 0xFFFFFFE8FFFFFFF0);
      v31.i16[0] = v29;
      v31.i16[1] = BYTE1(v29);
      v31.i16[2] = v30.u8[0];
      v31.i16[3] = v30.u8[4];
      v33 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v31)), vdupq_n_s32(0x3B808081u));
      geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(buf, &v33);
      geo::_wordColor<float,4,(geo::ColorSpace)0>(&v34, *buf);
      v32 = v34;
      *geo::intern_linear_map<gss::ScenePropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 72, v6) = v32;
      return 1;
    }

    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v13 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 67;
      v36 = 2082;
      v37 = "Could not read RGBA color.";
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v14 = MEMORY[0x1B8C61C80](a6, 67);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " STYL Parse Error Here: ", 24);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Could not read RGBA color.", 26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
  }

  else
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v17 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 66;
      v36 = 2082;
      v37 = "Found RGBA color with strange bit count.";
      _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v18 = MEMORY[0x1B8C61C80](a6, 66);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " STYL Parse Error Here: ", 24);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Found RGBA color with strange bit count.", 40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
  }

  return 0;
}

uint64_t geo::intern_linear_map<gss::ScenePropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](uint64_t a1, unsigned __int8 a2)
{
  v4 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1, a2);
  LOWORD(v5) = v4;
  if (v4 != *(a1 + 12))
  {
    return *a1 + *(a1 + 8) + 8 * v4;
  }

  if ((*(a1 + 16) & 1) == 0 && geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1, a2) == v4)
  {
    isSpaceAvailable = geo::intern_linear_map<gss::ScenePropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(a1);
    v5 = *(a1 + 12);
    if (isSpaceAvailable)
    {
      v7 = *a1;
      v7[v5] = a2;
      *&v7[8 * v5 + *(a1 + 8)] = 0;
      LOWORD(v5) = v5 + 1;
      *(a1 + 12) = v5;
      *(a1 + 17) = 0;
    }
  }

  return *a1 + *(a1 + 8) + 8 * v5 - 8;
}

uint64_t geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  v6 = *(a2 + 8);
  v5 = *(a2 + 12);
  if (*a2 >= 0.04045)
  {
    v7 = powf((v3 * 0.94787) + 0.052133, 2.4);
  }

  else
  {
    v7 = v3 * 0.077399;
  }

  if (v4 >= 0.04045)
  {
    v8 = powf((v4 * 0.94787) + 0.052133, 2.4);
  }

  else
  {
    v8 = v4 * 0.077399;
  }

  if (v6 >= 0.04045)
  {
    v9 = powf((v6 * 0.94787) + 0.052133, 2.4);
  }

  else
  {
    v9 = v6 * 0.077399;
  }

  *a1 = v7;
  *(a1 + 4) = v8;
  *(a1 + 8) = v9;
  *(a1 + 12) = v5;
  return a1;
}

uint64_t gss::stringDecoder<gss::ScenePropertyID>(uint64_t *a1, uint64_t a2, unint64_t a3, unsigned int a4, void *a5, void *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a4 >= 0x5C)
  {
    v6 = 92;
  }

  else
  {
    v6 = a4;
  }

  if (a4 > 0x5B)
  {
    return 1;
  }

  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  if (a3)
  {
    memset(__p, 0, 24);
    if (geo::ibitstream::readString(a1, __p))
    {
      v12 = *__p;
      *v29 = *&__p[16];
      *&v29[3] = *&__p[19];
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(__p, *__p, *&__p[8]);
        *v30 = *__p;
        v31 = *&__p[16];
        operator delete(v12);
      }

      else
      {
        *&__p[16] = *v29;
        *&__p[19] = *&v29[3];
        *v30 = *__p;
        v31 = *&__p[16];
      }

      v19 = HIBYTE(v31);
      v20 = HIBYTE(v31);
      if (v31 < 0)
      {
        v19 = v30[1];
      }

      v21 = (a3 >> 3) - 1;
      v7 = v19 == v21;
      if (v19 == v21)
      {
        *__p = v6;
        geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::ScenePropertyID const,unsigned char> const*>(a2, __p, &__p[2]);
        v22 = geo::intern_pool<std::string,geo::allocator_adapter<std::string,gss::zone_mallocator>,std::vector<std::string,geo::allocator_adapter<std::string,gss::zone_mallocator>>>::emplace(*a5 + 352, v30);
        v23 = geo::intern_linear_map<gss::ScenePropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 96, v6);
        *v23 = 1;
        *(v23 + 8) = v22;
        v20 = HIBYTE(v31);
      }

      else
      {
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v24 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315650;
          *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 490;
          *&__p[18] = 2082;
          *&__p[20] = "String property was an unexpected length.";
          _os_log_impl(&dword_1B2754000, v24, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", __p, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
        v25 = MEMORY[0x1B8C61C80](a6, 490);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " STYL Parse Error Here: ", 24);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "String property was an unexpected length.", 41);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "\n", 1);
      }

      if (v20 < 0)
      {
        operator delete(v30[0]);
      }
    }

    else
    {
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v15 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315650;
        *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 488;
        *&__p[18] = 2082;
        *&__p[20] = "Could not read string.";
        _os_log_impl(&dword_1B2754000, v15, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", __p, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
      v16 = MEMORY[0x1B8C61C80](a6, 488);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " STYL Parse Error Here: ", 24);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Could not read string.", 22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\n", 1);
      return 0;
    }
  }

  else
  {
    *__p = v6;
    v13 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::ScenePropertyID const,unsigned char> const*>(a2, __p, &__p[2]);
    gss::PropertySetDefaultStringValue(v13);
    v14 = geo::intern_linear_map<gss::ScenePropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 96, v6);
    v7 = 1;
    *v14 = 1;
    *(v14 + 8) = &gss::PropertySetDefaultStringValue(void)::defaultStringValue;
  }

  return v7;
}

uint64_t geo::ibitstream::readString(uint64_t *a1, std::string *this)
{
  v4 = *(a1 + 24);
  v5 = a1[1];
  v6 = a1[2];
  if (!v4)
  {
    v12 = v5 - v6;
    if (v12)
    {
      v13 = 0;
      while (*(*a1 + v6 + v13))
      {
        if (v12 == ++v13)
        {
          return 0;
        }
      }

      std::string::resize(this, v13, 0);
      std::string::__assign_external(this, (*a1 + a1[2]), v13);
      v22 = v13 + a1[2];
      goto LABEL_26;
    }

    return 0;
  }

  v7 = v5 + ~v6;
  if (!v7)
  {
LABEL_9:
    std::string::resize(this, v7, 0);
    return 0;
  }

  v8 = 0;
  v9 = *a1 + v6;
  v10 = v6 + 1;
  while (1)
  {
    v11 = v10 + v8 >= v5 ? 0 : *(v9 + v8 + 1);
    if (!(((v11 & (0xFFFF << (8 - v4))) >> (8 - v4)) | ((((1 << (8 - v4)) + 255) & *(v9 + v8)) << v4)))
    {
      break;
    }

    if (v7 == ++v8)
    {
      goto LABEL_9;
    }
  }

  std::string::resize(this, v8, 0);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v16 = a1[2];
      v17 = v16 + 1;
      v18 = *a1;
      if (v16 + 1 >= a1[1])
      {
        v19 = 0;
      }

      else
      {
        v19 = *(v18 + v17);
      }

      v20 = ((((1 << (8 - *(a1 + 24))) - 1) & *(v18 + v16)) << *(a1 + 24)) | (((0xFFFF << (8 - *(a1 + 24))) & v19) >> (8 - *(a1 + 24)));
      a1[2] = v17;
      if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = this;
      }

      else
      {
        v21 = this->__r_.__value_.__r.__words[0];
      }

      v21->__r_.__value_.__s.__data_[i] = v20;
    }
  }

  v22 = a1[2];
LABEL_26:
  a1[2] = v22 + 1;
  return 1;
}

char *geo::intern_pool<std::string,geo::allocator_adapter<std::string,gss::zone_mallocator>,std::vector<std::string,geo::allocator_adapter<std::string,gss::zone_mallocator>>>::emplace(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*a1 == v4 || (v5 = *(v4 - 16), v6 = *(v5 + 8), 0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 3) == *(a1 + 24)))
  {
    v7 = gss::zone_mallocator::instance(a1);
    geo::read_write_lock::read_lock((v7 + 32));
    v8 = malloc_type_zone_malloc(*v7, 0x40uLL, 0x10810407559D7D1uLL);
    atomic_fetch_add((v7 + 24), 1u);
    geo::read_write_lock::unlock((v7 + 32));
    v8->__shared_owners_ = 0;
    v8->__shared_weak_owners_ = 0;
    v8->__vftable = &unk_1F2A5DB80;
    v8[1].__shared_owners_ = 0;
    p_shared_owners = &v8[1].__shared_owners_;
    v8[1].__shared_weak_owners_ = 0;
    v8[2].__vftable = 0;
    v11 = *(a1 + 24);
    if (v11)
    {
      v52 = &v8[2].__shared_owners_;
      v12 = gss::zone_mallocator::instance(v9);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::string>(v12, v11);
      v14 = &v13[24 * v11];
      shared_owners = v8[1].__shared_owners_;
      v16 = v8[1].__shared_weak_owners_ - shared_owners;
      v17 = &v13[-v16];
      memcpy(&v13[-v16], shared_owners, v16);
      v18 = v8[1].__shared_owners_;
      v8[1].__shared_owners_ = v17;
      v8[1].__shared_weak_owners_ = v13;
      v19 = v8[2].__vftable;
      v8[2].__vftable = v14;
      v50 = v18;
      v51 = v19;
      v48 = v18;
      v49 = v18;
      std::__split_buffer<std::string,geo::allocator_adapter<std::string,gss::zone_mallocator> &>::~__split_buffer(&v48);
    }

    v20 = *(a1 + 8);
    v21 = *(a1 + 16);
    if (v20 >= v21)
    {
      v23 = (v20 - *a1) >> 4;
      v24 = v23 + 1;
      if ((v23 + 1) >> 60)
      {
        std::vector<unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::__throw_length_error[abi:ne200100]();
      }

      v25 = v21 - *a1;
      if (v25 >> 3 > v24)
      {
        v24 = v25 >> 3;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFF0)
      {
        v26 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        if (!(v26 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v27 = (16 * v23);
      *v27 = p_shared_owners;
      v27[1] = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = 16 * v23 + 16;
      v28 = *a1;
      v29 = *(a1 + 8) - *a1;
      v30 = v27 - v29;
      memcpy(v27 - v29, *a1, v29);
      *a1 = v30;
      *(a1 + 8) = v22;
      *(a1 + 16) = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v20 = p_shared_owners;
      v20[1] = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = (v20 + 2);
    }

    *(a1 + 8) = v22;
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    v5 = *(*(a1 + 8) - 16);
    v6 = *(v5 + 8);
  }

  v31 = *(v5 + 16);
  if (v6 >= v31)
  {
    v34 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 3);
    v35 = v34 + 1;
    if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::__throw_length_error[abi:ne200100]();
    }

    v36 = 0xAAAAAAAAAAAAAAABLL * ((v31 - *v5) >> 3);
    if (2 * v36 > v35)
    {
      v35 = 2 * v36;
    }

    if (v36 >= 0x555555555555555)
    {
      v37 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v37 = v35;
    }

    v52 = (v5 + 24);
    if (v37)
    {
      v38 = gss::zone_mallocator::instance(a1);
      v39 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::string>(v38, v37);
    }

    else
    {
      v39 = 0;
    }

    v40 = &v39[24 * v34];
    v41 = &v39[24 * v37];
    v42 = *a2;
    *(v40 + 2) = *(a2 + 2);
    *v40 = v42;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v33 = v40 + 24;
    v43 = *(v5 + 8) - *v5;
    v44 = &v40[-v43];
    memcpy(&v40[-v43], *v5, v43);
    v45 = *v5;
    *v5 = v44;
    v48 = v45;
    v49 = v45;
    *(v5 + 8) = v33;
    v50 = v45;
    v46 = *(v5 + 16);
    *(v5 + 16) = v41;
    v51 = v46;
    std::__split_buffer<std::string,geo::allocator_adapter<std::string,gss::zone_mallocator> &>::~__split_buffer(&v48);
  }

  else
  {
    v32 = *a2;
    *(v6 + 16) = *(a2 + 2);
    *v6 = v32;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v33 = (v6 + 24);
  }

  *(v5 + 8) = v33;
  return v33 - 24;
}

uint64_t geo::intern_linear_map<gss::ScenePropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](uint64_t a1, unsigned __int8 a2)
{
  v4 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1, a2);
  v5 = v4;
  if (v4 != *(a1 + 12))
  {
    return *a1 + *(a1 + 8) + 16 * v4;
  }

  if ((*(a1 + 16) & 1) == 0 && geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1, a2) == v4)
  {
    isSpaceAvailable = geo::intern_linear_map<gss::ScenePropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(a1);
    v7 = *(a1 + 12);
    v5 = *(a1 + 12);
    if (isSpaceAvailable)
    {
      v8 = *a1;
      v8[v7] = a2;
      v9 = &v8[16 * v7 + *(a1 + 8)];
      *v9 = 0;
      *(v9 + 1) = *v11;
      *(v9 + 4) = *&v11[3];
      *(v9 + 8) = 0;
      v5 = *(a1 + 12) + 1;
      *(a1 + 12) = v5;
      *(a1 + 17) = 0;
    }
  }

  return *a1 + *(a1 + 8) + 16 * v5 - 16;
}

uint64_t std::__function::__value_func<void ()(unsigned char *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::vector<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>::__emplace_back_slow_path<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>(uint64_t *a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v6 = *a2;
  *a2 = 0;
  *(40 * v2) = v6;
  std::__function::__value_func<void ()(unsigned char *)>::__value_func[abi:nn200100](40 * v2 + 8, (a2 + 1));
  v7 = *a1;
  v8 = a1[1];
  v9 = 40 * v2 - (v8 - *a1);
  if (v8 != *a1)
  {
    v10 = 40 * v2 - 8 * ((v8 - *a1) >> 3) + 8;
    v11 = *a1;
    do
    {
      v12 = (v11 + 1);
      v13 = *v11;
      *v11 = 0;
      v11 += 5;
      *(v10 - 8) = v13;
      v10 = std::__function::__value_func<void ()(unsigned char *)>::__value_func[abi:nn200100](v10, v12) + 40;
    }

    while (v11 != v8);
    do
    {
      std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>::~unique_ptr[abi:nn200100](v7);
      v7 += 5;
    }

    while (v7 != v8);
  }

  v14 = *a1;
  *a1 = v9;
  *(a1 + 1) = 40 * v2 + 40;
  if (v14)
  {
    operator delete(v14);
  }

  return 40 * v2 + 40;
}

uint64_t std::__function::__value_func<void ()(unsigned char *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(gss::ScenePropertyID*,unsigned char *,BOOL)::{lambda(unsigned long,unsigned long)#1} &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = a2 - v11;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v86 = *v10;
        v87 = *v11;
        if (*(**a3 + v86) >= *(**a3 + v87))
        {
          return result;
        }

        *v11 = v86;
LABEL_178:
        *v10 = v87;
        return result;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v94 = v11 + 1;
      v95 = v11[1];
      v96 = v11 + 2;
      v97 = v11[2];
      v98 = *v11;
      v99 = **a3;
      v100 = *(v99 + v95);
      v101 = *(v99 + v98);
      v102 = v97;
      v103 = *(v99 + v97);
      if (v100 >= v101)
      {
        if (v103 < v100)
        {
          v104 = v11;
          *v94 = v97;
          *v96 = v95;
          result = (v11 + 1);
          v105 = v95;
          v97 = v95;
          if (v103 < v101)
          {
            goto LABEL_180;
          }

LABEL_182:
          v157 = *v10;
          if (*(v99 + v157) < *(v99 + v97))
          {
            *v96 = v157;
            *v10 = v95;
            v158 = *v96;
            v159 = *v94;
            v160 = *(v99 + v158);
            if (v160 < *(v99 + v159))
            {
              v11[1] = v158;
              v11[2] = v159;
              v161 = *v11;
              if (v160 < *(v99 + v161))
              {
                *v11 = v158;
                v11[1] = v161;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v103 < v100)
        {
          v104 = v11;
          result = (v11 + 2);
          v105 = *v11;
          LODWORD(v95) = *v11;
          goto LABEL_180;
        }

        v104 = v11 + 1;
        *v11 = v95;
        v11[1] = v98;
        result = (v11 + 2);
        v105 = v98;
        LODWORD(v95) = v98;
        if (v103 < v101)
        {
LABEL_180:
          *v104 = v102;
          *result = v98;
          v97 = v105;
          goto LABEL_182;
        }
      }

      LODWORD(v95) = v97;
      goto LABEL_182;
    }

    if (v12 == 5)
    {
      v85 = **a3;

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(gss::ScenePropertyID*,unsigned char *,BOOL)::{lambda(unsigned long,unsigned long)#1} &,unsigned int *,0>(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, v85);
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v106 = v11 + 1;
          if (v11 + 1 != a2)
          {
            v107 = 0;
            v108 = **a3;
            v109 = v11;
            do
            {
              v111 = *v109;
              v110 = v109[1];
              v109 = v106;
              v112 = *(v108 + v110);
              if (v112 < *(v108 + v111))
              {
                v113 = v107;
                while (1)
                {
                  *(v11 + v113 + 4) = v111;
                  if (!v113)
                  {
                    break;
                  }

                  v111 = *(v11 + v113 - 4);
                  v113 -= 4;
                  if (v112 >= *(v108 + v111))
                  {
                    v114 = (v11 + v113 + 4);
                    goto LABEL_122;
                  }
                }

                v114 = v11;
LABEL_122:
                *v114 = v110;
              }

              v106 = v109 + 1;
              v107 += 4;
            }

            while (v109 + 1 != a2);
          }
        }
      }

      else if (v11 != a2)
      {
        v150 = v11 + 1;
        if (v11 + 1 != a2)
        {
          v151 = **a3;
          do
          {
            v153 = *v9;
            v152 = v9[1];
            v9 = v150;
            v154 = *(v151 + v152);
            if (v154 < *(v151 + v153))
            {
              v155 = v9;
              do
              {
                *v155 = v153;
                v153 = *(v155 - 2);
                --v155;
              }

              while (v154 < *(v151 + v153));
              *v155 = v152;
            }

            v150 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v115 = (v12 - 2) >> 1;
        v116 = *a3;
        v117 = v115;
        do
        {
          v118 = v117;
          if (v115 >= v117)
          {
            v119 = (2 * v117) | 1;
            v120 = &v11[v119];
            v121 = *v120;
            if (2 * v118 + 2 >= v12)
            {
              v122 = *v116;
            }

            else
            {
              v122 = *v116;
              if (*(*v116 + v121) < *(*v116 + v120[1]))
              {
                v121 = v120[1];
                ++v120;
                v119 = 2 * v118 + 2;
              }
            }

            v123 = &v11[v118];
            v124 = *v123;
            v125 = *(v122 + v124);
            if (*(v122 + v121) >= v125)
            {
              do
              {
                v126 = v120;
                *v123 = v121;
                if (v115 < v119)
                {
                  break;
                }

                v127 = (2 * v119) | 1;
                v120 = &v11[v127];
                v119 = 2 * v119 + 2;
                v121 = *v120;
                if (v119 >= v12)
                {
                  v119 = v127;
                }

                else if (*(v122 + v121) >= *(v122 + v120[1]))
                {
                  v119 = v127;
                }

                else
                {
                  v121 = v120[1];
                  ++v120;
                }

                v123 = v126;
              }

              while (*(v122 + v121) >= v125);
              *v126 = v124;
            }
          }

          v117 = v118 - 1;
        }

        while (v118);
        v128 = *a3;
        do
        {
          v129 = 0;
          v130 = *v11;
          v131 = *a3;
          v132 = v11;
          do
          {
            result = &v132[v129];
            v133 = (result + 4);
            v134 = *(result + 4);
            v135 = (2 * v129) | 1;
            v129 = 2 * v129 + 2;
            if (v129 >= v12)
            {
              v129 = v135;
            }

            else
            {
              v137 = *(result + 8);
              result += 8;
              v136 = v137;
              if (*(*v131 + v134) >= *(*v131 + v137))
              {
                v129 = v135;
              }

              else
              {
                v134 = v136;
                v133 = result;
              }
            }

            *v132 = v134;
            v132 = v133;
          }

          while (v129 <= (v12 - 2) / 2);
          if (v133 == --a2)
          {
            *v133 = v130;
          }

          else
          {
            *v133 = *a2;
            *a2 = v130;
            v138 = (v133 - v11 + 4) >> 2;
            v139 = v138 < 2;
            v140 = v138 - 2;
            if (!v139)
            {
              v141 = v140 >> 1;
              v142 = &v11[v141];
              v143 = *v142;
              v144 = *v133;
              v145 = *v128;
              v146 = *(*v128 + v144);
              if (*(*v128 + v143) < v146)
              {
                do
                {
                  v147 = v142;
                  *v133 = v143;
                  if (!v141)
                  {
                    break;
                  }

                  v141 = (v141 - 1) >> 1;
                  v142 = &v11[v141];
                  v143 = *v142;
                  result = *(v145 + v143);
                  v133 = v147;
                }

                while (result < v146);
                *v147 = v144;
              }
            }
          }

          v139 = v12-- <= 2;
        }

        while (!v139);
      }

      return result;
    }

    v13 = &v11[v12 >> 1];
    v14 = v13;
    v15 = **a3;
    v16 = *v10;
    v17 = *(v15 + v16);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v11;
      v20 = *(v15 + v18);
      v21 = *(v15 + v19);
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          *v10 = v18;
          v26 = *v13;
          v27 = *v11;
          if (*(v15 + v26) < *(v15 + v27))
          {
            *v11 = v26;
            *v13 = v27;
          }
        }
      }

      else
      {
        if (v17 < v20)
        {
          *v11 = v16;
          goto LABEL_27;
        }

        *v11 = v18;
        *v13 = v19;
        v30 = *v10;
        if (*(v15 + v30) < v21)
        {
          *v13 = v30;
LABEL_27:
          *v10 = v19;
        }
      }

      v31 = v13 - 1;
      v32 = *(v13 - 1);
      v33 = v11[1];
      v34 = *(v15 + v32);
      v35 = *(v15 + v33);
      v36 = *(a2 - 2);
      v37 = *(v15 + v36);
      if (v34 >= v35)
      {
        if (v37 < v34)
        {
          *v31 = v36;
          *(a2 - 2) = v32;
          v38 = *v31;
          v39 = v11[1];
          if (*(v15 + v38) < *(v15 + v39))
          {
            v11[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 < v34)
        {
          v11[1] = v36;
          goto LABEL_39;
        }

        v11[1] = v32;
        *v31 = v33;
        v41 = *(a2 - 2);
        if (*(v15 + v41) < v35)
        {
          *v31 = v41;
LABEL_39:
          *(a2 - 2) = v33;
        }
      }

      v44 = v13[1];
      v42 = v13 + 1;
      v43 = v44;
      v45 = v11[2];
      v46 = *(v15 + v44);
      v47 = *(v15 + v45);
      v48 = *(a2 - 3);
      v49 = *(v15 + v48);
      if (v46 >= v47)
      {
        if (v49 < v46)
        {
          *v42 = v48;
          *(a2 - 3) = v43;
          v50 = *v42;
          v51 = v11[2];
          if (*(v15 + v50) < *(v15 + v51))
          {
            v11[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 < v46)
        {
          v11[2] = v48;
          goto LABEL_48;
        }

        v11[2] = v43;
        *v42 = v45;
        v52 = *(a2 - 3);
        if (*(v15 + v52) < v47)
        {
          *v42 = v52;
LABEL_48:
          *(a2 - 3) = v45;
        }
      }

      v53 = *v14;
      v54 = *v31;
      v55 = *(v15 + v53);
      v56 = *(v15 + v54);
      v57 = *v42;
      v58 = *(v15 + v57);
      if (v55 >= v56)
      {
        if (v58 >= v55)
        {
          goto LABEL_56;
        }

        *v14 = v57;
        *v42 = v53;
        v42 = v14;
        LODWORD(v53) = v54;
        if (v58 >= v56)
        {
          LODWORD(v53) = v57;
          goto LABEL_56;
        }
      }

      else if (v58 >= v55)
      {
        *v31 = v53;
        *v14 = v54;
        v31 = v14;
        LODWORD(v53) = v57;
        if (v58 >= v56)
        {
          LODWORD(v53) = v54;
LABEL_56:
          v59 = *v11;
          *v11 = v53;
          *v14 = v59;
          goto LABEL_57;
        }
      }

      *v31 = v57;
      *v42 = v54;
      goto LABEL_56;
    }

    v22 = *v11;
    v23 = *v14;
    v24 = *(v15 + v22);
    v25 = *(v15 + v23);
    if (v24 >= v25)
    {
      if (v17 < v24)
      {
        *v11 = v16;
        *v10 = v22;
        v28 = *v11;
        v29 = *v14;
        if (*(v15 + v28) < *(v15 + v29))
        {
          *v14 = v28;
          *v11 = v29;
        }
      }

      goto LABEL_57;
    }

    if (v17 < v24)
    {
      *v14 = v16;
LABEL_36:
      *v10 = v23;
      goto LABEL_57;
    }

    *v14 = v22;
    *v11 = v23;
    v40 = *v10;
    if (*(v15 + v40) < v25)
    {
      *v11 = v40;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v60 = *v11;
    if (a5)
    {
      v61 = *(v15 + v60);
LABEL_60:
      v62 = v11;
      do
      {
        v63 = v62;
        v65 = v62[1];
        ++v62;
        v64 = v65;
      }

      while (*(v15 + v65) < v61);
      v66 = a2;
      if (v63 == v11)
      {
        v66 = a2;
        do
        {
          if (v62 >= v66)
          {
            break;
          }

          v68 = *--v66;
        }

        while (*(v15 + v68) >= v61);
      }

      else
      {
        do
        {
          v67 = *--v66;
        }

        while (*(v15 + v67) >= v61);
      }

      if (v62 < v66)
      {
        v69 = *v66;
        v70 = v64;
        v71 = v62;
        v72 = v66;
        do
        {
          *v71 = v69;
          *v72 = v70;
          do
          {
            v63 = v71;
            v73 = v71[1];
            ++v71;
            v70 = v73;
          }

          while (*(v15 + v73) < v61);
          do
          {
            v74 = *--v72;
            v69 = v74;
          }

          while (*(v15 + v74) >= v61);
        }

        while (v71 < v72);
      }

      if (v63 != v11)
      {
        *v11 = *v63;
      }

      *v63 = v60;
      if (v62 < v66)
      {
        goto LABEL_79;
      }

      v75 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(gss::ScenePropertyID*,unsigned char *,BOOL)::{lambda(unsigned long,unsigned long)#1} &,unsigned int *>(v11, v63, *a3);
      v11 = v63 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(gss::ScenePropertyID*,unsigned char *,BOOL)::{lambda(unsigned long,unsigned long)#1} &,unsigned int *>(v63 + 1, a2, *a3);
      if (result)
      {
        a2 = v63;
        if (!v75)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v75)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(gss::ScenePropertyID*,unsigned char *,BOOL)::{lambda(unsigned long,unsigned long)#1} &,unsigned int *,false>(v9, v63, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v63 + 1;
      }
    }

    else
    {
      v61 = *(v15 + v60);
      if (*(v15 + *(v11 - 1)) < v61)
      {
        goto LABEL_60;
      }

      if (v61 >= *(v15 + *v10))
      {
        v77 = v11 + 1;
        do
        {
          v11 = v77;
          if (v77 >= a2)
          {
            break;
          }

          ++v77;
        }

        while (v61 >= *(v15 + *v11));
      }

      else
      {
        do
        {
          v76 = v11[1];
          ++v11;
        }

        while (v61 >= *(v15 + v76));
      }

      v78 = a2;
      if (v11 < a2)
      {
        v78 = a2;
        do
        {
          v79 = *--v78;
        }

        while (v61 < *(v15 + v79));
      }

      if (v11 < v78)
      {
        v80 = *v11;
        v81 = *v78;
        do
        {
          *v11 = v81;
          *v78 = v80;
          do
          {
            v82 = v11[1];
            ++v11;
            v80 = v82;
          }

          while (v61 >= *(v15 + v82));
          do
          {
            v83 = *--v78;
            v81 = v83;
          }

          while (v61 < *(v15 + v83));
        }

        while (v11 < v78);
      }

      v84 = v11 - 1;
      if (v11 - 1 != v9)
      {
        *v9 = *v84;
      }

      a5 = 0;
      *v84 = v60;
    }
  }

  v87 = *v11;
  v88 = v11[1];
  v89 = **a3;
  v90 = *(v89 + v88);
  v91 = *(v89 + v87);
  v92 = *v10;
  v93 = *(v89 + v92);
  if (v90 < v91)
  {
    if (v93 >= v90)
    {
      *v11 = v88;
      v11[1] = v87;
      v156 = *v10;
      if (*(v89 + v156) >= v91)
      {
        return result;
      }

      v11[1] = v156;
    }

    else
    {
      *v11 = v92;
    }

    goto LABEL_178;
  }

  if (v93 < v90)
  {
    v11[1] = v92;
    *v10 = v88;
    v149 = *v11;
    v148 = v11[1];
    if (*(v89 + v148) < *(v89 + v149))
    {
      *v11 = v148;
      v11[1] = v149;
    }
  }

  return result;
}

uint64_t gss::angle0To90Decoder<gss::ScenePropertyID>(uint64_t *a1, uint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a4 >= 0x5C)
  {
    v6 = 92;
  }

  else
  {
    v6 = a4;
  }

  if (a4 > 0x5B)
  {
    return 1;
  }

  v9 = a3;
  if (a3 <= 9)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v12 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v23 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v24 = 1024;
      v25 = 205;
      v26 = 2082;
      v27 = "Found 0° - 90° property with too few bits.";
      _os_log_impl(&dword_1B2754000, v12, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v13 = MEMORY[0x1B8C61C80](a6, 205);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " STYL Parse Error Here: ", 24);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Found 0° - 90° property with too few bits.", 44);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\n", 1);
  }

  else
  {
    geo::ibitstream::readUIntBits(v20, a1, a3);
    if (v20[0])
    {
      v11 = v21;
      buf[0] = v6;
      buf[1] = 0;
      geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::ScenePropertyID const,unsigned char> const*>(a2, buf, &buf[2]);
      *geo::intern_linear_map<gss::ScenePropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v6) = v11 / (1 << (v9 - 7));
      return 1;
    }

    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v16 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v23 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v24 = 1024;
      v25 = 206;
      v26 = 2082;
      v27 = "Could not read 0° - 90° angle.";
      _os_log_impl(&dword_1B2754000, v16, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v17 = MEMORY[0x1B8C61C80](a6, 206);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " STYL Parse Error Here: ", 24);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Could not read 0° - 90° angle.", 32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\n", 1);
  }

  return 0;
}

uint64_t gss::floatPairDecoder<gss::ScenePropertyID>(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a4 >= 0x5C)
  {
    v6 = 92;
  }

  else
  {
    v6 = a4;
  }

  if (a4 > 0x5B)
  {
    return 1;
  }

  if (a3 != 64)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v19 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      v45 = 136315650;
      v46 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v47 = 1024;
      v48 = 444;
      v49 = 2082;
      v50 = "Found float pair property with strange number of bits.";
      _os_log_impl(&dword_1B2754000, v19, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v45, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v20 = MEMORY[0x1B8C61C80](a6, 444);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " STYL Parse Error Here: ", 24);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Found float pair property with strange number of bits.", 54);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "\n", 1);
    return 0;
  }

  v45 = 0;
  v9 = a1[1];
  v10 = a1[2];
  v11 = v10 + 4;
  v12 = *(a1 + 24);
  v13 = v12 != 0;
  v14 = v10 + 5;
  if (!v12)
  {
    v14 = v10 + 4;
  }

  if (v9 >= v14)
  {
    v24 = *a1;
    if (*(a1 + 24))
    {
      v25 = 0;
      v26 = 8 - v12;
      v27 = 0xFFFF << (8 - v12);
      v28 = v24 + v10;
      do
      {
        v29 = v10 + v25 + 1;
        if (v29 >= v9)
        {
          v30 = 0;
        }

        else
        {
          v30 = *(v28 + v25 + 1);
        }

        v31 = ((v30 & v27) >> v26) | ((((1 << (8 - v12)) - 1) & *(v28 + v25)) << v12);
        a1[2] = v29;
        *(&v45 + v25++) = v31;
      }

      while (v25 != 4);
      v32 = v45;
      v45 = 0;
      if (v9 >= v10 + 3 + v13 + 5)
      {
        v33 = 0;
        v34 = v10 + 4;
        v35 = v34 + v24;
        do
        {
          v36 = v34 + v33 + 1;
          if (v36 >= v9)
          {
            v37 = 0;
          }

          else
          {
            v37 = *(v35 + v33 + 1);
          }

          v38 = ((v37 & v27) >> v26) | ((((1 << (8 - v12)) - 1) & *(v35 + v33)) << v12);
          a1[2] = v36;
          *(&v45 + v33++) = v38;
        }

        while (v33 != 4);
        v39 = v45;
        goto LABEL_41;
      }
    }

    else
    {
      v32 = *(v24 + v10);
      a1[2] = v11;
      if (v9 >= v10 + 8 + v13)
      {
        v39 = *(v24 + v11);
        a1[2] = v10 + 8;
LABEL_41:
        LOWORD(v45) = v6;
        geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::ScenePropertyID const,unsigned char> const*>(a2, &v45, &v45 + 2);
        v44 = geo::intern_linear_map<gss::ScenePropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 72, v6);
        *v44 = v32;
        v44[1] = v39;
        return 1;
      }
    }

    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v40 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      v45 = 136315650;
      v46 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v47 = 1024;
      v48 = 446;
      v49 = 2082;
      v50 = "Could not read second half of float pair.";
      _os_log_impl(&dword_1B2754000, v40, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v45, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v41 = MEMORY[0x1B8C61C80](a6, 446);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " STYL Parse Error Here: ", 24);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "Could not read second half of float pair.", 41);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "\n", 1);
    return 0;
  }

  if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
  {
    dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
  }

  v15 = GEOGetGeoCSSStyleSheetLog_log;
  if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
  {
    v45 = 136315650;
    v46 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
    v47 = 1024;
    v48 = 445;
    v49 = 2082;
    v50 = "Could not read first half of float pair.";
    _os_log_impl(&dword_1B2754000, v15, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v45, 0x1Cu);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
  v16 = MEMORY[0x1B8C61C80](a6, 445);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " STYL Parse Error Here: ", 24);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Could not read first half of float pair.", 40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\n", 1);
  return 0;
}

uint64_t gss::floatDecoder<gss::ScenePropertyID>(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a4 >= 0x5C)
  {
    v6 = 92;
  }

  else
  {
    v6 = a4;
  }

  if (a4 > 0x5B)
  {
    return 1;
  }

  if (a3 == 32)
  {
    v29 = 0;
    v9 = a1[1];
    v10 = a1[2];
    v11 = *(a1 + 24);
    v12 = v10 + 5;
    if (!v11)
    {
      v12 = v10 + 4;
    }

    if (v9 >= v12)
    {
      v22 = *a1;
      if (*(a1 + 24))
      {
        v23 = 0;
        v24 = v10 + 1;
        v25 = (v22 + v24);
        do
        {
          if (v24 >= v9)
          {
            v26 = 0;
          }

          else
          {
            v26 = *v25;
          }

          v27 = ((v26 & (0xFFFF << (8 - v11))) >> (8 - v11)) | ((((1 << (8 - v11)) + 255) & *(v25 - 1)) << v11);
          a1[2] = v24;
          *(&v29 + v23++) = v27;
          ++v25;
          ++v24;
        }

        while (v23 != 4);
        v28 = v29;
      }

      else
      {
        v28 = *(v22 + v10);
        a1[2] = v10 + 4;
      }

      LOWORD(v29) = v6;
      geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::ScenePropertyID const,unsigned char> const*>(a2, &v29, &v29 + 2);
      *geo::intern_linear_map<gss::ScenePropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v6) = v28;
      return 1;
    }

    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v13 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315650;
      v30 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v31 = 1024;
      v32 = 249;
      v33 = 2082;
      v34 = "Could not read float.";
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v29, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v14 = MEMORY[0x1B8C61C80](a6, 249);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " STYL Parse Error Here: ", 24);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Could not read float.", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
  }

  else
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v17 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315650;
      v30 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v31 = 1024;
      v32 = 248;
      v33 = 2082;
      v34 = "Found float with strange number of bits.";
      _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v29, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v18 = MEMORY[0x1B8C61C80](a6, 248);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " STYL Parse Error Here: ", 24);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Found float with strange number of bits.", 40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
  }

  return 0;
}

uint64_t gss::uint8Decoder<gss::ScenePropertyID>(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a4 >= 0x5C)
  {
    v6 = 92;
  }

  else
  {
    v6 = a4;
  }

  if (a4 > 0x5B)
  {
    return 1;
  }

  if (a3 == 8)
  {
    v9 = *(a1 + 24);
    v11 = a1[1];
    v10 = a1[2];
    v12 = v10 + 2;
    if (!v9)
    {
      v12 = v10 + 1;
    }

    if (v11 >= v12)
    {
      v22 = v10 + 1;
      v23 = *a1;
      if (*(a1 + 24))
      {
        v24 = *(v23 + v10);
        if (v22 >= v11)
        {
          v25 = 0;
        }

        else
        {
          v25 = *(v23 + v22);
        }

        a1[2] = v22;
        v26 = ((v25 & (0xFFFF << (8 - v9))) >> (8 - v9)) | ((((1 << (8 - v9)) + 255) & v24) << v9);
      }

      else
      {
        LOBYTE(v26) = *(v23 + v10);
        a1[2] = v22;
      }

      LOWORD(v27) = v6;
      geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::ScenePropertyID const,unsigned char> const*>(a2, &v27, &v27 + 2);
      *geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 24, v6) = v26;
      return 1;
    }

    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v13 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315650;
      v28 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v29 = 1024;
      v30 = 141;
      v31 = 2082;
      v32 = "Could not read uint8.";
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v27, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v14 = MEMORY[0x1B8C61C80](a6, 141);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " STYL Parse Error Here: ", 24);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Could not read uint8.", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
  }

  else
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v17 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315650;
      v28 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v29 = 1024;
      v30 = 140;
      v31 = 2082;
      v32 = "Found uint8 property with strange number of bits.";
      _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v27, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v18 = MEMORY[0x1B8C61C80](a6, 140);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " STYL Parse Error Here: ", 24);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Found uint8 property with strange number of bits.", 49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
  }

  return 0;
}

uint64_t geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](uint64_t a1, unsigned __int8 a2)
{
  v4 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1, a2);
  if (v4 != *(a1 + 12))
  {
    return *a1 + *(a1 + 8) + v4;
  }

  v6[0] = a2;
  v6[1] = 0;
  geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::ScenePropertyID const,unsigned char> const*>(a1, v6, &v7);
  return *a1 + *(a1 + 8) + *(a1 + 12) - 1;
}

uint64_t gss::BOOLDecoder<gss::ScenePropertyID>(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a4 >= 0x5C)
  {
    v6 = 92;
  }

  else
  {
    v6 = a4;
  }

  if (a4 > 0x5B)
  {
    return 1;
  }

  if (a3 != 1)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v18 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      v30 = 136315650;
      v31 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v32 = 1024;
      v33 = 46;
      v34 = 2082;
      v35 = "Found BOOLean property with strange bit count.";
      _os_log_impl(&dword_1B2754000, v18, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v30, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v19 = MEMORY[0x1B8C61C80](a6, 46);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " STYL Parse Error Here: ", 24);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Found BOOLean property with strange bit count.", 46);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "\n", 1);
    return 0;
  }

  v10 = *(a1 + 24);
  v12 = a1[1];
  v11 = a1[2];
  v13 = v11 + ((v10 + 1) >> 3);
  v14 = (v10 + 1) & 7;
  v15 = v11 + 1;
  if (v13 >= v11 + 1)
  {
    if (v10 <= 7)
    {
      v22 = v11 + 1;
    }

    else
    {
      v22 = v11 + 2;
    }

    if (v12 >= v22)
    {
      v27 = *a1;
      if (*(a1 + 24))
      {
        v28 = *(v27 + v11);
        if (v15 >= v12)
        {
          v29 = 0;
        }

        else
        {
          v29 = *(v27 + v15);
        }

        v17 = ((v29 & (0xFFFF << (8 - v10))) >> (8 - v10)) | ((((1 << (8 - v10)) + 255) & v28) << v10);
      }

      else
      {
        LOBYTE(v17) = *(v27 + v11);
      }

      goto LABEL_39;
    }
  }

  else
  {
    if (*(a1 + 24))
    {
      v16 = v11 + 1;
    }

    else
    {
      v16 = a1[2];
    }

    if (v12 < v16)
    {
      goto LABEL_25;
    }

    if (*(a1 + 24))
    {
      if (v12 >= v15)
      {
        v17 = (((1 << (8 - v10)) - 1) & *(*a1 + v11)) << v10;
LABEL_39:
        a1[2] = v13;
        *(a1 + 24) = v14;
        LOWORD(v30) = v6;
        geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::ScenePropertyID const,unsigned char> const*>(a2, &v30, &v30 + 2);
        *geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 24, v6) = (v17 & 0x80) != 0;
        return 1;
      }
    }

    else if (v12 >= v15)
    {
      LOBYTE(v17) = *(*a1 + v11);
      goto LABEL_39;
    }
  }

  a1[2] = v13;
  *(a1 + 24) = v14;
LABEL_25:
  if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
  {
    dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
  }

  v23 = GEOGetGeoCSSStyleSheetLog_log;
  if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
  {
    v30 = 136315650;
    v31 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
    v32 = 1024;
    v33 = 47;
    v34 = 2082;
    v35 = "Could not read BOOLean property.";
    _os_log_impl(&dword_1B2754000, v23, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v30, 0x1Cu);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
  v24 = MEMORY[0x1B8C61C80](a6, 47);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " STYL Parse Error Here: ", 24);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Could not read BOOLean property.", 32);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "\n", 1);
  return 0;
}

uint64_t gss::fixedPoint5_3Decoder<gss::ScenePropertyID>(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a4 >= 0x5C)
  {
    v6 = 92;
  }

  else
  {
    v6 = a4;
  }

  if (a4 > 0x5B)
  {
    return 1;
  }

  if (a3 == 8)
  {
    v9 = *(a1 + 24);
    v11 = a1[1];
    v10 = a1[2];
    v12 = v10 + 2;
    if (!v9)
    {
      v12 = v10 + 1;
    }

    if (v11 >= v12)
    {
      v22 = v10 + 1;
      v23 = *a1;
      if (*(a1 + 24))
      {
        v24 = *(v23 + v10);
        if (v22 >= v11)
        {
          v25 = 0;
        }

        else
        {
          v25 = *(v23 + v22);
        }

        a1[2] = v22;
        v26 = ((v25 & (0xFFFF << (8 - v9))) >> (8 - v9)) | ((((1 << (8 - v9)) + 255) & v24) << v9);
      }

      else
      {
        LOBYTE(v26) = *(v23 + v10);
        a1[2] = v22;
      }

      LOWORD(v27) = v6;
      geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::ScenePropertyID const,unsigned char> const*>(a2, &v27, &v27 + 2);
      *geo::intern_linear_map<gss::ScenePropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v6) = vcvts_n_f32_u32(v26, 3uLL);
      return 1;
    }

    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v13 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315650;
      v28 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v29 = 1024;
      v30 = 270;
      v31 = 2082;
      v32 = "Could not read fixed point 5.3.";
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v27, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v14 = MEMORY[0x1B8C61C80](a6, 270);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " STYL Parse Error Here: ", 24);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Could not read fixed point 5.3.", 31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
  }

  else
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v17 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315650;
      v28 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v29 = 1024;
      v30 = 269;
      v31 = 2082;
      v32 = "Found fixed point 5.3 property with strange number of bits.";
      _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v27, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v18 = MEMORY[0x1B8C61C80](a6, 269);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " STYL Parse Error Here: ", 24);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Found fixed point 5.3 property with strange number of bits.", 59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
  }

  return 0;
}

void geo::intern_vector<gss::ZoomStyle<gss::ScenePropertyID>,unsigned short,geo::allocator_adapter<gss::ZoomStyle<gss::ScenePropertyID>,gss::zone_mallocator>>::resize(uint64_t a1, unint64_t a2)
{
  if ((*(a1 + 12) & 1) == 0)
  {
    v4 = *(a1 + 8);
    if (v4 > a2)
    {
      v5 = 24 * *(a1 + 8) - 24 * a2;
      v6 = (*a1 + 24 * a2 + 16);
      do
      {
        if (*v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*v6);
        }

        v6 += 3;
        v5 -= 24;
      }

      while (v5);
LABEL_7:
      *(a1 + 8) = a2;
      return;
    }

    if (v4 < a2)
    {
      if (*(a1 + 10) >= a2)
      {
        v10 = *a1;
      }

      else
      {
        v7 = gss::zone_mallocator::instance(a1);
        v8 = pthread_rwlock_rdlock((v7 + 32));
        if (v8)
        {
          geo::read_write_lock::logFailure(v8, "read lock", v9);
        }

        v10 = malloc_type_zone_malloc(*v7, 24 * a2, 0x102004023CB03E4uLL);
        atomic_fetch_add((v7 + 24), 1u);
        geo::read_write_lock::unlock((v7 + 32));
        v11 = *a1;
        v4 = *(a1 + 8);
        if (*a1)
        {
          if (*(a1 + 8))
          {
            v12 = *(a1 + 8);
            v13 = v10;
            do
            {
              *v13 = *v11;
              *(v13 + 8) = *(v11 + 8);
              *(v11 + 1) = 0;
              *(v11 + 2) = 0;
              v13 += 24;
              v11 += 24;
              --v12;
            }

            while (v12);
          }

          geo::intern_vector<gss::ZoomStyle<gss::ScenePropertyID>,unsigned short,geo::allocator_adapter<gss::ZoomStyle<gss::ScenePropertyID>,gss::zone_mallocator>>::deallocateStorage(a1);
          *(a1 + 8) = v4;
        }

        *(a1 + 10) = a2;
        *a1 = v10;
      }

      if (v4 != a2)
      {
        v14 = &v10[24 * v4];
        v15 = 24 * a2 - 24 * v4;
        do
        {
          *v14 = 0;
          *(v14 + 1) = 0;
          *(v14 + 2) = 0;
          v14 += 24;
          v15 -= 24;
        }

        while (v15);
      }

      goto LABEL_7;
    }
  }
}

void geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::intern<geo::allocator_adapter<unsigned int,gss::zone_mallocator>>(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 12) & 1) == 0)
  {
    v3 = *(a1 + 8);
    if (!*(a1 + 8))
    {
LABEL_12:
      *(a1 + 12) = 1;
      return;
    }

    if (*(a2 + 24) >= v3)
    {
      v4 = *(a2 + 8);
      if (*a2 == v4 || (v5 = *(v4 - 8), v6 = v5[1], v5[2] - v6 < v3))
      {
        operator new();
      }

      v7 = *v5;
      v5[1] = v6 + v3;
      if (v7)
      {
        v8 = (v7 + 4 * v6);
        v9 = *(a1 + 8);
        if (v9)
        {
          v10 = *a1;
          v11 = *(a1 + 8);
          v12 = v8;
          do
          {
            v13 = *v10++;
            *v12++ = v13;
            --v11;
          }

          while (v11);
        }

        geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::deallocateStorage(a1);
        *(a1 + 8) = v9;
        *(a1 + 10) = 0;
        *a1 = v8;
        goto LABEL_12;
      }
    }
  }
}

void sub_1B2844964(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::copy(uint64_t a1, uint64_t a2)
{
  geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::deallocateStorage(a1);
  v4 = *a2;
  if (*(a2 + 12) == 1)
  {
    *a1 = v4;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = 1;
  }

  else
  {
    v5 = *(a2 + 8);
    v6 = *(a1 + 10);
    v7 = *(a1 + 8);
    if (v6 - v7 < v5)
    {
      v8 = v5 + v7 > v6 && (v5 + v7) >> 16 == 0;
      if (v8 && (*(a1 + 12) & 1) == 0)
      {
        geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::reallocate(a1, v5 + v7);
        v7 = *(a1 + 8);
      }
    }

    if (v5)
    {
      v9 = (*a1 + 4 * v7);
      v10 = 4 * v5;
      do
      {
        v11 = *v4++;
        *v9++ = v11;
        v10 -= 4;
      }

      while (v10);
    }

    *(a1 + 8) = v7 + v5;
  }
}

void geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::deallocateStorage(uint64_t a1)
{
  if ((*(a1 + 12) & 1) == 0)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = gss::zone_mallocator::instance(a1);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned int>(v3, v2);
    }
  }

  *(a1 + 5) = 0;
  *a1 = 0;
}

void geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::push_back(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  if (v4 != 0xFFFF && (*(a1 + 12) & 1) == 0 && v4 >= *(a1 + 10))
  {
    geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::reallocate(a1, v4 + 1);
    v4 = *(a1 + 8);
  }

  *(*a1 + 4 * v4) = *a2;
  *(a1 + 8) = v4 + 1;
}

uint64_t **std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,unsigned int>,gss::zone_mallocator>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t **a1, unsigned int a2, _DWORD **a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 7);
        if (v8 <= a2)
        {
          break;
        }

        v5 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= a2)
      {
        return v7;
      }

      v5 = v7[1];
      if (!v5)
      {
        v6 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = a1 + 1;
LABEL_9:
    v9 = gss::zone_mallocator::instance(a1);
    v10 = pthread_rwlock_rdlock((v9 + 32));
    if (v10)
    {
      geo::read_write_lock::logFailure(v10, "read lock", v11);
    }

    v12 = malloc_type_zone_malloc(*v9, 0x28uLL, 0x10200400DDAB779uLL);
    atomic_fetch_add((v9 + 24), 1u);
    geo::read_write_lock::unlock((v9 + 32));
    v12[7] = **a3;
    v12[8] = 0;
    *v12 = 0;
    *(v12 + 1) = 0;
    *(v12 + 2) = v7;
    *v6 = v12;
    v13 = **a1;
    v14 = v12;
    if (v13)
    {
      *a1 = v13;
      v14 = *v6;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v14);
    a1[3] = (a1[3] + 1);
  }

  return v12;
}

void geo::intern_vector<std::shared_ptr<gss::ConditionalStyle<gss::ScenePropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::ConditionalStyle<gss::ScenePropertyID>>,gss::zone_mallocator>>::deallocateStorage(uint64_t a1)
{
  v1 = a1;
  if ((*(a1 + 12) & 1) == 0)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*(a1 + 8))
      {
        v3 = 16 * *(a1 + 8);
        v4 = v2 + 1;
        do
        {
          a1 = *v4;
          if (*v4)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](a1);
          }

          v4 += 2;
          v3 -= 16;
        }

        while (v3);
        v2 = *v1;
      }

      v5 = gss::zone_mallocator::instance(a1);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v2)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v2);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(v1 + 5) = 0;
  *v1 = 0;
}

uint64_t *std::unique_ptr<gss::StyleMatchingTree<gss::CartoStyle<gss::ScenePropertyID>>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      v4 = *(v2 + 56);
      v5 = *(v2 + 48);
      if (v4 != v3)
      {
        do
        {
          v4 = std::unique_ptr<geo::intern_allocator<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,gss::zone_mallocator>>::PageInfo>>::~unique_ptr[abi:nn200100]((v4 - 8));
        }

        while (v4 != v3);
        v5 = *(v2 + 48);
      }

      *(v2 + 56) = v3;
      operator delete(v5);
    }

    geo::intern_vector<gss::MatchingGraphEndChain,unsigned short,geo::allocator_adapter<gss::MatchingGraphEndChain,gss::zone_mallocator>>::deallocateStorage((v2 + 32));
    geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>,unsigned int,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>,gss::zone_mallocator>>::deallocateStorage(v2 + 8);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t gss::StyleMatchingTree<gss::CartoStyle<gss::ScenePropertyID>>::construct(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v324 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 24);
  v11 = v10 + 5;
  v12 = a2[1];
  v13 = a2[2];
  v14 = v13 + ((v10 + 5) >> 3);
  v15 = (v10 + 5) & 7;
  v16 = v13 + 1;
  if (v14 < v13 + 1)
  {
    if (*(a2 + 24))
    {
      v17 = v13 + 1;
    }

    else
    {
      v17 = a2[2];
    }

    if (v12 < v17)
    {
      goto LABEL_14;
    }

    if (*(a2 + 24))
    {
      if (v12 >= v16)
      {
        v18 = (((1 << (8 - v10)) - 1) & *(*a2 + v13)) << v10;
        goto LABEL_25;
      }

      goto LABEL_13;
    }

    if (v12 >= v16)
    {
      LOBYTE(v18) = *(*a2 + v13);
      goto LABEL_25;
    }

LABEL_13:
    a2[2] = v14;
    *(a2 + 24) = v15;
LABEL_14:
    v20 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 167;
      v322 = 2082;
      v323 = "Could not read number of bits used for end chain counts.";
      _os_log_impl(&dword_1B2754000, v20, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v21 = MEMORY[0x1B8C61C80](a5, 167);
    v22 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v21, " STYL Parse Error Here: ", 24);
    v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, "Could not read number of bits used for end chain counts.", 56);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v23, "\n", 1);
    return 0;
  }

  if (v10 <= 3)
  {
    v19 = v13 + 1;
  }

  else
  {
    v19 = v13 + 2;
  }

  if (v12 < v19)
  {
    goto LABEL_13;
  }

  v24 = *a2;
  if (*(a2 + 24))
  {
    v25 = *(v24 + v13);
    if (v16 >= v12)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(v24 + v16);
    }

    v18 = ((v26 & (0xFFFF << (8 - v10))) >> (8 - v10)) | ((((1 << (8 - v10)) + 255) & v25) << v10);
    a2[2] = v16;
  }

  else
  {
    LOBYTE(v18) = *(v24 + v13);
  }

LABEL_25:
  a2[2] = v14;
  *(a2 + 24) = v15;
  *(a3 + 95) = (v18 >> 3) + 1;
  v27 = v11 & 7;
  v28 = (v11 & 7) + 5;
  v29 = v28 >> 3;
  v30 = v14 + v29;
  v31 = v28 & 7;
  v32 = v14 + 1;
  if (v14 + v29 < v14 + 1)
  {
    if (v15)
    {
      v33 = v14 + 1;
    }

    else
    {
      v33 = v14;
    }

    if (v12 < v33)
    {
      goto LABEL_38;
    }

    if (v15)
    {
      if (v12 >= v32)
      {
        v34 = *a2;
        v35 = (((1 << (8 - v15)) - 1) & *(*a2 + v14)) << v27;
        goto LABEL_49;
      }

      goto LABEL_37;
    }

    if (v12 >= v32)
    {
      v34 = *a2;
      goto LABEL_46;
    }

LABEL_37:
    a2[2] = v30;
    *(a2 + 24) = v31;
LABEL_38:
    v37 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 169;
      v322 = 2082;
      v323 = "Could not read number of bits used for end chain lengths.";
      _os_log_impl(&dword_1B2754000, v37, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v38 = MEMORY[0x1B8C61C80](a5, 169);
    v39 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v38, " STYL Parse Error Here: ", 24);
    v40 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v39, "Could not read number of bits used for end chain lengths.", 57);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, "\n", 1);
    return 0;
  }

  if (v15 <= 3)
  {
    v36 = v14 + 1;
  }

  else
  {
    v36 = v14 + 2;
  }

  if (v12 < v36)
  {
    goto LABEL_37;
  }

  v34 = *a2;
  if (!v15)
  {
LABEL_46:
    LOBYTE(v35) = *(v34 + v14);
    goto LABEL_49;
  }

  v41 = 8 - v15;
  v42 = *(v34 + v14);
  if (v32 >= v12)
  {
    v43 = 0;
  }

  else
  {
    v43 = *(v34 + v32);
  }

  v35 = (v43 >> v41) | ((((1 << v41) + 255) & v42) << v27);
  a2[2] = v32;
LABEL_49:
  a2[2] = v30;
  *(a2 + 24) = v31;
  v44 = v28 & 7;
  v45 = (v28 & 7) + 5;
  v46 = v30 + (v45 >> 3);
  v47 = v45 & 7;
  v48 = v30 + 1;
  if (v46 < v30 + 1)
  {
    if (v31)
    {
      v49 = v30 + 1;
    }

    else
    {
      v49 = v30;
    }

    if (v12 < v49)
    {
      goto LABEL_62;
    }

    if (v31)
    {
      if (v12 >= v48)
      {
        v50 = (((1 << (8 - v31)) - 1) & *(v34 + v30)) << v44;
        goto LABEL_72;
      }

      goto LABEL_61;
    }

    if (v12 >= v48)
    {
      goto LABEL_69;
    }

LABEL_61:
    a2[2] = v46;
    *(a2 + 24) = v47;
LABEL_62:
    v52 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 171;
      v322 = 2082;
      v323 = "Could not read number of bits used for attribute value counts.";
      _os_log_impl(&dword_1B2754000, v52, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v53 = MEMORY[0x1B8C61C80](a5, 171);
    v54 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v53, " STYL Parse Error Here: ", 24);
    v55 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v54, "Could not read number of bits used for attribute value counts.", 62);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v55, "\n", 1);
    return 0;
  }

  if (v31 <= 3)
  {
    v51 = v30 + 1;
  }

  else
  {
    v51 = v30 + 2;
  }

  if (v12 < v51)
  {
    goto LABEL_61;
  }

  if (!v31)
  {
LABEL_69:
    LOBYTE(v50) = *(v34 + v30);
    goto LABEL_72;
  }

  v56 = 8 - v31;
  v57 = *(v34 + v30);
  if (v48 >= v12)
  {
    v58 = 0;
  }

  else
  {
    v58 = *(v34 + v48);
  }

  v50 = (v58 >> v56) | ((((1 << v56) + 255) & v57) << v44);
  a2[2] = v48;
LABEL_72:
  a2[2] = v46;
  *(a2 + 24) = v47;
  v59 = v45 & 7;
  v60 = (v45 & 7) + 5;
  v61 = v46 + (v60 >> 3);
  v62 = v60 & 7;
  v63 = v46 + 1;
  if (v61 < v46 + 1)
  {
    if (v47)
    {
      v64 = v46 + 1;
    }

    else
    {
      v64 = v46;
    }

    if (v12 < v64)
    {
      goto LABEL_85;
    }

    if (v47)
    {
      if (v12 >= v63)
      {
        LODWORD(v34) = (((1 << (8 - v47)) - 1) & *(v34 + v46)) << v59;
        goto LABEL_95;
      }

      goto LABEL_84;
    }

    if (v12 >= v63)
    {
      goto LABEL_92;
    }

LABEL_84:
    a2[2] = v61;
    *(a2 + 24) = v62;
LABEL_85:
    v66 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 173;
      v322 = 2082;
      v323 = "Could not read number of bits used for node indices.";
      _os_log_impl(&dword_1B2754000, v66, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v67 = MEMORY[0x1B8C61C80](a5, 173);
    v68 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v67, " STYL Parse Error Here: ", 24);
    v69 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v68, "Could not read number of bits used for node indices.", 52);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v69, "\n", 1);
    return 0;
  }

  if (v47 <= 3)
  {
    v65 = v46 + 1;
  }

  else
  {
    v65 = v46 + 2;
  }

  if (v12 < v65)
  {
    goto LABEL_84;
  }

  if (!v47)
  {
LABEL_92:
    LOBYTE(v34) = *(v34 + v46);
    goto LABEL_95;
  }

  v70 = 8 - v47;
  v71 = *(v34 + v46);
  if (v63 >= v12)
  {
    v72 = 0;
  }

  else
  {
    v72 = *(v34 + v63);
  }

  LODWORD(v34) = (v72 >> v70) | ((((1 << v70) + 255) & v71) << v59);
  a2[2] = v63;
LABEL_95:
  a2[2] = v61;
  *(a2 + 24) = v62;
  *(a3 + 96) = (v34 >> 3) + 1;
  v73 = v60 & 7;
  v74 = (v60 & 7) + 5;
  v75 = v61 + (v74 >> 3);
  v76 = v74 & 7;
  v77 = v61 + 1;
  if (v75 < v61 + 1)
  {
    if (v62)
    {
      v78 = v61 + 1;
    }

    else
    {
      v78 = v61;
    }

    if (v12 < v78)
    {
      goto LABEL_108;
    }

    if (v62)
    {
      if (v12 >= v77)
      {
        v79 = (((1 << (8 - v62)) - 1) & *(*a2 + v61)) << v73;
        goto LABEL_119;
      }

      goto LABEL_107;
    }

    if (v12 >= v77)
    {
      LOBYTE(v79) = *(*a2 + v61);
      goto LABEL_119;
    }

LABEL_107:
    a2[2] = v75;
    *(a2 + 24) = v76;
LABEL_108:
    v81 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 175;
      v322 = 2082;
      v323 = "Could not read number of bits used for node child counts.";
      _os_log_impl(&dword_1B2754000, v81, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v82 = MEMORY[0x1B8C61C80](a5, 175);
    v83 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v82, " STYL Parse Error Here: ", 24);
    v84 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v83, "Could not read number of bits used for node child counts.", 57);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v84, "\n", 1);
    return 0;
  }

  if (v62 <= 3)
  {
    v80 = v61 + 1;
  }

  else
  {
    v80 = v61 + 2;
  }

  if (v12 < v80)
  {
    goto LABEL_107;
  }

  v85 = *a2;
  if (v62)
  {
    v86 = 8 - v62;
    v87 = *(v85 + v61);
    if (v77 >= v12)
    {
      v88 = 0;
    }

    else
    {
      v88 = *(v85 + v77);
    }

    v79 = (v88 >> v86) | ((((1 << v86) + 255) & v87) << v73);
    a2[2] = v77;
  }

  else
  {
    LOBYTE(v79) = *(v85 + v61);
  }

LABEL_119:
  a2[2] = v75;
  *(a2 + 24) = v76;
  *(a3 + 97) = (v79 >> 3) + 1;
  v89 = v74 & 7;
  v90 = v75 + ((v89 + 5) >> 3);
  v91 = (v89 + 5) & 7;
  v92 = v75 + 1;
  v93 = a2[1];
  if (v90 < v75 + 1)
  {
    if (v76)
    {
      v94 = v75 + 1;
    }

    else
    {
      v94 = v75;
    }

    if (v93 < v94)
    {
      goto LABEL_132;
    }

    if (v76)
    {
      if (v93 >= v92)
      {
        LODWORD(v75) = (((1 << (8 - v76)) - 1) & *(*a2 + v75)) << v89;
        goto LABEL_143;
      }

      goto LABEL_131;
    }

    if (v93 >= v92)
    {
      LOBYTE(v75) = *(*a2 + v75);
      goto LABEL_143;
    }

LABEL_131:
    a2[2] = v90;
    *(a2 + 24) = v91;
LABEL_132:
    v96 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 177;
      v322 = 2082;
      v323 = "Could not read number of bits used for chunk sizes.";
      _os_log_impl(&dword_1B2754000, v96, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v97 = MEMORY[0x1B8C61C80](a5, 177);
    v98 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v97, " STYL Parse Error Here: ", 24);
    v99 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v98, "Could not read number of bits used for chunk sizes.", 51);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v99, "\n", 1);
    return 0;
  }

  if (v76 <= 3)
  {
    v95 = v75 + 1;
  }

  else
  {
    v95 = v75 + 2;
  }

  if (v93 < v95)
  {
    goto LABEL_131;
  }

  v100 = *a2;
  if (v76)
  {
    v101 = 8 - v76;
    v102 = *(v100 + v75);
    if (v92 >= v93)
    {
      v103 = 0;
    }

    else
    {
      v103 = *(v100 + v92);
    }

    LODWORD(v75) = (v103 >> v101) | ((((1 << v101) + 255) & v102) << v89);
    a2[2] = v92;
  }

  else
  {
    LOBYTE(v75) = *(v100 + v75);
  }

LABEL_143:
  v104 = v75 >> 3;
  a2[2] = v90;
  *(a2 + 24) = v91;
  geo::ibitstream::readUIntBits(v317, a2, v104 + 1);
  if ((v317[0] & 1) == 0)
  {
    v119 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 181;
      v322 = 2082;
      v323 = "Could not read end chain chunk.";
      _os_log_impl(&dword_1B2754000, v119, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v120 = MEMORY[0x1B8C61C80](a5, 181);
    v121 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v120, " STYL Parse Error Here: ", 24);
    v122 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v121, "Could not read end chain chunk.", 31);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v122, "\n", 1);
    return 0;
  }

  if (*(a2 + 24))
  {
    *(a2 + 24) = 0;
    ++a2[2];
  }

  geo::ibitstream::readUIntBits(v317, a2, *(a3 + 95));
  if ((v317[0] & 1) == 0)
  {
    v123 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 185;
      v322 = 2082;
      v323 = "Could not read number of end chains.";
      _os_log_impl(&dword_1B2754000, v123, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v124 = MEMORY[0x1B8C61C80](a5, 185);
    v125 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v124, " STYL Parse Error Here: ", 24);
    v126 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v125, "Could not read number of end chains.", 36);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v126, "\n", 1);
    return 0;
  }

  v305 = v104;
  v105 = v318;
  geo::intern_vector<gss::MatchingGraphEndChain,unsigned short,geo::allocator_adapter<gss::MatchingGraphEndChain,gss::zone_mallocator>>::resize((a1 + 32), v318);
  v308 = v105;
  if (v105)
  {
    v106 = 0;
    v107 = v35 >> 3;
    v310 = v50 >> 3;
    v303 = v107;
    do
    {
      v108 = *(a1 + 32);
      geo::ibitstream::readUIntBits(v317, a2, v107 + 1);
      if ((v317[0] & 1) == 0)
      {
        v147 = GEOGetGeoCSSStyleSheetLog();
        if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
        {
          buf[0] = 136315650;
          *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
          v320 = 1024;
          v321 = 190;
          v322 = 2082;
          v323 = "Could not read end chain length.";
          _os_log_impl(&dword_1B2754000, v147, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
        v148 = MEMORY[0x1B8C61C80](a5, 190);
        v149 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v148, " STYL Parse Error Here: ", 24);
        v150 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v149, "Could not read end chain length.", 32);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v150, "\n", 1);
        return 0;
      }

      v306 = v106;
      v109 = v318;
      v313 = (v108 + 16 * v106);
      geo::intern_vector<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,unsigned short,geo::allocator_adapter<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,gss::zone_mallocator>>::resize(v313, v318);
      if (v109)
      {
        for (i = 0; i != v109; ++i)
        {
          v111 = *v313 + 24 * i;
          if ((gss::decodeAttributeEncoding(a2, v111, *(a3 + 13), *(a3 + 14), a5) & 1) == 0)
          {
            v139 = GEOGetGeoCSSStyleSheetLog();
            if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
            {
              buf[0] = 136315650;
              *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
              v320 = 1024;
              v321 = 194;
              v322 = 2082;
              v323 = "Could not decode attributes.";
              _os_log_impl(&dword_1B2754000, v139, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
            }

            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
            v140 = MEMORY[0x1B8C61C80](a5, 194);
            v141 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v140, " STYL Parse Error Here: ", 24);
            v142 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v141, "Could not decode attributes.", 28);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v142, "\n", 1);
            return 0;
          }

          geo::ibitstream::readUIntBits(v317, a2, v310 + 1);
          if ((v317[0] & 1) == 0)
          {
            v143 = GEOGetGeoCSSStyleSheetLog();
            if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
            {
              buf[0] = 136315650;
              *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
              v320 = 1024;
              v321 = 196;
              v322 = 2082;
              v323 = "Could not read number of values.";
              _os_log_impl(&dword_1B2754000, v143, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
            }

            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
            v144 = MEMORY[0x1B8C61C80](a5, 196);
            v145 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v144, " STYL Parse Error Here: ", 24);
            v146 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v145, "Could not read number of values.", 32);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v146, "\n", 1);
            return 0;
          }

          v112 = v318;
          geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::resize(v111 + 8, v318);
          if (v112)
          {
            v113 = 0;
            v114 = 4 * v112;
            do
            {
              v115 = std::map<unsigned int,unsigned char,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,unsigned char>,gss::zone_mallocator>>::at(*(a3 + 24), *v111);
              geo::ibitstream::readUIntBits(v317, a2, *v115);
              if ((v317[0] & 1) == 0)
              {
                v127 = GEOGetGeoCSSStyleSheetLog();
                if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                {
                  buf[0] = 136315650;
                  *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
                  v320 = 1024;
                  v321 = 199;
                  v322 = 2082;
                  v323 = "Could not read attribute value.";
                  _os_log_impl(&dword_1B2754000, v127, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
                }

                std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
                std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
                v128 = MEMORY[0x1B8C61C80](a5, 199);
                v129 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v128, " STYL Parse Error Here: ", 24);
                v130 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v129, "Could not read attribute value.", 31);
                std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v130, "\n", 1);
                return 0;
              }

              *(*(v111 + 8) + v113) = v318;
              v113 += 4;
            }

            while (v114 != v113);
          }
        }
      }

      v106 = v306 + 1;
      v107 = v303;
    }

    while (v306 + 1 != v308);
  }

  if (*(a2 + 24))
  {
    *(a2 + 24) = 0;
    ++a2[2];
  }

  UIntBits = geo::ibitstream::readUIntBits(v317, a2, *(a3 + 96));
  if ((v317[0] & 1) == 0)
  {
    v131 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 209;
      v322 = 2082;
      v323 = "Could not read number of style matching graph nodes.";
      _os_log_impl(&dword_1B2754000, v131, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v132 = MEMORY[0x1B8C61C80](a5, 209);
    v133 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v132, " STYL Parse Error Here: ", 24);
    v134 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v133, "Could not read number of style matching graph nodes.", 52);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v134, "\n", 1);
    return 0;
  }

  if (v318 == -1)
  {
    v135 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 210;
      v322 = 2082;
      v323 = "Node count exceeds container limit";
      _os_log_impl(&dword_1B2754000, v135, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v136 = MEMORY[0x1B8C61C80](a5, 210);
    v137 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v136, " STYL Parse Error Here: ", 24);
    v138 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v137, "Node count exceeds container limit", 34);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v138, "\n", 1);
    return 0;
  }

  v309 = a4;
  if (*(a1 + 24))
  {
    goto LABEL_218;
  }

  v311 = *(a1 + 16);
  v314 = v318;
  if (v311 <= v318)
  {
    if (v311 >= v318)
    {
      goto LABEL_218;
    }

    if (*(a1 + 20) >= v318)
    {
      v307 = *(a1 + 8);
    }

    else
    {
      v151 = gss::zone_mallocator::instance(UIntBits);
      v152 = pthread_rwlock_rdlock((v151 + 32));
      if (v152)
      {
        geo::read_write_lock::logFailure(v152, "read lock", v153);
      }

      v307 = malloc_type_zone_malloc(*v151, 24 * v314, 0x102004012EE676EuLL);
      atomic_fetch_add((v151 + 24), 1u);
      geo::read_write_lock::unlock((v151 + 32));
      v154 = *(a1 + 8);
      v311 = *(a1 + 16);
      if (v154)
      {
        if (v311)
        {
          v155 = *(a1 + 16);
          v156 = v307;
          do
          {
            *v156 = *v154;
            *(v156 + 1) = 0;
            *(v156 + 13) = 0;
            geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,gss::zone_mallocator>>::deallocateStorage((v156 + 8));
            v157 = *(v154 + 8);
            if (*(v154 + 20) == 1)
            {
              *(v156 + 1) = v157;
              *(v156 + 4) = *(v154 + 16);
              v156[20] = 1;
            }

            else
            {
              v158 = *(v154 + 16);
              v159 = *(v156 + 9);
              v160 = *(v156 + 8);
              if (v159 - v160 < v158)
              {
                v161 = v158 + v160 > v159 && (v158 + v160) >> 16 == 0;
                if (v161 && (v156[20] & 1) == 0)
                {
                  geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,gss::zone_mallocator>>::reallocate((v156 + 8), v158 + v160);
                  v160 = *(v156 + 8);
                }
              }

              if (v158)
              {
                v162 = (*(v156 + 1) + 8 * v160);
                v163 = 8 * v158;
                do
                {
                  v164 = *v157++;
                  *v162++ = v164;
                  v163 -= 8;
                }

                while (v163);
                LOWORD(v160) = *(v156 + 8);
              }

              *(v156 + 8) = v160 + v158;
            }

            v156 += 24;
            v154 += 24;
            --v155;
          }

          while (v155);
        }

        geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>,unsigned int,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>,gss::zone_mallocator>>::deallocateStorage(a1 + 8);
        *(a1 + 16) = v311;
      }

      *(a1 + 20) = v314;
      *(a1 + 8) = v307;
    }

    if (v311 != v314)
    {
      v224 = &v307[24 * v311];
      do
      {
        *(v224 + 1) = 0;
        *(v224 + 2) = 0;
        *v224 = 0xFFFFFFFF7FFFFFFFLL;
        v224 += 24;
      }

      while (v224 != &v307[24 * v314]);
    }
  }

  else
  {
    v117 = 24 * v311 - 24 * v318;
    v118 = *(a1 + 8) + 24 * v318 + 8;
    do
    {
      geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,gss::zone_mallocator>>::deallocateStorage(v118);
      v118 += 24;
      v117 -= 24;
    }

    while (v117);
  }

  *(a1 + 16) = v314;
LABEL_218:
  geo::ibitstream::readUIntBits(v317, a2, *(a3 + 96));
  if ((v317[0] & 1) == 0)
  {
    v220 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 212;
      v322 = 2082;
      v323 = "Could not read number of chunks.";
      _os_log_impl(&dword_1B2754000, v220, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v221 = MEMORY[0x1B8C61C80](a5, 212);
    v222 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v221, " STYL Parse Error Here: ", 24);
    v223 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v222, "Could not read number of chunks.", 32);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v223, "\n", 1);
    return 0;
  }

  v312 = v318;
  if (*(a2 + 24))
  {
    *(a2 + 24) = 0;
    ++a2[2];
  }

  if (!v312)
  {
LABEL_327:
    *a1 = *(a1 + 8);
    return 1;
  }

  v304 = 0;
  v315 = 0;
  while (1)
  {
    geo::ibitstream::readUIntBits(v317, a2, v305 + 1);
    if ((v317[0] & 1) == 0)
    {
      v241 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v241, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 218;
        v322 = 2082;
        v323 = "Could not read chunk length.";
        _os_log_impl(&dword_1B2754000, v241, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v242 = MEMORY[0x1B8C61C80](a5, 218);
      v243 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v242, " STYL Parse Error Here: ", 24);
      v244 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v243, "Could not read chunk length.", 28);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v244, "\n", 1);
      return 0;
    }

    geo::ibitstream::readUIntBits(v317, a2, *(a3 + 96));
    if ((v317[0] & 1) == 0)
    {
      v245 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v245, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 219;
        v322 = 2082;
        v323 = "Could not read number of nodes in the chunk.";
        _os_log_impl(&dword_1B2754000, v245, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v246 = MEMORY[0x1B8C61C80](a5, 219);
      v247 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v246, " STYL Parse Error Here: ", 24);
      v248 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v247, "Could not read number of nodes in the chunk.", 44);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v248, "\n", 1);
      return 0;
    }

    if (v318)
    {
      break;
    }

LABEL_324:
    if (*(a2 + 24))
    {
      *(a2 + 24) = 0;
      ++a2[2];
    }

    if (++v304 == v312)
    {
      goto LABEL_327;
    }
  }

  v302 = v318 + v315;
  while (1)
  {
    v165 = *(a1 + 8);
    v166 = *(a2 + 24);
    v168 = a2[1];
    v167 = a2[2];
    v169 = v167 + ((v166 + 1) >> 3);
    v170 = (v166 + 1) & 7;
    v171 = v167 + 1;
    if (v169 >= v167 + 1)
    {
      if (v166 <= 7)
      {
        v174 = v167 + 1;
      }

      else
      {
        v174 = v167 + 2;
      }

      if (v168 < v174)
      {
LABEL_345:
        a2[2] = v169;
        *(a2 + 24) = v170;
LABEL_346:
        v237 = GEOGetGeoCSSStyleSheetLog();
        if (os_log_type_enabled(v237, OS_LOG_TYPE_ERROR))
        {
          buf[0] = 136315650;
          *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
          v320 = 1024;
          v321 = 263;
          v322 = 2082;
          v323 = "Could not read indication of node being terminal.";
          _os_log_impl(&dword_1B2754000, v237, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
        v238 = MEMORY[0x1B8C61C80](a5, 263);
        v239 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v238, " STYL Parse Error Here: ", 24);
        v240 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v239, "Could not read indication of node being terminal.", 49);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v240, "\n", 1);
        goto LABEL_392;
      }

      v175 = *a2;
      if (*(a2 + 24))
      {
        v176 = v171 >= v168 ? 0 : *(v175 + v171);
        v173 = ((v176 & (0xFFFF << (8 - v166))) >> (8 - v166)) | ((((1 << (8 - v166)) + 255) & *(v175 + v167)) << v166);
        a2[2] = v171;
      }

      else
      {
        LOBYTE(v173) = *(v175 + v167);
      }
    }

    else
    {
      if (*(a2 + 24))
      {
        v172 = v167 + 1;
      }

      else
      {
        v172 = a2[2];
      }

      if (v168 < v172)
      {
        goto LABEL_346;
      }

      if (*(a2 + 24))
      {
        if (v168 < v171)
        {
          goto LABEL_345;
        }

        v173 = (((1 << (8 - v166)) - 1) & *(*a2 + v167)) << v166;
      }

      else
      {
        if (v168 < v171)
        {
          goto LABEL_345;
        }

        LOBYTE(v173) = *(*a2 + v167);
      }
    }

    v177 = v165 + 24 * v315;
    a2[2] = v169;
    *(a2 + 24) = v170;
    if ((v173 & 0x80) == 0)
    {
      break;
    }

    geo::ibitstream::readUIntBits(v317, a2, *(a3 + 94));
    if ((v317[0] & 1) == 0)
    {
      v269 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v269, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 267;
        v322 = 2082;
        v323 = "Could not read style index.";
        _os_log_impl(&dword_1B2754000, v269, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v270 = MEMORY[0x1B8C61C80](a5, 267);
      v271 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v270, " STYL Parse Error Here: ", 24);
      v272 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v271, "Could not read style index.", 27);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v272, "\n", 1);
      goto LABEL_392;
    }

    v187 = v318;
    geo::ibitstream::readUIntBits(v317, a2, *(a3 + 95));
    if ((v317[0] & 1) == 0)
    {
      v273 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v273, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 268;
        v322 = 2082;
        v323 = "Could not end chain index.";
        _os_log_impl(&dword_1B2754000, v273, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v274 = MEMORY[0x1B8C61C80](a5, 268);
      v275 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v274, " STYL Parse Error Here: ", 24);
      v276 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v275, "Could not end chain index.", 26);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v276, "\n", 1);
      goto LABEL_392;
    }

    if (v187 >= 0xFFFF)
    {
      v277 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v277, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 270;
        v322 = 2082;
        v323 = "StyleIndex outside uint16 range";
        _os_log_impl(&dword_1B2754000, v277, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v278 = MEMORY[0x1B8C61C80](a5, 270);
      v279 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v278, " STYL Parse Error Here: ", 24);
      v280 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v279, "StyleIndex outside uint16 range", 31);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v280, "\n", 1);
      goto LABEL_392;
    }

    if (v187 >= *(v309 + 8))
    {
      v281 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v281, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 271;
        v322 = 2082;
        v323 = "StyleIndex outside styles range";
        _os_log_impl(&dword_1B2754000, v281, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v282 = MEMORY[0x1B8C61C80](a5, 271);
      v283 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v282, " STYL Parse Error Here: ", 24);
      v284 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v283, "StyleIndex outside styles range", 31);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v284, "\n", 1);
      goto LABEL_392;
    }

    v188 = v318;
    if (v318 >= 0xFFFF)
    {
      v285 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 272;
        v322 = 2082;
        v323 = "EndChainIndex outside uint16 range";
        _os_log_impl(&dword_1B2754000, v285, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v286 = MEMORY[0x1B8C61C80](a5, 272);
      v287 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v286, " STYL Parse Error Here: ", 24);
      v288 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v287, "EndChainIndex outside uint16 range", 34);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v288, "\n", 1);
      goto LABEL_392;
    }

    *v177 = 0x7FFFFFFF;
    *(v177 + 4) = v187;
    *(v177 + 6) = v188;
LABEL_322:
    if (++v315 == v302)
    {
      v315 = v302;
      goto LABEL_324;
    }
  }

  *(v177 + 4) = 0;
  v316 = 0;
  if ((gss::decodeAttributeEncoding(a2, &v316, *(a3 + 13), *(a3 + 14), a5) & 1) == 0)
  {
    v249 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v249, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 284;
      v322 = 2082;
      v323 = "Could not decode attribute.";
      _os_log_impl(&dword_1B2754000, v249, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v250 = MEMORY[0x1B8C61C80](a5, 284);
    v251 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v250, " STYL Parse Error Here: ", 24);
    v252 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v251, "Could not decode attribute.", 27);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v252, "\n", 1);
    goto LABEL_392;
  }

  v178 = v316;
  if (v316 == 0x7FFFFFFF)
  {
    v253 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v253, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 285;
      v322 = 2082;
      v323 = "attribute is using sentinel value";
      _os_log_impl(&dword_1B2754000, v253, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v254 = MEMORY[0x1B8C61C80](a5, 285);
    v255 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v254, " STYL Parse Error Here: ", 24);
    v256 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v255, "attribute is using sentinel value", 33);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v256, "\n", 1);
    goto LABEL_392;
  }

  *v177 = v316;
  v179 = *(a2 + 24);
  v181 = a2[1];
  v180 = a2[2];
  v182 = v180 + ((v179 + 1) >> 3);
  v183 = (v179 + 1) & 7;
  v184 = v180 + 1;
  if (v182 >= v180 + 1)
  {
    if (v179 <= 7)
    {
      v189 = v180 + 1;
    }

    else
    {
      v189 = v180 + 2;
    }

    if (v181 < v189)
    {
LABEL_361:
      a2[2] = v182;
      *(a2 + 24) = v183;
LABEL_362:
      v257 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v257, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 287;
        v322 = 2082;
        v323 = "Could not read indication of undefined node existing.";
        _os_log_impl(&dword_1B2754000, v257, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v258 = MEMORY[0x1B8C61C80](a5, 287);
      v259 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v258, " STYL Parse Error Here: ", 24);
      v260 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v259, "Could not read indication of undefined node existing.", 53);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v260, "\n", 1);
      goto LABEL_392;
    }

    v190 = *a2;
    if (*(a2 + 24))
    {
      if (v184 >= v181)
      {
        v191 = 0;
      }

      else
      {
        v191 = *(v190 + v184);
      }

      v186 = ((v191 & (0xFFFF << (8 - v179))) >> (8 - v179)) | ((((1 << (8 - v179)) + 255) & *(v190 + v180)) << v179);
      a2[2] = v184;
    }

    else
    {
      LOBYTE(v186) = *(v190 + v180);
    }
  }

  else
  {
    if (*(a2 + 24))
    {
      v185 = v180 + 1;
    }

    else
    {
      v185 = a2[2];
    }

    if (v181 < v185)
    {
      goto LABEL_362;
    }

    if (*(a2 + 24))
    {
      if (v181 < v184)
      {
        goto LABEL_361;
      }

      v186 = (((1 << (8 - v179)) - 1) & *(*a2 + v180)) << v179;
    }

    else
    {
      if (v181 < v184)
      {
        goto LABEL_361;
      }

      LOBYTE(v186) = *(*a2 + v180);
    }
  }

  a2[2] = v182;
  *(a2 + 24) = v183;
  if ((v186 & 0x80) != 0)
  {
    geo::ibitstream::readUIntBits(v317, a2, *(a3 + 96));
    if ((v317[0] & 1) == 0)
    {
      v289 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v289, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 292;
        v322 = 2082;
        v323 = "Could not read undefined node index.";
        _os_log_impl(&dword_1B2754000, v289, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v290 = MEMORY[0x1B8C61C80](a5, 292);
      v291 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v290, " STYL Parse Error Here: ", 24);
      v292 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v291, "Could not read undefined node index.", 36);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v292, "\n", 1);
      goto LABEL_392;
    }

    v192 = v318;
    if (*(a1 + 16) <= v318)
    {
      v293 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 293;
        v322 = 2082;
        v323 = "Undefined node index out of bounds";
        _os_log_impl(&dword_1B2754000, v293, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v294 = MEMORY[0x1B8C61C80](a5, 293);
      v295 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v294, " STYL Parse Error Here: ", 24);
      v296 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v295, "Undefined node index out of bounds", 34);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v296, "\n", 1);
      goto LABEL_392;
    }

    v193 = *(v177 + 16);
    if (v193 != 0xFFFF && (*(v177 + 20) & 1) == 0 && v193 >= *(v177 + 18))
    {
      geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,gss::zone_mallocator>>::reallocate((v177 + 8), v193 + 1);
      v193 = *(v177 + 16);
    }

    *(*(v177 + 8) + 8 * v193) = (v192 << 32) | 0xFFFF;
    ++*(v177 + 16);
    v301 = 1;
  }

  else
  {
    v301 = 0;
  }

  geo::ibitstream::readUIntBits(v317, a2, *(a3 + 97));
  if ((v317[0] & 1) == 0)
  {
    v261 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v261, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 297;
      v322 = 2082;
      v323 = "Could not read number of children.";
      _os_log_impl(&dword_1B2754000, v261, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v262 = MEMORY[0x1B8C61C80](a5, 297);
    v263 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v262, " STYL Parse Error Here: ", 24);
    v264 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v263, "Could not read number of children.", 34);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v264, "\n", 1);
    goto LABEL_392;
  }

  v194 = v318;
  v195 = *(v177 + 16);
  v196 = v195 + v318;
  if (v196 >= 0xFFFFFFFF)
  {
    v265 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v265, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 300;
      v322 = 2082;
      v323 = "SubTree nodes larger than uint16!";
      _os_log_impl(&dword_1B2754000, v265, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v266 = MEMORY[0x1B8C61C80](a5, 300);
    v267 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v266, " STYL Parse Error Here: ", 24);
    v268 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v267, "SubTree nodes larger than uint16!", 33);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v268, "\n", 1);
    goto LABEL_392;
  }

  if (*(v177 + 20))
  {
    goto LABEL_306;
  }

  if (!v318)
  {
LABEL_295:
    if (v195)
    {
      if (*(a1 + 72) < v195)
      {
        goto LABEL_306;
      }

      v197 = *(a1 + 56);
      if (*(a1 + 48) == v197 || (v198 = *(v197 - 8), v199 = v198[1], v198[2] - v199 < v195))
      {
        operator new();
      }

      v200 = *v198;
      v198[1] = v199 + v195;
      if (!v200)
      {
        goto LABEL_306;
      }

      v201 = (v200 + 8 * v199);
      v202 = *(v177 + 16);
      if (v202)
      {
        v203 = *(v177 + 8);
        v204 = *(v177 + 16);
        v205 = v201;
        do
        {
          v206 = *v203++;
          *v205++ = v206;
          --v204;
        }

        while (v204);
      }

      geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,gss::zone_mallocator>>::deallocateStorage(v177 + 8);
      *(v177 + 16) = v202;
      *(v177 + 18) = 0;
      *(v177 + 8) = v201;
    }

    *(v177 + 20) = 1;
LABEL_306:
    if (v194)
    {
      goto LABEL_307;
    }

    v214 = *(v177 + 8);
LABEL_318:
    v216 = *(v177 + 16);
    v217 = 126 - 2 * __clz(v216);
    if (*(v177 + 16))
    {
      v218 = v217;
    }

    else
    {
      v218 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::construct(geo::ibitstream &,gss::DecodingContext const&,geo::intern_vector<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>> const&,geo::intern_vector<gss::MatchingGraphEndChain,unsigned short,geo::allocator_adapter<gss::MatchingGraphEndChain,gss::zone_mallocator>> &,geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>,unsigned int,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>> &,std::ostringstream &,geo::intern_allocator<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>> &)::{lambda(gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode const&,gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode const&)#1} &,gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode*,false>(v214, (v214 + 8 * v216), v218, 1);
    goto LABEL_322;
  }

  if (v196 > *(v177 + 18))
  {
    geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,gss::zone_mallocator>>::reallocate((v177 + 8), v195 + v318);
    v195 = *(v177 + 16);
  }

  if (v195 != v196)
  {
    bzero((*(v177 + 8) + 8 * v195), 8 * v196 - 8 * v195);
  }

  *(v177 + 16) = v196;
  if ((*(v177 + 20) & 1) == 0)
  {
    LODWORD(v195) = v196;
    goto LABEL_295;
  }

LABEL_307:
  v207 = 8 * v301;
  while (1)
  {
    v208 = std::map<unsigned int,unsigned char,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,unsigned char>,gss::zone_mallocator>>::at(*(a3 + 24), v178);
    geo::ibitstream::readUIntBits(v317, a2, *v208);
    if ((v317[0] & 1) == 0)
    {
      break;
    }

    LODWORD(v209) = v318;
    geo::ibitstream::readUIntBits(v317, a2, *(a3 + 96));
    if ((v317[0] & 1) == 0)
    {
      v229 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v229, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 309;
        v322 = 2082;
        v323 = "Could not read referenced node index.";
        _os_log_impl(&dword_1B2754000, v229, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v230 = MEMORY[0x1B8C61C80](a5, 309);
      v231 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v230, " STYL Parse Error Here: ", 24);
      v232 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v231, "Could not read referenced node index.", 37);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v232, "\n", 1);
      goto LABEL_392;
    }

    v210 = v318;
    if (*(a1 + 16) <= v318)
    {
      v233 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v233, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 310;
        v322 = 2082;
        v323 = "Referenced node index out of bounds";
        _os_log_impl(&dword_1B2754000, v233, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v234 = MEMORY[0x1B8C61C80](a5, 310);
      v235 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v234, " STYL Parse Error Here: ", 24);
      v236 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v235, "Referenced node index out of bounds", 35);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v236, "\n", 1);
      goto LABEL_392;
    }

    if (v209 >= 0xFFFF)
    {
      v209 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v209, OS_LOG_TYPE_DEBUG))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 312;
        v322 = 2082;
        v323 = "AttributeValue nodes larger than uint16!";
        _os_log_impl(&dword_1B2754000, v209, OS_LOG_TYPE_DEBUG, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v211 = MEMORY[0x1B8C61C80](a5, 312);
      v212 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v211, " STYL Parse Warning: ", 21);
      v213 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v212, "AttributeValue nodes larger than uint16!", 40);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v213, "\n", 1);
      LOWORD(v209) = -1;
    }

    v214 = *(v177 + 8);
    v215 = v214 + v207;
    *v215 = v209;
    *(v215 + 4) = v210;
    v207 += 8;
    if (!--v194)
    {
      goto LABEL_318;
    }
  }

  v225 = GEOGetGeoCSSStyleSheetLog();
  if (os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
  {
    buf[0] = 136315650;
    *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
    v320 = 1024;
    v321 = 308;
    v322 = 2082;
    v323 = "Could not read attribute value.";
    _os_log_impl(&dword_1B2754000, v225, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
  v226 = MEMORY[0x1B8C61C80](a5, 308);
  v227 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v226, " STYL Parse Error Here: ", 24);
  v228 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v227, "Could not read attribute value.", 31);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v228, "\n", 1);
LABEL_392:
  v297 = GEOGetGeoCSSStyleSheetLog();
  if (os_log_type_enabled(v297, OS_LOG_TYPE_ERROR))
  {
    buf[0] = 136315650;
    *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
    v320 = 1024;
    v321 = 222;
    v322 = 2082;
    v323 = "Could not construct node.";
    _os_log_impl(&dword_1B2754000, v297, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
  v298 = MEMORY[0x1B8C61C80](a5, 222);
  v299 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v298, " STYL Parse Error Here: ", 24);
  v300 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v299, "Could not construct node.", 25);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v300, "\n", 1);
  return 0;
}

void sub_1B2847D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::unique_ptr<geo::intern_allocator<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,gss::zone_mallocator>>::PageInfo>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void geo::intern_vector<gss::MatchingGraphEndChain,unsigned short,geo::allocator_adapter<gss::MatchingGraphEndChain,gss::zone_mallocator>>::resize(char **a1, unint64_t a2)
{
  if ((*(a1 + 12) & 1) == 0)
  {
    v4 = *(a1 + 4);
    if (v4 > a2)
    {
      v5 = &(*a1)[16 * a2];
      v6 = 16 * v4 - 16 * a2;
      do
      {
        geo::intern_vector<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,unsigned short,geo::allocator_adapter<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,gss::zone_mallocator>>::deallocateStorage(v5);
        v5 += 16;
        v6 -= 16;
      }

      while (v6);
LABEL_5:
      *(a1 + 4) = a2;
      return;
    }

    if (v4 < a2)
    {
      if (*(a1 + 5) >= a2)
      {
        v10 = *a1;
      }

      else
      {
        v7 = gss::zone_mallocator::instance(a1);
        v8 = pthread_rwlock_rdlock((v7 + 32));
        if (v8)
        {
          geo::read_write_lock::logFailure(v8, "read lock", v9);
        }

        v10 = malloc_type_zone_malloc(*v7, 16 * a2, 0x102004034E03FFCuLL);
        atomic_fetch_add((v7 + 24), 1u);
        geo::read_write_lock::unlock((v7 + 32));
        v11 = *a1;
        v4 = *(a1 + 4);
        if (*a1)
        {
          v25 = v10;
          v26 = *(a1 + 4);
          if (*(a1 + 4))
          {
            v12 = v10;
            v13 = *(a1 + 4);
            do
            {
              *(v12 + 5) = 0;
              *v12 = 0;
              geo::intern_vector<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,unsigned short,geo::allocator_adapter<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,gss::zone_mallocator>>::deallocateStorage(v12);
              v14 = *v11;
              if (*(v11 + 12) == 1)
              {
                *v12 = v14;
                *(v12 + 8) = *(v11 + 8);
                *(v12 + 12) = 1;
              }

              else
              {
                v15 = *(v11 + 8);
                v16 = *(v12 + 10);
                v17 = *(v12 + 8);
                if (v16 - v17 < v15)
                {
                  v18 = v15 + v17 > v16 && (v15 + v17) >> 16 == 0;
                  if (v18 && (*(v12 + 12) & 1) == 0)
                  {
                    geo::intern_vector<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,unsigned short,geo::allocator_adapter<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,gss::zone_mallocator>>::reallocate(v12, v15 + v17);
                    LODWORD(v17) = *(v12 + 8);
                  }
                }

                if (v15)
                {
                  v19 = &v14[6 * v15];
                  v20 = *v12 + 24 * v17;
                  v21 = v14;
                  do
                  {
                    v22 = *v21;
                    v21 += 6;
                    *v20 = v22;
                    *(v20 + 13) = 0;
                    *(v20 + 8) = 0;
                    geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::copy(v20 + 8, (v14 + 2));
                    v20 += 24;
                    v14 = v21;
                  }

                  while (v21 != v19);
                  LOWORD(v17) = *(v12 + 8);
                }

                *(v12 + 8) = v17 + v15;
              }

              v12 += 16;
              v11 += 16;
              --v13;
            }

            while (v13);
          }

          geo::intern_vector<gss::MatchingGraphEndChain,unsigned short,geo::allocator_adapter<gss::MatchingGraphEndChain,gss::zone_mallocator>>::deallocateStorage(a1);
          v10 = v25;
          v4 = v26;
          *(a1 + 4) = v26;
        }

        *(a1 + 5) = a2;
        *a1 = v10;
      }

      if (v4 != a2)
      {
        v23 = &v10[16 * v4];
        v24 = 16 * a2 - 16 * v4;
        do
        {
          *(v23 + 5) = 0;
          *v23 = 0;
          v23 += 16;
          v24 -= 16;
        }

        while (v24);
      }

      goto LABEL_5;
    }
  }
}

uint64_t *std::map<unsigned int,unsigned char,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,unsigned char>,gss::zone_mallocator>>::at(uint64_t *a1, unsigned int a2)
{
  if (!a1)
  {
LABEL_7:
    abort();
  }

  while (1)
  {
    while (1)
    {
      v2 = *(a1 + 7);
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_7;
      }
    }

    if (v2 >= a2)
    {
      return a1 + 4;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_7;
    }
  }
}

void geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,gss::zone_mallocator>>::deallocateStorage(uint64_t a1)
{
  if ((*(a1 + 12) & 1) == 0)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = gss::zone_mallocator::instance(a1);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode>(v3, v2);
    }
  }

  *(a1 + 5) = 0;
  *a1 = 0;
}

void std::__function::__func<std::shared_ptr<gss::StyleSheet<gss::ScenePropertyID>> md::StyleSheetExtension::initWithName<gss::ScenePropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1},std::allocator<std::shared_ptr<gss::StyleSheet<gss::ScenePropertyID>> md::StyleSheetExtension::initWithName<gss::ScenePropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1}>,void ()(BOOL)>::operator()(uint64_t a1, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*a2 & 1) == 0)
  {
    if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
    }

    v3 = GEOGetVectorKitResourceLoadingLog_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v4 = *v4;
      }

      v5 = [*(a1 + 56) UTF8String];
      v6 = 136315394;
      v7 = v4;
      v8 = 2080;
      v9 = v5;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_ERROR, "Failed to decode stylesheet %s %s", &v6, 0x16u);
    }
  }
}

void sub_1B2848500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13, void **a14, uint64_t a15, void **a16)
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
  std::__hash_table<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,std::__unordered_map_hasher<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,std::hash<gss::StyleSheetResultCacheKey>,std::equal_to<gss::StyleSheetResultCacheKey>,true>,std::__unordered_map_equal<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,std::equal_to<gss::StyleSheetResultCacheKey>,std::hash<gss::StyleSheetResultCacheKey>,true>,geo::allocator_adapter<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,gss::zone_mallocator>>::__deallocate_node(*(v16 + 2776));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *,gss::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v16 + 2752));
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
  std::unique_ptr<gss::StyleMatchingTree<gss::CartoStyle<gss::PropertyID>>>::reset[abi:nn200100](v19, 0);
  geo::intern_vector<std::shared_ptr<gss::StylePropertySet<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::StylePropertySet<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(v18);
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

  geo::intern_vector<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(v17);
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

void ___ZN3gss10StyleSheetINS_10PropertyIDEE9loadQueueEb_block_invoke_2()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, -3);
  v1 = dispatch_queue_create("com.apple.mapdisplay.stylesheetLoadQueue", v0);
  v2 = gss::StyleSheet<gss::PropertyID>::loadQueue(BOOL)::stylesheetLoadQueue;
  gss::StyleSheet<gss::PropertyID>::loadQueue(BOOL)::stylesheetLoadQueue = v1;
}

void std::__function::__func<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1},std::allocator<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1}>,void ()(BOOL)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1},std::allocator<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1}>,void ()(BOOL)>::destroy[abi:nn200100](a1 + 8);

  operator delete(a1);
}

void *gss::StylesheetManager<gss::PropertyID>::initWithStyleSheet(void *result, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *result = 0;
  result[1] = 0;
  return result;
}

void sub_1B284899C(_Unwind_Exception *a1)
{
  std::default_delete<gss::StylesheetManager<gss::PropertyID>>::operator()[abi:nn200100](v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2A29B70;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

gss::zone_mallocator ***std::unique_ptr<std::vector<std::function<void ()(BOOL)>,geo::allocator_adapter<std::function<void ()(BOOL)>,gss::zone_mallocator>>>::reset[abi:nn200100](gss::zone_mallocator ***result, gss::zone_mallocator **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = v2[1];
      v5 = *v2;
      if (v4 != v3)
      {
        do
        {
          v4 = std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v4 - 32);
        }

        while (v4 != v3);
        v5 = *v2;
      }

      v2[1] = v3;
      v6 = gss::zone_mallocator::instance(v4);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::function<void ()(BOOL)>>(v6, v5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

gss::zone_mallocator *std::__split_buffer<std::function<void ()(BOOL)>,geo::allocator_adapter<std::function<void ()(BOOL)>,gss::zone_mallocator> &>::~__split_buffer(gss::zone_mallocator *a1)
{
  v1 = a1;
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(v1 + 2))
  {
    *(v1 + 2) = i - 32;
    a1 = std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](i - 32);
  }

  v4 = *v1;
  if (*v1)
  {
    v5 = gss::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::function<void ()(BOOL)>>(v5, v4);
  }

  return v1;
}

void std::__function::__func<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1},std::allocator<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1}>,void ()(BOOL)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1},std::allocator<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1}>,void ()(BOOL)>::destroy[abi:nn200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__alloc_func<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1},std::allocator<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1}>,void ()(BOOL)>::destroy[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__value_func[abi:nn200100](a1);
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1,std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2A29C78;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t md::StyleLogicContext::operator=(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v8 = a2[2];
  v7 = a2[3];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v11 = a2[4];
  v10 = a2[5];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 40);
  *(a1 + 32) = v11;
  *(a1 + 40) = v10;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  if (a1 == a2)
  {
    v23 = *(a2 + 9);
    v24 = *(a2 + 11);
    *(a1 + 97) = *(a2 + 97);
    *(a1 + 88) = v24;
    *(a1 + 72) = v23;
  }

  else
  {
    v13 = a2[6];
    v14 = a2[7] - v13;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56) - v15;
    v17 = v14 >= v16;
    v18 = v14 - v16;
    if (v18 != 0 && v17)
    {
      std::vector<unsigned char>::__append((a1 + 48), v18);
      v13 = a2[6];
      v15 = *(a1 + 48);
    }

    else if (!v17)
    {
      *(a1 + 56) = &v15[v14];
    }

    v19 = a2[7];
    if (v19 != v13)
    {
      memmove(v15, v13, v19 - v13);
    }

    v20 = *(a2 + 9);
    v21 = *(a2 + 11);
    *(a1 + 97) = *(a2 + 97);
    *(a1 + 88) = v21;
    *(a1 + 72) = v20;
    std::vector<std::pair<gss::StyleAttribute,unsigned short>>::__assign_with_size[abi:nn200100]<std::pair<gss::StyleAttribute,unsigned short>*,std::pair<gss::StyleAttribute,unsigned short>*>((a1 + 120), a2[15], a2[16], (a2[16] - a2[15]) >> 3);
    std::vector<std::pair<gss::StyleAttribute,unsigned short>>::__assign_with_size[abi:nn200100]<std::pair<gss::StyleAttribute,unsigned short>*,std::pair<gss::StyleAttribute,unsigned short>*>((a1 + 144), a2[18], a2[19], (a2[19] - a2[18]) >> 3);
  }

  return a1;
}

char *std::vector<std::pair<gss::StyleAttribute,unsigned short>>::__assign_with_size[abi:nn200100]<std::pair<gss::StyleAttribute,unsigned short>*,std::pair<gss::StyleAttribute,unsigned short>*>(char **a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<gss::StyleAttribute,unsigned short>>::__vallocate[abi:nn200100](a1, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 2) = *(v5 + 4);
      v5 += 8;
      result += 8;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        *result = *v5;
        *(result + 2) = *(v5 + 4);
        v5 += 8;
        result += 8;
      }

      while (v5 != v12);
    }

    while (v12 != a3)
    {
      v13 = *v12++;
      *v11 = v13;
      v11 += 8;
    }

    a1[1] = v11;
  }

  return result;
}

double ___ZN3gss10StyleSheetINS_10PropertyIDEE13dispatch_loadEbNSt3__18functionIFvvEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(*v2 + 48);

    v3();
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:nn200100]();
    *&result = *&[(MDDisplayLayer *)v5 size];
  }

  return result;
}

void gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(uint64_t a1, unsigned int a2, int a3)
{
  v7 = (a1 + 16);
  v19 = (a1 + 16);
  v8 = pthread_rwlock_wrlock((a1 + 16));
  if (v8)
  {
    geo::read_write_lock::logFailure(v8, "write lock", v9);
  }

  v10 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1 + 216, a2);
  if (v10 == *(a1 + 228) || (v3 = (*(a1 + 216) + *(a1 + 224) + 2 * v10), *v3 != a3))
  {
    *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a1 + 216, a2) = a3;
    if (*(a1 + 232) & 1) != 0 || (*(a1 + 233))
    {
      v11 = 1;
    }

    else
    {
      v11 = 1;
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1 + 216, *(a1 + 230), 1);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1 + 240, a2);
  v13 = *(a1 + 252);
  if (v12 == v13)
  {
    goto LABEL_12;
  }

  if (v12 < v13)
  {
    v3 = (*(a1 + 240) + *(a1 + 248) + 2 * v12);
  }

  if (*v3 != a3)
  {
LABEL_12:
    *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a1 + 240, a2) = a3;
    if ((*(a1 + 256) & 1) == 0 && (*(a1 + 257) & 1) == 0)
    {
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1 + 240, *(a1 + 254), 1);
    }
  }

  else if (!v11)
  {
    goto LABEL_19;
  }

  v14 = COERCE_FLOAT(atomic_load((a1 + 272)));
  v15 = v14 <= 0.0;
  v16 = 1;
  if (v15)
  {
    v16 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>((a1 + 240), a1 + 216) ^ 1;
  }

  atomic_store(v16, (a1 + 270));
  atomic_fetch_add((a1 + 264), 1u);
  v7 = v19;
LABEL_19:
  v17 = pthread_rwlock_unlock(v7);
  if (v17)
  {

    geo::read_write_lock::logFailure(v17, "unlock", v18);
  }
}

void sub_1B28491C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  geo::write_lock_guard::~write_lock_guard(va);
  _Unwind_Resume(a1);
}

void gss::ClientStyleState<gss::PropertyID>::setTargetMapDisplayStyle(uint64_t a1, uint64_t a2)
{
  v8 = (a1 + 16);
  v9 = a2;
  v3 = pthread_rwlock_wrlock((a1 + 16));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "write lock", v4);
  }

  gss::DisplayStyle::applyDisplayStyle(&v9, a1 + 240);
  if ((*(a1 + 256) & 1) == 0 && (*(a1 + 257) & 1) == 0)
  {
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1 + 240, *(a1 + 254), 1);
  }

  v5 = COERCE_FLOAT(atomic_load((a1 + 272)));
  v6 = v5 <= 0.0;
  v7 = 1;
  if (v6)
  {
    v7 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>((a1 + 240), a1 + 216) ^ 1;
  }

  atomic_store(v7, (a1 + 270));
  atomic_fetch_add((a1 + 264), 1u);
  geo::write_lock_guard::~write_lock_guard(&v8);
}

uint64_t gss::ClientStyleState<gss::ScenePropertyID>::setBlendingFactor(uint64_t result, float a2)
{
  v2 = COERCE_FLOAT(atomic_load((result + 272)));
  if (v2 != a2)
  {
    v3 = result;
    *(result + 272) = a2;
    v4 = COERCE_FLOAT(atomic_load((result + 272)));
    if (v4 <= 0.0)
    {
      result = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>((result + 240), result + 216);
      v5 = result ^ 1;
    }

    else
    {
      v5 = 1;
    }

    atomic_store(v5, (v3 + 270));
    v6 = *(v3 + 269);
    v7 = atomic_load((v3 + 270));
    if (v6 != (v7 & 1))
    {
      v8 = atomic_load((v3 + 270));
      *(v3 + 269) = v8 & 1;
      atomic_fetch_add((v3 + 264), 1u);
    }
  }

  return result;
}

void geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert(void *a1, _BYTE *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4;
  if (*a1 == v4)
  {
    goto LABEL_8;
  }

  v7 = *a2;
  v6 = *a1;
  while (1)
  {
    v8 = *v6;
    if (v8 >= v7)
    {
      break;
    }

    if (++v6 == v4)
    {
      v6 = a1[1];
      goto LABEL_8;
    }
  }

  if (v6 == v4 || v7 != v8)
  {
LABEL_8:
    v9 = a1[2];
    if (v4 >= v9)
    {
      v12 = v4 - v5 + 1;
      if (v12 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v13 = (v6 - v5);
      v14 = v9 - v5;
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      if (v15)
      {
        operator new();
      }

      if (!v13)
      {
        operator new();
      }

      *v13 = *a2;
      memcpy(v13 + 1, v6, a1[1] - v6);
      v16 = *a1;
      v21 = &v13[a1[1] - v6 + 1];
      a1[1] = v6;
      v17 = &v13[v16 - v6];
      memcpy(v17, v16, v6 - v16);
      v18 = *a1;
      *a1 = v17;
      *(a1 + 1) = v21;
      if (v18)
      {

        operator delete(v18);
      }
    }

    else if (v6 == v4)
    {
      *v4 = *a2;
      a1[1] = v4 + 1;
    }

    else
    {
      v10 = v6 + 1;
      if (v4)
      {
        *v4 = *(v4 - 1);
        v11 = v4 + 1;
      }

      else
      {
        v11 = 0;
      }

      a1[1] = v11;
      if (v4 != v10)
      {
        memmove(v6 + 1, v6, v4 - v10);
        v11 = a1[1];
      }

      v20 = v6 <= a2 && v11 > a2;
      *v6 = a2[v20];
    }
  }
}

void sub_1B28495A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1,std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::operator()(uint64_t a1, void *a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = *(a1 + 16);
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
        }

        v9[0] = &unk_1F2A29CC0;
        v9[1] = v7;
        v9[2] = v8;
        v9[3] = v9;
        md::CallbackHolder<md::StyleLogic>::call(v7, v9);
        std::__function::__value_func<void ()(md::StyleLogic *)>::~__value_func[abi:nn200100](v9);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void sub_1B28496B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(md::StyleLogic *)>::~__value_func[abi:nn200100](va);
  std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::StyleLogic::StyleLogic(float,VKSharedResources *,objc_object  {objcproto14MDRenderTarget}*,md::MapEngine *,md::MapEngineSettings const*,md::World *,std::shared_ptr<md::TaskContext> const&,md::AnimationRunner const*,BOOL,md::World *<md::RunLoopController> const&,VKMapPurpose)::$_1,std::allocator<VKMapPurpose>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A29618;
  a2[1] = v2;
  return result;
}

void md::CallbackHolder<md::StyleLogic>::call(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 8));
  if (*a1)
  {
    std::function<void ()(md::StyleLogic *)>::operator()(*(a2 + 24), *a1);
  }

  os_unfair_lock_unlock((a1 + 8));
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1},std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1}>,void ()(md::StyleLogic*)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = **(*a2 + 1224);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZZZN2md10StyleLogic22setupDecodingCallbacksERKNSt3__110shared_ptrIN3gss17StylesheetManagerINS3_10PropertyIDEEEEEENK3__1clES7_bENKUlPS0_E_clESB__block_invoke;
  v6[3] = &__block_descriptor_48_ea8_32c63_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_10StyleLogicEEEEE_e5_v8__0l;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6[4] = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v3, v6);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

uint64_t __copy_helper_block_ea8_32c63_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_10StyleLogicEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(md::StyleLogic *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::StyleLogic::StyleLogic(float,VKSharedResources *,objc_object  {objcproto14MDRenderTarget}*,md::MapEngine *,md::MapEngineSettings const*,md::World *,std::shared_ptr<md::TaskContext> const&,md::AnimationRunner const*,BOOL,md::World *<md::RunLoopController> const&,VKMapPurpose)::$_2,std::allocator<VKMapPurpose>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A29660;
  a2[1] = v2;
  return result;
}

uint64_t __copy_helper_block_ea8_40c70_ZTSNSt3__110shared_ptrIN3gss17StylesheetManagerINS1_10PropertyIDEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t md::LabelManager::setStyleManager(uint64_t this, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x1E69E9840];
  if (*(this + 3528) != a2)
  {
    v3 = this;
    if (a3)
    {
      atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
    }

    *(this + 3528) = a2;
    v4 = *(this + 3536);
    *(v3 + 3536) = a3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5[0] = &unk_1F2A117C8;
    v5[1] = v3;
    v5[3] = v5;
    md::LabelManager::queueCommand(v3, 8, 1, v5);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v5);
  }

  return this;
}

void sub_1B28499A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LabelManager::setStyleManager(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::LabelManager::setStyleManager(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A117C8;
  a2[1] = v2;
  return result;
}

void md::LabelManager::setSceneManager(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = 0;
  operator new();
}

void sub_1B2849ACC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(a1);
}

void sub_1B2849C44(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void md::InstanceData::InstanceData(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 20) = 0;
  operator new();
}

void sub_1B2849D24(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *ggl::DeviceData::DeviceData(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  result = ggl::BufferData::BufferData(a1, a2, 3, a4, a5, a3);
  *result = &unk_1F2A5CF88;
  return result;
}

uint64_t md::RegistryManager::addCollectorSubscription<md::MeshRenderableLogic,CollectorKey>(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>::__value_func[abi:nn200100](v17, a4);
  if (!std::__hash_table<std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,std::__unordered_map_hasher<std::pair<unsigned long,unsigned int>,std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,std::hash<std::pair<unsigned long,unsigned int>>,std::equal_to<std::pair<unsigned long,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned long,unsigned int>,std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::hash<std::pair<unsigned long,unsigned int>>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>>>::find<std::pair<unsigned long,unsigned int>>(a1, a2, a3))
  {
    v7 = ((a2 - 0x61C8864680B583EBLL) << 6) + ((a2 - 0x61C8864680B583EBLL) >> 2) + a3;
    v8 = (v7 - 0x61C8864680B583EBLL) ^ (a2 - 0x61C8864680B583EBLL);
    v9 = a1[1];
    if (v9)
    {
      v10 = vcnt_s8(v9);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        v11 = (v7 - 0x61C8864680B583EBLL) ^ (a2 - 0x61C8864680B583EBLL);
        if (v8 >= *&v9)
        {
          v11 = v8 % *&v9;
        }
      }

      else
      {
        v11 = v8 & (*&v9 - 1);
      }

      v12 = *(*a1 + 8 * v11);
      if (v12)
      {
        for (i = *v12; i; i = *i)
        {
          v14 = i[1];
          if (v14 == v8)
          {
            if (i[2] == a2 && *(i + 6) == a3)
            {
              return std::__function::__value_func<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>::~__value_func[abi:nn200100](v17);
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v14 >= *&v9)
              {
                v14 %= *&v9;
              }
            }

            else
            {
              v14 &= *&v9 - 1;
            }

            if (v14 != v11)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

  return std::__function::__value_func<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>::~__value_func[abi:nn200100](v17);
}

void sub_1B284A21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,void *>>>>::~unique_ptr[abi:nn200100](&a9);
  std::__function::__value_func<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>::~__value_func[abi:nn200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<md::MeshRenderableLogic::MeshRenderableLogic(std::shared_ptr<md::RegistryManager> const&,std::shared_ptr<md::RunLoopController> const&,geo::TaskQueue *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_1,std::allocator<md::MeshRenderableLogic::MeshRenderableLogic(std::shared_ptr<md::RegistryManager> const&,std::shared_ptr<md::RunLoopController> const&,geo::TaskQueue *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_1>,std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A07D00;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,std::__unordered_map_hasher<std::pair<unsigned long,unsigned int>,std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,std::hash<std::pair<unsigned long,unsigned int>>,std::equal_to<std::pair<unsigned long,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned long,unsigned int>,std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::hash<std::pair<unsigned long,unsigned int>>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>>>::find<std::pair<unsigned long,unsigned int>>(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = (((a2 - 0x61C8864680B583EBLL) << 6) + ((a2 - 0x61C8864680B583EBLL) >> 2) + a3 - 0x61C8864680B583EBLL) ^ (a2 - 0x61C8864680B583EBLL);
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (((a2 - 0x61C8864680B583EBLL) << 6) + ((a2 - 0x61C8864680B583EBLL) >> 2) + a3 - 0x61C8864680B583EBLL) ^ (a2 - 0x61C8864680B583EBLL);
    if (v4 >= *&v3)
    {
      v6 = v4 % *&v3;
    }
  }

  else
  {
    v6 = v4 & (*&v3 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v4)
    {
      if (result[2] == a2 && *(result + 6) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v3)
        {
          v9 %= *&v3;
        }
      }

      else
      {
        v9 &= *&v3 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>::~__value_func[abi:nn200100](v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::MeshRenderableLogic::MeshRenderableLogic(std::shared_ptr<md::RegistryManager> const&,std::shared_ptr<md::RunLoopController> const&,geo::TaskQueue *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_3,std::allocator<md::MeshRenderableLogic::MeshRenderableLogic(std::shared_ptr<md::RegistryManager> const&,std::shared_ptr<md::RunLoopController> const&,geo::TaskQueue *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_3>,std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A08018;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<md::MeshRenderableLogic::MeshRenderableLogic(std::shared_ptr<md::RegistryManager> const&,std::shared_ptr<md::RunLoopController> const&,geo::TaskQueue *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_4,std::allocator<md::MeshRenderableLogic::MeshRenderableLogic(std::shared_ptr<md::RegistryManager> const&,std::shared_ptr<md::RunLoopController> const&,geo::TaskQueue *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_4>,std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A08150;
  *(a2 + 8) = *(result + 8);
  return result;
}

void geo::intern_vector<std::shared_ptr<gss::StylePropertySet<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::StylePropertySet<gss::PropertyID>>,gss::zone_mallocator>>::reallocate(gss::zone_mallocator *a1, uint64_t a2)
{
  v4 = gss::zone_mallocator::instance(a1);
  v5 = pthread_rwlock_rdlock((v4 + 32));
  if (v5)
  {
    geo::read_write_lock::logFailure(v5, "read lock", v6);
  }

  v7 = malloc_type_zone_malloc(*v4, 16 * a2, 0x20040A4A59CD2uLL);
  atomic_fetch_add((v4 + 24), 1u);
  geo::read_write_lock::unlock((v4 + 32));
  v8 = *a1;
  if (*a1)
  {
    v9 = *(a1 + 4);
    if (v9)
    {
      v10 = *(a1 + 4);
      v11 = v7;
      do
      {
        *v11++ = *v8;
        *v8 = 0;
        *(v8 + 8) = 0;
        v8 += 16;
        --v10;
      }

      while (v10);
    }

    geo::intern_vector<std::shared_ptr<gss::StylePropertySet<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::StylePropertySet<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(a1);
    *(a1 + 4) = v9;
  }

  *(a1 + 5) = a2;
  *a1 = v7;
}

void gss::StylePropertySet<gss::PropertyID>::intern(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::intern<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(a1 + 24, a2);
  if ((*(a1 + 64) & 1) == 0)
  {
    *(a1 + 64) = 1;
    v5 = *(a1 + 60);
    if (*(a1 + 60))
    {
      v6 = 6 * v5;
      v7 = *(a2 + 76);
      if (6 * v5 <= v7)
      {
        v8 = *(a2 + 72);
        if (v8 < v6)
        {
          v9 = gss::zone_mallocator::instance(v4);
          v10 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v9, v7);
          v11 = *(a2 + 76);
          v43 = &unk_1F2A5B768;
          v44 = v11;
          v45 = &v43;
          v46 = v10;
          v49 = &v47;
          v47 = &unk_1F2A5B768;
          v48 = v11;
          std::__function::__value_func<void ()(unsigned char *)>::~__value_func[abi:nn200100](&v43);
          v12 = *(a2 + 48);
          if (v12 >= *(a2 + 56))
          {
            v14 = std::vector<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>::__emplace_back_slow_path<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>((a2 + 40), &v46);
          }

          else
          {
            v13 = v46;
            v46 = 0;
            *v12 = v13;
            if (v49)
            {
              if (v49 == &v47)
              {
                v12[4] = (v12 + 1);
                (*(*v49 + 3))(v49);
              }

              else
              {
                v12[4] = v49;
                v49 = 0;
              }
            }

            else
            {
              v12[4] = 0;
            }

            v14 = (v12 + 5);
          }

          *(a2 + 48) = v14;
          v15 = *(a2 + 76);
          *(a2 + 64) = 0;
          *(a2 + 68) = v15;
          *(a2 + 72) = v15;
          v4 = std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>::~unique_ptr[abi:nn200100](&v46);
          v8 = *(a2 + 72);
        }

        v16 = *(*(a2 + 48) - 40);
        v17 = *(a2 + 64);
        v18 = *(a2 + 68) - 4 * v5;
        *(a2 + 64) = v17 + 2 * v5;
        *(a2 + 68) = v18;
        *(a2 + 72) = v8 - v6;
        if (v16)
        {
          v19 = v16 + v17;
          v20 = (v18 - v17);
          v21 = geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent((a1 + 48), (v16 + v17), (v16 + v17 + v20), 1);
          v22 = *(a1 + 48);
          v23 = gss::zone_mallocator::instance(v21);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v23, v22);
          *(a1 + 62) = 0;
          *(a1 + 48) = v19;
          *(a1 + 56) = v20;
        }
      }
    }
  }

  if ((*(a1 + 88) & 1) == 0)
  {
    *(a1 + 88) = 1;
    v24 = *(a1 + 84);
    if (*(a1 + 84))
    {
      v25 = 10 * v24;
      v26 = *(a2 + 116);
      if (10 * v24 <= v26)
      {
        v27 = *(a2 + 112);
        if (v27 < v25)
        {
          v28 = gss::zone_mallocator::instance(v4);
          v29 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v28, v26);
          v30 = *(a2 + 116);
          v43 = &unk_1F2A5B7B0;
          v44 = v30;
          v45 = &v43;
          v46 = v29;
          v49 = &v47;
          v47 = &unk_1F2A5B7B0;
          v48 = v30;
          std::__function::__value_func<void ()(unsigned char *)>::~__value_func[abi:nn200100](&v43);
          v31 = *(a2 + 88);
          if (v31 >= *(a2 + 96))
          {
            v33 = std::vector<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>::__emplace_back_slow_path<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>((a2 + 80), &v46);
          }

          else
          {
            v32 = v46;
            v46 = 0;
            *v31 = v32;
            if (v49)
            {
              if (v49 == &v47)
              {
                v31[4] = (v31 + 1);
                (*(*v49 + 3))(v49);
              }

              else
              {
                v31[4] = v49;
                v49 = 0;
              }
            }

            else
            {
              v31[4] = 0;
            }

            v33 = (v31 + 5);
          }

          *(a2 + 88) = v33;
          v34 = *(a2 + 116);
          *(a2 + 104) = 0;
          *(a2 + 108) = v34;
          *(a2 + 112) = v34;
          std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>::~unique_ptr[abi:nn200100](&v46);
          v27 = *(a2 + 112);
        }

        v35 = *(*(a2 + 88) - 40);
        v36 = *(a2 + 104);
        v37 = *(a2 + 108) - 8 * v24;
        *(a2 + 104) = v36 + 2 * v24;
        *(a2 + 108) = v37;
        *(a2 + 112) = v27 - v25;
        if (v35)
        {
          v38 = v35 + v36;
          v39 = (v37 - v36);
          v40 = geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent((a1 + 72), (v35 + v36), (v35 + v36 + v39), 1);
          v41 = *(a1 + 72);
          v42 = gss::zone_mallocator::instance(v40);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v42, v41);
          *(a1 + 86) = 0;
          *(a1 + 72) = v38;
          *(a1 + 80) = v39;
        }
      }
    }
  }

  geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::intern<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(a1, a2);
}

void sub_1B284A9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

id GEOGetVectorKitSceneQueryLogicLog(void)
{
  if (GEOGetVectorKitSceneQueryLogicLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitSceneQueryLogicLog(void)::onceToken, &__block_literal_global_23028);
  }

  v1 = GEOGetVectorKitSceneQueryLogicLog(void)::log;

  return v1;
}

void *gss::propertyDecoderForIndex<gss::PropertyID>(void *result, unsigned int a2)
{
  *result = &unk_1F2A5DBD0;
  v2 = gss::unknownPropertyDecoder<gss::PropertyID>;
  if (a2 <= 0x1E9)
  {
    v2 = off_1F2A5DC70[a2];
  }

  result[1] = v2;
  result[3] = result;
  return result;
}

unint64_t geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(unsigned __int16 **a1, unsigned __int16 a2)
{
  result = *(a1 + 6);
  if (!result)
  {
    return result;
  }

  v4 = *a1;
  if (*(a1 + 17) != 1)
  {
    v7 = 2 * result;
    v8 = *a1;
    while (*v8 != a2)
    {
      ++v8;
      v7 -= 2;
      if (!v7)
      {
        LODWORD(v8) = v4 + 2 * result;
        return ((v8 - v4) >> 1);
      }
    }

    return ((v8 - v4) >> 1);
  }

  if (result >= 0x1E)
  {
    v8 = *a1;
    v9 = result;
    do
    {
      v10 = v9 >> 1;
      v11 = &v8[v9 >> 1];
      v13 = *v11;
      v12 = v11 + 1;
      v9 += ~(v9 >> 1);
      if (v13 < a2)
      {
        v8 = v12;
      }

      else
      {
        v9 = v10;
      }
    }

    while (v9);
    if (v8 == &v4[result] || *v8 != a2)
    {
      return result;
    }

    return ((v8 - v4) >> 1);
  }

  v5 = 0;
  while (1)
  {
    v6 = v4[v5];
    if (v6 >= a2)
    {
      break;
    }

    if (result == ++v5)
    {
      return result;
    }
  }

  if (v6 == a2)
  {
    return v5;
  }

  else
  {
    return result;
  }
}

uint64_t std::__function::__func<geo::intern_map_allocator<gss::PropertyID,unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1},std::allocator<geo::intern_map_allocator<gss::PropertyID,unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A5B720;
  *(a2 + 8) = *(result + 8);
  return result;
}

const void **geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(const void **result, void *__dst, void *a3, int a4)
{
  if (*(result + 6))
  {
    v5 = result;
    if (a4)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(*(result + 6));
    }

    result = memmove(__dst, *result, 2 * *(result + 6));
    v6 = *(v5 + 6);
    if (*(v5 + 6))
    {
      v7 = *v5 + *(v5 + 2);

      return memmove(a3, v7, v6);
    }
  }

  return result;
}

uint64_t geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](uint64_t a1, unsigned __int16 a2)
{
  v4 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1, a2);
  LOWORD(v5) = v4;
  if (v4 != *(a1 + 12))
  {
    return *a1 + *(a1 + 8) + 8 * v4;
  }

  if ((*(a1 + 16) & 1) == 0 && geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1, a2) == v4)
  {
    isSpaceAvailable = geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(a1);
    v5 = *(a1 + 12);
    if (isSpaceAvailable)
    {
      v7 = *a1;
      *(*a1 + 2 * v5) = a2;
      *(&v7[4 * v5] + *(a1 + 8)) = 0;
      LOWORD(v5) = v5 + 1;
      *(a1 + 12) = v5;
      *(a1 + 17) = 0;
    }
  }

  return *a1 + *(a1 + 8) + 8 * v5 - 8;
}

uint64_t gss::enumDecoder<gss::PropertyID>(uint64_t *a1, unint64_t a2, unsigned __int8 a3, unsigned int a4, unsigned int a5, void *a6)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a5 > 0x1E9)
  {
    return 1;
  }

  v6 = *&asc_1B341D4EA[2 * a5];
  if (v6 == 509)
  {
    return 1;
  }

  geo::ibitstream::readUIntBits(v20, a1, a3);
  if (v20[0])
  {
    v11 = v21;
    if (v21 <= a4)
    {
      *buf = v6;
      buf[2] = 0;
      geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, buf, &v23);
      *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v6) = v11;
    }

    else
    {
      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v12 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v23 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
        v24 = 1024;
        v25 = 563;
        v26 = 2082;
        v27 = "Unexpected enum value, perhaps this stylesheet uses values that are too new for this client?";
        _os_log_impl(&dword_1B2754000, v12, OS_LOG_TYPE_DEBUG, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
      v13 = MEMORY[0x1B8C61C80](a6, 563);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " STYL Parse Warning: ", 21);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Unexpected enum value, perhaps this stylesheet uses values that are too new for this client?", 92);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\n", 1);
    }

    return 1;
  }

  if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
  {
    dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
  }

  v16 = GEOGetGeoCSSStyleSheetLog_log;
  if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v23 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
    v24 = 1024;
    v25 = 557;
    v26 = 2082;
    v27 = "Could not read uint backing for enum.";
    _os_log_impl(&dword_1B2754000, v16, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
  v17 = MEMORY[0x1B8C61C80](a6, 557);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " STYL Parse Error Here: ", 24);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Could not read uint backing for enum.", 37);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\n", 1);
  return 0;
}

uint64_t geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](uint64_t a1, unsigned __int16 a2)
{
  v4 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1, a2);
  LOWORD(v5) = v4;
  if (v4 != *(a1 + 12))
  {
    return *a1 + *(a1 + 8) + 4 * v4;
  }

  if ((*(a1 + 16) & 1) == 0 && geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1, a2) == v4)
  {
    isSpaceAvailable = geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(a1);
    v5 = *(a1 + 12);
    if (isSpaceAvailable)
    {
      v7 = *a1;
      *(*a1 + 2 * v5) = a2;
      *(&v7[2 * v5] + *(a1 + 8)) = 0;
      LOWORD(v5) = v5 + 1;
      *(a1 + 12) = v5;
      *(a1 + 17) = 0;
    }
  }

  return *a1 + *(a1 + 8) + 4 * v5 - 4;
}

uint64_t std::__function::__func<geo::intern_map_allocator<gss::PropertyID,unsigned int,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1},std::allocator<geo::intern_map_allocator<gss::PropertyID,unsigned int,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A5B768;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<geo::intern_map_allocator<gss::PropertyID,unsigned long long,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1},std::allocator<geo::intern_map_allocator<gss::PropertyID,unsigned long long,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A5B7B0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t gss::floatDecoder<gss::PropertyID>(uint64_t *a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a4 > 0x1E9)
  {
    return 1;
  }

  v6 = *&asc_1B341D4EA[2 * a4];
  if (v6 == 509)
  {
    return 1;
  }

  if (a3 == 32)
  {
    v29 = 0;
    v9 = a1[1];
    v10 = a1[2];
    v11 = *(a1 + 24);
    v12 = v10 + 5;
    if (!v11)
    {
      v12 = v10 + 4;
    }

    if (v9 >= v12)
    {
      v22 = *a1;
      if (*(a1 + 24))
      {
        v23 = 0;
        v24 = v10 + 1;
        v25 = (v22 + v24);
        do
        {
          if (v24 >= v9)
          {
            v26 = 0;
          }

          else
          {
            v26 = *v25;
          }

          v27 = ((v26 & (0xFFFF << (8 - v11))) >> (8 - v11)) | ((((1 << (8 - v11)) + 255) & *(v25 - 1)) << v11);
          a1[2] = v24;
          *(&v29 + v23++) = v27;
          ++v25;
          ++v24;
        }

        while (v23 != 4);
        v28 = v29;
      }

      else
      {
        v28 = *(v22 + v10);
        a1[2] = v10 + 4;
      }

      LOWORD(v29) = v6;
      BYTE2(v29) = 0;
      geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, &v29, &v30);
      *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v6) = v28;
      return 1;
    }

    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v13 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315650;
      v30 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v31 = 1024;
      v32 = 249;
      v33 = 2082;
      v34 = "Could not read float.";
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v29, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v14 = MEMORY[0x1B8C61C80](a6, 249);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " STYL Parse Error Here: ", 24);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Could not read float.", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
  }

  else
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v17 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315650;
      v30 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v31 = 1024;
      v32 = 248;
      v33 = 2082;
      v34 = "Found float with strange number of bits.";
      _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v29, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v18 = MEMORY[0x1B8C61C80](a6, 248);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " STYL Parse Error Here: ", 24);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Found float with strange number of bits.", 40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
  }

  return 0;
}

uint64_t gss::uint32Decoder<gss::PropertyID>(uint64_t *a1, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a4 > 0x1E9)
  {
    return 1;
  }

  v6 = *&asc_1B341D4EA[2 * a4];
  if (v6 == 509)
  {
    return 1;
  }

  if (a3 > 0x1F)
  {
    geo::ibitstream::readUIntBits(v19, a1, a3);
    if (v19[0])
    {
      v14 = v20;
      *buf = v6;
      buf[2] = 0;
      geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, buf, &v22);
      *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v6) = v14;
      return 1;
    }

    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v15 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v23 = 1024;
      v24 = 89;
      v25 = 2082;
      v26 = "Could not read unsigned integer.";
      _os_log_impl(&dword_1B2754000, v15, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v16 = MEMORY[0x1B8C61C80](a6, 89);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " STYL Parse Error Here: ", 24);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Could not read unsigned integer.", 32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\n", 1);
  }

  else
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v9 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v23 = 1024;
      v24 = 88;
      v25 = 2082;
      v26 = "Found unsigned integer property with too few bits.";
      _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v10 = MEMORY[0x1B8C61C80](a6, 88);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " STYL Parse Error Here: ", 24);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Found unsigned integer property with too few bits.", 50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  }

  return 0;
}

const void **geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(const void **result, void *__dst, void *a3, int a4)
{
  if (*(result + 6))
  {
    v5 = result;
    if (a4)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(*(result + 6));
    }

    result = memmove(__dst, *result, 2 * *(result + 6));
    v6 = *(v5 + 6);
    if (*(v5 + 6))
    {
      v7 = *v5 + *(v5 + 2);

      return memmove(a3, v7, 4 * v6);
    }
  }

  return result;
}

uint64_t gss::stringDecoder<gss::PropertyID>(uint64_t *a1, unint64_t a2, unint64_t a3, unsigned int a4, void *a5, void *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a4 > 0x1E9)
  {
    return 1;
  }

  v6 = *&asc_1B341D4EA[2 * a4];
  if (v6 == 509)
  {
    return 1;
  }

  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  if (a3)
  {
    memset(__p, 0, 24);
    if (geo::ibitstream::readString(a1, __p))
    {
      v13 = *__p;
      *v29 = *&__p[16];
      *&v29[3] = *&__p[19];
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(__p, *__p, *&__p[8]);
        *v30 = *__p;
        v31 = *&__p[16];
        operator delete(v13);
      }

      else
      {
        *&__p[16] = *v29;
        *&__p[19] = *&v29[3];
        *v30 = *__p;
        v31 = *&__p[16];
      }

      v20 = HIBYTE(v31);
      v21 = HIBYTE(v31);
      if (v31 < 0)
      {
        v20 = v30[1];
      }

      v22 = (a3 >> 3) - 1;
      v7 = v20 == v22;
      if (v20 == v22)
      {
        *__p = v6;
        __p[2] = 0;
        geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, __p, &__p[4]);
        v23 = geo::intern_pool<std::string,geo::allocator_adapter<std::string,gss::zone_mallocator>,std::vector<std::string,geo::allocator_adapter<std::string,gss::zone_mallocator>>>::emplace(*a5 + 352, v30);
        v24 = geo::intern_linear_map<gss::PropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 96, v6);
        *v24 = 1;
        *(v24 + 8) = v23;
        v21 = HIBYTE(v31);
      }

      else
      {
        if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
        }

        v25 = GEOGetGeoCSSStyleSheetLog_log;
        if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315650;
          *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 490;
          *&__p[18] = 2082;
          *&__p[20] = "String property was an unexpected length.";
          _os_log_impl(&dword_1B2754000, v25, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", __p, 0x1Cu);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
        v26 = MEMORY[0x1B8C61C80](a6, 490);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " STYL Parse Error Here: ", 24);
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "String property was an unexpected length.", 41);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "\n", 1);
      }

      if (v21 < 0)
      {
        operator delete(v30[0]);
      }
    }

    else
    {
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
      }

      v16 = GEOGetGeoCSSStyleSheetLog_log;
      if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315650;
        *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 488;
        *&__p[18] = 2082;
        *&__p[20] = "Could not read string.";
        _os_log_impl(&dword_1B2754000, v16, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", __p, 0x1Cu);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
      v17 = MEMORY[0x1B8C61C80](a6, 488);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " STYL Parse Error Here: ", 24);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Could not read string.", 22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\n", 1);
      return 0;
    }
  }

  else
  {
    *__p = v6;
    __p[2] = 0;
    v14 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, __p, &__p[4]);
    gss::PropertySetDefaultStringValue(v14);
    v15 = geo::intern_linear_map<gss::PropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 96, v6);
    v7 = 1;
    *v15 = 1;
    *(v15 + 8) = &gss::PropertySetDefaultStringValue(void)::defaultStringValue;
  }

  return v7;
}

uint64_t geo::intern_linear_map<gss::PropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](uint64_t a1, unsigned __int16 a2)
{
  v4 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1, a2);
  v5 = v4;
  if (v4 != *(a1 + 12))
  {
    return *a1 + *(a1 + 8) + 16 * v4;
  }

  if ((*(a1 + 16) & 1) == 0 && geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1, a2) == v4)
  {
    isSpaceAvailable = geo::intern_linear_map<gss::PropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(a1);
    v7 = *(a1 + 12);
    v5 = *(a1 + 12);
    if (isSpaceAvailable)
    {
      v8 = *a1;
      *(*a1 + 2 * v7) = a2;
      v9 = &v8[8 * v7] + *(a1 + 8);
      *v9 = 0;
      *(v9 + 1) = *v11;
      *(v9 + 4) = *&v11[3];
      *(v9 + 8) = 0;
      v5 = *(a1 + 12) + 1;
      *(a1 + 12) = v5;
      *(a1 + 17) = 0;
    }
  }

  return *a1 + *(a1 + 8) + 16 * v5 - 16;
}

uint64_t geo::intern_linear_map<gss::PropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (v1 != *(a1 + 14))
  {
    return 1;
  }

  if (v1 == 0xFFFF)
  {
    return 0;
  }

  v2 = 2 * (v1 & 0x7FFF);
  if (v2 <= 4)
  {
    v3 = 4;
  }

  else
  {
    v3 = v2;
  }

  geo::intern_linear_map<gss::PropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1, v3, 0);
  return 1;
}

uint64_t gss::fixedPoint12_4Decoder<gss::PropertyID>(uint64_t *a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a4 > 0x1E9)
  {
    return 1;
  }

  v6 = *&asc_1B341D4EA[2 * a4];
  if (v6 == 509)
  {
    return 1;
  }

  if (a3 == 16)
  {
    v31[1] = 0;
    v31[0] = 0;
    v9 = a1[1];
    v10 = a1[2];
    v11 = *(a1 + 24);
    v12 = v10 + 3;
    if (!v11)
    {
      v12 = v10 + 2;
    }

    if (v9 >= v12)
    {
      v22 = *a1;
      if (*(a1 + 24))
      {
        v23 = 0;
        v24 = v10 + 1;
        v25 = (v22 + v24);
        v26 = &v31[1];
        do
        {
          v27 = v23;
          if (v24 >= v9)
          {
            v28 = 0;
          }

          else
          {
            v28 = *v25;
          }

          v29 = (((1 << (8 - v11)) + 255) & *(v25 - 1)) << v11;
          a1[2] = v24;
          *v26 = ((v28 & (0xFFFF << (8 - v11))) >> (8 - v11)) | v29;
          ++v25;
          ++v24;
          v26 = v31;
          v23 = 1;
        }

        while ((v27 & 1) == 0);
        v30 = _byteswap_ushort(*v31);
      }

      else
      {
        v30 = *(v22 + v10);
        a1[2] = v10 + 2;
      }

      *&v31[1] = v6;
      v31[3] = 0;
      geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, &v31[1], &v32);
      *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v6) = vcvts_n_f32_u32(v30, 4uLL);
      return 1;
    }

    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v13 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *&v31[1] = 136315650;
      v32 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v33 = 1024;
      v34 = 424;
      v35 = 2082;
      v36 = "Could not read fixed point 12.4.";
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v31[1], 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v14 = MEMORY[0x1B8C61C80](a6, 424);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " STYL Parse Error Here: ", 24);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Could not read fixed point 12.4.", 32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
  }

  else
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v17 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *&v31[1] = 136315650;
      v32 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v33 = 1024;
      v34 = 423;
      v35 = 2082;
      v36 = "Found fixed point 12.4 property with strange number of bits.";
      _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v31[1], 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v18 = MEMORY[0x1B8C61C80](a6, 423);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " STYL Parse Error Here: ", 24);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Found fixed point 12.4 property with strange number of bits.", 60);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
  }

  return 0;
}

uint64_t gss::fixedPoint0To1Decoder<gss::PropertyID>(uint64_t *a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a4 > 0x1E9)
  {
    return 1;
  }

  v6 = *&asc_1B341D4EA[2 * a4];
  if (v6 == 509)
  {
    return 1;
  }

  if (a3 == 8)
  {
    v9 = *(a1 + 24);
    v11 = a1[1];
    v10 = a1[2];
    v12 = v10 + 2;
    if (!v9)
    {
      v12 = v10 + 1;
    }

    if (v11 >= v12)
    {
      v22 = v10 + 1;
      v23 = *a1;
      if (*(a1 + 24))
      {
        v24 = *(v23 + v10);
        if (v22 >= v11)
        {
          v25 = 0;
        }

        else
        {
          v25 = *(v23 + v22);
        }

        a1[2] = v22;
        v26 = ((v25 & (0xFFFF << (8 - v9))) >> (8 - v9)) | ((((1 << (8 - v9)) + 255) & v24) << v9);
      }

      else
      {
        LOBYTE(v26) = *(v23 + v10);
        a1[2] = v22;
      }

      LOWORD(v27) = v6;
      BYTE2(v27) = 0;
      geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, &v27, &v28);
      *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v6) = v26 * 0.0039216;
      return 1;
    }

    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v13 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315650;
      v28 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v29 = 1024;
      v30 = 314;
      v31 = 2082;
      v32 = "Could not read fixed point 0 to 1.";
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v27, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v14 = MEMORY[0x1B8C61C80](a6, 314);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " STYL Parse Error Here: ", 24);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Could not read fixed point 0 to 1.", 34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
  }

  else
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v17 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315650;
      v28 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v29 = 1024;
      v30 = 313;
      v31 = 2082;
      v32 = "Found fixed point 0 to 1 property with strange number of bits.";
      _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v27, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v18 = MEMORY[0x1B8C61C80](a6, 313);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " STYL Parse Error Here: ", 24);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Found fixed point 0 to 1 property with strange number of bits.", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
  }

  return 0;
}

void md::Monitorable<md::ConfigValue<GEOConfigKeyInteger,int>>::setCallbackQueue(uint64_t a1, void *a2, uint64_t a3)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (*(a1 + 24))
  {
    GEOConfigRemoveBlockListener();
    v6 = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  v7 = *(a3 + 24);
  if (!v7)
  {
    goto LABEL_6;
  }

  if (v7 != a3)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_6:
    v15 = v7;
    goto LABEL_8;
  }

  v15 = v14;
  (*(*v7 + 24))(v7, v14);
LABEL_8:
  v8 = a1 + 48;
  if ((a1 + 48) != v14)
  {
    v9 = v15;
    v10 = *(a1 + 72);
    if (v15 == v14)
    {
      if (v10 == v8)
      {
        (*(*v15 + 24))();
        (*(*v15 + 32))(v15);
        v15 = 0;
        (*(**(a1 + 72) + 24))(*(a1 + 72), v14);
        (*(**(a1 + 72) + 32))(*(a1 + 72));
        *(a1 + 72) = 0;
        v15 = v14;
        (*(v16[0] + 24))(v16, a1 + 48);
        (*(v16[0] + 32))(v16);
      }

      else
      {
        (*(*v15 + 24))();
        (*(*v15 + 32))(v15);
        v15 = *(a1 + 72);
      }

      *(a1 + 72) = v8;
    }

    else if (v10 == v8)
    {
      (*(*v10 + 24))(*(a1 + 72), v14);
      (*(**(a1 + 72) + 32))(*(a1 + 72));
      *(a1 + 72) = v15;
      v15 = v14;
    }

    else
    {
      v15 = *(a1 + 72);
      *(a1 + 72) = v9;
    }
  }

  std::__function::__value_func<void ()(int)>::~__value_func[abi:nn200100](v14);
  v11 = *(a1 + 40);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = _GEOConfigAddBlockListenerForKey();
  v13 = *(a1 + 24);
  *(a1 + 24) = v12;

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

void sub_1B284CB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(int)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::SettingsLogic::SettingsLogic(md::MapEngineSettings *,md::DaVinciGroundSettings const*,NSObject  {objcproto17OS_dispatch_queue}*)::$_0,std::allocator<md::SettingsLogic::SettingsLogic(md::MapEngineSettings *,md::DaVinciGroundSettings const*,NSObject  {objcproto17OS_dispatch_queue}*)::$_0>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A06F48;
  a2[1] = v2;
  return result;
}

void **std::unique_ptr<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::~__hash_table((v2 + 3));
    std::__list_imp<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry>>::clear(v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__func<md::PendingSceneLogic::PendingSceneLogic(md::World *,md::RunLoopController *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_0,std::allocator<md::PendingSceneLogic::PendingSceneLogic(md::World *,md::RunLoopController *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29EB3A8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t gdc::NonFlatTileSelector::NonFlatTileSelector(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2A602C8;
  *(a1 + 32) = gdc::kWorldZRange;
  std::__function::__value_func<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::__value_func[abi:nn200100](a1 + 48, a2);
  *(a1 + 80) = 1024;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1065353216;
  *(a1 + 128) = a1 + 128;
  *(a1 + 136) = a1 + 128;
  *(a1 + 144) = xmmword_1B33B24F0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 200) = a1 + 200;
  *(a1 + 208) = a1 + 200;
  *(a1 + 216) = 0;
  std::__function::__value_func<float ()(void)>::__value_func[abi:nn200100](a1 + 224, a3);
  return a1;
}

uint64_t std::__function::__func<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_1,std::allocator<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_1>,float ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A21118;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t gdc::GlobeTileSelector::GlobeTileSelector(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F2A60900;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 4048;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1065353216;
  *(a1 + 104) = a1 + 104;
  *(a1 + 112) = a1 + 104;
  *(a1 + 120) = xmmword_1B33B2500;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 1065353216;
  *(a1 + 176) = a1 + 176;
  *(a1 + 184) = a1 + 176;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 192) = xmmword_1B33B2500;
  *(a1 + 240) = 1065353216;
  *(a1 + 248) = a1 + 248;
  *(a1 + 256) = a1 + 248;
  *(a1 + 264) = 0;
  *(a1 + 272) = 1638656;
  *(a1 + 276) = 0;
  *(a1 + 280) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  v8 = *(a3 + 24);
  if (v8)
  {
    if (v8 == a3)
    {
      *(a1 + 392) = a1 + 368;
      (*(**(a3 + 24) + 24))(*(a3 + 24));
    }

    else
    {
      *(a1 + 392) = (*(*v8 + 16))(v8);
    }
  }

  else
  {
    *(a1 + 392) = 0;
  }

  std::__function::__value_func<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::__value_func[abi:nn200100](a1 + 400, a4);
  std::__function::__value_func<float ()(void)>::__value_func[abi:nn200100](a1 + 432, a5);
  return a1;
}

uint64_t std::__function::__func<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_4,std::allocator<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_4>,float ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A211F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned int,gdc::GlobeTileSelectorOptions &)>::~__value_func[abi:nn200100](uint64_t a1)
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

BOOL geo::QuadTileIterator::operator!=(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a2[1];
  v4 = *(a2 + 1);
  v3 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = a2[24];
  v8 = a2[32];
  v9 = *(a2 + 5);
  if (a1[24] == 1)
  {
    v21 = a1;
    v16 = *(a2 + 2);
    v17 = *(a2 + 5);
    v20 = a2[32];
    v15 = *(a2 + 1);
    v19 = a2[1];
    v14 = *a2;
    v18 = *(a2 + 2);
    v13 = a2[24];
    geo::QuadTile::computeHash(a1);
    v7 = v13;
    v6 = v18;
    v2 = v19;
    v5 = v14;
    v4 = v15;
    v8 = v20;
    v3 = v16;
    v9 = v17;
    a1 = v21;
    v21[24] = 0;
  }

  if (v7)
  {
    v11 = (v2 + ((v5 - 0x61C8864680B583EBLL) << 6) + ((v5 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (v5 - 0x61C8864680B583EBLL);
    v12 = (v4 + (v11 << 6) + (v11 >> 2) - 0x61C8864680B583EBLL) ^ v11;
    v6 = (v3 + (v12 << 6) + (v12 >> 2) - 0x61C8864680B583EBLL) ^ v12;
  }

  return *(a1 + 2) != v6 || *a1 != v5 || a1[1] != v2 || *(a1 + 1) != v4 || *(a1 + 2) != v3 || a1[32] != v8 || *(a1 + 5) != v9;
}

double geo::Geocentric<double>::toCoordinate3D<geo::Degrees,double>(double *a1, float64x2_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = sqrt(v3 * v3 + v4 * v4);
  v7 = atan2(v5, v6 * 0.996647189);
  v13 = atan2(v4, v3);
  v8 = __sincos_stret(v7);
  v12 = atan2(v5 + v8.__sinval * v8.__sinval * 42841.3115 * v8.__sinval, v6 + v8.__cosval * v8.__cosval * -42697.6727 * v8.__cosval);
  v9 = __sincos_stret(v12);
  result = v6 / v9.__cosval + -6378137.0 / sqrt(v9.__sinval * v9.__sinval * -0.00669437999 + 1.0);
  v11.f64[0] = v12;
  v11.f64[1] = v13;
  *a2 = vmulq_f64(v11, vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
  a2[1].f64[0] = result;
  return result;
}

BOOL std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>(void *a1, geo::QuadTile *this)
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

LABEL_16:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  result = std::equal_to<geo::QuadTile>::operator()[abi:nn200100](v10 + 16, this);
  if (!result)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,long long>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,long long>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,long long>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,long long>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(void *a1, unsigned __int16 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 8) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void md::IdentifiedResourceLogic::IdentifiedResourceLogic(std::shared_ptr<md::RegistryManager> const&,NSObject  {objcproto17OS_dispatch_queue}*)::$_0::operator()(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((a1 + 152));
  v2 = GEOConfigGetArray();
  v3 = v2;
  if (v2)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v9 + 1) + 8 * v7);
          if (v8)
          {
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long>((a1 + 152), [v8 unsignedLongLongValue]);
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

void gms::createMaterial<ggl::Texture2D>(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  if (v3 <= 3)
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  if (v3 != 4)
  {
    if (v3 == 5)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void gss::ClientStyleState<gss::PropertyID>::sourceClientStyleAttributes(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a2 + 16));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy(a1, a2 + 216);
  v6 = pthread_rwlock_unlock((a2 + 16));
  if (v6)
  {

    geo::read_write_lock::logFailure(v6, "unlock", v7);
  }
}

void std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t gdc::ServiceLocator::resolve<md::MaterialResourceStore>(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (*a1 != 0x4EDAD23DFB014132)
  {
    a1 += 5;
    if (a1 == a2)
    {
      return 0;
    }
  }

  if (a1 == a2)
  {
    return 0;
  }

  v3 = a1[3];
  v2 = a1[4];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return v3;
}

void md::LightingLogic::setFixedDateWithHour(id *this, uint64_t a2)
{
  if (a2 == -1)
  {
    if (*(this + 392) == 1)
    {

      *(this + 392) = 0;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E695DEE8] currentCalendar];
    v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v4 setYear:2024];
    [v4 setMonth:1];
    [v4 setDay:1];
    if (a2 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = a2;
    }

    if (v5 >= 24)
    {
      v6 = 24;
    }

    else
    {
      v6 = v5;
    }

    [v4 setHour:v6];
    v7 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"America/New_York"];
    [v4 setTimeZone:v7];

    v8 = [v10 dateFromComponents:v4];
    if (*(this + 392) == 1)
    {
      v9 = this[48];
      this[48] = v8;
    }

    else
    {
      this[48] = v8;
      *(this + 392) = 1;
    }
  }
}

uint64_t md::Transformable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::update(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    *(a1 + 16) = GEOConfigGetBOOL();
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    result = (*(*v3 + 48))(v3, a1 + 16);
    *(a1 + 17) = result;
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:nn200100]();
    return md::LogicBase::addDependencies<md::CameraContext,md::StyleLogicContext>(v5);
  }

  return result;
}

uint64_t md::OverlaysLogic::_forEachOverlayLevelAndFallback(uint64_t a1)
{
  v2 = 0;
  v11 = *MEMORY[0x1E69E9840];
  v10 = xmmword_1B33B0560;
  do
  {
    v3 = 0;
    v4 = *(&v10 + v2);
    v9 = xmmword_1B33B0560;
    do
    {
      v7 = *(&v9 + v3);
      v8 = v4;
      v5 = *(a1 + 24);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      result = (*(*v5 + 48))(v5, &v8, &v7);
      v3 += 8;
    }

    while (v3 != 16);
    v2 += 8;
  }

  while (v2 != 16);
  return result;
}

uint64_t *std::unique_ptr<std::unordered_map<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,std::allocator<std::pair<md::SurfaceKey const,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,std::__unordered_map_hasher<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,true>,std::__unordered_map_equal<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyEqual,md::SurfaceKeyHash,true>,std::allocator<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>::__deallocate_node(*(v2 + 16));
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      operator delete(v3);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void sub_1B284F3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *)>>,void *>>>>::~unique_ptr[abi:nn200100](&a13);
  std::__function::__value_func<void ()(gdc::Registry *)>::~__value_func[abi:nn200100](&a9);
  std::unique_ptr<gdc::Registry>::reset[abi:nn200100](v13, 0);
  _Unwind_Resume(a1);
}

void md::RegistryManager::addRegistry(uint64_t a1, uint64_t a2, gdc::Registry **a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = GEOGetVectorKitRegistryManagerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(*a3 + 20);
    stringForKey(&__p, a2);
    v8 = v12 >= 0 ? &__p : __p;
    *buf = 67109378;
    *&buf[4] = v7;
    v14 = 2080;
    v15 = v8;
    _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_DEBUG, "Queuing incoming registry:%d for key:%s", buf, 0x12u);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }
  }

  std::mutex::lock((a1 + 80));
  v9 = *std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::__find_equal<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>(a1 + 208, buf, a2);
  if (!v9)
  {
    operator new();
  }

  v10 = *a3;
  *a3 = 0;
  std::unique_ptr<gdc::Registry>::reset[abi:nn200100]((v9 + 136), v10);
  std::mutex::unlock((a1 + 80));
}

void sub_1B284F5C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  std::mutex::unlock((v2 + 80));
  _Unwind_Resume(a1);
}

id GEOGetVectorKitRegistryManagerLog(void)
{
  if (GEOGetVectorKitRegistryManagerLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitRegistryManagerLog(void)::onceToken, &__block_literal_global_9062);
  }

  v1 = GEOGetVectorKitRegistryManagerLog(void)::log;

  return v1;
}

void ___ZL33GEOGetVectorKitRegistryManagerLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "RegistryManager");
  v1 = GEOGetVectorKitRegistryManagerLog(void)::log;
  GEOGetVectorKitRegistryManagerLog(void)::log = v0;
}

gdc::Registry *std::unique_ptr<gdc::Registry>::reset[abi:nn200100](gdc::Registry **a1, gdc::Registry *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    gdc::Registry::~Registry(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

gdc::Registry **std::unique_ptr<gdc::Registry>::~unique_ptr[abi:nn200100](gdc::Registry **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    gdc::Registry::~Registry(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

ggl::CommonMesh::Pos4Mesh *ggl::CommonMesh::Pos4Mesh::Pos4Mesh(ggl::CommonMesh::Pos4Mesh *this, const char *a2)
{
  ggl::MeshTyped<ggl::CommonMesh::BufferPos4>::typedReflection();
  *(this + 1) = a2;
  ggl::RenderDataHolder::RenderDataHolder(this + 16);
  *(this + 7) = &ggl::MeshTyped<ggl::CommonMesh::BufferPos4>::typedReflection(void)::r;
  *(this + 8) = 0;
  v4 = this + 64;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 15) = 0;
  *(this + 17) = 0;
  *(this + 14) = this + 120;
  *this = &unk_1F29E40E8;
  *(this + 2) = &unk_1F29E4108;
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::resize((this + 64), qword_1ED66A690);
  *this = &unk_1F29E3FB0;
  *(this + 2) = &unk_1F29E3FD0;
  if (!a2)
  {
    a2 = "/VertexData";
  }

  v6 = ggl::zone_mallocator::instance(v5);
  v7 = pthread_rwlock_rdlock((v6 + 32));
  if (v7)
  {
    geo::read_write_lock::logFailure(v7, "read lock", v8);
  }

  v9 = malloc_type_zone_malloc(*v6, 0x100uLL, 0x1081040D98108EAuLL);
  atomic_fetch_add((v6 + 24), 1u);
  geo::read_write_lock::unlock((v6 + 32));
  v9[1] = 0;
  v9[2] = 0;
  *v9 = &unk_1F29F2028;
  v10 = ggl::VertexData::VertexData((v9 + 4), a2, &ggl::CommonMesh::bufferPos4Reflection, 0, 6, 0);
  v9[4] = &unk_1F2A20928;
  v9[29] = &unk_1F2A20948;
  *&v11 = v10;
  *(&v11 + 1) = v9;
  v12 = *(*v4 + 8);
  **v4 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  return this;
}

void *ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ggl::BufferMemory::BufferMemory(a1);
  ggl::ResourceAccessor::accessIndexData(v9, 0, a2, a3, a4, 1, 0);
  ggl::BufferMemory::operator=(a1, v9);
  ggl::BufferMemory::~BufferMemory(v9);
  return a1;
}

uint64_t md::components::MeshInstance::MeshInstance(uint64_t a1, uint64_t a2, __int128 *a3, char a4, uint64_t a5, char a6)
{
  v17[4] = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a4;
  *(a1 + 36) = xmmword_1B33AFF10;
  v7 = a1 + 36;
  *(a1 + 52) = 0x80000000800000;
  v8 = *a3;
  v9 = a3[1];
  *(a1 + 92) = a3[2];
  *(a1 + 76) = v9;
  *(a1 + 60) = v8;
  if (*(a5 + 8) == 1)
  {
    *(a1 + 8) = *a5;
    *(a1 + 16) = a6;
    *(a1 + 24) = 1;
  }

  if (a2)
  {
    v10 = 0;
    v11 = v15;
    do
    {
      v12 = 0;
      v13 = v11;
      do
      {
        *v13 = *(a3 + v12);
        v13 += 4;
        v12 += 12;
      }

      while (v12 != 48);
      ++v10;
      ++v11;
      a3 = (a3 + 4);
    }

    while (v10 != 3);
    v15[3] = 0;
    v15[7] = 0;
    v15[11] = 0;
    v15[15] = 1065353216;
    *v16 = xmmword_1B33AFF10;
    *&v16[16] = 0x80000000800000;
    v17[0] = &unk_1F2A572F0;
    v17[1] = v16;
    v17[2] = v15;
    v17[3] = v17;
    gm::Box<float,3>::forEachCorner((a2 + 36), v17);
    std::__function::__value_func<void ()(gm::Matrix<float,3,1> &)>::~__value_func[abi:nn200100](v17);
    *v7 = *v16;
    *(v7 + 8) = *&v16[8];
    *(a1 + 48) = *&v16[12];
    *(a1 + 56) = *&v16[20];
  }

  return a1;
}

float std::__function::__func<gm::Box<float,3>::transformedAndEnclosed(gm::Matrix<float,4,4> const&)::{lambda(gm::Matrix<float,3,1> &)#1},std::allocator<gm::Box<float,3>::transformedAndEnclosed(gm::Matrix<float,4,4> const&)::{lambda(gm::Matrix<float,3,1> &)#1}>,void ()(gm::Matrix<float,3,1> &)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v12 = *(a2 + 8);
  v13 = 1065353216;
  do
  {
    v5 = 0;
    v6 = 0.0;
    do
    {
      v6 = v6 + (*(&v11 + v5) * *(v4 + 4 * v5));
      v5 += 4;
    }

    while (v5 != 16);
    *(&v14 + v2++) = v6;
    v4 += 4;
  }

  while (v2 != 4);
  for (i = 0; i != 12; i += 4)
  {
    v8 = (v3 + i);
    v9 = *(&v14 + i);
    *v8 = fminf(v9, *(v3 + i));
    result = fmaxf(*(v3 + i + 12), v9);
    v8[3] = result;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(gm::Matrix<float,3,1> &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::Venue const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(VKAnimation *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::function<BOOL ()(void)>::operator=(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:nn200100](v6, a2);
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

  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:nn200100](v6);
  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

double md::TransitContext::TransitContext(md::TransitContext *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 5) = 0;
  *(this + 17) = 0;
  *(this + 3) = 0;
  *(this + 12) = 1065353216;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 73) = 0;
  *(this + 10) = 0;
  *(this + 26) = 1065353216;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 129) = 0;
  *(this + 40) = 1065353216;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 26) = 0;
  *(this + 185) = 0;
  *(this + 24) = 0;
  *(this + 54) = 1065353216;
  *(this + 224) = 0;
  result = 0.0;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 66) = 1065353216;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 76) = 1065353216;
  *(this + 312) = 0;
  return result;
}

uint64_t std::__function::__value_func<void ()(VKNavigationPuckLocationTracingEvent *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void sub_1B2850250(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void ggl::BuildingFacadeDepthShader::typedReflection(ggl::BuildingFacadeDepthShader *this)
{
  {
    if (v1)
    {
      ggl::BuildingFacadeDepthShader::typedReflection(void)::ref = "BuildingFacadeDepthShader";
      ggl::buildingFacadeDepthShaderVertexFunctionDescriptor(v1);
      qword_1ED66B7D0 = &ggl::buildingFacadeDepthShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66B7D8 = -1586420967;
      ggl::buildingFacadeDepthShaderFragmentFunctionDescriptor(v2);
      qword_1ED66B7E0 = &ggl::buildingFacadeDepthShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66B7E8 = 2032307752;
      qword_1ED66B7F0 = ggl::buildingFacadeDepthShaderShaderConstants(void)::ref;
      unk_1ED66B7F8 = 2;
      qword_1ED66B800 = &ggl::buildingFacadeDepthShaderShaderTextures(void)::ref;
      unk_1ED66B808 = 0;
      qword_1ED66B810 = &ggl::buildingFacadeDepthShaderShaderSamplers(void)::ref;
      unk_1ED66B818 = 0;
    }
  }
}

void ggl::BuildingFlatStrokeShader::typedReflection(ggl::BuildingFlatStrokeShader *this)
{
  {
    if (v1)
    {
      ggl::BuildingFlatStrokeShader::typedReflection(void)::ref = "BuildingFlatStrokeShader";
      ggl::buildingFlatStrokeShaderVertexFunctionDescriptor(v1);
      qword_1ED66BA50 = &ggl::buildingFlatStrokeShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66BA58 = 1378715407;
      ggl::buildingFlatStrokeShaderFragmentFunctionDescriptor(v2);
      qword_1ED66BA60 = &ggl::buildingFlatStrokeShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66BA68 = -1274957998;
      qword_1ED66BA70 = ggl::buildingFlatStrokeShaderShaderConstants(void)::ref;
      unk_1ED66BA78 = 2;
      qword_1ED66BA80 = ggl::buildingFlatStrokeShaderShaderTextures(void)::ref;
      unk_1ED66BA88 = 1;
      qword_1ED66BA90 = &ggl::buildingFlatStrokeShaderShaderSamplers(void)::ref;
      unk_1ED66BA98 = 1;
    }
  }
}

void ggl::BuildingPointyRoofDepthShader::typedReflection(ggl::BuildingPointyRoofDepthShader *this)
{
  {
    if (v1)
    {
      ggl::BuildingPointyRoofDepthShader::typedReflection(void)::ref = "BuildingPointyRoofDepthShader";
      ggl::buildingPointyRoofDepthShaderVertexFunctionDescriptor(v1);
      qword_1ED66B000 = &ggl::buildingPointyRoofDepthShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66B008 = -1312185861;
      ggl::buildingPointyRoofDepthShaderFragmentFunctionDescriptor(v2);
      qword_1ED66B010 = &ggl::buildingPointyRoofDepthShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66B018 = 383577586;
      qword_1ED66B020 = ggl::buildingPointyRoofDepthShaderShaderConstants(void)::ref;
      unk_1ED66B028 = 2;
      qword_1ED66B030 = &ggl::buildingPointyRoofDepthShaderShaderTextures(void)::ref;
      unk_1ED66B038 = 0;
      qword_1ED66B040 = &ggl::buildingPointyRoofDepthShaderShaderSamplers(void)::ref;
      unk_1ED66B048 = 0;
    }
  }
}

void ggl::BuildingShadowShader::typedReflection(ggl::BuildingShadowShader *this)
{
  {
    if (v1)
    {
      ggl::BuildingShadowShader::typedReflection(void)::ref = "BuildingShadowShader";
      ggl::buildingShadowShaderVertexFunctionDescriptor(v1);
      qword_1ED66C6C0 = &ggl::buildingShadowShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66C6C8 = -1538646970;
      ggl::buildingShadowShaderFragmentFunctionDescriptor(v2);
      qword_1ED66C6D0 = &ggl::buildingShadowShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66C6D8 = -228071499;
      qword_1ED66C6E0 = ggl::buildingShadowShaderShaderConstants(void)::ref;
      unk_1ED66C6E8 = 2;
      qword_1ED66C6F0 = ggl::buildingShadowShaderShaderTextures(void)::ref;
      unk_1ED66C6F8 = 1;
      qword_1ED66C700 = &ggl::buildingShadowShaderShaderSamplers(void)::ref;
      unk_1ED66C708 = 1;
    }
  }
}

void ggl::ColorGlyphWithNormalHaloShader::typedReflection(ggl::ColorGlyphWithNormalHaloShader *this)
{
  {
    if (v1)
    {
      ggl::ColorGlyphWithNormalHaloShader::typedReflection(void)::ref = "ColorGlyphWithNormalHaloShader";
      ggl::colorGlyphWithNormalHaloShaderVertexFunctionDescriptor(v1);
      qword_1ED66AD80 = &ggl::colorGlyphWithNormalHaloShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66AD88 = 252514057;
      ggl::colorGlyphWithNormalHaloShaderFragmentFunctionDescriptor(v2);
      qword_1ED66AD90 = &ggl::colorGlyphWithNormalHaloShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66AD98 = 20471526;
      qword_1ED66ADA0 = ggl::colorGlyphWithNormalHaloShaderShaderConstants(void)::ref;
      unk_1ED66ADA8 = 5;
      qword_1ED66ADB0 = ggl::colorGlyphWithNormalHaloShaderShaderTextures(void)::ref;
      unk_1ED66ADB8 = 2;
      qword_1ED66ADC0 = ggl::colorGlyphWithNormalHaloShaderShaderSamplers(void)::ref;
      unk_1ED66ADC8 = 2;
    }
  }
}

void ggl::InstancedDebugShader::typedReflection(ggl::InstancedDebugShader *this)
{
  {
    if (v1)
    {
      ggl::InstancedDebugShader::typedReflection(void)::ref = "InstancedDebugShader";
      ggl::instancedDebugShaderVertexFunctionDescriptor(v1);
      qword_1ED66C5A8 = &ggl::instancedDebugShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66C5B0 = 148998421;
      ggl::instancedDebugShaderFragmentFunctionDescriptor(v2);
      qword_1ED66C5B8 = &ggl::instancedDebugShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66C5C0 = -476831166;
      qword_1ED66C5C8 = ggl::instancedDebugShaderShaderConstants(void)::ref;
      unk_1ED66C5D0 = 3;
      qword_1ED66C5D8 = &ggl::instancedDebugShaderShaderTextures(void)::ref;
      unk_1ED66C5E0 = 0;
      qword_1ED66C5E8 = &ggl::instancedDebugShaderShaderSamplers(void)::ref;
      unk_1ED66C5F0 = 0;
    }
  }
}

void ggl::DebugLineShader::typedReflection(ggl::DebugLineShader *this)
{
  {
    if (v1)
    {
      ggl::DebugLineShader::typedReflection(void)::ref = "DebugLineShader";
      ggl::debugLineShaderVertexFunctionDescriptor(v1);
      qword_1ED65EE08 = &ggl::debugLineShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65EE10 = 167696548;
      ggl::debugLineShaderFragmentFunctionDescriptor(v2);
      qword_1ED65EE18 = &ggl::debugLineShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65EE20 = 36101574;
      qword_1ED65EE28 = ggl::debugLineShaderShaderConstants(void)::ref;
      unk_1ED65EE30 = 4;
      qword_1ED65EE38 = &ggl::debugLineShaderShaderTextures(void)::ref;
      unk_1ED65EE40 = 0;
      qword_1ED65EE48 = &ggl::debugLineShaderShaderSamplers(void)::ref;
      unk_1ED65EE50 = 0;
    }
  }
}

void ggl::ElevatedFillColorShader::typedReflection(ggl::ElevatedFillColorShader *this)
{
  {
    if (v1)
    {
      ggl::ElevatedFillColorShader::typedReflection(void)::ref = "ElevatedFillColorShader";
      ggl::elevatedFillColorShaderVertexFunctionDescriptor(v1);
      qword_1ED65E898 = &ggl::elevatedFillColorShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65E8A0 = 232451818;
      ggl::elevatedFillColorShaderFragmentFunctionDescriptor(v2);
      qword_1ED65E8A8 = &ggl::elevatedFillColorShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65E8B0 = -1553584400;
      qword_1ED65E8B8 = ggl::elevatedFillColorShaderShaderConstants(void)::ref;
      unk_1ED65E8C0 = 4;
      qword_1ED65E8C8 = &ggl::elevatedFillColorShaderShaderTextures(void)::ref;
      unk_1ED65E8D0 = 0;
      qword_1ED65E8D8 = &ggl::elevatedFillColorShaderShaderSamplers(void)::ref;
      unk_1ED65E8E0 = 0;
    }
  }
}

void ggl::ElevatedStrokeColorWithDistanceShader::typedReflection(ggl::ElevatedStrokeColorWithDistanceShader *this)
{
  {
    if (v1)
    {
      ggl::ElevatedStrokeColorWithDistanceShader::typedReflection(void)::ref = "ElevatedStrokeColorWithDistanceShader";
      ggl::elevatedStrokeColorWithDistanceShaderVertexFunctionDescriptor(v1);
      qword_1ED65DD58 = &ggl::elevatedStrokeColorWithDistanceShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65DD60 = 1731713468;
      ggl::elevatedStrokeColorWithDistanceShaderFragmentFunctionDescriptor(v2);
      qword_1ED65DD68 = &ggl::elevatedStrokeColorWithDistanceShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65DD70 = -147186752;
      qword_1ED65DD78 = ggl::elevatedStrokeColorWithDistanceShaderShaderConstants(void)::ref;
      unk_1ED65DD80 = 5;
      qword_1ED65DD88 = ggl::elevatedStrokeColorWithDistanceShaderShaderTextures(void)::ref;
      unk_1ED65DD90 = 1;
      qword_1ED65DD98 = &ggl::elevatedStrokeColorWithDistanceShaderShaderSamplers(void)::ref;
      unk_1ED65DDA0 = 1;
    }
  }
}

void ggl::FoggedDiffuseBuildingShader::typedReflection(ggl::FoggedDiffuseBuildingShader *this)
{
  {
    if (v1)
    {
      ggl::FoggedDiffuseBuildingShader::typedReflection(void)::ref = "FoggedDiffuseBuildingShader";
      ggl::foggedDiffuseBuildingShaderVertexFunctionDescriptor(v1);
      qword_1ED66B330 = &ggl::foggedDiffuseBuildingShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66B338 = -1335203116;
      ggl::foggedDiffuseBuildingShaderFragmentFunctionDescriptor(v2);
      qword_1ED66B340 = &ggl::foggedDiffuseBuildingShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66B348 = 142003972;
      qword_1ED66B350 = ggl::foggedDiffuseBuildingShaderShaderConstants(void)::ref;
      unk_1ED66B358 = 7;
      qword_1ED66B360 = ggl::foggedDiffuseBuildingShaderShaderTextures(void)::ref;
      unk_1ED66B368 = 1;
      qword_1ED66B370 = &ggl::foggedDiffuseBuildingShaderShaderSamplers(void)::ref;
      unk_1ED66B378 = 1;
    }
  }
}

void ggl::FoggedDiffuseBuildingTopShader::typedReflection(ggl::FoggedDiffuseBuildingTopShader *this)
{
  {
    if (v1)
    {
      ggl::FoggedDiffuseBuildingTopShader::typedReflection(void)::ref = "FoggedDiffuseBuildingTopShader";
      ggl::foggedDiffuseBuildingTopShaderVertexFunctionDescriptor(v1);
      qword_1ED66AD28 = &ggl::foggedDiffuseBuildingTopShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66AD30 = -2014890070;
      ggl::foggedDiffuseBuildingTopShaderFragmentFunctionDescriptor(v2);
      qword_1ED66AD38 = &ggl::foggedDiffuseBuildingTopShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66AD40 = -1408204360;
      qword_1ED66AD48 = ggl::foggedDiffuseBuildingTopShaderShaderConstants(void)::ref;
      unk_1ED66AD50 = 7;
      qword_1ED66AD58 = &ggl::foggedDiffuseBuildingTopShaderShaderTextures(void)::ref;
      unk_1ED66AD60 = 0;
      qword_1ED66AD68 = &ggl::foggedDiffuseBuildingTopShaderShaderSamplers(void)::ref;
      unk_1ED66AD70 = 0;
    }
  }
}

void ggl::FoggedSpecularBuildingShader::typedReflection(ggl::FoggedSpecularBuildingShader *this)
{
  {
    if (v1)
    {
      ggl::FoggedSpecularBuildingShader::typedReflection(void)::ref = "FoggedSpecularBuildingShader";
      ggl::foggedSpecularBuildingShaderVertexFunctionDescriptor(v1);
      qword_1ED66B108 = &ggl::foggedSpecularBuildingShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66B110 = -1622728716;
      ggl::foggedSpecularBuildingShaderFragmentFunctionDescriptor(v2);
      qword_1ED66B118 = &ggl::foggedSpecularBuildingShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66B120 = -1113767624;
      qword_1ED66B128 = ggl::foggedSpecularBuildingShaderShaderConstants(void)::ref;
      unk_1ED66B130 = 7;
      qword_1ED66B138 = ggl::foggedSpecularBuildingShaderShaderTextures(void)::ref;
      unk_1ED66B140 = 1;
      qword_1ED66B148 = &ggl::foggedSpecularBuildingShaderShaderSamplers(void)::ref;
      unk_1ED66B150 = 1;
    }
  }
}

void ggl::FoggedSpecularLandmarkShader::typedReflection(ggl::FoggedSpecularLandmarkShader *this)
{
  {
    if (v1)
    {
      ggl::FoggedSpecularLandmarkShader::typedReflection(void)::ref = "FoggedSpecularLandmarkShader";
      ggl::foggedSpecularLandmarkShaderVertexFunctionDescriptor(v1);
      qword_1ED66B0B0 = &ggl::foggedSpecularLandmarkShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66B0B8 = -1079709342;
      ggl::foggedSpecularLandmarkShaderFragmentFunctionDescriptor(v2);
      qword_1ED66B0C0 = &ggl::foggedSpecularLandmarkShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66B0C8 = -583761096;
      qword_1ED66B0D0 = ggl::foggedSpecularLandmarkShaderShaderConstants(void)::ref;
      unk_1ED66B0D8 = 7;
      qword_1ED66B0E0 = ggl::foggedSpecularLandmarkShaderShaderTextures(void)::ref;
      unk_1ED66B0E8 = 1;
      qword_1ED66B0F0 = &ggl::foggedSpecularLandmarkShaderShaderSamplers(void)::ref;
      unk_1ED66B0F8 = 1;
    }
  }
}

void ggl::GlobeAtmosphereShader::typedReflection(ggl::GlobeAtmosphereShader *this)
{
  {
    if (v1)
    {
      ggl::GlobeAtmosphereShader::typedReflection(void)::ref = "GlobeAtmosphereShader";
      ggl::globeAtmosphereShaderVertexFunctionDescriptor(v1);
      qword_1ED66C2D0 = &ggl::globeAtmosphereShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66C2D8 = 982826680;
      ggl::globeAtmosphereShaderFragmentFunctionDescriptor(v2);
      qword_1ED66C2E0 = &ggl::globeAtmosphereShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66C2E8 = 1082161052;
      qword_1ED66C2F0 = ggl::globeAtmosphereShaderShaderConstants(void)::ref;
      unk_1ED66C2F8 = 2;
      qword_1ED66C300 = &ggl::globeAtmosphereShaderShaderTextures(void)::ref;
      unk_1ED66C308 = 0;
      qword_1ED66C310 = &ggl::globeAtmosphereShaderShaderSamplers(void)::ref;
      unk_1ED66C318 = 0;
    }
  }
}

void ggl::GlobeStarsShader::typedReflection(ggl::GlobeStarsShader *this)
{
  {
    if (v1)
    {
      ggl::GlobeStarsShader::typedReflection(void)::ref = "GlobeStarsShader";
      ggl::globeStarsShaderVertexFunctionDescriptor(v1);
      qword_1ED66D478 = &ggl::globeStarsShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66D480 = -619368475;
      ggl::globeStarsShaderFragmentFunctionDescriptor(v2);
      qword_1ED66D488 = &ggl::globeStarsShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66D490 = -929229098;
      qword_1ED66D498 = ggl::globeStarsShaderShaderConstants(void)::ref;
      unk_1ED66D4A0 = 1;
      qword_1ED66D4A8 = &ggl::globeStarsShaderShaderTextures(void)::ref;
      unk_1ED66D4B0 = 0;
      qword_1ED66D4B8 = &ggl::globeStarsShaderShaderSamplers(void)::ref;
      unk_1ED66D4C0 = 0;
    }
  }
}

void ggl::GlowShader::typedReflection(ggl::GlowShader *this)
{
  {
    if (v1)
    {
      ggl::GlowShader::typedReflection(void)::ref = "GlowShader";
      ggl::glowShaderVertexFunctionDescriptor(v1);
      qword_1ED66DF50 = &ggl::glowShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66DF58 = 117578436;
      ggl::glowShaderFragmentFunctionDescriptor(v2);
      qword_1ED66DF60 = &ggl::glowShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66DF68 = 313596673;
      qword_1ED66DF70 = ggl::glowShaderShaderConstants(void)::ref;
      unk_1ED66DF78 = 3;
      qword_1ED66DF80 = &ggl::glowShaderShaderTextures(void)::ref;
      unk_1ED66DF88 = 0;
      qword_1ED66DF90 = &ggl::glowShaderShaderSamplers(void)::ref;
      unk_1ED66DF98 = 0;
    }
  }
}

void ggl::GradientPolylineOverlayAlphaFillShader::typedReflection(ggl::GradientPolylineOverlayAlphaFillShader *this)
{
  {
    if (v1)
    {
      ggl::GradientPolylineOverlayAlphaFillShader::typedReflection(void)::ref = "GradientPolylineOverlayAlphaFillShader";
      ggl::gradientPolylineOverlayAlphaFillShaderVertexFunctionDescriptor(v1);
      qword_1ED66A838 = &ggl::gradientPolylineOverlayAlphaFillShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66A840 = 503820842;
      ggl::gradientPolylineOverlayAlphaFillShaderFragmentFunctionDescriptor(v2);
      qword_1ED66A848 = &ggl::gradientPolylineOverlayAlphaFillShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66A850 = 172095420;
      qword_1ED66A858 = ggl::gradientPolylineOverlayAlphaFillShaderShaderConstants(void)::ref;
      unk_1ED66A860 = 4;
      qword_1ED66A868 = ggl::gradientPolylineOverlayAlphaFillShaderShaderTextures(void)::ref;
      unk_1ED66A870 = 1;
      qword_1ED66A878 = &ggl::gradientPolylineOverlayAlphaFillShaderShaderSamplers(void)::ref;
      unk_1ED66A880 = 1;
    }
  }
}

void ggl::GridUVShader::typedReflection(ggl::GridUVShader *this)
{
  {
    if (v1)
    {
      ggl::GridUVShader::typedReflection(void)::ref = "GridUVShader";
      ggl::gridUVShaderVertexFunctionDescriptor(v1);
      qword_1EB838F80 = &ggl::gridUVShaderVertexFunctionDescriptor(void)::ref;
      dword_1EB838F88 = -2001406110;
      ggl::gridUVShaderFragmentFunctionDescriptor(v2);
      qword_1EB838F90 = &ggl::gridUVShaderFragmentFunctionDescriptor(void)::ref;
      dword_1EB838F98 = 878121245;
      qword_1EB838FA0 = ggl::gridUVShaderShaderConstants(void)::ref;
      unk_1EB838FA8 = 4;
      qword_1EB838FB0 = &ggl::gridUVShaderShaderTextures(void)::ref;
      unk_1EB838FB8 = 0;
      qword_1EB838FC0 = &ggl::gridUVShaderShaderSamplers(void)::ref;
      unk_1EB838FC8 = 0;
    }
  }
}

void ggl::ShadowShader::typedReflection(ggl::ShadowShader *this)
{
  {
    if (v1)
    {
      ggl::ShadowShader::typedReflection(void)::ref = "ShadowShader";
      ggl::shadowShaderVertexFunctionDescriptor(v1);
      qword_1EB838DE0 = &ggl::shadowShaderVertexFunctionDescriptor(void)::ref;
      dword_1EB838DE8 = -321345208;
      ggl::shadowShaderFragmentFunctionDescriptor(v2);
      qword_1EB838DF0 = &ggl::shadowShaderFragmentFunctionDescriptor(void)::ref;
      dword_1EB838DF8 = -672152150;
      qword_1EB838E00 = ggl::shadowShaderShaderConstants(void)::ref;
      unk_1EB838E08 = 4;
      qword_1EB838E10 = ggl::shadowShaderShaderTextures(void)::ref;
      unk_1EB838E18 = 2;
      qword_1EB838E20 = ggl::shadowShaderShaderSamplers(void)::ref;
      unk_1EB838E28 = 2;
    }
  }
}

void ggl::LineShader::typedReflection(ggl::LineShader *this)
{
  {
    if (v1)
    {
      ggl::LineShader::typedReflection(void)::ref = "LineShader";
      ggl::lineShaderVertexFunctionDescriptor(v1);
      qword_1ED66DE38 = &ggl::lineShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66DE40 = 654998805;
      ggl::lineShaderFragmentFunctionDescriptor(v2);
      qword_1ED66DE48 = &ggl::lineShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66DE50 = 1497643948;
      qword_1ED66DE58 = ggl::lineShaderShaderConstants(void)::ref;
      unk_1ED66DE60 = 2;
      qword_1ED66DE68 = &ggl::lineShaderShaderTextures(void)::ref;
      unk_1ED66DE70 = 0;
      qword_1ED66DE78 = &ggl::lineShaderShaderSamplers(void)::ref;
      unk_1ED66DE80 = 0;
    }
  }
}

void ggl::PolygonOverlayAntialiasShader::typedReflection(ggl::PolygonOverlayAntialiasShader *this)
{
  {
    if (v1)
    {
      ggl::PolygonOverlayAntialiasShader::typedReflection(void)::ref = "PolygonOverlayAntialiasShader";
      ggl::polygonOverlayAntialiasShaderVertexFunctionDescriptor(v1);
      qword_1ED66AE38 = &ggl::polygonOverlayAntialiasShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66AE40 = 609136837;
      ggl::polygonOverlayAntialiasShaderFragmentFunctionDescriptor(v2);
      qword_1ED66AE48 = &ggl::polygonOverlayAntialiasShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66AE50 = 1034503162;
      qword_1ED66AE58 = ggl::polygonOverlayAntialiasShaderShaderConstants(void)::ref;
      unk_1ED66AE60 = 4;
      qword_1ED66AE68 = ggl::polygonOverlayAntialiasShaderShaderTextures(void)::ref;
      unk_1ED66AE70 = 1;
      qword_1ED66AE78 = &ggl::polygonOverlayAntialiasShaderShaderSamplers(void)::ref;
      unk_1ED66AE80 = 1;
    }
  }
}

void ggl::PolygonAnimatableStrokeShader::typedReflection(ggl::PolygonAnimatableStrokeShader *this)
{
  {
    if (v1)
    {
      ggl::PolygonAnimatableStrokeShader::typedReflection(void)::ref = "PolygonAnimatableStrokeShader";
      ggl::polygonAnimatableStrokeShaderVertexFunctionDescriptor(v1);
      qword_1ED66AE98 = &ggl::polygonAnimatableStrokeShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66AEA0 = -2026881077;
      ggl::polygonAnimatableStrokeShaderFragmentFunctionDescriptor(v2);
      qword_1ED66AEA8 = &ggl::polygonAnimatableStrokeShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66AEB0 = -567454789;
      qword_1ED66AEB8 = ggl::polygonAnimatableStrokeShaderShaderConstants(void)::ref;
      unk_1ED66AEC0 = 5;
      qword_1ED66AEC8 = ggl::polygonAnimatableStrokeShaderShaderTextures(void)::ref;
      unk_1ED66AED0 = 3;
      qword_1ED66AED8 = ggl::polygonAnimatableStrokeShaderShaderSamplers(void)::ref;
      unk_1ED66AEE0 = 3;
    }
  }
}

void ggl::PolygonSolidFillShader::typedReflection(ggl::PolygonSolidFillShader *this)
{
  {
    if (v1)
    {
      ggl::PolygonSolidFillShader::typedReflection(void)::ref = "PolygonSolidFillShader";
      ggl::polygonSolidFillShaderVertexFunctionDescriptor(v1);
      qword_1ED66BF98 = &ggl::polygonSolidFillShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66BFA0 = 1563169816;
      ggl::polygonSolidFillShaderFragmentFunctionDescriptor(v2);
      qword_1ED66BFA8 = &ggl::polygonSolidFillShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66BFB0 = -662378949;
      qword_1ED66BFB8 = ggl::polygonSolidFillShaderShaderConstants(void)::ref;
      unk_1ED66BFC0 = 3;
      qword_1ED66BFC8 = &ggl::polygonSolidFillShaderShaderTextures(void)::ref;
      unk_1ED66BFD0 = 0;
      qword_1ED66BFD8 = &ggl::polygonSolidFillShaderShaderSamplers(void)::ref;
      unk_1ED66BFE0 = 0;
    }
  }
}

void ggl::PolygonStrokeMaskShader::typedReflection(ggl::PolygonStrokeMaskShader *this)
{
  {
    if (v1)
    {
      ggl::PolygonStrokeMaskShader::typedReflection(void)::ref = "PolygonStrokeMaskShader";
      ggl::polygonStrokeMaskShaderVertexFunctionDescriptor(v1);
      qword_1ED65E7E0 = &ggl::polygonStrokeMaskShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65E7E8 = 49839346;
      ggl::polygonStrokeMaskShaderFragmentFunctionDescriptor(v2);
      qword_1ED65E7F0 = &ggl::polygonStrokeMaskShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65E7F8 = 1065110499;
      qword_1ED65E800 = ggl::polygonStrokeMaskShaderShaderConstants(void)::ref;
      unk_1ED65E808 = 3;
      qword_1ED65E810 = ggl::polygonStrokeMaskShaderShaderTextures(void)::ref;
      unk_1ED65E818 = 1;
      qword_1ED65E820 = &ggl::polygonStrokeMaskShaderShaderSamplers(void)::ref;
      unk_1ED65E828 = 1;
    }
  }
}

void ggl::PointShader::typedReflection(ggl::PointShader *this)
{
  {
    if (v1)
    {
      ggl::PointShader::typedReflection(void)::ref = "PointShader";
      ggl::pointShaderVertexFunctionDescriptor(v1);
      qword_1ED66DBF0 = &ggl::pointShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66DBF8 = 523209636;
      ggl::pointShaderFragmentFunctionDescriptor(v2);
      qword_1ED66DC00 = &ggl::pointShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66DC08 = -263926951;
      qword_1ED66DC10 = ggl::pointShaderShaderConstants(void)::ref;
      unk_1ED66DC18 = 2;
      qword_1ED66DC20 = &ggl::pointShaderShaderTextures(void)::ref;
      unk_1ED66DC28 = 0;
      qword_1ED66DC30 = &ggl::pointShaderShaderSamplers(void)::ref;
      unk_1ED66DC38 = 0;
    }
  }
}

void ggl::PointExtendedShader::typedReflection(ggl::PointExtendedShader *this)
{
  {
    if (v1)
    {
      ggl::PointExtendedShader::typedReflection(void)::ref = "PointExtendedShader";
      ggl::pointExtendedShaderVertexFunctionDescriptor(v1);
      qword_1ED66C940 = &ggl::pointExtendedShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66C948 = 21004018;
      ggl::pointExtendedShaderFragmentFunctionDescriptor(v2);
      qword_1ED66C950 = &ggl::pointExtendedShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66C958 = -781047433;
      qword_1ED66C960 = ggl::pointExtendedShaderShaderConstants(void)::ref;
      unk_1ED66C968 = 2;
      qword_1ED66C970 = &ggl::pointExtendedShaderShaderTextures(void)::ref;
      unk_1ED66C978 = 0;
      qword_1ED66C980 = &ggl::pointExtendedShaderShaderSamplers(void)::ref;
      unk_1ED66C988 = 0;
    }
  }
}

void ggl::RouteLineShader::typedReflection(ggl::RouteLineShader *this)
{
  {
    if (v1)
    {
      ggl::RouteLineShader::typedReflection(void)::ref = "RouteLineShader";
      ggl::routeLineShaderVertexFunctionDescriptor(v1);
      qword_1ED66D5F0 = &ggl::routeLineShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66D5F8 = -2128545321;
      ggl::routeLineShaderFragmentFunctionDescriptor(v2);
      qword_1ED66D600 = &ggl::routeLineShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66D608 = 1247637363;
      qword_1ED66D610 = ggl::routeLineShaderShaderConstants(void)::ref;
      unk_1ED66D618 = 3;
      qword_1ED66D620 = ggl::routeLineShaderShaderTextures(void)::ref;
      unk_1ED66D628 = 1;
      qword_1ED66D630 = ggl::routeLineShaderShaderSamplers(void)::ref;
      unk_1ED66D638 = 1;
    }
  }
}

void ggl::RouteLineArrowShader::typedReflection(ggl::RouteLineArrowShader *this)
{
  {
    if (v1)
    {
      ggl::RouteLineArrowShader::typedReflection(void)::ref = "RouteLineArrowShader";
      ggl::routeLineArrowShaderVertexFunctionDescriptor(v1);
      qword_1ED66C550 = &ggl::routeLineArrowShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66C558 = -2030690524;
      ggl::routeLineArrowShaderFragmentFunctionDescriptor(v2);
      qword_1ED66C560 = &ggl::routeLineArrowShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66C568 = 1017486742;
      qword_1ED66C570 = ggl::routeLineArrowShaderShaderConstants(void)::ref;
      unk_1ED66C578 = 3;
      qword_1ED66C580 = ggl::routeLineArrowShaderShaderTextures(void)::ref;
      unk_1ED66C588 = 1;
      qword_1ED66C590 = &ggl::routeLineArrowShaderShaderSamplers(void)::ref;
      unk_1ED66C598 = 1;
    }
  }
}

void ggl::SinglePassRouteLineShader::typedReflection(ggl::SinglePassRouteLineShader *this)
{
  {
    if (v1)
    {
      ggl::SinglePassRouteLineShader::typedReflection(void)::ref = "SinglePassRouteLineShader";
      ggl::singlePassRouteLineShaderVertexFunctionDescriptor(v1);
      qword_1ED65E558 = &ggl::singlePassRouteLineShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65E560 = 1169541397;
      ggl::singlePassRouteLineShaderFragmentFunctionDescriptor(v2);
      qword_1ED65E568 = &ggl::singlePassRouteLineShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65E570 = -1790431610;
      qword_1ED65E578 = ggl::singlePassRouteLineShaderShaderConstants(void)::ref;
      unk_1ED65E580 = 5;
      qword_1ED65E588 = ggl::singlePassRouteLineShaderShaderTextures(void)::ref;
      unk_1ED65E590 = 1;
      qword_1ED65E598 = &ggl::singlePassRouteLineShaderShaderSamplers(void)::ref;
      unk_1ED65E5A0 = 1;
    }
  }
}

void ggl::SDFGlyphShader::typedReflection(ggl::SDFGlyphShader *this)
{
  {
    if (v1)
    {
      ggl::SDFGlyphShader::typedReflection(void)::ref = "SDFGlyphShader";
      ggl::sDFGlyphShaderVertexFunctionDescriptor(v1);
      qword_1ED66D7C0 = &ggl::sDFGlyphShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66D7C8 = 1793995268;
      ggl::sDFGlyphShaderFragmentFunctionDescriptor(v2);
      qword_1ED66D7D0 = &ggl::sDFGlyphShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66D7D8 = -318895783;
      qword_1ED66D7E0 = ggl::sDFGlyphShaderShaderConstants(void)::ref;
      unk_1ED66D7E8 = 6;
      qword_1ED66D7F0 = ggl::sDFGlyphShaderShaderTextures(void)::ref;
      unk_1ED66D7F8 = 3;
      qword_1ED66D800 = ggl::sDFGlyphShaderShaderSamplers(void)::ref;
      unk_1ED66D808 = 3;
    }
  }
}

void ggl::SkyShader::typedReflection(ggl::SkyShader *this)
{
  {
    if (v1)
    {
      ggl::SkyShader::typedReflection(void)::ref = "SkyShader";
      ggl::skyShaderVertexFunctionDescriptor(v1);
      qword_1ED66A228 = &ggl::skyShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66A230 = -1802978018;
      ggl::skyShaderFragmentFunctionDescriptor(v2);
      qword_1ED66A238 = &ggl::skyShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66A240 = 567579477;
      qword_1ED66A248 = ggl::skyShaderShaderConstants(void)::ref;
      unk_1ED66A250 = 1;
      qword_1ED66A258 = &ggl::skyShaderShaderTextures(void)::ref;
      unk_1ED66A260 = 0;
      qword_1ED66A268 = &ggl::skyShaderShaderSamplers(void)::ref;
      unk_1ED66A270 = 0;
    }
  }
}

void ggl::SolidMaskedTrafficShader::typedReflection(ggl::SolidMaskedTrafficShader *this)
{
  {
    if (v1)
    {
      ggl::SolidMaskedTrafficShader::typedReflection(void)::ref = "SolidMaskedTrafficShader";
      ggl::solidMaskedTrafficShaderVertexFunctionDescriptor(v1);
      qword_1ED66B888 = &ggl::solidMaskedTrafficShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66B890 = -926246544;
      ggl::solidMaskedTrafficShaderFragmentFunctionDescriptor(v2);
      qword_1ED66B898 = &ggl::solidMaskedTrafficShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66B8A0 = -425103889;
      qword_1ED66B8A8 = ggl::solidMaskedTrafficShaderShaderConstants(void)::ref;
      unk_1ED66B8B0 = 3;
      qword_1ED66B8B8 = ggl::solidMaskedTrafficShaderShaderTextures(void)::ref;
      unk_1ED66B8C0 = 1;
      qword_1ED66B8C8 = &ggl::solidMaskedTrafficShaderShaderSamplers(void)::ref;
      unk_1ED66B8D0 = 1;
    }
  }
}

void ggl::SpecularLandmarkShader::typedReflection(ggl::SpecularLandmarkShader *this)
{
  {
    if (v1)
    {
      ggl::SpecularLandmarkShader::typedReflection(void)::ref = "SpecularLandmarkShader";
      ggl::specularLandmarkShaderVertexFunctionDescriptor(v1);
      qword_1ED66BE80 = &ggl::specularLandmarkShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66BE88 = 1925542313;
      ggl::specularLandmarkShaderFragmentFunctionDescriptor(v2);
      qword_1ED66BE90 = &ggl::specularLandmarkShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66BE98 = 411223036;
      qword_1ED66BEA0 = ggl::specularLandmarkShaderShaderConstants(void)::ref;
      unk_1ED66BEA8 = 7;
      qword_1ED66BEB0 = ggl::specularLandmarkShaderShaderTextures(void)::ref;
      unk_1ED66BEB8 = 1;
      qword_1ED66BEC0 = &ggl::specularLandmarkShaderShaderSamplers(void)::ref;
      unk_1ED66BEC8 = 1;
    }
  }
}

void ggl::StandardPostchainSSAOUpsampleShader::typedReflection(ggl::StandardPostchainSSAOUpsampleShader *this)
{
  {
    if (v1)
    {
      ggl::StandardPostchainSSAOUpsampleShader::typedReflection(void)::ref = "StandardPostchainSSAOUpsampleShader";
      ggl::standardPostchainSSAOUpsampleShaderVertexFunctionDescriptor(v1);
      qword_1ED65DE10 = &ggl::standardPostchainSSAOUpsampleShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65DE18 = 1285258797;
      ggl::standardPostchainSSAOUpsampleShaderFragmentFunctionDescriptor(v2);
      qword_1ED65DE20 = &ggl::standardPostchainSSAOUpsampleShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65DE28 = -674054788;
      qword_1ED65DE30 = ggl::standardPostchainSSAOUpsampleShaderShaderConstants(void)::ref;
      unk_1ED65DE38 = 1;
      qword_1ED65DE40 = ggl::standardPostchainSSAOUpsampleShaderShaderTextures(void)::ref;
      unk_1ED65DE48 = 3;
      qword_1ED65DE50 = ggl::standardPostchainSSAOUpsampleShaderShaderSamplers(void)::ref;
      unk_1ED65DE58 = 3;
    }
  }
}

void ggl::StandardPostchainSSAOShader::typedReflection(ggl::StandardPostchainSSAOShader *this)
{
  {
    if (v1)
    {
      ggl::StandardPostchainSSAOShader::typedReflection(void)::ref = "StandardPostchainSSAOShader";
      ggl::standardPostchainSSAOShaderVertexFunctionDescriptor(v1);
      qword_1ED65E498 = &ggl::standardPostchainSSAOShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED65E4A0 = 726891704;
      ggl::standardPostchainSSAOShaderFragmentFunctionDescriptor(v2);
      qword_1ED65E4A8 = &ggl::standardPostchainSSAOShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED65E4B0 = 904578503;
      qword_1ED65E4B8 = ggl::standardPostchainSSAOShaderShaderConstants(void)::ref;
      unk_1ED65E4C0 = 1;
      qword_1ED65E4C8 = ggl::standardPostchainSSAOShaderShaderTextures(void)::ref;
      unk_1ED65E4D0 = 2;
      qword_1ED65E4D8 = ggl::standardPostchainSSAOShaderShaderSamplers(void)::ref;
      unk_1ED65E4E0 = 2;
    }
  }
}

void ggl::TextureAlphaMaskShader::typedReflection(ggl::TextureAlphaMaskShader *this)
{
  {
    if (v1)
    {
      ggl::TextureAlphaMaskShader::typedReflection(void)::ref = "TextureAlphaMaskShader";
      ggl::textureAlphaMaskShaderVertexFunctionDescriptor(v1);
      qword_1ED66BE20 = &ggl::textureAlphaMaskShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66BE28 = 988574844;
      ggl::textureAlphaMaskShaderFragmentFunctionDescriptor(v2);
      qword_1ED66BE30 = &ggl::textureAlphaMaskShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66BE38 = -1800974848;
      qword_1ED66BE40 = ggl::textureAlphaMaskShaderShaderConstants(void)::ref;
      unk_1ED66BE48 = 2;
      qword_1ED66BE50 = ggl::textureAlphaMaskShaderShaderTextures(void)::ref;
      unk_1ED66BE58 = 1;
      qword_1ED66BE60 = &ggl::textureAlphaMaskShaderShaderSamplers(void)::ref;
      unk_1ED66BE68 = 1;
    }
  }
}

void ggl::TexturedSRGBBlendShader::typedReflection(ggl::TexturedSRGBBlendShader *this)
{
  {
    if (v1)
    {
      ggl::TexturedSRGBBlendShader::typedReflection(void)::ref = "TexturedSRGBBlendShader";
      ggl::texturedSRGBBlendShaderVertexFunctionDescriptor(v1);
      qword_1ED66BB08 = &ggl::texturedSRGBBlendShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66BB10 = -426797826;
      ggl::texturedSRGBBlendShaderFragmentFunctionDescriptor(v2);
      qword_1ED66BB18 = &ggl::texturedSRGBBlendShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66BB20 = 1025018578;
      qword_1ED66BB28 = ggl::texturedSRGBBlendShaderShaderConstants(void)::ref;
      unk_1ED66BB30 = 5;
      qword_1ED66BB38 = ggl::texturedSRGBBlendShaderShaderTextures(void)::ref;
      unk_1ED66BB40 = 1;
      qword_1ED66BB48 = ggl::texturedSRGBBlendShaderShaderSamplers(void)::ref;
      unk_1ED66BB50 = 1;
    }
  }
}