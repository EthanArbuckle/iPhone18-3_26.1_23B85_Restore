void sub_25F95EB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a19);
  _Unwind_Resume(a1);
}

void PVFrameStatsDescription::GetStringForStatsPMR(PVFrameStatsDescription *this, const PVPerfStats::FrameStats *a2, const PVPerfStats::FrameStats *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v37[2] = xmmword_279AA5940;
  v37[3] = *&off_279AA5950;
  v37[4] = xmmword_279AA5960;
  v38 = @"Frame Time Delta";
  v37[0] = xmmword_279AA5920;
  v37[1] = *&off_279AA5930;
  v35[2] = xmmword_279AA5998;
  v35[3] = *&off_279AA59A8;
  v35[4] = xmmword_279AA59B8;
  v36 = @"Difference in elapsed time between current and previous frame";
  v35[0] = xmmword_279AA5978;
  v35[1] = *&off_279AA5988;
  v28 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v28 setDateFormat:@"yyyy-MM-dd 'at' HH:mm:ss"];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v28 stringFromDate:v4];

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v29);
  for (i = 0; i != 11; ++i)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "<Measurement ", 13);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "key=", 5);
    v8 = [*(v37 + i) UTF8String];
    v9 = strlen(v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " ", 2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "value=", 7);
    ValueForIndex = PVPerfStats::FrameStats::GetValueForIndex(a2, i);
    v13 = MEMORY[0x2666E9B30](v11, ValueForIndex * 1000.0);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " ", 2);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "comment=", 9);
    v15 = [*(v35 + i) UTF8String];
    v16 = strlen(v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " for frame ", 11);
    v19 = MEMORY[0x2666E9B60](v18, *(a2 + 1));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " ", 2);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "timestamp=", 11);
    v21 = v5;
    v22 = [v5 UTF8String];
    v23 = strlen(v22);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "/>\n", 4);
  }

  std::stringbuf::str();
  v29[0] = *MEMORY[0x277D82818];
  v25 = *(MEMORY[0x277D82818] + 72);
  *(v29 + *(v29[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v30 = v25;
  v31 = MEMORY[0x277D82878] + 16;
  if (v33 < 0)
  {
    operator delete(v32[7].__locale_);
  }

  v31 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v32);
  std::iostream::~basic_iostream();
  MEMORY[0x2666E9E10](&v34);

  for (j = 80; j != -8; j -= 8)
  {
  }

  for (k = 80; k != -8; k -= 8)
  {
  }
}

void sub_25F95F060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a12);

  for (i = 80; i != -8; i -= 8)
  {
  }

  for (j = 80; j != -8; j -= 8)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2666E9E10](a1 + 128);
  return a1;
}

void PVLivePlayerStatsDescription::GetStringForLabels(_BYTE *a1@<X8>, int a2@<W1>)
{
  if (a2 == 1)
  {
    PVLivePlayerStatsDescription::GetStringForLabelsJSON(a1);
  }

  else
  {
    if (a2)
    {
      v2 = "";
    }

    else
    {
      v2 = " Num | Get Sources | Build Render Request | Run Render Request | Complete Render Request | Total Time";
    }

    std::string::basic_string[abi:ne200100]<0>(a1, v2);
  }
}

void PVLivePlayerStatsDescription::GetStringForLabelsJSON(_BYTE *a1@<X8>)
{
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"Num", @"Get Sources", @"Build Render Request", @"Run Render Request", @"Complete Render Request", @"Total Time", 0}];
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:4 error:&v7];
  v5 = v7;
  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
    std::string::basic_string[abi:ne200100]<0>(a1, [v6 UTF8String]);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, "");
  }
}

void PVLivePlayerStatsDescription::GetStringForStats(PVPerfStats::FrameStats *a1@<X2>, PVLivePlayerStatsDescription *a2@<X0>, int a3@<W1>, _BYTE *a4@<X8>)
{
  if (a3 == 2)
  {
    PVLivePlayerStatsDescription::GetStringForStatsPMR(a2, a1, a1);
  }

  else if (a3 == 1)
  {
    PVLivePlayerStatsDescription::GetStringForStatsJSON(a2, a1, a1);
  }

  else if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(a4, "");
  }

  else
  {
    PVLivePlayerStatsDescription::GetStringForStatsTEXT(a2, a1, a1);
  }
}

uint64_t PVLivePlayerStatsDescription::GetStringForStatsTEXT(PVLivePlayerStatsDescription *this, const PVPerfStats::FrameStats *a2, const PVPerfStats::FrameStats *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v22);
  v4 = v23;
  *(&v25[1].__locale_ + *(v23 - 24)) = 4;
  *(&v25[0].__locale_ + *(v4 - 24)) = 0;
  v5 = MEMORY[0x2666E9B60](&v23, *(a2 + 1));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " | ", 3);
  v6 = v23;
  *(&v25[1].__locale_ + *(v23 - 24)) = 11;
  *(&v25[0].__locale_ + *(v6 - 24)) = 3;
  ValueForIndex = PVPerfStats::FrameStats::GetValueForIndex(a2, 0);
  v8 = MEMORY[0x2666E9B30](&v23, ValueForIndex * 1000.0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " | ", 3);
  v9 = v23;
  *(&v25[1].__locale_ + *(v23 - 24)) = 20;
  *(&v25[0].__locale_ + *(v9 - 24)) = 3;
  v10 = PVPerfStats::FrameStats::GetValueForIndex(a2, 1u);
  v11 = MEMORY[0x2666E9B30](&v23, v10 * 1000.0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " | ", 3);
  v12 = v23;
  *(&v25[1].__locale_ + *(v23 - 24)) = 18;
  *(&v25[0].__locale_ + *(v12 - 24)) = 3;
  v13 = PVPerfStats::FrameStats::GetValueForIndex(a2, 2u);
  v14 = MEMORY[0x2666E9B30](&v23, v13 * 1000.0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " | ", 3);
  v15 = v23;
  *(&v25[1].__locale_ + *(v23 - 24)) = 23;
  *(&v25[0].__locale_ + *(v15 - 24)) = 3;
  v16 = PVPerfStats::FrameStats::GetValueForIndex(a2, 3u);
  v17 = MEMORY[0x2666E9B30](&v23, v16 * 1000.0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " | ", 3);
  v18 = v23;
  *(&v25[1].__locale_ + *(v23 - 24)) = 10;
  *(&v25[0].__locale_ + *(v18 - 24)) = 3;
  v19 = PVPerfStats::FrameStats::GetValueForIndex(a2, 4u);
  MEMORY[0x2666E9B30](&v23, v19 * 1000.0);
  std::stringbuf::str();
  v22[0] = *MEMORY[0x277D82818];
  v20 = *(MEMORY[0x277D82818] + 72);
  *(v22 + *(v22[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v23 = v20;
  v24 = MEMORY[0x277D82878] + 16;
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  v24 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v25);
  std::iostream::~basic_iostream();
  return MEMORY[0x2666E9E10](&v27);
}

void sub_25F95F890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t PVLivePlayerStatsDescription::GetStringForStatsJSON(PVLivePlayerStatsDescription *this, const PVPerfStats::FrameStats *a2, const PVPerfStats::FrameStats *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "[", 1);
  v5 = MEMORY[0x2666E9B60](v4, *(a2 + 1));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", ", 2);
  for (i = 0; i != 10; ++i)
  {
    ValueForIndex = PVPerfStats::FrameStats::GetValueForIndex(a2, i);
    formatValue(ValueForIndex * 1000.0, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, p_p, size);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", ", 2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v11 = PVPerfStats::FrameStats::GetValueForIndex(a2, 0xAu);
  formatValue(v11 * 1000.0, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &__p;
  }

  else
  {
    v12 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = __p.__r_.__value_.__l.__size_;
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, v12, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "]", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str();
  v18[0] = *MEMORY[0x277D82818];
  v15 = *(MEMORY[0x277D82818] + 72);
  *(v18 + *(v18[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v19 = v15;
  v20 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return MEMORY[0x2666E9E10](&v23);
}

void sub_25F95FB50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

void PVLivePlayerStatsDescription::GetStringForStatsPMR(PVLivePlayerStatsDescription *this, const PVPerfStats::FrameStats *a2, const PVPerfStats::FrameStats *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v37[0] = xmmword_279AA59D0;
  v37[1] = *&off_279AA59E0;
  v38 = @"Total time";
  v35[0] = xmmword_279AA59F8;
  v35[1] = *off_279AA5A08;
  v36 = @"Total elapsed time";
  v28 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v28 setDateFormat:@"yyyy-MM-dd 'at' HH:mm:ss"];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v28 stringFromDate:v4];

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v29);
  for (i = 0; i != 11; ++i)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "<Measurement ", 13);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "key=", 5);
    v8 = [*(v37 + i) UTF8String];
    v9 = strlen(v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " ", 2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "value=", 7);
    ValueForIndex = PVPerfStats::FrameStats::GetValueForIndex(a2, i);
    v13 = MEMORY[0x2666E9B30](v11, ValueForIndex * 1000.0);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " ", 2);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "comment=", 9);
    v15 = [*(v35 + i) UTF8String];
    v16 = strlen(v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " for frame ", 11);
    v19 = MEMORY[0x2666E9B60](v18, *(a2 + 1));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " ", 2);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "timestamp=", 11);
    v21 = v5;
    v22 = [v5 UTF8String];
    v23 = strlen(v22);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "/>\n", 4);
  }

  std::stringbuf::str();
  v29[0] = *MEMORY[0x277D82818];
  v25 = *(MEMORY[0x277D82818] + 72);
  *(v29 + *(v29[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v30 = v25;
  v31 = MEMORY[0x277D82878] + 16;
  if (v33 < 0)
  {
    operator delete(v32[7].__locale_);
  }

  v31 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v32);
  std::iostream::~basic_iostream();
  MEMORY[0x2666E9E10](&v34);

  for (j = 32; j != -8; j -= 8)
  {
  }

  for (k = 32; k != -8; k -= 8)
  {
  }
}

void sub_25F95FF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);

  for (i = 32; i != -8; i -= 8)
  {
  }

  for (j = 32; j != -8; j -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x2666E9AE0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x2666E9AF0](v13);
  return a1;
}

void sub_25F96016C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x2666E9AF0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x25F96014CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_25F9603A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9609D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

void PVIGHGNodeCacheKey::PVIGHGNodeCacheKey(PVIGHGNodeCacheKey *this, unint64_t a2, CMTime *a3)
{
  this->var0 = a2;
  epoch = a3->epoch;
  *&this->var1.var0 = *&a3->value;
  this->var1.var3 = epoch;
  this->var2 = 0;
}

void PVIGHGNodeCacheKey::PVIGHGNodeCacheKey(PVIGHGNodeCacheKey *this, const PVIGHGNodeCacheKey *a2)
{
  this->var0 = a2->var0;
  v2 = *&a2->var1.var0;
  this->var1.var3 = a2->var1.var3;
  *&this->var1.var0 = v2;
  this->var2 = a2->var2;
}

BOOL PVIGHGNodeCacheKey::operator<(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return *a1 < *a2;
  }

  v7 = v2;
  v8 = v3;
  time1 = *(a1 + 8);
  v5 = *(a2 + 8);
  return CMTimeCompare(&time1, &v5) >> 31;
}

void PVInstructionGraphContext::PVInstructionGraphContext(PVInstructionGraphContext *this, PVVideoCompositingContext *a2)
{
  v3 = a2;
  HGObject::HGObject(this);
  *this = &unk_2871CE928;
  *(this + 2) = v3;
  HGDotGraph::HGDotGraph((this + 32));
  operator new();
}

void sub_25F960CE4(_Unwind_Exception *a1)
{
  HGDotGraph::~HGDotGraph((v1 + 4));

  HGObject::~HGObject(v1);
  _Unwind_Resume(a1);
}

void PVInstructionGraphContext::~PVInstructionGraphContext(PVInstructionGraphContext *this)
{
  *this = &unk_2871CE928;
  PVInputHGNodeMap<PVIGHGNodeCacheKey>::Clear(*(this + 3));
  v2 = *(this + 3);
  if (v2)
  {
    v3 = PVInputHGNodeMap<PVIGHGNodeCacheKey>::~PVInputHGNodeMap(v2);
    MEMORY[0x2666E9F00](v3, 0x1020C400405154DLL);
  }

  HGDotGraph::end((this + 32));
  HGDotGraph::~HGDotGraph((this + 32));

  HGObject::~HGObject(this);
}

void PVInputHGNodeMap<PVIGHGNodeCacheKey>::Clear(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      v4 = v3[9];
      if (v4)
      {
        (*(*v4 + 24))(v4);
      }

      v3[9] = 0;
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v2);
  }

  std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>>>::destroy(a1, *(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v2;
  v8 = *(a1 + 72);
  v9 = (a1 + 80);
  if (v8 != (a1 + 80))
  {
    do
    {
      v10 = v8[9];
      if (v10)
      {
        (*(*v10 + 24))(v10);
      }

      v8[9] = 0;
      v11 = v8[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v8[2];
          v7 = *v12 == v8;
          v8 = v12;
        }

        while (!v7);
      }

      v8 = v12;
    }

    while (v12 != v9);
  }

  std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGCVBitmap>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGCVBitmap>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGCVBitmap>>>>::destroy(a1 + 72, *(a1 + 80));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = v9;
  std::__tree<std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>>>::destroy(a1 + 24, *(a1 + 32));
  *(a1 + 24) = a1 + 32;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  std::__tree<std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>>>::destroy(a1 + 48, *(a1 + 56));
  *(a1 + 48) = a1 + 56;
  *(a1 + 56) = 0;
  v14 = *(a1 + 104);
  v13 = (a1 + 104);
  *(v13 - 5) = 0;
  std::__tree<std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>>>::destroy((v13 - 1), v14);
  *v13 = 0;
  v13[1] = 0;
  *(v13 - 1) = v13;
}

uint64_t PVInstructionGraphContext::AddContextDotNode(id *a1, uint64_t a2)
{
  result = HGDotGraph::on((a1 + 4));
  if (result)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v37);
    (*(*a1 + 10))(__p, a1);
    if ((v36 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v36 & 0x80u) == 0)
    {
      v6 = v36;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\n", 1);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Working CS: ", 12);
    v9 = [a1[2] workingColorSpace];
    v10 = [v9 name];
    v11 = [v10 UTF8String];
    v12 = strlen(v11);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v11, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n", 1);

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Output  CS: ", 12);
    v15 = [a1[2] outputColorSpace];
    v16 = [v15 name];
    v17 = [v16 UTF8String];
    v18 = strlen(v17);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v17, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\n", 1);

    v20 = (*(*a1 + 5))(a1);
    v22 = v21;
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Size: [", 7);
    v24 = MEMORY[0x2666E9B30](v23, v20);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " x ", 3);
    v26 = MEMORY[0x2666E9B30](v25, v22);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "]", 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "\n", 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Scale: ", 7);
    (*(*a1 + 6))(a1);
    v28 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "\n", 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "HighQuality: ", 13);
    v29 = (*(*a1 + 8))(a1);
    if (v29)
    {
      v30 = "yes\n";
    }

    else
    {
      v30 = "no\n";
    }

    if (v29)
    {
      v31 = 4;
    }

    else
    {
      v31 = 3;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, v30, v31);
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    v32 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, a2, v32);
    std::stringbuf::str();
    if ((v36 & 0x80u) == 0)
    {
      v33 = __p;
    }

    else
    {
      v33 = __p[0];
    }

    HGDotGraph::node((a1 + 4), 0, v33, 1);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    v37[0] = *MEMORY[0x277D82818];
    v34 = *(MEMORY[0x277D82818] + 72);
    *(v37 + *(v37[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v38 = v34;
    v39 = MEMORY[0x277D82878] + 16;
    if (v41 < 0)
    {
      operator delete(v40[7].__locale_);
    }

    v39 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v40);
    std::iostream::~basic_iostream();
    return MEMORY[0x2666E9E10](&v42);
  }

  return result;
}

void sub_25F9613F0(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a8, MEMORY[0x277D82818]);
  MEMORY[0x2666E9E10](va);
  _Unwind_Resume(a1);
}

void PVInstructionGraphContext::DotGraphFileName(PVInstructionGraphContext *this@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v4, atomic_fetch_add(&PVInstructionGraphContext::DotGraphFileName(void)::sAtomicCount, 1uLL) % 3);
  v3 = std::string::insert(&v4, 0, "PVInstructionGraph.");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_25F961500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PVInstructionGraphContext::BeginDotGraph(PVInstructionGraphContext *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_4, memory_order_acquire) & 1) == 0)
  {
    PVInstructionGraphContext::BeginDotGraph();
  }

  if (PVInstructionGraphContext::BeginDotGraph(void)::onceToken != -1)
  {
    PVInstructionGraphContext::BeginDotGraph();
  }

  PCImage::setIsPremultiplied(this + 32, [*(this + 2) instructionGraphDotTreeLevel] > 0);
  if (byte_280C5CC68[23] >= 0)
  {
    v2 = byte_280C5CC68[23];
  }

  else
  {
    v2 = *&byte_280C5CC68[8];
  }

  v3 = &v14;
  std::string::basic_string[abi:ne200100](&v14, v2 + 1);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v3 = v14.__r_.__value_.__r.__words[0];
  }

  if (v2)
  {
    if (byte_280C5CC68[23] >= 0)
    {
      v4 = byte_280C5CC68;
    }

    else
    {
      v4 = *byte_280C5CC68;
    }

    memmove(v3, v4, v2);
  }

  *(&v3->__r_.__value_.__l.__data_ + v2) = 47;
  (*(*this + 88))(__p, this);
  if ((v13 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v6 = v13;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = std::string::append(&v14, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v15, ".dot");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v17 = v9->__r_.__value_.__r.__words[2];
  v16 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v17 >= 0)
  {
    v11 = &v16;
  }

  else
  {
    v11 = v16;
  }

  HGDotGraph::begin((this + 32), v11);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }
}

void sub_25F9616F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  _Unwind_Resume(exception_object);
}

double ___ZN25PVInstructionGraphContext13BeginDotGraphEv_block_invoke(PVRenderManager *a1)
{
  PVRenderManager::DotGraphLoggingDirectory(a1, &v2);
  if (byte_280C5CC68[23] < 0)
  {
    operator delete(*byte_280C5CC68);
  }

  result = *&v2.__r_.__value_.__l.__data_;
  *byte_280C5CC68 = v2;
  return result;
}

void sub_25F961824(_Unwind_Exception *a1)
{
  PVInstructionGraphContext::~PVInstructionGraphContext(v2);

  _Unwind_Resume(a1);
}

