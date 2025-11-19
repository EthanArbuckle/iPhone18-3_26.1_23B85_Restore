uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = result + 16 * (v4 >> 1);
    v7 = a2 - 16;
    if (*v6 < *(a2 - 16))
    {
      v8 = *(a2 - 16);
      v9 = *(a2 - 8);
      v10 = *(a2 - 4);
      do
      {
        v11 = v7;
        v7 = v6;
        *v11 = *v6;
        *(v11 + 8) = *(v6 + 8);
        *(v11 + 12) = *(v6 + 12);
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = result + 16 * v5;
      }

      while (*v6 < v8);
      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 12) = v10;
    }
  }

  return result;
}

void sub_26B4F7990(_Unwind_Exception *a1)
{
  MEMORY[0x26D6787B0](v2, 0x10E1C4054F459C6);
  v4 = v1[1];
  *v1 = &unk_287C06BE0;
  v1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::RhoMatcher(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  *a1 = &unk_287C06BE0;
  if (!a6)
  {
    operator new();
  }

  *(a1 + 8) = a6;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *(a1 + 48) = 0;
  *(a1 + 52) = -1;
  *(a1 + 56) = 0;
  if (a3 == 3)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    LogMessage::LogMessage(&v17, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "RhoMatcher: Bad match type", 26);
    LogMessage::~LogMessage(&v17);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 16) = 4;
    *(a1 + 48) = 1;
  }

  if (!a4)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v12, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v12, "ERROR");
    }

    LogMessage::LogMessage(&v14, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "RhoMatcher: 0 cannot be used as rho_label", 41);
    LogMessage::~LogMessage(&v14);
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    *(a1 + 20) = -1;
    *(a1 + 48) = 1;
  }

  if (a5 == 1)
  {
    v10 = 1;
  }

  else
  {
    if (a5)
    {
      *(a1 + 24) = 0;
      return a1;
    }

    v10 = (*(*a2 + 56))(a2, 0x10000, 1) != 0;
  }

  *(a1 + 24) = v10;
  return a1;
}

void sub_26B4F7C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v30 = *(v28 + 8);
  *(v28 + 8) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  _Unwind_Resume(exception_object);
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SortedMatcher(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = (*(*a2 + 72))(a2, 0);
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SortedMatcher(a1, v7, a3, a4);
}

{
  *a1 = &unk_287C069F0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0;
  *(a1 + 40) = a3;
  *(a1 + 44) = a4;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0;
  v5 = *fst::TropicalWeightTpl<float>::One();
  *(a1 + 64) = 0xFFFFFFFFLL;
  *(a1 + 72) = v5;
  *(a1 + 76) = -1;
  *(a1 + 82) = 0;
  *(a1 + 88) = &unk_287C06AE0;
  fst::internal::MemoryArenaImpl<48ul>::MemoryArenaImpl((a1 + 96), 1);
}

void *cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~SpecialMatcher(void *a1)
{
  *a1 = &unk_287C06898;
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  *a1 = &unk_287C06BE0;
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~SpecialMatcher(void *a1)
{
  *a1 = &unk_287C06898;
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  *a1 = &unk_287C06BE0;
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::SetState(uint64_t result, uint64_t a2)
{
  if (*(result + 52) != a2)
  {
    v2 = result;
    *(result + 52) = a2;
    result = fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SetState(*(result + 8), a2);
    *(v2 + 56) = *(v2 + 20) != -1;
  }

  return result;
}

uint64_t fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Find(uint64_t a1, int a2)
{
  v3 = *(a1 + 20);
  if (v3 != a2 || v3 == -1)
  {
    result = fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Find(*(a1 + 8), a2);
    if (result)
    {
      *(a1 + 28) = -1;
    }

    else
    {
      if ((a2 - 1) > 0xFFFFFFFD)
      {
        return result;
      }

      if ((*(a1 + 56) & 1) == 0)
      {
        return result;
      }

      result = fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Find(*(a1 + 8), *(a1 + 20));
      *(a1 + 56) = result;
      if (!result)
      {
        return result;
      }

      *(a1 + 28) = a2;
    }

    return 1;
  }

  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  LogMessage::LogMessage(&v9, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "RhoMatcher::Find: bad label (rho)", 33);
  LogMessage::~LogMessage(&v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  result = 0;
  *(a1 + 48) = 1;
  return result;
}

void sub_26B4F8188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Value(uint64_t a1)
{
  v2 = *(a1 + 28);
  result = fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Value(*(a1 + 8));
  v4 = result;
  if (v2 != -1)
  {
    v5 = *result;
    *(a1 + 32) = *result;
    result = (a1 + 32);
    *(a1 + 40) = *(v4 + 2);
    *(a1 + 44) = *(v4 + 3);
    if (*(a1 + 24) != 1)
    {
      v7 = *(a1 + 28);
      if (*(a1 + 16) == 1)
      {
        *result = v7;
        return result;
      }

      goto LABEL_10;
    }

    v6 = *(a1 + 20);
    if (v6 == v5)
    {
      *(a1 + 32) = *(a1 + 28);
    }

    if (v6 == HIDWORD(v5))
    {
      v7 = *(a1 + 28);
LABEL_10:
      *(a1 + 36) = v7;
    }
  }

  return result;
}

uint64_t fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Properties(uint64_t a1)
{
  result = (*(**(a1 + 8) + 80))(*(a1 + 8));
  if (*(a1 + 48))
  {
    result |= 4uLL;
  }

  v3 = *(a1 + 16);
  if (v3 != 4)
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 24) == 1;
      v5 = result & 0xFFFFEFFF3FFAFFFFLL;
      v6 = 0xFFFFEFFF0FF3FFFFLL;
LABEL_8:
      v7 = result & v6;
      if (v4)
      {
        return v7;
      }

      else
      {
        return v5;
      }
    }

    if (v3 == 1)
    {
      v4 = *(a1 + 24) == 1;
      v5 = result & 0xFFFFEFFFCFEEFFFFLL;
      v6 = 0xFFFFEFFF0FCFFFFFLL;
      goto LABEL_8;
    }

    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    LogMessage::LogMessage(&v11, __p);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "RhoMatcher: Bad match type: ", 28);
    MEMORY[0x26D678680](v8, *(a1 + 16));
    LogMessage::~LogMessage(&v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_26B4F8400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Flags(uint64_t a1)
{
  if (*(a1 + 20) != -1 && *(a1 + 16) != 4)
  {
    return (*(**(a1 + 8) + 88))(*(a1 + 8)) | 1;
  }

  v2 = *(**(a1 + 8) + 88);

  return v2();
}

uint64_t fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Priority(uint64_t a1, uint64_t a2)
{
  *(a1 + 52) = a2;
  fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SetState(*(a1 + 8), a2);
  v4 = fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Find(*(a1 + 8), *(a1 + 20));
  *(a1 + 56) = v4;
  if (v4)
  {
    return -1;
  }

  v6 = *(a1 + 8);

  return fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Priority(v6, a2);
}

uint64_t fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::PhiMatcher(uint64_t a1, uint64_t a2, int a3, int a4, char a5, int a6, uint64_t a7)
{
  *a1 = &unk_287C06958;
  if (!a7)
  {
    operator new();
  }

  *(a1 + 8) = a7;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *(a1 + 48) = -1;
  *(a1 + 56) = a5;
  *(a1 + 57) = 0;
  if (a3 == 3)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    LogMessage::LogMessage(&v14, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "PhiMatcher: Bad match type", 26);
    LogMessage::~LogMessage(&v14);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 16) = 4;
    *(a1 + 57) = 1;
  }

  if (a6 == 1)
  {
    v10 = 1;
  }

  else
  {
    if (a6)
    {
      *(a1 + 24) = 0;
      return a1;
    }

    v10 = (*(*a2 + 56))(a2, 0x10000, 1) != 0;
  }

  *(a1 + 24) = v10;
  return a1;
}

void sub_26B4F86F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v20 = *(v18 + 8);
  *(v18 + 8) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  _Unwind_Resume(exception_object);
}

void *fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~PhiMatcher(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_287C06958;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~PhiMatcher(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_287C06958;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetState(uint64_t result, uint64_t a2)
{
  if (*(result + 48) != a2)
  {
    v2 = a2;
    v3 = result;
    result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(*(result + 8), a2);
    *(v3 + 48) = v2;
    *(v3 + 25) = *(v3 + 20) != -1;
  }

  return result;
}

uint64_t fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Find(uint64_t a1, int a2)
{
  if (*(a1 + 20) == a2 && (a2 + 1) >= 2)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v24, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v24, "ERROR");
    }

    LogMessage::LogMessage(__p, v24);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "PhiMatcher::Find: bad label (phi): ", 35);
    MEMORY[0x26D678680](v19, *(a1 + 20));
    LogMessage::~LogMessage(__p);
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    v6 = 0;
    *(a1 + 57) = 1;
    return v6;
  }

  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(*(a1 + 8), *(a1 + 48));
  *(a1 + 28) = -1;
  *(a1 + 52) = *fst::TropicalWeightTpl<float>::One();
  if (*(a1 + 20))
  {
    goto LABEL_6;
  }

  if (a2 == -1)
  {
    return 0;
  }

  if (!a2)
  {
    if ((fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Find(*(a1 + 8), -1) & 1) == 0)
    {
      v16 = *(a1 + 8);
      v17 = 0;
      goto LABEL_39;
    }

    *(a1 + 28) = 0;
    return 1;
  }

LABEL_6:
  if (a2 - 1) <= 0xFFFFFFFD && (*(a1 + 25))
  {
    LODWORD(v5) = *(a1 + 48);
    v6 = 1;
    if ((fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Find(*(a1 + 8), a2) & 1) == 0)
    {
      v7 = MEMORY[0x277D82670];
      while (1)
      {
        if (*(a1 + 20))
        {
          v8 = *(a1 + 20);
        }

        else
        {
          v8 = -1;
        }

        v6 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Find(*(a1 + 8), v8);
        if (!v6)
        {
          return v6;
        }

        if (*(a1 + 56) == 1 && *(fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value(*(a1 + 8)) + 12) == v5)
        {
          *(a1 + 28) = a2;
          return 1;
        }

        v9 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value(*(a1 + 8));
        v10 = *(a1 + 52);
        if (v10 == -INFINITY || (v11 = *(v9 + 8), v11 >= -INFINITY) && v11 <= -INFINITY)
        {
          v12 = *fst::TropicalWeightTpl<float>::NoWeight();
        }

        else
        {
          v13 = v11 == INFINITY || v10 == INFINITY;
          v12 = v10 + v11;
          if (v13)
          {
            v12 = INFINITY;
          }
        }

        *(a1 + 52) = v12;
        v5 = *(fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value(*(a1 + 8)) + 12);
        fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Next(*(a1 + 8));
        if (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(*(a1 + 8)))
        {
          break;
        }

LABEL_36:
        fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(*(a1 + 8), v5);
        if (fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Find(*(a1 + 8), a2))
        {
          return v6;
        }
      }

      v14 = FLAGS_fst_error_fatal;
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v24, "FATAL");
        LogMessage::LogMessage(&v23, v24);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
        LogMessage::LogMessage(&v22, __p);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "PhiMatcher: Phi non-determinism not supported", 45);
      if (v14)
      {
        LogMessage::~LogMessage(&v23);
        if (v25 < 0)
        {
          v15 = v24[0];
LABEL_34:
          operator delete(v15);
        }
      }

      else
      {
        LogMessage::~LogMessage(&v22);
        if (v21 < 0)
        {
          v15 = __p[0];
          goto LABEL_34;
        }
      }

      *(a1 + 57) = 1;
      goto LABEL_36;
    }

    return v6;
  }

  v16 = *(a1 + 8);
  v17 = a2;
LABEL_39:

  return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Find(v16, v17);
}

void sub_26B4F8CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Value(uint64_t a1)
{
  v2 = *(a1 + 28);
  if (v2 != -1)
  {
    if (v2)
    {
LABEL_3:
      v3 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value(*(a1 + 8));
      *(a1 + 32) = *v3;
      v4 = (a1 + 32);
      v5 = *(v3 + 8);
      *(a1 + 40) = v5;
      *(a1 + 44) = *(v3 + 12);
      v6 = *(a1 + 52);
      if (v6 == -INFINITY || v5 >= -INFINITY && v5 <= -INFINITY)
      {
        v7 = *fst::TropicalWeightTpl<float>::NoWeight();
      }

      else
      {
        v10 = v5 == INFINITY || v6 == INFINITY;
        v7 = v6 + v5;
        if (v10)
        {
          v7 = INFINITY;
        }
      }

      *(a1 + 40) = v7;
      v11 = *(a1 + 28);
      if (v11 == -1)
      {
        return v4;
      }

      if (*(a1 + 24) == 1)
      {
        v12 = *(a1 + 20);
        if (*(a1 + 32) == v12)
        {
          *v4 = v11;
        }

        if (*(a1 + 36) != v12)
        {
          return v4;
        }
      }

      else if (*(a1 + 16) == 1)
      {
        *v4 = v11;
        return v4;
      }

      *(a1 + 36) = v11;
      return v4;
    }

LABEL_26:
    v13 = *fst::TropicalWeightTpl<float>::One();
    *(a1 + 32) = 0xFFFFFFFFLL;
    v14 = (a1 + 32);
    v15 = v14[4];
    v4 = v14;
    v14[2] = v13;
    v14[3] = v15;
    if (*(v14 - 4) == 2)
    {
      *v14 = 0xFFFFFFFF00000000;
    }

    return v4;
  }

  if (*(a1 + 52) != *fst::TropicalWeightTpl<float>::One())
  {
    if (*(a1 + 28))
    {
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  v8 = *(a1 + 8);

  return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value(v8);
}

uint64_t fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Properties(uint64_t a1)
{
  result = (*(**(a1 + 8) + 80))(*(a1 + 8));
  if (*(a1 + 57))
  {
    result |= 4uLL;
  }

  v3 = *(a1 + 16);
  if (v3 != 4)
  {
    if (v3 == 2)
    {
      if (*(a1 + 20))
      {
        v5 = result;
      }

      else
      {
        v5 = result | 0x8800000;
      }

      v6 = *(a1 + 24) == 1;
      v7 = v5 & 0xFFFFEFFF0FFAFFFFLL;
      v4 = 0xFFFFEFFF0FF3FFFFLL;
      goto LABEL_14;
    }

    if (v3 == 1)
    {
      v4 = 0xFFFFEFFF0FCFFFFFLL;
      if (*(a1 + 20))
      {
        v5 = result;
      }

      else
      {
        v5 = result | 0x2800000;
      }

      v6 = *(a1 + 24) == 1;
      v7 = v5 & 0xFFFFEFFF0FEEFFFFLL;
LABEL_14:
      v8 = v5 & v4;
      if (v6)
      {
        return v8;
      }

      else
      {
        return v7;
      }
    }

    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    LogMessage::LogMessage(&v12, __p);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "PhiMatcher: Bad match type: ", 28);
    MEMORY[0x26D678680](v9, *(a1 + 16));
    LogMessage::~LogMessage(&v12);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_26B4F904C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Flags(uint64_t a1)
{
  if (*(a1 + 20) != -1 && *(a1 + 16) != 4)
  {
    return (*(**(a1 + 8) + 88))(*(a1 + 8)) | 1;
  }

  v2 = *(**(a1 + 8) + 88);

  return v2();
}

int *fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Final@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float *a3@<X8>)
{
  v6 = (*(**(a1 + 8) + 72))(*(a1 + 8));
  result = (*(*v6 + 24))(&v19 + 4);
  if (*(a1 + 20) == -1)
  {
    v8 = *(&v19 + 1);
  }

  else
  {
    result = fst::TropicalWeightTpl<float>::Zero();
    v8 = *(&v19 + 1);
    LODWORD(v21) = HIDWORD(v19);
    v20 = *result;
    if (*(&v19 + 1) == v20)
    {
      HIDWORD(v19) = *fst::TropicalWeightTpl<float>::One();
      while (1)
      {
        fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(*(a1 + 8), a2);
        v9 = (*(**(a1 + 8) + 72))(*(a1 + 8));
        (*(*v9 + 24))(&v19);
        v10 = fst::TropicalWeightTpl<float>::Zero();
        LODWORD(v21) = v19;
        v20 = *v10;
        v11.n128_u32[0] = v19;
        if (*&v19 != v20)
        {
          break;
        }

        v12 = *(a1 + 20) ? *(a1 + 20) : -1;
        if (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Find(*(a1 + 8), v12))
        {
          break;
        }

        v13 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value(*(a1 + 8));
        if (*(&v19 + 1) == -INFINITY || (v14 = *(v13 + 8), v14 >= -INFINITY) && v14 <= -INFINITY)
        {
          v15 = *fst::TropicalWeightTpl<float>::NoWeight();
        }

        else
        {
          v16 = v14 == INFINITY || *(&v19 + 1) == INFINITY;
          v15 = *(&v19 + 1) + v14;
          if (v16)
          {
            v15 = INFINITY;
          }
        }

        *(&v19 + 1) = v15;
        if (a2 == *(fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value(*(a1 + 8)) + 12))
        {
          result = fst::TropicalWeightTpl<float>::Zero();
          goto LABEL_26;
        }

        a2 = *(fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value(*(a1 + 8)) + 12);
      }

      v17 = (*(**(a1 + 8) + 72))(*(a1 + 8), v11);
      result = (*(*v17 + 24))(&v21);
      if (*(&v19 + 1) == -INFINITY || *&v21 >= -INFINITY && *&v21 <= -INFINITY)
      {
        result = fst::TropicalWeightTpl<float>::NoWeight();
LABEL_26:
        v8 = *result;
        goto LABEL_32;
      }

      v18 = *&v21 == INFINITY || *(&v19 + 1) == INFINITY;
      v8 = *(&v19 + 1) + *&v21;
      if (v18)
      {
        v8 = INFINITY;
      }
    }
  }

LABEL_32:
  *a3 = v8;
  return result;
}

uint64_t fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Priority(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 20);
  v4 = *(a1 + 8);
  if (v3 != -1)
  {
    fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(v4, a2);
    if (*(a1 + 20))
    {
      v5 = *(a1 + 20);
    }

    else
    {
      v5 = -1;
    }

    if (fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Find(*(a1 + 8), v5))
    {
      return -1;
    }

    v4 = *(a1 + 8);
  }

  v7 = *(*(*(*v4 + 72))(v4) + 32);

  return v7();
}

uint64_t fst::MatcherBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Final(uint64_t a1)
{
  v1 = *(*(*(*a1 + 72))(a1) + 24);

  return v1();
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SortedMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_287C069F0;
  v5 = (*(**(a2 + 16) + 72))(*(a2 + 16), a3);
  *(a1 + 8) = v5;
  *(a1 + 16) = v5;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = -1;
  *(a1 + 56) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 88) = &unk_287C06AE0;
  fst::internal::MemoryArenaImpl<48ul>::MemoryArenaImpl((a1 + 96), 1);
}

