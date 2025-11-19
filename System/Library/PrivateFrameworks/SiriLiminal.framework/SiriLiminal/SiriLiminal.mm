void *Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2878A2398;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x26D5F9370](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  return a1;
}

uint64_t sentencepiece::ModelInterface::ModelInterface(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  *a1 = &unk_2878A2278;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_2878A2398;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = &unk_2878A2398;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sentencepiece::util::Status::Status((a1 + 96));
  sentencepiece::ModelInterface::InitFromMMappedFile(a1, a3, a4, &v8);
  sentencepiece::util::Status::operator=((a1 + 96), &v8);
  sentencepiece::util::Status::~Status(&v8);
  return a1;
}

void sub_26754FB18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::util::Status::~Status(va);
  sentencepiece::util::Status::~Status((v4 + 96));
  Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(v5);
  Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(v3);
  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    std::default_delete<sentencepiece::normalizer::PrefixMatcher>::operator()[abi:ne200100](v2, v7);
  }

  _Unwind_Resume(a1);
}

void *sentencepiece::ModelInterface::InitFromMMappedFile@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, sentencepiece::util::Status *a4@<X8>)
{
  v8 = a2;
  v9 = a3;
  result = sentencepiece::mmap_util::DecodePrefix<int>(a2, a3, (a1 + 88), a4);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    result = sentencepiece::mmap_util::RemovePrefix(&v8, 4uLL, a4);
    if (!*a4)
    {
      sentencepiece::util::Status::~Status(a4);
      result = sentencepiece::mmap_util::DecodePrefix<int>(v8, v9, (a1 + 92), a4);
      if (!*a4)
      {
        sentencepiece::util::Status::~Status(a4);
        result = sentencepiece::mmap_util::RemovePrefix(&v8, 4uLL, a4);
        if (!*a4)
        {
          sentencepiece::util::Status::~Status(a4);
          v7 = 0;
          result = sentencepiece::mmap_util::DecodePrefix<unsigned int>(v8, v9, &v7, a4);
          if (!*a4)
          {
            sentencepiece::util::Status::~Status(a4);
            result = sentencepiece::mmap_util::RemovePrefix(&v8, 4uLL, a4);
            if (!*a4)
            {
              sentencepiece::util::Status::~Status(a4);
              absl::make_unique<sentencepiece::normalizer::PrefixMatcher,std::string_view>();
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2675501D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

void *sentencepiece::mmap_util::DecodePrefix<int>@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "(", 1);
    MEMORY[0x26D5F9210](&v8, 448);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "string.size() >= sizeof(T)", 26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v7, a4);
    v8 = *MEMORY[0x277D82828];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
    v9 = MEMORY[0x277D82878] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x26D5F9330](&v12);
  }

  else
  {
    *a3 = *a1;

    return sentencepiece::util::Status::Status(a4);
  }
}

void *sentencepiece::mmap_util::DecodePrefix<unsigned int>@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "(", 1);
    MEMORY[0x26D5F9210](&v8, 448);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "string.size() >= sizeof(T)", 26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v7, a4);
    v8 = *MEMORY[0x277D82828];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
    v9 = MEMORY[0x277D82878] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x26D5F9330](&v12);
  }

  else
  {
    *a3 = *a1;

    return sentencepiece::util::Status::Status(a4);
  }
}

void sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  std::stringbuf::str();
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  sentencepiece::util::Status::Status(a2, v3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_26755070C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::util::StatusBuilder::~StatusBuilder(std::locale *this)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  this[1].__locale_ = *MEMORY[0x277D82828];
  *(this + *(v3 - 24) + 8) = v2[3];
  this[2].__locale_ = (MEMORY[0x277D82878] + 16);
  if (SHIBYTE(this[12].__locale_) < 0)
  {
    operator delete(this[10].__locale_);
  }

  this[2].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(this + 3);
  std::ostream::~ostream();
  MEMORY[0x26D5F9330](&this[15]);
}

void sentencepiece::ModelInterface::model_proto(sentencepiece::ModelInterface *this)
{
  v1 = *(this + 1);
  {
    v8 = 1;
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "model_interface.cc", 18);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "(", 1);
    v5 = MEMORY[0x26D5F9210](v4, 103);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") [", 3);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(model_proto = dynamic_cast<const ModelProto *>(model_proto_))", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "] ", 2);
    sentencepiece::error::Die::~Die(&v8);
    __break(1u);
  }
}

void sentencepiece::ModelInterface::~ModelInterface(sentencepiece::ModelInterface *this)
{
  *this = &unk_2878A2278;
  sentencepiece::util::Status::~Status((this + 96));
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = &unk_2878A2398;
  v2 = *(this + 10);
  if (v2)
  {
    MEMORY[0x26D5F9370](v2, 0x1000C8052888210);
    *(this + 10) = 0;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = &unk_2878A2398;
  v3 = *(this + 6);
  if (v3)
  {
    MEMORY[0x26D5F9370](v3, 0x1000C8052888210);
    *(this + 6) = 0;
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    std::default_delete<sentencepiece::normalizer::PrefixMatcher>::operator()[abi:ne200100](this + 16, v4);
  }
}

const char *sentencepiece::ModelInterface::unk_piece(sentencepiece::ModelInterface *this)
{
  (*(**(this + 1) + 32))(*(this + 1));
  if (v2)
  {
    return (*(**(this + 1) + 32))(*(this + 1));
  }

  else
  {
    return "<unk>";
  }
}

const char *sentencepiece::ModelInterface::bos_piece(sentencepiece::ModelInterface *this)
{
  (*(**(this + 1) + 40))(*(this + 1));
  if (v2)
  {
    return (*(**(this + 1) + 40))(*(this + 1));
  }

  else
  {
    return "<s>";
  }
}

const char *sentencepiece::ModelInterface::eos_piece(sentencepiece::ModelInterface *this)
{
  (*(**(this + 1) + 48))(*(this + 1));
  if (v2)
  {
    return (*(**(this + 1) + 48))(*(this + 1));
  }

  else
  {
    return "</s>";
  }
}

const char *sentencepiece::ModelInterface::pad_piece(sentencepiece::ModelInterface *this)
{
  (*(**(this + 1) + 56))(*(this + 1));
  if (v2)
  {
    return (*(**(this + 1) + 56))(*(this + 1));
  }

  else
  {
    return "<pad>";
  }
}

uint64_t sentencepiece::ModelInterface::PieceToId(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a1 + 72);
  v4 = *v3;
  if (a3)
  {
    v5 = 0;
    v6 = a2;
    v7 = a3;
    while (1)
    {
      v8 = *v6++;
      v5 ^= (v4 >> 10 << ((v4 >> 6) & 8)) ^ v8;
      v4 = v3[v5];
      if ((v4 & 0x800000FF) != v8)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = *a2;
    if (*a2)
    {
      v5 = 0;
      v10 = a2 + 1;
      while (1)
      {
        v5 ^= (v4 >> 10 << ((v4 >> 6) & 8)) ^ v9;
        v4 = v3[v5];
        if ((v4 & 0x800000FF) != v9)
        {
          break;
        }

        v11 = *v10++;
        v9 = v11;
        if (!v11)
        {
LABEL_10:
          if ((v4 & 0x100) != 0)
          {
            goto LABEL_23;
          }

          break;
        }
      }
    }

    else
    {
      v5 = 0;
      if ((v4 & 0x100) != 0)
      {
LABEL_23:
        v19 = v5 ^ (v4 >> 10 << ((v4 >> 6) & 8));
        return v3[v19] & 0x7FFFFFFF;
      }
    }
  }

  v3 = *(a1 + 40);
  v12 = *v3;
  if (a3)
  {
    v13 = 0;
    while (1)
    {
      v14 = *a2++;
      v13 ^= (v12 >> 10 << ((v12 >> 6) & 8)) ^ v14;
      v12 = v3[v13];
      if ((v12 & 0x800000FF) != v14)
      {
        return *(a1 + 88);
      }

      if (!--a3)
      {
        goto LABEL_20;
      }
    }
  }

  v15 = *a2;
  if (*a2)
  {
    v13 = 0;
    v16 = a2 + 1;
    while (1)
    {
      v13 ^= (v12 >> 10 << ((v12 >> 6) & 8)) ^ v15;
      v12 = v3[v13];
      if ((v12 & 0x800000FF) != v15)
      {
        return *(a1 + 88);
      }

      v17 = *v16++;
      v15 = v17;
      if (!v17)
      {
LABEL_20:
        if ((v12 & 0x100) != 0)
        {
          goto LABEL_25;
        }

        return *(a1 + 88);
      }
    }
  }

  v13 = 0;
  if ((v12 & 0x100) == 0)
  {
    return *(a1 + 88);
  }

LABEL_25:
  v19 = v13 ^ (v12 >> 10 << ((v12 >> 6) & 8));
  return v3[v19] & 0x7FFFFFFF;
}

void sentencepiece::ModelInterface::LookupPredictive(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, sentencepiece::util::Status *a6@<X8>)
{
  (*(*a1 + 16))(&__p);
  v12 = __p;
  sentencepiece::util::Status::~Status(&__p);
  if (v12)
  {
    sentencepiece::util::Status::Status(a6, (a1 + 96));
  }

  else
  {
    v13 = (*(*a1 + 128))(a1);
    v14 = __p;
    v15 = v22;
    while (v14 != v15)
    {
      v16 = *v14;
      if (((*(*a1 + 144))(a1, v16) & 1) == 0 && ((*(*a1 + 152))(a1, v16) & 1) == 0)
      {
        v20[0] = (*(*a1 + 120))(a1, v16);
        v20[1] = v17;
        v18 = a5[1];
        if (v18 >= a5[2])
        {
          v19 = std::vector<std::string>::__emplace_back_slow_path<std::string_view>(a5, v20);
        }

        else
        {
          std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string_view>(a5, v20);
          v19 = v18 + 1;
        }

        a5[1] = v19;
      }

      v14 += 4;
    }

    sentencepiece::util::Status::Status(a6, (a1 + 96));
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }
}

void sub_267550F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::anonymous namespace::LookupPredictiveInternal(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  if (a4 != -1)
  {
    a5 = a4;
  }

  std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::vector[abi:ne200100](a6, a5);
  v12 = Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(a1, a2, *a6, (a6[1] - *a6) >> 4, a3, a4);
  std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::resize(a6, v12);
}

void sub_267551020(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::ModelInterface::LookupPredictive(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, const void **a5@<X4>, sentencepiece::util::Status *a6@<X8>)
{
  (*(*a1 + 16))(&__p);
  v12 = __p;
  sentencepiece::util::Status::~Status(&__p);
  if (v12)
  {
    sentencepiece::util::Status::Status(a6, (a1 + 96));
  }

  else
  {
    v13 = (*(*a1 + 128))(a1);
    v14 = __p;
    v15 = v28;
    if (__p != v28)
    {
      do
      {
        v16 = *v14;
        if (((*(*a1 + 144))(a1, v16) & 1) == 0 && ((*(*a1 + 152))(a1, v16) & 1) == 0)
        {
          v18 = a5[1];
          v17 = a5[2];
          if (v18 >= v17)
          {
            v20 = *a5;
            v21 = v18 - *a5;
            v22 = v21 >> 2;
            v23 = (v21 >> 2) + 1;
            if (v23 >> 62)
            {
              std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
            }

            v24 = v17 - v20;
            if (v24 >> 1 > v23)
            {
              v23 = v24 >> 1;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v25 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a5, v25);
            }

            *(4 * v22) = v16;
            v19 = 4 * v22 + 4;
            memcpy(0, v20, v21);
            v26 = *a5;
            *a5 = 0;
            a5[1] = v19;
            a5[2] = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v18 = v16;
            v19 = (v18 + 4);
          }

          a5[1] = v19;
        }

        v14 += 4;
      }

      while (v14 != v15);
    }

    sentencepiece::util::Status::Status(a6, (a1 + 96));
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }
  }
}

void sub_267551270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::ModelInterface::LookupCommonPrefix(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, sentencepiece::util::Status *a5@<X8>)
{
  (*(*a1 + 16))(&v23);
  v10 = v23;
  sentencepiece::util::Status::~Status(&v23);
  if (v10)
  {
    sentencepiece::util::Status::Status(a5, (a1 + 96));
  }

  else
  {
    v11 = v23;
    v12 = v24;
    while (v11 != v12)
    {
      v13 = *v11;
      if (((*(*a1 + 144))(a1, v13) & 1) == 0 && ((*(*a1 + 152))(a1, v13) & 1) == 0)
      {
        __p[0] = (*(*a1 + 120))(a1, v13);
        __p[1] = v14;
        v15 = *(a4 + 8);
        if (v15 >= *(a4 + 16))
        {
          v16 = std::vector<std::string>::__emplace_back_slow_path<std::string_view>(a4, __p);
        }

        else
        {
          std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string_view>(a4, __p);
          v16 = v15 + 1;
        }

        *(a4 + 8) = v16;
      }

      v11 += 4;
    }

    if (a3 && (*(*a1 + 184))(a1))
    {
      if (a3 < 3 || (*a2 == 38626 ? (v17 = a2[2] == 129) : (v17 = 0), !v17))
      {
        v25 = *a2;
        absl::StrFormat<unsigned char>("<0x%02X>", &v25, __p);
        v18 = *(a4 + 8);
        if (v18 >= *(a4 + 16))
        {
          v20 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a4, __p);
        }

        else
        {
          if (SHIBYTE(v22) < 0)
          {
            std::string::__init_copy_ctor_external(*(a4 + 8), __p[0], __p[1]);
          }

          else
          {
            v19 = *__p;
            *(v18 + 16) = v22;
            *v18 = v19;
          }

          v20 = (v18 + 24);
          *(a4 + 8) = v18 + 24;
        }

        *(a4 + 8) = v20;
        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    sentencepiece::util::Status::Status(a5, (a1 + 96));
    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }
  }
}

void sub_267551504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  *(v17 + 8) = v18;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::anonymous namespace::LookupCommonPrefixInternal(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::vector[abi:ne200100](a4, a3 + 1);
  v8 = *a4;
  v9 = (a4[1] - *a4) >> 4;
  v10 = *(a1 + 16);
  v11 = (*v10 >> 10 << ((*v10 >> 6) & 8));
  if (a3)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = a2[v12];
      v15 = v11 ^ v14;
      v16 = v10[v15];
      if ((v16 & 0x800000FF) != v14)
      {
        break;
      }

      v11 = v15 ^ (v16 >> 10 << ((v16 >> 6) & 8));
      if ((v16 & 0x100) != 0)
      {
        if (v13 < v9)
        {
          v17 = v8 + 16 * v13;
          *v17 = v10[v11] & 0x7FFFFFFF;
          *(v17 + 8) = v12 + 1;
        }

        ++v13;
      }

      ++v12;
    }

    while (a3 != v12);
  }

  else
  {
    v18 = *a2;
    if (*a2)
    {
      v13 = 0;
      v19 = 1;
      do
      {
        v20 = v11 ^ v18;
        v21 = v10[v20];
        if ((v21 & 0x800000FF) != v18)
        {
          break;
        }

        v11 = v20 ^ (v21 >> 10 << ((v21 >> 6) & 8));
        if ((v21 & 0x100) != 0)
        {
          if (v13 < v9)
          {
            v22 = v8 + 16 * v13;
            *v22 = v10[v11] & 0x7FFFFFFF;
            *(v22 + 8) = v19;
          }

          ++v13;
        }

        v18 = a2[v19++];
      }

      while (v18);
    }

    else
    {
      v13 = 0;
    }
  }

  std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::resize(a4, v13);
}

void sub_2675516A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::ModelInterface::LookupCommonPrefix(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, const void **a4@<X3>, sentencepiece::util::Status *a5@<X8>)
{
  (*(*a1 + 16))(&v41);
  v10 = v41;
  sentencepiece::util::Status::~Status(&v41);
  if (v10)
  {
    sentencepiece::util::Status::Status(a5, (a1 + 96));
  }

  else
  {
    v11 = v41;
    v12 = v42;
    while (v11 != v12)
    {
      v13 = *v11;
      if (((*(*a1 + 144))(a1, v13) & 1) == 0 && ((*(*a1 + 152))(a1, v13) & 1) == 0)
      {
        v15 = a4[1];
        v14 = a4[2];
        if (v15 >= v14)
        {
          v17 = *a4;
          v18 = v15 - *a4;
          v19 = v18 >> 2;
          v20 = (v18 >> 2) + 1;
          if (v20 >> 62)
          {
            std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
          }

          v21 = v14 - v17;
          if (v21 >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
          v23 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v23 = v20;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v23);
          }

          *(4 * v19) = v13;
          v16 = 4 * v19 + 4;
          memcpy(0, v17, v18);
          v24 = *a4;
          *a4 = 0;
          a4[1] = v16;
          a4[2] = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v15 = v13;
          v16 = (v15 + 4);
        }

        a4[1] = v16;
      }

      v11 += 4;
    }

    if (a3 && (*(*a1 + 184))(a1))
    {
      if (a3 < 3 || (*a2 == 38626 ? (v25 = a2[2] == 129) : (v25 = 0), !v25))
      {
        v43 = *a2;
        absl::StrFormat<unsigned char>("<0x%02X>", &v43, __p);
        if ((v40 & 0x80u) == 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = __p[0];
        }

        if ((v40 & 0x80u) == 0)
        {
          v27 = v40;
        }

        else
        {
          v27 = __p[1];
        }

        v28 = (*(*a1 + 112))(a1, v26, v27);
        v30 = a4[1];
        v29 = a4[2];
        if (v30 >= v29)
        {
          v32 = *a4;
          v33 = v30 - *a4;
          v34 = v33 >> 2;
          v35 = (v33 >> 2) + 1;
          if (v35 >> 62)
          {
            std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
          }

          v36 = v29 - v32;
          if (v36 >> 1 > v35)
          {
            v35 = v36 >> 1;
          }

          v22 = v36 >= 0x7FFFFFFFFFFFFFFCLL;
          v37 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v37 = v35;
          }

          if (v37)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v37);
          }

          *(4 * v34) = v28;
          v31 = 4 * v34 + 4;
          memcpy(0, v32, v33);
          v38 = *a4;
          *a4 = 0;
          a4[1] = v31;
          a4[2] = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v30 = v28;
          v31 = (v30 + 4);
        }

        a4[1] = v31;
        if (v40 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    sentencepiece::util::Status::Status(a5, (a1 + 96));
    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }
  }
}