double PVAVFInstructionGraphContext::RenderTransform@<D0>(PVAVFInstructionGraphContext *this@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(this + 15);
  if (v2)
  {
    [v2 renderTransform];
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t PVAVFInstructionGraphContext::HighQualityRendering(id *this)
{
  if (this[16])
  {
    return 0;
  }

  else
  {
    return [this[15] highQualityRendering];
  }
}

void PVAVFInstructionGraphContext::AnimationFrameDuration(id *this@<X0>, void *a2@<X8>)
{
  v3 = [this[15] videoComposition];
  v4 = v3;
  if (v3)
  {
    [v3 frameDuration];
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void PVAVFInstructionGraphContext::DotGraphFileName(PVInstructionGraphContext *this@<X0>, std::string *a2@<X8>)
{
  PVInstructionGraphContext::DotGraphFileName(this, &v4);
  v3 = std::string::append(&v4, ".AVFCustomCompositor");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_25F961984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 PVRendererInstructionGraphContext::RenderTransform@<Q0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277CBF2C0];
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  *a1 = *MEMORY[0x277CBF2C0];
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

__n128 PVRendererInstructionGraphContext::AnimationFrameDuration@<Q0>(PVRendererInstructionGraphContext *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 140);
  *a2 = result;
  a2[1].n128_u64[0] = *(this + 156);
  return result;
}

void PVRendererInstructionGraphContext::DotGraphFileName(PVInstructionGraphContext *this@<X0>, std::string *a2@<X8>)
{
  PVInstructionGraphContext::DotGraphFileName(this, &v4);
  v3 = std::string::append(&v4, ".PVRenderer");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_25F961AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PVAVFInstructionGraphContext::~PVAVFInstructionGraphContext(id *this)
{

  PVInstructionGraphContext::~PVInstructionGraphContext(this);
}

{

  PVInstructionGraphContext::~PVInstructionGraphContext(this);

  HGObject::operator delete(v2);
}

void PVRendererInstructionGraphContext::~PVRendererInstructionGraphContext(PVInstructionGraphContext *this)
{
  PVInstructionGraphContext::~PVInstructionGraphContext(this);

  HGObject::operator delete(v1);
}

void std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>>>::destroy(a1, a2[1]);
    v4 = a2[9];
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGCVBitmap>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGCVBitmap>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGCVBitmap>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGCVBitmap>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGCVBitmap>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGCVBitmap>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGCVBitmap>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGCVBitmap>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGCVBitmap>>>>::destroy(a1, a2[1]);
    v4 = a2[9];
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void **PVInputHGNodeMap<PVIGHGNodeCacheKey>::~PVInputHGNodeMap(void **a1)
{
  std::__tree<std::__value_type<PVIGHGNodeCacheKey,AVTimedMetadataGroup * {__strong}>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,AVTimedMetadataGroup * {__strong}>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,AVTimedMetadataGroup * {__strong}>>>::destroy((a1 + 15), a1[16]);
  std::__tree<std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>>>::destroy((a1 + 12), a1[13]);
  std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGCVBitmap>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGCVBitmap>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGCVBitmap>>>>::destroy((a1 + 9), a1[10]);
  std::__tree<std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>>>::destroy((a1 + 6), a1[7]);
  std::__tree<std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,PCRect<double>>>>::destroy((a1 + 3), a1[4]);
  std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>>>::destroy(a1, a1[1]);
  return a1;
}

void std::__tree<std::__value_type<PVIGHGNodeCacheKey,AVTimedMetadataGroup * {__strong}>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,AVTimedMetadataGroup * {__strong}>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,AVTimedMetadataGroup * {__strong}>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<PVIGHGNodeCacheKey,AVTimedMetadataGroup * {__strong}>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,AVTimedMetadataGroup * {__strong}>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,AVTimedMetadataGroup * {__strong}>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<PVIGHGNodeCacheKey,AVTimedMetadataGroup * {__strong}>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,AVTimedMetadataGroup * {__strong}>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,AVTimedMetadataGroup * {__strong}>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void sub_25F961F64(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0xA1C40BD48D6D6);

  _Unwind_Resume(a1);
}

void sub_25F962AD0(_Unwind_Exception *a1)
{
  if (*v1)
  {
    (*(**v1 + 24))(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_25F962E4C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 176), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25F9631E4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 176), 8);

  _Unwind_Resume(a1);
}

void sub_25F963A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

void sub_25F966604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PVRenderManager::INSTANCE@<X0>(PVRenderManager *this@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_280C5CC88, memory_order_acquire) & 1) == 0)
  {
    PVRenderManager::INSTANCE();
  }

  if (PVRenderManager::INSTANCE(void)::onceToken != -1)
  {
    PVRenderManager::INSTANCE();
  }

  result = _MergedGlobals_5;
  *a2 = _MergedGlobals_5;
  if (result)
  {
    v4 = *(*result + 16);

    return v4();
  }

  return result;
}

uint64_t *HGRef<PVRenderManager>::~HGRef(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  return a1;
}

void sub_25F966840(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

void PVRenderManager::DotGraphLoggingDirectory(PVRenderManager *this@<X0>, std::string *a2@<X8>)
{
  {
    std::string::__init(&PVRenderManager::DotGraphLoggingDirectory(void)::s_DotGraphLoggingDirectory, "/var/tmp", 8uLL);
    __cxa_atexit(MEMORY[0x277D82640], &PVRenderManager::DotGraphLoggingDirectory(void)::s_DotGraphLoggingDirectory, &dword_25F8F0000);
  }

  if (PVRenderManager::DotGraphLoggingDirectory(void)::onceToken != -1)
  {
    PVRenderManager::DotGraphLoggingDirectory();
  }

  if (byte_280C5C62F < 0)
  {
    v3 = PVRenderManager::DotGraphLoggingDirectory(void)::s_DotGraphLoggingDirectory;

    std::string::__init_copy_ctor_external(a2, v3, *(&v3 + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = PVRenderManager::DotGraphLoggingDirectory(void)::s_DotGraphLoggingDirectory;
    a2->__r_.__value_.__r.__words[2] = unk_280C5C628;
  }
}

void ___ZN15PVRenderManager24DotGraphLoggingDirectoryEv_block_invoke()
{
  v3 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v0 = [v3 objectAtIndex:0];

  v4 = [v0 stringByAppendingString:@"/"];

  v1 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v1 isWritableFileAtPath:v4])
  {
    MEMORY[0x2666E99D0](&PVRenderManager::DotGraphLoggingDirectory(void)::s_DotGraphLoggingDirectory, [v4 UTF8String]);
  }

  else
  {
    v2 = NSTemporaryDirectory();
    MEMORY[0x2666E99D0](&PVRenderManager::DotGraphLoggingDirectory(void)::s_DotGraphLoggingDirectory, [v2 UTF8String]);
  }
}

void PVRenderManager::PVRenderManager(PVRenderManager *this)
{
  HGObject::HGObject(this);
  *v1 = &unk_2871CEB20;
  *(v1 + 16) = 0;
  *(v1 + 24) = v1 + 24;
  *(v1 + 40) = 0;
  *(v1 + 72) = 0;
  *(v1 + 32) = v1 + 24;
  *(v1 + 64) = v1 + 72;
  *(v1 + 80) = 0;
  *(v1 + 48) = 0;
  *(v1 + 104) = 850045863;
  *(v1 + 172) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 153) = 0u;
  +[PVEnvironment Initialize];
  HGGLGetCurrentContext();
  if (PCColorSpaceHandle::getCGColorSpace(&v2))
  {
    HGGLContext::Share();
  }

  atomic_store(1u, HGLogger::_enabled);
  PVPerfStats::BeginLogging(0);
  operator new();
}

void sub_25F9671D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, PCSharedCount a28, PCSharedCount a29, uint64_t a30, char *a31, std::__shared_weak_count *a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  if (v39)
  {
    (*(*v39 + 24))(v39);
  }

  if (a30)
  {
    (*(*a30 + 24))(a30);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  a31 = &a33;
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100](&a31);
  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  if (*(v40 - 129) < 0)
  {
    operator delete(*(v40 - 152));
  }

  PCSharedCount::PCSharedCount((v40 - 120));
  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  PCSharedCount::PCSharedCount((v40 - 104));
  std::mutex::~mutex(a10);
  std::__tree<std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>,std::__map_value_compare<HGGPURenderContext const*,std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>,std::less<HGGPURenderContext const*>,true>,std::allocator<std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>>>::destroy(a11, *(v38 + 72));
  v42 = *(v38 + 48);
  if (v42)
  {
    (*(*v42 + 24))(v42);
  }

  std::__list_imp<HGRef<HGRenderContext>>::clear(v37);
  v43 = *(v38 + 16);
  if (v43)
  {
    (*(*v43 + 24))(v43);
  }

  HGObject::~HGObject(v38);
  _Unwind_Resume(a1);
}

uint64_t PVRenderManager::InitGLPoolingPolicy(uint64_t a1, uint64_t *a2)
{
  v3 = +[PVDeviceCharacteristics actualMemory];
  v4 = +[PVEnvironment PV_TEXTURE_POOL_SIZE_MB];
  +[PVEnvironment PV_TEXTURE_POOL_FINISH_SIZE_RATIO];
  v6 = v5;
  v7 = HGObject::operator new(0x30uLL);
  MultiGPUPoolingPolicy::MultiGPUPoolingPolicy(v7);
  v8 = (v4 << 20) / v3;
  MultiGPUPoolingPolicy::setMaxPoolSizeRatio(v7, v8);
  MultiGPUPoolingPolicy::setMaxQueueSizeRatio(v7, v6 * v8);
  MultiGPUPoolingPolicy::setMaxUnusedSizeRatio(v7, v8);
  MultiGPUPoolingPolicy::setMaxTotalSizeRatio(v7, 1.0);
  v9 = *a2;
  v11 = v7;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  HGGPURenderContext::SetGLTexturePoolingPolicy(v9, &v11);
  result = v11;
  if (v11)
  {
    result = (*(*v11 + 24))(v11);
  }

  if (v7)
  {
    return (*(*v7 + 24))(v7);
  }

  return result;
}

void sub_25F9676F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PVRenderManager::InitGLPaddingPolicy(uint64_t a1, uint64_t *a2)
{
  v3 = HGObject::operator new(0x38uLL);
  ClusteredPaddingPolicy::ClusteredPaddingPolicy(v3);
  v4 = +[PVEnvironment PV_TEXTURE_CLUSTER_PADDING_REMEMBRANCE];
  v5 = +[PVEnvironment PV_TEXTURE_CLUSTER_PADDING_CUSHIONING];
  v6 = +[PVEnvironment PV_TEXTURE_CLUSTER_PADDING_CLUMPING];
  *(v3 + 10) = v4;
  *(v3 + 11) = v5;
  *(v3 + 12) = v6;
  v7 = *a2;
  v9 = v3;
  (*(*v3 + 16))(v3);
  HGGPURenderContext::SetGLTexturePaddingPolicy(v7, &v9);
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  return (*(*v3 + 24))(v3);
}

void sub_25F967888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

HGGPUResources *PVRenderManager::InitMetalTexturePoolPolicy(PVRenderManager *this)
{
  MainDevice = HGMetalDeviceInfo::getMainDevice(this);
  if (MainDevice)
  {
    HGGPUResources::getDeviceResources(MainDevice, v3);
    *&v4 = -1;
    *(&v4 + 1) = -1;
    v11 = -1;
    v18 = -1;
    v16 = -1;
    v17 = v4;
    v14 = v4;
    v6 = xmmword_260342B50;
    v7 = v4;
    v8 = xmmword_260342B60;
    v10 = -1;
    v9 = 314572800;
    v12 = xmmword_260342B60;
    v13 = 314572800;
    v15 = 750000000;
    HGGPUResources::setupGroupTotalUsagePolicies();
  }

  return PVRenderManager::UpdateMetalTexturePoolingPolicy(this);
}

void PVRenderManager::~PVRenderManager(PVRenderManager *this)
{
  *this = &unk_2871CEB20;
  HGRenderQueue::CancelAllRenderJobs(*(this + 2), 1);
  HGRenderQueue::Drain(*(this + 2));
  HGRenderQueue::Shutdown(*(this + 2));
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  *(this + 2) = 0;
  for (i = *(this + 4); i != (this + 24); i = *(i + 8))
  {
    v4 = *(i + 16);
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }

    *(i + 16) = 0;
  }

  v5 = *(this + 7);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 11);
  if (v6)
  {
    (*(*v6 + 24))(v6);
    *(this + 11) = 0;
  }

  std::mutex::~mutex((this + 104));
  std::__tree<std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>,std::__map_value_compare<HGGPURenderContext const*,std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>,std::less<HGGPURenderContext const*>,true>,std::allocator<std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>>>::destroy(this + 64, *(this + 9));
  v7 = *(this + 6);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  std::__list_imp<HGRef<HGRenderContext>>::clear(this + 3);
  v8 = *(this + 2);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  HGObject::~HGObject(this);
}

{
  PVRenderManager::~PVRenderManager(this);

  HGObject::operator delete(v1);
}

HGGPUResources *PVRenderManager::UpdateMetalTexturePoolingPolicy(PVRenderManager *this)
{
  *&v18[32] = -1;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *v18 = v2;
  *&v18[16] = v2;
  *&v16[16] = v2;
  v17 = v2;
  v15 = v2;
  *v16 = v2;
  v13 = v2;
  v14 = v2;
  v12 = v2;
  std::mutex::lock((this + 104));
  if (*(this + 168) == 1)
  {
    *&v3 = -1;
    *(&v3 + 1) = -1;
    *&v18[8] = v3;
    *&v18[24] = v3;
    v12 = xmmword_260342B90;
    v14 = xmmword_260342BA0;
    *&v15 = 52428800;
    *(&v15 + 1) = -1;
    *&v13 = -1;
    *(&v13 + 1) = -1;
    *&v17 = -1;
    *(&v17 + 1) = -1;
    *&v16[8] = xmmword_260342BB0;
    *v16 = -1;
    *&v16[24] = 209715200;
    v4 = 250000000;
  }

  else
  {
    v4 = 750000000;
    v5 = *(this + 43);
    *&v13 = -1;
    *(&v13 + 1) = -1;
    *(&v15 + 1) = -1;
    *v16 = -1;
    *&v17 = -1;
    *(&v17 + 1) = -1;
    *&v6 = -1;
    *(&v6 + 1) = -1;
    *&v18[8] = v6;
    *&v18[24] = v6;
    if (v5 == 1)
    {
      v7 = xmmword_260342B80;
      v12 = xmmword_260342B70;
      v14 = xmmword_260342B80;
      v8 = 209715200;
    }

    else
    {
      v7 = xmmword_260342B60;
      v12 = xmmword_260342B50;
      v14 = xmmword_260342B60;
      v8 = 314572800;
    }

    *&v16[8] = v7;
    *&v15 = v8;
    *&v16[24] = v8;
  }

  *v18 = v4;
  std::mutex::unlock((this + 104));
  result = HGMetalDeviceInfo::getMainDevice(v9);
  if (result)
  {
    HGGPUResources::getDeviceResources(result, v11);
    HGGPUResources::setupGroupTotalUsagePolicies();
  }

  return result;
}

void PVRenderManager::Shutdown(PVRenderManager *this)
{
  HGRenderQueue::Shutdown(*(this + 2));

  PVPerfStats::EndLogging(v1);
}

HGSynchronizable *PVRenderManager::SetMinRenderPriority(PVRenderManager *this, int a2)
{
  if (a2)
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return HGRenderQueue::SetMinJobExecPriority(*(this + 2), v2);
}

void PVRenderManager::WaitForCommandBuffersToComplete(PVRenderManager *this)
{
  HGGLGetCurrentContext();
  if (PCColorSpaceHandle::getCGColorSpace(&v6))
  {
    HGGLContext::Share();
  }

  v2 = this + 24;
  for (i = *(this + 4); i != v2; i = *(i + 8))
  {
    v4 = *(i + 16);
    if (v4)
    {
      (*(*v4 + 16))(*(i + 16));
    }

    if (HGRenderContext::GetType(v4) == 1)
    {
      GPURenderer = HGGPURenderContext::GetGPURenderer(v4);
      HGGPURenderer::FinishMetalCommandBuffer(GPURenderer);
    }

    if (v4)
    {
      (*(*v4 + 24))(v4);
    }
  }

  PCSharedCount::PCSharedCount(&v6);
}

void sub_25F968088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10, uint64_t a11, PCSharedCount a12)
{
  PCSharedCount::PCSharedCount(&a10);
  PCSharedCount::PCSharedCount(&a12);
  _Unwind_Resume(a1);
}

uint64_t PVRenderManager::GetInteractiveMode(PVRenderManager *this)
{
  std::mutex::lock((this + 104));
  v2 = *(this + 168);
  std::mutex::unlock((this + 104));
  return v2;
}

void PVRenderManager::SetInteractiveMode(PVRenderManager *this, int a2)
{
  std::mutex::lock((this + 104));
  v4 = *(this + 168);
  *(this + 168) = a2;
  std::mutex::unlock((this + 104));
  if (v4 != a2)
  {

    PVRenderManager::UpdateMetalTexturePoolingPolicy(this);
  }
}

uint64_t PVRenderManager::GetMemoryEnvironment(PVRenderManager *this)
{
  std::mutex::lock((this + 104));
  v2 = *(this + 43);
  std::mutex::unlock((this + 104));
  return v2;
}

void PVRenderManager::updateMemoryEnvironment(uint64_t a1, int a2)
{
  std::mutex::lock((a1 + 104));
  v4 = *(a1 + 172);
  *(a1 + 172) = a2;
  std::mutex::unlock((a1 + 104));
  if (v4 != a2)
  {

    PVRenderManager::UpdateMetalTexturePoolingPolicy(a1);
  }
}

HGSynchronizable *PVRenderManager::SetupTextureFactories(PVRenderManager *this, float a2)
{
  v4 = *(this + 7);
  v15 = v4;
  v16 = 0;
  HGSynchronizable::Lock(v4);
  v5 = *(this + 24);
  *(this + 24) = v5 + 1;
  if (!v5)
  {
    v6 = *(this + 4);
    if (v6 == (this + 24))
    {
LABEL_17:
      HGGLContext::context(&v12, *(this + 6));
      HGGLContext::Create();
    }

    while (1)
    {
      v7 = *(v6 + 16);
      if (v7)
      {
        (*(*v7 + 16))(*(v6 + 16));
      }

      if (HGRenderContext::GetType(v7) != 1)
      {
        goto LABEL_14;
      }

      v14.var0 = v7;
      HGGPURenderContext::GetGLContext(v7, &v13);
      v8 = HGObject::operator new(0x20uLL);
      v17.var0 = v13.var0;
      HGCVGLTextureFactory::HGCVGLTextureFactory(v8, &v17, a2);
      PCSharedCount::PCSharedCount(&v17);
      v17.var0 = &v14;
      v9 = std::__tree<std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>,std::__map_value_compare<HGGPURenderContext const*,std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>,std::less<HGGPURenderContext const*>,true>,std::allocator<std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>>>::__emplace_unique_key_args<HGGPURenderContext const*,std::piecewise_construct_t const&,std::tuple<HGGPURenderContext const* const&>,std::tuple<>>(this + 64, &v14);
      v10 = v9[5];
      if (v10 != v8)
      {
        break;
      }

      if (v8)
      {
        goto LABEL_12;
      }

LABEL_13:
      PCSharedCount::PCSharedCount(&v13);
LABEL_14:
      if (v7)
      {
        (*(*v7 + 24))(v7);
      }

      v6 = *(v6 + 8);
      if (v6 == (this + 24))
      {
        goto LABEL_17;
      }
    }

    if (v10)
    {
      (*(*v10 + 24))(v10);
    }

    v9[5] = v8;
    if (!v8)
    {
      goto LABEL_13;
    }

    (*(*v8 + 16))(v8);
LABEL_12:
    (*(*v8 + 24))(v8);
    goto LABEL_13;
  }

  return HGSynchronizable::Unlock(v4);
}

void sub_25F968518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10, PCSharedCount a11, PCSharedCount a12, HGSynchronizable *a13, uint64_t a14, uint64_t a15, PCSharedCount a16)
{
  PCSharedCount::PCSharedCount(&a9);
  HGObject::operator delete(v16);
  PCSharedCount::PCSharedCount(&a12);
  if (a16.var0)
  {
    (*(*a16.var0 + 24))(a16.var0);
  }

  HGSynchronizer::~HGSynchronizer(&a13);
  _Unwind_Resume(a1);
}

HGSynchronizable *PVRenderManager::TearDownTextureFactories(PVRenderManager *this)
{
  v2 = *(this + 7);
  HGSynchronizable::Lock(v2);
  v3 = *(this + 24) - 1;
  *(this + 24) = v3;
  if (!v3)
  {
    std::__tree<std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>,std::__map_value_compare<HGGPURenderContext const*,std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>,std::less<HGGPURenderContext const*>,true>,std::allocator<std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>>>::destroy(this + 64, *(this + 9));
    *(this + 9) = 0;
    *(this + 10) = 0;
    *(this + 8) = this + 72;
    (*(**(this + 11) + 24))(*(this + 11));
    *(this + 11) = 0;
    PVRenderManager::FreeTexturePools(this);
  }

  return HGSynchronizable::Unlock(v2);
}

void PVRenderManager::FreeTexturePools(PVRenderManager *this)
{
  HGGLGetCurrentContext();
  if (PCColorSpaceHandle::getCGColorSpace(&v12))
  {
    HGGLContext::Share();
  }

  v2 = this + 24;
  for (i = *(this + 4); i != v2; i = *(i + 8))
  {
    v4 = *(i + 16);
    if (v4)
    {
      (*(*v4 + 16))(*(i + 16));
    }

    if (HGRenderContext::GetType(v4) == 1)
    {
      Renderer = HGRenderContext::GetRenderer(v4);
      v6 = Renderer;
      v7 = *(Renderer + 1472);
      if (v7)
      {
        HGTextureManager::finishDeleteTextureQueue(*(Renderer + 1472));
        HGTextureManager::emptyTexturePool(v7);
      }

      MetalContext = HGGPURenderer::GetMetalContext(v6);
      if (MetalContext)
      {
        LUTEnd = PCICCTransferFunctionLUT::getLUTEnd(MetalContext);
        DeviceResources = HGGPUResources::getDeviceResources(LUTEnd, v10);
        if (DeviceResources)
        {
          HGGPUResources::flushFreeObjects(DeviceResources);
        }
      }
    }

    if (v4)
    {
      (*(*v4 + 24))(v4);
    }
  }

  PCSharedCount::PCSharedCount(&v12);
}

void sub_25F968888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10, uint64_t a11, PCSharedCount a12)
{
  PCSharedCount::PCSharedCount(&a10);
  PCSharedCount::PCSharedCount(&a12);
  _Unwind_Resume(a1);
}

