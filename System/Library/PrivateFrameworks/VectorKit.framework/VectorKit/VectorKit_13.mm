void geo::intern_vector<std::shared_ptr<gss::StylePropertySet<gss::ScenePropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::StylePropertySet<gss::ScenePropertyID>>,gss::zone_mallocator>>::reallocate(gss::zone_mallocator *a1, uint64_t a2)
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

    geo::intern_vector<std::shared_ptr<gss::StylePropertySet<gss::ScenePropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::StylePropertySet<gss::ScenePropertyID>>,gss::zone_mallocator>>::deallocateStorage(a1);
    *(a1 + 4) = v9;
  }

  *(a1 + 5) = a2;
  *a1 = v7;
}

uint64_t gss::enumDecoder<gss::ScenePropertyID>(uint64_t *a1, uint64_t a2, unsigned __int8 a3, unsigned int a4, unsigned int a5, void *a6)
{
  v28 = *MEMORY[0x1E69E9840];
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

  geo::ibitstream::readUIntBits(v20, a1, a3);
  if (v20[0])
  {
    v11 = v21;
    if (v21 <= a4)
    {
      buf[0] = v6;
      buf[1] = 0;
      geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::ScenePropertyID const,unsigned char> const*>(a2, buf, &buf[2]);
      *geo::intern_linear_map<gss::ScenePropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v6) = v11;
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

uint64_t gss::fixedPointNeg1to1Decoder<gss::ScenePropertyID>(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
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
      *geo::intern_linear_map<gss::ScenePropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v6) = (v26 * 0.0078431) + -1.0;
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
      v30 = 336;
      v31 = 2082;
      v32 = "Could not read fixed point -1 to 1.";
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v27, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v14 = MEMORY[0x1B8C61C80](a6, 336);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " STYL Parse Error Here: ", 24);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Could not read fixed point -1 to 1.", 35);
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
      v30 = 335;
      v31 = 2082;
      v32 = "Found fixed point -1 to 1 property with strange number of bits.";
      _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v27, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v18 = MEMORY[0x1B8C61C80](a6, 335);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " STYL Parse Error Here: ", 24);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Found fixed point -1 to 1 property with strange number of bits.", 63);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
  }

  return 0;
}

uint64_t std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (!v2)
  {
    goto LABEL_4;
  }

  v6 = v2;
  v3 = a1[4];
  if (v3)
  {
    (*(*v3 + 48))(v3, &v6);
LABEL_4:
    std::__function::__value_func<void ()(unsigned char *)>::~__value_func[abi:nn200100]((a1 + 1));
    return a1;
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return gss::int16Decoder<gss::ScenePropertyID>(v5);
}

uint64_t gss::int16Decoder<gss::ScenePropertyID>(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v37 = *MEMORY[0x1E69E9840];
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

      v31[1] = v6;
      v31[2] = 0;
      geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::ScenePropertyID const,unsigned char> const*>(a2, &v31[1], &v31[3]);
      *geo::intern_linear_map<gss::ScenePropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v6) = v30;
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
      v34 = 162;
      v35 = 2082;
      v36 = "Could not read int16.";
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v31[1], 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v14 = MEMORY[0x1B8C61C80](a6, 162);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " STYL Parse Error Here: ", 24);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Could not read int16.", 21);
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
      v34 = 161;
      v35 = 2082;
      v36 = "Found int16 property with strange number of bits.";
      _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v31[1], 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v18 = MEMORY[0x1B8C61C80](a6, 161);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " STYL Parse Error Here: ", 24);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Found int16 property with strange number of bits.", 49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
  }

  return 0;
}

void geo::intern_vector<std::shared_ptr<gss::ConditionalStyle<gss::ScenePropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::ConditionalStyle<gss::ScenePropertyID>>,gss::zone_mallocator>>::reallocate(gss::zone_mallocator *a1, uint64_t a2)
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

    geo::intern_vector<std::shared_ptr<gss::ConditionalStyle<gss::ScenePropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::ConditionalStyle<gss::ScenePropertyID>>,gss::zone_mallocator>>::deallocateStorage(a1);
    *(a1 + 4) = v9;
  }

  *(a1 + 5) = a2;
  *a1 = v7;
}

void geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::resize(uint64_t a1, unint64_t a2)
{
  if ((*(a1 + 12) & 1) == 0)
  {
    v4 = *(a1 + 8);
    if (v4 > a2)
    {
      v5 = 24 * *(a1 + 8) - 24 * a2;
      v6 = *a1 + 24 * a2 + 8;
      do
      {
        geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::deallocateStorage(v6);
        v6 += 24;
        v5 -= 24;
      }

      while (v5);
LABEL_5:
      *(a1 + 8) = a2;
      return;
    }

    if (v4 < a2)
    {
      if (*(a1 + 10) < a2)
      {
        geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::reallocate(a1, a2);
        v4 = *(a1 + 8);
      }

      if (v4 != a2)
      {
        v7 = 3 * v4;
        v8 = (*a1 + 24 * v4);
        v9 = 24 * a2 - 8 * v7;
        do
        {
          *v8 = 0;
          v8[1] = 0;
          v8[2] = 0;
          v8 += 3;
          v9 -= 24;
        }

        while (v9);
      }

      goto LABEL_5;
    }
  }
}

void geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::intern<geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 12) & 1) == 0)
  {
    v3 = *(a1 + 8);
    if (!*(a1 + 8))
    {
LABEL_9:
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
        v8 = v7 + 24 * v6;
        geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::moveContent(a1, v8);
        *(a1 + 10) = 0;
        *a1 = v8;
        goto LABEL_9;
      }
    }
  }
}

void sub_1B2879BF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void geo::intern_vector<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,unsigned short,geo::allocator_adapter<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,gss::zone_mallocator>>::resize(uint64_t a1, unint64_t a2)
{
  if ((*(a1 + 12) & 1) == 0)
  {
    v4 = *(a1 + 8);
    if (v4 > a2)
    {
      v5 = 24 * *(a1 + 8) - 24 * a2;
      v6 = *a1 + 24 * a2 + 8;
      do
      {
        geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::deallocateStorage(v6);
        v6 += 24;
        v5 -= 24;
      }

      while (v5);
LABEL_5:
      *(a1 + 8) = a2;
      return;
    }

    if (v4 < a2)
    {
      if (*(a1 + 10) < a2)
      {
        geo::intern_vector<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,unsigned short,geo::allocator_adapter<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,gss::zone_mallocator>>::reallocate(a1, a2);
        v4 = *(a1 + 8);
      }

      if (v4 != a2)
      {
        v7 = *a1 + 24 * a2;
        v8 = *a1 + 24 * v4;
        do
        {
          *v8 = 0;
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
          v8 += 24;
        }

        while (v8 != v7);
      }

      goto LABEL_5;
    }
  }
}

void geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,gss::zone_mallocator>>::reallocate(gss::zone_mallocator *a1, uint64_t a2)
{
  v4 = gss::zone_mallocator::instance(a1);
  v5 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode>(v4, a2);
  v6 = v5;
  v7 = *a1;
  if (*a1)
  {
    v8 = *(a1 + 4);
    if (v8)
    {
      v9 = *(a1 + 4);
      v10 = v5;
      do
      {
        v11 = *v7++;
        *v10++ = v11;
        --v9;
      }

      while (v9);
    }

    geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,gss::zone_mallocator>>::deallocateStorage(a1);
    *(a1 + 4) = v8;
  }

  *(a1 + 5) = a2;
  *a1 = v6;
}

gss::zone_mallocator *std::unique_ptr<geo::intern_allocator<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,gss::zone_mallocator>>::PageInfo>>::~unique_ptr[abi:nn200100](gss::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *v2;
    v4 = gss::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode>(v4, v3);
    MEMORY[0x1B8C62190](v2, 0x1020C4024DAA5DELL);
  }

  return a1;
}

void gss::StyleSheet<gss::ScenePropertyID>::didFinishDecodingEverything(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  atomic_store(a2, (a1 + 2787));
  std::function<void ()(BOOL)>::operator()(*(a3 + 24), a2);
  std::mutex::lock((a1 + 2888));
  atomic_store(1u, (a1 + 2786));
  std::promise<void>::set_value((a1 + 2800));
  v7 = *(a1 + 2960);
  if (v7)
  {
    v8 = *v7;
    v9 = v7[1];
    while (v8 != v9)
    {
      std::function<void ()(BOOL)>::operator()(*(v8 + 24), a2);
      v8 += 32;
    }

    std::unique_ptr<std::vector<std::function<void ()(BOOL)>,geo::allocator_adapter<std::function<void ()(BOOL)>,gss::zone_mallocator>>>::reset[abi:nn200100]((a1 + 2960), 0);
  }

  std::stringbuf::str[abi:nn200100](&v12, a4 + 8);
  v10 = (a1 + 2976);
  if (*(a1 + 2999) < 0)
  {
    operator delete(*v10);
  }

  *v10 = v12;
  *(a1 + 2992) = v13;
  std::mutex::unlock((a1 + 2888));
  v11 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

void std::__tree<std::__value_type<unsigned int,gss::PropertySize>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,gss::PropertySize>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,gss::PropertySize>,gss::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,gss::PropertySize>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,gss::PropertySize>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,gss::PropertySize>,gss::zone_mallocator>>::destroy(*a1);
    v2 = std::__tree<std::__value_type<unsigned int,gss::PropertySize>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,gss::PropertySize>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,gss::PropertySize>,gss::zone_mallocator>>::destroy(a1[1]);
    v3 = gss::zone_mallocator::instance(v2);
    v4 = pthread_rwlock_rdlock((v3 + 32));
    if (v4)
    {
      geo::read_write_lock::logFailure(v4, "read lock", v5);
    }

    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, a1);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

void std::__tree<std::__value_type<gss::StylFile::ChapterId,gss::StylChapter>,std::__map_value_compare<gss::StylFile::ChapterId,std::__value_type<gss::StylFile::ChapterId,gss::StylChapter>,std::less<gss::StylFile::ChapterId>,true>,geo::allocator_adapter<std::__value_type<gss::StylFile::ChapterId,gss::StylChapter>,gss::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<gss::StylFile::ChapterId,gss::StylChapter>,std::__map_value_compare<gss::StylFile::ChapterId,std::__value_type<gss::StylFile::ChapterId,gss::StylChapter>,std::less<gss::StylFile::ChapterId>,true>,geo::allocator_adapter<std::__value_type<gss::StylFile::ChapterId,gss::StylChapter>,gss::zone_mallocator>>::destroy(*a1);
    v2 = std::__tree<std::__value_type<gss::StylFile::ChapterId,gss::StylChapter>,std::__map_value_compare<gss::StylFile::ChapterId,std::__value_type<gss::StylFile::ChapterId,gss::StylChapter>,std::less<gss::StylFile::ChapterId>,true>,geo::allocator_adapter<std::__value_type<gss::StylFile::ChapterId,gss::StylChapter>,gss::zone_mallocator>>::destroy(a1[1]);
    v3 = a1[9];
    if (v3)
    {
      a1[10] = v3;
      v4 = gss::zone_mallocator::instance(v2);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v4, v3);
    }

    v5 = gss::zone_mallocator::instance(v2);
    v6 = pthread_rwlock_rdlock((v5 + 32));
    if (v6)
    {
      geo::read_write_lock::logFailure(v6, "read lock", v7);
    }

    atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v5, a1);

    geo::read_write_lock::unlock((v5 + 32));
  }
}

void std::__tree<std::__value_type<gss::StylFile::ChapterId,gss::StylFile::ChapterDescriptor>,std::__map_value_compare<gss::StylFile::ChapterId,std::__value_type<gss::StylFile::ChapterId,gss::StylFile::ChapterDescriptor>,std::less<gss::StylFile::ChapterId>,true>,geo::allocator_adapter<std::__value_type<gss::StylFile::ChapterId,gss::StylFile::ChapterDescriptor>,gss::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<gss::StylFile::ChapterId,gss::StylFile::ChapterDescriptor>,std::__map_value_compare<gss::StylFile::ChapterId,std::__value_type<gss::StylFile::ChapterId,gss::StylFile::ChapterDescriptor>,std::less<gss::StylFile::ChapterId>,true>,geo::allocator_adapter<std::__value_type<gss::StylFile::ChapterId,gss::StylFile::ChapterDescriptor>,gss::zone_mallocator>>::destroy(*a1);
    v2 = std::__tree<std::__value_type<gss::StylFile::ChapterId,gss::StylFile::ChapterDescriptor>,std::__map_value_compare<gss::StylFile::ChapterId,std::__value_type<gss::StylFile::ChapterId,gss::StylFile::ChapterDescriptor>,std::less<gss::StylFile::ChapterId>,true>,geo::allocator_adapter<std::__value_type<gss::StylFile::ChapterId,gss::StylFile::ChapterDescriptor>,gss::zone_mallocator>>::destroy(a1[1]);
    v3 = gss::zone_mallocator::instance(v2);
    v4 = pthread_rwlock_rdlock((v3 + 32));
    if (v4)
    {
      geo::read_write_lock::logFailure(v4, "read lock", v5);
    }

    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, a1);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

id gss::StyleSheet<gss::PropertyID>::loadQueue(int a1)
{
  if (a1)
  {
    if (gss::StyleSheet<gss::PropertyID>::loadQueue(BOOL)::onceToken[0] != -1)
    {
      dispatch_once(gss::StyleSheet<gss::PropertyID>::loadQueue(BOOL)::onceToken, &__block_literal_global_320);
    }

    v1 = &gss::StyleSheet<gss::PropertyID>::loadQueue(BOOL)::stylesheetLoadQueue;
  }

  else
  {
    if (gss::StyleSheet<gss::PropertyID>::loadQueue(BOOL)::onceToken != -1)
    {
      dispatch_once(&gss::StyleSheet<gss::PropertyID>::loadQueue(BOOL)::onceToken, &__block_literal_global_112);
    }

    v1 = &gss::StyleSheet<gss::PropertyID>::loadQueue(BOOL)::stylesheetLoadQueue;
  }

  v2 = *v1;

  return v2;
}

void std::__function::__func<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1},std::allocator<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](a1 + 40);

  operator delete(a1);
}

void md::StyleLogic::setupDecodingCallbacks(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    atomic_fetch_add_explicit((a2 + 16), 1uLL, memory_order_relaxed);
    v3 = *a3;
    atomic_fetch_add_explicit((a2 + 16), 1uLL, memory_order_relaxed);
  }

  else
  {
    v3 = *a3;
  }

  v5[0] = &unk_1F2A29B70;
  v5[1] = a1;
  v5[2] = a2;
  v5[3] = v5;
  std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v4, *v3, *(v3 + 8));
  std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::__value_func[abi:nn200100](v6, v5);
  v7 = v4;
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v8 = 0;
  operator new();
}

void sub_1B287A4E8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, std::__shared_weak_count *);
  std::mutex::unlock((v8 + 2888));
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](va2);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__value_func[abi:nn200100](va1);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__value_func[abi:nn200100](va);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1},std::allocator<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1}>,void ()(BOOL)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1},std::allocator<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1}>,void ()(BOOL)>::destroy[abi:nn200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1},std::allocator<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  std::ostringstream::basic_ostringstream[abi:nn200100](v2);
  v3[0] = &unk_1F2A29EC8;
  v3[1] = v1;
  v3[3] = v3;
  v2[36] = 0;
  operator new();
}

void sub_1B287A848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26)
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

void gss::StyleSheet<gss::PropertyID>::decodeStyl(_BYTE *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v207 = *MEMORY[0x1E69E9840];
  v199 = v200;
  v200[0] = 0;
  v200[2] = 0;
  v200[3] = v201;
  v201[0] = 0;
  v201[2] = 0;
  v201[3] = a2;
  v201[4] = a3;
  v194 = v195;
  v195[0] = 0;
  v195[2] = 0;
  v198[2] = 0;
  v197 = v198;
  v198[0] = 0;
  v189 = a1;
  if ((gss::StylFile::parseHeader(&v199, a7) & 1) == 0)
  {
    v37 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
      v203 = 1024;
      v204 = 388;
      v205 = 2082;
      v206 = "Could not decode STYL header.";
      _os_log_impl(&dword_1B2754000, v37, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, ":", 1);
    v38 = MEMORY[0x1B8C61C80](a7, 388);
    v34 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v38, " STYL Parse Error Here: ", 24);
    v35 = "Could not decode STYL header.";
    v36 = 29;
    goto LABEL_25;
  }

  LODWORD(v11) = 1;
  v12 = gss::StylFile::chapter(&v199, 1u);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = *(v12 + 24);
  v17 = v12[1];
  v18 = v12[2];
  v19 = 8 - v16;
  v20 = (1 << (8 - v16)) + 255;
  v21 = 0xFFFF << (8 - v16);
  v22 = *v12;
  if (*(v12 + 24))
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  while (1)
  {
    if (v17 < v23 + v18)
    {
LABEL_15:
      v28 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
        v203 = 1024;
        v204 = 416;
        v205 = 2082;
        v206 = "Could not read stylesheet version.";
        _os_log_impl(&dword_1B2754000, v28, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, ":", 1);
      v29 = MEMORY[0x1B8C61C80](a7, 416);
      v30 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, " STYL Parse Error Here: ", 24);
      v31 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, "Could not read stylesheet version.", 34);
      goto LABEL_18;
    }

    v24 = v18 + 1;
    v25 = *(v22 + v18);
    if (v16)
    {
      v26 = v24 >= v17 ? 0 : *(v22 + v18 + 1);
      v12[2] = v24;
      v25 = ((v26 & v21) >> v19) | ((v20 & v25) << v16);
    }

    else
    {
      v12[2] = v24;
    }

    v15 |= (v25 & 0x7F) << v13;
    if ((v25 & 0x80) == 0)
    {
      break;
    }

    v13 += 7;
    ++v18;
    v27 = v14++ >= 9;
    if (v27)
    {
      goto LABEL_15;
    }
  }

  v190 = v15;
  v40 = v16 + 1;
  v41 = v24 + ((v16 + 1) >> 3);
  v42 = (v16 + 1) & 7;
  v43 = v18 + 2;
  if (v41 >= v43)
  {
    if (v16 <= 7)
    {
      v44 = v43;
    }

    else
    {
      v44 = v43 + 1;
    }

    if (v17 < v44)
    {
      goto LABEL_38;
    }

    LODWORD(v24) = *(v22 + v24);
    if (v16)
    {
      if (v43 >= v17)
      {
        v45 = 0;
      }

      else
      {
        v45 = *(v22 + v43);
      }

      LODWORD(v24) = ((v45 & v21) >> v19) | ((v20 & v24) << v16);
      v12[2] = v43;
    }
  }

  else
  {
    if (v16)
    {
      if (v17 >= v43)
      {
        LODWORD(v24) = (((1 << (8 - v16)) - 1) & *(v22 + v24)) << v16;
        goto LABEL_44;
      }

LABEL_38:
      v12[2] = v41;
      *(v12 + 24) = v42;
      v46 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
        v203 = 1024;
        v204 = 419;
        v205 = 2082;
        v206 = "Could not read debug stylesheet flag.";
        _os_log_impl(&dword_1B2754000, v46, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, ":", 1);
      v47 = MEMORY[0x1B8C61C80](a7, 419);
      v48 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v47, " STYL Parse Error Here: ", 24);
      v31 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v48, "Could not read debug stylesheet flag.", 37);
      goto LABEL_18;
    }

    if (v17 < v43)
    {
      goto LABEL_38;
    }

    LOBYTE(v24) = *(v22 + v24);
  }

LABEL_44:
  v12[2] = v41;
  *(v12 + 24) = v42;
  v191 = (v24 & 0x80) != 0;
  if (v42)
  {
    v49 = v41 + 2;
  }

  else
  {
    v49 = v41 + 1;
  }

  v50 = v12[1];
  if (v50 < v49)
  {
    v51 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
      v203 = 1024;
      v204 = 422;
      v205 = 2082;
      v206 = "Could not read number of modes.";
      _os_log_impl(&dword_1B2754000, v51, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, ":", 1);
    v52 = MEMORY[0x1B8C61C80](a7, 422);
    v53 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v52, " STYL Parse Error Here: ", 24);
    v31 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v53, "Could not read number of modes.", 31);
    goto LABEL_18;
  }

  v54 = v41 + 1;
  v55 = *v12;
  if (v42)
  {
    v56 = v40 & 7;
    v57 = *(v55 + v41);
    if (v54 >= v50)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(v55 + v54);
    }

    v12[2] = v54;
    v59 = ((v58 >> (8 - v42)) | ((((1 << (8 - v42)) + 255) & v57) << v56));
  }

  else
  {
    v59 = *(v55 + v41);
    v12[2] = v54;
  }

  if (v59)
  {
    v60 = 0;
    while (1)
    {
      v61 = v54;
      v62 = v42;
      v54 += (v42 + 1) >> 3;
      LOBYTE(v42) = (v42 + 1) & 7;
      v63 = v61 + 1;
      if (v54 >= v61 + 1)
      {
        if (v50 < v63)
        {
          goto LABEL_96;
        }

        if (v62)
        {
          if (v63 >= v50)
          {
            v66 = 0;
          }

          else
          {
            v66 = *(v55 + v63);
          }

          v65 = (v66 >> (8 - v62)) | ((((1 << (8 - v62)) + 255) & *(v55 + v61)) << v62);
          v12[2] = v63;
          goto LABEL_75;
        }
      }

      else
      {
        if (v62)
        {
          v64 = v61 + 1;
        }

        else
        {
          v64 = v61;
        }

        if (v50 < v64)
        {
          goto LABEL_97;
        }

        if (v62)
        {
          if (v50 < v63)
          {
            goto LABEL_96;
          }

          v65 = (((1 << (8 - v62)) - 1) & *(v55 + v61)) << v62;
          goto LABEL_75;
        }

        if (v50 < v63)
        {
LABEL_96:
          v12[2] = v54;
          *(v12 + 24) = v42;
LABEL_97:
          v80 = GEOGetGeoCSSStyleSheetLog();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
            v203 = 1024;
            v204 = 425;
            v205 = 2082;
            v206 = "Could not read mode support flag.";
            _os_log_impl(&dword_1B2754000, v80, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, ":", 1);
          v81 = MEMORY[0x1B8C61C80](a7, 425);
          v82 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v81, " STYL Parse Error Here: ", 24);
          v31 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v82, "Could not read mode support flag.", 33);
          goto LABEL_18;
        }
      }

      LOBYTE(v65) = *(v55 + v61);