void sub_267551A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::ModelInterface::InitializePieces(sentencepiece::ModelInterface *this)
{
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = &v52;
  v48 = &v49;
  v49 = 0;
  *(this + 22) = -1;
  v47[0] = 0;
  v47[1] = 0;
  v46 = v47;
  LOBYTE(v54) = 0;
  std::vector<BOOL>::vector(&__p, 256);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = v2 - 16;
  }

  else
  {
    v3 = 0;
  }

  if (*(v3 + 64) < 1)
  {
LABEL_35:
    if (*(this + 22) == -1)
    {
      sentencepiece::util::Status::Status(&v54, 13, "unk is not defined.", 19);
      sentencepiece::util::Status::operator=(this + 12, &v54);
    }

    else
    {
      v24 = *(v3 + 80);
      if (!v24)
      {
        v24 = &sentencepiece::_TrainerSpec_default_instance_;
      }

      if (v24[248] != 1 || (*&v54 = __p, DWORD2(v54) = 0, std::__find_BOOL[abi:ne200100]<false,std::vector<BOOL>,false>(&v54, v45, &v42), v42.__r_.__value_.__l.__data_ == __p + 8 * (v45 >> 6)) && LODWORD(v42.__r_.__value_.__r.__words[1]) == (v45 & 0x3F))
      {
        if (!v53 || (sentencepiece::BuildTrie(this + 24, &v51, &v54), sentencepiece::util::Status::operator=(this + 12, &v54), sentencepiece::util::Status::~Status(&v54), (*(*this + 16))(&v54, this), v25 = v54, sentencepiece::util::Status::~Status(&v54), !v25))
        {
          if (!v50 || (sentencepiece::BuildTrie(this + 56, &v48, &v54), sentencepiece::util::Status::operator=(this + 12, &v54), sentencepiece::util::Status::~Status(&v54), (*(*this + 16))(&v54, this), v26 = v54, sentencepiece::util::Status::~Status(&v54), !v26))
          {
            absl::make_unique<sentencepiece::normalizer::PrefixMatcher,std::set<std::string_view> &>();
          }
        }

        goto LABEL_69;
      }

      sentencepiece::util::Status::operator=(this + 12, &v54);
    }

LABEL_68:
    sentencepiece::util::Status::~Status(&v54);
    goto LABEL_69;
  }

  v4 = 0;
  while (1)
  {
    v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(v3 + 56, v4);
    v6 = v5;
    v7 = *(v5 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    if (v8 < 0)
    {
      if (!*(v7 + 8))
      {
LABEL_47:
        sentencepiece::util::Status::Status(&v54, 13, "piece must not be empty.", 24);
        sentencepiece::util::Status::operator=(this + 12, &v54);
        goto LABEL_68;
      }
    }

    else if (!*(v7 + 23))
    {
      goto LABEL_47;
    }

    v9 = *(v5 + 60);
    v10 = v9 > 5;
    v11 = (1 << v9) & 0x32;
    if (v10 || v11 == 0)
    {
      v13 = &v48;
    }

    else
    {
      v13 = &v51;
    }

    if ((v8 & 0x80000000) != 0)
    {
      v14 = v7;
      v7 = *v7;
      v8 = *(v14 + 8);
    }

    *&v54 = v7;
    *(&v54 + 1) = v8;
    LODWORD(v55) = v4;
    std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::__emplace_unique_key_args<std::string_view,std::pair<std::string_view const,int> const&>(v13, &v54);
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = *(v6 + 60);
    if (v16 == 4)
    {
      v17 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v17 + 23);
      if (v18 < 0)
      {
        v17 = *v17;
        v18 = *((*(v6 + 48) & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      *&v54 = v17;
      *(&v54 + 1) = v18;
      std::__tree<std::string_view>::__emplace_unique_key_args<std::string_view,std::string_view>(&v46, &v54);
      v16 = *(v6 + 60);
    }

    if (v16 == 6)
    {
      v19 = *(v3 + 80);
      if (!v19)
      {
        v19 = &sentencepiece::_TrainerSpec_default_instance_;
      }

      if ((v19[248] & 1) == 0)
      {
        v34 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
        std::operator+<char>();
        v36 = *&v35->__r_.__value_.__l.__data_;
        v55 = v35->__r_.__value_.__r.__words[2];
        v54 = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        if (v55 >= 0)
        {
          v37 = &v54;
        }

        else
        {
          v37 = v54;
        }

LABEL_75:
        v41 = strlen(v37);
        sentencepiece::util::Status::Status(&v43, 13, v37, v41);
        sentencepiece::util::Status::operator=(this + 12, &v43);
        sentencepiece::util::Status::~Status(&v43);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(v54);
        }

        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          v33 = v42.__r_.__value_.__r.__words[0];
          goto LABEL_79;
        }

        goto LABEL_69;
      }

      v20 = *(v6 + 48);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFELL);
      v22 = *((v20 & 0xFFFFFFFFFFFFFFFELL) + 23);
      if ((v22 & 0x8000000000000000) != 0)
      {
        v21 = *v21;
        v22 = *((v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      v23 = sentencepiece::PieceToByte(v21, v22);
      if ((v23 & 0x80000000) != 0)
      {
        v38 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
        std::operator+<char>();
        v39 = std::string::append(&v42, " is invalid.");
        v40 = *&v39->__r_.__value_.__l.__data_;
        v55 = v39->__r_.__value_.__r.__words[2];
        v54 = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        if (v55 >= 0)
        {
          v37 = &v54;
        }

        else
        {
          v37 = v54;
        }

        goto LABEL_75;
      }

      *(__p + ((v23 >> 3) & 0x1FFFFFF8)) |= 1 << v23;
    }

    else if (v16 == 2)
    {
      if ((*(this + 22) & 0x80000000) == 0)
      {
        sentencepiece::util::Status::Status(&v54, 13, "unk is already defined.", 23);
        sentencepiece::util::Status::operator=(this + 12, &v54);
        goto LABEL_68;
      }

      *(this + 22) = v4;
    }

    if (++v4 >= *(v3 + 64))
    {
      goto LABEL_35;
    }
  }

  v27 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v27 + 23) >= 0)
  {
    v28 = *(v27 + 23);
  }

  else
  {
    v28 = *(v27 + 8);
  }

  v29 = &v54;
  std::string::basic_string[abi:ne200100](&v54, v28 + 20);
  if (v55 < 0)
  {
    v29 = v54;
  }

  if (v28)
  {
    if (*(v27 + 23) >= 0)
    {
      v30 = v27;
    }

    else
    {
      v30 = *v27;
    }

    memmove(v29, v30, v28);
  }

  strcpy(v29 + v28, " is already defined.");
  if (v55 >= 0)
  {
    v31 = &v54;
  }

  else
  {
    v31 = v54;
  }

  v32 = strlen(v31);
  sentencepiece::util::Status::Status(&v42, 13, v31, v32);
  sentencepiece::util::Status::operator=(this + 12, &v42);
  sentencepiece::util::Status::~Status(&v42);
  if (SHIBYTE(v55) < 0)
  {
    v33 = v54;
LABEL_79:
    operator delete(v33);
  }

LABEL_69:
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&v46, v47[0]);
  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&v48, v49);
  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&v51, v52);
}

void sub_2675520E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *a23, uint64_t a24, char a25, void *a26)
{
  sentencepiece::util::Status::~Status(&a15);
  if (*(v26 - 89) < 0)
  {
    operator delete(*(v26 - 112));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&a19, a20);
  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&a22, a23);
  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&a25, a26);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::PieceToByte(void *__src, size_t __len)
{
  {
    sentencepiece::PieceToByte(std::string_view)::$_0::operator()();
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = sentencepiece::PieceToByte(std::string_view)::kMap;
  if (__len >= 0x17)
  {
    operator new();
  }

  v9 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  v5 = std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::find<std::string>(v4, &__dst);
  v6 = v5;
  if (v9 < 0)
  {
    operator delete(__dst);
    if (v6)
    {
      return *(v6 + 40);
    }
  }

  else if (v5)
  {
    return *(v6 + 40);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sentencepiece::BuildTrie@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[2])
  {
    __p = 0;
    v32 = 0;
    v33 = 0;
    __src = 0;
    v29 = 0;
    v30 = 0;
    v4 = a2 + 1;
    v3 = *a2;
    while (1)
    {
      v5 = v3[4];
      v6 = v32;
      if (v32 >= v33)
      {
        v8 = (v32 - __p) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
        }

        v9 = (v33 - __p) >> 2;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v33 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(&__p, v10);
        }

        v11 = (8 * v8);
        *v11 = v5;
        v7 = 8 * v8 + 8;
        v12 = v11 - (v32 - __p);
        memcpy(v12, __p, v32 - __p);
        v13 = __p;
        __p = v12;
        v32 = v7;
        v33 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v32 = v5;
        v7 = (v6 + 8);
      }

      v32 = v7;
      v14 = v29;
      if (v29 >= v30)
      {
        v16 = __src;
        v17 = v29 - __src;
        v18 = (v29 - __src) >> 2;
        v19 = v18 + 1;
        if ((v18 + 1) >> 62)
        {
          std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
        }

        v20 = v30 - __src;
        if ((v30 - __src) >> 1 > v19)
        {
          v19 = v20 >> 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v21 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v21);
        }

        *(4 * v18) = *(v3 + 12);
        v15 = 4 * v18 + 4;
        memcpy(0, v16, v17);
        v22 = __src;
        __src = 0;
        v29 = v15;
        v30 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v29 = *(v3 + 12);
        v15 = (v14 + 4);
      }

      v29 = v15;
      v23 = v3[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v3[2];
          v25 = *v24 == v3;
          v3 = v24;
        }

        while (!v25);
      }

      v3 = v24;
      if (v24 == v4)
      {
        Darts::DoubleArrayImpl<void,void,int,void>::build(a1, (v32 - __p) >> 3, __p, 0, __src, 0);
      }
    }
  }

  return sentencepiece::util::Status::Status(a3, 13, "no pieces are loaded.", 21);
}

void sub_2675527C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::ModelInterface::MemoryMappableString(sentencepiece::ModelInterface *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  memset(&v32, 0, sizeof(v32));
  std::string::resize(&v32, 4uLL, 0);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v32;
  }

  else
  {
    v4 = v32.__r_.__value_.__r.__words[0];
  }

  LODWORD(v4->__r_.__value_.__l.__data_) = *(this + 22);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v32;
  }

  else
  {
    v5 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v5, size);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  memset(&v32, 0, sizeof(v32));
  std::string::resize(&v32, 4uLL, 0);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v32;
  }

  else
  {
    v7 = v32.__r_.__value_.__r.__words[0];
  }

  LODWORD(v7->__r_.__value_.__l.__data_) = *(this + 23);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v32;
  }

  else
  {
    v8 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v8, v9);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  sentencepiece::normalizer::PrefixMatcher::MemoryMappableString(*(this + 2), &v32);
  v10 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  v11 = v32.__r_.__value_.__r.__words[1];
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  if ((v10 & 0x80u) == 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(p_p->__r_.__value_.__l.__data_) = v12;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v32;
  }

  else
  {
    v16 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v16, v17);
  sentencepiece::mmap_util::Padding(a2);
  v19 = *(this + 4);
  v18 = *(this + 5);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  v20 = 4 * v19;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v21->__r_.__value_.__l.__data_) = v20;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v22, v23);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v18, v20);
  sentencepiece::mmap_util::Padding(a2);
  v26 = this + 64;
  v24 = *(this + 8);
  v25 = *(v26 + 1);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  v27 = 4 * v24;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &__p;
  }

  else
  {
    v28 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v28->__r_.__value_.__l.__data_) = v27;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v29, v30);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v25, v27);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_267552B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SplitIntoWords(unsigned __int8 *__s1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, const void **a5@<X8>)
{
  v8 = &__s1[a2];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if ((a3 & 1) == 0)
  {
    if (a2 < 1)
    {
      return;
    }

    v9 = 0;
    v10 = 0;
    v11 = __s1;
    while (1)
    {
      v12 = asc_2675AD4FB[*v11 >> 4];
      if (v8 - v11 < v12)
      {
        v12 = v8 - v11;
      }

      v13 = v12;
      if (v12 == 3)
      {
        v14 = memcmp(v11, "▁", 3uLL);
        v15 = v14 == 0;
        if (v11 == __s1)
        {
          goto LABEL_16;
        }

        if ((v10 & a4 & 1) == 0 && !v14)
        {
          v15 = 1;
LABEL_16:
          v16 = a5[2];
          if (v9 >= v16)
          {
            v17 = *a5;
            v18 = v9 - *a5;
            v19 = v18 >> 4;
            v20 = (v18 >> 4) + 1;
            if (v20 >> 60)
            {
              std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
            }

            v21 = v16 - v17;
            if (v21 >> 3 > v20)
            {
              v20 = v21 >> 3;
            }

            v22 = v21 >= 0x7FFFFFFFFFFFFFF0;
            v23 = 0xFFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v23 = v20;
            }

            if (v23)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string_view>>(a5, v23);
            }

            v24 = (16 * v19);
            *v24 = v11;
            v24[1] = 0;
            v9 = (16 * v19 + 16);
            memcpy(0, v17, v18);
            v25 = *a5;
            *a5 = 0;
            a5[1] = v9;
            a5[2] = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v9 = v11;
            *(v9 + 1) = 0;
            v9 += 16;
          }

          a5[1] = v9;
          goto LABEL_30;
        }

        if (v10)
        {
          v15 = v10 & (v14 == 0);
          goto LABEL_30;
        }
      }

      else if (v11 == __s1)
      {
        v15 = 0;
        goto LABEL_16;
      }

      v15 = 0;
LABEL_30:
      *(v9 - 1) += v13;
      v11 += v13;
      v10 = v15;
      if (v11 >= v8)
      {
        return;
      }
    }
  }

  if (a2 >= 1)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string_view>>(a5, 1uLL);
  }
}

void sub_267552FF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::StrFormat<unsigned char>@<X0>(char *__format@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = snprintf(0, 0, __format, *a2);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  std::string::resize(a3, v6, 0);
  v7 = *(a3 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  return snprintf(v8, v7 + 1, __format, *a2);
}

void sub_2675530B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2675531A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Darts::DoubleArrayImpl<void,void,int,void>::build(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(unint64_t, uint64_t))
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v6 = a6;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  Darts::Details::DoubleArrayBuilder::build<int>(&v6, v12);
}

void sentencepiece::ModelInterface::NBestEncode(sentencepiece::logging *a1@<X0>, void *a2@<X8>)
{
  if (sentencepiece::logging::GetMinLogLevel(a1) <= 2)
  {
    v10 = 0;
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "model_interface.h", 17);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "(", 1);
    v5 = MEMORY[0x26D5F9210](v4, 96);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") ", 2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "LOG(", 4);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ERROR", 5);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Not implemented.", 16);
    sentencepiece::error::Die::~Die(&v10);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sentencepiece::ModelInterface::SampleEncode(sentencepiece::logging *a1@<X0>, void *a2@<X8>)
{
  if (sentencepiece::logging::GetMinLogLevel(a1) <= 2)
  {
    v10 = 0;
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "model_interface.h", 17);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "(", 1);
    v5 = MEMORY[0x26D5F9210](v4, 102);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") ", 2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "LOG(", 4);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ERROR", 5);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Not implemented.", 16);
    sentencepiece::error::Die::~Die(&v10);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sentencepiece::ModelInterface::SampleEncodeAndScore(sentencepiece::logging *a1@<X0>, void *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  if (sentencepiece::logging::GetMinLogLevel(a1) <= 2)
  {
    LOBYTE(__p) = 0;
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "model_interface.h", 17);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "(", 1);
    v5 = MEMORY[0x26D5F9210](v4, 117);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") ", 2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "LOG(", 4);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ERROR", 5);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Not implemented.", 16);
    sentencepiece::error::Die::~Die(&__p);
  }

  __p = 0;
  v12 = 0;
  v14 = 0;
  v13 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__init_with_size[abi:ne200100]<std::pair<std::vector<std::pair<std::string_view,int>>,float> const*,std::pair<std::vector<std::pair<std::string_view,int>>,float> const*>(a2, &__p, &v15, 1uLL);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2675535DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sentencepiece::ModelInterface::CalculateEntropy(sentencepiece::logging *a1)
{
  if (sentencepiece::logging::GetMinLogLevel(a1) <= 2)
  {
    v9 = 0;
    v1 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "model_interface.h", 17);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "(", 1);
    v3 = MEMORY[0x26D5F9210](v2, 125);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ") ", 2);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "LOG(", 4);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "ERROR", 5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Not implemented.", 16);
    sentencepiece::error::Die::~Die(&v9);
  }

  return 0.0;
}

uint64_t sentencepiece::ModelInterface::GetPieceSize(sentencepiece::ModelInterface *this)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sentencepiece::ModelInterface::ByteFallbackEnabled(sentencepiece::ModelInterface *this)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
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

void sub_2675539F4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x26D5F9330](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x26D5F92E0](a1 + 8);
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

void sub_267553AB0(_Unwind_Exception *a1)
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