void sub_26B4F96B8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SortedMatcher(v3);
  }

  _Unwind_Resume(exception_object);
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~SortedMatcher(void *a1)
{
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~SortedMatcher(a1);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Type(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 == 4)
  {
    return 4;
  }

  if (v2 == 1)
  {
    v6 = 0x10000000;
  }

  else
  {
    v6 = 0x40000000;
  }

  v7 = *(a1 + 16);
  if (v2 == 1)
  {
    v8 = 805306368;
  }

  else
  {
    v8 = 3221225472;
  }

  v9 = (*(*v7 + 56))(v7, v8, a2);
  if ((v9 & v6) != 0)
  {
    return *(a1 + 40);
  }

  v10 = 0x80000000;
  if (v2 == 1)
  {
    v10 = 0x20000000;
  }

  if ((v9 & v10) != 0)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(uint64_t result, uint64_t a2)
{
  if (*(result + 24) != a2)
  {
    v3 = result;
    *(result + 24) = a2;
    if (*(result + 40) == 4)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      LogMessage::LogMessage(&v8, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "SortedMatcher: Bad match type", 29);
      LogMessage::~LogMessage(&v8);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }

      *(v3 + 82) = 1;
    }

    fst::Destroy<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(*(v3 + 32), v3 + 88);
    v4 = *(v3 + 144);
    if (v4)
    {
      *(v3 + 144) = v4[5];
    }

    else
    {
      v4 = fst::internal::MemoryArenaImpl<48ul>::Allocate((v3 + 96), 1);
      v4[5] = 0;
    }

    v5 = *(v3 + 16);
    v4[4] = 0;
    *v4 = 0u;
    *(v4 + 1) = 0u;
    (*(*v5 + 120))(v5, a2, v4);
    *(v3 + 32) = v4;
    if (*v4)
    {
      (*(**v4 + 72))(*v4, 16, 16);
    }

    result = (*(**(v3 + 16) + 32))(*(v3 + 16), a2);
    *(v3 + 56) = result;
    *(v3 + 76) = a2;
  }

  return result;
}

void sub_26B4F99E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Find(uint64_t a1, int a2)
{
  *(a1 + 81) = 1;
  if (*(a1 + 82) == 1)
  {
    LOBYTE(v3) = 0;
    *(a1 + 80) = 0;
    *(a1 + 48) = -1;
    return v3 & 1;
  }

  *(a1 + 80) = a2 == 0;
  if (a2 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  *(a1 + 48) = v4;
  v5 = **(a1 + 32);
  if (v5)
  {
    if (*(a1 + 40) == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    (*(*v5 + 72))(v5, v6, 15);
    v4 = *(a1 + 48);
  }

  if (v4 >= *(a1 + 44))
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = v9 + ((v8 - v9) >> 1);
        v11 = *(a1 + 32);
        if (*v11)
        {
          (*(**v11 + 56))(*v11, v9 + ((v8 - v9) >> 1));
        }

        else
        {
          v11[4] = v10;
        }

        if (fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::GetLabel(a1) < *(a1 + 48))
        {
          v9 = v10 + 1;
        }

        else
        {
          v8 = v9 + ((v8 - v9) >> 1);
        }
      }

      while (v9 < v8);
    }

    else
    {
      v9 = 0;
    }

    v17 = *(a1 + 32);
    if (*v17)
    {
      (*(**v17 + 56))(*v17, v9);
    }

    else
    {
      v17[4] = v9;
    }

    if (v9 < *(a1 + 56) && fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::GetLabel(a1) == *(a1 + 48))
    {
      LOBYTE(v3) = 1;
      return v3 & 1;
    }

LABEL_45:
    LOBYTE(v3) = *(a1 + 80);
    return v3 & 1;
  }

  v7 = *(a1 + 32);
  if (*v7)
  {
    (*(**v7 + 48))(*v7);
  }

  else
  {
    v7[4] = 0;
  }

  while (1)
  {
    v13 = *(a1 + 32);
    if (*v13)
    {
      if ((*(**v13 + 16))(*v13))
      {
        goto LABEL_45;
      }
    }

    else if (v13[4] >= v13[2])
    {
      goto LABEL_45;
    }

    Label = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::GetLabel(a1);
    v15 = *(a1 + 48);
    v16 = Label == v15;
    v3 = 2 * (Label > v15);
    if (v16)
    {
      v3 = 1;
    }

    if (v3)
    {
      break;
    }

    v12 = *(a1 + 32);
    if (*v12)
    {
      (*(**v12 + 32))(*v12);
    }

    else
    {
      ++v12[4];
    }
  }

  if (v3 != 1)
  {
    goto LABEL_45;
  }

  return v3 & 1;
}

BOOL fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(uint64_t a1)
{
  if (*(a1 + 80))
  {
    return 0;
  }

  v3 = *(a1 + 32);
  if (*v3)
  {
    if ((*(**v3 + 16))(*v3))
    {
      return 1;
    }
  }

  else if (v3[4] >= v3[2])
  {
    return 1;
  }

  if (*(a1 + 81) != 1)
  {
    return 0;
  }

  v4 = **(a1 + 32);
  if (v4)
  {
    if (*(a1 + 40) == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    (*(*v4 + 72))(v4, v5, 15);
  }

  return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::GetLabel(a1) != *(a1 + 48);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    return a1 + 64;
  }

  v3 = *(a1 + 32);
  if (!*v3)
  {
    return v3[1] + 16 * v3[4];
  }

  (*(**v3 + 72))(*v3, 15, 15);
  v3 = *(a1 + 32);
  if (!*v3)
  {
    return v3[1] + 16 * v3[4];
  }

  v4 = *(**v3 + 24);

  return v4();
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Next(uint64_t result)
{
  if (*(result + 80) == 1)
  {
    *(result + 80) = 0;
  }

  else
  {
    v1 = *(result + 32);
    result = *v1;
    if (*v1)
    {
      return (*(*result + 32))();
    }

    else
    {
      ++v1[4];
    }
  }

  return result;
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Properties(uint64_t a1, uint64_t a2)
{
  v2 = 4;
  if (!*(a1 + 82))
  {
    v2 = 0;
  }

  return v2 | a2;
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Final(uint64_t a1)
{
  v1 = *(*(*(*a1 + 72))(a1) + 24);

  return v1();
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Priority(uint64_t a1)
{
  v1 = *(*(*(*a1 + 72))(a1) + 32);

  return v1();
}

void *fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06AE0;
  a1[1] = &unk_287C06B08;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06AE0;
  a1[1] = &unk_287C06B08;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::internal::MemoryPoolImpl<40ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C06AE0;
  a1[1] = &unk_287C06B08;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::internal::MemoryPoolImpl<40ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C06AE0;
  a1[1] = &unk_287C06B08;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::MemoryArenaImpl<48ul>::MemoryArenaImpl(void *a1, uint64_t a2)
{
  *a1 = &unk_287C06B08;
  a1[1] = 48 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *fst::internal::MemoryArenaImpl<48ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C06B08;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);
  return a1;
}

void fst::internal::MemoryArenaImpl<48ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C06B08;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);

  JUMPOUT(0x26D6787B0);
}

void *fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~SortedMatcher(void *a1)
{
  *a1 = &unk_287C069F0;
  fst::Destroy<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1[4], (a1 + 11));
  a1[11] = &unk_287C06AE0;
  a1[12] = &unk_287C06B08;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 15);
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t fst::Destroy<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    result = *result;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    else
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        --*v4;
      }
    }

    *(v3 + 40) = *(a2 + 56);
    *(a2 + 56) = v3;
  }

  return result;
}

uint64_t fst::internal::MemoryArenaImpl<48ul>::Allocate(void *a1, uint64_t a2)
{
  v3 = 48 * a2;
  v4 = a1[1];
  if (192 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::GetLabel(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*v2)
  {
    v3 = (*(**v2 + 24))(*v2);
  }

  else
  {
    v3 = v2[1] + 16 * v2[4];
  }

  return *(v3 + 4 * (*(a1 + 40) != 1));
}

uint64_t fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SigmaMatcher(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  *a1 = &unk_287C06B48;
  if (!a6)
  {
    operator new();
  }

  *(a1 + 8) = a6;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *(a1 + 52) = 0;
  *(a1 + 56) = -1;
  if (a3 == 3)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    LogMessage::LogMessage(&v17, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "SigmaMatcher: Bad match type", 28);
    LogMessage::~LogMessage(&v17);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 16) = 4;
    *(a1 + 52) = 1;
  }

  if (!a4)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v12, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v12, "ERROR");
    }

    LogMessage::LogMessage(&v14, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "SigmaMatcher: 0 cannot be used as sigma_label", 45);
    LogMessage::~LogMessage(&v14);
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    *(a1 + 20) = -1;
    *(a1 + 52) = 1;
  }

  if (a5 == 1)
  {
    v10 = 1;
  }

  else
  {
    if (a5)
    {
      *(a1 + 24) = 0;
      return a1;
    }

    v10 = (*(*a2 + 56))(a2, 0x10000, 1) != 0;
  }

  *(a1 + 24) = v10;
  return a1;
}

void sub_26B4FA830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v30 = *(v28 + 8);
  *(v28 + 8) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  _Unwind_Resume(exception_object);
}

void *fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~SigmaMatcher(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_287C06B48;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~SigmaMatcher(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_287C06B48;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SetState(uint64_t result, uint64_t a2)
{
  if (*(result + 56) != a2)
  {
    v2 = a2;
    v3 = result;
    *(result + 56) = a2;
    v4 = *(result + 8);
    if (*(v4 + 48) != a2)
    {
      fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(*(v4 + 8), a2);
      *(v4 + 48) = v2;
      *(v4 + 25) = *(v4 + 20) != -1;
    }

    v5 = *(v3 + 20);
    if (v5 == -1)
    {
      result = 0;
    }

    else
    {
      result = fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Find(*(v3 + 8), v5);
    }

    *(v3 + 25) = result;
  }

  return result;
}

uint64_t fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Find(uint64_t a1, int a2)
{
  *(a1 + 48) = a2;
  v3 = *(a1 + 20);
  if (v3 != a2 || v3 == -1)
  {
    result = fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Find(*(a1 + 8), a2);
    if (result)
    {
      *(a1 + 28) = -1;
    }

    else
    {
      if ((a2 - 1) > 0xFFFFFFFD)
      {
        return result;
      }

      if ((*(a1 + 25) & 1) == 0)
      {
        return result;
      }

      result = fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Find(*(a1 + 8), *(a1 + 20));
      if (!result)
      {
        return result;
      }

      *(a1 + 28) = a2;
    }

    return 1;
  }

  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  LogMessage::LogMessage(&v9, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "SigmaMatcher::Find: bad label (sigma)", 37);
  LogMessage::~LogMessage(&v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  result = 0;
  *(a1 + 52) = 1;
  return result;
}

void sub_26B4FAC1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Value(uint64_t a1)
{
  v2 = *(a1 + 28);
  result = fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Value(*(a1 + 8));
  v4 = result;
  if (v2 != -1)
  {
    v5 = *result;
    *(a1 + 32) = *result;
    result = (a1 + 32);
    *(a1 + 40) = *(v4 + 2);
    *(a1 + 44) = *(v4 + 3);
    if (*(a1 + 24) != 1)
    {
      v7 = *(a1 + 28);
      if (*(a1 + 16) == 1)
      {
        *result = v7;
        return result;
      }

      goto LABEL_10;
    }

    v6 = *(a1 + 20);
    if (v6 == v5)
    {
      *(a1 + 32) = *(a1 + 28);
    }

    if (v6 == HIDWORD(v5))
    {
      v7 = *(a1 + 28);
LABEL_10:
      *(a1 + 36) = v7;
    }
  }

  return result;
}

uint64_t fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Next(uint64_t a1)
{
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Next(*(*(a1 + 8) + 8));
  result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(*(*(a1 + 8) + 8));
  if (result && *(a1 + 25) == 1 && *(a1 + 28) == -1 && *(a1 + 48) >= 1)
  {
    result = fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Find(*(a1 + 8), *(a1 + 20));
    *(a1 + 28) = *(a1 + 48);
  }

  return result;
}

uint64_t fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Properties(uint64_t a1)
{
  result = (*(**(a1 + 8) + 80))(*(a1 + 8));
  if (*(a1 + 52))
  {
    result |= 4uLL;
  }

  v3 = *(a1 + 16);
  if (v3 != 4)
  {
    if (*(a1 + 24) == 1)
    {
      v4 = -4030464001;
      return result & (v4 & 0xFFFF0000FFFFFFFFLL | 0xEFFF00000000);
    }

    if (v3 == 2)
    {
      v4 = -3225223169;
      return result & (v4 & 0xFFFF0000FFFFFFFFLL | 0xEFFF00000000);
    }

    if (v3 == 1)
    {
      v4 = -809304065;
      return result & (v4 & 0xFFFF0000FFFFFFFFLL | 0xEFFF00000000);
    }

    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    LogMessage::LogMessage(&v8, __p);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "SigmaMatcher: Bad match type: ", 30);
    MEMORY[0x26D678680](v5, *(a1 + 16));
    LogMessage::~LogMessage(&v8);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_26B4FAEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Flags(uint64_t a1)
{
  if (*(a1 + 20) != -1 && *(a1 + 16) != 4)
  {
    return (*(**(a1 + 8) + 88))(*(a1 + 8)) | 1;
  }

  v2 = *(**(a1 + 8) + 88);

  return v2();
}

uint64_t fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Priority(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != -1)
  {
    fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SetState(a1, a2);
    if (*(a1 + 25))
    {
      return -1;
    }
  }

  v5 = *(a1 + 8);

  return fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Priority(v5, a2);
}

void *fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::~RhoMatcher(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_287C06BE0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::~RhoMatcher(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_287C06BE0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x26D6787B0);
}

void sub_26B4FB49C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v18[11] = v19;
  v18[12] = &unk_287C06B08;
  std::__list_imp<std::unique_ptr<char []>>::clear(v18 + 15);
  v21 = v18[1];
  v18[1] = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  _Unwind_Resume(a1);
}

void fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::CreateBase1<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  v4 = *(a3 + 1);
  v5 = *(a3 + 1);
  v6 = *(a3 + 2);
  std::allocate_shared[abi:ne200100]<fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>,std::allocator<fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const&,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const&,fst::ComposeFstImplOptions<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> const&,0>();
}

void *fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ComposeFst(void *a1)
{
  *a1 = &unk_287C07FF8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ComposeFst(void *a1)
{
  *a1 = &unk_287C07FF8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::ImplToFst<fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 24);

    return v7();
  }
}

