void sub_26B5B1B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (*(v19 - 121) < 0)
  {
    operator delete(*(v19 - 144));
  }

  if (*(v19 - 89) < 0)
  {
    operator delete(*(v19 - 112));
  }

  std::mutex::unlock((v18 + 216));
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_26B5B1CD8(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x26D67A4B0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x26D67A4B0](a1 + 112);
  return a1;
}

unint64_t fst::internal::SymbolTableImpl::GetNthKey(fst::internal::SymbolTableImpl *this, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return -1;
  }

  v3 = *(this + 6);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - v3) >> 3) <= a2)
  {
    return -1;
  }

  if (*(this + 4) <= a2)
  {
    v4 = fst::internal::DenseSymbolMap::Find(this + 5, v3 + 24 * a2);
    a2 = v4;
    if (v4 != -1)
    {
      v5 = *(this + 4);
      v6 = __OFSUB__(v4, v5);
      v7 = v4 - v5;
      if (v7 < 0 == v6)
      {
        return *(*(this + 14) + 8 * v7);
      }
    }
  }

  return a2;
}

void fst::internal::SymbolTableImpl::RemoveSymbol(fst::internal::SymbolTableImpl *this, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v4 = a2;
    if (*(this + 4) > a2)
    {
      goto LABEL_11;
    }
  }

  v5 = (this + 144);
  v6 = *(this + 18);
  if (v6)
  {
    v7 = (this + 136);
    v8 = (this + 144);
    do
    {
      if (v6[4] >= a2)
      {
        v8 = v6;
      }

      v6 = v6[v6[4] < a2];
    }

    while (v6);
    if (v8 != v5 && v8[4] <= a2)
    {
      v4 = v8[5];
      std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__remove_node_pointer(v7, v8);
      operator delete(v8);
      if ((v4 & 0x8000000000000000) == 0)
      {
LABEL_11:
        if (v4 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - *(this + 6)) >> 3))
        {
          fst::internal::DenseSymbolMap::RemoveSymbol((this + 40), v4);
          v9 = *(this + 17);
          if (v9 != (this + 144))
          {
            do
            {
              v10 = *(v9 + 5);
              if (v10 > v4)
              {
                *(v9 + 5) = v10 - 1;
              }

              v11 = *(v9 + 1);
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
                  v12 = *(v9 + 2);
                  v13 = *v12 == v9;
                  v9 = v12;
                }

                while (!v13);
              }

              v9 = v12;
            }

            while (v12 != (this + 144));
          }

          v14 = *(this + 4);
          if (a2 < 0 || v14 <= a2)
          {
            v23 = *(this + 14);
            v22 = *(this + 15);
            v24 = (v22 - v23) >> 3;
            if (v4 - v14 < v24 - 1)
            {
              v25 = ~v4 + v14 + v24;
              v26 = (v23 - 8 * v14 + 8 * v4 + 8);
              do
              {
                *(v26 - 1) = *v26;
                ++v26;
                --v25;
              }

              while (v25);
            }

            *(this + 15) = v22 - 8;
          }

          else
          {
            v27[0] = a2 + 1;
            if (a2 + 1 < v14)
            {
              v15 = a2;
              do
              {
                v27[2] = v27;
                std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(this + 136, v27)[5] = v15;
                v15 = v27[0]++;
              }

              while (v27[0] < *(this + 4));
            }

            std::vector<long long>::resize(this + 14, 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - *(this + 6)) >> 3) - a2);
            v16 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - *(this + 6)) >> 3);
            v17 = *(this + 4);
            if (v16 >= v17)
            {
              v18 = v16 + 1;
              v19 = *(this + 14) + 0x5555555555555558 * ((*(this + 7) - *(this + 6)) >> 3);
              do
              {
                *(v19 + 8 * ~a2) = *(v19 - 8 * v17);
                v17 = *(this + 4);
                --v18;
                v19 -= 8;
              }

              while (v18 > v17);
            }

            if (v17 - 1 > a2)
            {
              v20 = *(this + 14);
              v21 = a2;
              do
              {
                *v20++ = ++v21;
              }

              while (v21 < *(this + 4) - 1);
            }

            *(this + 4) = a2;
          }

          if (*(this + 3) - 1 == a2)
          {
            *(this + 3) = a2;
          }
        }
      }
    }
  }
}