void sentencepiece::error::Die::~Die(sentencepiece::error::Die *this)
{
  std::ios_base::getloc((MEMORY[0x277D82670] + *(*MEMORY[0x277D82670] - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  v3 = std::ostream::flush();
  if (*this == 1)
  {
    sentencepiece::error::Abort(v3);
  }
}

unint64_t Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v9 = *(a1 + 16);
  v10 = *v9;
  if (a5)
  {
    v11 = *a2;
    v12 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v11;
    v10 = v9[v12];
    if ((v10 & 0x800000FF) == v11)
    {
      v13 = a5 - 1;
      v14 = a2 + 1;
      while (1)
      {
        v15 = v12;
        if (!v13)
        {
          goto LABEL_16;
        }

        v16 = *v14++;
        v12 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v12 ^ v16;
        v10 = v9[v12];
        --v13;
        if ((v10 & 0x800000FF) != v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    v17 = *a2;
    if (!*a2)
    {
      v15 = 0;
      LODWORD(v12) = 0;
LABEL_16:
      if ((v10 & 0x100) != 0)
      {
        v22 = v9[(v10 >> 10 << ((v10 >> 6) & 8)) ^ v12] & 0x7FFFFFFF;
      }

      else
      {
        v22 = -1;
      }

      goto LABEL_19;
    }

    v18 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v17;
    v10 = v9[v18];
    if ((v10 & 0x800000FF) == v17)
    {
      v19 = a2 + 1;
      LODWORD(v12) = v18;
      while (1)
      {
        v15 = v18;
        v21 = *v19++;
        v20 = v21;
        if (!v21)
        {
          goto LABEL_16;
        }

        v18 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v12 ^ v20;
        v10 = v9[v18];
        LODWORD(v12) = v18;
        if ((v10 & 0x800000FF) != v20)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v15 = 0;
LABEL_14:
  v22 = -2;
LABEL_19:
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v41.n128_u32[0] = 0;
  v41.n128_u64[1] = v15;
  v42 = v22;
  std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::push_back(v43, &v41);
  v23 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v24 = 0;
    do
    {
      v25 = (*(*(&v43[0] + 1) + 8 * (v44 / 0xAA)) + 24 * (v44 % 0xAA));
      v26 = *v25;
      v27 = v25[2];
      v28 = v25[4];
      *&v44 = v44 + 1;
      *(&v44 + 1) = v23 - 1;
      if (v44 >= 0x154)
      {
        operator delete(**(&v43[0] + 1));
        *(&v43[0] + 1) += 8;
        *&v44 = v44 - 170;
      }

      if ((v28 & 0x80000000) == 0)
      {
        v29 = a3 + 16 * v24;
        *v29 = v28;
        *(v29 + 8) = a5;
        ++v24;
      }

      v31 = a6 >= 0 && v26 > a6;
      if (v24 >= a4 || v31)
      {
        break;
      }

      if (v28 != -2)
      {
        v32 = v26 + 1;
        for (i = 1; i != 256; ++i)
        {
          v34 = *(a1 + 16);
          v35 = (*(v34 + 4 * v27) >> 10 << ((*(v34 + 4 * v27) >> 6) & 8)) ^ v27 ^ i;
          v36 = *(v34 + 4 * v35);
          if (i == (v36 & 0x800000FF))
          {
            if ((v36 & 0x100) != 0)
            {
              v37 = *(v34 + 4 * ((v36 >> 10 << ((v36 >> 6) & 8)) ^ v35)) & 0x7FFFFFFF;
            }

            else
            {
              v37 = -1;
            }

            v41.n128_u32[0] = v32;
            v41.n128_u64[1] = v35;
            v42 = v37;
            std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::push_back(v43, &v41);
          }
        }
      }

      v23 = *(&v44 + 1);
    }

    while (*(&v44 + 1));
  }

  else
  {
    v24 = 0;
  }

  std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::~deque[abi:ne200100](v43);
  return v24;
}

void sub_267553FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__append(a1, a2 - v2);
  }
}

__n128 std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::push_back(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 170 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = (*(v6 + 8 * (v8 / 0xAA)) + 24 * (v8 % 0xAA));
  result = *a2;
  v9[1].n128_u64[0] = a2[1].n128_u64[0];
  *v9 = result;
  ++*(a1 + 40);
  return result;
}

void *std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>::emplace_back<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *&>(a1, &v10);
}

void sub_267554230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>::emplace_back<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>::emplace_front<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *> &>::emplace_back<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *> &>::emplace_front<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::~deque[abi:ne200100](void *a1)
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
    v5 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 170;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279C0E730, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_267554AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
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

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__rehash<true>(uint64_t a1, size_t __n)
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
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
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

      std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned char>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__init_with_size[abi:ne200100]<std::pair<std::vector<std::pair<std::string_view,int>>,float> const*,std::pair<std::vector<std::pair<std::string_view,int>>,float> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2675555C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>>(a1, a2);
  }

  std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>,std::pair<std::vector<std::pair<std::string_view,int>>,float> const*,std::pair<std::vector<std::pair<std::string_view,int>>,float> const*,std::pair<std::vector<std::pair<std::string_view,int>>,float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(v4, *v6, *(v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - *v6) >> 3));
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>,std::pair<std::vector<std::pair<std::string_view,int>>,float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string_view,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_267555794(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string_view,int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(a1, a2);
  }

  std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>,std::pair<std::vector<std::pair<std::string_view,int>>,float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>,std::pair<std::vector<std::pair<std::string_view,int>>,float>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>,std::pair<std::vector<std::pair<std::string_view,int>>,float>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 32);
      v3 -= 32;
      v4 = v5;
      if (v5)
      {
        *(v1 - 24) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 32);
      v4 -= 32;
      v5 = v6;
      if (v6)
      {
        *(v2 - 24) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2878A2398;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x26D5F9370](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  JUMPOUT(0x26D5F93A0);
}

void std::default_delete<sentencepiece::normalizer::PrefixMatcher>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    JUMPOUT(0x26D5F93A0);
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x26D5F91B0](v13, a1);
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

  MEMORY[0x26D5F91C0](v13);
  return a1;
}

void sub_267555BE0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x26D5F91C0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x267555BC0);
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

void sub_267555E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_267555E8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>(a1, a2);
  }

  std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
}