LABEL_75:
      v12[2] = v54;
      *(v12 + 24) = v42;
      if (v60 == 2)
      {
        a1[137] = (v65 & 0x80) != 0;
      }

      else if (v60 == 1)
      {
        a1[138] = (v65 & 0x80) != 0;
      }

      else
      {
        if (v60)
        {
          v90 = GEOGetGeoCSSStyleSheetLog();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
            v203 = 1024;
            v204 = 437;
            v205 = 2082;
            v206 = "Support specified for unknown map mode.";
            _os_log_impl(&dword_1B2754000, v90, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, ":", 1);
          v91 = MEMORY[0x1B8C61C80](a7, 437);
          v92 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v91, " STYL Parse Error Here: ", 24);
          v31 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v92, "Support specified for unknown map mode.", 39);
          goto LABEL_18;
        }

        a1[136] = (v65 & 0x80) != 0;
      }

      if (v59 <= ++v60)
      {
        v50 = v12[1];
        v54 = v12[2];
        v42 = *(v12 + 24);
        break;
      }
    }
  }

  buf[0] = 0;
  LOBYTE(v187) = 0;
  v67 = v54 + 2;
  v68 = v54 + 3;
  if (!v42)
  {
    v68 = v54 + 2;
  }

  if (v50 < v68)
  {
    v69 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
      v203 = 1024;
      v204 = 443;
      v205 = 2082;
      v206 = "Could not read number of attributes.";
      _os_log_impl(&dword_1B2754000, v69, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, ":", 1);
    v70 = MEMORY[0x1B8C61C80](a7, 443);
    v71 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v70, " STYL Parse Error Here: ", 24);
    v31 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v71, "Could not read number of attributes.", 36);
    goto LABEL_18;
  }

  v72 = *v12;
  if (v42)
  {
    v73 = 0;
    v74 = buf;
    do
    {
      v75 = v73;
      v67 = v54 + 1;
      if (v54 + 1 >= v50)
      {
        v76 = 0;
      }

      else
      {
        v76 = *(v72 + v54 + 1);
      }

      v77 = ((v76 & (0xFFFF << (8 - v42))) >> (8 - v42)) | ((((1 << (8 - v42)) + 255) & *(v72 + v54)) << v42);
      v12[2] = v67;
      *v74 = v77;
      v74 = &v187;
      v73 = 1;
      v54 = v67;
    }

    while ((v75 & 1) == 0);
    v78 = buf[0] | (v187 << 8);
    v79 = v42;
  }

  else
  {
    v79 = 0;
    v78 = *(v72 + v54);
    v12[2] = v67;
  }

  v83 = v67 + ((v79 + 5) >> 3);
  v84 = (v79 + 5) & 7;
  v85 = v67 + 1;
  if (v83 < v67 + 1)
  {
    if (v50 < v67 + (v42 != 0))
    {
LABEL_111:
      v87 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
        v203 = 1024;
        v204 = 446;
        v205 = 2082;
        v206 = "Could not read number of bits for feature attribute.";
        _os_log_impl(&dword_1B2754000, v87, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, ":", 1);
      v88 = MEMORY[0x1B8C61C80](a7, 446);
      v89 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v88, " STYL Parse Error Here: ", 24);
      v31 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v89, "Could not read number of bits for feature attribute.", 52);
      goto LABEL_18;
    }

    if (v42)
    {
      if (v50 >= v85)
      {
        LODWORD(v67) = (((1 << (8 - v42)) - 1) & *(v72 + v67)) << v79;
        goto LABEL_124;
      }

      goto LABEL_110;
    }

    if (v50 >= v85)
    {
      goto LABEL_121;
    }

LABEL_110:
    v12[2] = v83;
    *(v12 + 24) = v84;
    goto LABEL_111;
  }

  if (v42 <= 3)
  {
    v86 = v67 + 1;
  }

  else
  {
    v86 = v67 + 2;
  }

  if (v50 < v86)
  {
    goto LABEL_110;
  }

  if (!v42)
  {
LABEL_121:
    LOBYTE(v67) = *(v72 + v67);
    goto LABEL_124;
  }

  v93 = 8 - v42;
  v94 = *(v72 + v67);
  if (v85 >= v50)
  {
    v95 = 0;
  }

  else
  {
    v95 = *(v72 + v85);
  }

  LODWORD(v67) = ((v95 & (0xFFFF << v93)) >> v93) | ((((1 << v93) + 255) & v94) << v79);
  v12[2] = v85;
LABEL_124:
  v12[2] = v83;
  *(v12 + 24) = v84;
  v96 = (v79 + 5) & 7;
  v97 = v83 + ((v96 + 5) >> 3);
  v98 = (v96 + 5) & 7;
  v99 = v83 + 1;
  if (v97 >= v83 + 1)
  {
    if (v84 <= 3)
    {
      v102 = v83 + 1;
    }

    else
    {
      v102 = v83 + 2;
    }

    if (v50 < v102)
    {
      goto LABEL_136;
    }

    if (v84)
    {
      v106 = 8 - v84;
      v107 = *(v72 + v83);
      if (v99 >= v50)
      {
        v108 = 0;
      }

      else
      {
        v108 = *(v72 + v99);
      }

      v101 = (v108 >> v106) | ((((1 << v106) + 255) & v107) << v96);
      v12[2] = v99;
      goto LABEL_147;
    }

    goto LABEL_144;
  }

  if (v84)
  {
    v100 = v83 + 1;
  }

  else
  {
    v100 = v83;
  }

  if (v50 < v100)
  {
    goto LABEL_137;
  }

  if (!v84)
  {
    if (v50 < v99)
    {
      goto LABEL_136;
    }

LABEL_144:
    LOBYTE(v101) = *(v72 + v83);
    goto LABEL_147;
  }

  if (v50 < v99)
  {
LABEL_136:
    v12[2] = v97;
    *(v12 + 24) = v98;
LABEL_137:
    v103 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
      v203 = 1024;
      v204 = 447;
      v205 = 2082;
      v206 = "Could not read number of bits for client attribute.";
      _os_log_impl(&dword_1B2754000, v103, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, ":", 1);
    v104 = MEMORY[0x1B8C61C80](a7, 447);
    v105 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v104, " STYL Parse Error Here: ", 24);
    v31 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v105, "Could not read number of bits for client attribute.", 51);
    goto LABEL_18;
  }

  v101 = (((1 << (8 - v84)) - 1) & *(v72 + v83)) << v96;
LABEL_147:
  v12[2] = v97;
  *(v12 + 24) = v98;
  v192 = (v67 >> 3) + 1;
  v193 = (v101 >> 3) + 1;
  if (!v78)
  {
    goto LABEL_173;
  }

  LODWORD(v11) = 0;
  v182 = v78;
  do
  {
    v187 = 0;
    if ((gss::decodeAttributeEncoding(v12, &v187, v192, v193, a7) & 1) == 0)
    {
      v130 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
        v203 = 1024;
        v204 = 452;
        v205 = 2082;
        v206 = "Could not decode attribute.";
        _os_log_impl(&dword_1B2754000, v130, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, ":", 1);
      v131 = MEMORY[0x1B8C61C80](a7, 452);
      v132 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v131, " STYL Parse Error Here: ", 24);
      v133 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v132, "Could not decode attribute.", 27);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v133, "\n", 1);
      goto LABEL_19;
    }

    v109 = *(v12 + 24);
    v111 = v12[1];
    v110 = v12[2];
    v112 = v110 + ((v109 + 5) >> 3);
    v113 = (v109 + 5) & 7;
    v114 = v110 + 1;
    if (v112 < v110 + 1)
    {
      if (*(v12 + 24))
      {
        v115 = v110 + 1;
      }

      else
      {
        v115 = v12[2];
      }

      if (v111 < v115)
      {
        goto LABEL_193;
      }

      if (*(v12 + 24))
      {
        if (v111 < v114)
        {
          goto LABEL_192;
        }

        v116 = (((1 << (8 - v109)) - 1) & *(*v12 + v110)) << v109;
      }

      else
      {
        if (v111 < v114)
        {
          goto LABEL_192;
        }

        LOBYTE(v116) = *(*v12 + v110);
      }

      goto LABEL_168;
    }

    if (v109 <= 3)
    {
      v117 = v110 + 1;
    }

    else
    {
      v117 = v110 + 2;
    }

    if (v111 < v117)
    {
LABEL_192:
      v12[2] = v112;
      *(v12 + 24) = v113;
LABEL_193:
      v134 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
        v203 = 1024;
        v204 = 454;
        v205 = 2082;
        v206 = "Could not read number of bits for attribute value.";
        _os_log_impl(&dword_1B2754000, v134, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, ":", 1);
      v135 = MEMORY[0x1B8C61C80](a7, 454);
      v136 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v135, " STYL Parse Error Here: ", 24);
      v137 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v136, "Could not read number of bits for attribute value.", 50);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v137, "\n", 1);
      goto LABEL_19;
    }

    v118 = *v12;
    if (!*(v12 + 24))
    {
      LOBYTE(v116) = *(v118 + v110);
LABEL_168:
      LOBYTE(v184) = v116;
      goto LABEL_171;
    }

    if (v114 >= v111)
    {
      v119 = 0;
    }

    else
    {
      v119 = *(v118 + v114);
    }

    v184 = ((v119 & (0xFFFF << (8 - v109))) >> (8 - v109)) | ((((1 << (8 - v109)) + 255) & *(v118 + v110)) << v109);
    v12[2] = v114;
LABEL_171:
    v12[2] = v112;
    *(v12 + 24) = v113;
    *buf = &v187;
    *(std::__tree<std::__value_type<unsigned int,unsigned char>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned char>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,unsigned char>,gss::zone_mallocator>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v194, v187, buf) + 32) = (v184 >> 3) + 1;
    LODWORD(v11) = v11 + 1;
  }

  while (v182 > v11);
  v97 = v12[2];
  v98 = *(v12 + 24);
LABEL_173:
  v120 = v97 + ((v98 + 5) >> 3);
  v121 = (v98 + 5) & 7;
  v122 = v97 + 1;
  v123 = v12[1];
  if (v120 >= v97 + 1)
  {
    if (v98 <= 3)
    {
      v126 = v97 + 1;
    }

    else
    {
      v126 = v97 + 2;
    }

    if (v123 < v126)
    {
      goto LABEL_185;
    }

    v138 = *v12;
    if (v98)
    {
      v139 = *(v138 + v97);
      if (v122 >= v123)
      {
        v140 = 0;
      }

      else
      {
        v140 = *(v138 + v122);
      }

      v125 = ((v140 & (0xFFFF << (8 - v98))) >> (8 - v98)) | ((((1 << (8 - v98)) + 255) & v139) << v98);
      v12[2] = v122;
    }

    else
    {
      LOBYTE(v125) = *(v138 + v97);
    }
  }

  else
  {
    if (v98)
    {
      v124 = v97 + 1;
    }

    else
    {
      v124 = v97;
    }

    if (v123 < v124)
    {
      goto LABEL_186;
    }

    if (v98)
    {
      if (v123 >= v122)
      {
        v125 = (((1 << (8 - v98)) - 1) & *(*v12 + v97)) << v98;
        goto LABEL_204;
      }

LABEL_185:
      v12[2] = v120;
      *(v12 + 24) = v121;
LABEL_186:
      v127 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
        v203 = 1024;
        v204 = 459;
        v205 = 2082;
        v206 = "Could not read number of bits for property id.";
        _os_log_impl(&dword_1B2754000, v127, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, ":", 1);
      v128 = MEMORY[0x1B8C61C80](a7, 459);
      v129 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v128, " STYL Parse Error Here: ", 24);
      v31 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v129, "Could not read number of bits for property id.", 46);
LABEL_18:
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v31, "\n", 1);
      goto LABEL_19;
    }

    if (v123 < v122)
    {
      goto LABEL_185;
    }

    LOBYTE(v125) = *(*v12 + v97);
  }

LABEL_204:
  v141 = v125 >> 3;
  v12[2] = v120;
  *(v12 + 24) = v121;
  v196 = v141 + 1;
  geo::ibitstream::readUIntBits(&v187, v12, v141 + 1);
  if ((v187 & 1) == 0)
  {
    v165 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
      v203 = 1024;
      v204 = 462;
      v205 = 2082;
      v206 = "Could not read number of properties.";
      _os_log_impl(&dword_1B2754000, v165, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, ":", 1);
    v166 = MEMORY[0x1B8C61C80](a7, 462);
    v167 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v166, " STYL Parse Error Here: ", 24);
    v168 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v167, "Could not read number of properties.", 36);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v168, "\n", 1);
    goto LABEL_19;
  }

  v183 = v188;
  if (!v188)
  {
LABEL_244:
    gss::StylFile::chapter(&v199, 0xAu);
    _ZNSt3__115allocate_sharedB8nn200100IN3gss16GlobalPropertiesENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v185 = 0;
  while (2)
  {
    v186 = 0;
    geo::ibitstream::readUIntBits(&v187, v12, v196);
    if ((v187 & 1) == 0)
    {
      v173 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
        v203 = 1024;
        v204 = 465;
        v205 = 2082;
        v206 = "Could not read property id.";
        _os_log_impl(&dword_1B2754000, v173, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, ":", 1);
      v174 = MEMORY[0x1B8C61C80](a7, 465);
      v175 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v174, " STYL Parse Error Here: ", 24);
      v176 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v175, "Could not read property id.", 27);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v176, "\n", 1);
      goto LABEL_19;
    }

    v142 = v188;
    v186 = v188;
    v143 = *(v12 + 24);
    v144 = v143 + 2;
    v145 = v12[1];
    v146 = v12[2];
    v147 = v146 + ((v143 + 2) >> 3);
    v148 = (v143 + 2) & 7;
    v149 = v146 + 1;
    if (v147 >= v146 + 1)
    {
      if (v143 <= 6)
      {
        v153 = v146 + 1;
      }

      else
      {
        v153 = v146 + 2;
      }

      if (v145 < v153)
      {
LABEL_254:
        v12[2] = v147;
        *(v12 + 24) = v148;
LABEL_255:
        v177 = GEOGetGeoCSSStyleSheetLog();
        if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
          v203 = 1024;
          v204 = 468;
          v205 = 2082;
          v206 = "Could not read property size.";
          _os_log_impl(&dword_1B2754000, v177, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, ":", 1);
        v178 = MEMORY[0x1B8C61C80](a7, 468);
        v179 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v178, " STYL Parse Error Here: ", 24);
        v180 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v179, "Could not read property size.", 29);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v180, "\n", 1);
        goto LABEL_19;
      }

      v151 = *v12;
      if (*(v12 + 24))
      {
        if (v149 >= v145)
        {
          v154 = 0;
        }

        else
        {
          v154 = *(v151 + v149);
        }

        v152 = ((v154 & (0xFFFF << (8 - v143))) >> (8 - v143)) | ((((1 << (8 - v143)) + 255) & *(v151 + v146)) << v143);
        v12[2] = v149;
        goto LABEL_228;
      }

LABEL_225:
      LOBYTE(v152) = *(v151 + v146);
      goto LABEL_228;
    }

    if (*(v12 + 24))
    {
      v150 = v146 + 1;
    }

    else
    {
      v150 = v12[2];
    }

    if (v145 < v150)
    {
      goto LABEL_255;
    }

    if (!*(v12 + 24))
    {
      if (v145 < v149)
      {
        goto LABEL_254;
      }

      v151 = *v12;
      goto LABEL_225;
    }

    if (v145 < v149)
    {
      goto LABEL_254;
    }

    v151 = *v12;
    v152 = (((1 << (8 - v143)) - 1) & *(*v12 + v146)) << v143;
LABEL_228:
    v12[2] = v147;
    *(v12 + 24) = v148;
    if ((v152 & 0x80) != 0)
    {
LABEL_243:
      v181 = v152;
      *buf = &v186;
      v164 = std::__tree<std::__value_type<unsigned int,gss::PropertySize>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,gss::PropertySize>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,gss::PropertySize>,gss::zone_mallocator>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v197, v142, buf);
      *(v164 + 32) = v181 >> 6;
      *(v164 + 9) = v11;
      if (++v185 == v183)
      {
        goto LABEL_244;
      }

      continue;
    }

    break;
  }

  v155 = 0;
  v156 = 0;
  v11 = 0;
  v157 = v144 >> 3;
  v158 = v144 & 7;
  v159 = v146 + v157;
  v160 = v159 + 1;
  if (v148)
  {
    v161 = v159 + 2;
  }

  else
  {
    v161 = v159 + 1;
  }

  while (v145 >= v161)
  {
    v162 = *(v151 + v160 - 1);
    if (v148)
    {
      if (v160 >= v145)
      {
        v163 = 0;
      }

      else
      {
        v163 = *(v151 + v160);
      }

      v12[2] = v160;
      v162 = (v163 >> (8 - v148)) | ((((1 << (8 - v148)) + 255) & v162) << v158);
    }

    else
    {
      v12[2] = v160;
    }

    v11 |= (v162 & 0x7F) << v155;
    if ((v162 & 0x80) == 0)
    {
      goto LABEL_243;
    }

    v155 += 7;
    ++v161;
    ++v160;
    v27 = v156++ >= 9;
    if (v27)
    {
      break;
    }
  }

  v169 = GEOGetGeoCSSStyleSheetLog();
  if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
    v203 = 1024;
    v204 = 472;
    v205 = 2082;
    v206 = "Could not read property size.";
    _os_log_impl(&dword_1B2754000, v169, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, ":", 1);
  v170 = MEMORY[0x1B8C61C80](a7, 472);
  v171 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v170, " STYL Parse Error Here: ", 24);
  v172 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v171, "Could not read property size.", 29);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v172, "\n", 1);
LABEL_19:
  v32 = GEOGetGeoCSSStyleSheetLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
    v203 = 1024;
    v204 = 389;
    v205 = 2082;
    v206 = "Could not decode stylesheet info.";
    _os_log_impl(&dword_1B2754000, v32, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a7, ":", 1);
  v33 = MEMORY[0x1B8C61C80](a7, 389);
  v34 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, " STYL Parse Error Here: ", 24);
  v35 = "Could not decode stylesheet info.";
  v36 = 33;
LABEL_25:
  v39 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v34, v35, v36);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v39, "\n", 1);
  std::function<void ()(BOOL)>::operator()(*(a5 + 24), 0);
  std::function<void ()(BOOL)>::operator()(*(a6 + 24), 0);
  std::__tree<std::__value_type<unsigned int,gss::PropertySize>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,gss::PropertySize>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,gss::PropertySize>,gss::zone_mallocator>>::destroy(v198[0]);
  std::__tree<std::__value_type<unsigned int,unsigned char>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned char>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,unsigned char>,gss::zone_mallocator>>::destroy(v195[0]);
  std::__tree<std::__value_type<gss::StylFile::ChapterId,gss::StylChapter>,std::__map_value_compare<gss::StylFile::ChapterId,std::__value_type<gss::StylFile::ChapterId,gss::StylChapter>,std::less<gss::StylFile::ChapterId>,true>,geo::allocator_adapter<std::__value_type<gss::StylFile::ChapterId,gss::StylChapter>,gss::zone_mallocator>>::destroy(v201[0]);
  std::__tree<std::__value_type<gss::StylFile::ChapterId,gss::StylFile::ChapterDescriptor>,std::__map_value_compare<gss::StylFile::ChapterId,std::__value_type<gss::StylFile::ChapterId,gss::StylFile::ChapterDescriptor>,std::less<gss::StylFile::ChapterId>,true>,geo::allocator_adapter<std::__value_type<gss::StylFile::ChapterId,gss::StylFile::ChapterDescriptor>,gss::zone_mallocator>>::destroy(v200[0]);
}

void gss::ClientStyleState<gss::PropertyID>::setSourceMapDisplayStyle(uint64_t a1, uint64_t a2)
{
  v8 = (a1 + 16);
  v9 = a2;
  v3 = pthread_rwlock_wrlock((a1 + 16));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "write lock", v4);
  }

  gss::DisplayStyle::applyDisplayStyle(&v9, a1 + 216);
  if ((*(a1 + 232) & 1) == 0 && (*(a1 + 233) & 1) == 0)
  {
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1 + 216, *(a1 + 230), 1);
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

_WORD *gss::DisplayStyle::applyDisplayStyle(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a1;
  *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2, 0x10001u) = v4;
  v5 = v3[1];
  *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2, 0x1000Du) = v5;
  v6 = v3[2];
  *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2, 0x1000Eu) = v6;
  v7 = v3[3];
  *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2, 0x10084u) = v7;
  v8 = v3[4];
  *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2, 0x10033u) = v8;
  v9 = v3[5];
  *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2, 0x1003Cu) = v9;
  v10 = v3[6];
  *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2, 0x10045u) = v10;
  LOWORD(v3) = v3[7];
  result = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2, 0x1003Du);
  *result = v3;
  return result;
}