uint64_t fst::internal::SymbolTableImpl::Read(void *a1)
{
  v6 = 0;
  std::istream::read();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) == 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    v5 = 0;
    LODWORD(v3.__r_.__value_.__l.__data_) = 0;
    std::istream::read();
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  LogMessage::LogMessage(&v3, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "SymbolTable::Read: Read failed", 30);
  LogMessage::~LogMessage(&v3);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_26B5B24BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, fst::internal::SymbolTableImpl *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  LogMessage::~LogMessage((v30 - 49));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  std::unique_ptr<fst::internal::SymbolTableImpl>::~unique_ptr[abi:ne200100](&a24);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

BOOL fst::internal::SymbolTableImpl::Write(uint64_t *a1, void *a2)
{
  LODWORD(__p[0]) = 2125658996;
  std::ostream::write();
  LODWORD(v4) = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  LODWORD(__p[0]) = v4;
  std::ostream::write();
  if (*(a1 + 23) < 0)
  {
    v5 = *a1;
  }

  std::ostream::write();
  __p[0] = a1[3];
  std::ostream::write();
  v6 = a1[7] - a1[6];
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  __p[0] = v7;
  std::ostream::write();
  if (v6 >= 1)
  {
    v8 = 0;
    v9 = 0;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v10 = a1[4];
      v11 = v9;
      if (v9 >= v10)
      {
        v11 = *(a1[14] - 8 * v10 + 8 * v9);
      }

      v12 = (a1[6] + v8);
      LODWORD(v13) = *(v12 + 23);
      if ((v13 & 0x80u) != 0)
      {
        v13 = v12[1];
      }

      LODWORD(__p[0]) = v13;
      std::ostream::write();
      if (*(v12 + 23) < 0)
      {
        v14 = *v12;
      }

      std::ostream::write();
      __p[0] = v11;
      std::ostream::write();
      ++v9;
      v8 += 24;
    }

    while (v7 != v9);
  }

  std::ostream::flush();
  v15 = *(a2 + *(*a2 - 24) + 32) & 5;
  if (v15)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    LogMessage::LogMessage(&v19, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "SymbolTable::Write: Write failed", 32);
    LogMessage::~LogMessage(&v19);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v15 == 0;
}

void sub_26B5B2798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::SymbolTable::AddTable(fst::SymbolTable *this, const fst::SymbolTable *a2)
{
  fst::SymbolTable::MutateCheck(this);
  v4 = (*(*a2 + 120))(a2);
  v5 = (*(*a2 + 64))(a2, 0);
  if (v4)
  {
    v6 = v5;
    v7 = 1;
    v8 = v4;
    do
    {
      v9 = *(this + 1);
      (*(*a2 + 72))(__p, a2, v6);
      fst::internal::SymbolTableImpl::AddSymbol(v9, __p, *(v9 + 24));
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v7 < v4)
      {
        v6 = (*(*a2 + 64))(a2, v7);
      }

      ++v7;
      --v8;
    }

    while (v8);
  }
}

void sub_26B5B290C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SymbolTable::MutateCheck(uint64_t this)
{
  v1 = *(this + 16);
  if (!v1 || *(v1 + 8))
  {
    operator new();
  }

  return this;
}

BOOL fst::SymbolTable::WriteText(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 31);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 16);
  }

  v19 = v3;
  if (v3)
  {
    v6 = (*(*a1 + 120))(a1);
    v7 = (*(*a1 + 64))(a1, 0);
    if (v6)
    {
      v8 = v7;
      v9 = 0;
      v20 = *(MEMORY[0x277D82828] + 24);
      v21 = *MEMORY[0x277D82828];
      v10 = 1;
      v11 = v6;
      do
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&v26);
        if (!((v8 >= 0) | v9 & 1 | *a3 & 1))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "WARNING");
          LogMessage::LogMessage(&v22, __p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Negative symbol table entry when not allowed", 44);
          LogMessage::~LogMessage(&v22);
          if (v25 < 0)
          {
            operator delete(__p[0]);
          }

          v9 = 1;
        }

        (*(*a1 + 72))(__p, a1, v8);
        if ((v25 & 0x80u) == 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        if ((v25 & 0x80u) == 0)
        {
          v13 = v25;
        }

        else
        {
          v13 = __p[1];
        }

        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, v12, v13);
        v15 = (a3 + 8);
        if (*(a3 + 31) < 0)
        {
          v15 = *(a3 + 8);
        }

        LOBYTE(v22) = *v15;
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, &v22, 1);
        v17 = MEMORY[0x26D67A400](v16, v8);
        LOBYTE(v22) = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &v22, 1);
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }

        std::stringbuf::str();
        std::stringbuf::str();
        std::ostream::write();
        if (v23 < 0)
        {
          operator delete(v22);
        }

        if (v25 < 0)
        {
          operator delete(__p[0]);
        }

        v26 = v21;
        *(&v26 + *(v21 - 3)) = v20;
        v27 = MEMORY[0x277D82878] + 16;
        if (v29 < 0)
        {
          operator delete(v28[7].__locale_);
        }

        v27 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v28);
        std::ostream::~ostream();
        MEMORY[0x26D67A4B0](&v30);
        if (v10 < v6)
        {
          v8 = (*(*a1 + 64))(a1, v10);
        }

        ++v10;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v26, "ERROR");
    LogMessage::LogMessage(__p, &v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Missing required field separator", 32);
    LogMessage::~LogMessage(__p);
    if (SHIBYTE(v28[0].__locale_) < 0)
    {
      operator delete(v26);
    }
  }

  return v19 != 0;
}