void *std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string_view>(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *(a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = *a2;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v3[23] = v4;
  if (v4)
  {
    result = memmove(v3, v5, v4);
  }

  v3[v4] = 0;
  v2[1] = v3 + 24;
  return result;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string_view>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
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

  v16.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  v7 = 24 * v2;
  v16.__first_ = 0;
  v16.__begin_ = v7;
  v16.__end_ = v7;
  v16.__end_cap_.__value_ = 0;
  v8 = *(a2 + 8);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = *a2;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(v7 + 23) = v8;
  if (v8)
  {
    memmove(v7, v9, v8);
  }

  *(v7 + v8) = 0;
  v10 = v16.__end_ + 1;
  v11 = *(a1 + 8) - *a1;
  v12 = v16.__begin_ - v11;
  memcpy(v16.__begin_ - v11, *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = v16.__end_cap_.__value_;
  v16.__end_ = v13;
  v16.__end_cap_.__value_ = v14;
  v16.__first_ = v13;
  v16.__begin_ = v13;
  std::__split_buffer<std::string>::~__split_buffer(&v16);
  return v10;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
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

void std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
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

uint64_t std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::__emplace_unique_key_args<std::string_view,std::pair<std::string_view const,int> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::__find_equal<std::string_view>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::__find_equal<std::string_view>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string_view>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string_view>::operator()[abi:ne200100](a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t std::less<std::string_view>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = memcmp(v3, v5, v7);
  if (v4 < v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (v4 == v6)
  {
    v9 = 0;
  }

  if (v8)
  {
    v9 = v8;
  }

  return v9 >> 31;
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

uint64_t std::__tree<std::string_view>::__emplace_unique_key_args<std::string_view,std::string_view>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::__find_equal<std::string_view>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__find_BOOL[abi:ne200100]<false,std::vector<BOOL>,false>@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *result;
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = (64 - v3);
  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = (64 - v3);
  }

  if (((0xFFFFFFFFFFFFFFFFLL >> (64 - v3 - v6)) & (-1 << v3) & ~*v4) != 0)
  {
    v7 = __rbit64((0xFFFFFFFFFFFFFFFFLL >> (64 - v3 - v6)) & (-1 << v3) & ~*v4);
LABEL_17:
    *a3 = v4;
    *(a3 + 8) = __clz(v7);
    return result;
  }

  if (v5 < a2)
  {
    a2 -= v6;
    *result = ++v4;
LABEL_9:
    if (a2 < 0x40)
    {
LABEL_12:
      if (!a2 || (v8 = (0xFFFFFFFFFFFFFFFFLL >> -a2) & ~*v4) == 0)
      {
        *a3 = v4;
        *(a3 + 8) = a2;
        return result;
      }
    }

    else
    {
      while (*v4 == -1)
      {
        *result = ++v4;
        a2 -= 64;
        if (a2 <= 0x3F)
        {
          goto LABEL_12;
        }
      }

      v8 = ~*v4;
    }

    v7 = __rbit64(v8);
    goto LABEL_17;
  }

  *a3 = &v4[(v3 + a2) >> 6];
  *(a3 + 8) = (v3 + a2) & 0x3F;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string_view>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void Darts::Details::DoubleArrayBuilder::build<int>(void (**a1)(unint64_t, uint64_t), unint64_t *a2)
{
  if (a2[3])
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    Darts::Details::DoubleArrayBuilder::build_dawg<int>(a1, a2, v2);
  }

  Darts::Details::DoubleArrayBuilder::build_from_keyset<int>(a1, a2);
}

uint64_t *Darts::Details::AutoPool<unsigned char>::~AutoPool(uint64_t *a1)
{
  Darts::Details::AutoPool<unsigned char>::clear(a1);
  if (*a1)
  {
    MEMORY[0x26D5F9370](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t Darts::Details::AutoPool<unsigned char>::clear(uint64_t *a1)
{
  Darts::Details::AutoPool<unsigned char>::resize(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x26D5F9370](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t Darts::Details::AutoPool<unsigned char>::resize(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 > a2)
  {
    *(result + 8) = a2;
    v2 = a2;
  }

  if (*(result + 16) < a2)
  {
    Darts::Details::AutoPool<unsigned char>::resize_buf(result, a2);
  }

  if (v2 < a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

void Darts::Details::AutoPool<unsigned char>::resize_buf(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

void Darts::Details::Exception::~Exception(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x26D5F93A0);
}

const char *Darts::Details::Exception::what(Darts::Details::Exception *this)
{
  if (*(this + 1))
  {
    return *(this + 1);
  }

  else
  {
    return "";
  }
}

uint64_t *Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::~AutoPool(uint64_t *a1)
{
  Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::clear(a1);
  if (*a1)
  {
    MEMORY[0x26D5F9370](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::clear(uint64_t *a1)
{
  Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::resize(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x26D5F9370](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::resize(void *a1, unint64_t a2)
{
  v4 = a1[1];
  if (v4 > a2)
  {
    a1[1] = a2;
    v4 = a2;
  }

  if (a1[2] < a2)
  {
    Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::resize_buf(a1, a2);
  }

  if (a2 > v4)
  {
    bzero((*a1 + 4 * v4), 4 * (a2 - v4));
    a1[1] = a2;
  }
}

void Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::resize_buf(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

void Darts::Details::DoubleArrayBuilder::build_dawg<int>(void (**a1)(unint64_t, uint64_t), unint64_t *a2, Darts::Details::DawgBuilder *this)
{
  Darts::Details::DawgBuilder::init(this);
  if (*a2)
  {
    v6 = 0;
    do
    {
      v7 = a2[2];
      v8 = *(a2[1] + 8 * v6);
      if (v7)
      {
        v9 = *(v7 + 8 * v6);
      }

      else
      {
          ;
        }

        v9 = v7 - 1;
      }

      v11 = a2[3];
      if (v11)
      {
        v12 = *(v11 + 4 * v6);
      }

      else
      {
        v12 = v6;
      }

      Darts::Details::DawgBuilder::insert(this, v8, v9, v12);
      ++v6;
      if (*a1)
      {
        (*a1)(v6, *a2 + 1);
      }
    }

    while (v6 < *a2);
  }

  Darts::Details::DawgBuilder::flush(this, 0);
  v13 = *this;
  v14 = *(*this + 8);
  v15 = **this;
  if (v14)
  {
    if (*(v13 + 9))
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16 | (4 * v15);
  }

  else
  {
    v17 = 2 * v15;
  }

  **(this + 3) = v17 | *(v13 + 10);
  **(this + 6) = v14;
  Darts::Details::AutoPool<Darts::Details::DawgNode>::clear(this);
  Darts::Details::AutoPool<unsigned int>::clear(this + 15);
  Darts::Details::AutoPool<unsigned int>::clear(this + 18);
  Darts::Details::AutoPool<unsigned int>::clear(this + 21);

  Darts::Details::BitVector::build((this + 72));
}

void Darts::Details::DoubleArrayBuilder::build_from_dawg(Darts::Details::DoubleArrayBuilder *this, const Darts::Details::DawgBuilder *a2)
{
  v3 = *(a2 + 4);
  v4 = 1;
  do
  {
    v5 = v4;
    v4 *= 2;
  }

  while (v5 < v3);
  if (*(this + 3) < v5)
  {
    Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::resize_buf(this + 8, v5);
  }

  v6 = 4 * *(a2 + 13);
  operator new[]();
}

void Darts::Details::DoubleArrayBuilder::build_from_keyset<int>(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = 1;
  do
  {
    v4 = v3;
    v3 *= 2;
  }

  while (v4 < v2);
  if (*(a1 + 24) < v4)
  {
    Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::resize_buf(a1 + 8, v4);
  }

  operator new[]();
}

uint64_t *Darts::Details::AutoStack<unsigned int>::~AutoStack(uint64_t *a1)
{
  Darts::Details::AutoPool<unsigned int>::clear(a1);

  return Darts::Details::AutoPool<unsigned int>::~AutoPool(a1);
}

uint64_t Darts::Details::AutoPool<unsigned int>::clear(uint64_t *a1)
{
  Darts::Details::AutoPool<unsigned int>::resize(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x26D5F9370](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t Darts::Details::AutoPool<unsigned int>::resize(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 > a2)
  {
    *(result + 8) = a2;
    v2 = a2;
  }

  if (*(result + 16) < a2)
  {
    Darts::Details::AutoPool<unsigned int>::resize_buf(result, a2);
  }

  if (v2 < a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

void Darts::Details::AutoPool<unsigned int>::resize_buf(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

uint64_t *Darts::Details::AutoPool<unsigned int>::~AutoPool(uint64_t *a1)
{
  Darts::Details::AutoPool<unsigned int>::clear(a1);
  if (*a1)
  {
    MEMORY[0x26D5F9370](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

void Darts::Details::BitVector::~BitVector(Darts::Details::BitVector *this)
{
  Darts::Details::BitVector::clear(this);
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x26D5F9370](v2, 0x1000C8052888210);
    *(this + 3) = 0;
  }

  Darts::Details::AutoPool<unsigned int>::~AutoPool(this);
}

uint64_t Darts::Details::BitVector::clear(Darts::Details::BitVector *this)
{
  Darts::Details::AutoPool<unsigned int>::clear(this);
  result = *(this + 3);
  if (result)
  {
    result = MEMORY[0x26D5F9370](result, 0x1000C8052888210);
    *(this + 3) = 0;
  }

  return result;
}

uint64_t *Darts::Details::AutoPool<Darts::Details::DawgUnit>::~AutoPool(uint64_t *a1)
{
  Darts::Details::AutoPool<Darts::Details::DawgUnit>::clear(a1);
  if (*a1)
  {
    MEMORY[0x26D5F9370](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t Darts::Details::AutoPool<Darts::Details::DawgUnit>::clear(uint64_t *a1)
{
  Darts::Details::AutoPool<Darts::Details::DawgUnit>::resize(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x26D5F9370](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void Darts::Details::AutoPool<Darts::Details::DawgUnit>::resize(void *a1, unint64_t a2)
{
  v4 = a1[1];
  if (v4 > a2)
  {
    a1[1] = a2;
    v4 = a2;
  }

  if (a1[2] < a2)
  {
    Darts::Details::AutoPool<Darts::Details::DawgUnit>::resize_buf(a1, a2);
  }

  if (a2 > v4)
  {
    bzero((*a1 + 4 * v4), 4 * (a2 - v4));
    a1[1] = a2;
  }
}

void Darts::Details::AutoPool<Darts::Details::DawgUnit>::resize_buf(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

uint64_t *Darts::Details::AutoPool<Darts::Details::DawgNode>::~AutoPool(uint64_t *a1)
{
  Darts::Details::AutoPool<Darts::Details::DawgNode>::clear(a1);
  if (*a1)
  {
    MEMORY[0x26D5F9370](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t Darts::Details::AutoPool<Darts::Details::DawgNode>::clear(uint64_t *a1)
{
  Darts::Details::AutoPool<Darts::Details::DawgNode>::resize(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x26D5F9370](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void *Darts::Details::AutoPool<Darts::Details::DawgNode>::resize(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 > a2)
  {
    result[1] = a2;
    v2 = a2;
  }

  if (result[2] < a2)
  {
    Darts::Details::AutoPool<Darts::Details::DawgNode>::resize_buf(result, a2);
  }

  for (; v2 < a2; v2 = result[1])
  {
    result[1] = v2 + 1;
    v3 = *result + 12 * v2;
    *(v3 + 7) = 0;
    *v3 = 0;
  }

  return result;
}

void Darts::Details::AutoPool<Darts::Details::DawgNode>::resize_buf(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

void *Darts::Details::DawgBuilder::init(Darts::Details::DawgBuilder *this)
{
  v7 = 0;
  Darts::Details::AutoPool<unsigned int>::resize(this + 15, 0x400uLL, &v7);
  v2 = *(this + 22);
  if (v2)
  {
    v3 = *this + 12 * *(*(this + 21) + 4 * v2 - 4);
    *(v3 + 7) = 0;
    *v3 = 0;
    --*(this + 22);
  }

  else
  {
    Darts::Details::AutoPool<Darts::Details::DawgNode>::append(this);
  }

  Darts::Details::BitVector::append(this + 9);
  Darts::Details::AutoPool<Darts::Details::DawgUnit>::append(this + 3);
  v4 = *(this + 7);
  if (v4 == *(this + 8))
  {
    Darts::Details::AutoPool<unsigned char>::resize_buf(this + 48, v4 + 1);
  }

  *(this + 7) = v4 + 1;
  *(this + 24) = 1;
  *(*this + 8) = -1;
  v6 = 0;
  return Darts::Details::AutoPool<unsigned int>::append(this + 18, &v6);
}

void *Darts::Details::DawgBuilder::insert(void *this, const char *a2, unint64_t a3, int a4)
{
  if (a4 < 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1106: exception: failed to insert key: negative value";
    goto LABEL_25;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1108: exception: failed to insert key: zero-length key";
LABEL_25:
    *exception = &unk_2878A23E0;
    exception[1] = v24;
  }

  v7 = this;
  v8 = 0;
  v9 = 0;
  v10 = *this;
  while (1)
  {
    v11 = *(v10 + 12 * v8);
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = a2[v9];
    if (v9 < a3 && !a2[v9])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1122: exception: failed to insert key: invalid null character";
      goto LABEL_25;
    }

    v13 = v10 + 12 * v11;
    v14 = *(v13 + 8);
    if (v12 < v14)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1127: exception: failed to insert key: wrong key order";
      goto LABEL_25;
    }

    if (v12 > v14)
    {
      break;
    }

    ++v9;
    v8 = *(v10 + 12 * v8);
    if (v9 > a3)
    {
      return this;
    }
  }

  *(v13 + 10) = 1;
  this = Darts::Details::DawgBuilder::flush(this, v11);
LABEL_12:
  while (v9 <= a3)
  {
    if (v9 >= a3)
    {
      v15 = 0;
    }

    else
    {
      v15 = a2[v9];
    }

    v16 = v7[22];
    if (v16)
    {
      v17 = *(v7[21] + 4 * v16 - 4);
      v18 = *v7 + 12 * v17;
      *(v18 + 7) = 0;
      *v18 = 0;
      --v7[22];
    }

    else
    {
      v17 = *(v7 + 2);
      Darts::Details::AutoPool<Darts::Details::DawgNode>::append(v7);
    }

    v25 = v17;
    v19 = *v7;
    v20 = (*v7 + 12 * v8);
    v21 = *v20;
    if (!*v20)
    {
      *(v19 + 12 * v17 + 9) = 1;
    }

    *(v19 + 12 * v17 + 4) = v21;
    v22 = v25;
    *(v19 + 12 * v25 + 8) = v15;
    *v20 = v22;
    this = Darts::Details::AutoPool<unsigned int>::append(v7 + 18, &v25);
    v8 = v25;
    ++v9;
  }

  *(*v7 + 12 * v8) = a4;
  return this;
}

void *Darts::Details::AutoPool<unsigned int>::resize(void *result, unint64_t a2, int *a3)
{
  v3 = result[1];
  if (v3 > a2)
  {
    result[1] = a2;
    v3 = a2;
  }

  if (result[2] < a2)
  {
    Darts::Details::AutoPool<unsigned int>::resize_buf(result, a2);
  }

  v4 = a2 - v3;
  if (a2 > v3)
  {
    v5 = 0;
    v6 = *a3;
    v7 = vdupq_n_s64(v4 - 1);
    v8 = (*result + 4 * v3 + 8);
    do
    {
      v9 = vdupq_n_s64(v5);
      v10 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_2675A7F60)));
      if (vuzp1_s16(v10, *v7.i8).u8[0])
      {
        *(v8 - 2) = v6;
      }

      if (vuzp1_s16(v10, *&v7).i8[2])
      {
        *(v8 - 1) = v6;
      }

      if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_2675A7F50)))).i32[1])
      {
        *v8 = v6;
        v8[1] = v6;
      }

      v5 += 4;
      v8 += 4;
    }

    while (((v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v5);
    result[1] = a2;
  }

  return result;
}

void *Darts::Details::AutoPool<Darts::Details::DawgNode>::append(void *result)
{
  v1 = result[1];
  if (v1 == result[2])
  {
    Darts::Details::AutoPool<Darts::Details::DawgNode>::resize_buf(result, v1 + 1);
  }

  result[1] = v1 + 1;
  v2 = *result + 12 * v1;
  *(v2 + 7) = 0;
  *v2 = 0;
  return result;
}

void *Darts::Details::BitVector::append(void *this)
{
  v1 = this;
  v2 = this[5];
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    this = Darts::Details::AutoPool<unsigned int>::append(this, &v3);
    v2 = v1[5];
  }

  v1[5] = v2 + 1;
  return this;
}

void *Darts::Details::AutoPool<Darts::Details::DawgUnit>::append(void *result)
{
  v1 = result[1];
  if (v1 == result[2])
  {
    Darts::Details::AutoPool<Darts::Details::DawgUnit>::resize_buf(result, v1 + 1);
  }

  result[1] = v1 + 1;
  *(*result + 4 * v1) = 0;
  return result;
}

void *Darts::Details::AutoPool<unsigned int>::append(void *result, _DWORD *a2)
{
  v2 = result[1];
  if (v2 == result[2])
  {
    Darts::Details::AutoPool<unsigned int>::resize_buf(result, v2 + 1);
  }

  result[1] = v2 + 1;
  *(*result + 4 * v2) = *a2;
  return result;
}

uint64_t Darts::Details::DawgBuilder::flush(uint64_t this, int a2)
{
  v2 = this;
  v3 = *(this + 152);
  v4 = *(*(this + 144) + 4 * v3 - 4);
  if (v4 != a2)
  {
    while (1)
    {
      *(v2 + 152) = v3 - 1;
      v6 = *(v2 + 128);
      if (*(v2 + 192) >= v6 - (v6 >> 2))
      {
        v7 = 2 * v6;
        Darts::Details::AutoPool<unsigned int>::clear((v2 + 120));
        v34 = 0;
        Darts::Details::AutoPool<unsigned int>::resize((v2 + 120), v7, &v34);
        v8 = *(v2 + 32);
        if (v8 >= 2)
        {
          v9 = *(v2 + 48);
          for (i = 1; i != v8; ++i)
          {
            if (!*(v9 + i) || (*(*(v2 + 24) + 4 * i) & 2) != 0)
            {
              v11 = 0;
              if (i)
              {
                v12 = i;
                do
                {
                  v13 = *(*(v2 + 24) + 4 * v12);
                  v14 = (v13 ^ ~(*(v9 + v12) << 24)) + (v13 << 15);
                  v15 = 2057 * ((5 * (v14 ^ (v14 >> 12))) ^ ((5 * (v14 ^ (v14 >> 12))) >> 4));
                  v11 ^= HIWORD(v15) ^ v15;
                  v16 = __CFADD__(v12++, 1);
                }

                while (!v16 && (v13 & 1) != 0);
              }

              v17 = *(v2 + 120);
              do
              {
                v18 = v11 % *(v2 + 128);
                v11 = v18 + 1;
              }

              while (*(v17 + 4 * v18));
              *(v17 + 4 * v18) = i;
            }
          }
        }
      }

      v19 = 0;
      if (v4)
      {
        v20 = v4;
        do
        {
          ++v19;
          v20 = *(*v2 + 12 * v20 + 4);
        }

        while (v20);
      }

      v33 = 0;
      this = Darts::Details::DawgBuilder::find_node(v2, v4, &v33);
      if (this)
      {
        v21 = this;
        *(*(v2 + 72) + 4 * (this >> 5)) |= 1 << this;
        if (v4)
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      }

      if (!v19)
      {
        break;
      }

      do
      {
        Darts::Details::BitVector::append((v2 + 72));
        this = Darts::Details::AutoPool<Darts::Details::DawgUnit>::append((v2 + 24));
        v24 = *(v2 + 56);
        if (v24 == *(v2 + 64))
        {
          Darts::Details::AutoPool<unsigned char>::resize_buf(v2 + 48, v24 + 1);
        }

        *(v2 + 56) = v24 + 1;
        --v19;
      }

      while (v19);
      v25 = *(v2 + 112) - 1;
      if (v4)
      {
        goto LABEL_31;
      }

LABEL_39:
      v21 = v25 + 1;
      *(*(v2 + 120) + 4 * v33) = v25 + 1;
      ++*(v2 + 192);
      if (v4)
      {
        do
        {
LABEL_21:
          v22 = *(*v2 + 12 * v4 + 4);
          v35 = v4;
          this = Darts::Details::AutoPool<unsigned int>::append((v2 + 168), &v35);
          v4 = v22;
        }

        while (v22);
      }

LABEL_22:
      v3 = *(v2 + 152);
      v23 = *(v2 + 144) + 4 * v3;
      *(*v2 + 12 * *(v23 - 4)) = v21;
      v4 = *(v23 - 4);
      if (v4 == a2)
      {
        goto LABEL_2;
      }
    }

    v25 = 0;
    if (!v4)
    {
      goto LABEL_39;
    }

LABEL_31:
    v26 = *v2;
    v27 = v4;
    do
    {
      v28 = (v26 + 12 * v27);
      v29 = *(v28 + 8);
      v30 = *v28;
      if (v29)
      {
        if (*(v28 + 9))
        {
          v31 = 2;
        }

        else
        {
          v31 = 0;
        }

        v32 = v31 | (4 * v30);
      }

      else
      {
        v32 = 2 * v30;
      }

      *(*(v2 + 24) + 4 * v25) = v32 | *(v28 + 10);
      *(*(v2 + 48) + v25--) = v29;
      v26 = *v2;
      v27 = *(*v2 + 12 * v27 + 4);
    }

    while (v27);
    goto LABEL_39;
  }

LABEL_2:
  *(v2 + 152) = v3 - 1;
  return this;
}

uint64_t Darts::Details::DawgBuilder::find_node(Darts::Details::DawgBuilder *this, unsigned int a2, unsigned int *a3)
{
  v3 = a2;
  if (a2)
  {
    LODWORD(v4) = 0;
    v5 = a2;
    do
    {
      v6 = *this + 12 * v5;
      v7 = *v6;
      if (*(v6 + 8))
      {
        if (*(v6 + 9))
        {
          v8 = 2;
        }

        else
        {
          v8 = 0;
        }

        v9 = v8 | (4 * v7);
      }

      else
      {
        v9 = 2 * v7;
      }

      v10 = ((v9 | *(v6 + 10)) ^ ~(*(v6 + 8) << 24)) + ((v9 | *(v6 + 10)) << 15);
      v11 = 2057 * ((5 * (v10 ^ (v10 >> 12))) ^ ((5 * (v10 ^ (v10 >> 12))) >> 4));
      v4 = v4 ^ HIWORD(v11) ^ v11;
      v5 = *(v6 + 4);
    }

    while (v5);
  }

  else
  {
    v4 = 0;
  }

  v13 = *(this + 15);
  v12 = *(this + 16);
  v14 = v4 % v12;
  *a3 = v4 % v12;
  v15 = *(v13 + 4 * (v4 % v12));
  if (v15)
  {
    v16 = *this;
    v17 = *this + 12 * a2;
    v18 = *(this + 3);
    do
    {
      v19 = *(v17 + 4);
      v20 = v15;
      if (v19)
      {
        v20 = v15;
        while ((*(v18 + 4 * v20) & 1) != 0)
        {
          ++v20;
          LODWORD(v19) = *(v16 + 12 * v19 + 4);
          if (!v19)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        if ((*(v18 + 4 * v20) & 1) == 0)
        {
          if (!v3)
          {
            return v15;
          }

          v21 = v3;
          while (1)
          {
            v22 = (v16 + 12 * v21);
            v23 = *v22;
            if (*(v22 + 8))
            {
              v24 = *(v22 + 9) ? 2 : 0;
              v25 = v24 | (4 * v23);
            }

            else
            {
              v25 = 2 * v23;
            }

            if ((v25 | *(v22 + 10)) != *(v18 + 4 * v20) || *(v22 + 8) != *(*(this + 6) + v20))
            {
              break;
            }

            v21 = v22[1];
            --v20;
            if (!v21)
            {
              return v15;
            }
          }
        }
      }

      v14 = (v14 + 1) % v12;
      *a3 = v14;
      v15 = *(v13 + 4 * v14);
    }

    while (v15);
  }

  return v15;
}

unsigned int *Darts::Details::DoubleArrayBuilderUnit::set_offset(unsigned int *this, unsigned int a2)
{
  if (a2 >> 29)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_2878A23E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1339: exception: failed to modify unit: too large offset";
  }

  v2 = (4 * a2) | 0x200;
  if (a2 < 0x200000)
  {
    v2 = a2 << 10;
  }

  *this = *this & 0x800001FF | v2;
  return this;
}

unsigned int *Darts::Details::DoubleArrayBuilder::build_from_dawg(Darts::Details::DoubleArrayBuilder *this, const Darts::Details::DawgBuilder *a2, unsigned int a3, unsigned int a4)
{
  v8 = (a2 + 72);
  v9 = *(*(a2 + 3) + 4 * a3);
  v10 = v9 >> 2;
  v11 = v9 >> 7;
  v12 = 1 << (v9 >> 2);
  if ((v12 & *(*(a2 + 9) + 4 * (v9 >> 7))) != 0 && (v13 = *(*(this + 8) + 4 * (Darts::Details::BitVector::rank((a2 + 72), v10) - 1))) != 0 && ((v14 = v13 ^ a4, ((v13 ^ a4) & 0x1FE00000) != 0) ? (v15 = (v13 ^ a4) == 0) : (v15 = 1), v15))
  {
    if (*(*(a2 + 6) + v10))
    {
      v16 = *(this + 1);
      v17 = a4;
    }

    else
    {
      v17 = a4;
      v16 = *(this + 1);
      *(v16 + 4 * a4) |= 0x100u;
    }

    return Darts::Details::DoubleArrayBuilderUnit::set_offset((v16 + 4 * v17), v14);
  }

  else
  {
    result = Darts::Details::DoubleArrayBuilder::arrange_from_dawg(this, a2, a3, a4);
    v19 = result;
    if ((*(*(a2 + 9) + 4 * v11) & v12) != 0)
    {
      result = Darts::Details::BitVector::rank(v8, v10);
      *(*(this + 8) + 4 * (result - 1)) = v19;
    }

    do
    {
      if (*(*(a2 + 6) + v10))
      {
        result = Darts::Details::DoubleArrayBuilder::build_from_dawg(this, a2, v10, v19 ^ *(*(a2 + 6) + v10));
      }

      if (v10 == -1)
      {
        break;
      }

      v20 = *(*(a2 + 3) + 4 * v10);
      LODWORD(v10) = v10 + 1;
    }

    while ((v20 & 1) != 0);
  }

  return result;
}

void Darts::Details::DoubleArrayBuilder::expand_units(Darts::Details::DoubleArrayBuilder *this)
{
  v2 = *(this + 2);
  v3 = (v2 + 256);
  v4 = (v2 >> 8) - 16;
  if (v4 >= 0xFFFFFFEF)
  {
    Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::resize(this + 1, (v2 + 256));
  }

  else
  {
    v5 = 0;
    v6 = v4 << 8;
    v7 = *(this + 4);
    v8 = (3072 * ((v2 >> 8) & 0xF)) | 9;
    while (*(v7 + v8) == 1)
    {
      --v5;
      v8 += 12;
      if (v5 == -256)
      {
        v9 = 0;
        goto LABEL_8;
      }
    }

    v9 = v6 - v5;
LABEL_8:
    v10 = 3072 * ((v2 >> 8) & 0xF);
    v11 = 256;
    do
    {
      if ((*(v7 + v10 + 8) & 1) == 0)
      {
        if (*(this + 2) <= v6)
        {
          Darts::Details::DoubleArrayBuilder::expand_units(this);
          v7 = *(this + 4);
        }

        v12 = (v7 + v10);
        v13 = *(v7 + v10 + 4);
        if (v6 == *(this + 18))
        {
          *(this + 18) = v13;
          if (v6 == v13)
          {
            *(this + 18) = *(this + 2);
          }
        }

        v14 = *v12;
        *(v7 + 12 * (*v12 & 0xFFF) + 4) = v13;
        *(v7 + 12 * (v12[1] & 0xFFF)) = v14;
        *(v12 + 8) = 1;
        *(*(this + 1) + 4 * v6) = v9 ^ v6;
      }

      ++v6;
      v10 += 12;
      --v11;
    }

    while (v11);
    Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::resize(this + 1, (v2 + 256));
    v15 = v2;
    if (v2 < v3)
    {
      v16 = *(this + 4);
      do
      {
        *(v16 + 12 * (v15++ & 0xFFF) + 8) = 0;
      }

      while (v3 != v15);
    }
  }

  v17 = *(this + 4);
  if (v2 + 1 < v3)
  {
    v18 = 255;
    v19 = v2;
    do
    {
      *(v17 + 12 * (v19 & 0xFFF) + 4) = v19 + 1;
      *(v17 + 12 * ((v19 + 1) & 0xFFF)) = v19;
      ++v19;
      --v18;
    }

    while (v18);
  }

  v20 = 12 * (v2 & 0xFFF);
  *(v17 + v20) = v2 + 255;
  v21 = *(this + 18);
  v22 = 12 * (v21 & 0xFFF);
  v23 = *(v17 + v22);
  *(v17 + v20) = v23;
  *(v17 + 12 * ((v2 + 255) & 0xFFF) + 4) = v21;
  *(v17 + 12 * (v23 & 0xFFF) + 4) = v2;
  *(v17 + v22) = v2 + 255;
}

uint64_t Darts::Details::DoubleArrayBuilder::arrange_from_dawg(Darts::Details::DoubleArrayBuilder *this, const Darts::Details::DawgBuilder *a2, unsigned int a3, unsigned int a4)
{
  Darts::Details::AutoPool<unsigned char>::resize(this + 40, 0);
  v8 = *(*(a2 + 3) + 4 * a3);
  if (v8 >= 4)
  {
    v9 = v8 >> 2;
    do
    {
      v38 = *(*(a2 + 6) + v9);
      Darts::Details::AutoPool<unsigned char>::append(this + 5, &v38);
      v10 = *(*(a2 + 3) + 4 * v9);
      v12 = __CFADD__(v9++, 1);
    }

    while ((v10 & 1) != 0 && !v12);
  }

  v13 = *(this + 18);
  v14 = *(this + 2);
  if (v14 > v13)
  {
    v16 = *(this + 4);
    v15 = *(this + 5);
    v19 = *v15;
    v17 = v15 + 1;
    v18 = v19;
    v20 = *(this + 18);
    do
    {
      v21 = v20 ^ v18;
      if ((*(v16 + 12 * ((v20 ^ v18) & 0xFFF) + 9) & 1) == 0 && (!((v20 ^ v18) ^ a4) || ((v21 ^ a4) & 0x1FE00000) == 0))
      {
        v22 = *(this + 6);
        if (v22 < 2)
        {
          goto LABEL_21;
        }

        v23 = v22 - 1;
        v24 = v17;
        while (1)
        {
          v25 = *v24++;
          if (*(v16 + 12 * ((v20 ^ v18) & 0xFFF ^ v25) + 8) == 1)
          {
            break;
          }

          if (!--v23)
          {
            goto LABEL_21;
          }
        }
      }

      v20 = *(v16 + 12 * (v20 & 0xFFF) + 4);
    }

    while (v20 != v13);
  }

  v21 = a4 | v14;
LABEL_21:
  Darts::Details::DoubleArrayBuilderUnit::set_offset((*(this + 1) + 4 * a4), v21 ^ a4);
  if (*(this + 6))
  {
    v26 = 0;
    v27 = *(*(a2 + 3) + 4 * a3) >> 2;
    do
    {
      v28 = v21 ^ *(*(this + 5) + v26);
      if (*(this + 2) <= v28)
      {
        Darts::Details::DoubleArrayBuilder::expand_units(this);
      }

      if (*(this + 18) == v28)
      {
        v29 = v28 & 0xFFF;
        v30 = *(this + 4);
        v31 = *(v30 + 12 * (v28 & 0xFFF) + 4);
        *(this + 18) = v31;
        if (v31 == v28)
        {
          *(this + 18) = *(this + 2);
        }
      }

      else
      {
        v30 = *(this + 4);
        v29 = v28 & 0xFFF;
      }

      v32 = v30 + 12 * v29;
      v33 = *(v32 + 4);
      v34 = v30 + 12 * (*v32 & 0xFFF);
      *(v30 + 12 * (v33 & 0xFFF)) = *v32;
      *(v34 + 4) = v33;
      *(v32 + 8) = 1;
      v35 = *(this + 1);
      if (*(*(a2 + 6) + v27))
      {
        *(v35 + 4 * v28) = *(*(this + 5) + v26);
        v36 = *(*(a2 + 3) + 4 * v27);
      }

      else
      {
        *(v35 + 4 * a4) |= 0x100u;
        v36 = *(*(a2 + 3) + 4 * v27);
        *(v35 + 4 * v28) = (v36 >> 1) | 0x80000000;
      }

      v27 = ((v36 << 31) >> 31) & (v27 + 1);
      ++v26;
    }

    while (v26 < *(this + 6));
  }

  else
  {
    v30 = *(this + 4);
  }

  *(v30 + 12 * (v21 & 0xFFF) + 9) = 1;
  return v21;
}

uint64_t Darts::Details::BitVector::rank(Darts::Details::BitVector *this, unint64_t a2)
{
  v2 = (a2 >> 3) & 0x1FFFFFFFFFFFFFFCLL;
  v3 = *(*(this + 3) + v2);
  LODWORD(v2) = *(*this + v2) & (0xFFFFFFFF >> ~a2);
  LODWORD(v2) = ((((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) >> 2) & 0x33333333) + ((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) & 0x33333333) + (((((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) >> 2) & 0x33333333) + ((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) & 0x33333333)) >> 4)) & 0xF0F0F0F;
  return ((v2 + BYTE1(v2) + ((v2 + (v2 >> 8)) >> 16)) & 0x3Fu) + v3;
}

void *Darts::Details::AutoPool<unsigned char>::append(void *result, _BYTE *a2)
{
  v2 = result[1];
  if (v2 == result[2])
  {
    Darts::Details::AutoPool<unsigned char>::resize_buf(result, v2 + 1);
  }

  result[1] = v2 + 1;
  *(*result + v2) = *a2;
  return result;
}

void Darts::Details::DawgBuilder::~DawgBuilder(Darts::Details::DawgBuilder *this)
{
  Darts::Details::AutoPool<Darts::Details::DawgNode>::clear(this);
  Darts::Details::AutoPool<Darts::Details::DawgUnit>::clear(this + 3);
  Darts::Details::AutoPool<unsigned char>::clear(this + 6);
  Darts::Details::BitVector::clear((this + 72));
  Darts::Details::AutoPool<unsigned int>::clear(this + 15);
  Darts::Details::AutoPool<unsigned int>::clear(this + 18);
  Darts::Details::AutoPool<unsigned int>::clear(this + 21);
  *(this + 24) = 0;
  Darts::Details::AutoStack<unsigned int>::~AutoStack(this + 21);
  Darts::Details::AutoStack<unsigned int>::~AutoStack(this + 18);
  Darts::Details::AutoPool<unsigned int>::~AutoPool(this + 15);
  Darts::Details::BitVector::~BitVector((this + 72));
  Darts::Details::AutoPool<unsigned char>::~AutoPool(this + 6);
  Darts::Details::AutoPool<Darts::Details::DawgUnit>::~AutoPool(this + 3);

  Darts::Details::AutoPool<Darts::Details::DawgNode>::~AutoPool(this);
}

uint64_t Darts::Details::DoubleArrayBuilder::build_from_keyset<int>(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned int a6)
{
  while (1)
  {
    result = Darts::Details::DoubleArrayBuilder::arrange_from_keyset<int>(a1, a2, a3, a4, a5, a6);
    v12 = result;
    if (a3 < a4)
    {
      v13 = a2[2];
      while (v13 && *(v13 + 8 * a3) <= a5 || !*(*(a2[1] + 8 * a3) + a5))
      {
        if (a4 == ++a3)
        {
          return result;
        }
      }
    }

    if (a3 == a4)
    {
      break;
    }

    v14 = a2[2];
    if (v14 && *(v14 + 8 * a3) <= a5)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(*(a2[1] + 8 * a3) + a5);
    }

    v16 = a3 + 1;
    if (a3 + 1 < a4)
    {
      do
      {
        if (v14 && *(v14 + 8 * v16) <= a5)
        {
          v17 = 0;
        }

        else
        {
          v17 = *(*(a2[1] + 8 * v16) + a5);
        }

        if (v17 != v15)
        {
          Darts::Details::DoubleArrayBuilder::build_from_keyset<int>(a1, a2, a3, v16, a5 + 1, v12 ^ v15);
          v14 = a2[2];
          if (v14 && *(v14 + 8 * v16) <= a5)
          {
            v15 = 0;
          }

          else
          {
            v15 = *(*(a2[1] + 8 * v16) + a5);
          }

          a3 = v16;
        }

        ++v16;
      }

      while (a4 != v16);
    }

    a6 = v12 ^ v15;
    ++a5;
  }

  return result;
}

uint64_t Darts::Details::DoubleArrayBuilder::arrange_from_keyset<int>(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned int a6)
{
  Darts::Details::AutoPool<unsigned char>::resize(a1 + 40, 0);
  if (a3 < a4)
  {
    v12 = -1;
    while (1)
    {
      v13 = a2[2];
      if (v13)
      {
        if (*(v13 + 8 * a3) > a5)
        {
          v44 = *(*(a2[1] + 8 * a3) + a5);
          if (!v44)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            v43 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1675: exception: failed to build double-array: invalid null character";
            goto LABEL_57;
          }

          goto LABEL_20;
        }

        v44 = 0;
      }

      else
      {
        v44 = *(*(a2[1] + 8 * a3) + a5);
        if (v44)
        {
          goto LABEL_20;
        }
      }

      v14 = a2[3];
      if (v14)
      {
        if ((*(v14 + 4 * a3) & 0x80000000) != 0)
        {
          goto LABEL_56;
        }
      }

      else if ((a3 & 0x80000000) != 0)
      {
LABEL_56:
        exception = __cxa_allocate_exception(0x10uLL);
        v43 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1677: exception: failed to build double-array: negative value";
LABEL_57:
        *exception = &unk_2878A23E0;
        exception[1] = v43;
      }

      if (v12 == -1)
      {
        if (v14)
        {
          v12 = *(v14 + 4 * a3);
        }

        else
        {
          v12 = a3;
        }
      }

      if (*a1)
      {
        (*a1)(a3 + 1, *a2 + 1);
      }

LABEL_20:
      v15 = *(a1 + 48);
      if (!v15)
      {
        goto LABEL_24;
      }

      v16 = *(*(a1 + 40) + v15 - 1);
      if (v44 != v16)
      {
        if (v44 < v16)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v43 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1692: exception: failed to build double-array: wrong key order";
          goto LABEL_57;
        }

LABEL_24:
        Darts::Details::AutoPool<unsigned char>::append((a1 + 40), &v44);
      }

      if (a4 == ++a3)
      {
        v17 = v12 | 0x80000000;
        goto LABEL_28;
      }
    }
  }

  v17 = -1;
LABEL_28:
  v18 = *(a1 + 72);
  v19 = *(a1 + 16);
  if (v19 > v18)
  {
    v21 = *(a1 + 32);
    v20 = *(a1 + 40);
    v24 = *v20;
    v22 = v20 + 1;
    v23 = v24;
    v25 = *(a1 + 72);
    do
    {
      v26 = v25 ^ v23;
      if ((*(v21 + 12 * ((v25 ^ v23) & 0xFFF) + 9) & 1) == 0 && (!((v25 ^ v23) ^ a6) || ((v26 ^ a6) & 0x1FE00000) == 0))
      {
        v27 = *(a1 + 48);
        if (v27 < 2)
        {
          goto LABEL_41;
        }

        v28 = v27 - 1;
        v29 = v22;
        while (1)
        {
          v30 = *v29++;
          if (*(v21 + 12 * ((v25 ^ v23) & 0xFFF ^ v30) + 8) == 1)
          {
            break;
          }

          if (!--v28)
          {
            goto LABEL_41;
          }
        }
      }

      v25 = *(v21 + 12 * (v25 & 0xFFF) + 4);
    }

    while (v25 != v18);
  }

  v26 = a6 | v19;
LABEL_41:
  Darts::Details::DoubleArrayBuilderUnit::set_offset((*(a1 + 8) + 4 * a6), v26 ^ a6);
  if (*(a1 + 48))
  {
    v31 = 0;
    v32 = *(a1 + 40);
    do
    {
      v33 = v26 ^ *(v32 + v31);
      if (*(a1 + 16) <= v33)
      {
        Darts::Details::DoubleArrayBuilder::expand_units(a1);
      }

      if (*(a1 + 72) == v33)
      {
        v34 = v33 & 0xFFF;
        v35 = *(a1 + 32);
        v36 = *(v35 + 12 * (v33 & 0xFFF) + 4);
        *(a1 + 72) = v36;
        if (v36 == v33)
        {
          *(a1 + 72) = *(a1 + 16);
        }
      }

      else
      {
        v35 = *(a1 + 32);
        v34 = v33 & 0xFFF;
      }

      v37 = v35 + 12 * v34;
      v38 = *(v37 + 4);
      v39 = v35 + 12 * (*v37 & 0xFFF);
      *(v35 + 12 * (v38 & 0xFFF)) = *v37;
      *(v39 + 4) = v38;
      *(v37 + 8) = 1;
      v32 = *(a1 + 40);
      v40 = *(a1 + 8);
      if (*(v32 + v31))
      {
        *(v40 + 4 * v33) = *(v32 + v31);
      }

      else
      {
        *(v40 + 4 * a6) |= 0x100u;
        *(v40 + 4 * v33) = v17;
      }

      ++v31;
    }

    while (v31 < *(a1 + 48));
  }

  else
  {
    v35 = *(a1 + 32);
  }

  *(v35 + 12 * (v26 & 0xFFF) + 9) = 1;
  return v26;
}

void Darts::Details::DoubleArrayBuilder::~DoubleArrayBuilder(Darts::Details::DoubleArrayBuilder *this)
{
  Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::clear(this + 1);
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x26D5F9370](v2, 0x1000C80CBA68D63);
    *(this + 4) = 0;
  }

  Darts::Details::AutoPool<unsigned char>::clear(this + 5);
  v3 = *(this + 8);
  if (v3)
  {
    MEMORY[0x26D5F9370](v3, 0x1000C8052888210);
    *(this + 8) = 0;
  }

  *(this + 18) = 0;
  Darts::Details::AutoPool<unsigned char>::~AutoPool(this + 5);
  v4 = *(this + 4);
  if (v4)
  {
    MEMORY[0x26D5F9370](v4, 0x1000C80CBA68D63);
    *(this + 4) = 0;
  }

  Darts::Details::AutoPool<Darts::Details::DoubleArrayBuilderUnit>::~AutoPool(this + 1);
}

sentencepiece::normalizer::Normalizer *sentencepiece::normalizer::Normalizer::Normalizer(sentencepiece::normalizer::Normalizer *this, const sentencepiece::NormalizerSpec *a2, const sentencepiece::TrainerSpec *a3)
{
  *this = &unk_2878A2408;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = a2 + 16;
  *(this + 5) = 0;
  *(this + 48) = *(a3 + 245);
  sentencepiece::util::Status::Status(this + 7);
  v5 = *(a2 + 8);
  v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v6 = *v6;
    v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  sentencepiece::normalizer::Normalizer::Init(this, v6, v7);
  return this;
}

void sub_267559B9C(_Unwind_Exception *a1)
{
  sentencepiece::util::Status::~Status((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sentencepiece::normalizer::Normalizer::Init(uint64_t a1, unsigned int *a2, unint64_t a3)
{
  if (a3)
  {
    v6[0] = 0;
    v6[1] = 0;
    v5 = 0uLL;
    sentencepiece::normalizer::Normalizer::DecodePrecompiledCharsMap(a2, a3, v6, &v5, &v4);
    sentencepiece::util::Status::operator=((a1 + 56), &v4);
    sentencepiece::util::Status::~Status(&v4);
    if (!*(a1 + 56))
    {
      operator new();
    }
  }
}

void sub_267559D44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::util::Status::~Status(va);
  _Unwind_Resume(a1);
}

sentencepiece::normalizer::Normalizer *sentencepiece::normalizer::Normalizer::Normalizer(sentencepiece::normalizer::Normalizer *this, const sentencepiece::NormalizerSpec *a2)
{
  *this = &unk_2878A2408;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = a2 + 16;
  *(this + 5) = 0;
  *(this + 48) = 0;
  sentencepiece::util::Status::Status(this + 7);
  v4 = *(a2 + 8);
  v5 = (v4 & 0xFFFFFFFFFFFFFFFELL);
  v6 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *v5;
    v6 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  sentencepiece::normalizer::Normalizer::Init(this, v5, v6);
  return this;
}

void sub_267559DE8(_Unwind_Exception *a1)
{
  sentencepiece::util::Status::~Status((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sentencepiece::normalizer::Normalizer::Normalizer(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2878A2408;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sentencepiece::util::Status::Status((a1 + 56));
  v10 = 0;
  sentencepiece::mmap_util::DecodePrefix<unsigned int>(a3, a4, &v10, &v9);
  sentencepiece::util::Status::operator=((a1 + 56), &v9);
  sentencepiece::util::Status::~Status(&v9);
  (*(*a1 + 24))(&v9, a1);
  v7 = v9;
  sentencepiece::util::Status::~Status(&v9);
  if (!v7)
  {
    *(a1 + 48) = v10 != 0;
    sentencepiece::normalizer::Normalizer::Init(a1, a3 + 1, a4 - 4);
  }

  return a1;
}

void sub_267559F3C(_Unwind_Exception *a1)
{
  sentencepiece::util::Status::~Status((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sentencepiece::normalizer::Normalizer::~Normalizer(sentencepiece::normalizer::Normalizer *this)
{
  *this = &unk_2878A2408;
  sentencepiece::util::Status::~Status((this + 56));
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  sentencepiece::normalizer::Normalizer::~Normalizer(this);

  JUMPOUT(0x26D5F93A0);
}

void *sentencepiece::normalizer::Normalizer::DecodePrecompiledCharsMap@<X0>(unsigned int *a1@<X0>, unint64_t a2@<X1>, unsigned int **a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  if (a2 < 5 || (v7 = *a1, a2 <= v7))
  {
    v10 = "Blob for normalization rule is broken.";
    v11 = 38;
  }

  else
  {
    if ((v7 + 1) < a2)
    {
      v8 = a1 + 1;
      *a3 = v8;
      a3[1] = v7;
      *a4 = v7 + v8;
      a4[1] = a2 - v7 - 4;
      return sentencepiece::util::Status::Status(a5);
    }

    v10 = "Trie data size exceeds the input blob size.";
    v11 = 43;
  }

  return sentencepiece::util::Status::Status(a5, 13, v10, v11);
}

void *sentencepiece::normalizer::Normalizer::Normalize@<X0>(uint64_t a1@<X0>, sentencepiece::string_util *a2@<X1>, unint64_t a3@<X2>, std::string *a4@<X3>, const void **a5@<X4>, sentencepiece::util::Status *a6@<X8>)
{
  v8 = a3;
  a5[1] = *a5;
  if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
  {
    *a4->__r_.__value_.__l.__data_ = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    if (!a3)
    {
LABEL_11:

      return sentencepiece::util::Status::Status(a6);
    }
  }

  else
  {
    a4->__r_.__value_.__s.__data_[0] = 0;
    *(&a4->__r_.__value_.__s + 23) = 0;
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  result = (*(*a1 + 24))(a1);
  if (*a6)
  {
    return result;
  }

  sentencepiece::util::Status::~Status(a6);
  if ((*(**(a1 + 32) + 24))(*(a1 + 32)))
  {
    v14 = 0;
    while (1)
    {
      sentencepiece::normalizer::Normalizer::NormalizePrefix(a2, a1, v8, v13, &v41);
      if (v42 != 1 || *v41 != 32)
      {
        break;
      }

      a2 = (a2 + v43);
      v14 += v43;
      v8 -= v43;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    v39 = a6;
  }

  else
  {
    v39 = a6;
    v14 = 0;
  }

  std::string::reserve(a4, 3 * v8);
  std::vector<unsigned long>::reserve(a5, 3 * v8);
  if ((*(a1 + 48) & 1) == 0 && (*(**(a1 + 32) + 16))(*(a1 + 32)))
  {
    if ((*(**(a1 + 32) + 32))(*(a1 + 32)))
    {
      v15 = 3;
      std::string::append(a4, "▁", 3uLL);
      do
      {
        v41 = v14;
        std::vector<unsigned long>::push_back[abi:ne200100](a5, &v41);
        --v15;
      }

      while (v15);
    }

    else
    {
      std::string::append(a4, " ");
      v41 = v14;
      std::vector<unsigned long>::push_back[abi:ne200100](a5, &v41);
    }
  }

  v17 = (*(**(a1 + 32) + 24))(*(a1 + 32));
  do
  {
    sentencepiece::normalizer::Normalizer::NormalizePrefix(a2, a1, v8, v16, &v41);
    v19 = v41;
    v18 = v42;
    if (v17)
    {
      if (!v42)
      {
        goto LABEL_40;
      }

      while (*v19 == 32)
      {
        ++v19;
        if (!--v18)
        {
          goto LABEL_40;
        }
      }
    }

    else if (!v42)
    {
      v17 = 0;
      goto LABEL_40;
    }

    v20 = 0;
    v40 = v14;
    v21 = v14;
    do
    {
      v22 = (*(**(a1 + 32) + 32))(*(a1 + 32));
      v23 = v19[v20];
      if (v22 && v23 == 32)
      {
        std::string::append(a4, "▁", 3uLL);
        v24 = 3;
        do
        {
          v47[0] = v21;
          std::vector<unsigned long>::push_back[abi:ne200100](a5, v47);
          --v24;
        }

        while (v24);
      }

      else
      {
        std::string::push_back(a4, v23);
        v47[0] = v21;
        std::vector<unsigned long>::push_back[abi:ne200100](a5, v47);
      }

      ++v20;
    }

    while (v20 != v18);
    v17 = v19[v18 - 1] == 32;
    v14 = v40;
LABEL_40:
    v14 += v43;
    a2 = (a2 + v43);
    v8 -= v43;
    v17 &= (*(**(a1 + 32) + 24))(*(a1 + 32));
  }

  while (v8);
  if ((*(**(a1 + 32) + 24))(*(a1 + 32)))
  {
    v25 = (*(**(a1 + 32) + 32))(*(a1 + 32));
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 1;
    }

    LODWORD(v27) = v14;
    if (v25)
    {
      v28 = "▁";
    }

    else
    {
      v28 = " ";
    }

    while (1)
    {
      v29 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      if ((v29 & 0x8000000000000000) != 0)
      {
        v30 = a4->__r_.__value_.__r.__words[0];
        size = a4->__r_.__value_.__l.__size_;
      }

      else
      {
        v30 = a4;
        size = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      }

      v32 = size >= v26;
      v33 = size - v26;
      if (!v32 || memcmp(v30 + v33, v28, v26))
      {
        break;
      }

      if ((v29 & 0x80000000) != 0)
      {
        v29 = a4->__r_.__value_.__l.__size_;
      }

      if (v29 - v26 < 0)
      {
        LODWORD(v41) = 13;
        v36 = std::ostringstream::basic_ostringstream[abi:ne200100](&v42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/normalizer.cc", 69);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "(", 1);
        MEMORY[0x26D5F9210](&v42, 186);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "(length) >= (0)", 15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "] ", 2);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v41, v39);
        goto LABEL_72;
      }

      v34 = (v29 - v26) & 0x7FFFFFFF;
      v27 = *(*a5 + v34);
      std::string::resize(a4, v34, 0);
      std::vector<unsigned long>::resize(a5, v34);
    }
  }

  else
  {
    LODWORD(v27) = v14;
  }

  if (*(a1 + 48) == 1 && (*(**(a1 + 32) + 16))(*(a1 + 32)))
  {
    if ((*(**(a1 + 32) + 32))(*(a1 + 32)))
    {
      v35 = 3;
      std::string::append(a4, "▁", 3uLL);
      do
      {
        v41 = v27;
        std::vector<unsigned long>::push_back[abi:ne200100](a5, &v41);
        --v35;
      }

      while (v35);
    }

    else
    {
      std::string::append(a4, " ");
      v41 = v27;
      std::vector<unsigned long>::push_back[abi:ne200100](a5, &v41);
    }
  }

  v41 = v27;
  std::vector<unsigned long>::push_back[abi:ne200100](a5, &v41);
  v37 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  if ((v37 & 0x8000000000000000) != 0)
  {
    v37 = a4->__r_.__value_.__l.__size_;
  }

  if ((a5[1] - *a5) >> 3 == v37 + 1)
  {
    return sentencepiece::util::Status::Status(v39);
  }

  LODWORD(v41) = 13;
  v38 = std::ostringstream::basic_ostringstream[abi:ne200100](&v42);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/normalizer.cc", 69);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "(", 1);
  MEMORY[0x26D5F9210](&v42, 198);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, ") [", 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "(norm_to_orig->size()) == (normalized->size() + 1)", 50);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "] ", 2);
  sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v41, v39);
LABEL_72:
  v42 = *MEMORY[0x277D82828];
  *(&v42 + *(v42 - 24)) = *(MEMORY[0x277D82828] + 24);
  v43 = MEMORY[0x277D82878] + 16;
  if (v45 < 0)
  {
    operator delete(v44[7].__locale_);
  }

  v43 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v44);
  std::ostream::~ostream();
  return MEMORY[0x26D5F9330](&v46);
}

void sub_26755A8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::normalizer::Normalizer::NormalizePrefix@<X0>(sentencepiece::string_util *this@<X1>, uint64_t result@<X0>, unint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v30[63] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = this;
    v8 = result;
    v9 = *(result + 40);
    if (v9 && (v29[0] = 0, result = sentencepiece::normalizer::PrefixMatcher::PrefixMatch(v9, this, a3, v29), v29[0] == 1))
    {
      v10 = result;
      if (a3 < result)
      {
        v10 = a3;
      }

      *a5 = v7;
      *(a5 + 8) = v10;
      *(a5 + 16) = result;
    }

    else
    {
      v11 = *(v8 + 8);
      if (!v11)
      {
        goto LABEL_24;
      }

      v12 = 0;
      v13 = 0;
      v14 = *(v11 + 16);
      v15 = (*v14 >> 10 << ((*v14 >> 6) & 8));
      do
      {
        v16 = v7[v12];
        v17 = v15 ^ v16;
        v18 = v14[v17];
        if ((v18 & 0x800000FF) != v16)
        {
          break;
        }

        v15 = v17 ^ (v18 >> 10 << ((v18 >> 6) & 8));
        if ((v18 & 0x100) != 0)
        {
          if (v13 <= 0x1F)
          {
            v19 = &v29[16 * v13];
            *v19 = v14[v15] & 0x7FFFFFFF;
            *(v19 + 1) = v12 + 1;
          }

          ++v13;
        }

        ++v12;
      }

      while (a3 != v12);
      if (!v13)
      {
        goto LABEL_24;
      }

      v20 = 0;
      v21 = 0;
      v22 = v30;
      v23 = v30;
      do
      {
        v25 = *v23;
        v23 += 2;
        v24 = v25;
        if (!v20 || v24 > v20)
        {
          v21 = *(v22 - 2);
          v20 = v24;
        }

        v22 = v23;
        --v13;
      }

      while (v13);
      if (v20)
      {
        v7 = (*(v8 + 16) + v21);
        result = strlen(v7);
      }

      else
      {
LABEL_24:
        *v29 = 0;
        v26 = sentencepiece::string_util::DecodeUTF8(v7, &v7[a3], v29, a4);
        v27 = v26 != 65533;
        if (v26 == 65533)
        {
          result = 3;
        }

        else
        {
          result = *v29;
        }

        if (*v29 == 3)
        {
          v27 = 1;
        }

        if (v27)
        {
          LODWORD(v20) = *v29;
        }

        else
        {
          LODWORD(v20) = 1;
        }

        if (!v27)
        {
          v7 = &sentencepiece::normalizer::Normalizer::NormalizePrefix(std::string_view)const::kReplacementChar;
        }
      }

      *a5 = v7;
      *(a5 + 8) = result;
      *(a5 + 16) = v20;
    }
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::vector<unsigned long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(result, a2);
    }

    std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<unsigned long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::vector<unsigned long>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(a1, a2 - v2);
  }
}

void sentencepiece::normalizer::Normalizer::Normalize(uint64_t a1@<X0>, void *a2@<X8>)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  (*(*a1 + 32))(&v2);
  sentencepiece::util::Status::IgnoreError(&v2);
  sentencepiece::util::Status::~Status(&v2);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_26755ACF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sentencepiece::util::Status::~Status(&a9);
  if (*(v11 + 23) < 0)
  {
    operator delete(*v11);
  }

  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sentencepiece::normalizer::PrefixMatcher::PrefixMatch(uint64_t a1, _BYTE *a2, uint64_t a3, BOOL *a4)
{
  v25[127] = *MEMORY[0x277D85DE8];
  if (!*a1)
  {
    if (a4)
    {
      *a4 = 0;
    }

    goto LABEL_33;
  }

  v4 = *(*a1 + 16);
  v5 = (*v4 >> 10 << ((*v4 >> 6) & 8));
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = a2[v6];
      v9 = v5 ^ v8;
      v10 = v4[v9];
      if ((v10 & 0x800000FF) != v8)
      {
        break;
      }

      v5 = v9 ^ (v10 >> 10 << ((v10 >> 6) & 8));
      if ((v10 & 0x100) != 0)
      {
        if (v7 <= 0x3F)
        {
          v11 = &v24[16 * v7];
          *v11 = v4[v5] & 0x7FFFFFFF;
          *(v11 + 1) = v6 + 1;
        }

        ++v7;
      }

      ++v6;
    }

    while (a3 != v6);
  }

  else
  {
    v12 = *a2;
    if (*a2)
    {
      v7 = 0;
      v13 = 1;
      do
      {
        v14 = v5 ^ v12;
        v15 = v4[v14];
        if ((v15 & 0x800000FF) != v12)
        {
          break;
        }

        v5 = v14 ^ (v15 >> 10 << ((v15 >> 6) & 8));
        if ((v15 & 0x100) != 0)
        {
          if (v7 <= 0x3F)
          {
            v16 = &v24[16 * v7];
            *v16 = v4[v5] & 0x7FFFFFFF;
            *(v16 + 1) = v13;
          }

          ++v7;
        }

        v12 = a2[v13++];
      }

      while (v12);
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  if (a4)
  {
    *a4 = v7 > 0;
  }

  if (!v7)
  {
LABEL_33:
    v22 = asc_2675AD4FB[*a2 >> 4];
    if (v22 >= a3)
    {
      result = a3;
    }

    else
    {
      result = v22;
    }

    goto LABEL_36;
  }

  if (v7 < 1)
  {
    result = 0;
  }

  else
  {
    LODWORD(result) = 0;
    v18 = v7 & 0x7FFFFFFF;
    v19 = v25;
    do
    {
      v21 = *v19;
      v19 += 4;
      v20 = v21;
      if (result <= v21)
      {
        result = v20;
      }

      else
      {
        result = result;
      }

      --v18;
    }

    while (v18);
  }

LABEL_36:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sentencepiece::normalizer::Normalizer::MemoryMappableString(sentencepiece::normalizer::Normalizer *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 48);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  std::string::resize(a2, 4uLL, 0);
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *v5 = v4;
  v6 = *(this + 1);
  if (v6)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    memset(&v13, 0, sizeof(v13));
    std::string::resize(&v13, 4uLL, 0);
    v9 = 4 * v8;
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13.__r_.__value_.__r.__words[0];
    }

    LODWORD(v10->__r_.__value_.__l.__data_) = v9;
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v13;
    }

    else
    {
      v11 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v11, size);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    std::string::append(a2, v7, v9);
    std::string::append(a2, *(this + 2), *(this + 3));
  }
}

void sub_26755AFF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void *sentencepiece::normalizer::PrefixMatcher::PrefixMatcher(void *result, void *a2)
{
  *result = 0;
  v3 = a2[2];
  if (v3)
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
    std::vector<char const*>::reserve(&__p, v3);
    v6 = *a2;
    v4 = a2 + 1;
    v5 = v6;
    if (v6 != v4)
    {
      v7 = v19;
      do
      {
        v8 = v5[4];
        if (v7 >= v20)
        {
          v9 = (v7 - __p) >> 3;
          if ((v9 + 1) >> 61)
          {
            std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
          }

          v10 = (v20 - __p) >> 2;
          if (v10 <= v9 + 1)
          {
            v10 = v9 + 1;
          }

          if (v20 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v11 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v11 = v10;
          }

          if (v11)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(&__p, v11);
          }

          v12 = (8 * v9);
          *v12 = v8;
          v7 = (8 * v9 + 8);
          v13 = v12 - (v19 - __p);
          memcpy(v13, __p, v19 - __p);
          v14 = __p;
          __p = v13;
          v19 = v7;
          v20 = 0;
          if (v14)
          {
            operator delete(v14);
          }
        }

        else
        {
          *v7 = v8;
          v7 += 8;
        }

        v19 = v7;
        v15 = v5[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v5[2];
            v17 = *v16 == v5;
            v5 = v16;
          }

          while (!v17);
        }

        v5 = v16;
      }

      while (v16 != v4);
    }

    operator new();
  }

  return result;
}

void sub_26755B294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  v16 = *v14;
  *v14 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<char const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(result, a2);
    }

    std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *sentencepiece::normalizer::PrefixMatcher::PrefixMatcher(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  if (a3)
  {
    operator new();
  }

  return result;
}

void sub_26755B480(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sentencepiece::normalizer::PrefixMatcher::PrefixMatcher(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sentencepiece::normalizer::PrefixMatcher::MemoryMappableString@<X0>(uint64_t *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *this;
  if (*this)
  {
    v4 = 4 * *(v3 + 8);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = *(v3 + 16);
    if (v4 >= 0x17)
    {
      operator new();
    }

    a2[23] = v4;
    if (v4)
    {
      this = memmove(a2, v5, v4);
    }

    a2 += v4;
  }

  else
  {
    a2[23] = 0;
  }

  *a2 = 0;
  return this;
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
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

void sentencepiece::ModelFactory::Create(sentencepiece::ModelFactory *this@<X0>, void *a2@<X8>)
{
  if (*(this + 10))
  {
    v4 = *(this + 10);
  }

  else
  {
    v4 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v5 = v4[68];
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      absl::make_unique<sentencepiece::word::Model,sentencepiece::ModelProto const&>();
    }

    if (v5 == 4)
    {
      absl::make_unique<sentencepiece::character::Model,sentencepiece::ModelProto const&>();
    }
  }

  else
  {
    if (v5 == 1)
    {
      absl::make_unique<sentencepiece::unigram::Model,sentencepiece::ModelProto const&>();
    }

    if (v5 == 2)
    {
      absl::make_unique<sentencepiece::bpe::Model,sentencepiece::ModelProto const&>();
    }
  }

  if (sentencepiece::logging::GetMinLogLevel(this) <= 2)
  {
    LOBYTE(v14) = 0;
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "model_factory.cc", 16);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
    v8 = MEMORY[0x26D5F9210](v7, 43);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "LOG(", 4);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "ERROR", 5);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") ", 2);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Unknown model_type: ", 20);
    MEMORY[0x26D5F9210](v13, v4[68]);
    sentencepiece::error::Die::~Die(&v14);
  }

  *a2 = 0;
}

void sub_26755B804(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::error::Die::~Die(va);
  _Unwind_Resume(a1);
}

void sentencepiece::ModelFactory::Create(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v16[1] = a2;
  v16[2] = a3;
  v6 = (*(*a1 + 80))(a1);
  if (v6 == 1)
  {
    absl::make_unique<sentencepiece::bpe::Model,sentencepiece::MemoryMappedModelProto const&,std::string_view &>();
  }

  if (!v6)
  {
    absl::make_unique<sentencepiece::unigram::Model,sentencepiece::MemoryMappedModelProto const&,std::string_view &>();
  }

  if (sentencepiece::logging::GetMinLogLevel(v6) <= 2)
  {
    LOBYTE(v16[0]) = 0;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "model_factory.cc", 16);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "(", 1);
    v9 = MEMORY[0x26D5F9210](v8, 61);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") ", 2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "LOG(", 4);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "ERROR", 5);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ") ", 2);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Unknown model_type: ", 20);
    v15 = (*(*a1 + 80))(a1);
    MEMORY[0x26D5F9220](v14, v15);
    sentencepiece::error::Die::~Die(v16);
  }

  *a4 = 0;
}

void sub_26755BB44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::error::Die::~Die(va);
  _Unwind_Resume(a1);
}

void sentencepiece::ImmutableSentencePieceText::~ImmutableSentencePieceText(sentencepiece::ImmutableSentencePieceText *this)
{
  *this = &unk_2878A2460;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2878A2460;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x26D5F93A0);
}

uint64_t sentencepiece::ImmutableSentencePieceText::mutable_proto(sentencepiece::ImmutableSentencePieceText *this)
{
  result = *(this + 2);
  if (!result)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN13sentencepiece17SentencePieceTextENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  return result;
}

void sentencepiece::ImmutableNBestSentencePieceText::~ImmutableNBestSentencePieceText(sentencepiece::ImmutableNBestSentencePieceText *this)
{
  *this = &unk_2878A2480;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2878A2480;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x26D5F93A0);
}

uint64_t sentencepiece::ImmutableNBestSentencePieceText::mutable_proto(sentencepiece::ImmutableNBestSentencePieceText *this)
{
  result = *(this + 1);
  if (!result)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN13sentencepiece22NBestSentencePieceTextENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  return result;
}

_BYTE *sentencepiece::ImmutableNBestSentencePieceText::SerializeAsString@<X0>(sentencepiece::ImmutableNBestSentencePieceText *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 1);
  if (v2)
  {
    return google::protobuf::MessageLite::SerializeAsString(v2, a2);
  }

  else
  {
    return std::string::basic_string[abi:ne200100]<0>(a2, "");
  }
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

double sentencepiece::SentencePieceProcessor::SentencePieceProcessor(sentencepiece::SentencePieceProcessor *this)
{
  *this = &unk_2878A24A0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  return result;
}

void sentencepiece::SentencePieceProcessor::~SentencePieceProcessor(void **this)
{
  *this = &unk_2878A24A0;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  v2 = this[11];
  this[11] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = this[8];
  if (v3)
  {
    this[9] = v3;
    operator delete(v3);
  }

  v4 = this[5];
  if (v4)
  {
    this[6] = v4;
    operator delete(v4);
  }

  v5 = this[4];
  this[4] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = this[3];
  this[3] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = this[2];
  this[2] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = this[1];
  this[1] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }
}

{
  sentencepiece::SentencePieceProcessor::~SentencePieceProcessor(this);

  JUMPOUT(0x26D5F93A0);
}

uint64_t sentencepiece::IsMMappableFile()
{
  v4[19] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v2);
  if ((v3[*(v2[0] - 24) + 16] & 5) == 0)
  {
    std::istream::read();
  }

  v2[0] = *MEMORY[0x277D82808];
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x26D5F9140](v3);
  std::istream::~istream();
  MEMORY[0x26D5F9330](v4);
  v0 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_26755C2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::ifstream::~ifstream(&a10, MEMORY[0x277D82808]);
  MEMORY[0x26D5F9330](&a63);
  _Unwind_Resume(a1);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v3 = *(MEMORY[0x277D82808] + 16);
  v4 = *(MEMORY[0x277D82808] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x26D5F9130](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_26755C474(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x26D5F9330](v1);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::SentencePieceProcessor::Load(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sentencepiece::IsMMappableFile())
  {
    absl::make_unique<sentencepiece::ModelProto>();
  }

  v6 = *(*a1 + 64);

  return v6(a1, a2, a3);
}

void sub_26755C5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, sentencepiece::ModelProto *a9, sentencepiece::ModelProto *a10)
{
  std::unique_ptr<sentencepiece::ModelProto>::~unique_ptr[abi:ne200100](&a9);
  std::unique_ptr<sentencepiece::ModelProto>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::io::LoadModelProto@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sentencepiece::filesystem::NewReadableFile();
  }

  return sentencepiece::util::Status::Status(a2, 5, "model file path should not be empty.", 36);
}