void *std::__shared_ptr_emplace<fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>>::__shared_ptr_emplace[abi:ne200100]<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const&,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const&,fst::ComposeFstImplOptions<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> const&,std::allocator<fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C06D28;
  fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>((a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287C06D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::CacheBaseImpl(a1, a4) = &unk_287C06D78;
  v8 = *(a4 + 48);
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(*v9.n128_u64[0] + 72))(v9.n128_u64[0], v9);
  *(a1 + 168) = (*(**(a1 + 152) + 72))(*(a1 + 152));
  v10 = *(a4 + 56);
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  *(a1 + 184) = *(a4 + 64) & 1;
  std::string::basic_string[abi:ne200100]<0>(&__str, "compose");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v11 = (*(*a3 + 96))(a3);
  v12 = (*(*a2 + 104))(a2);
  if (!fst::CompatSymbols(v11, v12, 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "ERROR");
    }

    LogMessage::LogMessage(&v25, &__str);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "ComposeFst: Output symbol table of 1st argument ", 48);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "does not match input symbol table of 2nd argument", 49);
    LogMessage::~LogMessage(&v25);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    *(a1 + 8) |= 4uLL;
  }

  v14 = (*(**(a1 + 160) + 96))(*(a1 + 160));
  fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(a1, v14);
  v15 = (*(**(a1 + 168) + 104))(*(a1 + 168));
  fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(a1, v15);
  fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
  if (FLAGS_v >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
    LogMessage::LogMessage(&v24, __p);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "ComposeFstImpl: Match type: ", 28);
    MEMORY[0x26D678680](v16, *(a1 + 188));
    LogMessage::~LogMessage(&v24);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a1 + 188) == 4)
  {
    *(a1 + 8) |= 4uLL;
  }

  v17 = (*(*a2 + 56))(a2, 0xFFFFFFFF0007, 0);
  v18 = (*(*a3 + 56))(a3, 0xFFFFFFFF0007, 0);
  v19 = (*(**(a1 + 144) + 80))(*(a1 + 144), v17);
  v20 = (*(**(a1 + 152) + 80))(*(a1 + 152), v18);
  *(a1 + 8) = *(a1 + 8) & 0xFFFF00000000FFFFLL | fst::ComposeProperties(v19, v20) & 0xFFFFFFFF0004;
  return a1;
}

void sub_26B4FBED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::~unique_ptr[abi:ne200100](v26);
  fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(v25);
  _Unwind_Resume(a1);
}

void fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(uint64_t a1)
{
  if (((*(**(a1 + 144) + 88))(*(a1 + 144)) & 1) != 0 && (*(**(a1 + 144) + 24))(*(a1 + 144), 1) != 2)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    LogMessage::LogMessage(&v14, __p);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "ComposeFst: 1st argument cannot perform required matching ", 58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "(sort?).", 8);
  }

  else if (((*(**(a1 + 152) + 88))(*(a1 + 152)) & 1) != 0 && (*(**(a1 + 152) + 24))(*(a1 + 152), 1) != 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    LogMessage::LogMessage(&v14, __p);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "ComposeFst: 2nd argument cannot perform required matching ", 58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "(sort?).", 8);
  }

  else
  {
    v2 = (*(**(a1 + 144) + 24))(*(a1 + 144), 0);
    v3 = (*(**(a1 + 152) + 24))(*(a1 + 152), 0);
    if (v3 == 1 && v2 == 2)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v6 = v2 == 2;
    if (v2 == 2)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1;
    }

    if (v6 || v3 == 1)
    {
      goto LABEL_36;
    }

    if ((*(**(a1 + 144) + 24))(*(a1 + 144), 1) == 2)
    {
      v7 = 2;
      goto LABEL_36;
    }

    v7 = 1;
    if ((*(**(a1 + 152) + 24))(*(a1 + 152), 1) == 1)
    {
      goto LABEL_36;
    }

    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    LogMessage::LogMessage(&v14, __p);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "ComposeFst: 1st argument cannot match on output labels ", 55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "and 2nd argument cannot match on input labels (sort?).", 54);
  }

  LogMessage::~LogMessage(&v14);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = 4;
LABEL_36:
  *(a1 + 188) = v7;
}

void sub_26B4FC314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::unique_ptr<fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[1];
    v2[1] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    MEMORY[0x26D6787B0](v2, 0x1060C40AD892F49);
  }

  return a1;
}

void fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(uint64_t a1)
{
  fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 56))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 56))(*(a1 + 168), 4, 0) || ((*(**(a1 + 144) + 80))(*(a1 + 144), 0) & 4) != 0 || ((*(**(a1 + 152) + 80))(*(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 104) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v16 = *(v4 + 8);
  fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SetState(v7, v5, v6, &v16);
  if (fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
  {
    v9 = a1[20];
    v8 = a1[21];
    v10 = a1[19];
    v11 = a1;
    v12 = a2;
    v13 = v6;
    v14 = v5;
    v15 = 1;
  }

  else
  {
    v8 = a1[20];
    v9 = a1[21];
    v10 = a1[18];
    v11 = a1;
    v12 = a2;
    v13 = v5;
    v14 = v6;
    v15 = 0;
  }

  fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(v11, v12, v8, v13, v9, v14, v10, v15);
}

uint64_t fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(**(a1 + 144) + 24))(*(a1 + 144), 0) == a3 && (*(**(a1 + 152) + 24))(*(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 16))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    result = (*(*a1[21] + 16))(a1[21]);
    if (result != -1)
    {
      v4 = __PAIR64__(result, v3);
      v5 = 0;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::FindId(a1[22], &v4, 1);
    }
  }

  return result;
}

int *fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal@<X0>(void *a1@<X0>, int a2@<W1>, float *a3@<X8>)
{
  v5 = (*(a1[22] + 104) + 12 * a2);
  v6 = *v5;
  fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Final(*(*(a1[18] + 8) + 8), v6, &v13);
  result = fst::TropicalWeightTpl<float>::Zero();
  v8 = v13;
  v15 = v13;
  v14 = *result;
  if (v13 != v14)
  {
    v9 = v5[1];
    fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Final(*(*(a1[19] + 8) + 8), v9, &v12);
    result = fst::TropicalWeightTpl<float>::Zero();
    v8 = v12;
    v15 = v12;
    v14 = *result;
    if (v12 != v14)
    {
      v10 = a1[17];
      LOBYTE(v15) = *(v5 + 8);
      result = fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SetState(v10, v6, v9, &v15);
      if (v13 == -INFINITY || v12 >= -INFINITY && v12 <= -INFINITY)
      {
        result = fst::TropicalWeightTpl<float>::NoWeight();
        v8 = *result;
      }

      else
      {
        v11 = v12 == INFINITY || v13 == INFINITY;
        v8 = v13 + v12;
        if (v11)
        {
          v8 = INFINITY;
        }
      }
    }
  }

  *a3 = v8;
  return result;
}

uint64_t fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287C067C0;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_287C06E70;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xFFFFFFFF00000000;
  *(a1 + 104) = *a2;
  v4 = *(a2 + 16);
  *(a1 + 112) = *(a2 + 8);
  *(a1 + 56) = 0;
  *(a1 + 60) = 0xFFFFFFFFLL;
  if (!v4)
  {
    operator new();
  }

  *(a1 + 120) = v4;
  *(a1 + 128) = 0;
  *(a1 + 129) = *(a2 + 24) & 1;
  return a1;
}

void sub_26B4FCABC(_Unwind_Exception *a1)
{
  MEMORY[0x26D6787B0](v2, 0x10A0C40690396FALL);
  if (*v3)
  {
    operator delete(*v3);
  }

  fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

void fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(uint64_t a1)
{
  fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x26D6787B0);
}

void fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorCacheStore(uint64_t a1, _BYTE *a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a1 + 32;
  *(a1 + 40) = a1 + 32;
  *(a1 + 48) = 0;
  operator new();
}

void sub_26B4FCC30(_Unwind_Exception *a1)
{
  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(v1 + 10);
  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(v1 + 9);
  std::__list_imp<int,fst::PoolAllocator<int>>::clear(v2);
  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(v1 + 7);
  v5 = *v3;
  if (*v3)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Clear(void *a1)
{
  v2 = a1[1];
  if (a1[2] != v2)
  {
    v3 = 0;
    do
    {
      fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(*(v2 + 8 * v3++), a1 + 9);
      v2 = a1[1];
    }

    while (v3 < (a1[2] - v2) >> 3);
  }

  a1[2] = v2;

  return std::__list_imp<int,fst::PoolAllocator<int>>::clear(a1 + 4);
}

uint64_t fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    v4 = (result + 24);
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::__destroy_vector::operator()[abi:ne200100](&v4);
    fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator((v3 + 48));
    result = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<1>>(*a2);
    *(v3 + 64) = *(result + 56);
    *(result + 56) = v3;
  }

  return result;
}

void std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::__destroy_vector::operator()[abi:ne200100](uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::deallocate(v1 + 3, v2, (v1[2] - v2) >> 4);
  }
}

void fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::deallocate(uint64_t *a1, void *__p, unint64_t a3)
{
  if (a3 == 2)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<2>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[4] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<1>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[2] = *(v4 + 56);
LABEL_22:
    *(v4 + 56) = __p;
    return;
  }

  if (a3 <= 4)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<4>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[8] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 8)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<8>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[16] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x10)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<16>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[32] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x20)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<32>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[64] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x40)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<64>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[128] = *(v4 + 56);
    goto LABEL_22;
  }

  operator delete(__p);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<1>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x80)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x11uLL);
    v1 = *v2;
  }

  if (!*(v1 + 128))
  {
    operator new();
  }

  return *(v1 + 128);
}

void std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::__append(a1, v5);
  }
}

void std::vector<std::unique_ptr<fst::MemoryPoolBase>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<CMDPToken>>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<fst::MemoryPoolBase>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<fst::MemoryPoolBase>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<fst::MemoryPoolBase>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<fst::MemoryPoolBase>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06EF8;
  a1[1] = &unk_287C06F20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06EF8;
  a1[1] = &unk_287C06F20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::internal::MemoryPoolImpl<16ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C06EF8;
  a1[1] = &unk_287C06F20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::internal::MemoryPoolImpl<16ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C06EF8;
  a1[1] = &unk_287C06F20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::MemoryArenaImpl<24ul>::MemoryArenaImpl(void *a1, uint64_t a2)
{
  *a1 = &unk_287C06F20;
  a1[1] = 24 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *fst::internal::MemoryArenaImpl<24ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C06F20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);
  return a1;
}

void fst::internal::MemoryArenaImpl<24ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C06F20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<2>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x100)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x21uLL);
    v1 = *v2;
  }

  if (!*(v1 + 256))
  {
    operator new();
  }

  return *(v1 + 256);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06FB8;
  a1[1] = &unk_287C06FE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06FB8;
  a1[1] = &unk_287C06FE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::internal::MemoryPoolImpl<32ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C06FB8;
  a1[1] = &unk_287C06FE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::internal::MemoryPoolImpl<32ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C06FB8;
  a1[1] = &unk_287C06FE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::MemoryArenaImpl<40ul>::MemoryArenaImpl(void *a1, uint64_t a2)
{
  *a1 = &unk_287C06FE0;
  a1[1] = 40 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *fst::internal::MemoryArenaImpl<40ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C06FE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);
  return a1;
}

void fst::internal::MemoryArenaImpl<40ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C06FE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<4>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x200)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x41uLL);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::internal::MemoryPoolImpl<64ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::internal::MemoryPoolImpl<64ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::MemoryArenaImpl<72ul>::MemoryArenaImpl(void *a1, uint64_t a2)
{
  *a1 = &unk_287C070A0;
  a1[1] = 72 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *fst::internal::MemoryArenaImpl<72ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);
  return a1;
}

void fst::internal::MemoryArenaImpl<72ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<8>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x400)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x81uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::internal::MemoryPoolImpl<128ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::internal::MemoryPoolImpl<128ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::MemoryArenaImpl<136ul>::MemoryArenaImpl(void *a1, uint64_t a2)
{
  *a1 = &unk_287C07160;
  a1[1] = 136 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *fst::internal::MemoryArenaImpl<136ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);
  return a1;
}

void fst::internal::MemoryArenaImpl<136ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<16>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x800)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x101uLL);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::internal::MemoryPoolImpl<256ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::internal::MemoryPoolImpl<256ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::MemoryArenaImpl<264ul>::MemoryArenaImpl(void *a1, uint64_t a2)
{
  *a1 = &unk_287C07220;
  a1[1] = 264 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *fst::internal::MemoryArenaImpl<264ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);
  return a1;
}

void fst::internal::MemoryArenaImpl<264ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<32>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x1000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x201uLL);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::internal::MemoryPoolImpl<512ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::internal::MemoryPoolImpl<512ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::MemoryArenaImpl<520ul>::MemoryArenaImpl(void *a1, uint64_t a2)
{
  *a1 = &unk_287C072E0;
  a1[1] = 520 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *fst::internal::MemoryArenaImpl<520ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);
  return a1;
}

void fst::internal::MemoryArenaImpl<520ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<64>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x2000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x401uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x2000))
  {
    operator new();
  }

  return *(v1 + 0x2000);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07378;
  a1[1] = &unk_287C073A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07378;
  a1[1] = &unk_287C073A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::internal::MemoryPoolImpl<1024ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C07378;
  a1[1] = &unk_287C073A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::internal::MemoryPoolImpl<1024ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C07378;
  a1[1] = &unk_287C073A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::MemoryArenaImpl<1032ul>::MemoryArenaImpl(void *a1, uint64_t a2)
{
  *a1 = &unk_287C073A0;
  a1[1] = 1032 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *fst::internal::MemoryArenaImpl<1032ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C073A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);
  return a1;
}

void fst::internal::MemoryArenaImpl<1032ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C073A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<1>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x200)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x41uLL);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<2>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x400)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x81uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<4>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x800)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x101uLL);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<8>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x1000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x201uLL);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<16>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x2000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x401uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x2000))
  {
    operator new();
  }

  return *(v1 + 0x2000);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07378;
  a1[1] = &unk_287C073A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07378;
  a1[1] = &unk_287C073A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<32>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x4000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x801uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x4000))
  {
    operator new();
  }

  return *(v1 + 0x4000);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07578;
  a1[1] = &unk_287C075A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07578;
  a1[1] = &unk_287C075A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::internal::MemoryPoolImpl<2048ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C07578;
  a1[1] = &unk_287C075A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::internal::MemoryPoolImpl<2048ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C07578;
  a1[1] = &unk_287C075A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::MemoryArenaImpl<2056ul>::MemoryArenaImpl(void *a1, uint64_t a2)
{
  *a1 = &unk_287C075A0;
  a1[1] = 2056 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *fst::internal::MemoryArenaImpl<2056ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C075A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);
  return a1;
}