void std::__function::__func<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0,std::allocator<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void *ggl::DataAccess<ggl::DaVinci::InstanceTransform>::DataAccess(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ggl::BufferMemory::BufferMemory(a1);
  ggl::ResourceAccessor::accessIndexData(v11, 0, a2, a3, a4, a5, 0);
  ggl::BufferMemory::operator=(a1, v11);
  ggl::BufferMemory::~BufferMemory(v11);
  return a1;
}

uint64_t std::__function::__func<md::MeshRenderableLogic::MeshRenderableLogic(std::shared_ptr<md::RegistryManager> const&,std::shared_ptr<md::RunLoopController> const&,geo::TaskQueue *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_2,std::allocator<md::MeshRenderableLogic::MeshRenderableLogic(std::shared_ptr<md::RegistryManager> const&,std::shared_ptr<md::RunLoopController> const&,geo::TaskQueue *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_2>,std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A07EE0;
  *(a2 + 8) = *(result + 8);
  return result;
}

unint64_t geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(unint64_t result, uint64_t a2, uint64_t a3)
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
        result = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v3, *v5);
        if (result == v6)
        {
          result = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(v3);
          if (!result)
          {
            return result;
          }

          v7 = *(v3 + 12);
          v8 = *v3;
          *(*v3 + 2 * v7) = *v5;
          *(v8 + *(v3 + 8) + v7) = *(v5 + 2);
          v6 = *(v3 + 12) + 1;
          *(v3 + 12) = v6;
          *(v3 + 17) = 0;
        }

        v5 += 4;
      }

      while (v5 != a3);
    }
  }

  return result;
}

uint64_t gss::rgba8Decoder<gss::PropertyID>(uint64_t *a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v38 = *MEMORY[0x1E69E9840];
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

      *buf = v6;
      buf[2] = 0;
      geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, buf, &buf[4]);
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
      *geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 72, v6) = v32;
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

uint64_t std::__introsort<std::_ClassicAlgPolicy,geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(gss::PropertyID*,unsigned char *,BOOL)::{lambda(unsigned long,unsigned long)#1} &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t **a3, uint64_t a4, char a5)
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
        if (*(**a3 + 2 * v86) >= *(**a3 + 2 * v87))
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
      v100 = *(v99 + 2 * v95);
      v101 = *(v99 + 2 * v98);
      v102 = v97;
      v103 = *(v99 + 2 * v97);
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
          if (*(v99 + 2 * v157) < *(v99 + 2 * v97))
          {
            *v96 = v157;
            *v10 = v95;
            v158 = *v96;
            v159 = *v94;
            v160 = *(v99 + 2 * v158);
            if (v160 < *(v99 + 2 * v159))
            {
              v11[1] = v158;
              v11[2] = v159;
              v161 = *v11;
              if (v160 < *(v99 + 2 * v161))
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

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(gss::PropertyID*,unsigned char *,BOOL)::{lambda(unsigned long,unsigned long)#1} &,unsigned int *,0>(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, v85);
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
              v112 = *(v108 + 2 * v110);
              if (v112 < *(v108 + 2 * v111))
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
                  if (v112 >= *(v108 + 2 * v111))
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
            v154 = *(v151 + 2 * v152);
            if (v154 < *(v151 + 2 * v153))
            {
              v155 = v9;
              do
              {
                *v155 = v153;
                v153 = *(v155 - 2);
                --v155;
              }

              while (v154 < *(v151 + 2 * v153));
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
              if (*(*v116 + 2 * v121) < *(*v116 + 2 * v120[1]))
              {
                v121 = v120[1];
                ++v120;
                v119 = 2 * v118 + 2;
              }
            }

            v123 = &v11[v118];
            v124 = *v123;
            v125 = *(v122 + 2 * v124);
            if (*(v122 + 2 * v121) >= v125)
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

                else if (*(v122 + 2 * v121) >= *(v122 + 2 * v120[1]))
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

              while (*(v122 + 2 * v121) >= v125);
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
              if (*(*v131 + 2 * v134) >= *(*v131 + 2 * v137))
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
              v146 = *(*v128 + 2 * v144);
              if (*(*v128 + 2 * v143) < v146)
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
                  result = *(v145 + 2 * v143);
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
    v17 = *(v15 + 2 * v16);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v11;
      v20 = *(v15 + 2 * v18);
      v21 = *(v15 + 2 * v19);
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          *v10 = v18;
          v26 = *v13;
          v27 = *v11;
          if (*(v15 + 2 * v26) < *(v15 + 2 * v27))
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
        if (*(v15 + 2 * v30) < v21)
        {
          *v13 = v30;
LABEL_27:
          *v10 = v19;
        }
      }

      v31 = v13 - 1;
      v32 = *(v13 - 1);
      v33 = v11[1];
      v34 = *(v15 + 2 * v32);
      v35 = *(v15 + 2 * v33);
      v36 = *(a2 - 2);
      v37 = *(v15 + 2 * v36);
      if (v34 >= v35)
      {
        if (v37 < v34)
        {
          *v31 = v36;
          *(a2 - 2) = v32;
          v38 = *v31;
          v39 = v11[1];
          if (*(v15 + 2 * v38) < *(v15 + 2 * v39))
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
        if (*(v15 + 2 * v41) < v35)
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
      v46 = *(v15 + 2 * v44);
      v47 = *(v15 + 2 * v45);
      v48 = *(a2 - 3);
      v49 = *(v15 + 2 * v48);
      if (v46 >= v47)
      {
        if (v49 < v46)
        {
          *v42 = v48;
          *(a2 - 3) = v43;
          v50 = *v42;
          v51 = v11[2];
          if (*(v15 + 2 * v50) < *(v15 + 2 * v51))
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
        if (*(v15 + 2 * v52) < v47)
        {
          *v42 = v52;
LABEL_48:
          *(a2 - 3) = v45;
        }
      }

      v53 = *v14;
      v54 = *v31;
      v55 = *(v15 + 2 * v53);
      v56 = *(v15 + 2 * v54);
      v57 = *v42;
      v58 = *(v15 + 2 * v57);
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
    v24 = *(v15 + 2 * v22);
    v25 = *(v15 + 2 * v23);
    if (v24 >= v25)
    {
      if (v17 < v24)
      {
        *v11 = v16;
        *v10 = v22;
        v28 = *v11;
        v29 = *v14;
        if (*(v15 + 2 * v28) < *(v15 + 2 * v29))
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
    if (*(v15 + 2 * v40) < v25)
    {
      *v11 = v40;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v60 = *v11;
    if (a5)
    {
      v61 = *(v15 + 2 * v60);
LABEL_60:
      v62 = v11;
      do
      {
        v63 = v62;
        v65 = v62[1];
        ++v62;
        v64 = v65;
      }

      while (*(v15 + 2 * v65) < v61);
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

        while (*(v15 + 2 * v68) >= v61);
      }

      else
      {
        do
        {
          v67 = *--v66;
        }

        while (*(v15 + 2 * v67) >= v61);
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

          while (*(v15 + 2 * v73) < v61);
          do
          {
            v74 = *--v72;
            v69 = v74;
          }

          while (*(v15 + 2 * v74) >= v61);
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

      v75 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(gss::PropertyID*,unsigned char *,BOOL)::{lambda(unsigned long,unsigned long)#1} &,unsigned int *>(v11, v63, *a3);
      v11 = v63 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(gss::PropertyID*,unsigned char *,BOOL)::{lambda(unsigned long,unsigned long)#1} &,unsigned int *>(v63 + 1, a2, *a3);
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
        result = std::__introsort<std::_ClassicAlgPolicy,geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(gss::PropertyID*,unsigned char *,BOOL)::{lambda(unsigned long,unsigned long)#1} &,unsigned int *,false>(v9, v63, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v63 + 1;
      }
    }

    else
    {
      v61 = *(v15 + 2 * v60);
      if (*(v15 + 2 * *(v11 - 1)) < v61)
      {
        goto LABEL_60;
      }

      if (v61 >= *(v15 + 2 * *v10))
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

        while (v61 >= *(v15 + 2 * *v11));
      }

      else
      {
        do
        {
          v76 = v11[1];
          ++v11;
        }

        while (v61 >= *(v15 + 2 * v76));
      }

      v78 = a2;
      if (v11 < a2)
      {
        v78 = a2;
        do
        {
          v79 = *--v78;
        }

        while (v61 < *(v15 + 2 * v79));
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

          while (v61 >= *(v15 + 2 * v82));
          do
          {
            v83 = *--v78;
            v81 = v83;
          }

          while (v61 < *(v15 + 2 * v83));
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
  v90 = *(v89 + 2 * v88);
  v91 = *(v89 + 2 * v87);
  v92 = *v10;
  v93 = *(v89 + 2 * v92);
  if (v90 < v91)
  {
    if (v93 >= v90)
    {
      *v11 = v88;
      v11[1] = v87;
      v156 = *v10;
      if (*(v89 + 2 * v156) >= v91)
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
    if (*(v89 + 2 * v148) < *(v89 + 2 * v149))
    {
      *v11 = v148;
      v11[1] = v149;
    }
  }

  return result;
}

uint64_t gss::fixedPoint8_8Decoder<gss::PropertyID>(uint64_t *a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
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
      *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v6) = vcvts_n_f32_u32(v30, 8uLL);
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
      v34 = 402;
      v35 = 2082;
      v36 = "Could not read fixed point 8.8.";
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v31[1], 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v14 = MEMORY[0x1B8C61C80](a6, 402);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " STYL Parse Error Here: ", 24);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Could not read fixed point 8.8.", 31);
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
      v34 = 401;
      v35 = 2082;
      v36 = "Found fixed point 8.8 property with strange number of bits.";
      _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v31[1], 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v18 = MEMORY[0x1B8C61C80](a6, 401);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " STYL Parse Error Here: ", 24);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Found fixed point 8.8 property with strange number of bits.", 59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
  }

  return 0;
}

gdc::S2TileSelector *gdc::S2TileSelector::S2TileSelector(gdc::S2TileSelector *this, double a2)
{
  *(this + 2) = 256;
  *(this + 2) = 0;
  *this = &unk_1F2A61040;
  *(this + 24) = 0u;
  v2 = (this + 24);
  *(this + 40) = 0u;
  *(this + 14) = 1065353216;
  v32 = 0;
  *v31 = 2;
  v33 = 0;
  v34 = 1;
  v35 = 3;
  v36 = 0;
  v39 = 0;
  v37 = 770;
  i = 0;
  while (1)
  {
    v40 = 1;
    v22 = 0;
    *v21 = 2;
    v23 = 0;
    v24 = 1;
    v25 = 3;
    v26 = 64;
    v27 = 255;
    v28 = 0;
    v29 = 0;
    v30 = 1;
    if (!geo::QuadTileIterator::operator!=(v31, v21))
    {
      break;
    }

    v3 = 0;
    v22 = i;
    v23 = v39;
    v24 = v40;
    *v21 = v37;
    v45 = HIDWORD(i);
    v46 = i;
    v47 = HIBYTE(v37);
    v4 = &qword_1B3420DE0;
    v5 = 96;
    v48 = v37;
    do
    {
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v4 += 3;
      v41 = geo::S2CellCoordinates::geocentricFromTileUnit<double>(&v45, v6, v7, v8);
      v42 = v9;
      v43 = v10;
      geo::Geocentric<double>::toCoordinate3D<geo::Degrees,double>(&v41, &v44);
      v3 |= fabs(v44.f64[0]) >= 85.0;
      v5 -= 24;
    }

    while (v5);
    if (v3)
    {
      std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>(v2, v21);
    }

    ++v36;
    LOBYTE(v37) = v31[0];
    HIBYTE(v37) = v31[1] + v35;
    LODWORD(i) = (v32 << v35) + v36 / (1 << v35);
    HIDWORD(i) = (HIDWORD(v32) << v35) + v36 % (1 << v35);
    v39 = 0;
  }

  v32 = 0;
  *v31 = 5;
  v33 = 0;
  v34 = 1;
  v35 = 3;
  v36 = 0;
  v37 = 773;
  for (i = 0; ; HIDWORD(i) = (HIDWORD(v32) << v35) + v36 % (1 << v35))
  {
    v39 = 0;
    v40 = 1;
    v22 = 0;
    *v21 = 5;
    v23 = 0;
    v24 = 1;
    v25 = 3;
    v26 = 64;
    v27 = 255;
    v28 = 0;
    v29 = 0;
    v30 = 1;
    if (!geo::QuadTileIterator::operator!=(v31, v21))
    {
      break;
    }

    v11 = 0;
    v22 = i;
    v23 = v39;
    v24 = v40;
    *v21 = v37;
    v45 = HIDWORD(i);
    v46 = i;
    v47 = HIBYTE(v37);
    v12 = &qword_1B3420DE0;
    v13 = 96;
    v48 = v37;
    do
    {
      v14 = *(v12 - 2);
      v15 = *(v12 - 1);
      v16 = *v12;
      v12 += 3;
      v41 = geo::S2CellCoordinates::geocentricFromTileUnit<double>(&v45, v14, v15, v16);
      v42 = v17;
      v43 = v18;
      geo::Geocentric<double>::toCoordinate3D<geo::Degrees,double>(&v41, &v44);
      v11 |= fabs(v44.f64[0]) >= 85.0;
      v13 -= 24;
    }

    while (v13);
    if (v11)
    {
      std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>(v2, v21);
    }

    ++v36;
    LOBYTE(v37) = v31[0];
    HIBYTE(v37) = v31[1] + v35;
    LODWORD(i) = (v32 << v35) + v36 / (1 << v35);
  }

  return this;
}

float64_t geo::S2CellCoordinates::geocentricFromTileUnit<double>(uint64_t a1, double a2, double a3, double a4)
{
  v6 = *(a1 + 8);
  v7 = (v6 << 52) ^ 0x3FF0000000000000;
  v8 = *a1 * *&v7 + -(*a1 * *&v7 - (*a1 + 1) * *&v7) * a2;
  v9 = *(a1 + 4) * *&v7 + -(*(a1 + 4) * *&v7 - (*(a1 + 4) + 1) * *&v7) * a3;
  if (v8 >= 0.5)
  {
    v10 = v8 * v8;
    v11 = -0.333333333;
    v12 = 1.33333333;
  }

  else
  {
    v10 = (1.0 - v8) * (1.0 - v8);
    v11 = 0.333333333;
    v12 = -1.33333333;
  }

  v13 = v11 + v10 * v12;
  if (v9 >= 0.5)
  {
    v14 = v9 * v9;
    v15 = -0.333333333;
    v16 = 1.33333333;
  }

  else
  {
    v14 = (1.0 - v9) * (1.0 - v9);
    v15 = 0.333333333;
    v16 = -1.33333333;
  }

  v17 = v15 + v14 * v16;
  v18 = *(a1 + 9);
  v19 = 1.0;
  if (v18 == 2)
  {
    v20 = -v13;
    v21 = -v17;
  }

  else
  {
    v36 = -v17;
    v37 = -v13;
    v38 = -1.0;
    if (v18 == 5)
    {
      v39 = v17;
    }

    else
    {
      v39 = 1.0;
    }

    if (v18 == 5)
    {
      v40 = v13;
    }

    else
    {
      v40 = 1.0;
    }

    if (v18 == 5)
    {
      v41 = -1.0;
    }

    else
    {
      v41 = 1.0;
    }

    if (v18 == 4)
    {
      v39 = v17;
      v40 = -1.0;
      v41 = -v13;
    }

    if (v18 == 3)
    {
      v42 = -v13;
    }

    else
    {
      v38 = v39;
      v36 = v40;
      v42 = v41;
    }

    if (v18 == 1)
    {
      v43 = v17;
    }

    else
    {
      v37 = 1.0;
      v43 = 1.0;
    }

    if (!*(a1 + 9))
    {
      v37 = 1.0;
      v19 = v13;
      v43 = v17;
    }

    if (*(a1 + 9) <= 2u)
    {
      v20 = v37;
    }

    else
    {
      v20 = v38;
    }

    if (*(a1 + 9) <= 2u)
    {
      v21 = v19;
    }

    else
    {
      v21 = v36;
    }

    if (*(a1 + 9) <= 2u)
    {
      v19 = v43;
    }

    else
    {
      v19 = v42;
    }
  }

  v52 = v4;
  v53 = v5;
  v22 = 0;
  v50.f64[0] = v20;
  v50.f64[1] = v21;
  v23 = 0.0;
  v51 = v19;
  do
  {
    v23 = v23 + v50.f64[v22] * v50.f64[v22];
    ++v22;
  }

  while (v22 != 3);
  v24 = 0;
  v25 = 1.0 / sqrt(v23);
  do
  {
    v50.f64[v24] = v50.f64[v24] * v25;
    ++v24;
  }

  while (v24 != 3);
  v26 = 0;
  v48 = vmulq_f64(v50, vdupq_n_s64(0x415854A640000000uLL));
  v49 = v51 * 6356752.31;
  v46 = vmulq_f64(v50, vdupq_n_s64(0x3E850B1CAC0206BAuLL));
  v47 = v51 * 0.000000157313035;
  v27 = 0.0;
  do
  {
    v27 = v27 + v46.f64[v26] * v46.f64[v26];
    ++v26;
  }

  while (v26 != 3);
  v28 = 0;
  v29 = 1.0 / sqrt(v27);
  do
  {
    v46.f64[v28] = v46.f64[v28] * v29;
    ++v28;
  }

  while (v28 != 3);
  for (i = 0; i != 3; ++i)
  {
    v50.f64[i] = v46.f64[i] * a4;
  }

  v44 = v50;
  v45 = v51;
  v31 = ldexp(2.0943951, -2 * v6);
  v32 = 0;
  v33 = sqrt(v31 * 4.0538689e13);
  do
  {
    v50.f64[v32] = v44.f64[v32] * v33;
    ++v32;
  }

  while (v32 != 3);
  for (j = 0; j != 3; ++j)
  {
    v48.f64[j] = v48.f64[j] + v50.f64[j];
  }

  return v48.f64[0];
}

void **std::unique_ptr<gms::MaterialManager<ggl::Texture2D>>::~unique_ptr[abi:nn200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = gms::MaterialManager<ggl::Texture2D>::~MaterialManager(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C405C0DE07CLL);
  }

  return a1;
}

uint64_t std::function<BOOL ()(BOOL const&)>::operator=(uint64_t a1, uint64_t a2)
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

  std::__function::__value_func<BOOL ()(BOOL const&)>::~__value_func[abi:nn200100](v7);
  return a1;
}

uint64_t std::__function::__value_func<void ()(VKOverlayLevel,VKOverlayResourceFallbackableMode)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 96) = -1;
  v3 = *(a2 + 96);
  if (v3 != -1)
  {
    v5 = a1;
    (off_1F2A026D0[v3])(&v5);
    *(a1 + 96) = v3;
  }

  return a1;
}

void sub_1B287F588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  v14 = *(v12 + 96);
  if (v14 != -1)
  {
    (off_1F2A026C0[v14])(&a12, v12);
  }

  *(v12 + 96) = -1;
  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ggl::TransitNodeColorizedShader::typedReflection(ggl::TransitNodeColorizedShader *this)
{
  {
    if (v1)
    {
      ggl::TransitNodeColorizedShader::typedReflection(void)::ref = "TransitNodeColorizedShader";
      ggl::transitNodeColorizedShaderVertexFunctionDescriptor(v1);
      qword_1ED66B388 = &ggl::transitNodeColorizedShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66B390 = -999142925;
      ggl::transitNodeColorizedShaderFragmentFunctionDescriptor(v2);
      qword_1ED66B398 = &ggl::transitNodeColorizedShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66B3A0 = 1892972555;
      qword_1ED66B3A8 = ggl::transitNodeColorizedShaderShaderConstants(void)::ref;
      unk_1ED66B3B0 = 1;
      qword_1ED66B3B8 = ggl::transitNodeColorizedShaderShaderTextures(void)::ref;
      unk_1ED66B3C0 = 1;
      qword_1ED66B3C8 = &ggl::transitNodeColorizedShaderShaderSamplers(void)::ref;
      unk_1ED66B3D0 = 1;
    }
  }
}

void ggl::earthCoronaShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::earthCoronaShaderFragmentFunctionDescriptor(void)::ref = 0x184F15679;
    qword_1ED667F80 = "EarthCoronaShader";
    unk_1ED667F88 = 0;
    qword_1ED667F90 = 0;
    unk_1ED667F98 = &ggl::earthCoronaShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED667FA0 = 1;
    unk_1ED667FA8 = &ggl::earthCoronaShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED667FB0 = 0;
    unk_1ED667FB8 = &ggl::earthCoronaShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED667FC0 = 1;
    unk_1ED667FC8 = &ggl::earthCoronaShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED667FD8 = 0;
    unk_1ED667FE0 = 0;
    qword_1ED667FD0 = 1;
  }
}

void ggl::flyoverPolarShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverPolarShaderVertexFunctionDescriptor(void)::ref = 2583054915;
    qword_1EB83DE40 = "FlyoverPolarShader";
    unk_1EB83DE48 = ggl::flyoverPolarShaderVertShaderFunctionAttributes(void)::ref;
    qword_1EB83DE50 = 1;
    unk_1EB83DE58 = &ggl::flyoverPolarShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1EB83DE60 = 6;
    unk_1EB83DE68 = &ggl::flyoverPolarShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1EB83DE70 = 0;
    unk_1EB83DE78 = &ggl::flyoverPolarShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1EB83DE80 = 1;
    unk_1EB83DE88 = &ggl::flyoverPolarShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1EB83DE98 = 0;
    unk_1EB83DEA0 = 0;
    qword_1EB83DE90 = 1;
  }
}