HGSynchronizable *PVRenderManager::FlushTextureFactories(PVRenderManager *this)
{
  v2 = *(this + 7);
  HGSynchronizable::Lock(v2);
  v3 = *(this + 8);
  if (v3 != (this + 72))
  {
    do
    {
      v4 = *(v3 + 5);
      if (v4)
      {
        (*(*v4 + 2))(*(v3 + 5));
        CVOpenGLESTextureCacheFlush(v4[3], 0);
        (*(*v4 + 3))(v4);
      }

      v5 = *(v3 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != (this + 72));
  }

  v8 = *(this + 11);
  if (v8)
  {
    CVOpenGLESTextureCacheFlush(*(v8 + 24), 0);
  }

  return HGSynchronizable::Unlock(v2);
}

void PVRenderManager::ForceFlushRendererResources(PVRenderManager *this)
{
  v1 = this + 24;
  for (i = *(this + 4); i != v1; i = *(i + 8))
  {
    v3 = *(i + 16);
    if (v3)
    {
      (*(*v3 + 16))(*(i + 16));
    }

    this = HGRenderContext::GetType(v3);
    if (this == 1)
    {
      Renderer = HGRenderContext::GetRenderer(v3);
      this = OZChannelBase::setRangeName(Renderer, v5);
    }

    if (v3)
    {
      this = (*(*v3 + 24))(v3);
    }
  }

  HGGPUResources::forceResetAllCVTextureCaches(this);
}

void sub_25F968B60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

void PVRenderManager::SetCVTextureCacheMaximumTextureAge(PVRenderManager *this, float a2)
{
  MainDevice = HGMetalDeviceInfo::getMainDevice(this);
  if (MainDevice)
  {
    DeviceResources = HGGPUResources::getDeviceResources(MainDevice, v4);
    HGGPUResources::setCVTextureCacheMaximumTextureAge(DeviceResources, a2);

    HGGPUResources::forceResetCVTextureCache(DeviceResources);
  }
}

float PVRenderManager::GetCVTextureCacheMaximumTextureAge(PVRenderManager *this)
{
  MainDevice = HGMetalDeviceInfo::getMainDevice(this);
  if (MainDevice)
  {
    return *(HGGPUResources::getDeviceResources(MainDevice, v2) + 34);
  }

  else
  {
    return 1.0;
  }
}

uint64_t PVRenderManager::GetRenderQueue@<X0>(PVRenderManager *this@<X0>, void *a2@<X8>)
{
  result = *(this + 2);
  *a2 = result;
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t PVRenderManager::GetRootContext@<X0>(PVRenderManager *this@<X0>, void *a2@<X8>)
{
  result = *(this + 6);
  *a2 = result;
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::__list_imp<HGRef<HGRenderContext>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__destroy_at[abi:ne200100]<HGRef<HGRenderContext>,0>(v2 + 2);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t std::__destroy_at[abi:ne200100]<HGRef<HGRenderContext>,0>(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__tree<std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>,std::__map_value_compare<HGGPURenderContext const*,std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>,std::less<HGGPURenderContext const*>,true>,std::allocator<std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>,std::__map_value_compare<HGGPURenderContext const*,std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>,std::less<HGGPURenderContext const*>,true>,std::allocator<std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>,std::__map_value_compare<HGGPURenderContext const*,std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>,std::less<HGGPURenderContext const*>,true>,std::allocator<std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<HGGPURenderContext const* const,HGRef<HGCVGLTextureFactory>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<HGGPURenderContext const* const,HGRef<HGCVGLTextureFactory>>,0>(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

uint64_t std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__init_with_size[abi:ne200100]<std::shared_ptr<HGGPUComputeDevice const>*,std::shared_ptr<HGGPUComputeDevice const>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25F968F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<HGGPUComputeDevice const>>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<HGGPUComputeDevice const>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<HGGPUComputeDevice const>>,std::shared_ptr<HGGPUComputeDevice const>*,std::shared_ptr<HGGPUComputeDevice const>*,std::shared_ptr<HGGPUComputeDevice const>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<HGGPUComputeDevice const>>,std::shared_ptr<HGGPUComputeDevice const>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<HGGPUComputeDevice const>>,std::shared_ptr<HGGPUComputeDevice const>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<HGGPUComputeDevice const>>,std::shared_ptr<HGGPUComputeDevice const>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<HGGPUComputeDevice const>>,std::shared_ptr<HGGPUComputeDevice const>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 16;
  }
}

void std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<HGGPUComputeDevice const>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<HGGPUComputeDevice const>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__shared_ptr_emplace<PVMtlTexturePoolAllocationPolicy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2871CEB70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

__n128 PVMtlTexturePoolAllocationPolicy::pad@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = *(a1 + 16);
  v3 = *(a1 + 32);
  *(a2 + 16) = result;
  *(a2 + 32) = v3;
  v4.i64[0] = -1;
  v4.i64[1] = -1;
  *a2 = vbslq_s8(vcgtq_u64(*a1, vdupq_n_s64(0x10uLL)), vaddq_s64(vandq_s8(vaddq_s64(*a1, v4), vdupq_n_s64(0xFFFFFFFFFFFFFFC0)), vdupq_n_s64(0x40uLL)), *a1);
  return result;
}

void *std::__tree<std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>,std::__map_value_compare<HGGPURenderContext const*,std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>,std::less<HGGPURenderContext const*>,true>,std::allocator<std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>>>::__emplace_unique_key_args<HGGPURenderContext const*,std::piecewise_construct_t const&,std::tuple<HGGPURenderContext const* const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<HGGPURenderContext const*,HGRef<HGCVGLTextureFactory>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<HGGPURenderContext const* const,HGRef<HGCVGLTextureFactory>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_25F969FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F96A6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  PVInputHGNodeMap<unsigned int>::~PVInputHGNodeMap(va);
  if (*v15)
  {
    (*(**v15 + 24))(*v15);
  }

  HGTraceGuard::~HGTraceGuard((v16 - 96));
  _Unwind_Resume(a1);
}

double PVGetMemUsageStats@<D0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x2666EABF0]();
  host_info_outCnt = 15;
  v16 = 0;
  host_page_size(v2, &v16);
  if (host_statistics(v2, 2, host_info_out, &host_info_outCnt))
  {
    NSLog(&cfstr_FailedToFetchV.isa);
  }

  v3 = v16;
  v4 = host_info_out[0];
  v5 = v16 * host_info_out[1];
  v6 = host_info_out[3];
  v7 = v16 * host_info_out[2];
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  v8 = v3 * v6;
  v9 = v3 * v4;
  v10 = v7 + v5 + v8;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 48) = v9;
  *(a1 + 56) = v9 + v10;
  task_info_outCnt = 40;
  if (!task_info(*MEMORY[0x277D85F48], 0x12u, &task_info_out, &task_info_outCnt))
  {
    result = *&v14;
    *a1 = v14;
  }

  return result;
}

id PVGetMemUsageString(void *a1)
{
  v1 = a1;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  PVGetMemUsageStats(&v14);
  v2 = &stru_2872E16E0;
  if (v1)
  {
    v2 = v1;
  }

  v3 = v2;
  v4 = [(__CFString *)v3 stringByAppendingFormat:@" Memory Usage:"];

  v5 = [v4 stringByAppendingFormat:@"\n\tTask Resident Memory:     %lu", *(&v14 + 1) >> 20];

  v6 = [v5 stringByAppendingFormat:@"\n\tTask Virtual Memory:      %lu", v14 >> 20];

  v7 = [v6 stringByAppendingFormat:@"\n\tSystem Active Memory:     %lu", v15 >> 20];

  v8 = [v7 stringByAppendingFormat:@"\n\tSystem InActive Memory:   %lu", *(&v15 + 1) >> 20];

  v9 = [v8 stringByAppendingFormat:@"\n\tSystem Wired Memory:      %lu", v16 >> 20];

  v10 = [v9 stringByAppendingFormat:@"\n\tSystem Total Used Memory: %lu", *(&v16 + 1) >> 20];

  v11 = [v10 stringByAppendingFormat:@"\n\tSystem Free Memory:       %lu", v17 >> 20];

  v12 = [v11 stringByAppendingFormat:@"\n\tSystem Total Memory:      %lu", *(&v17 + 1) >> 20];

  return v12;
}

void sub_25F96D6A4(_Unwind_Exception *a1)
{
  HGObject::operator delete(v3);
  (*(*v2 + 24))(v2);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  v6 = *(v4 - 96);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(v4 - 88);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  _Unwind_Resume(a1);
}

id NSStringFromSIMDFloat3x3(uint64_t a1, simd_float3x3 a2)
{
  v3 = pv_buffer_size_for_string_representation(a2, a1);
  v4 = malloc_type_calloc(v3, 1uLL, 0x100004077774924uLL);
  string_representation = pv_get_string_representation(a2, v4, v3, a1);
  v6 = 0;
  if ((string_representation & 0x80000000) != 0 || string_representation >= v3 || (v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v4 length:string_representation encoding:4 freeWhenDone:1]) == 0)
  {
    free(v4);
  }

  return v6;
}

id NSStringFromSIMDDouble3x3(__int128 *a1, uint64_t a2)
{
  v4 = a1[3];
  v17 = a1[2];
  v18 = v4;
  v5 = a1[5];
  v19 = a1[4];
  v20 = v5;
  v6 = a1[1];
  v15 = *a1;
  v16 = v6;
  v7 = pv_buffer_size_for_string_representation(&v15, a2);
  v8 = malloc_type_calloc(v7, 1uLL, 0x100004077774924uLL);
  v9 = a1[3];
  v17 = a1[2];
  v18 = v9;
  v10 = a1[5];
  v19 = a1[4];
  v20 = v10;
  v11 = a1[1];
  v15 = *a1;
  v16 = v11;
  string_representation = pv_get_string_representation(&v15, v8, v7, a2);
  v13 = 0;
  if ((string_representation & 0x80000000) != 0 || string_representation >= v7 || (v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v8 length:string_representation encoding:4 freeWhenDone:1]) == 0)
  {
    free(v8);
  }

  return v13;
}

id NSStringFromSIMDFloat4x4(uint64_t a1, simd_float4x4 a2)
{
  v3 = pv_buffer_size_for_string_representation(a2, a1);
  v4 = malloc_type_calloc(v3, 1uLL, 0x100004077774924uLL);
  string_representation = pv_get_string_representation(a2, v4, v3, a1);
  v6 = 0;
  if ((string_representation & 0x80000000) != 0 || string_representation >= v3 || (v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v4 length:string_representation encoding:4 freeWhenDone:1]) == 0)
  {
    free(v4);
  }

  return v6;
}

id NSStringFromSIMDDouble4x4(__int128 *a1, uint64_t a2)
{
  v4 = a1[5];
  v21 = a1[4];
  v22 = v4;
  v5 = a1[7];
  v23 = a1[6];
  v24 = v5;
  v6 = a1[1];
  v17 = *a1;
  v18 = v6;
  v7 = a1[3];
  v19 = a1[2];
  v20 = v7;
  v8 = pv_buffer_size_for_string_representation(&v17, a2);
  v9 = malloc_type_calloc(v8, 1uLL, 0x100004077774924uLL);
  v10 = a1[5];
  v21 = a1[4];
  v22 = v10;
  v11 = a1[7];
  v23 = a1[6];
  v24 = v11;
  v12 = a1[1];
  v17 = *a1;
  v18 = v12;
  v13 = a1[3];
  v19 = a1[2];
  v20 = v13;
  string_representation = pv_get_string_representation(&v17, v9, v8, a2);
  v15 = 0;
  if ((string_representation & 0x80000000) != 0 || string_representation >= v8 || (v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v9 length:string_representation encoding:4 freeWhenDone:1]) == 0)
  {
    free(v9);
  }

  return v15;
}

id NSStringFromSIMDQuatF(unsigned int a1, simd_quatf a2)
{
  v3 = pv_buffer_size_for_string_representation(a2, a1);
  v4 = malloc_type_calloc(v3, 1uLL, 0x100004077774924uLL);
  v5 = a2;
  string_representation = pv_get_string_representation(v5, v4, v3, a1);
  v7 = 0;
  if ((string_representation & 0x80000000) != 0 || string_representation >= v3 || (v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v4 length:string_representation encoding:4 freeWhenDone:1]) == 0)
  {
    free(v4);
  }

  return v7;
}

id NSStringFromSIMDQuatD(__int128 *a1, uint64_t a2)
{
  *&v12.vector.f64[2] = a1[1];
  v9 = *a1;
  *v12.vector.f64 = v9;
  v10 = *&v12.vector.f64[2];
  v4 = pv_buffer_size_for_string_representation(v12, &v9, a2);
  v5 = malloc_type_calloc(v4, 1uLL, 0x100004077774924uLL);
  *&v13.vector.f64[2] = a1[1];
  v9 = *a1;
  *v13.vector.f64 = v9;
  v10 = *&v13.vector.f64[2];
  string_representation = pv_get_string_representation(v13, &v9, v5, v4, a2);
  v7 = 0;
  if ((string_representation & 0x80000000) != 0 || string_representation >= v4 || (v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v5 length:string_representation encoding:4 freeWhenDone:1]) == 0)
  {
    free(v5);
  }

  return v7;
}

id NSStringFromSIMDFloat2(uint64_t a1, __n128 a2)
{
  v3 = a2.n128_u64[0];
  v4 = pv_buffer_size_for_string_representation(a1, a2);
  v5 = malloc_type_calloc(v4, 1uLL, 0x100004077774924uLL);
  v6.n128_u64[0] = v3;
  string_representation = pv_get_string_representation(v5, v4, a1, v6);
  v8 = 0;
  if ((string_representation & 0x80000000) != 0 || string_representation >= v4 || (v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v5 length:string_representation encoding:4 freeWhenDone:1]) == 0)
  {
    free(v5);
  }

  return v8;
}

id NSStringFromSIMDFloat3(uint64_t a1, __n128 a2)
{
  v3 = pv_buffer_size_for_string_representation(a1, a2);
  v4 = malloc_type_calloc(v3, 1uLL, 0x100004077774924uLL);
  string_representation = pv_get_string_representation(v4, v3, a1, a2);
  v6 = 0;
  if ((string_representation & 0x80000000) != 0 || string_representation >= v3 || (v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v4 length:string_representation encoding:4 freeWhenDone:1]) == 0)
  {
    free(v4);
  }

  return v6;
}

id NSStringFromSIMDFloat4(uint64_t a1, __n128 a2)
{
  v3 = pv_buffer_size_for_string_representation(a1, a2);
  v4 = malloc_type_calloc(v3, 1uLL, 0x100004077774924uLL);
  string_representation = pv_get_string_representation(v4, v3, a1, a2);
  v6 = 0;
  if ((string_representation & 0x80000000) != 0 || string_representation >= v3 || (v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v4 length:string_representation encoding:4 freeWhenDone:1]) == 0)
  {
    free(v4);
  }

  return v6;
}

id NSStringFromSIMDFloat8(__int128 *a1, uint64_t a2)
{
  v8 = a1[1];
  v10 = *a1;
  v9 = v10;
  v11 = v8;
  v3 = pv_buffer_size_for_string_representation(&v10, a2);
  v4 = malloc_type_calloc(v3, 1uLL, 0x100004077774924uLL);
  v10 = v9;
  v11 = v8;
  string_representation = pv_get_string_representation(&v10, v4, v3, a2);
  v6 = 0;
  if ((string_representation & 0x80000000) != 0 || string_representation >= v3 || (v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v4 length:string_representation encoding:4 freeWhenDone:1]) == 0)
  {
    free(v4);
  }

  return v6;
}

id NSStringFromSIMDFloat16(__int128 *a1, uint64_t a2)
{
  v10 = a1[1];
  v11 = *a1;
  v8 = a1[3];
  v14 = a1[2];
  v9 = v14;
  v15 = v8;
  v12 = v11;
  v13 = v10;
  v3 = pv_buffer_size_for_string_representation(&v12, a2);
  v4 = malloc_type_calloc(v3, 1uLL, 0x100004077774924uLL);
  v14 = v9;
  v15 = v8;
  v12 = v11;
  v13 = v10;
  string_representation = pv_get_string_representation(&v12, v4, v3, a2);
  v6 = 0;
  if ((string_representation & 0x80000000) != 0 || string_representation >= v3 || (v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v4 length:string_representation encoding:4 freeWhenDone:1]) == 0)
  {
    free(v4);
  }

  return v6;
}

id NSStringFromSIMDDouble2(uint64_t a1, __n128 a2)
{
  v3 = pv_buffer_size_for_string_representation(a1, a2);
  v4 = malloc_type_calloc(v3, 1uLL, 0x100004077774924uLL);
  string_representation = pv_get_string_representation(v4, v3, a1, a2);
  v6 = 0;
  if ((string_representation & 0x80000000) != 0 || string_representation >= v3 || (v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v4 length:string_representation encoding:4 freeWhenDone:1]) == 0)
  {
    free(v4);
  }

  return v6;
}

id NSStringFromSIMDDouble3(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 16);
  v10 = *a1;
  v9 = v10;
  v11 = v8;
  v3 = pv_buffer_size_for_string_representation(&v10, a2);
  v4 = malloc_type_calloc(v3, 1uLL, 0x100004077774924uLL);
  v10 = v9;
  v11 = v8;
  string_representation = pv_get_string_representation(&v10, v4, v3, a2);
  v6 = 0;
  if ((string_representation & 0x80000000) != 0 || string_representation >= v3 || (v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v4 length:string_representation encoding:4 freeWhenDone:1]) == 0)
  {
    free(v4);
  }

  return v6;
}

id NSStringFromSIMDDouble4(__int128 *a1, uint64_t a2)
{
  v8 = a1[1];
  v10 = *a1;
  v9 = v10;
  v11 = v8;
  v3 = pv_buffer_size_for_string_representation(&v10, a2);
  v4 = malloc_type_calloc(v3, 1uLL, 0x100004077774924uLL);
  v10 = v9;
  v11 = v8;
  string_representation = pv_get_string_representation(&v10, v4, v3, a2);
  v6 = 0;
  if ((string_representation & 0x80000000) != 0 || string_representation >= v3 || (v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v4 length:string_representation encoding:4 freeWhenDone:1]) == 0)
  {
    free(v4);
  }

  return v6;
}

id NSStringFromSIMDDouble8(__int128 *a1, uint64_t a2)
{
  v10 = a1[1];
  v11 = *a1;
  v8 = a1[3];
  v14 = a1[2];
  v9 = v14;
  v15 = v8;
  v12 = v11;
  v13 = v10;
  v3 = pv_buffer_size_for_string_representation(&v12, a2);
  v4 = malloc_type_calloc(v3, 1uLL, 0x100004077774924uLL);
  v14 = v9;
  v15 = v8;
  v12 = v11;
  v13 = v10;
  string_representation = pv_get_string_representation(&v12, v4, v3, a2);
  v6 = 0;
  if ((string_representation & 0x80000000) != 0 || string_representation >= v3 || (v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v4 length:string_representation encoding:4 freeWhenDone:1]) == 0)
  {
    free(v4);
  }

  return v6;
}

void sub_25F96E8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v12, 0x10E1C409BAC03F7);

  _Unwind_Resume(a1);
}

void sub_25F96EAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__5(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

void sub_25F96ECD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F96EE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F96EFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F96F1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F96F3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F96F608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F96F7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F96F960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__73(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 48) = result;
  return result;
}