void fst::internal::MemoryArenaImpl<2056ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C075A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<64>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x8000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x1001uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x8000))
  {
    operator new();
  }

  return *(v1 + 0x8000);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07638;
  a1[1] = &unk_287C07660;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07638;
  a1[1] = &unk_287C07660;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::internal::MemoryPoolImpl<4096ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C07638;
  a1[1] = &unk_287C07660;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::internal::MemoryPoolImpl<4096ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C07638;
  a1[1] = &unk_287C07660;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::MemoryArenaImpl<4104ul>::MemoryArenaImpl(void *a1, uint64_t a2)
{
  *a1 = &unk_287C07660;
  a1[1] = 4104 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *fst::internal::MemoryArenaImpl<4104ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C07660;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);
  return a1;
}

void fst::internal::MemoryArenaImpl<4104ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C07660;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);

  JUMPOUT(0x26D6787B0);
}

void *std::__list_imp<int,fst::PoolAllocator<int>>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    v2 = result[1];
    v3 = *(*result + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    result[2] = 0;
    while (v2 != v1)
    {
      v5 = v2[1];
      result = std::__list_imp<int,fst::PoolAllocator<int>>::__delete_node[abi:ne200100](v1, v2);
      v2 = v5;
    }
  }

  return result;
}

uint64_t std::__list_imp<int,fst::PoolAllocator<int>>::__delete_node[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>(*(a1 + 24));
  if (a2)
  {
    *(a2 + 24) = *(result + 56);
    *(result + 56) = a2;
  }

  return result;
}

void fst::PoolAllocator<std::__list_node<int,void *>>::deallocate(uint64_t *a1, void *__p, unint64_t a3)
{
  if (a3 == 2)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<2>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[6] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[3] = *(v4 + 56);
LABEL_22:
    *(v4 + 56) = __p;
    return;
  }

  if (a3 <= 4)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[12] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 8)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[24] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x10)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[48] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x20)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<32>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[96] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x40)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[192] = *(v4 + 56);
    goto LABEL_22;
  }

  operator delete(__p);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0xC7)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x19uLL);
    v1 = *v2;
  }

  if (!*(v1 + 192))
  {
    operator new();
  }

  return *(v1 + 192);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C076F8;
  a1[1] = &unk_287C07720;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C076F8;
  a1[1] = &unk_287C07720;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::internal::MemoryPoolImpl<24ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C076F8;
  a1[1] = &unk_287C07720;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::internal::MemoryPoolImpl<24ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C076F8;
  a1[1] = &unk_287C07720;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::MemoryArenaImpl<32ul>::MemoryArenaImpl(void *a1, uint64_t a2)
{
  *a1 = &unk_287C07720;
  a1[1] = 32 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *fst::internal::MemoryArenaImpl<32ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C07720;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);
  return a1;
}

void fst::internal::MemoryArenaImpl<32ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C07720;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<2>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x187)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x31uLL);
    v1 = *v2;
  }

  if (!*(v1 + 384))
  {
    operator new();
  }

  return *(v1 + 384);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x307)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x61uLL);
    v1 = *v2;
  }

  if (!*(v1 + 768))
  {
    operator new();
  }

  return *(v1 + 768);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C077F8;
  a1[1] = &unk_287C07820;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C077F8;
  a1[1] = &unk_287C07820;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::internal::MemoryPoolImpl<96ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C077F8;
  a1[1] = &unk_287C07820;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::internal::MemoryPoolImpl<96ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C077F8;
  a1[1] = &unk_287C07820;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::MemoryArenaImpl<104ul>::MemoryArenaImpl(void *a1, uint64_t a2)
{
  *a1 = &unk_287C07820;
  a1[1] = 104 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *fst::internal::MemoryArenaImpl<104ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C07820;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);
  return a1;
}

void fst::internal::MemoryArenaImpl<104ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C07820;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x607)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0xC1uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1536))
  {
    operator new();
  }

  return *(v1 + 1536);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C078B8;
  a1[1] = &unk_287C078E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C078B8;
  a1[1] = &unk_287C078E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::internal::MemoryPoolImpl<192ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C078B8;
  a1[1] = &unk_287C078E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::internal::MemoryPoolImpl<192ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C078B8;
  a1[1] = &unk_287C078E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::MemoryArenaImpl<200ul>::MemoryArenaImpl(void *a1, uint64_t a2)
{
  *a1 = &unk_287C078E0;
  a1[1] = 200 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *fst::internal::MemoryArenaImpl<200ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C078E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);
  return a1;
}

void fst::internal::MemoryArenaImpl<200ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C078E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0xC07)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x181uLL);
    v1 = *v2;
  }

  if (!*(v1 + 3072))
  {
    operator new();
  }

  return *(v1 + 3072);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07978;
  a1[1] = &unk_287C079A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07978;
  a1[1] = &unk_287C079A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::internal::MemoryPoolImpl<384ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C07978;
  a1[1] = &unk_287C079A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::internal::MemoryPoolImpl<384ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C07978;
  a1[1] = &unk_287C079A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::MemoryArenaImpl<392ul>::MemoryArenaImpl(void *a1, uint64_t a2)
{
  *a1 = &unk_287C079A0;
  a1[1] = 392 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *fst::internal::MemoryArenaImpl<392ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C079A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);
  return a1;
}

void fst::internal::MemoryArenaImpl<392ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C079A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<32>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0x300)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x301uLL);
    v1 = *v2;
  }

  if (!*(v1 + 6144))
  {
    operator new();
  }

  return *(v1 + 6144);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07A38;
  a1[1] = &unk_287C07A60;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07A38;
  a1[1] = &unk_287C07A60;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::internal::MemoryPoolImpl<768ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C07A38;
  a1[1] = &unk_287C07A60;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::internal::MemoryPoolImpl<768ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C07A38;
  a1[1] = &unk_287C07A60;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::MemoryArenaImpl<776ul>::MemoryArenaImpl(void *a1, uint64_t a2)
{
  *a1 = &unk_287C07A60;
  a1[1] = 776 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *fst::internal::MemoryArenaImpl<776ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C07A60;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);
  return a1;
}

void fst::internal::MemoryArenaImpl<776ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C07A60;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0x600)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x601uLL);
    v1 = *v2;
  }

  if (!*(v1 + 12288))
  {
    operator new();
  }

  return *(v1 + 12288);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07AF8;
  a1[1] = &unk_287C07B20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07AF8;
  a1[1] = &unk_287C07B20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::internal::MemoryPoolImpl<1536ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C07AF8;
  a1[1] = &unk_287C07B20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::internal::MemoryPoolImpl<1536ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C07AF8;
  a1[1] = &unk_287C07B20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::MemoryArenaImpl<1544ul>::MemoryArenaImpl(void *a1, uint64_t a2)
{
  *a1 = &unk_287C07B20;
  a1[1] = 1544 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *fst::internal::MemoryArenaImpl<1544ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C07B20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);
  return a1;
}

void fst::internal::MemoryArenaImpl<1544ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C07B20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);

  JUMPOUT(0x26D6787B0);
}

uint64_t *fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8) - 1;
  *(*a1 + 8) = v3;
  if (!v3)
  {
    v5 = (v2 + 16);
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x26D6787B0](v2, 0x1020C40DB654AE0);
  }

  return a1;
}

void std::vector<std::unique_ptr<fst::MemoryPoolBase>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<fst::MemoryPoolBase>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(uint64_t a1)
{
  *a1 = &unk_287C06E70;
  if (*(a1 + 129) == 1)
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      v3 = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorCacheStore(v2);
      MEMORY[0x26D6787B0](v3, 0x10A0C40690396FALL);
    }
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  return fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstImpl(a1);
}

uint64_t *fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorCacheStore(uint64_t *a1)
{
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Clear(a1);
  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(a1 + 10);
  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(a1 + 9);
  std::__list_imp<int,fst::PoolAllocator<int>>::clear(a1 + 4);
  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(a1 + 7);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    operator new();
  }

  *a1 = a4;
  if (!a5)
  {
    operator new();
  }

  *(a1 + 8) = a5;
  *(a1 + 16) = (*(*a4 + 72))(a4);
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

void sub_26B5022F4(_Unwind_Exception *a1)
{
  MEMORY[0x26D6787B0](v2, 0x10A1C40A8D10E09);
  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::CompactHashBiTable(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  *a1 = a3;
  if (!a4)
  {
    operator new();
  }

  a1[1] = a4;
  a1[2] = a1;
  a1[3] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::unordered_set();
}

void sub_26B502424(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MEMORY[0x26D6787B0](v3, 0xC400A2AC0F1);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>(result, a2);
    }

    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::unique_ptr<std::__hash_node_base<std::__hash_node<int,void *> *> *[],std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>>::operator()[abi:ne200100](a1 + 8, v2);
  }

  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator((a1 + 16));
  return a1;
}

void fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::deallocate(uint64_t *a1, void *__p, unint64_t a3)
{
  if (a3 == 2)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<2>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[2] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<1>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[1] = *(v4 + 56);
LABEL_22:
    *(v4 + 56) = __p;
    return;
  }

  if (a3 <= 4)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<4>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[4] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 8)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<8>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[8] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x10)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<16>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[16] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x20)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<32>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[32] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x40)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<64>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[64] = *(v4 + 56);
    goto LABEL_22;
  }

  operator delete(__p);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<1>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x40)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 9uLL);
    v1 = *v2;
  }

  if (!*(v1 + 64))
  {
    operator new();
  }

  return *(v1 + 64);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07BB8;
  a1[1] = &unk_287C07BE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07BB8;
  a1[1] = &unk_287C07BE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::internal::MemoryPoolImpl<8ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C07BB8;
  a1[1] = &unk_287C07BE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::internal::MemoryPoolImpl<8ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C07BB8;
  a1[1] = &unk_287C07BE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::MemoryArenaImpl<16ul>::MemoryArenaImpl(void *a1, uint64_t a2)
{
  *a1 = &unk_287C07BE0;
  a1[1] = 16 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *fst::internal::MemoryArenaImpl<16ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C07BE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);
  return a1;
}

void fst::internal::MemoryArenaImpl<16ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C07BE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<2>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x80)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x11uLL);
    v1 = *v2;
  }

  if (!*(v1 + 128))
  {
    operator new();
  }

  return *(v1 + 128);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06EF8;
  a1[1] = &unk_287C06F20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06EF8;
  a1[1] = &unk_287C06F20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<4>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x100)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x21uLL);
    v1 = *v2;
  }

  if (!*(v1 + 256))
  {
    operator new();
  }

  return *(v1 + 256);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06FB8;
  a1[1] = &unk_287C06FE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06FB8;
  a1[1] = &unk_287C06FE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<8>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x200)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x41uLL);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<16>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x400)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x81uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<32>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x800)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x101uLL);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<64>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x1000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x201uLL);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 40) / *(a1 + 56));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::allocate((a1 + 16), a2);
    v5 = *a1;
    *a1 = v4;
    if (v5)
    {
      std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>>::operator()[abi:ne200100](a1 + 8, v5);
    }

    v6 = 0;
    *(a1 + 8) = a2;
    do
    {
      *(*a1 + 8 * v6++) = 0;
    }

    while (a2 != v6);
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = v7[1];
      v9 = vcnt_s8(a2);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        if (v8 >= a2)
        {
          v8 %= a2;
        }
      }

      else
      {
        v8 &= a2 - 1;
      }

      *(*a1 + 8 * v8) = a1 + 24;
      v11 = *v7;
      if (*v7)
      {
        do
        {
          v12 = v11[1];
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= a2)
            {
              v12 %= a2;
            }
          }

          else
          {
            v12 &= a2 - 1;
          }

          if (v12 != v8)
          {
            v13 = *a1;
            if (!*(*a1 + 8 * v12))
            {
              v13[v12] = v7;
              goto LABEL_23;
            }

            *v7 = *v11;
            *v11 = *v13[v12];
            *v13[v12] = v11;
            v11 = v7;
          }

          v12 = v8;
LABEL_23:
          v7 = v11;
          v11 = *v11;
          v8 = v12;
        }

        while (v11);
      }
    }
  }

  else
  {
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>>::operator()[abi:ne200100](a1 + 8, v10);
    }

    *(a1 + 8) = 0;
  }
}

void *fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::allocate(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<2>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<24ul>::Allocate((v2 + 8), 1);
      result[2] = 0;
      return result;
    }

    v4 = result[2];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<1>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<16ul>::Allocate((v2 + 8), 1);
      result[1] = 0;
      return result;
    }

    v4 = result[1];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (!(a2 >> 61))
            {

              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<64>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<520ul>::Allocate((v2 + 8), 1);
            result[64] = 0;
            return result;
          }

          v4 = result[64];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<32>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<264ul>::Allocate((v2 + 8), 1);
            result[32] = 0;
            return result;
          }

          v4 = result[32];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<16>>(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = fst::internal::MemoryArenaImpl<136ul>::Allocate((v2 + 8), 1);
          result[16] = 0;
          return result;
        }

        v4 = result[16];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<8>>(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = fst::internal::MemoryArenaImpl<72ul>::Allocate((v2 + 8), 1);
        result[8] = 0;
        return result;
      }

      v4 = result[8];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<4>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<40ul>::Allocate((v2 + 8), 1);
      result[4] = 0;
      return result;
    }

    v4 = result[4];
  }

  *(v2 + 56) = v4;
  return result;
}

uint64_t fst::internal::MemoryArenaImpl<16ul>::Allocate(void *a1, uint64_t a2)
{
  v3 = 16 * a2;
  v4 = a1[1];
  if (v4 < a2 << 6)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::internal::MemoryArenaImpl<24ul>::Allocate(void *a1, uint64_t a2)
{
  v3 = 24 * a2;
  v4 = a1[1];
  if (96 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::internal::MemoryArenaImpl<40ul>::Allocate(void *a1, uint64_t a2)
{
  v3 = 40 * a2;
  v4 = a1[1];
  if (160 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::internal::MemoryArenaImpl<72ul>::Allocate(void *a1, uint64_t a2)
{
  v3 = 72 * a2;
  v4 = a1[1];
  if (288 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::internal::MemoryArenaImpl<136ul>::Allocate(void *a1, uint64_t a2)
{
  v3 = 136 * a2;
  v4 = a1[1];
  if (544 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::internal::MemoryArenaImpl<264ul>::Allocate(void *a1, uint64_t a2)
{
  v3 = 264 * a2;
  v4 = a1[1];
  if (1056 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::internal::MemoryArenaImpl<520ul>::Allocate(void *a1, uint64_t a2)
{
  v3 = 520 * a2;
  v4 = a1[1];
  if (2080 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>(*(a1 + 32));
      v2[3] = *(v4 + 56);
      *(v4 + 56) = v2;
      v2 = v3;
    }

    while (v3);
  }

  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator((a1 + 32));

  return std::unique_ptr<std::__hash_node_base<std::__hash_node<int,void *> *> *[],std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>>>::~unique_ptr[abi:ne200100](a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0xC7)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x19uLL);
    v1 = *v2;
  }

  if (!*(v1 + 192))
  {
    operator new();
  }

  return *(v1 + 192);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C076F8;
  a1[1] = &unk_287C07720;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C076F8;
  a1[1] = &unk_287C07720;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<2>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x187)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x31uLL);
    v1 = *v2;
  }

  if (!*(v1 + 384))
  {
    operator new();
  }

  return *(v1 + 384);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<4>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x307)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x61uLL);
    v1 = *v2;
  }

  if (!*(v1 + 768))
  {
    operator new();
  }

  return *(v1 + 768);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C077F8;
  a1[1] = &unk_287C07820;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C077F8;
  a1[1] = &unk_287C07820;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<8>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x607)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0xC1uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1536))
  {
    operator new();
  }

  return *(v1 + 1536);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C078B8;
  a1[1] = &unk_287C078E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C078B8;
  a1[1] = &unk_287C078E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<16>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0xC07)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x181uLL);
    v1 = *v2;
  }

  if (!*(v1 + 3072))
  {
    operator new();
  }

  return *(v1 + 3072);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07978;
  a1[1] = &unk_287C079A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07978;
  a1[1] = &unk_287C079A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<32>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0x300)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x301uLL);
    v1 = *v2;
  }

  if (!*(v1 + 6144))
  {
    operator new();
  }

  return *(v1 + 6144);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07A38;
  a1[1] = &unk_287C07A60;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07A38;
  a1[1] = &unk_287C07A60;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<64>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0x600)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x601uLL);
    v1 = *v2;
  }

  if (!*(v1 + 12288))
  {
    operator new();
  }

  return *(v1 + 12288);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07AF8;
  a1[1] = &unk_287C07B20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07AF8;
  a1[1] = &unk_287C07B20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(uint64_t a1)
{
  *a1 = &unk_287C06D78;
  if (*(a1 + 184) == 1)
  {
    v2 = *(a1 + 176);
    if (v2)
    {
      v3 = v2[13];
      if (v3)
      {
        v2[14] = v3;
        operator delete(v3);
      }

      std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::~__hash_table((v2 + 4));
      v4 = v2[1];
      v2[1] = 0;
      if (v4)
      {
        MEMORY[0x26D6787B0](v4, 0xC400A2AC0F1);
      }

      v5 = *v2;
      *v2 = 0;
      if (v5)
      {
        MEMORY[0x26D6787B0](v5, 0xC400A2AC0F1);
      }

      MEMORY[0x26D6787B0](v2, 0x10E0C401DE81863);
    }
  }

  std::unique_ptr<fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::~unique_ptr[abi:ne200100]((a1 + 136));

  return fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(a1);
}