void sub_26755C9E4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

sentencepiece::ModelProto **std::unique_ptr<sentencepiece::ModelProto>::~unique_ptr[abi:ne200100](sentencepiece::ModelProto **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sentencepiece::ModelProto::~ModelProto(v2);
    MEMORY[0x26D5F93A0]();
  }

  return a1;
}

void sentencepiece::SentencePieceProcessor::LoadOrDie(uint64_t a1)
{
  (*(*a1 + 16))(&v12);
  if (v12.__r_.__value_.__r.__words[0])
  {
    v11 = 1;
    v1 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "(", 1);
    v3 = MEMORY[0x26D5F9210](v2, 239);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ") [", 3);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "_status.ok()", 12);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "] ", 2);
    sentencepiece::util::Status::ToString(&v12, __p);
    if ((v10 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v10 & 0x80u) == 0)
    {
      v8 = v10;
    }

    else
    {
      v8 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    sentencepiece::error::Die::~Die(&v11);
  }

  sentencepiece::util::Status::~Status(&v12);
}

void sub_26755CBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sentencepiece::error::Die::~Die((v15 - 25));
  sentencepiece::util::Status::~Status((v15 - 24));
  _Unwind_Resume(a1);
}

void sub_26755CC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, sentencepiece::ModelProto *a9, sentencepiece::ModelProto *a10)
{
  std::unique_ptr<sentencepiece::ModelProto>::~unique_ptr[abi:ne200100](&a9);
  std::unique_ptr<sentencepiece::ModelProto>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::Load(sentencepiece::logging *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 88);
  if (!v5)
  {
    v5 = &sentencepiece::_NormalizerSpec_default_instance_;
  }

  if (v5[80] == 1)
  {
    if (sentencepiece::logging::GetMinLogLevel(a1) <= 0)
    {
      LOBYTE(v24.__first_) = 0;
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
      v8 = MEMORY[0x26D5F9210](v7, 260);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "LOG(", 4);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "INFO", 4);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Enable Apple addition for backward compatibility", 48);
      sentencepiece::error::Die::~Die(&v24);
    }

    v4 = *a2;
    *(v4 + 48) = *(*a2 + 48) | 1;
    v13 = *(v4 + 80);
    if (!v13)
    {
      v14 = *(v4 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::TrainerSpec>(v14);
      *(v4 + 80) = v13;
      v4 = *a2;
    }

    *(v13 + 40) |= 0x4000u;
    *(v13 + 245) = 1;
    *(v4 + 48) |= 2u;
    v15 = *(v4 + 88);
    if (!v15)
    {
      v16 = *(v4 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::NormalizerSpec>(v16);
      *(v4 + 88) = v15;
      v4 = *a2;
    }

    *(v15 + 48) |= 0x10u;
    *(v15 + 81) = 1;
  }

  *a2 = 0;
  if (v4)
  {
    v17 = v4 + 16;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 4);
  *(a1 + 4) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
    v17 = *(a1 + 4);
  }

  sentencepiece::ModelFactory::Create((v17 - 16), &v24);
  first = v24.__first_;
  v24.__first_ = 0;
  v20 = *(a1 + 1);
  *(a1 + 1) = first;
  if (v20)
  {
    (*(*v20 + 8))(v20);
    v21 = v24.__first_;
    v24.__first_ = 0;
    if (v21)
    {
      (*(v21->__r_.__value_.__r.__words[0] + 8))(v21);
    }
  }

  if (*(v17 + 72))
  {
    v22 = *(v17 + 72);
  }

  if (*(v17 + 64))
  {
    v23 = *(v17 + 64);
  }

  absl::make_unique<sentencepiece::normalizer::Normalizer,sentencepiece::NormalizerSpec const&,sentencepiece::TrainerSpec const&>();
}