void sub_25F96FB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F96FCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__77(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25F96FF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_25F97024C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_25F9705DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F970910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F970C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F970F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F972D88(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25F97365C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  HFDenseCRFInterface::~HFDenseCRFInterface(&a23);
  if (__p)
  {
    (*(*__p + 24))(__p);
  }

  if (a15)
  {
    (*(*a15 + 24))(a15);
  }

  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  if (a16)
  {
    (*(*a16 + 24))(a16);
  }

  if (a25)
  {
    (*(*a25 + 24))(a25);
  }

  if (a26)
  {
    (*(*a26 + 24))(a26);
  }

  if (a27)
  {
    (*(*a27 + 24))(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t pv_get_string_representation(float a1, char *a2, size_t a3, uint64_t a4)
{
  v6 = fabsf(a1);
  if (v6 < 0.00001 || (v7 = "%.*e", v6 <= 1000000.0) && v6 >= 0.00001)
  {
    v7 = "%.*f";
  }

  return snprintf(a2, a3, v7, a4, a1, v4, v5);
}

uint64_t pv_get_string_representation(double a1, char *a2, size_t a3, uint64_t a4)
{
  v6 = fabs(a1);
  if (v6 < 0.0000001 || (v7 = "%.*e", v6 <= 999999.0) && v6 >= 0.00001)
  {
    v7 = "%.*f";
  }

  return snprintf(a2, a3, v7, a4, *&a1, v4, v5);
}

uint64_t pv_buffer_size_for_string_representation(uint64_t a1, __n128 a2)
{
  return pv_get_string_representation(0, 0, a1, a2) + 1;
}

{
  return pv_get_string_representation(0, 0, a1, a2) + 1;
}

{
  return pv_get_string_representation(0, 0, a1, a2) + 1;
}

{
  return pv_get_string_representation(0, 0, a1, a2) + 1;
}

uint64_t pv_get_string_representation(char *a1, size_t a2, uint64_t a3, __n128 a4)
{
  v5 = a2;
  if (!a1)
  {
    a2 = 0;
  }

  string_representation = pv_get_string_representation(a4.n128_f32[0], a1, a2, a3);
  v8 = string_representation;
  v9 = v5 - string_representation;
  v10 = string_representation;
  if (a1)
  {
    v11 = &a1[string_representation];
  }

  else
  {
    v11 = 0;
  }

  if (a1)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = snprintf(v11, v12, ", ", *&a4);
  v14 = v10 + v13;
  v15 = v5 - v14;
  v16 = &a1[v14];
  if (a1)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a1)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  return pv_get_string_representation(v21, v17, v18, a3) + v13 + v8;
}

{
  v5 = a2;
  if (!a1)
  {
    a2 = 0;
  }

  string_representation = pv_get_string_representation(a4.n128_f64[0], a1, a2, a3);
  v8 = string_representation;
  v9 = v5 - string_representation;
  v10 = string_representation;
  if (a1)
  {
    v11 = &a1[string_representation];
  }

  else
  {
    v11 = 0;
  }

  if (a1)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = snprintf(v11, v12, ", ", a4.n128_u64[0]);
  v14 = v10 + v13;
  v15 = v5 - v14;
  v16 = &a1[v14];
  if (a1)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a1)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  return pv_get_string_representation(a4.n128_f64[1], v17, v18, a3) + v13 + v8;
}

{
  v5 = a2;
  if (!a1)
  {
    a2 = 0;
  }

  v19 = a4;
  string_representation = pv_get_string_representation(a4.n128_f32[0], a1, a2, a3);
  LODWORD(v8) = string_representation;
  v9 = 0;
  for (i = 1; i != 3; ++i)
  {
    v11 = v9 + string_representation;
    if (a1)
    {
      v12 = &a1[v11];
    }

    else
    {
      v12 = 0;
    }

    if (a1)
    {
      v13 = v5 - v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = snprintf(v12, v13, ", ", *&v19, *&v20);
    v9 = v11 + v14;
    v15 = v14 + v8;
    v20 = v19;
    if (a1)
    {
      v16 = &a1[v9];
    }

    else
    {
      v16 = 0;
    }

    if (a1)
    {
      v17 = v5 - v9;
    }

    else
    {
      v17 = 0;
    }

    string_representation = pv_get_string_representation(*(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3))), v16, v17, a3);
    v8 = (string_representation + v15);
  }

  return v8;
}

{
  v5 = a2;
  if (!a1)
  {
    a2 = 0;
  }

  v19 = a4;
  string_representation = pv_get_string_representation(a4.n128_f32[0], a1, a2, a3);
  LODWORD(v8) = string_representation;
  v9 = 0;
  for (i = 1; i != 4; ++i)
  {
    v11 = v9 + string_representation;
    if (a1)
    {
      v12 = &a1[v11];
    }

    else
    {
      v12 = 0;
    }

    if (a1)
    {
      v13 = v5 - v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = snprintf(v12, v13, ", ", *&v19, *&v20);
    v9 = v11 + v14;
    v15 = v14 + v8;
    v20 = v19;
    if (a1)
    {
      v16 = &a1[v9];
    }

    else
    {
      v16 = 0;
    }

    if (a1)
    {
      v17 = v5 - v9;
    }

    else
    {
      v17 = 0;
    }

    string_representation = pv_get_string_representation(*(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3))), v16, v17, a3);
    v8 = (string_representation + v15);
  }

  return v8;
}

uint64_t pv_buffer_size_for_string_representation(int8x16_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return pv_get_string_representation(v4, 0, 0, a2) + 1;
}

uint64_t pv_get_string_representation(int8x16_t *a1, char *a2, size_t a3, uint64_t a4)
{
  v7 = *a1;
  v23 = a1[1];
  v24 = a1->i64[0];
  v22 = vextq_s8(v7, v7, 8uLL);
  if (a2)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0;
  }

  string_representation = pv_get_string_representation(*v7.i64, a2, v8, a4);
  LODWORD(v10) = string_representation;
  v11 = 0;
  v12 = 1;
  *&v13 = v24;
  *(&v13 + 1) = v22.i64[0];
  v25 = v13;
  do
  {
    v14 = v11 + string_representation;
    if (a2)
    {
      v15 = &a2[v14];
    }

    else
    {
      v15 = 0;
    }

    if (a2)
    {
      v16 = a3 - v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = snprintf(v15, v16, ", ", *&v22);
    v11 = v14 + v17;
    v18 = v17 + v10;
    v26[0] = v25;
    v26[1] = v23;
    if (a2)
    {
      v19 = &a2[v11];
    }

    else
    {
      v19 = 0;
    }

    if (a2)
    {
      v20 = a3 - v11;
    }

    else
    {
      v20 = 0;
    }

    string_representation = pv_get_string_representation(*(v26 + (v12 & 3)), v19, v20, a4);
    v10 = (string_representation + v18);
    ++v12;
  }

  while (v12 != 3);
  return v10;
}

uint64_t pv_buffer_size_for_string_representation(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return pv_get_string_representation(v4, 0, 0, a2) + 1;
}

{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return pv_get_string_representation(v4, 0, 0, a2) + 1;
}

{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  v6[0] = v2;
  v6[1] = v3;
  return pv_get_string_representation(v6, 0, 0, a2) + 1;
}

{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  v6[0] = v2;
  v6[1] = v3;
  return pv_get_string_representation(v6, 0, 0, a2) + 1;
}

uint64_t pv_get_string_representation(__int128 *a1, char *a2, size_t a3, uint64_t a4)
{
  v20 = *a1;
  v21 = a1[1];
  if (a2)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  string_representation = pv_get_string_representation(*a1, a2, v7, a4);
  LODWORD(v9) = string_representation;
  v10 = 0;
  for (i = 1; i != 4; ++i)
  {
    v12 = v10 + string_representation;
    if (a2)
    {
      v13 = &a2[v12];
    }

    else
    {
      v13 = 0;
    }

    if (a2)
    {
      v14 = a3 - v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = snprintf(v13, v14, ", ", v20, v21, v22, v23);
    v10 = v12 + v15;
    v16 = v15 + v9;
    v22 = v20;
    v23 = v21;
    if (a2)
    {
      v17 = &a2[v10];
    }

    else
    {
      v17 = 0;
    }

    if (a2)
    {
      v18 = a3 - v10;
    }

    else
    {
      v18 = 0;
    }

    string_representation = pv_get_string_representation(*(&v22 + (i & 3)), v17, v18, a4);
    v9 = (string_representation + v16);
  }

  return v9;
}

{
  v20 = *a1;
  v21 = a1[1];
  if (a2)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  string_representation = pv_get_string_representation(COERCE_FLOAT(*a1), a2, v7, a4);
  LODWORD(v9) = string_representation;
  v10 = 0;
  for (i = 1; i != 8; ++i)
  {
    v12 = v10 + string_representation;
    if (a2)
    {
      v13 = &a2[v12];
    }

    else
    {
      v13 = 0;
    }

    if (a2)
    {
      v14 = a3 - v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = snprintf(v13, v14, ", ", v20, v21, v22, v23);
    v10 = v12 + v15;
    v16 = v15 + v9;
    v22 = v20;
    v23 = v21;
    if (a2)
    {
      v17 = &a2[v10];
    }

    else
    {
      v17 = 0;
    }

    if (a2)
    {
      v18 = a3 - v10;
    }

    else
    {
      v18 = 0;
    }

    string_representation = pv_get_string_representation(*(&v22 + (i & 7)), v17, v18, a4);
    v9 = (string_representation + v16);
  }

  return v9;
}

{
  v22 = a1[2];
  v23 = a1[3];
  v20 = *a1;
  v21 = a1[1];
  if (a2)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  string_representation = pv_get_string_representation(*a1, a2, v7, a4);
  LODWORD(v9) = string_representation;
  v10 = 0;
  for (i = 1; i != 8; ++i)
  {
    v12 = v10 + string_representation;
    if (a2)
    {
      v13 = &a2[v12];
    }

    else
    {
      v13 = 0;
    }

    if (a2)
    {
      v14 = a3 - v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = snprintf(v13, v14, ", ", v20, v21, v22, v23, v24, v25, v26, v27);
    v10 = v12 + v15;
    v16 = v15 + v9;
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    if (a2)
    {
      v17 = &a2[v10];
    }

    else
    {
      v17 = 0;
    }

    if (a2)
    {
      v18 = a3 - v10;
    }

    else
    {
      v18 = 0;
    }

    string_representation = pv_get_string_representation(*(&v24 + (i & 7)), v17, v18, a4);
    v9 = (string_representation + v16);
  }

  return v9;
}

{
  v22 = a1[2];
  v23 = a1[3];
  v20 = *a1;
  v21 = a1[1];
  if (a2)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  string_representation = pv_get_string_representation(COERCE_FLOAT(*a1), a2, v7, a4);
  LODWORD(v9) = string_representation;
  v10 = 0;
  for (i = 1; i != 16; ++i)
  {
    v12 = v10 + string_representation;
    if (a2)
    {
      v13 = &a2[v12];
    }

    else
    {
      v13 = 0;
    }

    if (a2)
    {
      v14 = a3 - v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = snprintf(v13, v14, ", ", v20, v21, v22, v23, v24, v25, v26, v27);
    v10 = v12 + v15;
    v16 = v15 + v9;
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    if (a2)
    {
      v17 = &a2[v10];
    }

    else
    {
      v17 = 0;
    }

    if (a2)
    {
      v18 = a3 - v10;
    }

    else
    {
      v18 = 0;
    }

    string_representation = pv_get_string_representation(*(&v24 + (i & 0xF)), v17, v18, a4);
    v9 = (string_representation + v16);
  }

  return v9;
}

void sub_25F974848(_Unwind_Exception *a1)
{
  v4 = v3;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_25F974A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PVRenderer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25F974DF0(_Unwind_Exception *a1)
{
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  _Unwind_Resume(a1);
}

void sub_25F9752BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (*v10)
  {
    (*(**v10 + 24))(*v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F975654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F975890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F975A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F975DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  (*(*v6 + 24))(v6);
  if (a6)
  {
    (*(*a6 + 24))(a6);
  }

  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

uint64_t std::allocator<HGRef<PVCVPixelBufferPool>>::destroy[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

void PVCVPixelBufferPool::PVCVPixelBufferPool(PVCVPixelBufferPool *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[4] = *MEMORY[0x277D85DE8];
  HGObject::HGObject(this);
  *v8 = &unk_2871CEC10;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = MEMORY[0x277CC4DE8];
  *(v8 + 32) = a4;
  v16[0] = MEMORY[0x277CBEC10];
  v10 = *MEMORY[0x277CC4E30];
  v15[0] = *v9;
  v15[1] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a4];
  v16[1] = v11;
  v15[2] = *MEMORY[0x277CC4EC8];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2];
  v16[2] = v12;
  v15[3] = *MEMORY[0x277CC4DD8];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v16[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];

  if (CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], 0, v14, this + 5))
  {
    NSLog(&cfstr_UnableToCreate.isa);
    *(this + 5) = 0;
  }
}

void sub_25F9761A0(_Unwind_Exception *a1)
{
  v5 = v4;

  HGObject::~HGObject(v1);
  _Unwind_Resume(a1);
}

void PVCVPixelBufferPool::~PVCVPixelBufferPool(PVCVPixelBufferPool *this)
{
  PVCVPixelBufferPool::~PVCVPixelBufferPool(this);

  HGObject::operator delete(v1);
}

{
  *this = &unk_2871CEC10;
  v2 = *(this + 5);
  if (v2)
  {
    CVPixelBufferPoolRelease(v2);
  }

  HGObject::~HGObject(this);
}

uint64_t std::vector<HGRef<PVCVPixelBufferPool>>::__emplace_back_slow_path<HGRef<PVCVPixelBufferPool> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v7);
  }

  v8 = (8 * v2);
  v17 = 0;
  v18 = v8;
  v19 = (8 * v2);
  v9 = *a2;
  *v8 = *a2;
  if (v9)
  {
    (*(*v9 + 16))(v9);
    v8 = v18;
    v10 = v19;
  }

  else
  {
    v10 = 8 * v2;
  }

  *&v19 = v10 + 8;
  v11 = *(a1 + 8);
  v12 = (v8 + *a1 - v11);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HGRef<PVCVPixelBufferPool>>,HGRef<PVCVPixelBufferPool>*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<HGRef<PVCVPixelBufferPool>>::~__split_buffer(&v17);
  return v16;
}

void sub_25F9763A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<HGRef<PVCVPixelBufferPool>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HGRef<PVCVPixelBufferPool>>,HGRef<PVCVPixelBufferPool>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *a4 = *v7;
      if (v8)
      {
        (*(*v8 + 16))(v8);
        a4 = v13;
      }

      ++v7;
      v13 = ++a4;
    }

    while (v7 != a3);
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator<HGRef<PVCVPixelBufferPool>>::destroy[abi:ne200100](a1, v5++);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<PVCVPixelBufferPool>>,HGRef<PVCVPixelBufferPool>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<PVCVPixelBufferPool>>,HGRef<PVCVPixelBufferPool>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<PVCVPixelBufferPool>>,HGRef<PVCVPixelBufferPool>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<PVCVPixelBufferPool>>,HGRef<PVCVPixelBufferPool>*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      result = std::allocator<HGRef<PVCVPixelBufferPool>>::destroy[abi:ne200100](v5, --v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **std::__split_buffer<HGRef<PVCVPixelBufferPool>>::~__split_buffer(void **a1)
{
  std::__split_buffer<HGRef<PVCVPixelBufferPool>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<HGRef<PVCVPixelBufferPool>>::clear[abi:ne200100](uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 32);
      *(v3 + 16) = v1 - 8;
      result = std::allocator<HGRef<PVCVPixelBufferPool>>::destroy[abi:ne200100](v4, (v1 - 8));
      v1 = *(v3 + 16);
    }

    while (v1 != v2);
  }

  return result;
}

void std::vector<HGRef<PVCVPixelBufferPool>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::allocator<HGRef<PVCVPixelBufferPool>>::destroy[abi:ne200100](v1, --v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_25F976E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v32 = *(v30 - 192);
  if (v32)
  {
    (*(*v32 + 24))(v32);
  }

  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (*v29)
  {
    (*(**v29 + 24))(*v29);
  }

  HGTraceGuard::~HGTraceGuard(&a29);
  _Unwind_Resume(a1);
}

void sub_25F9780BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13)
{
  v19 = *(v17 - 152);
  if (v19)
  {
    (*(*v19 + 24))(v19);
  }

  HGTraceGuard::~HGTraceGuard((v17 - 112));
  _Unwind_Resume(a1);
}

void sub_25F978CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PVEffect;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25F979BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void PVLogError(void *a1, void *a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (a3)
  {
    v8 = *MEMORY[0x277CCA450];
    v9[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:v6 code:-1 userInfo:v7];
  }
}

void sub_25F97A6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

void sub_25F97B0A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<HGRef<HGBitmap>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<HGRef<HGBitmap>>::__emplace_back_slow_path<HGRef<HGBitmap> const&>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *v3 = *a2;
    if (v4)
    {
      (*(*v4 + 16))(v4);
    }

    result = (v3 + 1);
    *(a1 + 8) = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_25F97B834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<HGRef<HGBitmap>>::__emplace_back_slow_path<HGRef<HGBitmap> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v7);
  }

  v8 = (8 * v2);
  v17 = 0;
  v18 = v8;
  v19 = (8 * v2);
  v9 = *a2;
  *v8 = *a2;
  if (v9)
  {
    (*(*v9 + 16))(v9);
    v8 = v18;
    v10 = v19;
  }

  else
  {
    v10 = 8 * v2;
  }

  *&v19 = v10 + 8;
  v11 = *(a1 + 8);
  v12 = (v8 + *a1 - v11);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HGRef<HGBitmap>>,HGRef<HGBitmap>*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<HGRef<HGBitmap>>::~__split_buffer(&v17);
  return v16;
}

void sub_25F97BAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<HGRef<HGBitmap>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_25F97BF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);

  _Unwind_Resume(a1);
}

void sub_25F97C9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_25F97CEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__6(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

void sub_25F97D224(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id CreatePVLPThrottlingControlParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [PVLivePlayerThrottlingControlParameters CreateControllerParameters:a1];

  return v3;
}

void sub_25F97D9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, void *a12)
{
  if (v19)
  {
  }

  if (v17)
  {
  }

  if (v14)
  {
  }

  _Unwind_Resume(a1);
}

void sub_25F97DEB4(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x2666E9F00](v3, 0x10A1C40BBCAB520);

  _Unwind_Resume(a1);
}

void sub_25F97E020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, HGSynchronizable *a9)
{
  HGSynchronizer::~HGSynchronizer(&a9);

  _Unwind_Resume(a1);
}

void sub_25F97E260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25F97E5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>,std::__map_value_compare<PVSPI_OSThermalPressureLevel,std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>,std::less<PVSPI_OSThermalPressureLevel>,true>,std::allocator<std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>>>::__emplace_unique_key_args<PVSPI_OSThermalPressureLevel,std::piecewise_construct_t const&,std::tuple<PVSPI_OSThermalPressureLevel const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>,std::__map_value_compare<PVSPI_OSThermalPressureLevel,std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>,std::less<PVSPI_OSThermalPressureLevel>,true>,std::allocator<std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>>>::__erase_unique<PVSPI_OSThermalPressureLevel>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::erase(a1, v4);
  return 1;
}