void ggl::flyoverBorderShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverBorderShaderFragmentFunctionDescriptor(void)::ref = 0x1EBCB2A55;
    qword_1ED666EB0 = "FlyoverBorderShader";
    unk_1ED666EB8 = 0;
    qword_1ED666EC0 = 0;
    unk_1ED666EC8 = &ggl::flyoverBorderShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED666ED0 = 2;
    unk_1ED666ED8 = &ggl::flyoverBorderShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED666EE0 = 0;
    unk_1ED666EE8 = &ggl::flyoverBorderShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED666EF0 = 3;
    unk_1ED666EF8 = &ggl::flyoverBorderShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED666F08 = 0;
    unk_1ED666F10 = 0;
    qword_1ED666F00 = 3;
  }
}

void ggl::flyoverManeuverShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverManeuverShaderVertexFunctionDescriptor(void)::ref = 3361836483;
    qword_1ED666E38 = "FlyoverManeuverShader";
    unk_1ED666E40 = ggl::flyoverManeuverShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED666E48 = 1;
    unk_1ED666E50 = &ggl::flyoverManeuverShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED666E58 = 3;
    unk_1ED666E60 = &ggl::flyoverManeuverShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED666E68 = 0;
    unk_1ED666E70 = &ggl::flyoverManeuverShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED666E78 = 0;
    unk_1ED666E80 = &ggl::flyoverManeuverShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED666E90 = 0;
    unk_1ED666E98 = 0;
    qword_1ED666E88 = 0;
  }
}

void ggl::flyoverNightShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverNightShaderFragmentFunctionDescriptor(void)::ref = 0x1CE5085A2;
    qword_1ED667758 = "FlyoverNightShader";
    unk_1ED667760 = 0;
    qword_1ED667768 = 0;
    unk_1ED667770 = &ggl::flyoverNightShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED667778 = 2;
    unk_1ED667780 = &ggl::flyoverNightShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED667788 = 0;
    unk_1ED667790 = &ggl::flyoverNightShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED667798 = 2;
    unk_1ED6677A0 = &ggl::flyoverNightShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6677B0 = 0;
    unk_1ED6677B8 = 0;
    qword_1ED6677A8 = 2;
  }
}

void ggl::flyoverPostchainDownsampleCoCShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverPostchainDownsampleCoCShaderVertexFunctionDescriptor(void)::ref = 3177222361;
    qword_1ED65B310 = "FlyoverPostchainDownsampleCoCShader";
    unk_1ED65B318 = ggl::flyoverPostchainDownsampleCoCShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED65B320 = 1;
    unk_1ED65B328 = &ggl::flyoverPostchainDownsampleCoCShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED65B330 = 0;
    unk_1ED65B338 = &ggl::flyoverPostchainDownsampleCoCShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED65B340 = 0;
    unk_1ED65B348 = &ggl::flyoverPostchainDownsampleCoCShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED65B350 = 0;
    unk_1ED65B358 = &ggl::flyoverPostchainDownsampleCoCShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65B368 = 0;
    unk_1ED65B370 = 0;
    qword_1ED65B360 = 0;
  }
}

void ggl::flyoverRoadFillTexturedShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::flyoverRoadFillTexturedShaderFragmentFunctionDescriptor(void)::ref = 0x19DD7A957;
    qword_1ED663360 = "FlyoverRoadFillTexturedShader";
    unk_1ED663368 = 0;
    qword_1ED663370 = 0;
    unk_1ED663378 = &ggl::flyoverRoadFillTexturedShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED663380 = 2;
    unk_1ED663388 = &ggl::flyoverRoadFillTexturedShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED663390 = 0;
    unk_1ED663398 = &ggl::flyoverRoadFillTexturedShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED6633A0 = 1;
    unk_1ED6633A8 = &ggl::flyoverRoadFillTexturedShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6633B8 = 0;
    unk_1ED6633C0 = 0;
    qword_1ED6633B0 = 1;
  }
}

void ggl::solidLineShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::solidLineShaderVertexFunctionDescriptor(void)::ref = 2304082990;
    qword_1ED668F50 = "SolidLineShader";
    unk_1ED668F58 = ggl::solidLineShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED668F60 = 1;
    unk_1ED668F68 = &ggl::solidLineShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED668F70 = 2;
    unk_1ED668F78 = &ggl::solidLineShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED668F80 = 0;
    unk_1ED668F88 = &ggl::solidLineShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED668F90 = 0;
    unk_1ED668F98 = &ggl::solidLineShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED668FA8 = 0;
    unk_1ED668FB0 = 0;
    qword_1ED668FA0 = 0;
  }
}

void sub_1B288047C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, id *a11, uint64_t *a12, ggl::zone_mallocator *a13, uint64_t *a14, std::__shared_weak_count *a15, void **a16)
{
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  v22 = *(v18 + 184);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  std::unique_ptr<ggl::ClearCache>::reset[abi:nn200100](a13, 0);
  v23 = *(v18 + 160);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  v24 = *(v18 + 144);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  a16 = (v18 + 112);
  std::vector<std::vector<geo::handle<md::CommandBufferResource>>>::__destroy_vector::operator()[abi:nn200100](&a16);
  v25 = *(v18 + 88);
  if (v25)
  {
    *(v18 + 96) = v25;
    operator delete(v25);
  }

  std::unique_ptr<ggl::MetalDeviceContextPass>::reset[abi:nn200100]((v18 + 48), 0);
  std::unique_ptr<ggl::MetalDeviceContextFrame>::reset[abi:nn200100](a10, 0);
  v26 = *(v18 + 32);
  *(v18 + 32) = 0;
  if (v26)
  {
    std::default_delete<ggl::RenderResourceFences>::operator()[abi:nn200100](v26);
  }

  std::unique_ptr<ggl::MetalBindingManager>::reset[abi:nn200100](a14, 0);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  MEMORY[0x1B8C62190](v18, 0x10B1C40727A76F6);
  v27 = *(v16 + 54);
  *(v16 + 54) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  std::unique_ptr<ggl::Performance::HUD>::reset[abi:nn200100](a12, 0);
  ggl::Renderer::~Renderer(v16);
  MEMORY[0x1B8C62190]();
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<arComponents::CustomBoxCreateDesc>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> * ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> * ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_8,std::allocator<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_8>,std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A21310;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(BOOL const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::PuckLocationAnimationTracingLogic::PuckLocationAnimationTracingLogic(md::MapEngineSignals *,VKPuckAnimator *,NSObject  {objcproto17OS_dispatch_queue}*)::$_0,std::allocator<md::PuckLocationAnimationTracingLogic::PuckLocationAnimationTracingLogic(md::MapEngineSignals *,VKPuckAnimator *,NSObject  {objcproto17OS_dispatch_queue}*)::$_0>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A57688;
  a2[1] = v2;
  return result;
}

uint64_t std::function<void ()(unsigned long long)>::operator=(uint64_t a1, uint64_t a2)
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

  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](v7);
  return a1;
}

void geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(uint64_t a1, __int16 a2, int a3)
{
  v6 = a2 + 1;
  v7 = a2 + 1 + a2;
  v8 = gss::zone_mallocator::instance(a1);
  v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v8, v7);
  v10 = v9;
  if (*a1)
  {
    v11 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(a1, v9, &v9[v6], a3);
    v12 = *a1;
    v13 = gss::zone_mallocator::instance(v11);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v13, v12);
  }

  *(a1 + 14) = a2;
  *a1 = v10;
  *(a1 + 8) = v6;
}

uint64_t geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(uint64_t a1)
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

  geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1, v3, 0);
  return 1;
}

void geo::intern_linear_map<gss::ScenePropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(uint64_t a1, __int16 a2, int a3)
{
  v6 = (a2 & 0xFFFC) + 4;
  v7 = v6 + 4 * a2;
  v8 = gss::zone_mallocator::instance(a1);
  v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v8, v7 & 0xFFFC);
  v10 = v9;
  if (*a1)
  {
    v11 = geo::intern_linear_map<gss::ScenePropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(a1, v9, &v9[v6], a3);
    v12 = *a1;
    v13 = gss::zone_mallocator::instance(v11);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v13, v12);
  }

  *(a1 + 14) = a2;
  *a1 = v10;
  *(a1 + 8) = v6;
}

uint64_t geo::intern_linear_map<gss::ScenePropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(uint64_t a1)
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

  geo::intern_linear_map<gss::ScenePropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1, v3, 0);
  return 1;
}

const void **geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(const void **result, void *__dst, void *a3, int a4)
{
  if (*(result + 6))
  {
    v5 = result;
    if (a4)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(*(result + 6));
    }

    result = memmove(__dst, *result, *(result + 6));
    v6 = *(v5 + 6);
    if (*(v5 + 6))
    {
      v7 = *v5 + *(v5 + 2);

      return memmove(a3, v7, v6);
    }
  }

  return result;
}

const void **geo::intern_linear_map<gss::ScenePropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(const void **result, void *__dst, void *a3, int a4)
{
  if (*(result + 6))
  {
    v5 = result;
    if (a4)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(*(result + 6));
    }

    result = memmove(__dst, *result, *(result + 6));
    v6 = *(v5 + 6);
    if (*(v5 + 6))
    {
      v7 = *v5 + *(v5 + 2);

      return memmove(a3, v7, 4 * v6);
    }
  }

  return result;
}

void geo::intern_linear_map<gss::ScenePropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(uint64_t a1, __int16 a2, int a3)
{
  v6 = (a2 & 0xFFF8) + 8;
  v7 = v6 + 8 * a2;
  v8 = gss::zone_mallocator::instance(a1);
  v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v8, v7 & 0xFFF8);
  v10 = v9;
  if (*a1)
  {
    v11 = geo::intern_linear_map<gss::ScenePropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(a1, v9, &v9[v6], a3);
    v12 = *a1;
    v13 = gss::zone_mallocator::instance(v11);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v13, v12);
  }

  *(a1 + 14) = a2;
  *a1 = v10;
  *(a1 + 8) = v6;
}

uint64_t geo::intern_linear_map<gss::ScenePropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(uint64_t a1)
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

  geo::intern_linear_map<gss::ScenePropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1, v3, 0);
  return 1;
}

void geo::intern_linear_map<gss::ScenePropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(uint64_t a1, __int16 a2, int a3)
{
  v6 = (a2 & 0xFFF8) + 8;
  v7 = v6 + 16 * a2;
  v8 = gss::zone_mallocator::instance(a1);
  v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v8, v7 & 0xFFF8);
  v10 = v9;
  if (*a1)
  {
    if (*(a1 + 12))
    {
      if (a3)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(*(a1 + 12));
      }

      v9 = memmove(v9, *a1, *(a1 + 12));
      if (*(a1 + 12))
      {
        v9 = memmove(&v10[v6], (*a1 + *(a1 + 8)), 16 * *(a1 + 12));
      }
    }

    v11 = *a1;
    v12 = gss::zone_mallocator::instance(v9);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v12, v11);
  }

  *(a1 + 14) = a2;
  *a1 = v10;
  *(a1 + 8) = v6;
}

uint64_t geo::intern_linear_map<gss::ScenePropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(uint64_t a1)
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

  geo::intern_linear_map<gss::ScenePropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1, v3, 0);
  return 1;
}

uint64_t std::__function::__func<geo::intern_map_allocator<gss::ScenePropertyID,unsigned int,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1},std::allocator<geo::intern_map_allocator<gss::ScenePropertyID,unsigned int,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A30D18;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<geo::intern_map_allocator<gss::ScenePropertyID,unsigned long long,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1},std::allocator<geo::intern_map_allocator<gss::ScenePropertyID,unsigned long long,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A30D60;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<geo::intern_map_allocator<gss::ScenePropertyID,unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1},std::allocator<geo::intern_map_allocator<gss::ScenePropertyID,unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A30CD0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void ggl::TextureWithReverseAlphaShader::typedReflection(ggl::TextureWithReverseAlphaShader *this)
{
  {
    if (v1)
    {
      ggl::TextureWithReverseAlphaShader::typedReflection(void)::ref = "TextureWithReverseAlphaShader";
      ggl::textureWithReverseAlphaShaderVertexFunctionDescriptor(v1);
      qword_1ED66ADD8 = &ggl::textureWithReverseAlphaShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66ADE0 = 1325347472;
      ggl::textureWithReverseAlphaShaderFragmentFunctionDescriptor(v2);
      qword_1ED66ADE8 = &ggl::textureWithReverseAlphaShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66ADF0 = -103587242;
      qword_1ED66ADF8 = ggl::textureWithReverseAlphaShaderShaderConstants(void)::ref;
      unk_1ED66AE00 = 3;
      qword_1ED66AE08 = ggl::textureWithReverseAlphaShaderShaderTextures(void)::ref;
      unk_1ED66AE10 = 1;
      qword_1ED66AE18 = &ggl::textureWithReverseAlphaShaderShaderSamplers(void)::ref;
      unk_1ED66AE20 = 1;
    }
  }
}

void ggl::endOfWorldShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::endOfWorldShaderFragmentFunctionDescriptor(void)::ref = 0x18BAADC3CLL;
    qword_1ED6685E8 = "EndOfWorldShader";
    unk_1ED6685F0 = 0;
    qword_1ED6685F8 = 0;
    unk_1ED668600 = &ggl::endOfWorldShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED668608 = 1;
    unk_1ED668610 = &ggl::endOfWorldShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED668618 = 0;
    unk_1ED668620 = &ggl::endOfWorldShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED668628 = 1;
    unk_1ED668630 = &ggl::endOfWorldShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED668640 = 0;
    unk_1ED668648 = 0;
    qword_1ED668638 = 1;
  }
}

uint64_t gms::NonZoomablePropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>::addProperty(uint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = *(result + 24);
  *(result + 8) = *a4;
  if ((v4 & 1) == 0)
  {
    *(result + 24) = 1;
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared> * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(unsigned __int8 **a1, unsigned __int8 a2)
{
  v2 = *(a1 + 6);
  if (!*(a1 + 6))
  {
    return v2;
  }

  v3 = *a1;
  if (*(a1 + 17) != 1)
  {
    v6 = v3 + v2;
    v7 = *a1;
    while (*v7 != a2)
    {
      ++v7;
      if (!--v2)
      {
        LOWORD(v7) = v6;
        goto LABEL_19;
      }
    }

    goto LABEL_19;
  }

  if (v2 >= 0x1E)
  {
    v7 = *a1;
    v8 = *(a1 + 6);
    do
    {
      v9 = &v7[v8 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v12 = v8 >> 1;
      v8 += ~(v8 >> 1);
      if (v11 < a2)
      {
        v7 = v10;
      }

      else
      {
        v8 = v12;
      }
    }

    while (v8);
    if (v7 == (v3 + v2) || *v7 != a2)
    {
      return v2;
    }

LABEL_19:
    LOWORD(v2) = v7 - v3;
    return v2;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(v3 + v4);
    if (v5 >= a2)
    {
      break;
    }

    if (v2 == ++v4)
    {
      return v2;
    }
  }

  if (v5 == a2)
  {
    LOWORD(v2) = v4;
  }

  return v2;
}

void std::__function::__func<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1},std::allocator<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1}>,void ()(BOOL)>::operator()(uint64_t *a1, char *a2)
{
  v2 = *a2;
  v3 = a1[6];
  v4 = a1[5];
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::operator()(a1[4], &v4, v2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

void sub_1B2881A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(gss::ScenePropertyID*,unsigned char *,BOOL)::{lambda(unsigned long,unsigned long)#1} &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *a3;
      v8 = *(*a3 + v6);
      v9 = *(*a3 + v5);
      v10 = *(a2 - 1);
      v11 = *(*a3 + v10);
      if (v8 >= v9)
      {
        if (v11 < v8)
        {
          a1[1] = v10;
          *(a2 - 1) = v6;
          v36 = *a1;
          v35 = a1[1];
          if (*(v7 + v35) < *(v7 + v36))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v11 < v8)
      {
        *a1 = v10;
        goto LABEL_42;
      }

      *a1 = v6;
      a1[1] = v5;
      v46 = *(a2 - 1);
      if (*(v7 + v46) < v9)
      {
        a1[1] = v46;
        goto LABEL_42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(gss::ScenePropertyID*,unsigned char *,BOOL)::{lambda(unsigned long,unsigned long)#1} &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
        return 1;
      }

      goto LABEL_13;
    }

    v22 = a1 + 1;
    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *a1;
    v27 = *a3;
    v28 = *(*a3 + v23);
    v29 = *(*a3 + v26);
    v30 = v25;
    v31 = *(*a3 + v25);
    if (v28 >= v29)
    {
      if (v31 < v28)
      {
        v32 = a1;
        *v22 = v25;
        *v24 = v23;
        v33 = a1 + 1;
        v34 = v23;
        v25 = v23;
        if (v31 >= v29)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v31 < v28)
      {
        v32 = a1;
        v33 = a1 + 2;
        v34 = *a1;
        LODWORD(v23) = *a1;
LABEL_44:
        *v32 = v30;
        *v33 = v26;
        v25 = v34;
LABEL_46:
        v47 = *(a2 - 1);
        if (*(v27 + v47) < *(v27 + v25))
        {
          *v24 = v47;
          *(a2 - 1) = v23;
          v48 = *v24;
          v49 = *v22;
          v50 = *(v27 + v48);
          if (v50 < *(v27 + v49))
          {
            a1[1] = v48;
            a1[2] = v49;
            v51 = *a1;
            if (v50 < *(v27 + v51))
            {
              *a1 = v48;
              a1[1] = v51;
            }
          }
        }

        return 1;
      }

      v32 = a1 + 1;
      *a1 = v23;
      a1[1] = v26;
      v33 = a1 + 2;
      v34 = v26;
      LODWORD(v23) = v26;
      if (v31 < v29)
      {
        goto LABEL_44;
      }
    }

    LODWORD(v23) = v25;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + v4) < *(*a3 + v5))
    {
      *a1 = v4;
LABEL_42:
      *(a2 - 1) = v5;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v12 = a1[2];
  v14 = a1[1];
  v15 = *a3;
  v16 = *(*a3 + v14);
  v17 = *a1;
  v18 = *(v15 + v17);
  v19 = *(v15 + v12);
  if (v16 >= v18)
  {
    if (v19 >= v16)
    {
      goto LABEL_26;
    }

    a1[1] = v12;
    *v13 = v14;
    v20 = a1;
    v21 = a1 + 1;
LABEL_24:
    if (v19 >= v18)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v20 = a1;
  v21 = a1 + 2;
  if (v19 >= v16)
  {
    *a1 = v14;
    a1[1] = v17;
    v20 = a1 + 1;
    v21 = a1 + 2;
    goto LABEL_24;
  }

LABEL_25:
  *v20 = v12;
  *v21 = v17;
LABEL_26:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 12; ; i += 4)
  {
    v40 = *v37;
    v41 = *v13;
    v42 = *(v15 + v40);
    if (v42 < *(v15 + v41))
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 4;
        if (v43 == 4)
        {
          break;
        }

        v41 = *(a1 + v43 - 8);
        v43 -= 4;
        if (v42 >= *(v15 + v41))
        {
          v45 = (a1 + v44);
          goto LABEL_34;
        }
      }

      v45 = a1;
LABEL_34:
      *v45 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v13 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

void geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::intern<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 16) & 1) == 0)
  {
    *(a1 + 16) = 1;
    v3 = *(a1 + 12);
    if (*(a1 + 12))
    {
      v5 = 3 * v3;
      v6 = *(a2 + 36);
      if (3 * v3 <= v6)
      {
        v7 = *(a2 + 32);
        if (v7 < v5)
        {
          v8 = gss::zone_mallocator::instance(a1);
          v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v8, v6);
          v10 = *(a2 + 36);
          v24 = &unk_1F2A5B720;
          v25 = v10;
          v26 = &v24;
          v27 = v9;
          v30 = &v28;
          v28 = &unk_1F2A5B720;
          v29 = v10;
          std::__function::__value_func<void ()(unsigned char *)>::~__value_func[abi:nn200100](&v24);
          v11 = *(a2 + 8);
          if (v11 >= *(a2 + 16))
          {
            v14 = std::vector<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>::__emplace_back_slow_path<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>(a2, &v27);
          }

          else
          {
            v12 = v27;
            v13 = v30;
            v27 = 0;
            *v11 = v12;
            if (v13)
            {
              if (v13 == &v28)
              {
                v11[4] = (v11 + 1);
                (*(*v30 + 3))(v30);
              }

              else
              {
                v11[4] = v13;
                v30 = 0;
              }
            }

            else
            {
              v11[4] = 0;
            }

            v14 = (v11 + 5);
          }

          *(a2 + 8) = v14;
          v15 = *(a2 + 36);
          *(a2 + 24) = 0;
          *(a2 + 28) = v15;
          *(a2 + 32) = v15;
          std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>::~unique_ptr[abi:nn200100](&v27);
          v7 = *(a2 + 32);
        }

        v16 = *(*(a2 + 8) - 40);
        v17 = *(a2 + 24);
        v18 = *(a2 + 28) - v3;
        *(a2 + 24) = v17 + 2 * v3;
        *(a2 + 28) = v18;
        *(a2 + 32) = v7 - v5;
        if (v16)
        {
          v19 = v16 + v17;
          v20 = (v18 - v17);
          v21 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(a1, (v16 + v17), (v16 + v17 + v20), 1);
          v22 = *a1;
          v23 = gss::zone_mallocator::instance(v21);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v23, v22);
          *(a1 + 14) = 0;
          *a1 = v19;
          *(a1 + 8) = v20;
        }
      }
    }
  }
}