void absl::StrCat<char [2],std::string,char [2],std::string>(void *__src@<X0>, size_t __len@<X1>, char *a3@<X2>, void **a4@<X3>, char *a5@<X4>, void **a6@<X5>, std::string *a7@<X8>)
{
  std::string::basic_string[abi:ne200100](&__dst, __src, __len);
  v12 = strlen(a3);
  absl::StrCat<std::string,char [2],std::string>(a3, v12, a4, a5, a6, &__p);
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

  v15 = std::string::append(&__dst, p_p, size);
  *a7 = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_26755DAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceProcessor::ParseExtraOptions(sentencepiece::ModelInterface **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, sentencepiece::util::Status *a5@<X8>)
{
  v45[19] = *MEMORY[0x277D85DE8];
  a4[1] = *a4;
  if (a3)
  {
    (*(*a1 + 11))(a1);
    if (!*a5)
    {
      sentencepiece::util::Status::~Status(a5);
      {
        v41[3] = xmmword_279C0E780;
        *__p = unk_279C0E790;
        v43 = xmmword_279C0E7A0;
        v44 = 3;
        v40 = xmmword_279C0E740;
        v41[0] = unk_279C0E750;
        v41[1] = xmmword_279C0E760;
        v41[2] = *&off_279C0E770;
        std::map<std::string_view,sentencepiece::SentencePieceProcessor::ExtraOption>::map[abi:ne200100](&sentencepiece::SentencePieceProcessor::ParseExtraOptions(std::string_view,std::vector<sentencepiece::SentencePieceProcessor::ExtraOption> *)const::extra_option_map, &v40, 5);
        __cxa_atexit(std::map<std::string_view,sentencepiece::SentencePieceProcessor::ExtraOption>::~map[abi:ne200100], &sentencepiece::SentencePieceProcessor::ParseExtraOptions(std::string_view,std::vector<sentencepiece::SentencePieceProcessor::ExtraOption> *)const::extra_option_map, &dword_26754E000);
      }

      absl::internal::Splitter::Splitter(&v38, a2, a3, ":", 1, 0);
      v10 = v38;
      v11 = v39;
      if (v38 == v39)
      {
LABEL_24:
        if (v10)
        {
          v39 = v10;
          operator delete(v10);
        }

        sentencepiece::util::Status::Status(a5);
      }

      else
      {
        while (1)
        {
          v12 = std::__tree<std::string_view>::find<std::string_view>(&sentencepiece::SentencePieceProcessor::ParseExtraOptions(std::string_view,std::vector<sentencepiece::SentencePieceProcessor::ExtraOption> *)const::extra_option_map, v10);
          v13 = v12;
          if (v12 == &unk_280FF0E70)
          {
            break;
          }

          v15 = a4[1];
          v14 = a4[2];
          if (v15 >= v14)
          {
            v17 = *a4;
            v18 = v15 - *a4;
            v19 = v18 >> 2;
            v20 = (v18 >> 2) + 1;
            if (v20 >> 62)
            {
              std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
            }

            v21 = v14 - v17;
            if (v21 >> 1 > v20)
            {
              v20 = v21 >> 1;
            }

            v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
            v23 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v23 = v20;
            }

            if (v23)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v23);
            }

            *(4 * v19) = *(v12 + 48);
            v16 = 4 * v19 + 4;
            memcpy(0, v17, v18);
            v24 = *a4;
            *a4 = 0;
            a4[1] = v16;
            a4[2] = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v15 = *(v12 + 48);
            v16 = (v15 + 1);
          }

          a4[1] = v16;
          v25 = *(v13 + 48);
          if (v25 == 1)
          {
            v26 = sentencepiece::ModelInterface::bos_piece(a1[1]);
            v27 = strlen(v26);
            v28 = (*(*a1 + 63))(a1, v26, v27);
            if ((*(*a1 + 66))(a1, v28))
            {
              LODWORD(v40) = 13;
              std::ostringstream::basic_ostringstream[abi:ne200100](&v40 + 1);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "(", 1);
              MEMORY[0x26D5F9210](&v40 + 8, 1135);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, ") [", 3);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "!IsUnknown(PieceToId(absl::string_view(model_->bos_piece().data())))", 68);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "] ", 2);
              v33 = sentencepiece::ModelInterface::bos_piece(a1[1]);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, v33, v34);
              sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v40, a5);
              goto LABEL_35;
            }

            v25 = *(v13 + 48);
          }

          if (v25 == 2)
          {
            v29 = sentencepiece::ModelInterface::eos_piece(a1[1]);
            v30 = strlen(v29);
            v31 = (*(*a1 + 63))(a1, v29, v30);
            if ((*(*a1 + 66))(a1, v31))
            {
              LODWORD(v40) = 13;
              std::ostringstream::basic_ostringstream[abi:ne200100](&v40 + 1);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "(", 1);
              MEMORY[0x26D5F9210](&v40 + 8, 1140);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, ") [", 3);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "!IsUnknown(PieceToId(absl::string_view(model_->eos_piece().data())))", 68);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "] ", 2);
              v35 = sentencepiece::ModelInterface::eos_piece(a1[1]);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, v35, v36);
              sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v40, a5);