void sub_26B505440(_Unwind_Exception *a1)
{
  MEMORY[0x26D6787B0](v3, 0x10E0C401DE81863);
  std::unique_ptr<fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::~unique_ptr[abi:ne200100](v2);
  fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287C067C0;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_287C06E70;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0xFFFFFFFFLL;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xFFFFFFFF00000000;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void sub_26B5056F4(_Unwind_Exception *a1)
{
  MEMORY[0x26D6787B0](v3, 0x10A0C40690396FALL);
  if (*v2)
  {
    operator delete(*v2);
  }

  fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<BOOL>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      if (v4 > *(a1 + 16) << 6)
      {
        v5 = *a1;
        if (*a1)
        {
          operator delete(v5);
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v4 = *(a2 + 8);
        }

        std::vector<BOOL>::__vallocate[abi:ne200100](a1, v4);
      }

      memmove(*a1, *a2, (((v4 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 8) = v6;
  }

  return a1;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::CopyStates(a1, a2);
    *(a1 + 64) = *(a1 + 40);
    *(a1 + 88) = *(a2 + 88);
    v4 = *(a2 + 92);
    *(a1 + 92) = v4;
    if (v4 == -1)
    {
      MutableState = 0;
    }

    else
    {
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 96) = MutableState;
  }

  return a1;
}

void *fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::GetMutableState(uint64_t a1, int a2)
{
  v13 = a2;
  v3 = a2;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v4 = (a1 + 8);
  if (a2 >= ((v6 - v5) >> 3))
  {
    v12 = 0;
    std::vector<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::resize(v4, a2 + 1, &v12);
  }

  else
  {
    v7 = *(v5 + 8 * a2);
    if (v7)
    {
      return v7;
    }
  }

  v7 = fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::allocate((a1 + 72), 1uLL);
  *v7 = *fst::TropicalWeightTpl<float>::Zero();
  v7[5] = 0;
  *(v7 + 3) = 0u;
  *(v7 + 1) = 0u;
  v8 = *(a1 + 80);
  v7[6] = v8;
  ++*(v8 + 8);
  v7[7] = 0;
  *(*(a1 + 8) + 8 * v3) = v7;
  if (*a1 == 1)
  {
    v9 = std::__list_imp<int,fst::PoolAllocator<int>>::__create_node[abi:ne200100]<int const&>(a1 + 32, 0, 0, &v13);
    v10 = *(a1 + 32);
    *v9 = v10;
    v9[1] = a1 + 32;
    *(v10 + 8) = v9;
    *(a1 + 32) = v9;
    ++*(a1 + 48);
  }

  return v7;
}

void fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::CopyStates(void *a1, uint64_t a2)
{
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Clear(a1);
  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve(a1 + 1, (*(a2 + 16) - *(a2 + 8)) >> 3);
  v23 = 0;
  v4 = *(a2 + 8);
  if (*(a2 + 16) != v4)
  {
    v5 = 0;
    do
    {
      v6 = *(v4 + 8 * v5);
      if (v6)
      {
        v7 = fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::allocate(a1 + 9, 1uLL);
        *v7 = *v6;
        *(v7 + 1) = *(v6 + 8);
        std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::vector[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>> const*>,0>(v7 + 3, *(v6 + 24), *(v6 + 32), a1 + 10);
        *(v7 + 14) = *(v6 + 56);
        *(v7 + 15) = 0;
        if (*a1 == 1)
        {
          v8 = std::__list_imp<int,fst::PoolAllocator<int>>::__create_node[abi:ne200100]<int const&>((a1 + 4), 0, 0, &v23);
          v9 = a1[4];
          *v8 = v9;
          v8[1] = a1 + 4;
          *(v9 + 8) = v8;
          a1[4] = v8;
          ++a1[6];
        }
      }

      else
      {
        v7 = 0;
      }

      v11 = a1[2];
      v10 = a1[3];
      if (v11 >= v10)
      {
        v13 = a1[1];
        v14 = (v11 - v13) >> 3;
        if ((v14 + 1) >> 61)
        {
          std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
        }

        v15 = v10 - v13;
        v16 = v15 >> 2;
        if (v15 >> 2 <= (v14 + 1))
        {
          v16 = v14 + 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<CMDPToken>>>((a1 + 1), v17);
        }

        v18 = (8 * v14);
        *v18 = v7;
        v12 = 8 * v14 + 8;
        v19 = a1[1];
        v20 = a1[2] - v19;
        v21 = v18 - v20;
        memcpy(v18 - v20, v19, v20);
        v22 = a1[1];
        a1[1] = v21;
        a1[2] = v12;
        a1[3] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v11 = v7;
        v12 = (v11 + 1);
      }

      a1[2] = v12;
      v5 = ++v23;
      v4 = *(a2 + 8);
    }

    while (v5 < (*(a2 + 16) - v4) >> 3);
  }
}

void *fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::allocate(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<2>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<136ul>::Allocate((v2 + 8), 1);
      result[16] = 0;
      return result;
    }

    v4 = result[16];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<1>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<72ul>::Allocate((v2 + 8), 1);
      result[8] = 0;
      return result;
    }

    v4 = result[8];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (!(a2 >> 58))
            {

              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<64>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<4104ul>::Allocate((v2 + 8), 1);
            result[512] = 0;
            return result;
          }

          v4 = result[512];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<32>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<2056ul>::Allocate((v2 + 8), 1);
            result[256] = 0;
            return result;
          }

          v4 = result[256];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<16>>(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = fst::internal::MemoryArenaImpl<1032ul>::Allocate((v2 + 8), 1);
          result[128] = 0;
          return result;
        }

        v4 = result[128];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<8>>(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = fst::internal::MemoryArenaImpl<520ul>::Allocate((v2 + 8), 1);
        result[64] = 0;
        return result;
      }

      v4 = result[64];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<4>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<264ul>::Allocate((v2 + 8), 1);
      result[32] = 0;
      return result;
    }

    v4 = result[32];
  }

  *(v2 + 56) = v4;
  return result;
}

uint64_t fst::internal::MemoryArenaImpl<1032ul>::Allocate(void *a1, uint64_t a2)
{
  v3 = 1032 * a2;
  v4 = a1[1];
  if (4128 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::internal::MemoryArenaImpl<2056ul>::Allocate(void *a1, uint64_t a2)
{
  v3 = 2056 * a2;
  v4 = a1[1];
  if (8224 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::internal::MemoryArenaImpl<4104ul>::Allocate(void *a1, uint64_t a2)
{
  v3 = 4104 * a2;
  v4 = a1[1];
  if (16416 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

void *std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::vector[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>> const*>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = *a4;
  a1[3] = *a4;
  ++*(v5 + 8);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>> const*>,std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>> const*>>(a1, a2, a3, (a3 - a2) >> 4);
  return a1;
}

void *std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>> const*>,std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>> const*>>(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::__vallocate[abi:ne200100](result, a4);
    v7 = v6[1];
    while (a2 != a3)
    {
      *v7 = *a2;
      *(v7 + 8) = *(a2 + 8);
      *(v7 + 12) = *(a2 + 12);
      a2 += 16;
      v7 += 16;
    }

    v6[1] = v7;
  }

  return result;
}

void *std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  result = fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::allocate(a1 + 3, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[2 * a2];
  return result;
}

void *fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::allocate(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<2>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<40ul>::Allocate((v2 + 8), 1);
      result[4] = 0;
      return result;
    }

    v4 = result[4];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<1>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<24ul>::Allocate((v2 + 8), 1);
      result[2] = 0;
      return result;
    }

    v4 = result[2];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (!(a2 >> 60))
            {

              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<64>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<1032ul>::Allocate((v2 + 8), 1);
            result[128] = 0;
            return result;
          }

          v4 = result[128];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<32>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<520ul>::Allocate((v2 + 8), 1);
            result[64] = 0;
            return result;
          }

          v4 = result[64];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<16>>(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = fst::internal::MemoryArenaImpl<264ul>::Allocate((v2 + 8), 1);
          result[32] = 0;
          return result;
        }

        v4 = result[32];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<8>>(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = fst::internal::MemoryArenaImpl<136ul>::Allocate((v2 + 8), 1);
        result[16] = 0;
        return result;
      }

      v4 = result[16];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<4>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<72ul>::Allocate((v2 + 8), 1);
      result[8] = 0;
      return result;
    }

    v4 = result[8];
  }

  *(v2 + 56) = v4;
  return result;
}

void *std::__list_imp<int,fst::PoolAllocator<int>>::__create_node[abi:ne200100]<int const&>(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v9 = *(a1 + 24);
  ++*(v9 + 8);
  std::__allocation_guard<fst::PoolAllocator<std::__list_node<int,void *>>>::__allocation_guard[abi:ne200100]<fst::PoolAllocator<std::__list_node<int,void *>>>(v10, &v9, 1uLL);
  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(&v9);
  v7 = v11;
  *v11 = a2;
  v7[1] = a3;
  *(v7 + 4) = *a4;
  v11 = 0;
  std::__allocation_guard<fst::PoolAllocator<std::__list_node<int,void *>>>::~__allocation_guard[abi:ne200100](v10);
  return v7;
}

uint64_t *std::__allocation_guard<fst::PoolAllocator<std::__list_node<int,void *>>>::__allocation_guard[abi:ne200100]<fst::PoolAllocator<std::__list_node<int,void *>>>(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v4 = *a2;
  *(v4 + 8) = *(*a2 + 8) + 1;
  *a1 = v4;
  a1[1] = a3;
  a1[2] = fst::PoolAllocator<std::__list_node<int,void *>>::allocate(a1, a3);
  return a1;
}

void *fst::PoolAllocator<std::__list_node<int,void *>>::allocate(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<2>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<56ul>::Allocate((v2 + 8), 1);
      result[6] = 0;
      return result;
    }

    v4 = result[6];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<32ul>::Allocate((v2 + 8), 1);
      result[3] = 0;
      return result;
    }

    v4 = result[3];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (a2 < 0xAAAAAAAAAAAAAABLL)
            {

              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<1544ul>::Allocate((v2 + 8), 1);
            result[192] = 0;
            return result;
          }

          v4 = result[192];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<32>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<776ul>::Allocate((v2 + 8), 1);
            result[96] = 0;
            return result;
          }

          v4 = result[96];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = fst::internal::MemoryArenaImpl<392ul>::Allocate((v2 + 8), 1);
          result[48] = 0;
          return result;
        }

        v4 = result[48];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = fst::internal::MemoryArenaImpl<200ul>::Allocate((v2 + 8), 1);
        result[24] = 0;
        return result;
      }

      v4 = result[24];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<104ul>::Allocate((v2 + 8), 1);
      result[12] = 0;
      return result;
    }

    v4 = result[12];
  }

  *(v2 + 56) = v4;
  return result;
}