void sub_1B2881F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_0,std::allocator<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_0>,std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A210D0;
  a2[1] = v2;
  return result;
}

gss::zone_mallocator *std::unique_ptr<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo>>::~unique_ptr[abi:nn200100](gss::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *v2;
    v4 = gss::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned int>(v4, v3);
    MEMORY[0x1B8C62190](v2, 0x1010C40113C0ABBLL);
  }

  return a1;
}

void geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::reallocate(gss::zone_mallocator *a1, uint64_t a2)
{
  v4 = gss::zone_mallocator::instance(a1);
  v5 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gss::StyleCondition>(v4, a2);
  if (*a1)
  {
    geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::moveContent(a1, v5);
  }

  *(a1 + 5) = a2;
  *a1 = v5;
}

void geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::moveContent(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *a1;
    do
    {
      v8 = *v7;
      v7 += 6;
      *a2 = v8;
      *(a2 + 13) = 0;
      *(a2 + 8) = 0;
      geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::copy(a2 + 8, (v5 + 2));
      --v6;
      a2 += 24;
      v5 = v7;
    }

    while (v6);
  }

  geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::deallocateStorage(a1);
  *(a1 + 8) = v3;
}

gss::zone_mallocator *std::unique_ptr<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo>>::~unique_ptr[abi:nn200100](gss::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v2[1])
    {
      v3 = 0;
      v4 = 8;
      do
      {
        geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::deallocateStorage(*v2 + v4);
        ++v3;
        v4 += 24;
      }

      while (v3 < v2[1]);
    }

    v5 = *v2;
    v6 = gss::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gss::StyleCondition>(v6, v5);
    MEMORY[0x1B8C62190](v2, 0x1020C4024DAA5DELL);
  }

  return a1;
}

void geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::reallocate(gss::zone_mallocator *a1, uint64_t a2)
{
  v4 = gss::zone_mallocator::instance(a1);
  v5 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v4, a2);
  v6 = v5;
  v7 = *a1;
  if (*a1)
  {
    v8 = *(a1 + 4);
    if (v8)
    {
      v9 = *(a1 + 4);
      v10 = v5;
      do
      {
        v11 = *v7++;
        *v10++ = v11;
        --v9;
      }

      while (v9);
    }

    geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::deallocateStorage(a1);
    *(a1 + 4) = v8;
  }

  *(a1 + 5) = a2;
  *a1 = v6;
}

void geo::intern_vector<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,unsigned short,geo::allocator_adapter<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,gss::zone_mallocator>>::reallocate(gss::zone_mallocator *a1, uint64_t a2)
{
  v4 = gss::zone_mallocator::instance(a1);
  v5 = pthread_rwlock_rdlock((v4 + 32));
  if (v5)
  {
    geo::read_write_lock::logFailure(v5, "read lock", v6);
  }

  v7 = malloc_type_zone_malloc(*v4, 24 * a2, 0x101004036CA7CB0uLL);
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
      v12 = *a1;
      do
      {
        v13 = *v12;
        v12 += 6;
        *v11 = v13;
        *(v11 + 13) = 0;
        v11[1] = 0;
        geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::copy((v11 + 1), (v8 + 2));
        --v10;
        v11 += 3;
        v8 = v12;
      }

      while (v10);
    }

    geo::intern_vector<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,unsigned short,geo::allocator_adapter<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,gss::zone_mallocator>>::deallocateStorage(a1);
    *(a1 + 4) = v9;
  }

  *(a1 + 5) = a2;
  *a1 = v7;
}

unsigned __int16 *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::construct(geo::ibitstream &,gss::DecodingContext const&,geo::intern_vector<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>> const&,geo::intern_vector<gss::MatchingGraphEndChain,unsigned short,geo::allocator_adapter<gss::MatchingGraphEndChain,gss::zone_mallocator>> &,geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>,unsigned int,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>> &,std::ostringstream &,geo::intern_allocator<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>> &)::{lambda(gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode const&,gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode const&)#1} &,gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode*,0>(unsigned __int16 *result, unsigned __int16 *a2, void *a3, void *a4, void *a5)
{
  v5 = *a2;
  LODWORD(v6) = *a3;
  if (v5 >= *result)
  {
    if (v6 < v5)
    {
      v6 = *a2;
      *a2 = *a3;
      *a3 = v6;
      if (*a2 >= *result)
      {
        LODWORD(v6) = v6;
      }

      else
      {
        v6 = *result;
        *result = *a2;
        *a2 = v6;
        LODWORD(v6) = *a3;
      }
    }
  }

  else
  {
    v7 = *result;
    if (v6 >= v5)
    {
      *result = *a2;
      *a2 = v7;
      LODWORD(v6) = *a3;
      if (v6 < v7)
      {
        LODWORD(v6) = v7;
        *a2 = *a3;
        *a3 = v7;
      }
    }

    else
    {
      *result = *a3;
      *a3 = v7;
      LODWORD(v6) = v7;
    }
  }

  if (*a4 < v6)
  {
    v8 = *a3;
    *a3 = *a4;
    *a4 = v8;
    if (*a3 < *a2)
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      if (*a2 < *result)
      {
        v10 = *result;
        *result = *a2;
        *a2 = v10;
      }
    }
  }

  if (*a5 < *a4)
  {
    v11 = *a4;
    *a4 = *a5;
    *a5 = v11;
    if (*a4 < *a3)
    {
      v12 = *a3;
      *a3 = *a4;
      *a4 = v12;
      if (*a3 < *a2)
      {
        v13 = *a2;
        *a2 = *a3;
        *a3 = v13;
        if (*a2 < *result)
        {
          v14 = *result;
          *result = *a2;
          *a2 = v14;
        }
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_9,std::allocator<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_9>,float ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A21358;
  a2[1] = v2;
  return result;
}

uint64_t md::HikingLogic::setCallbackForContextualRegionLocationIntersectionRequest(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = (a1 + 288);
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
    v6 = *(a1 + 312);
    if (v9 == v8)
    {
      if (v6 == v3)
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = 0;
        (*(**(a1 + 312) + 24))(*(a1 + 312), v8);
        (*(**(a1 + 312) + 32))(*(a1 + 312));
        *(a1 + 312) = 0;
        v9 = v8;
        (*(v10[0] + 24))(v10, v3);
        (*(v10[0] + 32))(v10);
      }

      else
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = *(a1 + 312);
      }

      *(a1 + 312) = v3;
    }

    else if (v6 == v3)
    {
      (*(*v6 + 24))(*(a1 + 312), v8);
      (*(**(a1 + 312) + 32))(*(a1 + 312));
      *(a1 + 312) = v9;
      v9 = v8;
    }

    else
    {
      v9 = *(a1 + 312);
      *(a1 + 312) = v5;
    }
  }

  return std::__function::__value_func<void ()(geo::Mercator2<double>,BOOL)>::~__value_func[abi:nn200100](v8);
}

_DWORD *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(gss::PropertyID*,unsigned char *,BOOL)::{lambda(unsigned long,unsigned long)#1} &,unsigned int *,0>(_DWORD *result, _DWORD *a2, unsigned int *a3, _DWORD *a4, _DWORD *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 2 * v6);
  v9 = *(a6 + 2 * v7);
  v10 = *a3;
  v11 = *(a6 + 2 * *a3);
  if (v8 >= v9)
  {
    if (v11 >= v8)
    {
      v7 = *a3;
      goto LABEL_14;
    }

    *a2 = v10;
    *a3 = v6;
    v12 = *a2;
    v13 = *result;
    if (*(a6 + 2 * v12) >= *(a6 + 2 * v13))
    {
      v7 = v6;
      v10 = v6;
      goto LABEL_14;
    }

    *result = v12;
    *a2 = v13;
    v7 = *a3;
  }

  else
  {
    if (v11 >= v8)
    {
      *result = v6;
      *a2 = v7;
      v10 = *a3;
      if (*(a6 + 2 * *a3) >= v9)
      {
        v7 = *a3;
        goto LABEL_14;
      }

      *a2 = v10;
    }

    else
    {
      *result = v10;
    }

    *a3 = v7;
  }

  v10 = v7;
LABEL_14:
  v14 = *a4;
  if (*(a6 + 2 * v14) < *(a6 + 2 * v7))
  {
    *a3 = v14;
    *a4 = v10;
    v15 = *a3;
    v16 = *a2;
    if (*(a6 + 2 * v15) < *(a6 + 2 * v16))
    {
      *a2 = v15;
      *a3 = v16;
      v17 = *a2;
      v18 = *result;
      if (*(a6 + 2 * v17) < *(a6 + 2 * v18))
      {
        *result = v17;
        *a2 = v18;
      }
    }
  }

  v19 = *a5;
  v20 = *a4;
  if (*(a6 + 2 * v19) < *(a6 + 2 * v20))
  {
    *a4 = v19;
    *a5 = v20;
    v21 = *a4;
    v22 = *a3;
    if (*(a6 + 2 * v21) < *(a6 + 2 * v22))
    {
      *a3 = v21;
      *a4 = v22;
      v23 = *a3;
      v24 = *a2;
      if (*(a6 + 2 * v23) < *(a6 + 2 * v24))
      {
        *a2 = v23;
        *a3 = v24;
        v25 = *a2;
        v26 = *result;
        if (*(a6 + 2 * v25) < *(a6 + 2 * v26))
        {
          *result = v25;
          *a2 = v26;
        }
      }
    }
  }

  return result;
}

void geo::intern_linear_map<gss::PropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(uint64_t a1, __int16 a2, int a3)
{
  v6 = ((2 * a2) & 0xFFF8) + 8;
  v7 = v6 + 16 * a2;
  v8 = gss::zone_mallocator::instance(a1);
  v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v8, v7 & 0xFFF8);
  v10 = v9;
  if (*a1)
  {
    if (*(a1 + 12))
    {
      if (a3)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(*(a1 + 12));
      }

      v9 = memmove(v9, *a1, 2 * *(a1 + 12));
      if (*(a1 + 12))
      {
        v9 = memmove(&v10[v6], (*a1 + *(a1 + 8)), 16 * *(a1 + 12));
      }
    }

    v11 = *a1;
    v12 = gss::zone_mallocator::instance(v9);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v12, v11);
  }

  *(a1 + 14) = a2;
  *a1 = v10;
  *(a1 + 8) = v6;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(gss::PropertyID*,unsigned char *,BOOL)::{lambda(unsigned long,unsigned long)#1} &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *a3;
      v8 = *(*a3 + 2 * v6);
      v9 = *(*a3 + 2 * v5);
      v10 = *(a2 - 1);
      v11 = *(*a3 + 2 * v10);
      if (v8 >= v9)
      {
        if (v11 < v8)
        {
          a1[1] = v10;
          *(a2 - 1) = v6;
          v36 = *a1;
          v35 = a1[1];
          if (*(v7 + 2 * v35) < *(v7 + 2 * v36))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v11 < v8)
      {
        *a1 = v10;
        goto LABEL_42;
      }

      *a1 = v6;
      a1[1] = v5;
      v46 = *(a2 - 1);
      if (*(v7 + 2 * v46) < v9)
      {
        a1[1] = v46;
        goto LABEL_42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(gss::PropertyID*,unsigned char *,BOOL)::{lambda(unsigned long,unsigned long)#1} &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
        return 1;
      }

      goto LABEL_13;
    }

    v22 = a1 + 1;
    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *a1;
    v27 = *a3;
    v28 = *(*a3 + 2 * v23);
    v29 = *(*a3 + 2 * v26);
    v30 = v25;
    v31 = *(*a3 + 2 * v25);
    if (v28 >= v29)
    {
      if (v31 < v28)
      {
        v32 = a1;
        *v22 = v25;
        *v24 = v23;
        v33 = a1 + 1;
        v34 = v23;
        v25 = v23;
        if (v31 >= v29)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v31 < v28)
      {
        v32 = a1;
        v33 = a1 + 2;
        v34 = *a1;
        LODWORD(v23) = *a1;
LABEL_44:
        *v32 = v30;
        *v33 = v26;
        v25 = v34;
LABEL_46:
        v47 = *(a2 - 1);
        if (*(v27 + 2 * v47) < *(v27 + 2 * v25))
        {
          *v24 = v47;
          *(a2 - 1) = v23;
          v48 = *v24;
          v49 = *v22;
          v50 = *(v27 + 2 * v48);
          if (v50 < *(v27 + 2 * v49))
          {
            a1[1] = v48;
            a1[2] = v49;
            v51 = *a1;
            if (v50 < *(v27 + 2 * v51))
            {
              *a1 = v48;
              a1[1] = v51;
            }
          }
        }

        return 1;
      }

      v32 = a1 + 1;
      *a1 = v23;
      a1[1] = v26;
      v33 = a1 + 2;
      v34 = v26;
      LODWORD(v23) = v26;
      if (v31 < v29)
      {
        goto LABEL_44;
      }
    }

    LODWORD(v23) = v25;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 2 * v4) < *(*a3 + 2 * v5))
    {
      *a1 = v4;
LABEL_42:
      *(a2 - 1) = v5;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v12 = a1[2];
  v14 = a1[1];
  v15 = *a3;
  v16 = *(*a3 + 2 * v14);
  v17 = *a1;
  v18 = *(v15 + 2 * v17);
  v19 = *(v15 + 2 * v12);
  if (v16 >= v18)
  {
    if (v19 >= v16)
    {
      goto LABEL_26;
    }

    a1[1] = v12;
    *v13 = v14;
    v20 = a1;
    v21 = a1 + 1;
LABEL_24:
    if (v19 >= v18)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v20 = a1;
  v21 = a1 + 2;
  if (v19 >= v16)
  {
    *a1 = v14;
    a1[1] = v17;
    v20 = a1 + 1;
    v21 = a1 + 2;
    goto LABEL_24;
  }

LABEL_25:
  *v20 = v12;
  *v21 = v17;
LABEL_26:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 12; ; i += 4)
  {
    v40 = *v37;
    v41 = *v13;
    v42 = *(v15 + 2 * v40);
    if (v42 < *(v15 + 2 * v41))
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 4;
        if (v43 == 4)
        {
          break;
        }

        v41 = *(a1 + v43 - 8);
        v43 -= 4;
        if (v42 >= *(v15 + 2 * v41))
        {
          v45 = (a1 + v44);
          goto LABEL_34;
        }
      }

      v45 = a1;
LABEL_34:
      *v45 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v13 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

uint64_t geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(uint64_t a1)
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

  geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1, v3, 0);
  return 1;
}

void geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(uint64_t a1, __int16 a2, int a3)
{
  v6 = ((2 * a2) & 0xFFF8) + 8;
  v7 = v6 + 8 * a2;
  v8 = gss::zone_mallocator::instance(a1);
  v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v8, v7 & 0xFFF8);
  v10 = v9;
  if (*a1)
  {
    v11 = geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(a1, v9, &v9[v6], a3);
    v12 = *a1;
    v13 = gss::zone_mallocator::instance(v11);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v13, v12);
  }

  *(a1 + 14) = a2;
  *a1 = v10;
  *(a1 + 8) = v6;
}

const void **geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(const void **result, void *__dst, void *a3, int a4)
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

      return memmove(a3, v7, 8 * v6);
    }
  }

  return result;
}

uint64_t gss::dashPatternDecoder<gss::PropertyID>(gss::zone_mallocator *a1, unint64_t a2, uint64_t a3, int a4, uint64_t *a5, void *a6)
{
  v101 = *MEMORY[0x1E69E9840];
  v12 = gss::zone_mallocator::instance(a1);
  geo::read_write_lock::read_lock((v12 + 32));
  v13 = malloc_type_zone_malloc(*v12, 8uLL, 0x100004052888210uLL);
  atomic_fetch_add((v12 + 24), 1u);
  geo::read_write_lock::unlock((v12 + 32));
  v15 = 0;
  *v13 = 0x12D0118012C0117;
  while (*(v13 + v15) != a4)
  {
    v15 += 4;
    if (v15 == 8)
    {
      goto LABEL_6;
    }
  }

  if (!a3)
  {
LABEL_6:
    v16 = 1;
    goto LABEL_7;
  }

  v95 = 0uLL;
  v96 = 0;
  if ((a3 & 0xF) != 0)
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v18 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 584;
      *&buf[18] = 2082;
      *&buf[20] = "Dash pattern had strange number of bits.";
      _os_log_impl(&dword_1B2754000, v18, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v19 = MEMORY[0x1B8C61C80](a6, 584);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " STYL Parse Error Here: ", 24);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Dash pattern had strange number of bits.", 40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "\n", 1);
  }

  else
  {
    v22 = 0.0;
    if (!a3)
    {
LABEL_32:
      v98 = v22;
      v43 = *(v13 + v15 + 2);
      *buf = v43;
      buf[2] = 0;
      v44 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, buf, &buf[4]);
      v45 = *a5;
      v46 = *(*a5 + 392);
      if (*(*a5 + 384) == v46 || (v47 = *(v46 - 16), v48 = v47[1], 0xCCCCCCCCCCCCCCCDLL * ((v48 - *v47) >> 3) == *(v45 + 408)))
      {
        v49 = gss::zone_mallocator::instance(v44);
        geo::read_write_lock::read_lock((v49 + 32));
        v50 = malloc_type_zone_malloc(*v49, 0x40uLL, 0x10810407559D7D1uLL);
        atomic_fetch_add((v49 + 24), 1u);
        geo::read_write_lock::unlock((v49 + 32));
        v50->__shared_owners_ = 0;
        v50->__shared_weak_owners_ = 0;
        v50->__vftable = &unk_1F2A5DB30;
        v50[1].__shared_owners_ = 0;
        p_shared_owners = &v50[1].__shared_owners_;
        v50[1].__shared_weak_owners_ = 0;
        v50[2].__vftable = 0;
        v53 = *(v45 + 408);
        if (v53)
        {
          v100 = &v50[2].__shared_owners_;
          v54 = gss::zone_mallocator::instance(v51);
          v55 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gss::DashPattern>(v54, v53);
          *buf = v55;
          *&buf[8] = v55;
          v56 = &v55[40 * v53];
          *&buf[16] = v55;
          *&buf[24] = v56;
          shared_owners = v50[1].__shared_owners_;
          shared_weak_owners = v50[1].__shared_weak_owners_;
          v59 = &v55[shared_owners - shared_weak_owners];
          std::__uninitialized_allocator_relocate[abi:ne200100]<geo::allocator_adapter<gss::DashPattern,gss::zone_mallocator>,gss::DashPattern*>(&v50[2].__shared_owners_, shared_owners, shared_weak_owners, v59);
          v60 = v50[1].__shared_owners_;
          v50[1].__shared_owners_ = v59;
          v50[1].__shared_weak_owners_ = v55;
          v61 = v50[2].__vftable;
          v50[2].__vftable = v56;
          *&buf[16] = v60;
          *&buf[24] = v61;
          *buf = v60;
          *&buf[8] = v60;
          std::__split_buffer<gss::DashPattern,geo::allocator_adapter<gss::DashPattern,gss::zone_mallocator> &>::~__split_buffer(buf);
        }

        v62 = *(v45 + 392);
        v63 = *(v45 + 400);
        if (v62 >= v63)
        {
          v69 = *(v45 + 384);
          v70 = (v62 - v69) >> 4;
          v71 = v70 + 1;
          if ((v70 + 1) >> 60)
          {
            std::vector<unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::__throw_length_error[abi:ne200100]();
          }

          v72 = v63 - v69;
          if (v72 >> 3 > v71)
          {
            v71 = v72 >> 3;
          }

          if (v72 >= 0x7FFFFFFFFFFFFFF0)
          {
            v73 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v73 = v71;
          }

          if (v73)
          {
            if (!(v73 >> 60))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v74 = (16 * v70);
          *v74 = p_shared_owners;
          v74[1] = v50;
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          v64 = 16 * v70 + 16;
          v75 = *(v45 + 384);
          v76 = *(v45 + 392) - v75;
          v77 = 16 * v70 - v76;
          memcpy(v74 - v76, v75, v76);
          v78 = *(v45 + 384);
          *(v45 + 384) = v77;
          *(v45 + 392) = v64;
          *(v45 + 400) = 0;
          if (v78)
          {
            operator delete(v78);
          }
        }

        else
        {
          *v62 = p_shared_owners;
          v62[1] = v50;
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          v64 = (v62 + 2);
        }

        *(v45 + 392) = v64;
        std::__shared_weak_count::__release_shared[abi:nn200100](v50);
        v47 = *(*(v45 + 392) - 16);
        v48 = v47[1];
      }

      v79 = v47[2];
      if (v48 >= v79)
      {
        v81 = 0xCCCCCCCCCCCCCCCDLL * ((v48 - *v47) >> 3);
        v82 = v81 + 1;
        if (v81 + 1 > 0x666666666666666)
        {
          std::vector<unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::__throw_length_error[abi:ne200100]();
        }

        v83 = 0xCCCCCCCCCCCCCCCDLL * ((v79 - *v47) >> 3);
        if (2 * v83 > v82)
        {
          v82 = 2 * v83;
        }

        if (v83 >= 0x333333333333333)
        {
          v84 = 0x666666666666666;
        }

        else
        {
          v84 = v82;
        }

        v100 = v47 + 3;
        if (v84)
        {
          v85 = gss::zone_mallocator::instance(v44);
          v86 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gss::DashPattern>(v85, v84);
        }

        else
        {
          v86 = 0;
        }

        v87 = &v86[40 * v81];
        *buf = v86;
        *&buf[8] = v87;
        *&buf[24] = &v86[40 * v84];
        v87[24] = v97;
        *v87 = v95;
        *(v87 + 2) = v96;
        v96 = 0;
        v95 = 0uLL;
        *(v87 + 8) = v98;
        *&buf[16] = v87 + 40;
        v88 = v47[1];
        v89 = &v87[*v47 - v88];
        std::__uninitialized_allocator_relocate[abi:ne200100]<geo::allocator_adapter<gss::DashPattern,gss::zone_mallocator>,gss::DashPattern*>((v47 + 3), *v47, v88, v89);
        v90 = *v47;
        *v47 = v89;
        v91 = v47[2];
        v93 = *&buf[16];
        *&buf[8] = v90;
        *&buf[16] = v90;
        *(v47 + 1) = v93;
        *&buf[24] = v91;
        *buf = v90;
        std::__split_buffer<gss::DashPattern,geo::allocator_adapter<gss::DashPattern,gss::zone_mallocator> &>::~__split_buffer(buf);
        v80 = v93;
      }

      else
      {
        *(v48 + 24) = v97;
        *v48 = v95;
        *(v48 + 16) = v96;
        v95 = 0uLL;
        v96 = 0;
        *(v48 + 32) = v98;
        v80 = v48 + 40;
      }

      v47[1] = v80;
      v92 = geo::intern_linear_map<gss::PropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 96, v43);
      *v92 = 2;
      *(v92 + 8) = v80 - 40;
      v16 = 1;
      goto LABEL_68;
    }

    v23 = gss::zone_mallocator::instance(v14);
    v24 = a3 >> 4;
    v25 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<float>(v23, v24);
    v26 = &v25[4 * v24];
    bzero(v25, 4 * v24);
    v27 = 0;
    *&v95 = v25;
    *(&v95 + 1) = v26;
    v96 = v26;
    v28 = *(a1 + 24);
    v29 = *(a1 + 24) != 0;
    v31 = *a1;
    v30 = *(a1 + 1);
    v32 = *(a1 + 2);
    if (v24 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = v24;
    }

    while (1)
    {
      buf[0] = 0;
      v94 = 0;
      v34 = v32 + 2;
      if (v30 < v32 + 2 + v29)
      {
        break;
      }

      if (v28)
      {
        v35 = 0;
        v36 = buf;
        do
        {
          v37 = v35;
          v34 = v32 + 1;
          if (v32 + 1 >= v30)
          {
            v38 = 0;
          }

          else
          {
            v38 = *(v31 + v32 + 1);
          }

          v39 = ((v38 & (0xFFFF << (8 - v28))) >> (8 - v28)) | ((((1 << (8 - v28)) + 255) & *(v31 + v32)) << v28);
          *(a1 + 2) = v34;
          *v36 = v39;
          v36 = &v94;
          v35 = 1;
          v32 = v34;
        }

        while ((v37 & 1) == 0);
        v40 = buf[0] | (v94 << 8);
      }

      else
      {
        v40 = *(v31 + v32);
        *(a1 + 2) = v34;
      }

      *&v25[4 * v27++] = vcvts_n_f32_u32(v40, 2uLL);
      v32 = v34;
      if (v27 == v33)
      {
        v41 = v95;
        if (v95 != v26)
        {
          v22 = 0.0;
          do
          {
            v42 = *v41++;
            v22 = v42 + v22;
          }

          while (v41 != v26);
        }

        goto LABEL_32;
      }
    }

    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v65 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 590;
      *&buf[18] = 2082;
      *&buf[20] = "Could not read dash gap.";
      _os_log_impl(&dword_1B2754000, v65, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v66 = MEMORY[0x1B8C61C80](a6, 590);
    v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, " STYL Parse Error Here: ", 24);
    v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "Could not read dash gap.", 24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, "\n", 1);
  }

  v16 = 0;