int *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,PVSPI_OSThermalPressureLevel *,false>(int *result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v56 = *(a2 - 1);
        v57 = *v9;
        if (v56 < *v9)
        {
          *v9 = v56;
          *(a2 - 1) = v57;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v58 = v9 + 1;
      v59 = v9[1];
      v60 = v9 + 2;
      v61 = v9[2];
      v62 = *v9;
      if (v59 >= v62)
      {
        if (v61 >= v59)
        {
          goto LABEL_120;
        }

        *v58 = v61;
        *v60 = v59;
        v63 = v9;
        v64 = v9 + 1;
        result = v59;
        if (v61 < v62)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v63 = v9;
        v64 = v9 + 2;
        result = *v9;
        if (v61 >= v59)
        {
          *v9 = v59;
          v9[1] = v62;
          v63 = v9 + 1;
          v64 = v9 + 2;
          result = v62;
          if (v61 >= v62)
          {
LABEL_120:
            LODWORD(v59) = v61;
            goto LABEL_121;
          }
        }

LABEL_113:
        *v63 = v61;
        *v64 = v62;
        LODWORD(v59) = result;
      }

LABEL_121:
      v77 = *(a2 - 1);
      if (v77 < v59)
      {
        *v60 = v77;
        *(a2 - 1) = v59;
        v78 = *v60;
        v79 = *v58;
        if (v78 < v79)
        {
          v9[1] = v78;
          v9[2] = v79;
          v80 = *v9;
          if (v78 < *v9)
          {
            *v9 = v78;
            v9[1] = v80;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v47 = v9 + 1;
      v48 = v9[1];
      v50 = v9 + 2;
      v49 = v9[2];
      v51 = *v9;
      if (v48 >= v51)
      {
        if (v49 >= v48)
        {
          v54 = *v9;
          LODWORD(v51) = v9[1];
        }

        else
        {
          v52 = v9;
          v53 = v9 + 1;
          *v47 = v49;
          *v50 = v48;
          v54 = v49;
          result = v51;
          v55 = v48;
          if (v49 < v51)
          {
            goto LABEL_129;
          }

          v54 = v51;
          LODWORD(v51) = v49;
          LODWORD(v49) = v48;
        }
      }

      else
      {
        if (v49 < v48)
        {
          v52 = v9;
          v53 = v9 + 2;
          v54 = v9[2];
          result = v9[1];
          v55 = *v9;
          goto LABEL_129;
        }

        v52 = v9 + 1;
        v53 = v9 + 2;
        *v9 = v48;
        v9[1] = v51;
        v54 = v48;
        result = v49;
        v55 = v51;
        if (v49 >= v51)
        {
          v54 = v48;
        }

        else
        {
LABEL_129:
          *v52 = v49;
          *v53 = v51;
          LODWORD(v51) = result;
          LODWORD(v49) = v55;
        }
      }

      v82 = v9[3];
      if (v82 >= v49)
      {
        LODWORD(v49) = v9[3];
      }

      else
      {
        v9[2] = v82;
        v9[3] = v49;
        if (v82 < v51)
        {
          *v47 = v82;
          *v50 = v51;
          if (v82 < v54)
          {
            *v9 = v82;
            v9[1] = v54;
          }
        }
      }

      v83 = *(a2 - 1);
      if (v83 >= v49)
      {
        return result;
      }

      v9[3] = v83;
      *(a2 - 1) = v49;
      v84 = v9[2];
      v74 = v9[3];
      if (v74 >= v84)
      {
        return result;
      }

      v9[2] = v74;
      v9[3] = v84;
      v85 = v9[1];
      if (v74 >= v85)
      {
        return result;
      }

      v9[1] = v74;
      v9[2] = v85;
LABEL_141:
      v86 = *v9;
      if (v74 < *v9)
      {
        *v9 = v74;
        v9[1] = v86;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      v65 = v9 + 1;
      v67 = v9 == a2 || v65 == a2;
      if (a5)
      {
        if (!v67)
        {
          v68 = 0;
          v69 = v9;
          do
          {
            v71 = *v69;
            v70 = v69[1];
            v69 = v65;
            if (v70 < v71)
            {
              v72 = v68;
              while (1)
              {
                *(v9 + v72 + 4) = v71;
                if (!v72)
                {
                  break;
                }

                v71 = *(v9 + v72 - 4);
                v72 -= 4;
                if (v70 >= v71)
                {
                  v73 = (v9 + v72 + 4);
                  goto LABEL_99;
                }
              }

              v73 = v9;
LABEL_99:
              *v73 = v70;
            }

            v65 = v69 + 1;
            v68 += 4;
          }

          while (v69 + 1 != a2);
        }
      }

      else if (!v67)
      {
        do
        {
          v76 = *v8;
          v75 = v8[1];
          v8 = v65;
          if (v75 < v76)
          {
            do
            {
              *v65 = v76;
              v76 = *(v65 - 2);
              --v65;
            }

            while (v75 < v76);
            *v65 = v75;
          }

          v65 = v8 + 1;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PVSPI_OSThermalPressureLevel *,PVSPI_OSThermalPressureLevel *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *(a2 - 1);
    if (v12 >= 0x81)
    {
      v16 = *v13;
      v17 = *v9;
      if (*v13 >= *v9)
      {
        if (v15 < v16)
        {
          *v13 = v15;
          *(a2 - 1) = v16;
          v20 = *v9;
          if (*v13 < *v9)
          {
            *v9 = *v13;
            *v13 = v20;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          *v9 = v15;
          goto LABEL_29;
        }

        *v9 = v16;
        *v13 = v17;
        v22 = *(a2 - 1);
        if (v22 < v17)
        {
          *v13 = v22;
LABEL_29:
          *(a2 - 1) = v17;
        }
      }

      v23 = (v13 - 1);
      v24 = *(v13 - 1);
      v25 = v9[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v9[1];
          if (*v23 < v27)
          {
            v9[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 < v24)
        {
          v9[1] = v26;
          goto LABEL_43;
        }

        v9[1] = v24;
        *v23 = v25;
        v29 = *(a2 - 2);
        if (v29 < v25)
        {
          *v23 = v29;
LABEL_43:
          *(a2 - 2) = v25;
        }
      }

      v32 = v13[1];
      v30 = (v13 + 1);
      v31 = v32;
      v33 = v9[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v9[2];
          if (*v30 < v35)
          {
            v9[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v9[2] = v34;
          goto LABEL_52;
        }

        v9[2] = v31;
        *v30 = v33;
        v36 = *(a2 - 3);
        if (v36 < v33)
        {
          *v30 = v36;
LABEL_52:
          *(a2 - 3) = v33;
        }
      }

      v37 = *v14;
      v38 = *v23;
      v39 = *v30;
      if (*v14 >= *v23)
      {
        if (v39 < v37)
        {
          *v14 = v39;
          *v30 = v37;
          v30 = v14;
          v37 = v38;
          if (v39 < v38)
          {
            goto LABEL_59;
          }

          v37 = v39;
        }
      }

      else
      {
        if (v39 >= v37)
        {
          *v23 = v37;
          *v14 = v38;
          v23 = v14;
          v37 = v39;
          if (v39 >= v38)
          {
            v37 = v38;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v23 = v39;
        *v30 = v38;
      }

LABEL_60:
      v40 = *v9;
      *v9 = v37;
      *v14 = v40;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v18 = *v9;
    v19 = *v13;
    if (*v9 < *v14)
    {
      if (v15 < v18)
      {
        *v14 = v15;
        goto LABEL_38;
      }

      *v14 = v18;
      *v9 = v19;
      v28 = *(a2 - 1);
      if (v28 < v19)
      {
        *v9 = v28;
LABEL_38:
        *(a2 - 1) = v19;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v15 >= v18)
    {
      goto LABEL_39;
    }

    *v9 = v15;
    *(a2 - 1) = v18;
    v21 = *v14;
    if (*v9 >= *v14)
    {
      goto LABEL_39;
    }

    *v14 = *v9;
    *v9 = v21;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v9 - 1) >= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,PVSPI_OSThermalPressureLevel *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v41 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,PVSPI_OSThermalPressureLevel *,std::__less<void,void> &>(v9, a2);
    if ((v42 & 1) == 0)
    {
      goto LABEL_67;
    }

    v43 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PVSPI_OSThermalPressureLevel *>(v9, v41);
    v9 = v41 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PVSPI_OSThermalPressureLevel *>(v41 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v41;
      if (v43)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v43)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,PVSPI_OSThermalPressureLevel *,false>(v8, v41, a3, -v11, a5 & 1);
      v9 = v41 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v44 = *v9;
  v45 = v9[1];
  v46 = *(a2 - 1);
  if (v45 >= *v9)
  {
    if (v46 >= v45)
    {
      return result;
    }

    v9[1] = v46;
    *(a2 - 1) = v45;
    v74 = v9[1];
    goto LABEL_141;
  }

  if (v46 >= v45)
  {
    *v9 = v45;
    v9[1] = v44;
    v81 = *(a2 - 1);
    if (v81 >= v44)
    {
      return result;
    }

    v9[1] = v81;
  }

  else
  {
    *v9 = v46;
  }

  *(a2 - 1) = v44;
  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,PVSPI_OSThermalPressureLevel *,std::__less<void,void> &>(int *a1, int *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,PVSPI_OSThermalPressureLevel *,std::__less<void,void> &>(int *a1, int *a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[++v2];
  }

  while (v4 < v3);
  v5 = &a1[v2];
  v6 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v8 = *--a2;
    }

    while (v8 >= v3);
  }

  else
  {
    do
    {
      v7 = *--a2;
    }

    while (v7 >= v3);
  }

  if (v5 < a2)
  {
    v9 = *a2;
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      *v10 = v9;
      *v11 = v4;
      do
      {
        v12 = v10[1];
        ++v10;
        v4 = v12;
      }

      while (v12 < v3);
      do
      {
        v13 = *--v11;
        v9 = v13;
      }

      while (v13 >= v3);
    }

    while (v10 < v11);
    v6 = v10 - 1;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PVSPI_OSThermalPressureLevel *>(_DWORD *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v46 = *(a2 - 1);
          if (v46 >= v16)
          {
            return 1;
          }

          a1[1] = v46;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_68:
      v51 = *a1;
      if (v33 < *a1)
      {
        *a1 = v33;
        a1[1] = v51;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v47 = a1[3];
          if (v47 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v47;
            a1[3] = v6;
            if (v47 < v8)
            {
              *v4 = v47;
              *v7 = v8;
              if (v47 < v11)
              {
                *a1 = v47;
                a1[1] = v11;
              }
            }
          }

          v48 = *(a2 - 1);
          if (v48 >= v6)
          {
            return 1;
          }

          a1[3] = v48;
          *(a2 - 1) = v6;
          v49 = a1[2];
          v33 = a1[3];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v49;
          v50 = a1[1];
          if (v33 >= v50)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v50;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 < v26)
        {
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 < v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v45 = *a1;
            if (v43 < *a1)
            {
              *a1 = v43;
              a1[1] = v45;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 12; ; i += 4)
  {
    v37 = *v34;
    v38 = *v20;
    if (*v34 < v38)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 4;
        if (v39 == 4)
        {
          break;
        }

        v38 = *(a1 + v39 - 8);
        v39 -= 4;
        if (v37 >= v38)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v20 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PVSPI_OSThermalPressureLevel *,PVSPI_OSThermalPressureLevel *>(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PVSPI_OSThermalPressureLevel *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PVSPI_OSThermalPressureLevel *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 < v22;
            if (v23 > v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v18 = v21;
            }

            else
            {
              v14 = v19;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 4) >> 2;
          v24 = v25 < 2;
          v26 = v25 - 2;
          if (!v24)
          {
            v27 = v26 >> 1;
            v28 = &a1[v27];
            v29 = *v28;
            v30 = *v18;
            if (*v28 < *v18)
            {
              do
              {
                *v18 = v29;
                v18 = v28;
                if (!v27)
                {
                  break;
                }

                v27 = (v27 - 1) >> 1;
                v28 = &a1[v27];
                v29 = *v28;
              }

              while (*v28 < v30);
              *v18 = v30;
            }
          }
        }

        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PVSPI_OSThermalPressureLevel *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 <= v11)
        {
          v10 = v8[1];
        }

        if (*v8 < v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 4 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 <= v14)
            {
              v10 = v8[1];
            }

            if (*v8 >= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 >= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

void sub_25F980190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9805C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PVVideoCompositing;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25F9807DC(_Unwind_Exception *a1)
{
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  _Unwind_Resume(a1);
}

void sub_25F981400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a19)
  {
    (*(*a19 + 24))(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2666EAFC0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_25F981D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGSynchronizer::~HGSynchronizer(va);

  _Unwind_Resume(a1);
}

void sub_25F981FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, HGSynchronizable *a11)
{
  HGSynchronizer::~HGSynchronizer(&a11);

  _Unwind_Resume(a1);
}

void sub_25F9820C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, HGSynchronizable *a11)
{
  HGSynchronizer::~HGSynchronizer(&a11);

  _Unwind_Resume(a1);
}

void sub_25F982654(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

uint64_t std::deque<int>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<unsigned long *>::~__split_buffer(a1);
}

void sub_25F982858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PVCameraPreviewRequest;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

HGRenderNode *PVCameraPreviewRenderNode::PVCameraPreviewRenderNode(HGRenderNode *a1, void *a2)
{
  v3 = a2;
  HGRenderNode::HGRenderNode(a1);
  *a1 = &unk_2871CECA0;
  *(a1 + 26) = MEMORY[0x2666EAFC0](v3);

  return a1;
}

void PVCameraPreviewRenderNode::Notify(PVCameraPreviewRenderNode *this, HGRenderNode *a2)
{
  v3 = objc_autoreleasePoolPush();
  if (HGRenderNode::GetState(this) == 9)
  {
    Renderer = HGRenderNode::GetRenderer(this);
    if (Renderer)
    {
    }

    else
    {
      v5 = 0;
    }

    v6 = PVInstructionGraphContext::HGNodeCache(this);
    v7 = (*(*v5 + 104))(v5, v6);
    if (this)
    {
    }

    v8 = [PVRenderedTexture alloc];
    v12 = v7;
    if (v7)
    {
      (*(*v7 + 16))(v7);
    }

    v9 = [(PVRenderedTexture *)v8 initWithHGGLTexture:&v12];
    if (v12)
    {
      (*(*v12 + 24))(v12);
    }

    v10 = MEMORY[0x2666EAFC0](*(this + 26));
    v11 = v10;
    if (v10)
    {
      (*(v10 + 16))(v10, v9);
    }

    if (v7)
    {
      (*(*v7 + 24))(v7);
    }
  }

  objc_autoreleasePoolPop(v3);
}

void sub_25F982E5C(_Unwind_Exception *a1)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(a1);
}

void PVCameraPreviewGraphBuildJob::PVCameraPreviewGraphBuildJob(HGRenderJob *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  HGRenderJob::HGRenderJob(a1);
}

void sub_25F982FA4(_Unwind_Exception *a1)
{
  HGRenderJob::~HGRenderJob(v3);

  _Unwind_Resume(a1);
}

void PVCameraPreviewGraphBuildJob::~PVCameraPreviewGraphBuildJob(id *this)
{
  *this = &unk_2871CECF0;

  v2 = this[44];
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGRenderJob::~HGRenderJob(this);
}

{
  PVCameraPreviewGraphBuildJob::~PVCameraPreviewGraphBuildJob(this);

  HGObject::operator delete(v1);
}

void PVCameraPreviewGraphBuildJob::NewRenderNode(PVCameraPreviewGraphBuildJob *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v3 = *(this + 45);
  if (v3)
  {
    [v3 time];
    v3 = *(this + 45);
  }

  [v3 effects];
  objc_claimAutoreleasedReturnValue();
  v4 = [*(this + 45) sampleBuffer];
  v5 = *(this + 44);
  if (v5)
  {
    (*(*v5 + 16))(*(this + 44));
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(v4);
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(ImageBuffer);
  HGRectMake4i(0, 0, Width, Height);
  Renderer = HGRenderJob::GetRenderer(this);
  if (Renderer)
  {
    if (v10)
    {
      (*(*v10 + 16))(v10);
    }
  }

  v11 = HGObject::operator new(0x88uLL);
  PVInstructionGraphContext::PVInstructionGraphContext(v11, *(this + 47));
}

void sub_25F983A4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void PVCameraPreviewGraphBuildJob::Notify(HGRenderJob *this, HGRenderJob *a2)
{
  v3 = objc_autoreleasePoolPush();
  State = HGRenderJob::GetState(this);
  if (this)
  {
    if (State == 4)
    {
      if (v5)
      {
        PVCameraPreviewGraphBuildJob::NewRenderNode(v5, &v6);
      }
    }
  }

  objc_autoreleasePoolPop(v3);
}

void sub_25F984048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  (*(*v9 + 24))(v9);
  _Unwind_Resume(a1);
}

void sub_25F984204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

void sub_25F98429C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = PVCameraPreviewRenderer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25F9844D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  _Unwind_Resume(a1);
}

void PVCameraPreviewRenderNode::~PVCameraPreviewRenderNode(id *this)
{

  HGRenderNode::~HGRenderNode(this);
}

{

  HGRenderNode::~HGRenderNode(this);

  HGObject::operator delete(v2);
}

void PVPreviewInstructionGraphContext::~PVPreviewInstructionGraphContext(PVInstructionGraphContext *this)
{
  PVInstructionGraphContext::~PVInstructionGraphContext(this);

  HGObject::operator delete(v1);
}

__n128 PVPreviewInstructionGraphContext::RenderTransform@<Q0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277CBF2C0];
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  *a1 = *MEMORY[0x277CBF2C0];
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

void sub_25F98B9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_25F98C348(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_25F98CBA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PVMotionEffect;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25F98CCC8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25F990680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, void *a43, void *a44)
{

  v46 = STACK[0x2B8];
  if (STACK[0x2B8])
  {
    STACK[0x2C0] = v46;
    operator delete(v46);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&STACK[0x2D0], STACK[0x2D8]);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&STACK[0x2E8], STACK[0x2F0]);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&STACK[0x300], STACK[0x308]);
  std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::destroy(&STACK[0x318], STACK[0x320]);

  if (*a43)
  {
    (*(**a43 + 24))(*a43);
  }

  _Unwind_Resume(a1);
}

__n128 PVInputHGNodeMap<unsigned int>::GetPixelTransform@<Q0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v3 = a1 + 56;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 != v3 && *(v6 + 32) <= a2)
  {
    v11 = *(v6 + 120);
    *(a3 + 64) = *(v6 + 104);
    *(a3 + 80) = v11;
    v12 = *(v6 + 152);
    *(a3 + 96) = *(v6 + 136);
    *(a3 + 112) = v12;
    v13 = *(v6 + 56);
    *a3 = *(v6 + 40);
    *(a3 + 16) = v13;
    result = *(v6 + 72);
    v14 = *(v6 + 88);
    *(a3 + 32) = result;
    *(a3 + 48) = v14;
  }

  else
  {
LABEL_9:
    *(a3 + 120) = 0x3FF0000000000000;
    *(a3 + 80) = 0x3FF0000000000000;
    *(a3 + 40) = 0x3FF0000000000000;
    *a3 = 0x3FF0000000000000;
    result.n128_u64[0] = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
  }

  return result;
}

void sub_25F991DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13)
{
  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  _Unwind_Resume(a1);
}

void sub_25F992BB0(_Unwind_Exception *a1)
{
  HGObject::operator delete(v3);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  _Unwind_Resume(a1);
}

void sub_25F993350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  PCCFRef<CGColorSpace *>::~PCCFRef((v12 + 72));

  _Unwind_Resume(a1);
}

void sub_25F993790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, CGColorSpace *a38)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a38);

  _Unwind_Resume(a1);
}

void sub_25F993D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);

  _Unwind_Resume(a1);
}

void sub_25F9945DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, PCString a18)
{
  PCString::~PCString(&a18);

  _Unwind_Resume(a1);
}

void sub_25F99567C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__8(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_25F995794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F9958B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__2145(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_25F996A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F996E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_25F997164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCString a12)
{
  PCString::~PCString(&a12);

  _Unwind_Resume(a1);
}

void sub_25F99844C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, void *a28, void *a29, void *a30, void *a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49)
{
  OZARFrameInfo::~OZARFrameInfo(&a49);

  _Unwind_Resume(a1);
}

void PVMotionDocumentInfo::~PVMotionDocumentInfo(PVMotionDocumentInfo *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(*(this + 21), *(v2 + 8));
    MEMORY[0x2666E9F00](v2, 0x1020C4062D53EE8);
    *(this + 21) = 0;
  }
}

CGColorSpace **PCCFRef<CGColorSpace *>::operator=(CGColorSpace **a1, CGColorSpace **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      PCCFRefTraits<CGColorSpace *>::release(v3);
      v4 = *a2;
    }

    *a1 = v4;
    if (*a2)
    {
      PCCFRefTraits<CGColorSpace *>::retain(v4);
    }
  }

  return a1;
}

void *std::map<unsigned int,HGRef<HGNode>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned int,HGRef<HGNode>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,HGRef<HGNode>>,std::__tree_node<std::__value_type<unsigned int,HGRef<HGNode>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<unsigned int,HGRef<HGNode>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,HGRef<HGNode>>,std::__tree_node<std::__value_type<unsigned int,HGRef<HGNode>>,void *> *,long>>>(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,HGRef<HGNode>> const&>(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,HGRef<HGNode>> const&>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__find_equal<unsigned int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__construct_node<std::pair<unsigned int const,HGRef<HGNode>> const&>();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__find_equal<unsigned int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *std::map<unsigned int,unsigned int>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned int,unsigned int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned int>,std::__tree_node<std::__value_type<unsigned int,unsigned int>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<unsigned int,unsigned int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned int>,std::__tree_node<std::__value_type<unsigned int,unsigned int>,void *> *,long>>>(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__find_equal<unsigned int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__find_equal<unsigned int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *std::map<unsigned int,PCRect<double>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned int,PCRect<double>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,PCRect<double>>,std::__tree_node<std::__value_type<unsigned int,PCRect<double>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<unsigned int,PCRect<double>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,PCRect<double>>,std::__tree_node<std::__value_type<unsigned int,PCRect<double>>,void *> *,long>>>(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned int,PCRect<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCRect<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCRect<double>>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,PCRect<double>> const&>(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned int,PCRect<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCRect<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCRect<double>>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,PCRect<double>> const&>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__find_equal<unsigned int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::map<unsigned int,PCMatrix44Tmpl<double>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned int,PCMatrix44Tmpl<double>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::__tree_node<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<unsigned int,PCMatrix44Tmpl<double>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::__tree_node<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,void *> *,long>>>(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,PCMatrix44Tmpl<double>> const&>(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,PCMatrix44Tmpl<double>> const&>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__find_equal<unsigned int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t **std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned int>,std::__tree_node<std::__value_type<unsigned int,unsigned int>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = *(v9 + 7);
          *(v8 + 8) = *(v9 + 8);
          std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_multi<std::pair<unsigned int const,unsigned int> const&>();
  }

  return result;
}

void sub_25F9993C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 7))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

PVNCLCTriplet *MakePVNCLCTriplet(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = [[PVNCLCTriplet alloc] initWithColorPrimaryStr:a1 hgColorPrimary:a2 transferFunctionStr:a3 hgTransformFunction:a4 ycbcrMatrixStr:a5 hgYCbCrMatrix:a6];

  return v6;
}

CGColorSpaceRef makeColorSpaceFromNCLC(const __CFString *a1, const __CFString *a2, const __CFString *a3)
{
  keys[3] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC4CC0];
  keys[0] = *MEMORY[0x277CC4C00];
  keys[1] = v3;
  keys[2] = *MEMORY[0x277CC4D10];
  values[0] = a1;
  values[1] = a2;
  values[2] = a3;
  v6 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v6);
  PCCFRef<__CFDictionary const*>::~PCCFRef(&v6);
  return ColorSpaceFromAttachments;
}

const void **PCCFRef<__CFDictionary const*>::~PCCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t ApplyTransformToYUVConform(void *a1, void *a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v6);
  (*(*v6 + 576))(v6, *a2);
  v7 = HGObject::operator new(0x90uLL);
  HGTransform::HGTransform(v7);
  (*(*v7 + 56))(v7);
  (*(**a2 + 40))(*a2, v17);
  (*(*v7 + 64))(v7, v17);
  v8 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v8);
  (*(*v8 + 576))(v8, v7);
  v9 = (*(**a1 + 128))(*a1, 0);
  v10 = (*(**a1 + 128))(*a1, 1);
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (!v12)
  {
    (*(*v6 + 120))(v6, 0, v9);
    (*(*v8 + 120))(v8, 0, v11);
    if (a3)
    {
      +[PVEnvironment PVExportPrefilterValue];
      (*(*v6 + 592))(v6, 0);
      +[PVEnvironment PVExportPrefilterValue];
      v15 = v14;
    }

    else
    {
      v15 = 0.0;
      (*(*v6 + 592))(v6, 0, 0.0);
    }

    (*(*v8 + 592))(v8, 0, v15);
    (*(**a1 + 120))(*a1, 0, v6);
    (*(**a1 + 120))(*a1, 1, v8);
  }

  (*(*v8 + 24))(v8);
  (*(*v7 + 24))(v7);
  (*(*v6 + 24))(v6);
  return v13;
}