uint64_t fst::internal::MemoryArenaImpl<32ul>::Allocate(void *a1, uint64_t a2)
{
  v3 = 32 * a2;
  v4 = a1[1];
  if (v4 < a2 << 7)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::internal::MemoryArenaImpl<104ul>::Allocate(void *a1, uint64_t a2)
{
  v3 = 104 * a2;
  v4 = a1[1];
  if (416 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::internal::MemoryArenaImpl<200ul>::Allocate(void *a1, uint64_t a2)
{
  v3 = 200 * a2;
  v4 = a1[1];
  if (800 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::internal::MemoryArenaImpl<392ul>::Allocate(void *a1, uint64_t a2)
{
  v3 = 392 * a2;
  v4 = a1[1];
  if (1568 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::internal::MemoryArenaImpl<776ul>::Allocate(void *a1, uint64_t a2)
{
  v3 = 776 * a2;
  v4 = a1[1];
  if (3104 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::internal::MemoryArenaImpl<1544ul>::Allocate(void *a1, uint64_t a2)
{
  v3 = 1544 * a2;
  v4 = a1[1];
  if (6176 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t *std::__allocation_guard<fst::PoolAllocator<std::__list_node<int,void *>>>::~__allocation_guard[abi:ne200100](uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    fst::PoolAllocator<std::__list_node<int,void *>>::deallocate(a1, v2, a1[1]);
  }

  return fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(a1);
}

void std::vector<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_26B548380)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<CMDPToken>>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_26B548380)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void sub_26B506F68(_Unwind_Exception *exception_object)
{
  v3 = v1[1];
  v1[1] = 0;
  if (v3)
  {
    fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SequenceComposeFilter(v3);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_26B50707C(_Unwind_Exception *a1)
{
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::~__hash_table((v2 + 4));
  v4 = v2[1];
  v2[1] = 0;
  if (v4)
  {
    MEMORY[0x26D6787B0](v4, v1);
  }

  v5 = *v2;
  *v2 = 0;
  if (v5)
  {
    MEMORY[0x26D6787B0](v5, v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>::__init_with_size[abi:ne200100]<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>*,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26B507144(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>(a1, a2);
  }

  std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::__emplace_unique_key_args<int,int const&>(uint64_t a1, int *a2, _DWORD *a3)
{
  v7 = *a2;
  if (*a2 < -1)
  {
    v10 = 0;
  }

  else
  {
    v8 = *(a1 + 48);
    if (v7 == -1)
    {
      v9 = *(v8 + 128);
    }

    else
    {
      v9 = (*(v8 + 104) + 12 * v7);
    }

    v10 = *v9 + 7853 * v9[1] + 7867 * *(v9 + 8);
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v3 = v10;
      if (v10 >= v11)
      {
        v3 = v10 % v11;
      }
    }

    else
    {
      v3 = (v11 - 1) & v10;
    }

    v14 = *(*a1 + 8 * v3);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashEqual::operator()((a1 + 64), *(i + 4), *a2))
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v17 = fst::PoolAllocator<std::__hash_node<int,void *>>::allocate((a1 + 32), 1uLL);
  v29[0] = v17;
  v29[1] = a1 + 32;
  v29[2] = 1;
  *v17 = 0;
  v17[1] = v10;
  *(v17 + 4) = *a3;
  v18 = (*(a1 + 40) + 1);
  v19 = *(a1 + 56);
  if (!v11 || (v19 * v11) < v18)
  {
    v20 = 1;
    if (v11 >= 3)
    {
      v20 = (v11 & (v11 - 1)) != 0;
    }

    v21 = v20 | (2 * v11);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::__rehash<true>(a1, v23);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v3 = v10 % v11;
      }

      else
      {
        v3 = v10;
      }
    }

    else
    {
      v3 = (v11 - 1) & v10;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v3);
  if (v25)
  {
    i = v29[0];
    *v29[0] = *v25;
    *v25 = i;
  }

  else
  {
    v26 = v29[0];
    *v29[0] = *(a1 + 24);
    *(a1 + 24) = v26;
    *(v24 + 8 * v3) = a1 + 24;
    i = v29[0];
    if (*v29[0])
    {
      v27 = *(*v29[0] + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v27 >= v11)
        {
          v27 %= v11;
        }
      }

      else
      {
        v27 &= v11 - 1;
      }

      *(*a1 + 8 * v27) = v29[0];
      i = v29[0];
    }
  }

  v29[0] = 0;
  ++*(a1 + 40);
  std::unique_ptr<std::__hash_node<int,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<int,void *>>>>::reset[abi:ne200100](v29, 0);
  return i;
}

void sub_26B507454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<int,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<int,void *>>>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

BOOL fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashEqual::operator()(uint64_t *a1, int a2, int a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  result = 0;
  if (a2 >= -1 && a3 >= -1)
  {
    v5 = *a1;
    if (a2 == -1)
    {
      v6 = *(v5 + 128);
    }

    else
    {
      v6 = *(v5 + 104) + 12 * a2;
    }

    if (a3 == -1)
    {
      v7 = *(v5 + 128);
    }

    else
    {
      v7 = *(v5 + 104) + 12 * a3;
    }

    if (v6 == v7)
    {
      return 1;
    }

    return *v6 == *v7 && *(v6 + 4) == *(v7 + 4) && *(v6 + 8) == *(v7 + 8);
  }

  return result;
}

void *fst::PoolAllocator<std::__hash_node<int,void *>>::allocate(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<2>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<56ul>::Allocate((v2 + 8), 1);
      result[6] = 0;
      return result;
    }

    v4 = result[6];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<32ul>::Allocate((v2 + 8), 1);
      result[3] = 0;
      return result;
    }

    v4 = result[3];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (a2 < 0xAAAAAAAAAAAAAABLL)
            {

              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<64>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<1544ul>::Allocate((v2 + 8), 1);
            result[192] = 0;
            return result;
          }

          v4 = result[192];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<32>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<776ul>::Allocate((v2 + 8), 1);
            result[96] = 0;
            return result;
          }

          v4 = result[96];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<16>>(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = fst::internal::MemoryArenaImpl<392ul>::Allocate((v2 + 8), 1);
          result[48] = 0;
          return result;
        }

        v4 = result[48];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<8>>(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = fst::internal::MemoryArenaImpl<200ul>::Allocate((v2 + 8), 1);
        result[24] = 0;
        return result;
      }

      v4 = result[24];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<4>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<104ul>::Allocate((v2 + 8), 1);
      result[12] = 0;
      return result;
    }

    v4 = result[12];
  }

  *(v2 + 56) = v4;
  return result;
}

uint64_t std::unique_ptr<std::__hash_node<int,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<int,void *>>>>::reset[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    result = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>(**(result + 8));
    *(v2 + 24) = *(result + 56);
    *(result + 56) = v2;
  }

  return result;
}

int *fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SetState(int *result, uint64_t a2, int a3, _BYTE *a4)
{
  v5 = result;
  if (result[6] != a2 || result[7] != a3 || *a4 != *(result + 32))
  {
    result[6] = a2;
    result[7] = a3;
    *(result + 32) = *a4;
    v6 = (*(**(result + 2) + 32))(*(result + 2), a2);
    v7 = (*(**(v5 + 2) + 48))(*(v5 + 2), a2);
    (*(**(v5 + 2) + 24))(&v10);
    result = fst::TropicalWeightTpl<float>::Zero();
    v11 = v10;
    HIDWORD(v10) = *result;
    v9 = *&v10 == *(&v10 + 1) && v6 == v7;
    *(v5 + 33) = v9;
    *(v5 + 34) = v7 == 0;
  }

  return result;
}

uint64_t fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 188);
  if (v3 == 1)
  {
    return 1;
  }

  if (v3 == 2)
  {
    return 0;
  }

  v7 = fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Priority(*(a1 + 144), a2);
  v8 = fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Priority(*(a1 + 152), a3);
  if (v7 == -1 && v8 == -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    LogMessage::LogMessage(&v14, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "ComposeFst: Both sides can't require match", 42);
    LogMessage::~LogMessage(&v14);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
    return 1;
  }

  v11 = v8 == -1 || v7 <= v8;
  return v7 != -1 && v11;
}

void sub_26B50797C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (*(a7 + 52) != a4)
  {
    *(a7 + 52) = a4;
    fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SetState(*(a7 + 8), a4);
    *(a7 + 56) = *(a7 + 20) != -1;
  }

  v14 = *fst::TropicalWeightTpl<float>::One();
  v19[0] = a8 - 1;
  v19[1] = a8 << 31 >> 31;
  v19[2] = v14;
  v19[3] = a6;
  fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(a1, a2, a7, v19, a8);
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  (*(*a5 + 120))(a5, a6, &v16);
  while (1)
  {
    if (!v16)
    {
      if (v18 >= v17)
      {
        goto LABEL_15;
      }

LABEL_9:
      v15 = *(&v16 + 1) + 16 * v18;
      goto LABEL_10;
    }

    if ((*(*v16 + 16))(v16))
    {
      break;
    }

    if (!v16)
    {
      goto LABEL_9;
    }

    v15 = (*(*v16 + 24))();
LABEL_10:
    fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(a1, a2, a7, v15, a8);
    if (v16)
    {
      (*(*v16 + 32))(v16);
    }

    else
    {
      ++v18;
    }
  }

  if (v16)
  {
    (*(*v16 + 8))();
    goto LABEL_17;
  }

LABEL_15:
  if (*(&v17 + 1))
  {
    --**(&v17 + 1);
  }

LABEL_17:
  fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArcs(a1, a2);
}

void sub_26B507BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(a9);
  }

  else
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(&a9);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Find(a3, *(a4 + v10));
  if (result)
  {
    result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(*(*(*(a3 + 8) + 8) + 8));
    if ((result & 1) == 0)
    {
      do
      {
        v12 = fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Value(a3);
        v13 = *v12;
        v31 = *v12;
        v32 = *(v12 + 2);
        v33 = *(v12 + 3);
        v14 = *a4;
        v28 = *a4;
        v29 = *(a4 + 8);
        v30 = *(a4 + 12);
        if (a5)
        {
          v15 = *(a1 + 136);
          if (v14 < 0xFFFFFFFF00000000)
          {
            if (v13 == -1)
            {
              v17 = v15[32];
              if (v15[32])
              {
                v18 = -1;
              }

              else
              {
                v18 = 0;
              }

              v27 = v18;
              if (v17)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v21 = HIDWORD(v14);
              if (HIDWORD(v14))
              {
                v22 = 0;
              }

              else
              {
                v22 = -1;
              }

              v27 = v22;
              if (!v21)
              {
                goto LABEL_35;
              }
            }

            goto LABEL_28;
          }

          if ((v15[33] & 1) == 0)
          {
            v27 = v15[34] ^ 1;
LABEL_28:
            v23 = &v28;
            v24 = &v31;
            goto LABEL_34;
          }
        }

        else
        {
          v16 = *(a1 + 136);
          if (v13 < 0xFFFFFFFF00000000)
          {
            if (v14 == -1)
            {
              v19 = v16[32];
              if (v16[32])
              {
                v20 = -1;
              }

              else
              {
                v20 = 0;
              }

              v27 = v20;
              if (v19)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v25 = HIDWORD(v13);
              if (v25)
              {
                v26 = 0;
              }

              else
              {
                v26 = -1;
              }

              v27 = v26;
              if (!v25)
              {
                goto LABEL_35;
              }
            }

LABEL_33:
            v23 = &v31;
            v24 = &v28;
LABEL_34:
            fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v23, v24, &v27);
            goto LABEL_35;
          }

          if ((v16[33] & 1) == 0)
          {
            v27 = v16[34] ^ 1;
            goto LABEL_33;
          }
        }

LABEL_35:
        fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Next(*(a3 + 8));
        result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(*(*(*(a3 + 8) + 8) + 8));
      }

      while (!result);
    }
  }

  return result;
}

void fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArcs(uint64_t a1, int a2)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(*(a1 + 120), a2);
  fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::SetArcs(*(a1 + 120), MutableState);
  v5 = MutableState[3];
  v6 = MutableState[4] - v5;
  if (v6)
  {
    v7 = v6 >> 4;
    v8 = *(a1 + 64);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v9 = (v5 + 12);
    do
    {
      v11 = *v9;
      v9 += 4;
      v10 = v11;
      if (v11 >= v8)
      {
        v8 = v10 + 1;
        *(a1 + 64) = v10 + 1;
      }

      --v7;
    }

    while (v7);
  }

  fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetExpandedState(a1, a2);
  *(MutableState + 14) |= 0xAu;
}

uint64_t *fst::internal::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(uint64_t a1, int a2, float *a3, uint64_t a4, char *a5)
{
  v7 = *(a4 + 12);
  *&v19 = a3[3];
  HIDWORD(v19) = v7;
  v20 = *a5;
  v8 = *a3;
  v9 = *(a4 + 4);
  v10 = a3[2];
  if (v10 == -INFINITY || (v11 = *(a4 + 8), v11 >= -INFINITY) && v11 <= -INFINITY)
  {
    v12 = *fst::TropicalWeightTpl<float>::NoWeight();
  }

  else
  {
    v13 = v11 == INFINITY || v10 == INFINITY;
    v14 = v10 + v11;
    if (v13)
    {
      v12 = INFINITY;
    }

    else
    {
      v12 = v14;
    }
  }

  Id = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::FindId(*(a1 + 176), &v19, 1);
  *v18 = v8;
  v18[1] = v9;
  *&v18[2] = v12;
  v18[3] = Id;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(*(a1 + 120), a2);
  return std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::push_back[abi:ne200100](MutableState + 3, v18);
}

uint64_t fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::FindId(void *a1, uint64_t *a2, int a3)
{
  a1[16] = a2;
  if (!a3)
  {
    v5 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::find<int>(a1 + 4, &fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::kCurrentKey);
    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }

    return *(v5 + 4);
  }

  v5 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::__emplace_unique_key_args<int,int const&>((a1 + 4), &fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::kCurrentKey, &fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::kCurrentKey);
  if ((v6 & 1) == 0)
  {
    return *(v5 + 4);
  }

  v7 = a1[13];
  v8 = a1[14];
  v9 = a1[15];
  v10 = (v8 - v7) >> 2;
  v11 = 0xAAAAAAAAAAAAAAABLL * v10;
  *(v5 + 4) = -1431655765 * v10;
  if (v8 >= v9)
  {
    if (v11 + 1 > 0x1555555555555555)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v7) >> 2);
    v15 = 2 * v14;
    if (2 * v14 <= v11 + 1)
    {
      v15 = v11 + 1;
    }

    if (v14 >= 0xAAAAAAAAAAAAAAALL)
    {
      v16 = 0x1555555555555555;
    }

    else
    {
      v16 = v15;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>((a1 + 13), v16);
    }

    v17 = 4 * v10;
    v18 = *a2;
    *(v17 + 8) = *(a2 + 2);
    *v17 = v18;
    v13 = 4 * v10 + 12;
    v19 = a1[13];
    v20 = a1[14];
    v21 = 4 * v10 + v19 - v20;
    if (v19 != v20)
    {
      v22 = 4 * v10 + v19 - v20;
      do
      {
        v23 = *v19;
        *(v22 + 8) = *(v19 + 2);
        *v22 = v23;
        v22 += 12;
        v19 += 12;
      }

      while (v19 != v20);
      v19 = a1[13];
    }

    a1[13] = v21;
    a1[14] = v13;
    a1[15] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v12 = *a2;
    *(v8 + 8) = *(a2 + 2);
    *v8 = v12;
    v13 = v8 + 12;
  }

  a1[14] = v13;
  return v11;
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::find<int>(void *a1, int *a2)
{
  v4 = *a2;
  if (*a2 < -1)
  {
    v7 = 0;
  }

  else
  {
    v5 = a1[6];
    if (v4 == -1)
    {
      v6 = *(v5 + 128);
    }

    else
    {
      v6 = (*(v5 + 104) + 12 * v4);
    }

    v7 = *v6 + 7853 * v6[1] + 7867 * *(v6 + 8);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v7)
    {
      if (fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashEqual::operator()(a1 + 8, *(i + 4), *a2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

void *fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::GetMutableState(a1, a2);
  v4 = MutableState;
  if (*(a1 + 104) == 1)
  {
    v5 = *(MutableState + 14);
    if ((v5 & 4) == 0)
    {
      *(MutableState + 14) = v5 | 4;
      v6 = MutableState[4] - MutableState[3] + *(a1 + 128) + 64;
      *(a1 + 128) = v6;
      *(a1 + 120) = 1;
      if (v6 > *(a1 + 112))
      {
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

void *fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  v3 = *(a1 + 92);
  if (v3 == a2)
  {
    return *(a1 + 96);
  }

  if (*(a1 + 88) == 1)
  {
    if (v3 == -1)
    {
      *(a1 + 92) = a2;
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::GetMutableState(a1, 0);
      *(a1 + 96) = MutableState;
      *(MutableState + 14) |= 4u;
      std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::reserve(MutableState + 3, 0x80uLL);
      return *(a1 + 96);
    }

    v5 = *(a1 + 96);
    if (!*(v5 + 60))
    {
      *(a1 + 92) = a2;
      *v5 = *fst::TropicalWeightTpl<float>::Zero();
      *(v5 + 56) = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *(v5 + 32) = *(v5 + 24);
      result = *(a1 + 96);
      *(result + 14) |= 4u;
      return result;
    }

    *(v5 + 56) &= ~4u;
    *(a1 + 88) = 0;
  }

  v6 = a2 + 1;

  return fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::GetMutableState(a1, v6);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GC(uint64_t a1, void *a2, uint64_t a3, float a4)
{
  if (*(a1 + 120) != 1)
  {
    return;
  }

  if (FLAGS_v >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
    LogMessage::LogMessage(v40, __p);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "GCCacheStore: Enter GC: object = ", 33);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "(", 1);
    v10 = MEMORY[0x26D678650](v9, a1);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "), free recently cached = ", 26);
    v12 = MEMORY[0x26D678660](v11, a3);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", cache size = ", 15);
    v14 = MEMORY[0x26D678690](v13, *(a1 + 128));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", cache frac = ", 15);
    v15 = std::ostream::operator<<();
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", cache limit = ", 16);
    v17 = MEMORY[0x26D678690](v16, *(a1 + 112));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
    LogMessage::~LogMessage(v40);
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v18 = (*(a1 + 112) * a4);
  v19 = *(a1 + 40);
  *(a1 + 64) = v19;
  while (v19 != a1 + 32)
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = v20 - 1;
    }

    else
    {
      v21 = *(a1 + 92);
    }

    MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::GetMutableState(a1, v21);
    v23 = *(a1 + 128);
    if (v23 <= v18 || *(MutableState + 15))
    {
LABEL_12:
      *(MutableState + 14) &= ~8u;
      v19 = *(*(a1 + 64) + 8);
      *(a1 + 64) = v19;
    }

    else
    {
      if (a3)
      {
        if (MutableState == a2)
        {
          goto LABEL_12;
        }

        v24 = *(MutableState + 14);
      }

      else
      {
        v24 = *(MutableState + 14);
        if ((v24 & 8) != 0 || MutableState == a2)
        {
          goto LABEL_12;
        }
      }

      if ((v24 & 4) != 0)
      {
        v25 = MutableState[4] - MutableState[3] + 64;
        v26 = v23 > v25;
        v27 = v23 - v25;
        if (v26)
        {
          *(a1 + 128) = v27;
        }
      }

      fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Delete(a1);
      v19 = *(a1 + 64);
    }
  }

  if ((a3 & 1) != 0 || *(a1 + 128) <= v18)
  {
    v28 = *(a1 + 128);
    if (v18)
    {
      if (v28 > v18)
      {
        v29 = *(a1 + 112);
        do
        {
          v29 *= 2;
          v26 = v28 > 2 * v18;
          v18 *= 2;
        }

        while (v26);
        *(a1 + 112) = v29;
      }
    }

    else if (v28)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      LogMessage::LogMessage(&v43, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "GCCacheStore:GC: Unable to free all cached states", 49);
      LogMessage::~LogMessage(&v43);
      if (v45 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GC(a1, a2, 1, a4);
  }

  if (FLAGS_v >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v40, "INFO");
    LogMessage::LogMessage(&v42, v40);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "GCCacheStore: Exit GC: object = ", 32);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "(", 1);
    v32 = MEMORY[0x26D678650](v31, a1);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "), free recently cached = ", 26);
    v34 = MEMORY[0x26D678660](v33, a3);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ", cache size = ", 15);
    v36 = MEMORY[0x26D678690](v35, *(a1 + 128));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ", cache frac = ", 15);
    v37 = std::ostream::operator<<();
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ", cache limit = ", 16);
    v39 = MEMORY[0x26D678690](v38, *(a1 + 112));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "\n", 1);
    LogMessage::~LogMessage(&v42);
    if (v41 < 0)
    {
      operator delete(v40[0]);
    }
  }
}