LABEL_68:
  if (v95)
  {
    std::allocator_traits<geo::allocator_adapter<float,gss::zone_mallocator>>::deallocate[abi:ne200100](v95);
  }

LABEL_7:
  std::allocator_traits<geo::allocator_adapter<std::pair<gss::StylePropertyIndex,gss::PropertyID>,gss::zone_mallocator>>::deallocate[abi:ne200100](v13);
  return v16;
}

void sub_1B2883974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GEOGetGeoCSSStyleSheetLog()
{
  if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
  {
    dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
  }

  return GEOGetGeoCSSStyleSheetLog_log;
}

uint64_t gss::fixedPoint5_3Decoder<gss::PropertyID>(uint64_t *a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
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
      *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v6) = vcvts_n_f32_u32(v26, 3uLL);
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

uint64_t gss::floatPairDecoder<gss::PropertyID>(uint64_t *a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a4 > 0x1E9)
  {
    return 1;
  }

  v6 = *&asc_1B341D4EA[2 * a4];
  if (v6 == 509)
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
        goto LABEL_39;
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
LABEL_39:
        LOWORD(v45) = v6;
        BYTE2(v45) = 0;
        geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, &v45, &v46);
        v44 = geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 72, v6);
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

uint64_t gss::uint64Decoder<gss::PropertyID>(uint64_t *a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a4 > 0x1E9)
  {
    return 1;
  }

  v6 = *&asc_1B341D4EA[2 * a4];
  if (v6 == 509)
  {
    return 1;
  }

  if (a3 == 64)
  {
    *v29 = 0;
    v9 = a1[1];
    v10 = a1[2];
    v11 = *(a1 + 24);
    v12 = v10 + 9;
    if (!v11)
    {
      v12 = v10 + 8;
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
          v29[v23++] = v27;
          ++v25;
          ++v24;
        }

        while (v23 != 8);
        v28 = *v29;
      }

      else
      {
        v28 = *(v22 + v10);
        a1[2] = v10 + 8;
      }

      *v29 = v6;
      v29[2] = 0;
      geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, v29, &v29[4]);
      *geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 72, v6) = v28;
      return 1;
    }

    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v13 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *v29 = 136315650;
      *&v29[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v30 = 1024;
      v31 = 514;
      v32 = 2082;
      v33 = "Could not read uint64 property";
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", v29, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v14 = MEMORY[0x1B8C61C80](a6, 514);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " STYL Parse Error Here: ", 24);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Could not read uint64 property", 30);
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
      *v29 = 136315650;
      *&v29[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v30 = 1024;
      v31 = 513;
      v32 = 2082;
      v33 = "Found uint64 property with a strange number of bits.";
      _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", v29, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v18 = MEMORY[0x1B8C61C80](a6, 513);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " STYL Parse Error Here: ", 24);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Found uint64 property with a strange number of bits.", 52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
  }

  return 0;
}

uint64_t std::__function::__value_func<void ()(geo::Mercator2<double>,BOOL)>::~__value_func[abi:nn200100](uint64_t a1)
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

void geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(uint64_t a1, __int16 a2, int a3)
{
  v6 = (2 * a2) | 1;
  v7 = v6 + a2;
  v8 = gss::zone_mallocator::instance(a1);
  v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v8, v7);
  v10 = v9;
  if (*a1)
  {
    v11 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(a1, v9, &v9[v6], a3);
    v12 = *a1;
    v13 = gss::zone_mallocator::instance(v11);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v13, v12);
  }

  *(a1 + 14) = a2;
  *a1 = v10;
  *(a1 + 8) = v6;
}

uint64_t geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(uint64_t a1)
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

  geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1, v3, 0);
  return 1;
}

void geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(uint64_t a1, __int16 a2, int a3)
{
  v6 = ((2 * a2) & 0xFFFC) + 4;
  v7 = v6 + 4 * a2;
  v8 = gss::zone_mallocator::instance(a1);
  v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v8, v7 & 0xFFFC);
  v10 = v9;
  if (*a1)
  {
    v11 = geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(a1, v9, &v9[v6], a3);
    v12 = *a1;
    v13 = gss::zone_mallocator::instance(v11);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v13, v12);
  }

  *(a1 + 14) = a2;
  *a1 = v10;
  *(a1 + 8) = v6;
}

uint64_t geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(uint64_t a1)
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

  geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1, v3, 0);
  return 1;
}

uint64_t gss::fixedPoint6_2Decoder<gss::PropertyID>(uint64_t *a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
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
      *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v6) = vcvts_n_f32_u32(v26, 2uLL);
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
      v30 = 380;
      v31 = 2082;
      v32 = "Could not read fixed point 6.2.";
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v27, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v14 = MEMORY[0x1B8C61C80](a6, 380);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " STYL Parse Error Here: ", 24);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Could not read fixed point 6.2.", 31);
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
      v30 = 379;
      v31 = 2082;
      v32 = "Found fixed point 6.2 property with strange number of bits.";
      _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v27, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v18 = MEMORY[0x1B8C61C80](a6, 379);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " STYL Parse Error Here: ", 24);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Found fixed point 6.2 property with strange number of bits.", 59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
  }

  return 0;
}

uint64_t std::__split_buffer<gss::DashPattern,geo::allocator_adapter<gss::DashPattern,gss::zone_mallocator> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 40);
    *(a1 + 16) = v2 - 40;
    if (v4)
    {
      *(v2 - 32) = v4;
      std::allocator_traits<geo::allocator_adapter<float,gss::zone_mallocator>>::deallocate[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }

  if (*a1)
  {
    std::allocator_traits<geo::allocator_adapter<gss::DashPattern,gss::zone_mallocator>>::deallocate[abi:ne200100](*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<geo::allocator_adapter<gss::DashPattern,gss::zone_mallocator>,gss::DashPattern*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 32) = *(v6 + 32);
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        std::allocator_traits<geo::allocator_adapter<float,gss::zone_mallocator>>::deallocate[abi:ne200100](v7);
      }

      v5 += 40;
    }
  }
}

uint64_t gdc::ServiceLocator::resolve<md::FaultNotificationService>(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (*a1 != 0x4BCD00F88A8100BELL)
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

uint64_t gdc::LayerDataManager::setDuplicateResourceKeyErrorHandler(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v7, a2);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  while (v3 != v4)
  {
    v5 = *(v3 + 8);
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v8, v7);
    (*(*v5 + 104))(v5, v8);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v8);
    v3 += 16;
  }

  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v7);
}

void sub_1B2884E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LayerDataLogic::LayerDataLogic(gdc::LayerDataManager *,md::FaultNotificationService *)::$_0,std::allocator<md::LayerDataLogic::LayerDataLogic(gdc::LayerDataManager *,md::FaultNotificationService *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A27BD0;
  a2[1] = v2;
  return result;
}

uint64_t gss::fixedPoint0to2_55Decoder<gss::PropertyID>(uint64_t *a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
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
      *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v6) = v26 * 0.01;
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
      v30 = 358;
      v31 = 2082;
      v32 = "Could not read fixed point 0 to 2.55.";
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v27, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v14 = MEMORY[0x1B8C61C80](a6, 358);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " STYL Parse Error Here: ", 24);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Could not read fixed point 0 to 2.55.", 37);
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
      v30 = 357;
      v31 = 2082;
      v32 = "Found fixed point 0 to 2.55 property with strange number of bits.";
      _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v27, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v18 = MEMORY[0x1B8C61C80](a6, 357);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " STYL Parse Error Here: ", 24);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Found fixed point 0 to 2.55 property with strange number of bits.", 65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
  }

  return 0;
}

id GEOGetVectorKitNonTiledAssetLogicLog(void)
{
  if (GEOGetVectorKitNonTiledAssetLogicLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitNonTiledAssetLogicLog(void)::onceToken, &__block_literal_global_45069);
  }

  v1 = GEOGetVectorKitNonTiledAssetLogicLog(void)::log;

  return v1;
}

void ___ZL36GEOGetVectorKitNonTiledAssetLogicLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "NonTiledAssetLogic");
  v1 = GEOGetVectorKitNonTiledAssetLogicLog(void)::log;
  GEOGetVectorKitNonTiledAssetLogicLog(void)::log = v0;
}

void md::NonTiledAssetLogic::loadNonTiledIDs(VKResourceManager *)::$_0::operator()(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_19;
  }

  if (([v3 hasName] & 1) == 0)
  {
    v19 = GEOGetVectorKitNonTiledAssetLogicLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p[0]) = 0;
      v20 = "Non-tiled info does not have a name. Skipping";
      v21 = v19;
      v22 = 2;
LABEL_17:
      _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_INFO, v20, __p, v22);
    }

LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  v5 = [v4 name];
  v6 = [v5 cStringUsingEncoding:1];

  if (([v4 hasMuid] & 1) == 0)
  {
    v19 = GEOGetVectorKitNonTiledAssetLogicLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = v6;
      v20 = "Non-tiled info with name %s does not have a muid. Skipping";
      v21 = v19;
      v22 = 12;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v7 = [v4 name];
  v8 = [v7 cStringUsingEncoding:1];

  v9 = [v4 muid];
  std::string::basic_string[abi:nn200100]<0>(__p, v8);
  v10 = v27;
  if ((v27 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v12 = v27;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v11, v12);
  v14 = v13;
  v15 = a2[1];
  if (!*&v15)
  {
    goto LABEL_35;
  }

  v16 = vcnt_s8(v15);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v13;
    if (v13 >= *&v15)
    {
      v18 = v13 % *&v15;
    }
  }

  else
  {
    v18 = (*&v15 - 1) & v13;
  }

  v23 = *(*a2 + 8 * v18);
  if (!v23 || (v24 = *v23) == 0)
  {
LABEL_35:
    operator new();
  }

  while (1)
  {
    v25 = v24[1];
    if (v25 == v14)
    {
      break;
    }

    if (v17 > 1)
    {
      if (v25 >= *&v15)
      {
        v25 %= *&v15;
      }
    }

    else
    {
      v25 &= *&v15 - 1;
    }

    if (v25 != v18)
    {
      goto LABEL_35;
    }

LABEL_34:
    v24 = *v24;
    if (!v24)
    {
      goto LABEL_35;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v24 + 2, __p))
  {
    goto LABEL_34;
  }

  v24[5] = v9;
  if ((v10 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

LABEL_20:
}

void sub_1B2885878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,md::DaVinciGroundSettings::Property>,void *>>>::operator()[abi:nn200100](1, v15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t gss::iconGradientDecoder<gss::PropertyID>(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v58 = *MEMORY[0x1E69E9840];
  if (a3 != 64)
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
      *&buf[14] = 461;
      v56 = 2082;
      v57 = "Found color gradient with strange number of bits.";
      _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v18 = MEMORY[0x1B8C61C80](a6, 461);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " STYL Parse Error Here: ", 24);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Found color gradient with strange number of bits.", 49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
    return 0;
  }

  *buf = 0;
  v7 = a1[1];
  v8 = a1[2];
  v9 = v8 + 4;
  v10 = *(a1 + 24);
  v11 = v10 != 0;
  v12 = v8 + 5;
  if (!v10)
  {
    v12 = v8 + 4;
  }

  if (v7 < v12)
  {
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
      *&buf[14] = 462;
      v56 = 2082;
      v57 = "Could not read first half of color gradient.";
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v14 = MEMORY[0x1B8C61C80](a6, 462);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " STYL Parse Error Here: ", 24);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Could not read first half of color gradient.", 44);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
    return 0;
  }

  v23 = *a1;
  if (*(a1 + 24))
  {
    v24 = 0;
    v25 = 8 - v10;
    v26 = 0xFFFF << (8 - v10);
    v27 = v23 + v8;
    do
    {
      v28 = v8 + v24 + 1;
      if (v28 >= v7)
      {
        v29 = 0;
      }

      else
      {
        v29 = *(v27 + v24 + 1);
      }

      v30 = ((v29 & v26) >> v25) | ((((1 << (8 - v10)) - 1) & *(v27 + v24)) << v10);
      a1[2] = v28;
      buf[v24++] = v30;
    }

    while (v24 != 4);
    v31 = *buf;
    *buf = 0;
    if (v7 >= v8 + 3 + v11 + 5)
    {
      v32 = 0;
      v33 = v8 + 4;
      v34 = v33 + v23;
      do
      {
        v35 = v33 + v32 + 1;
        if (v35 >= v7)
        {
          v36 = 0;
        }

        else
        {
          v36 = *(v34 + v32 + 1);
        }

        v37 = ((v36 & v26) >> v25) | ((((1 << (8 - v10)) - 1) & *(v34 + v32)) << v10);
        a1[2] = v35;
        buf[v32++] = v37;
      }

      while (v32 != 4);
      v38 = *buf;
      goto LABEL_36;
    }

LABEL_30:
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v39 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 463;
      v56 = 2082;
      v57 = "Could not read second half of color gradient.";
      _os_log_impl(&dword_1B2754000, v39, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v40 = MEMORY[0x1B8C61C80](a6, 463);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " STYL Parse Error Here: ", 24);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "Could not read second half of color gradient.", 45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "\n", 1);
    return 0;
  }

  v31 = *(v23 + v8);
  a1[2] = v9;
  if (v7 < v8 + 8 + v11)
  {
    goto LABEL_30;
  }

  v38 = *(v23 + v9);
  a1[2] = v8 + 8;
LABEL_36:
  *buf = 4;
  buf[2] = 0;
  geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, buf, &buf[4]);
  *buf = 5;
  buf[2] = 0;
  geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, buf, &buf[4]);
  v43 = bswap32(v31);
  v44 = vshl_u32(vdup_n_s32(v43), 0xFFFFFFE8FFFFFFF0);
  v45.i16[0] = v43;
  v45.i16[1] = BYTE1(v43);
  v45.i16[2] = v44.u8[0];
  v45.i16[3] = v44.u8[4];
  v52 = vdupq_n_s32(0x3B808081u);
  v53 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v45)), v52);
  geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(buf, &v53);
  geo::_wordColor<float,4,(geo::ColorSpace)0>(&v54, *buf);
  v46 = v54;
  v47 = geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 72, 4u);
  v48 = bswap32(v38);
  *v47 = v46;
  v49 = vshl_u32(vdup_n_s32(v48), 0xFFFFFFE8FFFFFFF0);
  v50.i16[0] = v48;
  v50.i16[1] = BYTE1(v48);
  v50.i16[2] = v49.u8[0];
  v50.i16[3] = v49.u8[4];
  v53 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v50)), v52);
  geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(buf, &v53);
  geo::_wordColor<float,4,(geo::ColorSpace)0>(&v54, *buf);
  v51 = v54;
  *geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 72, 5u) = v51;
  return 1;
}

uint64_t std::__function::__value_func<void ()(geo::Unit<geo::DegreeUnitDescription,double>)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(VKMuninAvailability)>::~__value_func[abi:nn200100](uint64_t a1)
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

void sub_1B2886B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t *a16, void **a17, void **a18)
{
  v21 = *(v18 + 976);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  v22 = *(v18 + 952);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  v23 = *(v18 + 936);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  std::mutex::~mutex((v18 + 864));
  v24 = *(v18 + 856);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  v25 = *a17;
  if (*a17)
  {
    *(v18 + 816) = v25;
    operator delete(v25);
  }

  a18 = (v18 + 560);
  std::vector<md::MuninSceneEvent>::__destroy_vector::operator()[abi:nn200100](&a18);
  std::unique_ptr<md::FadeEffectBlock>::reset[abi:nn200100]((v18 + 552), 0);
  std::unique_ptr<md::FadeEffectBlock>::reset[abi:nn200100]((v18 + 544), 0);
  std::unique_ptr<md::mun::MuninIntersector>::reset[abi:nn200100]((v18 + 536), 0);
  v26 = *(v18 + 528);
  *(v18 + 528) = 0;
  if (v26)
  {
    MEMORY[0x1B8C62190](v26, 0x60C4044C4A2DFLL);
  }

  std::unique_ptr<md::mun::MuninDisplayAnalytic>::reset[abi:nn200100](a16, 0);
  v27 = *a10;
  if (*a10)
  {
    *(v18 + 488) = v27;
    operator delete(v27);
  }

  a18 = a11;
  std::vector<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>::__destroy_vector::operator()[abi:nn200100](&a18);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a12);
  geo::read_write_lock::~read_write_lock((a13 + 24));
  v28 = *a13;
  if (*a13)
  {
    *(v18 + 192) = v28;
    operator delete(v28);
  }

  v29 = *(v18 + 176);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  v30 = *(v18 + 128);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }

  *v18 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v18 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v18 + 80));
  MEMORY[0x1B8C62190](v18, 0x10F1C4095E3365FLL);
  _Unwind_Resume(a1);
}

void gss::PropertySetDefaultStringValue(gss *this)
{
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &gss::PropertySetDefaultStringValue(void)::defaultStringValue, &dword_1B2754000);
  }
}