void sub_26B5B2DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  LogMessage::~LogMessage(&a23);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::SymbolTable::~SymbolTable(fst::SymbolTable *this)
{
  *this = &unk_287C18108;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_287C18108;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x26D67A4F0);
}

uint64_t fst::SymbolTable::AddSymbol(uint64_t a1, uint64_t a2, uint64_t a3)
{
  fst::SymbolTable::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::internal::SymbolTableImpl::AddSymbol(v6, a2, a3);
}

uint64_t fst::SymbolTable::AddSymbol(uint64_t a1, uint64_t a2)
{
  fst::SymbolTable::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4 + 24);

  return fst::internal::SymbolTableImpl::AddSymbol(v4, a2, v5);
}

uint64_t fst::SymbolTable::CheckSum(fst::SymbolTable *this)
{
  v1 = *(this + 1);
  fst::internal::SymbolTableImpl::MaybeRecomputeCheckSum(v1);
  return v1 + 168;
}

uint64_t fst::SymbolTable::Find(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  result = fst::internal::DenseSymbolMap::Find(v2 + 5, a2);
  if (result != -1)
  {
    v4 = v2[4];
    v5 = __OFSUB__(result, v4);
    v6 = result - v4;
    if (v6 < 0 == v5)
    {
      return *(v2[14] + 8 * v6);
    }
  }

  return result;
}

uint64_t fst::SymbolTable::LabeledCheckSum(fst::SymbolTable *this)
{
  v1 = *(this + 1);
  fst::internal::SymbolTableImpl::MaybeRecomputeCheckSum(v1);
  return v1 + 192;
}

BOOL fst::SymbolTable::Member(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = fst::internal::DenseSymbolMap::Find(v2 + 5, a2);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = v2[4];
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  return v6 < 0 != v5 || *(v2[14] + 8 * v6) != -1;
}

void fst::SymbolTable::RemoveSymbol(fst::SymbolTable *this, uint64_t a2)
{
  fst::SymbolTable::MutateCheck(this);
  v4 = *(this + 1);

  fst::internal::SymbolTableImpl::RemoveSymbol(v4, a2);
}

std::string *fst::SymbolTable::SetName(uint64_t a1, const std::string *a2)
{
  fst::SymbolTable::MutateCheck(a1);
  v4 = *(a1 + 8);

  return std::string::operator=(v4, a2);
}

uint64_t fst::SymbolTable::Write(uint64_t a1, uint64_t a2)
{
  v16[19] = *MEMORY[0x277D85DE8];
  std::ofstream::basic_ofstream(&v14, a2);
  if (*&v15[*(v14 - 24) + 24])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    LogMessage::LogMessage(&v13, __p);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "SymbolTable::Write: Can't open file ", 36);
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (v5 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
    LogMessage::~LogMessage(&v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = 0;
  }

  else
  {
    v8 = (*(*a1 + 144))(a1, &v14);
  }

  v14 = *MEMORY[0x277D82810];
  *&v15[*(v14 - 24) - 8] = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x26D67A340](v15);
  std::ostream::~ostream();
  MEMORY[0x26D67A4B0](v16);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t fst::SymbolTable::WriteText(uint64_t a1, uint64_t a2)
{
  v18[19] = *MEMORY[0x277D85DE8];
  std::ofstream::basic_ofstream(&v16, a2);
  if (*&v17[*(v16 - 24) + 24])
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    LogMessage::LogMessage(&v15, &__p);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "SymbolTable::WriteText: Can't open file ", 40);
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (v5 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
    LogMessage::~LogMessage(&v15);
    if (v13 < 0)
    {
      operator delete(__p);
    }

    v8 = 0;
  }

  else
  {
    LOBYTE(__p) = 0;
    std::string::basic_string[abi:ne200100]<0>(&v12, FLAGS_fst_field_separator);
    v8 = (*(*a1 + 160))(a1, &v16, &__p);
    if (v14 < 0)
    {
      operator delete(v12);
    }
  }

  v16 = *MEMORY[0x277D82810];
  *&v17[*(v16 - 24) - 8] = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x26D67A340](v17);
  std::ostream::~ostream();
  MEMORY[0x26D67A4B0](v18);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_26B5B3628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::ofstream::~ofstream(&a24);
  _Unwind_Resume(a1);
}