LABEL_35:
              *(&v40 + 1) = *MEMORY[0x277D82828];
              *(&v40 + *(*(&v40 + 1) - 24) + 8) = *(MEMORY[0x277D82828] + 24);
              *&v41[0] = MEMORY[0x277D82878] + 16;
              if (SBYTE7(v43) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_37;
            }
          }

          v10 += 2;
          if (v10 == v11)
          {
            v10 = v38;
            goto LABEL_24;
          }
        }

        LODWORD(v40) = 13;
        std::ostringstream::basic_ostringstream[abi:ne200100](&v40 + 1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "(", 1);
        MEMORY[0x26D5F9210](&v40 + 8, 1129);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "it != extra_option_map.end()", 28);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "] ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "option ", 8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, *v10, v10[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, " is not available.", 19);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v40, a5);
        *(&v40 + 1) = *MEMORY[0x277D82828];
        *(&v40 + *(*(&v40 + 1) - 24) + 8) = *(MEMORY[0x277D82828] + 24);
        *&v41[0] = MEMORY[0x277D82878] + 16;
        if (SBYTE7(v43) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_37:
        *&v41[0] = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v41 + 1);
        std::ostream::~ostream();
        MEMORY[0x26D5F9330](v45);
        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }
      }
    }

    v37 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v32 = *MEMORY[0x277D85DE8];

    sentencepiece::util::Status::Status(a5);
  }
}

void *sentencepiece::SentencePieceProcessor::status@<X0>(sentencepiece::SentencePieceProcessor *this@<X0>, sentencepiece::util::Status *a2@<X8>)
{
  v4 = *(this + 1);
  if (v4)
  {
    if (*(this + 2))
    {
      result = (*(*v4 + 16))(v4);
      if (!*a2)
      {
        sentencepiece::util::Status::~Status(a2);
        result = (*(**(this + 2) + 24))(*(this + 2));
        if (!*a2)
        {
          sentencepiece::util::Status::~Status(a2);

          return sentencepiece::util::Status::Status(v6);
        }
      }

      return result;
    }

    v9 = 13;
    v8 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
    MEMORY[0x26D5F9210](&v10, 320);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "normalizer_", 11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Normalizer is not initialized.", 30);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a2);
  }

  else
  {
    v9 = 13;
    v7 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
    MEMORY[0x26D5F9210](&v10, 319);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "model_", 6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Model is not initialized.", 25);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a2);
  }

  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x26D5F9330](&v14);
}

void sentencepiece::SentencePieceProcessor::SetVocabulary(void *a1@<X0>, uint64_t *a2@<X1>, sentencepiece::util::Status *a3@<X8>)
{
  (*(*a1 + 88))(a1);
  if (*a3)
  {
    return;
  }

  sentencepiece::util::Status::~Status(a3);
  v6 = a1[4];
  {
    LODWORD(v23) = 13;
    v20 = std::ostringstream::basic_ostringstream[abi:ne200100](&v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "(", 1);
    MEMORY[0x26D5F9210](&v24, 331);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "(model_proto = dynamic_cast<ModelProto *>(model_proto_.get()))", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "SetVocabulary is not supported when mmap-based model is loaded.", 63);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v23, a3);
LABEL_26:
    v24 = *MEMORY[0x277D82828];
    *(&v24 + *(v24 - 3)) = *(MEMORY[0x277D82828] + 24);
    v25 = MEMORY[0x277D82878] + 16;
    if (v27 < 0)
    {
      operator delete(v26[7].__locale_);
    }

    v25 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v26);
    std::ostream::~ostream();
    MEMORY[0x26D5F9330](&v28);
    return;
  }

  v9 = v8;
  v10 = &sentencepiece::_TrainerSpec_default_instance_;
  if (v8[10])
  {
    v10 = v8[10];
  }

  if ((v10[68] - 1) >= 2)
  {
    LODWORD(v23) = 13;
    v21 = std::ostringstream::basic_ostringstream[abi:ne200100](&v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "(", 1);
    MEMORY[0x26D5F9210](&v24, 336);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "type == TrainerSpec::UNIGRAM || type == TrainerSpec::BPE", 56);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "Vocabulary constraint is only enabled in subword units.", 55);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v23, a3);
    goto LABEL_26;
  }

  std::set<std::string_view>::set[abi:ne200100]<std::__wrap_iter<std::string_view const*>>(&v23, *a2, a2[1]);
  if (*(v9 + 16) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>((v9 + 7), v11);
      v13 = v12;
      if ((*(v12 + 60) - 2) >= 3)
      {
        v14 = *(v12 + 48) & 0xFFFFFFFFFFFFFFFELL;
        v15 = *(v14 + 23);
        if (v15 < 0)
        {
          v14 = *v14;
          v15 = *((*(v12 + 48) & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        v22[0] = v14;
        v22[1] = v15;
        if (&v24 == std::__tree<std::string_view>::find<std::string_view>(&v23, v22) && ((v16 = *(v13 + 48) & 0xFFFFFFFFFFFFFFFELL, v17 = *(v16 + 23), v17 < 0) ? (v18 = *v16, v17 = *(v16 + 8)) : (v18 = (*(v13 + 48) & 0xFFFFFFFFFFFFFFFELL)), v17 != asc_2675AD4FB[*v18 >> 4]))
        {
          if (!sentencepiece::ModelProto_SentencePiece_Type_IsValid(5))
          {
LABEL_31:
            __assert_rtn("_internal_set_type", "sentencepiece_model.pb.h", 4686, "::sentencepiece::ModelProto_SentencePiece_Type_IsValid(value)");
          }

          v19 = 5;
        }

        else
        {
          if (!sentencepiece::ModelProto_SentencePiece_Type_IsValid(1))
          {
            goto LABEL_31;
          }

          v19 = 1;
        }

        *(v13 + 40) |= 4u;
        *(v13 + 60) = v19;
      }

      ++v11;
    }

    while (v11 < *(v9 + 16));
  }

  sentencepiece::util::Status::Status(a3);
  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&v23, v24);
}

void *sentencepiece::SentencePieceProcessor::ResetVocabulary@<X0>(char ***this@<X0>, sentencepiece::util::Status *a2@<X8>)
{
  result = ((*this)[11])(this);
  if (!*a2)
  {
    sentencepiece::util::Status::~Status(a2);
    v5 = this[4];
    {
      v8 = *(v7 + 9);
      if (v8)
      {
        v9 = (v8 + 8);
      }

      else
      {
        v9 = 0;
      }

      v10 = v7[16];
      if (v10)
      {
        v11 = 8 * v10;
        do
        {
          v12 = *v9;
          if (*(*v9 + 60) == 5)
          {
            if (!sentencepiece::ModelProto_SentencePiece_Type_IsValid(1))
            {
              sentencepiece::SentencePieceProcessor::ResetVocabulary();
            }

            *(v12 + 40) |= 4u;
            *(v12 + 60) = 1;
          }

          ++v9;
          v11 -= 8;
        }

        while (v11);
      }

      return sentencepiece::util::Status::Status(a2);
    }

    else
    {
      v14 = 13;
      v13 = std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "(", 1);
      MEMORY[0x26D5F9210](&v15, 365);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "(model_proto = dynamic_cast<ModelProto *>(model_proto_.get()))", 62);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "ResetVocabulary is not supported when mmap-based model is loaded.", 65);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v14, a2);
      v15 = *MEMORY[0x277D82828];
      *(&v15 + *(v15 - 24)) = *(MEMORY[0x277D82828] + 24);
      v16 = MEMORY[0x277D82878] + 16;
      if (v18 < 0)
      {
        operator delete(v17[7].__locale_);
      }

      v16 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v17);
      std::ostream::~ostream();
      return MEMORY[0x26D5F9330](&v19);
    }
  }

  return result;
}

void sub_26755F524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  __p = (v10 - 176);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v10 - 152);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v10 - 105) < 0)
  {
    operator delete(*(v10 - 128));
  }

  v12 = *(v10 - 104);
  *(v10 - 104) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Unwind_Resume(a1);
}

BOOL absl::SimpleAtoi<int>(const char *a1, uint64_t a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11);
  v5 = strlen(a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, a1, v5);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
  {
    v7 = 0;
  }

  else
  {
    v8 = MEMORY[0x26D5F9180](v11, a3);
    v7 = (*(v8 + *(*v8 - 24) + 32) & 5) == 0;
  }

  v11[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v9;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  MEMORY[0x26D5F9330](&v16);
  return v7;
}

void sub_26755F80C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x277D82818]);
  MEMORY[0x26D5F9330](v2 + 128);
  _Unwind_Resume(a1);
}

void *sentencepiece::anonymous namespace::ToPieceArray@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = std::vector<std::string_view>::vector[abi:ne200100](a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (v4 + v5);
      v9 = *(v4 + v5 + 23);
      if (v9 < 0)
      {
        v10 = *v8;
        v9 = v8[1];
      }

      else
      {
        v10 = v8;
      }

      v11 = (*result + v6);
      *v11 = v10;
      v11[1] = v9;
      ++v7;
      v4 = *a1;
      v6 += 16;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v7);
  }

  return result;
}

void sentencepiece::SentencePieceProcessor::Encode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, sentencepiece::util::Status *a5@<X8>)
{
  (*(*a1 + 88))(a1);
  if (!*a5)
  {
    sentencepiece::util::Status::~Status(a5);
    if (a4)
    {
      std::vector<std::string>::clear[abi:ne200100](a4);
      sentencepiece::SentencePieceText::SentencePieceText(&v15, 0);
      (*(*a1 + 232))(a1, a2, a3, &v15);
      if (!*a5)
      {
        sentencepiece::util::Status::~Status(a5);
        if (v20)
        {
          v10 = v20 + 8;
        }

        else
        {
          v10 = 0;
        }

        if (v19)
        {
          v11 = *(a4 + 8);
          v12 = 8 * v19;
          do
          {
            v13 = *(*v10 + 48);
            if (v11 >= *(a4 + 16))
            {
              v11 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a4, (v13 & 0xFFFFFFFFFFFFFFFELL));
            }

            else
            {
              std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a4, (v13 & 0xFFFFFFFFFFFFFFFELL));
              ++v11;
            }

            *(a4 + 8) = v11;
            v10 += 8;
            v12 -= 8;
          }

          while (v12);
        }

        sentencepiece::util::Status::Status(a5);
      }

      sentencepiece::SentencePieceText::~SentencePieceText(&v15);
    }

    else
    {
      v15 = 13;
      v14 = std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "(", 1);
      MEMORY[0x26D5F9210](&v16, 415);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "pieces", 6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v15, a5);
      v16 = *MEMORY[0x277D82828];
      *(&v16 + *(v16 - 24)) = *(MEMORY[0x277D82828] + 24);
      v17 = MEMORY[0x277D82878] + 16;
      if (v22 < 0)
      {
        operator delete(__p);
      }

      v17 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v18);
      std::ostream::~ostream();
      MEMORY[0x26D5F9330](&v23);
    }
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sentencepiece::SentencePieceProcessor::Encode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, sentencepiece::util::Status *a5@<X8>)
{
  (*(*a1 + 88))(a1);
  if (!*a5)
  {
    sentencepiece::util::Status::~Status(a5);
    if (a4)
    {
      a4[1] = *a4;
      sentencepiece::SentencePieceText::SentencePieceText(&v23, 0);
      (*(*a1 + 232))(a1, a2, a3, &v23);
      if (!*a5)
      {
        sentencepiece::util::Status::~Status(a5);
        if (v28)
        {
          v10 = v28 + 8;
        }

        else
        {
          v10 = 0;
        }

        if (v27)
        {
          v11 = a4[1];
          v12 = 8 * v27;
          do
          {
            v13 = *(*v10 + 64);
            v14 = a4[2];
            if (v11 >= v14)
            {
              v15 = *a4;
              v16 = v11 - *a4;
              v17 = v16 >> 2;
              v18 = (v16 >> 2) + 1;
              if (v18 >> 62)
              {
                std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
              }

              v19 = v14 - v15;
              if (v19 >> 1 > v18)
              {
                v18 = v19 >> 1;
              }

              if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v20 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v20 = v18;
              }

              if (v20)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v20);
              }

              *(4 * v17) = v13;
              v11 = (4 * v17 + 4);
              memcpy(0, v15, v16);
              v21 = *a4;
              *a4 = 0;
              a4[1] = v11;
              a4[2] = 0;
              if (v21)
              {
                operator delete(v21);
              }
            }

            else
            {
              *v11++ = v13;
            }

            a4[1] = v11;
            v10 += 8;
            v12 -= 8;
          }

          while (v12);
        }

        sentencepiece::util::Status::Status(a5);
      }

      sentencepiece::SentencePieceText::~SentencePieceText(&v23);
    }

    else
    {
      v23 = 13;
      v22 = std::ostringstream::basic_ostringstream[abi:ne200100](&v24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "(", 1);
      MEMORY[0x26D5F9210](&v24, 428);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "ids", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v23, a5);
      v24 = *MEMORY[0x277D82828];
      *(&v24 + *(v24 - 24)) = *(MEMORY[0x277D82828] + 24);
      v25 = MEMORY[0x277D82878] + 16;
      if (v30 < 0)
      {
        operator delete(__p);
      }

      v25 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v26);
      std::ostream::~ostream();
      MEMORY[0x26D5F9330](&v31);
    }
  }
}