md::mun::MuninMetadataContainer **std::unique_ptr<md::mun::MuninMetadataContainer>::~unique_ptr[abi:nn200100](md::mun::MuninMetadataContainer **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    md::mun::MuninMetadataContainer::~MuninMetadataContainer(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

std::mutex **std::unique_ptr<md::MuninSceneLogic::ValidState>::~unique_ptr[abi:nn200100](std::mutex **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::mutex::~mutex(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

uint64_t *std::unique_ptr<md::mun::MuninIntersector>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::~__hash_table(v2 + 8);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

double gdc::Sampler::Sampler(gdc::Sampler *this)
{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t *std::unique_ptr<md::mun::MuninDisplayAnalytic>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 64);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t *std::unique_ptr<md::FrameGraphResourceRegistry>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v178 = 0;
    v179 = 0;
    v177 = &v178;
    v3 = *(v2 + 688);
    if (v3)
    {
      v4 = (v2 + 688);
      do
      {
        std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v177, v3);
        v3 = **v4;
        *v4 = v3;
      }

      while (v3);
    }

    v5 = *(v2 + 648);
    v6 = (v2 + 656);
    if (v5 != (v2 + 656))
    {
      do
      {
        free(v5[4]);
        v7 = v5[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v5[2];
            v15 = *v8 == v5;
            v5 = v8;
          }

          while (!v15);
        }

        v5 = v8;
      }

      while (v8 != v6);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 656));
    *(v2 + 648) = v6;
    *(v2 + 656) = 0u;
    *(v2 + 688) = 0;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v178);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 656));
    v178 = 0;
    v179 = 0;
    v177 = &v178;
    v9 = *(v2 + 640);
    if (v9)
    {
      v10 = (v2 + 640);
      do
      {
        std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v177, v9);
        v9 = **v10;
        *v10 = v9;
      }

      while (v9);
      v11 = v179;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v2 + 624);
    v13 = *(v2 + 600);
    v14 = (v2 + 608);
    v15 = v11 == *(v2 + 616) * v12 || v13 == v14;
    if (!v15)
    {
      v16 = *(v2 + 624);
      do
      {
        if (v16)
        {
          v17 = 0;
          v18 = v13[4];
          do
          {
            v19 = (v18 + 312 * v17);
            v20 = v178;
            if (!v178)
            {
              goto LABEL_34;
            }

            v21 = &v178;
            do
            {
              v22 = v20;
              v23 = v21;
              v24 = v20[4];
              if (v24 >= v19)
              {
                v21 = v20;
              }

              v20 = v20[v24 < v19];
            }

            while (v20);
            if (v21 == &v178)
            {
              goto LABEL_34;
            }

            if (v24 < v19)
            {
              v22 = v23;
            }

            if (v19 < v22[4])
            {
LABEL_34:
              ggl::RenderQueue::~RenderQueue(v19);
              v12 = *(v2 + 624);
            }

            ++v17;
            v16 = v12;
          }

          while (v17 < v12);
        }

        v25 = v13[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v13[2];
            v15 = *v26 == v13;
            v13 = v26;
          }

          while (!v15);
        }

        v13 = v26;
      }

      while (v26 != v14);
      v13 = *(v2 + 600);
    }

    if (v13 != v14)
    {
      do
      {
        free(v13[4]);
        v27 = v13[1];
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = v13[2];
            v15 = *v28 == v13;
            v13 = v28;
          }

          while (!v15);
        }

        v13 = v28;
      }

      while (v28 != v14);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 608));
    *(v2 + 600) = v14;
    *(v2 + 608) = 0u;
    *(v2 + 640) = 0;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v178);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 608));
    v29 = *(v2 + 576);
    if (v29)
    {
      *(v2 + 584) = v29;
      operator delete(v29);
    }

    v30 = *(v2 + 552);
    if (v30)
    {
      do
      {
        v31 = *v30;
        operator delete(v30);
        v30 = v31;
      }

      while (v31);
    }

    v32 = *(v2 + 536);
    *(v2 + 536) = 0;
    if (v32)
    {
      operator delete(v32);
    }

    v178 = 0;
    v179 = 0;
    v177 = &v178;
    v33 = *(v2 + 528);
    if (v33)
    {
      v34 = (v2 + 528);
      do
      {
        std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v177, v33);
        v33 = **v34;
        *v34 = v33;
      }

      while (v33);
      v35 = v179;
    }

    else
    {
      v35 = 0;
    }

    v36 = *(v2 + 512);
    v37 = *(v2 + 488);
    v38 = (v2 + 496);
    if (v35 != *(v2 + 504) * v36 && v37 != v38)
    {
      v40 = *(v2 + 512);
      do
      {
        if (v40)
        {
          v41 = 0;
          v42 = v37[4];
          do
          {
            v43 = (v42 + 40 * v41);
            v44 = v178;
            if (!v178)
            {
              goto LABEL_77;
            }

            v45 = &v178;
            do
            {
              v46 = v44;
              v47 = v45;
              v48 = v44[4];
              if (v48 >= v43)
              {
                v45 = v44;
              }

              v44 = v44[v48 < v43];
            }

            while (v44);
            if (v45 == &v178)
            {
              goto LABEL_77;
            }

            if (v48 < v43)
            {
              v46 = v47;
            }

            if (v43 < v46[4])
            {
LABEL_77:
              (**v43)(v43);
              v36 = *(v2 + 512);
            }

            ++v41;
            v40 = v36;
          }

          while (v41 < v36);
        }

        v49 = v37[1];
        if (v49)
        {
          do
          {
            v50 = v49;
            v49 = *v49;
          }

          while (v49);
        }

        else
        {
          do
          {
            v50 = v37[2];
            v15 = *v50 == v37;
            v37 = v50;
          }

          while (!v15);
        }

        v37 = v50;
      }

      while (v50 != v38);
      v37 = *(v2 + 488);
    }

    if (v37 != v38)
    {
      do
      {
        free(v37[4]);
        v51 = v37[1];
        if (v51)
        {
          do
          {
            v52 = v51;
            v51 = *v51;
          }

          while (v51);
        }

        else
        {
          do
          {
            v52 = v37[2];
            v15 = *v52 == v37;
            v37 = v52;
          }

          while (!v15);
        }

        v37 = v52;
      }

      while (v52 != v38);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 496));
    *(v2 + 496) = 0;
    *(v2 + 504) = 0;
    *(v2 + 488) = v38;
    *(v2 + 528) = 0;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v178);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 496));
    v178 = 0;
    v179 = 0;
    v177 = &v178;
    v53 = *(v2 + 480);
    if (v53)
    {
      do
      {
        std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v177, v53);
        v54 = *(v2 + 480);
        v53 = *v54;
        *(v2 + 480) = *v54;
      }

      while (v53);
      v55 = v179;
    }

    else
    {
      v55 = 0;
    }

    v56 = *(v2 + 464);
    v57 = *(v2 + 440);
    v58 = (v2 + 448);
    if (v55 != *(v2 + 456) * v56 && v57 != v58)
    {
      v60 = *(v2 + 464);
      do
      {
        if (v60)
        {
          v61 = 0;
          v62 = v57[4];
          do
          {
            v63 = (v62 + 352 * v61);
            v64 = v178;
            if (!v178)
            {
              goto LABEL_113;
            }

            v65 = &v178;
            do
            {
              v66 = v64;
              v67 = v65;
              v68 = v64[4];
              if (v68 >= v63)
              {
                v65 = v64;
              }

              v64 = v64[v68 < v63];
            }

            while (v64);
            if (v65 == &v178)
            {
              goto LABEL_113;
            }

            if (v68 < v63)
            {
              v66 = v67;
            }

            if (v63 < v66[4])
            {
LABEL_113:
              (**v63)(v63);
              v56 = *(v2 + 464);
            }

            ++v61;
            v60 = v56;
          }

          while (v61 < v56);
        }

        v69 = v57[1];
        if (v69)
        {
          do
          {
            v70 = v69;
            v69 = *v69;
          }

          while (v69);
        }

        else
        {
          do
          {
            v70 = v57[2];
            v15 = *v70 == v57;
            v57 = v70;
          }

          while (!v15);
        }

        v57 = v70;
      }

      while (v70 != v58);
      v57 = *(v2 + 440);
    }

    if (v57 != v58)
    {
      do
      {
        free(v57[4]);
        v71 = v57[1];
        if (v71)
        {
          do
          {
            v72 = v71;
            v71 = *v71;
          }

          while (v71);
        }

        else
        {
          do
          {
            v72 = v57[2];
            v15 = *v72 == v57;
            v57 = v72;
          }

          while (!v15);
        }

        v57 = v72;
      }

      while (v72 != v58);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 448));
    *(v2 + 448) = 0;
    *(v2 + 456) = 0;
    *(v2 + 440) = v58;
    *(v2 + 480) = 0;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v178);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 448));
    v178 = 0;
    v179 = 0;
    v177 = &v178;
    v73 = *(v2 + 432);
    if (v73)
    {
      do
      {
        std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v177, v73);
        v74 = *(v2 + 432);
        v73 = *v74;
        *(v2 + 432) = *v74;
      }

      while (v73);
      v75 = v179;
    }

    else
    {
      v75 = 0;
    }

    v76 = *(v2 + 416);
    v77 = *(v2 + 392);
    v78 = (v2 + 400);
    if (v75 != *(v2 + 408) * v76 && v77 != v78)
    {
      v80 = *(v2 + 416);
      do
      {
        if (v80)
        {
          v81 = 0;
          v82 = v77[4];
          do
          {
            v83 = v82 + 240 * v81;
            v84 = v178;
            if (!v178)
            {
              goto LABEL_149;
            }

            v85 = &v178;
            do
            {
              v86 = v84;
              v87 = v85;
              v88 = v84[4];
              if (v88 >= v83)
              {
                v85 = v84;
              }

              v84 = v84[v88 < v83];
            }

            while (v84);
            if (v85 == &v178)
            {
              goto LABEL_149;
            }

            if (v88 < v83)
            {
              v86 = v87;
            }

            if (v83 < v86[4])
            {
LABEL_149:
              std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v83 + 112));
              std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v83 + 88));
              std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v83 + 64));
              if (*(v83 + 47) < 0)
              {
                operator delete(*(v83 + 24));
              }

              v76 = *(v2 + 416);
            }

            ++v81;
            v80 = v76;
          }

          while (v81 < v76);
        }

        v89 = v77[1];
        if (v89)
        {
          do
          {
            v90 = v89;
            v89 = *v89;
          }

          while (v89);
        }

        else
        {
          do
          {
            v90 = v77[2];
            v15 = *v90 == v77;
            v77 = v90;
          }

          while (!v15);
        }

        v77 = v90;
      }

      while (v90 != v78);
      v77 = *(v2 + 392);
    }

    if (v77 != v78)
    {
      do
      {
        free(v77[4]);
        v91 = v77[1];
        if (v91)
        {
          do
          {
            v92 = v91;
            v91 = *v91;
          }

          while (v91);
        }

        else
        {
          do
          {
            v92 = v77[2];
            v15 = *v92 == v77;
            v77 = v92;
          }

          while (!v15);
        }

        v77 = v92;
      }

      while (v92 != v78);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 400));
    *(v2 + 400) = 0;
    *(v2 + 408) = 0;
    *(v2 + 392) = v78;
    *(v2 + 432) = 0;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v178);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 400));
    v178 = 0;
    v179 = 0;
    v177 = &v178;
    if (*(v2 + 384))
    {
      operator new();
    }

    v93 = *(v2 + 368);
    v94 = *(v2 + 344);
    v95 = (v2 + 352);
    if (*(v2 + 360) * v93)
    {
      v96 = v94 == v95;
    }

    else
    {
      v96 = 1;
    }

    if (!v96)
    {
      v97 = *(v2 + 368);
      do
      {
        if (v97)
        {
          v98 = 0;
          v99 = v94[4];
          do
          {
            v100 = v99 + 136 * v98;
            v101 = v178;
            if (!v178)
            {
              goto LABEL_185;
            }

            v102 = &v178;
            do
            {
              v103 = v101;
              v104 = v102;
              v105 = v101[4];
              if (v105 >= v100)
              {
                v102 = v101;
              }

              v101 = v101[v105 < v100];
            }

            while (v101);
            if (v102 == &v178)
            {
              goto LABEL_185;
            }

            if (v105 < v100)
            {
              v103 = v104;
            }

            if (v100 < v103[4])
            {
LABEL_185:
              std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v100 + 112));
              std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v100 + 88));
              std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v100 + 64));
              if (*(v100 + 47) < 0)
              {
                operator delete(*(v100 + 24));
              }

              v93 = *(v2 + 368);
            }

            ++v98;
            v97 = v93;
          }

          while (v98 < v93);
        }

        v106 = v94[1];
        if (v106)
        {
          do
          {
            v107 = v106;
            v106 = *v106;
          }

          while (v106);
        }

        else
        {
          do
          {
            v107 = v94[2];
            v15 = *v107 == v94;
            v94 = v107;
          }

          while (!v15);
        }

        v94 = v107;
      }

      while (v107 != v95);
      v94 = *(v2 + 344);
    }

    if (v94 != v95)
    {
      do
      {
        free(v94[4]);
        v108 = v94[1];
        if (v108)
        {
          do
          {
            v109 = v108;
            v108 = *v108;
          }

          while (v108);
        }

        else
        {
          do
          {
            v109 = v94[2];
            v15 = *v109 == v94;
            v94 = v109;
          }

          while (!v15);
        }

        v94 = v109;
      }

      while (v109 != v95);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 352));
    *(v2 + 352) = 0;
    *(v2 + 360) = 0;
    *(v2 + 344) = v95;
    *(v2 + 384) = 0;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v178);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 352));
    v178 = 0;
    v179 = 0;
    v177 = &v178;
    v110 = *(v2 + 336);
    if (v110)
    {
      do
      {
        std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v177, v110);
        v111 = *(v2 + 336);
        v110 = *v111;
        *(v2 + 336) = *v111;
      }

      while (v110);
      v112 = v179;
    }

    else
    {
      v112 = 0;
    }

    v113 = *(v2 + 320);
    v114 = *(v2 + 296);
    v115 = (v2 + 304);
    if (v112 != *(v2 + 312) * v113 && v114 != v115)
    {
      v117 = *(v2 + 320);
      do
      {
        if (v117)
        {
          v118 = 0;
          v119 = v114[4];
          do
          {
            v120 = v119 + 144 * v118;
            v121 = v178;
            if (!v178)
            {
              goto LABEL_223;
            }

            v122 = &v178;
            do
            {
              v123 = v121;
              v124 = v122;
              v125 = v121[4];
              if (v125 >= v120)
              {
                v122 = v121;
              }

              v121 = v121[v125 < v120];
            }

            while (v121);
            if (v122 == &v178)
            {
              goto LABEL_223;
            }

            if (v125 < v120)
            {
              v123 = v124;
            }

            if (v120 < v123[4])
            {
LABEL_223:
              std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v120 + 72));
              std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v120 + 48));
              v113 = *(v2 + 320);
            }

            ++v118;
            v117 = v113;
          }

          while (v118 < v113);
        }

        v126 = v114[1];
        if (v126)
        {
          do
          {
            v127 = v126;
            v126 = *v126;
          }

          while (v126);
        }

        else
        {
          do
          {
            v127 = v114[2];
            v15 = *v127 == v114;
            v114 = v127;
          }

          while (!v15);
        }

        v114 = v127;
      }

      while (v127 != v115);
      v114 = *(v2 + 296);
    }

    if (v114 != v115)
    {
      do
      {
        free(v114[4]);
        v128 = v114[1];
        if (v128)
        {
          do
          {
            v129 = v128;
            v128 = *v128;
          }

          while (v128);
        }

        else
        {
          do
          {
            v129 = v114[2];
            v15 = *v129 == v114;
            v114 = v129;
          }

          while (!v15);
        }

        v114 = v129;
      }

      while (v129 != v115);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 304));
    *(v2 + 304) = 0;
    *(v2 + 312) = 0;
    *(v2 + 296) = v115;
    *(v2 + 336) = 0;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v178);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 304));
    v178 = 0;
    v179 = 0;
    v177 = &v178;
    if (*(v2 + 288))
    {
      operator new();
    }

    v130 = *(v2 + 272);
    v131 = *(v2 + 248);
    v132 = (v2 + 256);
    if (*(v2 + 264) * v130)
    {
      v133 = v131 == v132;
    }

    else
    {
      v133 = 1;
    }

    if (!v133)
    {
      v134 = *(v2 + 272);
      do
      {
        if (v134)
        {
          v135 = 0;
          v136 = v131[4];
          do
          {
            v137 = v136 + 104 * v135;
            v138 = v178;
            if (!v178)
            {
              goto LABEL_257;
            }

            v139 = &v178;
            do
            {
              v140 = v138;
              v141 = v139;
              v142 = v138[4];
              if (v142 >= v137)
              {
                v139 = v138;
              }

              v138 = v138[v142 < v137];
            }

            while (v138);
            if (v139 == &v178)
            {
              goto LABEL_257;
            }

            if (v142 < v137)
            {
              v140 = v141;
            }

            if (v137 < v140[4])
            {
LABEL_257:
              std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v137 + 72));
              std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v137 + 48));
              v130 = *(v2 + 272);
            }

            ++v135;
            v134 = v130;
          }

          while (v135 < v130);
        }

        v143 = v131[1];
        if (v143)
        {
          do
          {
            v144 = v143;
            v143 = *v143;
          }

          while (v143);
        }

        else
        {
          do
          {
            v144 = v131[2];
            v15 = *v144 == v131;
            v131 = v144;
          }

          while (!v15);
        }

        v131 = v144;
      }

      while (v144 != v132);
      v131 = *(v2 + 248);
    }

    if (v131 != v132)
    {
      do
      {
        free(v131[4]);
        v145 = v131[1];
        if (v145)
        {
          do
          {
            v146 = v145;
            v145 = *v145;
          }

          while (v145);
        }

        else
        {
          do
          {
            v146 = v131[2];
            v15 = *v146 == v131;
            v131 = v146;
          }

          while (!v15);
        }

        v131 = v146;
      }

      while (v146 != v132);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 256));
    *(v2 + 256) = 0;
    *(v2 + 264) = 0;
    *(v2 + 248) = v132;
    *(v2 + 288) = 0;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v178);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 256));
    v178 = 0;
    v179 = 0;
    v177 = &v178;
    v148 = (v2 + 240);
    v147 = *(v2 + 240);
    if (v147)
    {
      do
      {
        std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v177, v147);
        v147 = **v148;
        *v148 = v147;
      }

      while (v147);
      v149 = v179;
    }

    else
    {
      v149 = 0;
    }

    v150 = *(v2 + 224);
    v151 = *(v2 + 200);
    v152 = (v2 + 208);
    if (v149 != *(v2 + 216) * v150 && v151 != v152)
    {
      v154 = *(v2 + 224);
      do
      {
        if (v154)
        {
          v155 = 0;
          v156 = v151[4];
          do
          {
            v157 = (v156 + 360 * v155);
            v158 = v178;
            if (!v178)
            {
              goto LABEL_293;
            }

            v159 = &v178;
            do
            {
              v160 = v158;
              v161 = v159;
              v162 = v158[4];
              if (v162 >= v157)
              {
                v159 = v158;
              }

              v158 = v158[v162 < v157];
            }

            while (v158);
            if (v159 == &v178)
            {
              goto LABEL_293;
            }

            if (v162 < v157)
            {
              v160 = v161;
            }

            if (v157 < v160[4])
            {
LABEL_293:
              (**v157)(v157);
              v150 = *(v2 + 224);
            }

            ++v155;
            v154 = v150;
          }

          while (v155 < v150);
        }

        v163 = v151[1];
        if (v163)
        {
          do
          {
            v164 = v163;
            v163 = *v163;
          }

          while (v163);
        }

        else
        {
          do
          {
            v164 = v151[2];
            v15 = *v164 == v151;
            v151 = v164;
          }

          while (!v15);
        }

        v151 = v164;
      }

      while (v164 != v152);
      v151 = *(v2 + 200);
    }

    if (v151 != v152)
    {
      do
      {
        free(v151[4]);
        v165 = v151[1];
        if (v165)
        {
          do
          {
            v166 = v165;
            v165 = *v165;
          }

          while (v165);
        }

        else
        {
          do
          {
            v166 = v151[2];
            v15 = *v166 == v151;
            v151 = v166;
          }

          while (!v15);
        }

        v151 = v166;
      }

      while (v166 != v152);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 208));
    *(v2 + 208) = 0;
    *(v2 + 216) = 0;
    *(v2 + 200) = v152;
    *(v2 + 240) = 0;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v178);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 208));
    v167 = *(v2 + 176);
    if (v167)
    {
      *(v2 + 184) = v167;
      operator delete(v167);
    }

    v168 = *(v2 + 152);
    if (v168)
    {
      do
      {
        v169 = *v168;
        operator delete(v168);
        v168 = v169;
      }

      while (v169);
    }

    v170 = *(v2 + 136);
    *(v2 + 136) = 0;
    if (v170)
    {
      operator delete(v170);
    }

    v171 = *(v2 + 120);
    if (v171)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v171);
    }

    v172 = *(v2 + 104);
    if (v172)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v172);
    }

    v173 = *(v2 + 88);
    if (v173)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v173);
    }

    v174 = *(v2 + 16);
    if (v174)
    {
      do
      {
        v175 = *v174;
        v177 = (v174 + 64);
        std::vector<std::unique_ptr<md::FrameGraphResourceRegistry::ResourceHolder>>::__destroy_vector::operator()[abi:nn200100](&v177);
        operator delete(v174);
        v174 = v175;
      }

      while (v175);
    }

    v176 = *v2;
    *v2 = 0;
    if (v176)
    {
      operator delete(v176);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void ggl::SolidTraffic::BasePipelineSetup::typedReflection(ggl::SolidTraffic::BasePipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::TrafficBase::DefaultVbo>::typedReflection();
    ggl::SolidTraffic::BasePipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::TrafficBase::DefaultVbo>::typedReflection(void)::r;
    unk_1ED670360 = &ggl::SolidTraffic::pipelineDataBasePipelineDeviceStructs(void)::ref;
    qword_1ED670368 = 0;
    {
      ggl::SolidTraffic::pipelineDataBasePipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1ED66D958 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED66D960 = ggl::TrafficBase::Style::reflection(void)::reflection;
    }

    qword_1ED670370 = &ggl::SolidTraffic::pipelineDataBasePipelineConstantStructs(void)::ref;
    unk_1ED670378 = xmmword_1B33B07A0;
  }
}

void ggl::MeshTyped<ggl::TrafficBase::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::TrafficBase::DefaultVbo>::attributesReflection(void)::r = &ggl::TrafficBase::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::TrafficBase::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::TrafficBase::DefaultVbo>::attributesReflection(void)::r;
    unk_1ED66A608 = 1;
  }
}