void sub_25F99B818(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t HGXFormForHGTransform@<X0>(const void **a1@<X0>, void *a2@<X1>, int a3@<W2>, HGXForm **a4@<X8>)
{
  v8 = *a1;
  *a4 = v8;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  result = (*(**a2 + 224))();
  if (!result)
  {
    v10 = *a1;
    if (!v10)
    {
      goto LABEL_22;
    }

    (*(*v10 + 16))(v10);
    v11 = *v10;
    {
      v12 = (*(v11 + 128))(v10, 0);
      v13 = v12;
      if (v12)
      {
        (*(*v12 + 16))(v12);
      }

      if (v10 == v13)
      {
        (*(*v13 + 24))(v13);
      }

      else
      {
        (*(*v10 + 24))(v10);
        if (!v13)
        {
          v10 = 0;
          goto LABEL_22;
        }

        v10 = v13;
      }
    }

    v14 = *v10;
    {
      v15 = (*(v14 + 128))(v10, 0);
      v16 = v15;
      if (v15)
      {
        (*(*v15 + 16))(v15);
      }

      if (v10 == v16)
      {
        (*(*v16 + 24))(v16);
      }

      else
      {
        (*(*v10 + 24))(v10);
        v10 = v16;
        if (!v16)
        {
LABEL_22:
          v17 = 1;
          v18 = 1;
          if (a3)
          {
            goto LABEL_23;
          }

          goto LABEL_20;
        }
      }
    }

    v17 = 0;
    if (a3)
    {
LABEL_23:
      +[PVEnvironment PVExportPrefilterValue];
      v19 = v20 > 0.0;
LABEL_24:
      if (v18 || v19)
      {
        goto LABEL_34;
      }

      v27 = v10;
      if ((v17 & 1) == 0)
      {
        (*(*v10 + 16))(v10);
      }

      v21 = *a2;
      v26 = v21;
      if (v21)
      {
        (*(*v21 + 16))(v21);
      }

      v22 = ApplyTransformToYUVConform(&v27, &v26, a3);
      if (v21)
      {
        (*(*v21 + 24))(v21);
      }

      result = v27;
      if (v27)
      {
        result = (*(*v27 + 24))(v27);
      }

      if ((v22 & 1) == 0)
      {
LABEL_34:
        v23 = HGObject::operator new(0x210uLL);
        HGXForm::HGXForm(v23);
        (*(*v23 + 576))(v23, *a2);
        v24 = *a4;
        (*(*v23 + 120))(v23, 0, *a4);
        v25.n128_u64[0] = 0;
        if (a3)
        {
          +[PVEnvironment PVExportPrefilterValue];
        }

        (*(*v23 + 592))(v23, 0, v25);
        if (v24 != v23)
        {
          if (v24)
          {
            (*(*v24 + 24))(v24);
          }

          *a4 = v23;
          (*(*v23 + 16))(v23);
        }

        result = (*(*v23 + 24))(v23);
      }

      if ((v17 & 1) == 0)
      {
        return (*(*v10 + 24))(v10);
      }

      return result;
    }

LABEL_20:
    v19 = 0;
    goto LABEL_24;
  }

  return result;
}

void sub_25F99BEBC(_Unwind_Exception *a1)
{
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  (*(*v2 + 24))(v2);
  if (*v1)
  {
    (*(**v1 + 24))(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t HGTransformForSIMDFloat4x4@<X0>(simd_float4x4 a1@<0:Q0, 16:Q1, 32:Q2, 48:Q3>, HGTransform **a2@<X8>)
{
  v5 = a1;
  v3 = HGObject::operator new(0x90uLL);
  HGTransform::HGTransform(v3);
  *a2 = v3;
  return (*(*v3 + 80))(v3, &v5);
}

uint64_t HGTransformForSIMDDouble4x4@<X0>(uint64_t a1@<X0>, HGTransform **a2@<X8>)
{
  v4 = HGObject::operator new(0x90uLL);
  HGTransform::HGTransform(v4);
  *a2 = v4;
  return (*(*v4 + 88))(v4, a1);
}

const void **HGXFormForSIMDFloat4x4@<X0>(const void **result@<X0>, int a2@<W1>, HGXForm **a3@<X8>, simd_float4x4 a4@<0:Q0, 16:Q1, 32:Q2, 48:Q3>)
{
  v4 = result;
  v6 = vdupq_n_s32(0x38D1B717u);
  if ((vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v6, vabdq_f32(a4.columns[1], *(MEMORY[0x277D860B8] + 16))), vcgeq_f32(v6, vabdq_f32(a4.columns[0], *MEMORY[0x277D860B8]))), vandq_s8(vcgeq_f32(v6, vabdq_f32(a4.columns[2], *(MEMORY[0x277D860B8] + 32))), vcgeq_f32(v6, vabdq_f32(a4.columns[3], *(MEMORY[0x277D860B8] + 48)))))) & 0x80000000) != 0)
  {
    *a3 = *result;
    *result = 0;
  }

  else
  {
    HGTransformForSIMDFloat4x4(a4, &v12);
    v8 = *v4;
    v11 = v8;
    if (v8)
    {
      (*(*v8 + 16))(v8);
    }

    v9 = v12;
    v10 = v12;
    if (v12)
    {
      (*(*v12 + 16))(v12);
    }

    result = HGXFormForHGTransform(&v11, &v10, a2, a3);
    if (v9)
    {
      result = (*(*v9 + 24))(v9);
    }

    if (v8)
    {
      result = (*(*v8 + 24))(v8);
    }

    if (v9)
    {
      return (*(*v9 + 24))(v9);
    }
  }

  return result;
}

void sub_25F99C398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGXFormForCGAffineTransform@<X0>(HGXForm **a1@<X0>, _OWORD *a2@<X1>, int a3@<W2>, HGXForm **a4@<X8>)
{
  v8 = a2[1];
  *&v17.a = *a2;
  *&v17.c = v8;
  *&v17.tx = a2[2];
  result = CGAffineTransformIsIdentity(&v17);
  if (result)
  {
    *a4 = *a1;
    *a1 = 0;
  }

  else
  {
    v10 = a2[1];
    v11 = a2[2];
    *&v17.a = *a2;
    *&v17.c = 0u;
    *&v17.tx = v10;
    v18 = 0u;
    v19 = 0u;
    v20 = xmmword_2603426F0;
    v21 = v11;
    v22 = xmmword_260342700;
    HGTransformForSIMDDouble4x4(&v17, &v16);
    v12 = *a1;
    v15 = v12;
    if (v12)
    {
      (*(*v12 + 16))(v12);
    }

    v13 = v16;
    v14 = v16;
    if (v16)
    {
      (*(*v16 + 16))(v16);
    }

    result = HGXFormForHGTransform(&v15, &v14, a3, a4);
    if (v13)
    {
      result = (*(*v13 + 24))(v13);
    }

    if (v12)
    {
      result = (*(*v12 + 24))(v12);
    }

    if (v13)
    {
      return (*(*v13 + 24))(v13);
    }
  }

  return result;
}

void sub_25F99C5F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  _Unwind_Resume(exception_object);
}

void HGXFormForScaleAroundPoint(void *a1@<X0>, HGXForm **a2@<X8>, float64x2_t a3@<Q0>, double a4@<D1>, float64x2_t a5@<Q2>)
{
  HGTransform::HGTransform(v12);
  HGTransform::LoadIdentity(v12);
  HGTransform::Translate(v12, -a3.f64[0], -a3.f64[1], 0.0);
  HGTransform::Scale(v12, a4, a4, 1.0);
  v8 = vaddq_f64(a3, a5);
  HGTransform::Translate(v12, v8.f64[0], v8.f64[1], 0.0);
  v9 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v9);
  *a2 = v9;
  (*(*v9 + 576))(v9, v12);
  (*(*v9 + 120))(v9, 0, *a1);
  HGTransform::~HGTransform(v12);
}

void sub_25F99C7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  HGObject::operator delete(v13);
  HGTransform::~HGTransform(&a13);
  _Unwind_Resume(a1);
}

uint64_t HGRectMakeWithCGRect(CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  MinX = CGRectGetMinX(a1);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MinY = CGRectGetMinY(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MaxX = CGRectGetMaxX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MaxY = CGRectGetMaxY(v14);

  return HGRectMake4f(v8, MinX, MinY, MaxX, MaxY);
}

id NSStringFromPVTransformInfo(__int128 *a1, uint64_t a2)
{
  v4 = a1[5];
  v21 = a1[4];
  v22 = v4;
  v5 = a1[7];
  v23 = a1[6];
  v24 = v5;
  v6 = a1[1];
  v17 = *a1;
  v18 = v6;
  v7 = a1[3];
  v19 = a1[2];
  v20 = v7;
  v8 = pv_buffer_size_for_string_representation(&v17, a2);
  v9 = malloc_type_calloc(v8, 1uLL, 0x100004077774924uLL);
  v10 = a1[5];
  v21 = a1[4];
  v22 = v10;
  v11 = a1[7];
  v23 = a1[6];
  v24 = v11;
  v12 = a1[1];
  v17 = *a1;
  v18 = v12;
  v13 = a1[3];
  v19 = a1[2];
  v20 = v13;
  string_representation = pv_get_string_representation(&v17, v9, v8, a2);
  v15 = 0;
  if ((string_representation & 0x80000000) != 0 || string_representation >= v8 || (v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v9 length:string_representation encoding:4 freeWhenDone:1]) == 0)
  {
    free(v9);
  }

  return v15;
}

void sub_25F99CEF4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_25F99CFE8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25F99E34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  objc_sync_exit(v12);

  _Unwind_Resume(a1);
}

void sub_25F99E478(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id std::vector<objc_class * {__strong}>::push_back[abi:ne200100](void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_class * {__strong}>>(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    std::vector<objc_class * {__strong}>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    result = std::__split_buffer<objc_class * {__strong}>::~__split_buffer(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_25F99E570(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<objc_class * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_25F99E788(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25F99FAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

uint64_t std::vector<objc_class * {__strong}>::__init_with_size[abi:ne200100]<objc_class * {__strong}*,objc_class * {__strong}*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<objc_class * {__strong}>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<objc_class * {__strong}>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<objc_class * {__strong}>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<objc_class * {__strong}>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<objc_class * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<objc_class * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<objc_class * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double pv_simd_matrix_convert_projection(int a1, int a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (a1 != a2)
  {
    if (a2 == 1)
    {
      v7 = 0;
      v9 = a3;
      v10 = a4;
      v11 = a5;
      v12 = a6;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      do
      {
        *(&v13 + v7) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2603429B0, COERCE_FLOAT(*(&v9 + v7))), xmmword_2603429C0, v9.n128_u64[v7 / 8], 1), xmmword_260342E80, *(&v9 + v7), 2), xmmword_260342E90, *(&v9 + v7), 3);
        v7 += 16;
      }

      while (v7 != 64);
      goto LABEL_9;
    }

    if (!a2)
    {
      v6 = 0;
      v9 = a3;
      v10 = a4;
      v11 = a5;
      v12 = a6;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      do
      {
        *(&v13 + v6) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2603429B0, COERCE_FLOAT(*(&v9 + v6))), xmmword_2603429C0, v9.n128_u64[v6 / 8], 1), xmmword_260342EA0, *(&v9 + v6), 2), xmmword_260342EB0, *(&v9 + v6), 3);
        v6 += 16;
      }

      while (v6 != 64);
LABEL_9:
      a3.n128_u64[0] = v13;
    }
  }

  return a3.n128_f64[0];
}

_OWORD *pv_simd_matrix_convert_projection@<X0>(_OWORD *result@<X0>, int a2@<W1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  if (a2 == a3)
  {
    v6 = result[5];
    a4[4] = result[4];
    a4[5] = v6;
    v7 = result[7];
    a4[6] = result[6];
    a4[7] = v7;
    v8 = result[1];
    *a4 = *result;
    a4[1] = v8;
    v9 = result[3];
    a4[2] = result[2];
    a4[3] = v9;
  }

  else
  {
    *&v18 = v4;
    *(&v18 + 1) = v5;
    if (a3 == 1)
    {
      v14 = 0;
      v18 = *result;
      *a4 = 0u;
      a4[1] = 0u;
      a4[2] = 0u;
      a4[3] = 0u;
      a4[4] = 0u;
      a4[5] = 0u;
      a4[6] = 0u;
      a4[7] = 0u;
      do
      {
        v16 = *(&v18 + v14 * 16);
        v15 = *(&v18 + v14 * 16 + 16);
        v17 = &a4[v14];
        *v17 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_2603426F0, v16.f64[0]), xmmword_260342700, v16, 1), 0, v15.f64[0]), 0, v15, 1);
        v17[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v16.f64[0]), 0, v16, 1), xmmword_260342EC0, v15.f64[0]), xmmword_260342ED0, v15, 1);
        v14 += 2;
      }

      while (v14 != 8);
    }

    else if (!a3)
    {
      v10 = 0;
      v18 = *result;
      *a4 = 0u;
      a4[1] = 0u;
      a4[2] = 0u;
      a4[3] = 0u;
      a4[4] = 0u;
      a4[5] = 0u;
      a4[6] = 0u;
      a4[7] = 0u;
      do
      {
        v12 = *(&v18 + v10 * 16);
        v11 = *(&v18 + v10 * 16 + 16);
        v13 = &a4[v10];
        *v13 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_2603426F0, v12.f64[0]), xmmword_260342700, v12, 1), 0, v11.f64[0]), 0, v11, 1);
        v13[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v12.f64[0]), 0, v12, 1), xmmword_260342760, v11.f64[0]), xmmword_260342EE0, v11, 1);
        v10 += 2;
      }

      while (v10 != 8);
    }
  }

  return result;
}

__n128 pv_simd_matrix_convert_proj_handedness@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  *(a1 + 80) = vnegq_f64(*(a1 + 80));
  v3 = *(a1 + 112);
  v4 = *(a1 + 80);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  *(a2 + 64) = v2;
  *(a2 + 80) = v4;
  return result;
}