void sub_26B5086F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::reserve(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (a2 >> 60)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v3 = result;
    v4 = result[1] - *result;
    v5[4] = result + 3;
    v5[0] = fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::allocate(result + 3, a2);
    v5[1] = v5[0] + v4;
    v5[2] = v5[0] + v4;
    v5[3] = v5[0] + 16 * a2;
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::__swap_out_circular_buffer(v3, v5);
    return std::__split_buffer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>::~__split_buffer(v5);
  }

  return result;
}

void sub_26B5087F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  if (*a1)
  {
    fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::deallocate(*(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 4);
  }

  return a1;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Delete(void *a1)
{
  v1 = *(a1[8] + 16);
  if (!v1 || v1 - 1 == *(a1 + 23))
  {
    *(a1 + 23) = -1;
    a1[12] = 0;
  }

  return fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Delete(a1);
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Delete(void *a1)
{
  fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(*(a1[1] + 8 * *(a1[8] + 16)), a1 + 9);
  *(a1[1] + 8 * *(a1[8] + 16)) = 0;
  v2 = a1[8];
  v4 = *v2;
  v3 = v2[1];
  a1[8] = v3;
  *(v4 + 8) = v3;
  *v3 = v4;
  --a1[6];

  return std::__list_imp<int,fst::PoolAllocator<int>>::__delete_node[abi:ne200100]((a1 + 4), v2);
}

uint64_t *std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::push_back[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = (v4 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v11 = result + 3;
    v14[4] = v3 + 3;
    if (v10)
    {
      v12 = fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::allocate(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[2 * v7];
    v14[0] = v12;
    v14[1] = v13;
    v14[3] = &v12[2 * v10];
    *v13 = *a2;
    *(v13 + 2) = *(a2 + 8);
    *(v13 + 3) = *(a2 + 12);
    v14[2] = v13 + 2;
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::__swap_out_circular_buffer(v3, v14);
    v6 = v3[1];
    result = std::__split_buffer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>::~__split_buffer(v14);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 12) = *(a2 + 12);
    v6 = v4 + 16;
  }

  v3[1] = v6;
  return result;
}

void sub_26B508A18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArcs(a2);
  if (*(a1 + 120) == 1 && (*(a2 + 56) & 4) != 0)
  {
    v4 = *(a2 + 32) - *(a2 + 24) + *(a1 + 128);
    *(a1 + 128) = v4;
    if (v4 > *(a1 + 112))
    {

      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GC(a1, a2, 0, 0.666);
    }
  }
}

void fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetExpandedState(uint64_t a1, int a2)
{
  if (*(a1 + 100) < a2)
  {
    *(a1 + 100) = a2;
  }

  v3 = *(a1 + 96);
  if (v3 <= a2)
  {
    if (v3 == a2)
    {
      *(a1 + 96) = a2 + 1;
    }

    if ((*(a1 + 104) & 1) != 0 || !*(a1 + 112))
    {
      v4 = a2;
      if (*(a1 + 80) <= a2)
      {
        std::vector<BOOL>::resize(a1 + 72, a2 + 1, 0);
      }

      *(*(a1 + 72) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
    }
  }
}

void *fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArcs(void *result)
{
  v1 = result[3];
  v2 = result[4];
  while (v1 != v2)
  {
    if (!*v1)
    {
      ++result[1];
    }

    if (!v1[1])
    {
      ++result[2];
    }

    v1 += 4;
  }

  return result;
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>(v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22, &v18);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v20, v5);
    return;
  }

  v14 = *a1 + 8 * (v4 >> 6);
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v20, v5);
}

void sub_26B508CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t *__src@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - __src);
  if (v8 <= 0)
  {
    v16 = *a5;
  }

  else
  {
    v9 = __src;
    __src = *a5;
    if (a2)
    {
      if (v8 >= (64 - a2))
      {
        v10 = 64 - a2;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2);
      v12 = v10 + *(a5 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a5 = __src;
      *(a5 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a5;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a5 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a5 + 8) = v15;
    }
  }

  *a6 = v16;
  *(a6 + 8) = *(a5 + 8);
  return __src;
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_287C07F60;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  v3 = *(a2 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = -1;
  *(a1 + 36) = a3;
  v4 = *(v3 + 144);
  cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Copy();
}

void sub_26B509048(_Unwind_Exception *exception_object)
{
  v3 = v1[6];
  v1[6] = 0;
  if (v3)
  {
    fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SequenceComposeFilter(v3);
  }

  v4 = v1[5];
  v1[5] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = v1[1];
  v1[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  _Unwind_Resume(exception_object);
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_287C07F60;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_287C07F60;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
{
  result = (*(**(a1 + 40) + 24))(*(a1 + 40));
  if (result != 4)
  {
    result = (*(**(a1 + 48) + 24))(*(a1 + 48), a2);
    if (result != 4)
    {
      if ((*(**(a1 + 40) + 24))(*(a1 + 40), a2) != 5 || (result = (*(**(a1 + 48) + 24))(*(a1 + 48), a2), result != 5))
      {
        if ((*(**(a1 + 40) + 24))(*(a1 + 40), a2) == 5 && (*(**(a1 + 48) + 24))(*(a1 + 48), a2) == *(a1 + 36))
        {
          return 5;
        }

        else if ((*(**(a1 + 40) + 24))(*(a1 + 40), a2) != *(a1 + 36) || (result = (*(**(a1 + 48) + 24))(*(a1 + 48), a2), result != 5))
        {
          if ((*(**(a1 + 40) + 24))(*(a1 + 40), a2) != *(a1 + 36))
          {
            return 4;
          }

          result = (*(**(a1 + 48) + 24))(*(a1 + 48), a2);
          if (result != *(a1 + 36))
          {
            return 4;
          }
        }
      }
    }
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState(uint64_t result, int a2)
{
  if (*(result + 32) != a2)
  {
    v2 = result;
    *(result + 32) = a2;
    v3 = (*(*(*(result + 24) + 176) + 104) + 12 * a2);
    v4 = *(result + 40);
    v5 = *v3;
    if (*(v4 + 52) != v5)
    {
      *(v4 + 52) = v5;
      result = fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SetState(*(v4 + 8), v5);
      *(v4 + 56) = *(v4 + 20) != -1;
    }

    v6 = *(v2 + 48);
    v7 = v3[1];
    if (*(v6 + 52) != v7)
    {
      *(v6 + 52) = v7;
      result = fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SetState(*(v6 + 8), v7);
      *(v6 + 56) = *(v6 + 20) != -1;
    }

    *(v2 + 72) = *(v2 + 32);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find(uint64_t a1, int a2)
{
  *(a1 + 56) = a2 == 0;
  if (!a2)
  {
    return 1;
  }

  v2 = 40;
  if (*(a1 + 36) == 1)
  {
    v3 = 48;
  }

  else
  {
    v3 = 40;
  }

  if (*(a1 + 36) != 1)
  {
    v2 = 48;
  }

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(a1, a2, *(a1 + v2), *(a1 + v3));
}

BOOL fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done(uint64_t a1)
{
  if ((*(a1 + 56) & 1) != 0 || !fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(*(*(*(*(a1 + 40) + 8) + 8) + 8)))
  {
    return 0;
  }

  v2 = *(*(*(*(a1 + 48) + 8) + 8) + 8);

  return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(v2);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value(uint64_t a1)
{
  v1 = 76;
  if (*(a1 + 56))
  {
    v1 = 60;
  }

  return a1 + v1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    *(result + 56) = 0;
  }

  else
  {
    if (*(result + 36) == 1)
    {
      v1 = *(result + 40);
      v2 = *(result + 48);
    }

    else
    {
      v2 = *(result + 40);
      v1 = *(result + 48);
    }

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(result, v1, v2);
  }

  return result;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_287C07F60;
  v5 = (*(**(a2 + 16) + 72))(*(a2 + 16), a3);
  *(a1 + 8) = v5;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v5 + 8);
  v6 = *(a2 + 36);
  *(a1 + 32) = -1;
  *(a1 + 36) = v6;
  v7 = *(a2 + 40);
  cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Copy();
}

void sub_26B50981C(_Unwind_Exception *exception_object)
{
  v3 = v1[6];
  v1[6] = 0;
  if (v3)
  {
    fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SequenceComposeFilter(v3);
  }

  v4 = v1[5];
  v1[5] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = v1[1];
  v1[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Find(a3, a2);
  if (result)
  {
    v8 = *(a1 + 36) == 1;
    v9 = fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Value(a3);
    fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Find(a4, *(v9 + v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(*(*(*(a2 + 8) + 8) + 8)) || !fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(*(*(*(a3 + 8) + 8) + 8)))
  {
    if (fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(*(*(*(a3 + 8) + 8) + 8)))
    {
      fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Next(*(a2 + 8));
      while (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(*(*(*(a2 + 8) + 8) + 8)))
      {
        v6 = *(a1 + 36) == 1;
        v7 = fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Value(a2);
        if (fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Find(a3, *(v7 + v6)))
        {
          break;
        }

        fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Next(*(a2 + 8));
      }
    }

    while (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(*(*(*(a3 + 8) + 8) + 8)))
    {
      v8 = fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Value(a2);
      v9 = fst::RhoMatcher<fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Value(a3);
      fst::SigmaMatcher<fst::PhiMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Next(*(a3 + 8));
      v10 = *(a1 + 32);
      v11 = *(a1 + 36);
      v12 = v11 == 1;
      if (v11 == 1)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      v19 = *v13;
      v20 = *(v13 + 2);
      v21 = *(v13 + 3);
      if (v12)
      {
        v14 = v9;
      }

      else
      {
        v14 = v8;
      }

      v16 = *v14;
      v17 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, v10, &v19, &v16))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,cmdp_fst_util::SpecialMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 24);
  v6 = *(v5 + 136);
  v7 = *(a3 + 4);
  if (v7 == -1)
  {
    if (v6[33])
    {
      return 0;
    }

    LOBYTE(v6) = (v6[34] & 1) == 0;
  }

  else
  {
    if (*a4 != -1)
    {
      if (v7)
      {
        LOBYTE(v6) = 0;
        goto LABEL_9;
      }

      return 0;
    }

    LODWORD(v6) = v6[32];
    if (v6)
    {
      return 0;
    }
  }

LABEL_9:
  v9 = *(a4 + 12);
  LODWORD(v16) = *(a3 + 12);
  HIDWORD(v16) = v9;
  v17 = v6;
  v10 = *(a4 + 4);
  *(a1 + 76) = *a3;
  *(a1 + 80) = v10;
  v11 = *(a3 + 8);
  if (v11 == -INFINITY || (v12 = *(a4 + 8), v12 >= -INFINITY) && v12 <= -INFINITY)
  {
    v13 = *fst::TropicalWeightTpl<float>::NoWeight();
    v5 = *(a1 + 24);
  }

  else
  {
    v14 = v12 == INFINITY || v11 == INFINITY;
    v13 = v11 + v12;
    if (v14)
    {
      v13 = INFINITY;
    }
  }

  *(a1 + 84) = v13;
  v8 = 1;
  *(a1 + 88) = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::FindId(*(v5 + 176), &v16, 1);
  return v8;
}

uint64_t fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Start(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    if ((*(*a1 + 24))(a1, 4))
    {
      *(a1 + 56) = 1;
    }

    else if ((*(a1 + 56) & 1) == 0)
    {
      v2 = (*(*a1 + 56))(a1);
      if (v2 != -1)
      {
        *(a1 + 60) = v2;
        *(a1 + 56) = 1;
        if (*(a1 + 64) <= v2)
        {
          *(a1 + 64) = v2 + 1;
        }
      }
    }
  }

  return *(a1 + 60);
}

float fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Final@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasFinal(a1, a2) & 1) == 0)
  {
    (*(*a1 + 64))(&v11, a1, a2);
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(a1[15], a2);
    *MutableState = v11;
    MutableState[14] |= 9u;
  }

  v7 = a1[15];
  if (*(v7 + 92) == a2)
  {
    v8 = (v7 + 96);
  }

  else
  {
    v8 = (*(v7 + 8) + 8 * a2 + 8);
  }

  v9 = *v8;
  result = *v9;
  *a3 = *v9;
  return result;
}

uint64_t fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasFinal(uint64_t a1, int a2)
{
  v2 = *(a1 + 120);
  if (*(v2 + 92) == a2)
  {
    v3 = (v2 + 96);
  }

  else
  {
    v4 = a2 + 1;
    v6 = v2 + 8;
    v5 = *(v2 + 8);
    if (v4 >= (*(v6 + 8) - v5) >> 3)
    {
      return 0;
    }

    v3 = (v5 + 8 * v4);
  }

  v7 = *v3;
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 56);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  *(v7 + 56) = v8 | 8;
  return 1;
}

uint64_t fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::NumArcs(void *a1, uint64_t a2)
{
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
}

uint64_t fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(uint64_t a1, int a2)
{
  v2 = *(a1 + 120);
  if (*(v2 + 92) == a2)
  {
    v3 = (v2 + 96);
  }

  else
  {
    v4 = a2 + 1;
    v6 = v2 + 8;
    v5 = *(v2 + 8);
    if (v4 >= (*(v6 + 8) - v5) >> 3)
    {
      return 0;
    }

    v3 = (v5 + 8 * v4);
  }

  v7 = *v3;
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 56);
  if ((v8 & 2) == 0)
  {
    return 0;
  }

  *(v7 + 56) = v8 | 8;
  return 1;
}

uint64_t fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::NumInputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 8);
}

uint64_t fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::NumOutputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 16);
}

void *fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComposeFst(void *a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 8);
  if (a3)
  {
    v5 = (*(*v4 + 32))(v4);
    std::shared_ptr<fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::shared_ptr[abi:ne200100]<fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,0>(&v8, v5);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a1[1] = v4;
  a1[2] = v6;
  *a1 = &unk_287C06C60;
  return a1;
}

void sub_26B50A080(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::shared_ptr[abi:ne200100]<fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *,std::shared_ptr<fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::__shared_ptr_default_delete<fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,std::allocator<fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6787B0);
}

uint64_t std::__shared_ptr_pointer<fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *,std::shared_ptr<fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::__shared_ptr_default_delete<fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,std::allocator<fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *,std::shared_ptr<fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::__shared_ptr_default_delete<fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,std::allocator<fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t fst::CacheStateIterator<fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 64))
  {
    return 0;
  }

  v5 = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MinUnexpandedState(v3);
  if (v5 >= *(*(a1 + 16) + 64))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    fst::ArcIterator<fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 24);
    v8 = (*(v19 + 32) - v7) >> 4;
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 64);
      v12 = (v7 + 16 * v20 + 12);
      do
      {
        v14 = *v12;
        v12 += 4;
        v13 = v14;
        if (v11 <= v14)
        {
          v11 = v13 + 1;
          *(v9 + 64) = v13 + 1;
        }

        --v10;
      }

      while (v10);
      v20 = v8;
    }

    fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetExpandedState(v9, v6);
    v15 = *(a1 + 24);
    v16 = *(a1 + 16);
    v17 = *(v16 + 64);
    --*(v19 + 60);
    v4 = v15 >= v17;
    if (v15 < v17)
    {
      break;
    }

    v6 = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MinUnexpandedState(v16);
  }

  while (v6 < *(*(a1 + 16) + 64));
  return v4;
}