void ggl::SolidTraffic::BaseMaskedPipelineSetup::typedReflection(ggl::SolidTraffic::BaseMaskedPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::TrafficBase::DefaultVbo>::typedReflection();
    ggl::SolidTraffic::BaseMaskedPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::TrafficBase::DefaultVbo>::typedReflection(void)::r;
    unk_1ED66D970 = &ggl::SolidTraffic::pipelineDataBaseMaskedPipelineDeviceStructs(void)::ref;
    qword_1ED66D978 = 0;
    {
      ggl::SolidTraffic::pipelineDataBaseMaskedPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1ED66D938 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED66D940 = ggl::TrafficBase::Style::reflection(void)::reflection;
    }

    qword_1ED66D980 = &ggl::SolidTraffic::pipelineDataBaseMaskedPipelineConstantStructs(void)::ref;
    unk_1ED66D988 = xmmword_1B33B07A0;
  }
}

void ggl::TrafficGlow::BasePipelineSetup::typedReflection(ggl::TrafficGlow::BasePipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::TrafficBase::DefaultVbo>::typedReflection();
    ggl::TrafficGlow::BasePipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::TrafficBase::DefaultVbo>::typedReflection(void)::r;
    unk_1ED66DB30 = &ggl::TrafficGlow::pipelineDataBasePipelineDeviceStructs(void)::ref;
    qword_1ED66DB38 = 0;
    {
      ggl::TrafficGlow::pipelineDataBasePipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1ED66DB18 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED66DB20 = ggl::TrafficGlow::Style::reflection(void)::reflection;
    }

    qword_1ED66DB40 = &ggl::TrafficGlow::pipelineDataBasePipelineConstantStructs(void)::ref;
    *algn_1ED66DB48 = xmmword_1B33B0910;
  }
}

void ggl::MeshTyped<ggl::OptimizedTraffic::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::OptimizedTraffic::DefaultVbo>::attributesReflection(void)::r = &ggl::OptimizedTraffic::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::OptimizedTraffic::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::OptimizedTraffic::DefaultVbo>::attributesReflection(void)::r;
    unk_1ED66A500 = 1;
  }
}

void ggl::OptimizedTraffic::BasePipelineSetup::typedReflection(ggl::OptimizedTraffic::BasePipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::OptimizedTraffic::DefaultVbo>::typedReflection();
    ggl::OptimizedTraffic::BasePipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::OptimizedTraffic::DefaultVbo>::typedReflection(void)::r;
    *algn_1ED66D448 = &ggl::OptimizedTraffic::pipelineDataBasePipelineDeviceStructs(void)::ref;
    qword_1ED66D450 = 0;
    {
      ggl::OptimizedTraffic::pipelineDataBasePipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      unk_1ED66D430 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED66D438 = ggl::OptimizedTraffic::Style::reflection(void)::reflection;
    }

    qword_1ED66D458 = &ggl::OptimizedTraffic::pipelineDataBasePipelineConstantStructs(void)::ref;
    unk_1ED66D460 = xmmword_1B33B0910;
  }
}

uint64_t md::PolylinePipelineStateManager<md::Ribbons::PolylineOverlayRibbonDescriptor,ggl::PolylineOverlayRibbon::AlphaFillPipelineState,std::shared_ptr<ggl::PolylineOverlayAlphaFillShader>>::PolylinePipelineStateManager(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, _OWORD *a4, __int128 *a5)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *a5;
    v11 = a5[1];
    *a1 = a2;
    *(a1 + 8) = a3;
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v10 = *a5;
    v11 = a5[1];
    *a1 = a2;
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  v8 = a4[1];
  v7 = a4[2];
  *(a1 + 48) = *a4;
  *(a1 + 64) = v8;
  *(a1 + 80) = v7;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = a1 + 104;
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(0);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  return a1;
}

uint64_t *std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*(v2 + 104));
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void *std::unique_ptr<md::TrafficSharedResources>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[14];
    v2[14] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v2[13];
    v2[13] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v2[12];
    v2[12] = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v2[11];
    v2[11] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v2[10];
    v2[10] = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v2[9];
    v2[9] = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v2[8];
    v2[8] = 0;
    if (v9)
    {
      std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*(v9 + 104));
      v10 = *(v9 + 8);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }

      MEMORY[0x1B8C62190](v9, 0x1020C40AD78EA61);
    }

    v11 = v2[7];
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    v12 = v2[5];
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    v13 = v2[3];
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v14 = v2[1];
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t *std::unique_ptr<md::MapDataAccess>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t md::LayoutContext::LayoutContext(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = a3;
  *(a1 + 8) = a5;
  *(a1 + 16) = a10;
  *(a1 + 24) = a8;
  v18 = a4[1];
  *(a1 + 32) = *a4;
  *(a1 + 40) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 96) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = a6;
  *(a1 + 752) = a11;
  *(a1 + 80) = a2;
  *(a1 + 88) = a9;
  *(a1 + 72) = a7;
  return a1;
}

uint64_t *std::unique_ptr<md::LayoutContext>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    ggl::Loader::~Loader((v2 + 48));
    v3 = *(v2 + 40);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t *std::unique_ptr<md::CameraStore>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::deque<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::~deque[abi:nn200100](v2);
    MEMORY[0x1B8C62190](v3, 0x1080C40DF4F424FLL);
  }

  return a1;
}

uint64_t md::MapEngine::updateForConfigurationAndMode(md::MapEngine *this, double a2)
{
  v132 = *MEMORY[0x1E69E9840];
  v4 = this + 41672;
  v5 = *(this + 5258);
  v6 = *(this + 5234);
  v7 = gdc::Camera::cameraFrame(v6);
  if (*(v5 + 88) != 1)
  {
    goto LABEL_43;
  }

  v8 = v7;
  v9 = *(v4 + 33);
  v10 = *v9;
  v11 = v9[1];
  if (*v9 == v11)
  {
    goto LABEL_6;
  }

  v12 = *v9;
  while (*v12 != 29)
  {
    v12 += 16;
    if (v12 == v11)
    {
      goto LABEL_6;
    }
  }

  if (v12 == v11)
  {
LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  v13 = *(v12 + 8);
LABEL_7:
  while (v10 != v11)
  {
    if (*v10 == 20)
    {
      if (v10 != v11)
      {
        v14 = *(v10 + 8);
        goto LABEL_13;
      }

      break;
    }

    v10 += 16;
  }

  v14 = 0;
LABEL_13:
  v15 = *v7;
  *(v5 + 32) = *(v7 + 16);
  *(v5 + 16) = v15;
  v17 = *v9;
  v16 = v9[1];
  while (v17 != v16)
  {
    if (*v17 == 38)
    {
      if (v17 != v16)
      {
        v124 = *(v17 + 8) != 0;
        goto LABEL_20;
      }

      break;
    }

    v17 += 16;
  }

  v124 = 0;
LABEL_20:
  v18 = +[VKDebugSettings sharedSettings];
  v19 = [v18 daVinciForceElevatedGround];

  if (v14 > 8 || ((1 << v14) & 0x121) == 0)
  {
    *(v5 + 42) = 0;
    *(v5 + 40) = 0;
    if (*(v5 + 92) != v14)
    {
      md::DaVinciTransitionManager::_setResourcesToUseLowZoom(*(v5 + 8), 0);
      *(v5 + 92) = v14;
    }

    goto LABEL_43;
  }

  *(v5 + 92) = v14;
  if ((*(v5 + 112) & ((v13 & 0xFFFFFFFFFFFFFFFDLL) == 1)) != 0)
  {
    v13 = 2;
  }

  if (v14 == 5 && !v124)
  {
    v20 = *v8;
    *(v5 + 32) = *(v8 + 16);
    *(v5 + 16) = v20;
  }

  *(v5 + 86) = *(v5 + 80);
  *(v5 + 87) = *(v5 + 41);
  v21 = *v6;
  v22 = +[VKDebugSettings sharedSettings];
  v23 = [v22 shouldFreezeLayoutCamera];

  if ((v23 & 1) == 0)
  {
    if (!v13)
    {
LABEL_141:
      *(v5 + 40) = 0;
      goto LABEL_142;
    }

    if (v19)
    {
LABEL_31:
      *(v5 + 40) = 1;
LABEL_142:
      *(v5 + 42) = 0;
      goto LABEL_27;
    }

    v85 = *(v5 + 8);
    v86 = 512;
    if (v85)
    {
      v87 = gdc::ResourceManager::resourceFetcher(*(v85 + 32), *(v85 + 40), 27);
      v88 = (*(*v87 + 72))(v87);
      if ((v88 & 0x100000000) != 0)
      {
        v86 = v88;
      }

      else
      {
        v86 = 512;
      }
    }

    *(v5 + 44) = 0;
    if ((v21 - 1) >= 3)
    {
      if (v21)
      {
        *(v5 + 43) = 0;
LABEL_140:
        if (v13 != 2)
        {
          v110 = *v5;
          if (!*v5)
          {
            goto LABEL_174;
          }

          v123 = *(v5 + 24);
          v111 = tan(*(v5 + 16) * 0.5 + 0.785398163);
          v112 = log(v111);
          *&v113.f64[0] = v123;
          v113.f64[1] = v112;
          __asm { FMOV            V1.2D, #0.5 }

          *buf = vmlaq_f64(_Q1, vdupq_n_s64(0x3FC45F306DC9C883uLL), v113);
          v119 = md::DaVinciGroundMetaData::flagsForPoint(v110, buf);
          if (v119 >= 0x100u)
          {
            *(v5 + 41) = 257;
            *(v5 + 40) = (v119 & 2) != 0;
            *(v5 + 43) = (v119 & 2) != 0;
            *(v5 + 45) = v119;
          }

          else
          {
LABEL_174:
            *(v5 + 42) = 1;
            *(v5 + 40) = 0;
          }

          goto LABEL_27;
        }

        goto LABEL_141;
      }

      v92 = gdc::NonFlatTileSelector::depthForTileZ(v6, v86, v24, v25) * 40075017.0;
    }

    else
    {
      v89 = +[VKDebugSettings sharedSettings];
      v90 = [v89 daVinciCameraController];
      v92 = gdc::GlobeTileSelector::depthForTileZ(v6, v86, (v90 ^ 1u), v91);
    }

    v93 = grl::IconMetricsRenderResult::size(v6);
    v94 = *v93 <= v92;
    *(v5 + 44) = *v93 > v92;
    *(v5 + 43) = 0;
    if (!v94)
    {
      goto LABEL_31;
    }

    goto LABEL_140;
  }

LABEL_27:
  v26 = *(v5 + 81);
  v27 = *(v5 + 192);
  v28 = v27 > 0.0 && *(gdc::Camera::cameraFrame(v6) + 32) * 57.2957795 <= v27;
  v29 = *(v5 + 42) == 1 && *(v5 + 87) != *(v5 + 41);
  if (!v13)
  {
    *(v5 + 80) = *(v5 + 40);
    *(v5 + 48) = 0;
    md::DaVinciTransitionManager::_setResourcesToUseLowZoom(*(v5 + 8), 0);
    *(v5 + 82) = 0;
    goto LABEL_42;
  }

  if (!v19)
  {
    if (v28 | v26 ^ 1 | v29)
    {
      v83 = *(v5 + 40);
      *(v5 + 80) = v83;
      v84 = 0.0;
      if (v83)
      {
        v84 = 1.0;
      }

      *(v5 + 72) = v84;
      *(v5 + 48) = v84;
      md::DaVinciTransitionManager::_setResourcesToUseLowZoom(*(v5 + 8), (*(v5 + 43) & 1) == 0);
      *(v5 + 82) = *(v5 + 43);
      *(v5 + 76) = 0;
      *(v5 + 72) = *(v5 + 48);
      goto LABEL_43;
    }

    v95 = +[VKDebugSettings sharedSettings];
    [v95 daVinciTransitionDuration];
    v97 = v96;
    if (*(v5 + 86))
    {
      v98 = 1.0;
    }

    else
    {
      v98 = 0.0;
    }

    v99 = *(v5 + 40);
    if (v99 == *(v5 + 84))
    {
      v100 = *(v5 + 64);
LABEL_158:
      if (v100 <= a2)
      {
        if (v99)
        {
          v98 = 1.0;
        }

        else
        {
          v98 = 0.0;
        }

        *(v5 + 85) |= v99;
      }

      v104 = *(v5 + 76);
      if (v104)
      {
        v105 = a2 - *(v5 + 56);
        v106 = fminf(fmaxf(v105 / v97, 0.0), 1.0);
        v107 = 1.0 - v106;
        if (v104 >= 0)
        {
          v107 = v106;
        }

        *(v5 + 72) = v107;
        if (v106 >= 1.0)
        {
          *(v5 + 76) = 0;
        }
      }

      else
      {
        v120 = *(v5 + 72);
        if (v120 != v98)
        {
          v121 = *(v5 + 82);
          if (v120 < v98)
          {
            v122 = 1;
          }

          else
          {
            v122 = -1;
          }

          *(v5 + 76) = v122;
          *(v5 + 56) = a2;
          *(v5 + 83) = v121;
        }
      }

      if (*(v5 + 83))
      {
        v108 = 0;
      }

      else
      {
        v108 = *(v5 + 43) ^ 1;
      }

      md::DaVinciTransitionManager::_setResourcesToUseLowZoom(*(v5 + 8), v108 & 1);
      v109 = *(v5 + 72);
      *(v5 + 48) = v109;
      *(v5 + 80) = v109 > 0.0;
      *(v5 + 82) = *(v5 + 43);

      goto LABEL_43;
    }

    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v101 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
    {
      v102 = *(v5 + 84);
      v103 = *(v5 + 40);
      *buf = 67109376;
      *&buf[4] = v102;
      *&buf[8] = 1024;
      *&buf[10] = v103;
      _os_log_impl(&dword_1B2754000, v101, OS_LOG_TYPE_INFO, "DaVinciTransitionManager: transition delay timer reset. Transition from %d to %d", buf, 0xEu);
    }

    v100 = a2 + 30.0;
    *(v5 + 64) = a2 + 30.0;
    if (v14 != 5 || (*(v5 + 85) & 1) == 0 || v124)
    {
      LOBYTE(v99) = *(v5 + 40);
    }

    else
    {
      LOBYTE(v99) = *(v5 + 40);
      if (*(v5 + 44) & 1) == 0 && (*(v5 + 40))
      {
        goto LABEL_157;
      }
    }

    *(v5 + 64) = a2;
    v100 = a2;
LABEL_157:
    *(v5 + 84) = v99;
    goto LABEL_158;
  }

  *(v5 + 80) = *(v5 + 40);
  *(v5 + 48) = 1065353216;
  md::DaVinciTransitionManager::_setResourcesToUseLowZoom(*(v5 + 8), 0);
LABEL_42:
  *(v5 + 76) = 0;
LABEL_43:
  v30 = *(v4 + 33);
  v31 = *v30;
  v32 = v30[1];
  if (*v30 == v32)
  {
    goto LABEL_47;
  }

  v33 = *v30;
  while (*v33 != 20)
  {
    v33 += 16;
    if (v33 == v32)
    {
      goto LABEL_47;
    }
  }

  if (v33 == v32)
  {
LABEL_47:
    v34 = 0;
    goto LABEL_48;
  }

  v34 = *(v33 + 8);
LABEL_48:
  while (v31 != v32)
  {
    if (*v31 == 22)
    {
      if (v31 != v32)
      {
        v35 = *(v31 + 8) != 0;
        goto LABEL_54;
      }

      break;
    }

    v31 += 16;
  }

  v35 = 0;
LABEL_54:
  v36 = (this + 47336);
  if (v34 - 1 <= 3 && (v34 - 3 < 2 || v35))
  {
    *(*(v4 + 4) + 385) = 1;
    v37 = 2;
  }

  else
  {
    *(*(v4 + 4) + 385) = 0;
    if (v35)
    {
      v38 = 2;
    }

    else
    {
      v38 = 0;
    }

    if (v34 == 10)
    {
      v39 = 1;
    }

    else
    {
      v39 = 3;
    }

    if (((1 << v34) & 0x1E7) == 0)
    {
      v38 = v39;
    }

    if (v34 <= 0xA)
    {
      v37 = v38;
    }

    else
    {
      v37 = 3;
    }
  }

  v40 = *(v4 + 43);
  if (!v40 || v37 != v40[8])
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v41 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = gdc::ServiceLocator::resolve<md::MapEngineLogger>(**v36, (*v36)[1]);
      v43 = (*(*v42 + 16))(v42);
      v44 = *(v4 + 43);
      if (v44)
      {
        v45 = *(v44 + 8);
        if (v45 > 3)
        {
          v46 = "<Invalid>";
        }

        else
        {
          v46 = off_1E7B3E278[v45];
        }
      }

      else
      {
        v46 = "None";
      }

      v47 = off_1E7B3E278[v37];
      *buf = 136315650;
      *&buf[4] = v43;
      *&buf[12] = 2080;
      *&buf[14] = v46;
      v128 = 2080;
      v129 = v47;
      _os_log_impl(&dword_1B2754000, v41, OS_LOG_TYPE_INFO, "%s Transitioning configuration from '%s' to '%s'", buf, 0x20u);
    }

    v48 = *(v4 + 44);
    if (v48)
    {
      (*(*v48 + 48))(v48, this, this, *(v4 + 33));
      v49 = *(v4 + 44);
      *(v4 + 44) = 0;
      if (v49)
      {
        (*(*v49 + 8))(v49);
      }
    }

    v50 = *(v4 + 43);
    if (v50)
    {
      (*(*v50 + 48))(v50, this, this, *(v4 + 33));
    }

    md::configurationForConfigurationType(&v126, v37);
  }

  v51 = (*(*v40 + 72))(v40, this);
  v52 = (*(**(v4 + 43) + 88))(*(v4 + 43), this);
  v53 = v52;
  v60 = *(v4 + 44);
  if (!v60 || (*(v60 + 48) != v51) | v52 & 1)
  {
    (*(**(v4 + 43) + 80))(&v125);
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v54 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = gdc::ServiceLocator::resolve<md::MapEngineLogger>(**v36, (*v36)[1]);
      v56 = (*(*v55 + 16))(v55);
      v57 = *(v4 + 44);
      if (v57)
      {
        v58 = *(v57 + 48);
        if (v58 > 0x11)
        {
          v59 = "<Invalid>";
        }

        else
        {
          v59 = off_1E7B38AA0[v58];
        }
      }

      else
      {
        v59 = "None";
      }

      v61 = *(v125 + 48);
      if (v61 > 0x11)
      {
        v62 = "<Invalid>";
      }

      else
      {
        v62 = off_1E7B38AA0[v61];
      }

      v63 = "NO";
      *buf = 136315906;
      *&buf[4] = v56;
      *&buf[12] = 2080;
      if (v53)
      {
        v63 = "YES";
      }

      *&buf[14] = v59;
      v128 = 2080;
      v129 = v62;
      v130 = 2080;
      v131 = v63;
      _os_log_impl(&dword_1B2754000, v54, OS_LOG_TYPE_INFO, "%s Transitioning mode from '%s' to '%s' (force:%s)", buf, 0x2Au);
    }

    v64 = gdc::ServiceLocator::resolve<md::PowerLoggingService>(**v36, (*v36)[1]);
    if (v64)
    {
      v65 = *(v4 + 44);
      if (v65)
      {
        v65 = *(v65 + 48);
        v66 = 256;
      }

      else
      {
        v66 = 0;
      }

      (**v64)(v64, v66 | v65, *(v125 + 48));
    }

    v67 = *(v4 + 44);
    if (v67)
    {
      (*(*v67 + 48))(v67, this, this, *(v4 + 33));
      v68 = *(v4 + 44);
      v69 = v125;
      *&v125 = 0;
      *(v4 + 44) = v69;
      if (v68)
      {
        (*(*v68 + 8))(v68);
      }
    }

    else
    {
      v82 = v125;
      *&v125 = 0;
      *(v4 + 44) = v82;
    }

    v70 = gdc::ServiceLocator::resolve<RendererPassListProviderWrapper>(**v36, (*v36)[1]);
    v71 = *(v4 + 44);
    *(v70 + 16) = *(v71 + 48);
    gdc::Camera::setCameraType(*(v4 + 25), *(v71 + 224));
    v72 = *(v4 + 44);
    v73 = *(v4 + 25);
    if (*(v72 + 48) == 17)
    {
      gdc::Camera::setWidestFieldOfView(v73, *(v72 + 56));
    }

    else
    {
      *buf = 0x3FE0C152382D7365;
      gdc::Camera::setVerticalFieldOfView(v73, buf);
    }

    md::MapEngine::updateSettings(this, 1);
    (*(**(v4 + 44) + 40))(*(v4 + 44), this, this, *(v4 + 33));
    if (*(this + 47496) == 1)
    {
      md::MapEngine::updateLogicsFrequency(this, kVariableLogicFrequency, *(*(v4 + 27) + 8), kVariableLogicFrequency, 1u, 1);
    }

    WeakRetained = objc_loadWeakRetained(this + 5208);
    [WeakRetained snapMapAfterModeChange];

    v75 = *(v4 + 32);
    if (*(v75 + 200) >= 2uLL)
    {
      *(v75 + 200) = 1;
    }

    v76 = **(this + 26);
    if (v76)
    {
      buf[0] = 11;
      md::MapEngine::setNeedsTick(v76, buf);
    }

    v77 = v125;
    *&v125 = 0;
    if (v77)
    {
      (*(*v77 + 8))(v77);
    }
  }

  result = md::MapEngine::updateSettings(this, 0);
  v79 = *(v4 + 5);
  v80 = *(v4 + 44);
  v81 = *(v80 + 225);
  LOBYTE(v80) = *(v80 + 224);
  *(v79 + 8) = v81;
  *(v79 + 9) = v80;
  return result;
}