std::string *fst::internal::SymbolTableImpl::SymbolTableImpl(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  fst::internal::DenseSymbolMap::DenseSymbolMap(&this[1].__r_.__value_.__r.__words[2]);
  this[4].__r_.__value_.__r.__words[2] = 0;
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[6].__r_.__value_.__l.__size_ = 0;
  this[6].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = &this[6];
  this[6].__r_.__value_.__s.__data_[16] = 0;
  *&this[7].__r_.__value_.__l.__data_ = 0u;
  *&this[7].__r_.__value_.__r.__words[2] = 0u;
  *&this[8].__r_.__value_.__r.__words[1] = 0u;
  this[9].__r_.__value_.__r.__words[0] = 850045863;
  *&this[9].__r_.__value_.__r.__words[1] = 0u;
  *&this[10].__r_.__value_.__l.__data_ = 0u;
  *&this[10].__r_.__value_.__r.__words[2] = 0u;
  this[11].__r_.__value_.__l.__size_ = 0;
  return this;
}

void sub_26B5B3720(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void fst::internal::DenseSymbolMap::~DenseSymbolMap(fst::internal::DenseSymbolMap *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

fst::CheckSummer *fst::CheckSummer::CheckSummer(fst::CheckSummer *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::string::resize((this + 8), 0x20uLL, 0);
  return this;
}

void sub_26B5B37D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *fst::internal::SymbolTableImpl::SymbolTableImpl(std::string *this, const fst::internal::SymbolTableImpl *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  *&this[1].__r_.__value_.__l.__data_ = *(a2 + 24);
  fst::internal::DenseSymbolMap::DenseSymbolMap(&this[1].__r_.__value_.__r.__words[2], (a2 + 40));
  this[4].__r_.__value_.__r.__words[2] = 0;
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&this[4].__r_.__value_.__r.__words[2], *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 3);
  std::map<long long,long long>::map[abi:ne200100](&this[5].__r_.__value_.__r.__words[2], a2 + 136);
  this[6].__r_.__value_.__s.__data_[16] = 0;
  *&this[7].__r_.__value_.__l.__data_ = 0u;
  *&this[7].__r_.__value_.__r.__words[2] = 0u;
  *&this[8].__r_.__value_.__r.__words[1] = 0u;
  this[9].__r_.__value_.__r.__words[0] = 850045863;
  *&this[9].__r_.__value_.__r.__words[1] = 0u;
  *&this[10].__r_.__value_.__l.__data_ = 0u;
  *&this[10].__r_.__value_.__r.__words[2] = 0u;
  this[11].__r_.__value_.__l.__size_ = 0;
  return this;
}

void sub_26B5B38FC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 120) = v4;
    operator delete(v4);
  }

  fst::internal::DenseSymbolMap::~DenseSymbolMap((v1 + 40));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void *std::map<long long,long long>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<long long,long long>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<long long,long long>,std::__tree_node<std::__value_type<long long,long long>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<long long,long long>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<long long,long long>,std::__tree_node<std::__value_type<long long,long long>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_hint_unique_key_args<long long,std::pair<long long const,long long> const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

uint64_t std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_hint_unique_key_args<long long,std::pair<long long const,long long> const&>(void *a1, void *a2, uint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__find_equal<long long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__find_equal<long long>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
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
    if (v10[4] < *a5)
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
          v18 = v16[4];
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

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
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

uint64_t *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void fst::internal::SymbolTableImpl::Find(fst::internal::SymbolTableImpl *this@<X0>, int64_t a2@<X1>, std::string *a3@<X8>)
{
  if (a2 < 0 || *(this + 4) <= a2)
  {
    v3 = *(this + 18);
    if (!v3)
    {
      goto LABEL_14;
    }

    v4 = (this + 144);
    do
    {
      if (v3[4] >= a2)
      {
        v4 = v3;
      }

      v3 = v3[v3[4] < a2];
    }

    while (v3);
    if (v4 == (this + 144))
    {
      goto LABEL_14;
    }

    if (v4[4] > a2)
    {
      goto LABEL_14;
    }

    a2 = v4[5];
    if (a2 < 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 6);
  if (a2 >= 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - v5) >> 3))
  {
LABEL_14:
    std::string::basic_string[abi:ne200100]<0>(a3, "");
  }

  else
  {
    v6 = (v5 + 24 * a2);
    if (*(v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *v6, *(v6 + 1));
    }

    else
    {
      v7 = *v6;
      a3->__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&a3->__r_.__value_.__l.__data_ = v7;
    }
  }
}