uint64_t fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MinUnexpandedState(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 <= *(a1 + 100))
  {
    while (1)
    {
      v3 = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ExpandedState(a1, v1);
      v4 = *(a1 + 96);
      if (!v3)
      {
        break;
      }

      v1 = (v4 + 1);
      *(a1 + 96) = v1;
      if (v4 >= *(a1 + 100))
      {
        return v1;
      }
    }

    return *(a1 + 96);
  }

  return v1;
}

uint64_t fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ExpandedState(uint64_t a1, int a2)
{
  if ((*(a1 + 104) & 1) != 0 || !*(a1 + 112))
  {
    return (*(*(a1 + 72) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1;
  }

  if (*(a1 + 128) == 1)
  {
    v2 = *(a1 + 120);
    if (*(v2 + 92) == a2)
    {
      v3 = (v2 + 96);
      return *v3 != 0;
    }

    v5 = a2 + 1;
    v7 = v2 + 8;
    v6 = *(v2 + 8);
    if (v5 < (*(v7 + 8) - v6) >> 3)
    {
      v3 = (v6 + 8 * v5);
      return *v3 != 0;
    }
  }

  return 0;
}

void *fst::ArcIterator<fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ArcIterator(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 15);
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::internal::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::InitArcIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  return fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitArcIterator(a1, a2, a3);
}

uint64_t fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 120);
  if (*(v3 + 92) == a2)
  {
    v4 = (v3 + 96);
  }

  else
  {
    v4 = (*(v3 + 8) + 8 * a2 + 8);
  }

  v5 = *v4;
  v8 = *(v5 + 60);
  v6 = (v5 + 60);
  v7 = v8;
  v9 = *(v6 - 9);
  v10 = (*(v6 - 7) - v9) >> 4;
  if (*(v6 - 7) == v9)
  {
    v9 = 0;
  }

  *a3 = 0;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v6;
  *v6 = v7 + 1;
  return result;
}

void fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFst()
{
  std::allocate_shared[abi:ne200100]<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const&,0>();
}

{
  _ZNSt3__115allocate_sharedB8ne200100IN3fst8internal13VectorFstImplINS1_11VectorStateINS1_6ArcTplINS1_17TropicalWeightTplIfEEEENS_9allocatorIS8_EEEEEENS9_ISC_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_26B50A588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ImplToMutableFst(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a1[1] = v4;
  a1[2] = v3;
  *a1 = &unk_287C065A8;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_287C06480;
  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ReplaceFst(void *a1)
{
  *a1 = &unk_287C086A8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ReplaceFst(void *a1)
{
  *a1 = &unk_287C086A8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::ImplToFst<fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 24);

    return v7();
  }
}

uint64_t fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitMatcher(void *a1, int a2)
{
  if ((*(a1[1] + 160) & 1) == 0)
  {
    if (a2 == 2)
    {
      v2 = *(*a1 + 56);
    }

    else
    {
      if (a2 != 1)
      {
        goto LABEL_8;
      }

      v2 = *(*a1 + 56);
    }

    if (v2())
    {
      operator new();
    }
  }

LABEL_8:
  if (FLAGS_v >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
    LogMessage::LogMessage(&v6, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Not using replace matcher", 25);
    LogMessage::~LogMessage(&v6);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void *std::__shared_ptr_emplace<fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__shared_ptr_emplace[abi:ne200100]<std::vector<std::pair<int,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>> const&,fst::ReplaceFstOptions<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> const&,std::allocator<fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,0>(void *a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C08290;
  fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ReplaceFstImpl((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287C08290;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ReplaceFstImpl(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::CacheBaseImpl(a1, a3);
  *v6 = &unk_287C082E0;
  *(v6 + 132) = *(a3 + 32);
  v7 = *(a3 + 40);
  *&v8 = v7;
  *(&v8 + 1) = SHIDWORD(v7);
  *(v6 + 144) = v8;
  v9 = *(a3 + 56);
  if (!v9)
  {
    operator new();
  }

  *(a1 + 184) = 0;
  *(a1 + 176) = a1 + 184;
  v10 = a1 + 176;
  *(a1 + 168) = v9;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0u;
  v67 = (a1 + 200);
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1065353216;
  *(a1 + 240) = 0;
  v11 = (a1 + 240);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  v66 = (a1 + 240);
  std::string::basic_string[abi:ne200100]<0>(&__str, "replace");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (!*(a1 + 144))
  {
    *(a1 + 132) = 1;
  }

  if (!*(a1 + 152))
  {
    *(a1 + 136) = 1;
  }

  if (*a2 != a2[1])
  {
    v12 = (*(**(*a2 + 8) + 96))(*(*a2 + 8));
    fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(a1, v12);
    v13 = (*(**(*a2 + 8) + 104))(*(*a2 + 8));
    fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(a1, v13);
  }

  v15 = *(a1 + 248);
  v14 = *(a1 + 256);
  if (v15 >= v14)
  {
    v17 = *v11;
    v18 = v15 - *v11;
    v19 = (v18 >> 3) + 1;
    if (v19 >> 61)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v20 = v14 - v17;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    v21 = v20 >= 0x7FFFFFFFFFFFFFF8;
    v22 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v21)
    {
      v22 = v19;
    }

    v87 = a1 + 240;
    if (v22)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>>(a1 + 240, v22);
    }

    v23 = (8 * (v18 >> 3));
    *v23 = 0;
    v16 = v23 + 1;
    memcpy(0, v17, v18);
    v24 = *(a1 + 240);
    *(a1 + 240) = 0;
    *(a1 + 248) = v16;
    v25 = *(a1 + 256);
    *(a1 + 256) = 0;
    __str.__r_.__value_.__r.__words[2] = v24;
    v86 = v25;
    __str.__r_.__value_.__r.__words[0] = v24;
    __str.__r_.__value_.__l.__size_ = v24;
    std::__split_buffer<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::~__split_buffer(&__str);
  }

  else
  {
    *v15 = 0;
    v16 = v15 + 8;
  }

  *(a1 + 248) = v16;
  v26 = *a2;
  if (a2[1] != *a2)
  {
    v27 = 0;
    v28 = 0;
    while (1)
    {
      v29 = v26 + v27;
      LODWORD(v68[0]) = *v29;
      v30 = *(v29 + 8);
      v32 = *(a1 + 240);
      v31 = *(a1 + 248);
      __str.__r_.__value_.__r.__words[0] = v68;
      *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v67, v68) + 5) = (v31 - v32) >> 3;
      std::__tree<int>::__emplace_unique_key_args<int,int const&>(v10, v68);
      v33 = v30;
      if ((*(a3 + 48) & 1) == 0)
      {
        v33 = (*(*v30 + 72))(v30, 0);
      }

      v35 = *(a1 + 248);
      v34 = *(a1 + 256);
      if (v35 >= v34)
      {
        v37 = *v66;
        v38 = v35 - *v66;
        v39 = v38 >> 3;
        v40 = (v38 >> 3) + 1;
        if (v40 >> 61)
        {
          std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
        }

        v41 = v34 - v37;
        if (v41 >> 2 > v40)
        {
          v40 = v41 >> 2;
        }

        v21 = v41 >= 0x7FFFFFFFFFFFFFF8;
        v42 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v21)
        {
          v42 = v40;
        }

        v87 = a1 + 240;
        if (v42)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>>(v66, v42);
        }

        *(8 * v39) = v33;
        v36 = 8 * v39 + 8;
        memcpy(0, v37, v38);
        v43 = *(a1 + 240);
        *(a1 + 240) = 0;
        *(a1 + 248) = v36;
        v44 = *(a1 + 256);
        *(a1 + 256) = 0;
        __str.__r_.__value_.__r.__words[2] = v43;
        v86 = v44;
        __str.__r_.__value_.__r.__words[0] = v43;
        __str.__r_.__value_.__l.__size_ = v43;
        std::__split_buffer<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::~__split_buffer(&__str);
        v10 = a1 + 176;
      }

      else
      {
        *v35 = v33;
        v36 = (v35 + 1);
      }

      *(a1 + 248) = v36;
      if (!v27)
      {
        goto LABEL_58;
      }

      v45 = *(a1 + 40);
      v46 = (*(*v30 + 96))(v30);
      if (!fst::CompatSymbols(v45, v46, 1))
      {
        break;
      }

LABEL_47:
      v51 = *(a1 + 48);
      v52 = (*(*v30 + 104))(v30);
      if (!fst::CompatSymbols(v51, v52, 1))
      {
        v53 = FLAGS_fst_error_fatal;
        if (FLAGS_fst_error_fatal == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v75, "FATAL");
          LogMessage::LogMessage(&v77, v75);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v72, "ERROR");
          LogMessage::LogMessage(&v74, v72);
        }

        v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "ReplaceFstImpl: Output symbols of FST ", 38);
        v55 = MEMORY[0x26D678680](v54, v28);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, " do not match output symbols of base FST (0th FST)", 50);
        if (v53)
        {
          LogMessage::~LogMessage(&v77);
          if (v76 < 0)
          {
            v56 = v75[0];
            goto LABEL_56;
          }
        }

        else
        {
          LogMessage::~LogMessage(&v74);
          if (v73 < 0)
          {
            v56 = v72[0];
LABEL_56:
            operator delete(v56);
          }
        }

        *(a1 + 8) |= 4uLL;
      }

LABEL_58:
      ++v28;
      v26 = *a2;
      v27 += 16;
      if (v28 >= (a2[1] - *a2) >> 4)
      {
        goto LABEL_59;
      }
    }

    v47 = FLAGS_fst_error_fatal;
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v81, "FATAL");
      LogMessage::LogMessage(&v83, v81);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      LogMessage::LogMessage(&v80, __p);
    }

    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "ReplaceFstImpl: Input symbols of FST ", 37);
    v49 = MEMORY[0x26D678680](v48, v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " do not match input symbols of base FST (0th FST)", 49);
    if (v47)
    {
      LogMessage::~LogMessage(&v83);
      if (v82 < 0)
      {
        v50 = v81[0];
LABEL_45:
        operator delete(v50);
      }
    }

    else
    {
      LogMessage::~LogMessage(&v80);
      if (v79 < 0)
      {
        v50 = __p[0];
        goto LABEL_45;
      }
    }

    *(a1 + 8) |= 4uLL;
    goto LABEL_47;
  }

LABEL_59:
  v57 = (a3 + 28);
  __str.__r_.__value_.__r.__words[0] = v57;
  v58 = *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v67, v57) + 5);
  if (!v58 && *(a1 + 248) - *(a1 + 240) >= 9uLL)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "ERROR");
    }

    LogMessage::LogMessage(&v84, &__str);
    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "ReplaceFstImpl: No FST corresponding to root label ", 51);
    v60 = MEMORY[0x26D678680](v59, *v57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " in the input tuple vector", 26);
    LogMessage::~LogMessage(&v84);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    *(a1 + 8) |= 4uLL;
  }

  if (v58 <= 1)
  {
    v61 = 1;
  }

  else
  {
    v61 = v58;
  }

  *(a1 + 264) = v61;
  v71 = 0;
  *(a1 + 8) = *(a1 + 8) & 4 | fst::ReplaceFstProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(*v57, a2, *(a1 + 132), *(a1 + 136), *(a1 + 144), &v71);
  *(a1 + 160) = v71 ^ 1;
  if (FLAGS_v >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v68, "INFO");
    LogMessage::LogMessage(&v70, v68);
    v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "ReplaceFstImpl::ReplaceFstImpl: always_cache = ", 47);
    if (*(a1 + 160))
    {
      v63 = "true";
    }

    else
    {
      v63 = "false";
    }

    if (*(a1 + 160))
    {
      v64 = 4;
    }

    else
    {
      v64 = 5;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, v63, v64);
    LogMessage::~LogMessage(&v70);
    if (v69 < 0)
    {
      operator delete(v68[0]);
    }
  }

  return a1;
}

void sub_26B50B430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, void **a11, uint64_t a12, void **a13)
{
  if (*(v14 - 105) < 0)
  {
    operator delete(*(v14 - 128));
  }

  a13 = a11;
  std::vector<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::__destroy_vector::operator()[abi:ne200100](&a13);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a12);
  std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(a10, *a9);
  std::unique_ptr<fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>>::~unique_ptr[abi:ne200100]((v13 + 168));
  fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(v13);
  _Unwind_Resume(a1);
}

uint64_t fst::ReplaceFstProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(int a1, uint64_t *a2, int a3, int a4, int a5, _BYTE *a6)
{
  v6 = a6;
  __src = 0;
  v57 = 0;
  v58 = 0;
  v7 = *a2;
  v8 = a2[1] - *a2;
  if (v8)
  {
    v44 = a3;
    v45 = a5;
    v46 = a4;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = v8 >> 4;
    v13 = 1;
    v14 = 1;
    v15 = 1;
    v16 = 1;
    v17 = 1;
    do
    {
      v54 = v14;
      v55 = v13;
      v18 = (v7 + v9);
      v19 = *v18;
      v20 = v12 >= v19 && v19 > 0;
      v51 = v20;
      v52 = v19 < 0;
      if (v19 == a1)
      {
        v11 = v10;
      }

      v53 = v11;
      v21 = *(v18 + 1);
      v50 = (*(*v21 + 16))(v21) != -1;
      v22 = (*(*v21 + 56))(v21, 0x10000000, 0) != 0;
      v23 = (*(*v21 + 56))(v21, 0x40000000, 0) != 0;
      v24 = (*(*v21 + 56))(v21, 0xFFFFFFFF0004, 0);
      v25 = v57;
      if (v57 >= v58)
      {
        v27 = __src;
        v28 = v57 - __src;
        v29 = (v57 - __src) >> 3;
        v30 = v29 + 1;
        if ((v29 + 1) >> 61)
        {
          std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
        }

        v31 = v58 - __src;
        if ((v58 - __src) >> 2 > v30)
        {
          v30 = v31 >> 2;
        }

        v32 = v31 >= 0x7FFFFFFFFFFFFFF8;
        v33 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v32)
        {
          v33 = v30;
        }

        if (v33)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v33);
        }

        *(8 * v29) = v24;
        v26 = 8 * v29 + 8;
        memcpy(0, v27, v28);
        v34 = __src;
        __src = 0;
        v57 = v26;
        v58 = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v57 = v24;
        v26 = (v25 + 8);
      }

      v11 = v53;
      v16 &= v52;
      v17 &= v51;
      v15 &= v50;
      v13 = v22 & v55;
      v14 = v23 & v54;
      v57 = v26;
      ++v10;
      v7 = *a2;
      v12 = (a2[1] - *a2) >> 4;
      v9 += 16;
    }

    while (v12 > v10);
    v35 = v53;
    v36 = v16 | v17;
    v6 = a6;
    a5 = v45;
    a4 = v46;
    a3 = v44;
  }

  else
  {
    v35 = 0;
    v36 = 1;
    v15 = 1;
    LOBYTE(v14) = 1;
    LOBYTE(v13) = 1;
  }

  v39 = a3 == 4 && a5 != -1 || (a4 & 0xFFFFFFFE) == 2;
  v40 = (a3 & 0xFFFFFFFE) == 2 || v39;
  v41 = fst::ReplaceProperties(&__src, v35, (a3 & 0xFFFFFFFD) == 1, (a4 & 0xFFFFFFFD) == 1, (a3 - 1) < 2, (a4 - 1) < 2, v40, v15, v13, v14, v36 & 1);
  if ((v41 & 0x50000000) != 0)
  {
    v42 = v15;
  }

  else
  {
    v42 = 0;
  }

  *v6 = v42;
  if (__src)
  {
    v57 = __src;
    operator delete(__src);
  }

  return v41;
}