float pv_simd_matrix_make_orthographic(int a1, float result, float a3)
{
  if (a1 == 1)
  {
    result = (1.0 / (a3 - result)) + (1.0 / (a3 - result));
    __asm { FMOV            V3.4S, #1.0 }
  }

  else if (!a1)
  {
    result = (1.0 / (a3 - result)) + (1.0 / (a3 - result));
    __asm { FMOV            V3.4S, #1.0 }
  }

  return result;
}

uint64_t pv_simd_matrix_make_orthographic@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float64_t a3@<D0>, float64_t a4@<D1>, float64_t a5@<D2>, float64_t a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  v8 = fabs(a8);
  if (result == 1)
  {
    v25.f64[0] = a4;
    v25.f64[1] = a5;
    v26.f64[0] = a3;
    v26.f64[1] = a6;
    v27 = vsubq_f64(v25, v26);
    v25.f64[0] = a3;
    v26.f64[0] = a4;
    v28 = vaddq_f64(v25, v26);
    __asm { FMOV            V1.2D, #1.0 }

    v29 = vdivq_f64(_Q1, v27);
    v27.f64[0] = v29.f64[0] + v29.f64[0];
    v30 = v29.f64[1] + v29.f64[1];
    v20 = vmulq_f64(v29, vnegq_f64(v28));
    v21 = 0uLL;
    v22 = *&v27.f64[0];
    *&v23 = 0;
    *(&v23 + 1) = v30;
    if (v8 < 0.0000001)
    {
      v24 = -0.99999976;
      goto LABEL_7;
    }

    *&v33 = 1.0 / (a7 - a8);
    _Q1.f64[0] = *&v33 * a7;
    *a2 = v22;
    *(a2 + 16) = 0uLL;
    *(a2 + 32) = v23;
    *(a2 + 48) = 0uLL;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = v33;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v9.f64[0] = a4;
    v9.f64[1] = a5;
    v10.f64[0] = a3;
    v10.f64[1] = a6;
    v11 = vsubq_f64(v9, v10);
    v9.f64[0] = a3;
    v10.f64[0] = a4;
    v12 = vaddq_f64(v9, v10);
    __asm { FMOV            V1.2D, #1.0 }

    v18 = vdivq_f64(_Q1, v11);
    v11.f64[0] = v18.f64[0] + v18.f64[0];
    v19 = v18.f64[1] + v18.f64[1];
    v20 = vmulq_f64(v18, vnegq_f64(v12));
    v21 = 0uLL;
    v22 = *&v11.f64[0];
    *&v23 = 0;
    *(&v23 + 1) = v19;
    if (v8 < 0.0000001)
    {
      v24 = -1.99999976;
LABEL_7:
      *a2 = v22;
      *(a2 + 16) = v21;
      *(a2 + 32) = v23;
      *(a2 + 48) = v21;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(a2 + 80) = xmmword_260342EF0;
      *(a2 + 96) = v20;
      *(a2 + 112) = a7 * v24;
      *(a2 + 120) = 0x3FF0000000000000;
      return result;
    }

    v31 = a7 + a8;
    v32 = 1.0 / (a7 - a8);
    _Q1.f64[0] = v31 * v32;
    *a2 = v22;
    *(a2 + 16) = 0uLL;
    *(a2 + 32) = v23;
    *(a2 + 48) = 0uLL;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = COERCE_UNSIGNED_INT64(v32 + v32);
  }

  *(a2 + 96) = v20;
  *(a2 + 112) = _Q1;
  return result;
}

__n128 pv_simd_matrix_make_projection_infinite@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (!a2)
  {
    v4 = -1.99999976;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v4 = -0.99999976;
LABEL_5:
    *(a1 + 80) = 0xBFEFFFFF7F26A6B3;
    *(a1 + 112) = v4 * a4;
  }

  v5 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v5;
  v6 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v6;
  v7 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v9;
  return result;
}

void pv_simd_matrix_make_perspective(unsigned int a1, float a2)
{
  if (a1 <= 1)
  {
    tanf(a2 * 0.5);
  }
}

void pv_simd_matrix_make_perspective(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v10 = fabs(a6);
  if (a1 == 1)
  {
    v16 = 1.0 / tan(a3 * 0.5);
    v12 = 0uLL;
    *(&v13 + 1) = 0;
    *&v13 = v16 / a4;
    *&v14 = 0;
    *(&v14 + 1) = v16;
    if (v10 < 0.0000001)
    {
      v15 = -0.99999976;
      goto LABEL_7;
    }

    *(&v17 + 1) = 0;
    *&v17 = a5 * a6 / (a5 - a6);
    v18 = a6 / (a5 - a6);
  }

  else
  {
    if (a1)
    {
      return;
    }

    v11 = 1.0 / tan(a3 * 0.5);
    v12 = 0uLL;
    *(&v13 + 1) = 0;
    *&v13 = v11 / a4;
    *&v14 = 0;
    *(&v14 + 1) = v11;
    if (v10 < 0.0000001)
    {
      v15 = -1.99999976;
LABEL_7:
      *a2 = v13;
      *(a2 + 16) = v12;
      *(a2 + 32) = v14;
      *(a2 + 48) = v12;
      *(a2 + 64) = v12;
      *(a2 + 80) = xmmword_260342F00;
      *(a2 + 96) = v12;
      *(a2 + 112) = a5 * v15;
      *(a2 + 120) = 0;
      return;
    }

    *(&v17 + 1) = 0;
    *&v17 = (a6 + a6) * a5 / (a5 - a6);
    v18 = (a5 + a6) / (a5 - a6);
  }

  __asm { FMOV            V4.2D, #-1.0 }

  *&_Q4 = v18;
  *a2 = v13;
  *(a2 + 16) = v12;
  *(a2 + 32) = v14;
  *(a2 + 48) = v12;
  *(a2 + 64) = v12;
  *(a2 + 80) = _Q4;
  *(a2 + 96) = v12;
  *(a2 + 112) = v17;
}

float pv_simd_matrix_make_perspective(int a1, float result, float a3, double a4, double a5, float a6)
{
  if (a1 == 1)
  {
    result = (a6 + a6) / (a3 - result);
    __asm { FMOV            V2.4S, #-1.0 }
  }

  else if (!a1)
  {
    result = (a6 + a6) / (a3 - result);
    __asm { FMOV            V2.4S, #-1.0 }
  }

  return result;
}

uint64_t pv_simd_matrix_make_perspective@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  v8 = fabs(a8);
  if (result == 1)
  {
    v19 = a3 + a4;
    v20 = a4 - a3;
    *&v17 = v19 / v20;
    v21 = a5 + a6;
    v22 = a5 - a6;
    v23 = (a7 + a7) / (a5 - a6);
    *(&v14 + 1) = 0;
    *&v14 = (a7 + a7) / v20;
    *&v15 = 0;
    *(&v15 + 1) = v23;
    v16 = 0uLL;
    *(&v17 + 1) = v21 / v22;
    if (v8 < 0.0000001)
    {
      v18 = -0.99999976;
      goto LABEL_7;
    }

    __asm { FMOV            V6.2D, #-1.0 }

    v31 = a7 * a8;
    v32 = a7 - a8;
    v29 = v31 / v32;
    v30 = a8 / v32;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v9 = a3 + a4;
    v10 = a4 - a3;
    *&v17 = v9 / v10;
    v11 = a5 + a6;
    v12 = a5 - a6;
    v13 = (a7 + a7) / (a5 - a6);
    *(&v14 + 1) = 0;
    *&v14 = (a7 + a7) / v10;
    *&v15 = 0;
    *(&v15 + 1) = v13;
    v16 = 0uLL;
    *(&v17 + 1) = v11 / v12;
    if (v8 < 0.0000001)
    {
      v18 = -1.99999976;
LABEL_7:
      *a2 = v14;
      *(a2 + 16) = v16;
      *(a2 + 32) = v15;
      *(a2 + 48) = v16;
      *(a2 + 64) = v17;
      *(a2 + 80) = xmmword_260342F00;
      *(a2 + 96) = 0;
      *(a2 + 104) = 0;
      *(a2 + 112) = a7 * v18;
      *(a2 + 120) = 0;
      return result;
    }

    __asm { FMOV            V6.2D, #-1.0 }

    v29 = (a8 + a8) * a7 / (a7 - a8);
    v30 = (a7 + a8) / (a7 - a8);
  }

  *&_Q6 = v30;
  *a2 = v14;
  *(a2 + 16) = v16;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 64) = v17;
  *(a2 + 80) = _Q6;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = *&v29;
  return result;
}

void pv_simd_matrix_make_perspective(int a1, int a2, int a3, int a4, float a5, double a6, float32x2_t a7, float32x2_t a8, double a9)
{
  if (a4 == 1)
  {
    pv_adjust_intrinsics(a1, a2, a3, a5, a6, a7, a8, a9);
    __asm { FMOV            V3.2S, #1.0 }
  }

  else if (!a4)
  {
    pv_adjust_intrinsics(a1, a2, a3, a5, a6, a7, a8, a9);
    __asm { FMOV            V3.2S, #1.0 }
  }
}

float pv_adjust_intrinsics(int a1, int a2, int a3, float a4, double a5, float32x2_t a6, float32x2_t a7, double a8)
{
  v8 = vadd_f32(a6, 0x3F0000003F000000);
  v9 = vsub_f32(a7, v8);
  v10.i32[0] = 0;
  v10.i32[1] = HIDWORD(a5);
  if (a3 == 1)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        goto LABEL_41;
      }

      if (a1 != 1 || a2 == 2)
      {
        goto LABEL_40;
      }

LABEL_27:
      if (a2 != 3)
      {
        if (a2 == 4)
        {
          goto LABEL_44;
        }

LABEL_41:
        v8.i32[1] = v9.i32[1];
        v11 = HIDWORD(a5);
        goto LABEL_42;
      }

      goto LABEL_45;
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        if (a2 == 1)
        {
          goto LABEL_44;
        }

        if (a2 != 2)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (a1 != 4)
        {
          goto LABEL_40;
        }

        if (a2 != 1)
        {
          if (a2 != 2)
          {
            goto LABEL_16;
          }

LABEL_44:
          v19 = vext_s8(v10, LODWORD(a4), 4uLL);
          v8 = vext_s8(v9, v9, 4uLL);
LABEL_46:
          LODWORD(v12) = 0;
          HIDWORD(v12) = v19.i32[1];
          a4 = *v19.i32;
          __asm { FMOV            V2.4S, #1.0 }

          v18 = *&v8;
          a7 = vrev64_s32(a7);
          return pv_adjust_intrinsics_for_viewport(COERCE_DOUBLE(LODWORD(a4)), v12, v18, *&a7, a8, *&v8, *&v9);
        }
      }

      goto LABEL_45;
    }

    if (a2 == 1)
    {
      goto LABEL_40;
    }

LABEL_34:
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }

    goto LABEL_44;
  }

  if (a3)
  {
    goto LABEL_40;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      goto LABEL_41;
    }

    if (a1 != 1 || a2 == 2)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  if (a1 == 2)
  {
    if (a2 == 1)
    {
      goto LABEL_40;
    }

    goto LABEL_27;
  }

  if (a1 == 3)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        goto LABEL_44;
      }

LABEL_39:
      if (a2 == 4)
      {
        goto LABEL_40;
      }

      goto LABEL_41;
    }

LABEL_45:
    v19 = vext_s8(v10, LODWORD(a4), 4uLL);
    v8 = vzip1_s32(vdup_lane_s32(vsub_f32(a7, v9), 1), v8);
    goto LABEL_46;
  }

  if (a1 != 4)
  {
    goto LABEL_40;
  }

  if (a2 == 1)
  {
    goto LABEL_44;
  }

  if (a2 == 2)
  {
    goto LABEL_45;
  }

LABEL_16:
  if (a2 != 3)
  {
    goto LABEL_41;
  }

LABEL_40:
  v11 = HIDWORD(a5);
  v8.i32[1] = v9.i32[1];
  v8 = vsub_f32(a7, v8);
LABEL_42:
  LODWORD(v12) = 0;
  HIDWORD(v12) = v11;
  __asm { FMOV            V2.4S, #1.0 }

  v18 = *&v8;
  return pv_adjust_intrinsics_for_viewport(COERCE_DOUBLE(LODWORD(a4)), v12, v18, *&a7, a8, *&v8, *&v9);
}

void pv_simd_matrix_make_perspective(__int128 *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>, int8x16_t a7@<Q0>, float64x2_t a8@<Q1>, double a9@<D2>, double a10@<D3>)
{
  v13 = a8.f64[1];
  v14 = fabs(a10);
  if (a5 == 1)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v27 = a1[3];
    v38 = a1[2];
    v39 = v27;
    v28 = a1[5];
    v40 = a1[4];
    v41 = v28;
    v29 = a1[1];
    v36 = *a1;
    v37 = v29;
    pv_adjust_intrinsics(&v36, a2, a3, a4, &v42, a7, a8);
    __asm { FMOV            V1.2D, #1.0 }

    v23 = vsubq_f64(_Q1, vdivq_f64(vaddq_f64(v46, v46), a8));
    *(&v24 + 1) = 0;
    *&v24 = (*&v42 + *&v42) / a8.f64[0];
    *&v25 = 0;
    *(&v25 + 1) = (*(&v44 + 1) + *(&v44 + 1)) / v13;
    if (v14 < 0.0000001)
    {
      v26 = -0.99999976;
      goto LABEL_7;
    }

    v31 = a9 - a10;
    __asm { FMOV            V5.2D, #-1.0 }

    *&_Q5 = a10 / (a9 - a10);
    v33 = a9 * a10;
LABEL_10:
    *(a6 + 64) = v23;
    *(a6 + 80) = _Q5;
    *(a6 + 96) = 0;
    *(a6 + 104) = 0;
    *(a6 + 112) = COERCE_UNSIGNED_INT64(v33 / v31);
    goto LABEL_11;
  }

  if (a5)
  {
    return;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v15 = a1[3];
  v38 = a1[2];
  v39 = v15;
  v16 = a1[5];
  v40 = a1[4];
  v41 = v16;
  v17 = a1[1];
  v36 = *a1;
  v37 = v17;
  pv_adjust_intrinsics(&v36, a2, a3, a4, &v42, a7, a8);
  __asm { FMOV            V1.2D, #1.0 }

  v23 = vsubq_f64(_Q1, vdivq_f64(vaddq_f64(v46, v46), a8));
  *(&v24 + 1) = 0;
  *&v24 = (*&v42 + *&v42) / a8.f64[0];
  *&v25 = 0;
  *(&v25 + 1) = (*(&v44 + 1) + *(&v44 + 1)) / v13;
  if (v14 >= 0.0000001)
  {
    v31 = a9 - a10;
    __asm { FMOV            V5.2D, #-1.0 }

    *&_Q5 = (a9 + a10) / (a9 - a10);
    v33 = (a10 + a10) * a9;
    goto LABEL_10;
  }

  v26 = -1.99999976;
LABEL_7:
  *(a6 + 64) = v23;
  *(a6 + 80) = xmmword_260342F00;
  *(a6 + 96) = 0;
  *(a6 + 104) = 0;
  *(a6 + 112) = a9 * v26;
  *(a6 + 120) = 0;
LABEL_11:
  *a6 = v24;
  *(a6 + 16) = 0u;
  *(a6 + 32) = v25;
  *(a6 + 48) = 0u;
}

double pv_adjust_intrinsics@<D0>(__int128 *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, _OWORD *a5@<X8>, int8x16_t a6@<Q0>, float64x2_t a7@<Q1>)
{
  v9 = *a1;
  v10 = vextq_s8(*(a1 + 2), *(a1 + 2), 8uLL).u64[0];
  __asm { FMOV            V5.2D, #0.5 }

  v16 = vaddq_f64(*(a1 + 4), _Q5);
  v17 = vsubq_f64(a6, v16);
  if (a4 == 1)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        goto LABEL_41;
      }

      if (a2 != 1 || a3 == 2)
      {
        goto LABEL_40;
      }

LABEL_27:
      if (a3 != 3)
      {
        if (a3 == 4)
        {
          goto LABEL_43;
        }

LABEL_41:
        v16.f64[1] = v17.f64[1];
        v9.i64[1] = v10;
        goto LABEL_42;
      }

      goto LABEL_44;
    }

    if (a2 != 2)
    {
      if (a2 == 3)
      {
        if (a3 == 1)
        {
          goto LABEL_43;
        }

        if (a3 != 2)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (a2 != 4)
        {
          goto LABEL_40;
        }

        if (a3 != 1)
        {
          if (a3 != 2)
          {
            goto LABEL_16;
          }

LABEL_43:
          v22 = *a1;
          v16 = vextq_s8(v17, v17, 8uLL);
LABEL_45:
          __asm { FMOV            V5.2D, #1.0 }

          v19 = 0uLL;
          v20 = v10;
          *&v21 = 0;
          *(&v21 + 1) = v22;
          a6 = vextq_s8(a6, a6, 8uLL);
          goto LABEL_46;
        }
      }

      goto LABEL_44;
    }

    if (a3 == 1)
    {
      goto LABEL_40;
    }

LABEL_34:
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    goto LABEL_43;
  }

  if (a4)
  {
    goto LABEL_40;
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      goto LABEL_41;
    }

    if (a2 != 1 || a3 == 2)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  if (a2 == 2)
  {
    if (a3 == 1)
    {
      goto LABEL_40;
    }

    goto LABEL_27;
  }

  if (a2 == 3)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        goto LABEL_43;
      }

LABEL_39:
      if (a3 == 4)
      {
        goto LABEL_40;
      }

      goto LABEL_41;
    }

LABEL_44:
    v22 = *a1;
    v16 = vzip1q_s64(vdupq_laneq_s64(vsubq_f64(a6, v17), 1), v16);
    goto LABEL_45;
  }

  if (a2 != 4)
  {
    goto LABEL_40;
  }

  if (a3 == 1)
  {
    goto LABEL_43;
  }

  if (a3 == 2)
  {
    goto LABEL_44;
  }

LABEL_16:
  if (a3 != 3)
  {
    goto LABEL_41;
  }

LABEL_40:
  v9.i64[1] = v10;
  v16.f64[1] = v17.f64[1];
  v16 = vsubq_f64(a6, v16);
LABEL_42:
  __asm { FMOV            V5.2D, #1.0 }

  v19 = 0uLL;
  v20 = v9.u64[0];
  *&v21 = 0;
  *(&v21 + 1) = v9.i64[1];
LABEL_46:
  v25 = v7;
  v26 = v8;
  v24[0] = v20;
  v24[1] = v19;
  v24[2] = v21;
  v24[3] = v19;
  v24[4] = v16;
  v24[5] = _Q5;
  *&result = *&pv_adjust_intrinsics_for_viewport(v24, a5, a6, a7);
  return result;
}

double pv_near_plane_lrtb(float a1, float a2, float a3)
{
  v5 = tanf(a1 * 0.5);
  *&v6 = -((v5 * a3) * a2);
  *(&v6 + 1) = (v5 * a3) * a2;
  return v6;
}

double pv_near_plane_lrtb@<D0>(double a1@<D0>, double a2@<D1>, double a3@<D2>, _OWORD *a4@<X8>)
{
  *&v6 = tan(a1 * 0.5) * a3;
  result = -*&v6;
  *&v8 = -(*&v6 * a2);
  *(&v8 + 1) = *&v6 * a2;
  *(&v6 + 1) = -*&v6;
  *a4 = v8;
  a4[1] = v6;
  return result;
}

BOOL pv_simd_matrix_project(int a1, int a2, int a3, _OWORD *a4, float32x4_t a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, float32x4_t a14, float32x4_t a15, float32x4_t a16, float32x4_t a17, float32x2_t a18)
{
  v18 = 0;
  v35[0] = a6;
  v35[1] = a7;
  v35[2] = a8;
  v35[3] = a9;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  do
  {
    *(&v36 + v18 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a14, COERCE_FLOAT(v35[v18])), a15, *&v35[v18], 1), a16, v35[v18], 2), a17, v35[v18], 3);
    ++v18;
  }

  while (v18 != 4);
  v19 = vaddq_f32(v39, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, a5.f32[0]), v37, *a5.f32, 1), v38, a5, 2));
  v20 = v19.f32[3];
  if (v19.f32[3] != 0.0)
  {
    v21 = vdivq_f32(v19, vdupq_laneq_s32(v19, 3));
    __asm { FMOV            V1.2S, #1.0 }

    *v27.i8 = vmul_f32(vadd_f32(*v21.i8, _D1), 0x3F0000003F000000);
    v27.i64[1] = vextq_s8(v21, v21, 8uLL).u64[0];
    if (!a1)
    {
      v28.i64[0] = v27.i64[0];
      *&v28.i32[2] = (*&v21.i32[2] + 1.0) * 0.5;
      v28.i32[3] = v27.i32[3];
      v27 = v28;
    }

    *v21.i32 = 1.0 - *v27.i32;
    v21.i32[1] = v27.i32[1];
    v21.i32[2] = v27.i32[2];
    if (a2)
    {
      v29 = -1;
    }

    else
    {
      v29 = 0;
    }

    v30 = vbslq_s8(vdupq_n_s32(v29), v21, v27);
    v31 = v30;
    v31.i32[3] = v27.i32[3];
    if (a3)
    {
      v32.i32[0] = v30.i32[0];
      *&v32.i32[1] = 1.0 - *&v30.i32[1];
      v32.i64[1] = __PAIR64__(v27.u32[3], v30.u32[2]);
      v31 = v32;
    }

    *&v33 = vmul_f32(*v31.i8, a18);
    *(&v33 + 1) = vextq_s8(v31, v31, 8uLL).u64[0];
    *a4 = v33;
  }

  return v20 != 0.0;
}

float32x2_t pv_ndc_to_viewport(int a1, int a2, int a3, int8x16_t a4, float32x2_t a5)
{
  __asm { FMOV            V2.2S, #1.0 }

  *v11.i8 = vmul_f32(vadd_f32(*a4.i8, _D2), 0x3F0000003F000000);
  v10 = vextq_s8(a4, a4, 8uLL);
  v11.i64[1] = v10.i64[0];
  if (!a1)
  {
    v10.i64[0] = v11.i64[0];
    *&v10.i32[2] = (*&a4.i32[2] + 1.0) * 0.5;
    v10.i32[3] = v11.i32[3];
    v11 = v10;
  }

  *v10.i32 = 1.0 - *v11.i32;
  v10.i32[1] = v11.i32[1];
  v10.i32[2] = v11.i32[2];
  if (a2)
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  v13 = vbslq_s8(vdupq_n_s32(v12), v10, v11).u64[0];
  v14 = v13;
  if (a3)
  {
    v15.i32[0] = v13;
    v15.f32[1] = 1.0 - *(&v13 + 1);
    v14 = v15;
  }

  return vmul_f32(v14, a5);
}

BOOL pv_simd_matrix_project(float64x2_t *a1, __int128 *a2, float64x2_t *a3, int a4, int a5, int a6, uint64_t a7, float64x2_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, __int128 a29)
{
  v29 = 0;
  v31 = *a1;
  v30 = a1[1];
  v33 = *a3;
  v32 = a3[1];
  v35 = a3[2];
  v34 = a3[3];
  v37 = a3[4];
  v36 = a3[5];
  v39 = a3[6];
  v38 = a3[7];
  v40 = a2[5];
  a26 = a2[4];
  a27 = v40;
  v41 = a2[7];
  a28 = a2[6];
  a29 = v41;
  v42 = a2[1];
  a22 = *a2;
  a23 = v42;
  v43 = a2[3];
  a24 = a2[2];
  a25 = v43;
  v71 = 0u;
  vars0 = 0u;
  do
  {
    v45 = *(&a22 + v29);
    v44 = *(&a22 + v29 + 16);
    v46 = (&v71 + v29);
    *v46 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v33, v45.f64[0]), v35, v45, 1), v37, v44.f64[0]), v39, v44, 1);
    v46[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v32, v45.f64[0]), v34, v45, 1), v36, v44.f64[0]), v38, v44, 1);
    v29 += 32;
  }

  while (v29 != 128);
  v47 = 0u;
  v48 = vaddq_f64(0, vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(vars0, v31.f64[0]), 0, v31, 1), 0, v30.f64[0]));
  v49 = v48.f64[1];
  if (v48.f64[1] != 0.0)
  {
    v47.i32[0] = 0;
    v50 = vaddq_f64(0, vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v71, v31.f64[0]), 0, v31, 1), 0, v30.f64[0]));
    v51 = vdupq_laneq_s64(v48, 1);
    v52 = vdivq_f64(v48, v51);
    v53 = vdivq_f64(v50, v51);
    __asm { FMOV            V2.2D, #1.0 }

    v59 = vaddq_f64(v53, _Q2);
    __asm { FMOV            V2.2D, #0.5 }

    v61 = vmulq_f64(v59, _Q2);
    LODWORD(v59.f64[0]) = a4;
    v62 = vdupq_lane_s32(*&vceqq_s32(v59, v47), 0);
    *v47.i64 = (*v52.i64 + 1.0) * 0.5;
    v63 = vbslq_s8(v62, v47, v52);
    v64.i64[0] = v63.i64[0];
    v64.i64[1] = v52.i64[1];
    *v65.i64 = 1.0 - *v61.i64;
    v65.i64[1] = v61.i64[1];
    if (a5)
    {
      v66 = -1;
    }

    else
    {
      v66 = 0;
    }

    v67 = vdupq_n_s64(v66);
    v64.i64[0] = vbslq_s8(v67, v63, v64).u64[0];
    v68 = vbslq_s8(v67, v65, v61);
    v69.i64[0] = v64.i64[0];
    v69.i64[1] = v52.i64[1];
    if (a6)
    {
      v68.f64[1] = 1.0 - v68.f64[1];
      v64.i64[1] = v52.i64[1];
      v69 = v64;
    }

    *a7 = vmulq_f64(v68, a8);
    *(a7 + 16) = v69;
  }

  return v49 != 0.0;
}