void sub_26755FFC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::Decode(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  (*(*a1 + 160))(a1, __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

{
  (*(*a1 + 272))(a1, __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_267560080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceProcessor::Decode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, sentencepiece::util::Status *a4@<X8>)
{
  (*(*a1 + 88))(a1);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    if (a3)
    {
      if (*(a3 + 23) < 0)
      {
        **a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        *a3 = 0;
        *(a3 + 23) = 0;
      }

      sentencepiece::SentencePieceText::SentencePieceText(&v9, 0);
      (*(*a1 + 272))(a1, a2, &v9);
      if (!*a4)
      {
        sentencepiece::util::Status::~Status(a4);
        std::string::operator=(a3, (v12[6].__locale_ & 0xFFFFFFFFFFFFFFFELL));
        sentencepiece::util::Status::Status(a4);
      }

      sentencepiece::SentencePieceText::~SentencePieceText(&v9);
    }

    else
    {
      v9 = 13;
      v8 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
      MEMORY[0x26D5F9210](&v10, 447);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "detokenized", 11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a4);
      v10 = *MEMORY[0x277D82828];
      *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
      v11 = MEMORY[0x277D82878] + 16;
      if (v13 < 0)
      {
        operator delete(v12[7].__locale_);
      }

      v11 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v12);
      std::ostream::~ostream();
      MEMORY[0x26D5F9330](&v14);
    }
  }
}

{
  (*(*a1 + 88))(a1);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    if (a3)
    {
      if (*(a3 + 23) < 0)
      {
        **a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        *a3 = 0;
        *(a3 + 23) = 0;
      }

      sentencepiece::SentencePieceText::SentencePieceText(&v9, 0);
      (*(*a1 + 280))(a1, a2, &v9);
      if (!*a4)
      {
        sentencepiece::util::Status::~Status(a4);
        std::string::operator=(a3, (v12[6].__locale_ & 0xFFFFFFFFFFFFFFFELL));
        sentencepiece::util::Status::Status(a4);
      }

      sentencepiece::SentencePieceText::~SentencePieceText(&v9);
    }

    else
    {
      v9 = 13;
      v8 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
      MEMORY[0x26D5F9210](&v10, 458);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "detokenized", 11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a4);
      v10 = *MEMORY[0x277D82828];
      *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
      v11 = MEMORY[0x277D82878] + 16;
      if (v13 < 0)
      {
        operator delete(v12[7].__locale_);
      }

      v11 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v12);
      std::ostream::~ostream();
      MEMORY[0x26D5F9330](&v14);
    }
  }
}

void sentencepiece::SentencePieceProcessor::NBestEncode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void ***a5@<X4>, sentencepiece::util::Status *a6@<X8>)
{
  (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sentencepiece::util::Status::~Status(a6);
    if (a5)
    {
      v12 = *a5;
      v13 = a5[1];
      while (v13 != v12)
      {
        v13 -= 3;
        v30 = v13;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v30);
      }

      a5[1] = v12;
      sentencepiece::NBestSentencePieceText::NBestSentencePieceText(&v30, 0);
      (*(*a1 + 240))(a1, a2, a3, a4, &v30);
      if (!*a6)
      {
        sentencepiece::util::Status::~Status(a6);
        if (v34)
        {
          v14 = (v34 + 8);
        }

        else
        {
          v14 = 0;
        }

        if (LODWORD(v33.__locale_))
        {
          v15 = &v14[SLODWORD(v33.__locale_)];
          do
          {
            v16 = *v14;
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v17 = *(v16 + 64);
            if (v17)
            {
              v18 = v17 + 8;
            }

            else
            {
              v18 = 0;
            }

            v19 = *(v16 + 56);
            if (v19)
            {
              v20 = 0;
              v21 = 8 * v19;
              do
              {
                v22 = *(*v18 + 48) & 0xFFFFFFFFFFFFFFFELL;
                if (v20 >= v29)
                {
                  v20 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v27, v22);
                }

                else
                {
                  if (*(v22 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(v20, *v22, *(v22 + 8));
                  }

                  else
                  {
                    v23 = *v22;
                    v20->__r_.__value_.__r.__words[2] = *(v22 + 16);
                    *&v20->__r_.__value_.__l.__data_ = v23;
                  }

                  ++v20;
                }

                v28 = v20;
                v18 += 8;
                v21 -= 8;
              }

              while (v21);
            }

            v24 = a5[1];
            if (v24 >= a5[2])
            {
              v25 = std::vector<std::vector<std::string>>::__emplace_back_slow_path<std::vector<std::string>&>(a5, &v27);
            }

            else
            {
              std::vector<std::vector<std::string>>::__construct_one_at_end[abi:ne200100]<std::vector<std::string>&>(a5, &v27);
              v25 = (v24 + 3);
            }

            a5[1] = v25;
            v38 = &v27;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v38);
            ++v14;
          }

          while (v14 != v15);
        }

        sentencepiece::util::Status::Status(a6);
      }

      sentencepiece::NBestSentencePieceText::~NBestSentencePieceText(&v30);
    }

    else
    {
      LODWORD(v30) = 13;
      v26 = std::ostringstream::basic_ostringstream[abi:ne200100](&v31);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "(", 1);
      MEMORY[0x26D5F9210](&v31, 470);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "pieces", 6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v30, a6);
      v31 = *MEMORY[0x277D82828];
      *(&v31 + *(v31 - 24)) = *(MEMORY[0x277D82828] + 24);
      v32 = MEMORY[0x277D82878] + 16;
      if (v36 < 0)
      {
        operator delete(__p);
      }

      v32 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v33);
      std::ostream::~ostream();
      MEMORY[0x26D5F9330](&v37);
    }
  }
}

void sub_267560A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::NBestEncode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, sentencepiece::util::Status *a6@<X8>)
{
  (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sentencepiece::util::Status::~Status(a6);
    if (a5)
    {
      std::vector<std::vector<int>>::clear[abi:ne200100](a5);
      sentencepiece::NBestSentencePieceText::NBestSentencePieceText(&v37, 0);
      (*(*a1 + 240))(a1, a2, a3, a4, &v37);
      if (!*a6)
      {
        sentencepiece::util::Status::~Status(a6);
        if (v41)
        {
          v12 = (v41 + 8);
        }

        else
        {
          v12 = 0;
        }

        if (LODWORD(v40.__locale_))
        {
          v33 = &v12[SLODWORD(v40.__locale_)];
          do
          {
            v13 = *v12;
            __src = 0;
            v35 = 0;
            v36 = 0;
            v14 = *(v13 + 64);
            if (v14)
            {
              v15 = v14 + 8;
            }

            else
            {
              v15 = 0;
            }

            v16 = *(v13 + 56);
            if (v16)
            {
              v17 = 0;
              v18 = 8 * v16;
              do
              {
                v19 = *(*v15 + 64);
                if (v17 >= v36)
                {
                  v20 = __src;
                  v21 = v17 - __src;
                  v22 = (v17 - __src) >> 2;
                  v23 = v22 + 1;
                  if ((v22 + 1) >> 62)
                  {
                    std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
                  }

                  v24 = v36 - __src;
                  if ((v36 - __src) >> 1 > v23)
                  {
                    v23 = v24 >> 1;
                  }

                  if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v25 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v25 = v23;
                  }

                  if (v25)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v25);
                  }

                  v26 = (v17 - __src) >> 2;
                  v27 = (4 * v22);
                  v28 = (4 * v22 - 4 * v26);
                  *v27 = v19;
                  v17 = (v27 + 1);
                  memcpy(v28, v20, v21);
                  v29 = __src;
                  __src = v28;
                  v35 = v17;
                  v36 = 0;
                  if (v29)
                  {
                    operator delete(v29);
                  }
                }

                else
                {
                  *v17 = v19;
                  v17 += 4;
                }

                v35 = v17;
                v15 += 8;
                v18 -= 8;
              }

              while (v18);
            }

            v30 = a5[1];
            if (v30 >= a5[2])
            {
              v31 = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int>&>(a5, &__src);
            }

            else
            {
              std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int>&>(a5, &__src);
              v31 = v30 + 24;
            }

            a5[1] = v31;
            if (__src)
            {
              v35 = __src;
              operator delete(__src);
            }

            ++v12;
          }

          while (v12 != v33);
        }

        sentencepiece::util::Status::Status(a6);
      }

      sentencepiece::NBestSentencePieceText::~NBestSentencePieceText(&v37);
    }

    else
    {
      v37 = 13;
      v32 = std::ostringstream::basic_ostringstream[abi:ne200100](&v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "(", 1);
      MEMORY[0x26D5F9210](&v38, 488);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "ids", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v37, a6);
      v38 = *MEMORY[0x277D82828];
      *(&v38 + *(v38 - 24)) = *(MEMORY[0x277D82828] + 24);
      v39 = MEMORY[0x277D82878] + 16;
      if (v43 < 0)
      {
        operator delete(__p);
      }

      v39 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v40);
      std::ostream::~ostream();
      MEMORY[0x26D5F9330](&v44);
    }
  }
}

void std::vector<std::vector<int>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sentencepiece::SentencePieceProcessor::SampleEncode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, sentencepiece::util::Status *a6@<X8>, float a7@<S0>)
{
  (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sentencepiece::util::Status::~Status(a6);
    if (a5)
    {
      std::vector<std::string>::clear[abi:ne200100](a5);
      sentencepiece::SentencePieceText::SentencePieceText(&v19, 0);
      (*(*a1 + 248))(a1, a2, a3, a4, &v19, a7);
      if (!*a6)
      {
        sentencepiece::util::Status::~Status(a6);
        if (v24)
        {
          v14 = v24 + 8;
        }

        else
        {
          v14 = 0;
        }

        if (v23)
        {
          v15 = *(a5 + 8);
          v16 = 8 * v23;
          do
          {
            v17 = *(*v14 + 48);
            if (v15 >= *(a5 + 16))
            {
              v15 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a5, (v17 & 0xFFFFFFFFFFFFFFFELL));
            }

            else
            {
              std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a5, (v17 & 0xFFFFFFFFFFFFFFFELL));
              ++v15;
            }

            *(a5 + 8) = v15;
            v14 += 8;
            v16 -= 8;
          }

          while (v16);
        }

        sentencepiece::util::Status::Status(a6);
      }

      sentencepiece::SentencePieceText::~SentencePieceText(&v19);
    }

    else
    {
      v19 = 13;
      v18 = std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "(", 1);
      MEMORY[0x26D5F9210](&v20, 506);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "pieces", 6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v19, a6);
      v20 = *MEMORY[0x277D82828];
      *(&v20 + *(v20 - 24)) = *(MEMORY[0x277D82828] + 24);
      v21 = MEMORY[0x277D82878] + 16;
      if (v26 < 0)
      {
        operator delete(__p);
      }

      v21 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v22);
      std::ostream::~ostream();
      MEMORY[0x26D5F9330](&v27);
    }
  }
}

void sentencepiece::SentencePieceProcessor::SampleEncode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, sentencepiece::util::Status *a6@<X8>, float a7@<S0>)
{
  (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sentencepiece::util::Status::~Status(a6);
    if (a5)
    {
      a5[1] = *a5;
      sentencepiece::SentencePieceText::SentencePieceText(&v27, 0);
      (*(*a1 + 248))(a1, a2, a3, a4, &v27, a7);
      if (!*a6)
      {
        sentencepiece::util::Status::~Status(a6);
        if (v32)
        {
          v14 = v32 + 8;
        }

        else
        {
          v14 = 0;
        }

        if (v31)
        {
          v15 = a5[1];
          v16 = 8 * v31;
          do
          {
            v17 = *(*v14 + 64);
            v18 = a5[2];
            if (v15 >= v18)
            {
              v19 = *a5;
              v20 = v15 - *a5;
              v21 = v20 >> 2;
              v22 = (v20 >> 2) + 1;
              if (v22 >> 62)
              {
                std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
              }

              v23 = v18 - v19;
              if (v23 >> 1 > v22)
              {
                v22 = v23 >> 1;
              }

              if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v24 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = v22;
              }

              if (v24)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a5, v24);
              }

              *(4 * v21) = v17;
              v15 = (4 * v21 + 4);
              memcpy(0, v19, v20);
              v25 = *a5;
              *a5 = 0;
              a5[1] = v15;
              a5[2] = 0;
              if (v25)
              {
                operator delete(v25);
              }
            }

            else
            {
              *v15++ = v17;
            }

            a5[1] = v15;
            v14 += 8;
            v16 -= 8;
          }

          while (v16);
        }

        sentencepiece::util::Status::Status(a6);
      }

      sentencepiece::SentencePieceText::~SentencePieceText(&v27);
    }

    else
    {
      v27 = 13;
      v26 = std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "(", 1);
      MEMORY[0x26D5F9210](&v28, 520);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "ids", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v27, a6);
      v28 = *MEMORY[0x277D82828];
      *(&v28 + *(v28 - 24)) = *(MEMORY[0x277D82828] + 24);
      v29 = MEMORY[0x277D82878] + 16;
      if (v34 < 0)
      {
        operator delete(__p);
      }

      v29 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v30);
      std::ostream::~ostream();
      MEMORY[0x26D5F9330](&v35);
    }
  }
}

void sub_2675615F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::SampleEncodeAndScore(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void ***a7@<X6>, sentencepiece::util::Status *a8@<X8>, float a9@<S0>)
{
  (*(*a1 + 88))(a1);
  if (!*a8)
  {
    sentencepiece::util::Status::~Status(a8);
    if (a7)
    {
      v18 = *a7;
      v19 = a7[1];
      while (v19 != v18)
      {
        v19 -= 4;
        v36 = v19;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v36);
      }

      a7[1] = v18;
      sentencepiece::NBestSentencePieceText::NBestSentencePieceText(&v36, 0);
      (*(*a1 + 256))(a1, a2, a3, a4, a5, a6, &v36, a9);
      if (!*a8)
      {
        sentencepiece::util::Status::~Status(a8);
        v20 = *a7;
        v21 = a7[1];
        while (v21 != v20)
        {
          v21 = (v21 - 32);
          v35.__begin_ = v21;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
        }

        a7[1] = &v20->__r_.__value_.__l.__data_;
        std::vector<std::pair<std::vector<std::string>,float>>::reserve(a7, SLODWORD(v39.__locale_));
        if (v40)
        {
          v23 = (v40 + 8);
        }

        else
        {
          v23 = 0;
        }

        if (LODWORD(v39.__locale_))
        {
          v24 = &v23[SLODWORD(v39.__locale_)];
          do
          {
            v25 = *v23;
            memset(&v35, 0, sizeof(v35));
            std::vector<std::string>::reserve(&v35, *(v25 + 56));
            v26 = *(v25 + 64);
            if (v26)
            {
              v27 = v26 + 8;
            }

            else
            {
              v27 = 0;
            }

            v28 = *(v25 + 56);
            if (v28)
            {
              end = v35.__end_;
              v30 = 8 * v28;
              do
              {
                v31 = *(*v27 + 48) & 0xFFFFFFFFFFFFFFFELL;
                if (end >= v35.__end_cap_.__value_)
                {
                  end = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v35, v31);
                }

                else
                {
                  if (*(v31 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(end, *v31, *(v31 + 8));
                  }

                  else
                  {
                    v32 = *v31;
                    end->__r_.__value_.__r.__words[2] = *(v31 + 16);
                    *&end->__r_.__value_.__l.__data_ = v32;
                  }

                  ++end;
                }

                v35.__end_ = end;
                v27 += 8;
                v30 -= 8;
              }

              while (v30);
            }

            LODWORD(v44[0]) = *(v25 + 80);
            v33 = a7[1];
            if (v33 >= a7[2])
            {
              v34 = std::vector<std::pair<std::vector<std::string>,float>>::__emplace_back_slow_path<std::vector<std::string>&,float>(a7, &v35, v44);
            }

            else
            {
              std::vector<std::pair<std::vector<std::string>,float>>::__construct_one_at_end[abi:ne200100]<std::vector<std::string>&,float>(a7, &v35, v44);
              v34 = (v33 + 4);
            }

            a7[1] = v34;
            v44[0] = &v35;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v44);
            ++v23;
          }

          while (v23 != v24);
        }

        sentencepiece::util::Status::Status(a8);
      }

      sentencepiece::NBestSentencePieceText::~NBestSentencePieceText(&v36);
    }

    else
    {
      LODWORD(v36) = 13;
      v22 = std::ostringstream::basic_ostringstream[abi:ne200100](&v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "(", 1);
      MEMORY[0x26D5F9210](&v37, 535);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "pieces", 6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v36, a8);
      v37 = *MEMORY[0x277D82828];
      *(&v37 + *(v37 - 24)) = *(MEMORY[0x277D82828] + 24);
      v38 = MEMORY[0x277D82878] + 16;
      if (v42 < 0)
      {
        operator delete(__p);
      }

      v38 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v39);
      std::ostream::~ostream();
      MEMORY[0x26D5F9330](&v43);
    }
  }
}

void sub_267561A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

void *std::vector<std::pair<std::vector<std::string>,float>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>>(result, a2);
    }

    std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = this->__end_ - this->__begin_;
      v3.__end_cap_.__value_ = this;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, __n);
    }

    std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
  }
}