BOOL fst::internal::SymbolTableImpl::Member(fst::internal::SymbolTableImpl *this, int64_t a2)
{
  fst::internal::SymbolTableImpl::Find(this, a2, &v4);
  if ((SHIBYTE(v4.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return SHIBYTE(v4.__r_.__value_.__r.__words[2]) != 0;
  }

  v2 = v4.__r_.__value_.__l.__size_ != 0;
  operator delete(v4.__r_.__value_.__l.__data_);
  return v2;
}

void *std::ofstream::~ofstream(void *a1)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x26D67A340](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x26D67A4B0](a1 + 52);
  return a1;
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26B5B4088(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
}

void *std::vector<long long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26B5B413C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26B5B41C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<long long>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
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

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x26D67A460](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_26B5B4C9C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
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

void *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t *a2)
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

uint64_t *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t fst::FstHeader::Read(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    std::istream::tellg();
    v6 = v22;
  }

  else
  {
    v6 = 0;
  }

  std::istream::read();
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  LogMessage::LogMessage(&__c, __p);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "FstHeader::Read: Bad FST header: ", 33);
  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
  LogMessage::~LogMessage(&__c);
  if ((SBYTE7(v15) & 0x80000000) == 0)
  {
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  operator delete(__p[0]);
  if (a4)
  {
LABEL_14:
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *__p = 0u;
    v15 = 0u;
    v22 = v6;
    std::istream::seekg();
  }

LABEL_15:
  result = 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26B5B55EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::FstHeader::Write(uint64_t a1)
{
  std::ostream::write();
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 16);
  }

  std::ostream::write();
  if (*(a1 + 31) < 0)
  {
    v3 = *(a1 + 8);
  }

  std::ostream::write();
  if (*(a1 + 55) < 0)
  {
    v4 = *(a1 + 40);
  }

  std::ostream::write();
  v5 = *(a1 + 55);
  v7 = *(a1 + 32);
  v6 = a1 + 32;
  std::ostream::write();
  v9 = *(v6 + 24);
  std::ostream::write();
  v10 = *(v6 + 28);
  std::ostream::write();
  v11 = *(v6 + 32);
  std::ostream::write();
  v12 = *(v6 + 40);
  std::ostream::write();
  v13 = *(v6 + 48);
  std::ostream::write();
  v14 = *(v6 + 56);
  std::ostream::write();
  return 1;
}

std::string *fst::FstReadOptions::FstReadOptions(std::string *this, __int128 *a2, std::string::size_type a3, std::string::size_type a4, std::string::size_type a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  this[1].__r_.__value_.__r.__words[0] = a3;
  this[1].__r_.__value_.__l.__size_ = a4;
  this[1].__r_.__value_.__r.__words[2] = a5;
  WORD2(this[2].__r_.__value_.__r.__words[0]) = 257;
  std::string::basic_string[abi:ne200100]<0>(__p, FLAGS_fst_read_mode);
  LODWORD(this[2].__r_.__value_.__l.__data_) = fst::FstReadOptions::ReadMode(__p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_26B5B5838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::FstReadOptions::ReadMode(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8) == 4 && **a1 == 1684104562)
    {
      return 0;
    }

    if (*(a1 + 8) != 3)
    {
LABEL_14:
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      LogMessage::LogMessage(&v14, __p);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Unknown file read mode ", 23);
      v8 = *(a1 + 23);
      if (v8 >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      if (v8 >= 0)
      {
        v10 = *(a1 + 23);
      }

      else
      {
        v10 = *(a1 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
      LogMessage::~LogMessage(&v14);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      return 0;
    }

    v3 = *a1;
LABEL_10:
    v4 = *v3;
    v5 = *(v3 + 2);
    if (v4 == 24941 && v5 == 112)
    {
      return 1;
    }

    goto LABEL_14;
  }

  v2 = *(a1 + 23);
  v3 = a1;
  if (v2 == 3)
  {
    goto LABEL_10;
  }

  if (v2 != 4 || *a1 != 1684104562)
  {
    goto LABEL_14;
  }

  return 0;
}

void sub_26B5B5990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7930]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}