float64x2_t pv_ndc_to_viewport@<Q0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>, float64x2_t a6@<Q0>, int32x4_t a7@<Q1>, int8x16_t a8@<Q4>)
{
  a7.i32[0] = 0;
  v8 = *(a1 + 16);
  __asm { FMOV            V3.2D, #1.0 }

  v14 = vaddq_f64(*a1, _Q3);
  __asm { FMOV            V3.2D, #0.5 }

  v16 = vmulq_f64(v14, _Q3);
  LODWORD(_Q3.f64[0]) = a2;
  *a8.i64 = (*v8.i64 + 1.0) * 0.5;
  v17 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(_Q3, a7), 0), a8, v8);
  a8.i64[0] = v17.i64[0];
  *v18.i64 = 1.0 - *v16.i64;
  v18.i64[1] = v16.i64[1];
  if (a3)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20 = vdupq_n_s64(v19);
  a8.i64[1] = *(a1 + 24);
  a8.i64[0] = vbslq_s8(v20, v17, a8).u64[0];
  v22 = vbslq_s8(v20, v18, v16);
  v23 = a8;
  if (a4)
  {
    v22.f64[1] = 1.0 - v22.f64[1];
    a8.i64[1] = *(a1 + 24);
    v23 = a8;
  }

  result = vmulq_f64(v22, a6);
  *a5 = result;
  *(a5 + 16) = v23;
  return result;
}

BOOL pv_simd_matrix_unproject(int a1, int a2, int a3, float32x4_t *a4, int8x16_t a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, float32x4_t a14, float32x4_t a15, float32x4_t a16, float32x4_t a17, float32x2_t a18)
{
  *v21.i8 = vdiv_f32(*a5.i8, a18);
  v20 = vextq_s8(a5, a5, 8uLL).u64[0];
  *v18.i32 = 1.0 - *v21.i32;
  v18.i32[1] = v21.i32[1];
  v21.i64[1] = v20;
  v18.i32[2] = a5.i32[2];
  if (a2)
  {
    v22 = -1;
  }

  else
  {
    v22 = 0;
  }

  v23 = vbslq_s8(vdupq_n_s32(v22), v18, v21);
  v24 = v23;
  v24.i32[3] = HIDWORD(v20);
  if (a3)
  {
    v25.i32[0] = v23.i32[0];
    *&v25.i32[1] = 1.0 - *&v23.i32[1];
    v25.i64[1] = __PAIR64__(v24.u32[3], v23.u32[2]);
    v24 = v25;
  }

  __asm { FMOV            V6.2S, #-1.0 }

  *v31.f32 = vadd_f32(vadd_f32(*v24.i8, *v24.i8), _D6);
  v31.i64[1] = vextq_s8(v24, v24, 8uLL).u64[0];
  v32 = v31;
  v32.i32[3] = v24.i32[3];
  if (a1)
  {
    v36 = v32;
  }

  else
  {
    v31.f32[2] = (*&v24.i32[2] + *&v24.i32[2]) + -1.0;
    v31.i32[3] = v24.i32[3];
    v36 = v31;
  }

  v33 = 0;
  v37[0] = a6;
  v37[1] = a7;
  v37[2] = a8;
  v37[3] = a9;
  memset(&v38, 0, sizeof(v38));
  do
  {
    v38.columns[v33] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a14, COERCE_FLOAT(v37[v33])), a15, *&v37[v33], 1), a16, v37[v33], 2), a17, v37[v33], 3);
    ++v33;
  }

  while (v33 != 4);
  v39 = __invert_f4(v38);
  v34 = vaddq_f32(v39.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39.columns[0], v36.f32[0]), v39.columns[1], *v36.f32, 1), v39.columns[2], v36, 2));
  if (v34.f32[3] != 0.0)
  {
    *a4 = vdivq_f32(v34, vdupq_laneq_s32(v34, 3));
  }

  return v34.f32[3] != 0.0;
}

double pv_viewport_to_ndc(int a1, int a2, int a3, int8x16_t a4, float32x2_t a5, double a6, double a7, int8x16_t a8)
{
  *v8.i8 = vdiv_f32(*a4.i8, a5);
  *a8.i32 = 1.0 - *v8.i32;
  a8.i32[1] = v8.i32[1];
  v8.i64[1] = vextq_s8(a4, a4, 8uLL).u64[0];
  a8.i32[2] = a4.i32[2];
  if (a2)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vbslq_s8(vdupq_n_s32(v9), a8, v8).u64[0];
  v11 = v10;
  if (a3)
  {
    v12.i32[0] = v10;
    v12.f32[1] = 1.0 - *(&v10 + 1);
    v11 = v12;
  }

  __asm { FMOV            V2.2S, #-1.0 }

  v18 = COERCE_DOUBLE(vadd_f32(vadd_f32(v11, v11), _D2));
  result = v18;
  if (!a1)
  {
    return v18;
  }

  return result;
}

BOOL pv_simd_matrix_unproject(uint64_t a1, __int128 *a2, float64x2_t *a3, int a4, int a5, int a6, float64x2_t *a7, float64x2_t a8, uint64_t a9, float64x2_t a10, float64x2_t a11, float64x2_t a12, float64x2_t a13, float64x2_t a14, float64x2_t a15, float64x2_t a16, float64x2_t a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33)
{
  v34 = vdivq_f64(*a1, a8);
  *v35.i64 = 1.0 - *v34.i64;
  v35.i64[1] = v34.i64[1];
  v36 = *(a1 + 16);
  if (a5)
  {
    v37 = -1;
  }

  else
  {
    v37 = 0;
  }

  v38 = vbslq_s8(vdupq_n_s64(v37), v35, v34);
  if (a6)
  {
    v38.f64[1] = 1.0 - v38.f64[1];
  }

  v39 = 0;
  __asm { FMOV            V2.2D, #-1.0 }

  v46 = *a3;
  v45 = a3[1];
  v47 = vaddq_f64(vaddq_f64(v38, v38), _Q2);
  v49 = a3[2];
  v48 = a3[3];
  v51 = a3[4];
  v50 = a3[5];
  v53 = a3[6];
  v52 = a3[7];
  v54 = a2[5];
  a30 = a2[4];
  a31 = v54;
  v55 = a2[7];
  a32 = a2[6];
  a33 = v55;
  v56 = a2[1];
  a26 = *a2;
  a27 = v56;
  v57 = a2[3];
  a28 = a2[2];
  a29 = v57;
  a24 = 0u;
  a25 = 0u;
  a22 = 0u;
  a23 = 0u;
  a20 = 0u;
  a21 = 0u;
  a18 = 0u;
  a19 = 0u;
  do
  {
    v59 = *(&a26 + v39);
    v58 = *(&a26 + v39 + 16);
    v60 = (&a18 + v39);
    *v60 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v46, v59.f64[0]), v49, v59, 1), v51, v58.f64[0]), v53, v58, 1);
    v60[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v45, v59.f64[0]), v48, v59, 1), v50, v58.f64[0]), v52, v58, 1);
    v39 += 32;
  }

  while (v39 != 128);
  LODWORD(v45.f64[0]) = 0;
  LODWORD(v46.f64[0]) = a4;
  v61 = vdupq_lane_s32(*&vceqq_s32(v46, v45), 0);
  _Q2.f64[0] = *v36.i64 + *v36.i64 + -1.0;
  vars0 = vbslq_s8(v61, _Q2, v36);
  v65 = vbslq_s8(v61, v47, v47);
  a30 = a22;
  a31 = a23;
  a32 = a24;
  a33 = a25;
  a26 = a18;
  a27 = a19;
  a28 = a20;
  a29 = a21;
  __invert_d4();
  v62 = vaddq_f64(a17, vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(a11, v65.f64[0]), a13, v65, 1), a15, *vars0.i64));
  if (v62.f64[1] != 0.0)
  {
    v63 = vdupq_laneq_s64(v62, 1);
    *a7 = vdivq_f64(vaddq_f64(a16, vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(a10, v65.f64[0]), a12, v65, 1), a14, *vars0.i64)), v63);
    a7[1] = vdivq_f64(v62, v63);
  }

  return v62.f64[1] != 0.0;
}

int8x16_t pv_viewport_to_ndc@<Q0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>, float64x2_t a6@<Q0>, int32x4_t a7@<Q2>)
{
  v7 = vdivq_f64(*a1, a6);
  a7.i64[0] = 1.0;
  *v8.i64 = 1.0 - *v7.i64;
  v8.i64[1] = v7.i64[1];
  v9 = *(a1 + 16);
  if (a3)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  v11 = vbslq_s8(vdupq_n_s64(v10), v8, v7);
  if (a4)
  {
    *a7.i64 = 1.0 - v11.f64[1];
    v11.f64[1] = 1.0 - v11.f64[1];
  }

  a7.i32[0] = 0;
  __asm { FMOV            V3.2D, #-1.0 }

  v17 = vaddq_f64(vaddq_f64(v11, v11), _Q3);
  LODWORD(_Q3.f64[0]) = a2;
  v18 = vdupq_lane_s32(*&vceqq_s32(_Q3, a7), 0);
  _Q3.f64[0] = *v9.i64 + *v9.i64 + -1.0;
  result = vbslq_s8(v18, _Q3, v9);
  *a5 = v17;
  *(a5 + 16) = result;
  return result;
}

BOOL pv_simd_matrix_unproject_to_plane(int a1, int a2, int a3, int a4, float32x4_t *a5, int8x16_t a6, simd_float4 a7, simd_float4 a8, simd_float4 a9, float32x4_t a10, uint64_t a11, uint64_t a12, uint64_t a13, simd_float4 a14, simd_float4 a15, simd_float4 a16, simd_float4 a17, float32x4_t a18, float32x2_t a19)
{
  v45.columns[0] = a14;
  v45.columns[1] = a15;
  v45.columns[2] = a16;
  v45.columns[3] = a17;
  v46 = __invert_f4(v45);
  *(v42.i64 + 4) = 0;
  v42.i32[0] = 0;
  v28 = pv_simd_matrix_unproject(a2, a3, a4, &v42, a6, v46.columns[0], v46.columns[1], v46.columns[2], v46.columns[3], v24, v25, v26, v27, v46.columns[1], v46.columns[2], v46.columns[3], a18, a19);
  if (v28)
  {
    v47.columns[0] = a7;
    v47.columns[1] = a8;
    v47.columns[2] = a9;
    v47.columns[3] = a10;
    *v43.columns[0].i64 = pv_simd_matrix_get_rotation_matrix(v47);
    v29 = PVAxesFloat[a1];
    v30 = vmulq_n_f32(v43.columns[0], v29.f32[0]);
    v43.columns[0].i32[3] = 0;
    v31 = vmlaq_lane_f32(v30, v43.columns[1], *v29.f32, 1);
    v43.columns[1].i32[3] = 0;
    v32 = vmlaq_laneq_f32(v31, v43.columns[2], v29, 2);
    v43.columns[2].i32[3] = 0;
    v33 = vmulq_f32(a10, v32);
    v34 = vmulq_f32(v42, v32);
    *v33.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v33, v33, 8uLL), *&vextq_s8(v34, v34, 8uLL)), vadd_f32(vzip1_s32(*v33.i8, *v34.i8), vzip2_s32(*v33.i8, *v34.i8)));
    v41 = vsubq_f32(vmulq_n_f32(v42, vdiv_f32(*v33.i8, vdup_lane_s32(*v33.i8, 1)).f32[0]), a10);
    v44 = __invert_f3(v43);
    *a5 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44.columns[0], v41.f32[0]), v44.columns[1], *v41.f32, 1), v44.columns[2], v41, 2);
  }

  return v28;
}

float32x2_t pv_fov_from_projection(simd_float4x4 a1)
{
  v3 = a1.columns[1].f32[1];
  v4 = atanf(1.0 / a1.columns[0].f32[0]);
  v1 = atanf(1.0 / v3);
  return vadd_f32(__PAIR64__(LODWORD(v1), LODWORD(v4)), __PAIR64__(LODWORD(v1), LODWORD(v4)));
}

long double pv_fov_from_projection(double *a1)
{
  v2 = atan(1.0 / *a1);
  v4 = v2 + v2;
  atan(1.0 / a1[5]);
  return v4;
}

float32x2_t pv_fov_from_intrinsics(float a1, double a2, double a3, double a4)
{
  v6 = *(&a4 + 1);
  v7 = *(&a2 + 1);
  v8 = atanf(*&a4 / (a1 + a1));
  v4 = atanf(v6 / (v7 + v7));
  return vadd_f32(__PAIR64__(LODWORD(v4), LODWORD(v8)), __PAIR64__(LODWORD(v4), LODWORD(v8)));
}

long double pv_fov_from_intrinsics(double *a1, __n128 a2)
{
  v5 = a2.n128_f64[1];
  v3 = atan(a2.n128_f64[0] / (*a1 + *a1));
  v6 = v3 + v3;
  atan(v5 / (a1[5] + a1[5]));
  return v6;
}

__n64 pv_near_far_planes_from_projection(int a1, double a2, double a3, __n128 a4, __n128 a5)
{
  if (a1 == 1)
  {
    result.n64_f32[0] = a5.n128_f32[2] / a4.n128_f32[2];
    result.n64_f32[1] = -a5.n128_f32[2] / (-1.0 - a4.n128_f32[2]);
  }

  else
  {
    result.n64_u64[0] = 0;
    if (!a1)
    {
      result.n64_f32[0] = ((-1.0 - a4.n128_f32[2]) * ((a5.n128_f32[2] * -2.0) / (-2.0 - (a4.n128_f32[2] + a4.n128_f32[2])))) / (1.0 - a4.n128_f32[2]);
      result.n64_f32[1] = (a5.n128_f32[2] * -2.0) / (-2.0 - (a4.n128_f32[2] + a4.n128_f32[2]));
    }
  }

  return result;
}

double pv_near_far_planes_from_projection(uint64_t a1, int a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 112);
  if (a2 == 1)
  {
    return v3 / v2;
  }

  result = 0.0;
  if (!a2)
  {
    return (-1.0 - v2) * (v3 * -2.0 / (-2.0 - (v2 + v2))) / (1.0 - v2);
  }

  return result;
}

float pv_side_length_for_fov_and_distance(float a1, float a2)
{
  v3 = tanf(a1 * 0.5);
  v4 = fabsf(a2);
  return (v3 * v4) + (v3 * v4);
}

long double pv_side_length_for_fov_and_distance(double a1, double a2)
{
  v3 = tan(a1 * 0.5);
  v4 = fabs(a2);
  return v3 * v4 + v3 * v4;
}

double pv_principal_point_from_resolution(float64x2_t a1)
{
  __asm { FMOV            V1.2D, #0.5 }

  v6 = vmulq_f64(a1, _Q1);
  __asm { FMOV            V1.2D, #-0.5 }

  *&result = *&vaddq_f64(v6, _Q1);
  return result;
}

double pv_resolution_from_principal_point(float64x2_t a1)
{
  __asm { FMOV            V1.2D, #0.5 }

  v6 = vaddq_f64(a1, _Q1);
  *&result = *&vaddq_f64(v6, v6);
  return result;
}

void pv_intrinsics_from_focal_length_and_principal_point(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  __asm { FMOV            V2.2D, #1.0 }

  *&v8 = 0;
  *a1 = a2.n128_u64[0];
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = a3;
  *(&v8 + 1) = a2.n128_u64[1];
  *(a1 + 32) = v8;
  *(a1 + 80) = _Q2;
}

__n128 pv_intrinsics_from_focal_length_and_resolution@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q0>, float64x2_t a3@<Q1>)
{
  __asm { FMOV            V2.2D, #0.5 }

  v8 = vmulq_f64(a3, _Q2);
  __asm { FMOV            V2.2D, #-0.5 }

  v10 = vaddq_f64(v8, _Q2);
  _Q2.f64[0] = 0.0;
  *a1 = a2.n128_u64[0];
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = v10;
  *&_Q2.f64[1] = a2.n128_u64[1];
  *(a1 + 32) = _Q2;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 80) = result;
  return result;
}

float pv_intrinsics_from_fov_side_and_resolution(float a1, float a2)
{
  result = (a2 * 0.5) / tanf(a1 * 0.5);
  __asm { FMOV            V2.4S, #1.0 }

  return result;
}

__n128 pv_intrinsics_from_fov_side_and_resolution@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, float64x2_t a4@<Q2>)
{
  v5 = a3 * 0.5;
  v6 = tan(a2 * 0.5);
  __asm
  {
    FMOV            V1.2D, #0.5
    FMOV            V2.2D, #-0.5
  }

  v13 = vaddq_f64(vmulq_f64(a4, _Q1), _Q2);
  _Q2.f64[0] = 0.0;
  *a1 = COERCE_UNSIGNED_INT64(v5 / v6);
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = v13;
  _Q2.f64[1] = v5 / v6;
  *(a1 + 32) = _Q2;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 80) = result;
  return result;
}

float pv_adjust_intrinsics_by_cardinal_angle(int a1, int32x2_t a2, double a3)
{
  a2.i32[1] = HIDWORD(a3);
  v3 = COERCE_DOUBLE(vrev64_s32(a2));
  if (a1 == 1)
  {
    *&v4 = v3;
  }

  else
  {
    v4 = a2;
  }

  if (a1 != 2)
  {
    a2 = v4;
  }

  __asm { FMOV            V2.4S, #1.0 }

  if (_ZF)
  {
    v10 = v3;
  }

  else
  {
    v10 = *&a2;
  }

  return *&v10;
}

float pv_adjust_intrinsics_for_viewport(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = 0;
  for (i = 1; ; i = 0)
  {
    v9 = i;
    v19 = a4;
    v10 = *(&v19 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v7 & 1)));
    v18 = a5;
    if (vabds_f32(v10, *(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v7 & 1)))) >= 0.0001)
    {
      break;
    }

    v7 = 1;
    if ((v9 & 1) == 0)
    {
      return *&a1;
    }
  }

  HIDWORD(a1) = HIDWORD(a2);
  if ((*&a5 / *(&a5 + 1)) >= (*&a4 / *(&a4 + 1)))
  {
    v11 = vdup_lane_s32(vdiv_f32(*&a5, *&a4), 0);
  }

  else
  {
    *&a7 = *(&a5 + 1) / *(&a4 + 1);
    v11 = vdup_lane_s32(*&a7, 0);
  }

  LODWORD(a1) = vmul_f32(*&a1, v11).u32[0];
  __asm { FMOV            V2.4S, #1.0 }

  return *&a1;
}

__n128 pv_adjust_intrinsics_origin_to_lower_left@<Q0>(float64x2_t *a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q0>)
{
  __asm { FMOV            V2.2D, #0.5 }

  v8 = vaddq_f64(a1[4], _Q2);
  v9 = vsubq_f64(a3, v8);
  v8.f64[1] = v9.f64[1];
  v9.f64[0] = a1->f64[0];
  _Q2.f64[0] = 0.0;
  _Q2.f64[1] = a1[2].f64[1];
  *a2 = v9;
  *(a2 + 16) = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *(a2 + 32) = _Q2;
  *(a2 + 48) = 0u;
  *(a2 + 64) = v8;
  *(a2 + 80) = result;
  return result;
}

__n128 pv_adjust_intrinsics_by_cardinal_angle@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, float64x2_t a4@<Q0>)
{
  v4 = *(a1 + 64);
  *&v5.f64[0] = vextq_s8(v4, v4, 8uLL).u64[0];
  v6 = *a1;
  v6.i64[1] = *(a1 + 40);
  switch(a2)
  {
    case 3:
      v6 = vextq_s8(v6, v6, 8uLL);
      v7.f64[0] = a4.f64[1] - v5.f64[0];
      v7.f64[1] = *(a1 + 64);
      v4 = v7;
      break;
    case 2:
      v4.f64[1] = v5.f64[0];
      v4 = vsubq_f64(a4, v4);
      break;
    case 1:
      v6 = vextq_s8(v6, v6, 8uLL);
      v5.f64[1] = a4.f64[0] - v4.f64[0];
      v4 = v5;
      break;
  }

  __asm { FMOV            V0.2D, #1.0 }

  *&v13 = 0;
  *a3 = v6.u64[0];
  *(a3 + 16) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = v4;
  *(&v13 + 1) = v6.i64[1];
  *(a3 + 32) = v13;
  *(a3 + 80) = result;
  return result;
}