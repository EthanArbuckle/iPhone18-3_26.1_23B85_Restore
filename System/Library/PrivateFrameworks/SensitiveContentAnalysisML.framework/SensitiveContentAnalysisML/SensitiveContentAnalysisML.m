void sub_1B8A3E5CC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

scml::SignpostInterval *scml::SignpostInterval::SignpostInterval(scml::SignpostInterval *this)
{
  v2 = +[SCMLLog signpost];
  *this = v2;
  *(this + 1) = os_signpost_id_make_with_pointer(v2, this);
  *(this + 5) = 0;
  return this;
}

uint64_t std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t scml::strJoin<std::vector<std::string>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  v9 = *a1;
  v8 = a1[1];
  if (v9 != v8)
  {
    v10 = 0;
    do
    {
      if (v10)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, a2, a3);
      }

      v11 = *(v9 + 23);
      if (v11 >= 0)
      {
        v12 = v9;
      }

      else
      {
        v12 = *v9;
      }

      if (v11 >= 0)
      {
        v13 = *(v9 + 23);
      }

      else
      {
        v13 = *(v9 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v12, v13);
      v9 += 24;
      --v10;
    }

    while (v9 != v8);
  }

  std::ostringstream::str[abi:ne200100](&v15, a4);
  v15 = *MEMORY[0x1E69E54E8];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x1B8CC71A0](&v19);
}

void sub_1B8A3E9F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_1B8A3EB54(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1B8CC71A0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1B8CC7150](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1B8A3EC18(_Unwind_Exception *a1)
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

const void *std::ostringstream::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

id scml::strEscape(scml *this, NSString *a2)
{
  scml::strFromNSString(this, v12);
  if ((v13 & 0x80u) == 0)
  {
    v2 = v12;
  }

  else
  {
    v2 = v12[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v3 = v13;
  }

  else
  {
    v3 = v12[1];
  }

  scml::strEscape(v2, v3, __p);
  v4 = v15;
  v5 = __p[0];
  v6 = __p[1];
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  if ((v4 & 0x80u) == 0)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if ((v4 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = v5;
  }

  v10 = [v7 initWithBytes:v9 length:v8 encoding:4];
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return v10;
}

void sub_1B8A3EF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void scml::strFromNSString(scml *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = this;
  v8 = v4;
  if (v4)
  {
    v5 = [(scml *)v4 UTF8String];
    v6 = [(scml *)v8 lengthOfBytesUsingEncoding:4];
    v7 = v6;
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    a2[23] = v6;
    if (v6)
    {
      memmove(a2, v5, v6);
    }

    a2[v7] = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "(nil)");
  }
}

uint64_t scml::strEscape@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v10[0] = a1;
  v10[1] = a2;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  scml::scml_impl::writeStream<std::string_view>(&v5, v10, 1);
  std::ostringstream::str[abi:ne200100](&v5, a3);
  v5 = *MEMORY[0x1E69E54E8];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v6 = MEMORY[0x1E69E5548] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x1B8CC71A0](&v9);
}

void sub_1B8A3F1D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void *scml::scml_impl::writeStream<std::string_view>(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  if (a3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "", 1);
    a1 = scml::scml_impl::escapeAndWriteStream(v4, *a2, *(a2 + 8));
    v5 = "";
    v6 = 1;
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v5, v6);
  return v4;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1B8CC7090](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
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

  MEMORY[0x1B8CC70A0](v13);
  return a1;
}

void sub_1B8A3F39C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1B8CC70A0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1B8A3F37CLL);
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

void sub_1B8A3F5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *scml::scml_impl::escapeAndWriteStream(void *a1, char *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  for (; a3; --a3)
  {
    v15 = *a2;
    v6 = std::__hash_table<std::__hash_value_type<char,std::string>,std::__unordered_map_hasher<char,std::__hash_value_type<char,std::string>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,std::string>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,std::string>>>::find<char>(scml::scml_impl::escapeAndWriteStream(std::ostream &,std::string_view)::replacements, &v15);
    if (v6)
    {
      v9 = v6[3];
      v7 = v6 + 3;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = v7;
      }

      else
      {
        v11 = v8;
      }

      if (v10 >= 0)
      {
        v12 = *(v7 + 23);
      }

      else
      {
        v12 = v7[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v11, v12);
    }

    else
    {
      v16[0] = v15;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v16, 1);
    }

    ++a2;
  }

  v13 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1B8A3F7C8(_Unwind_Exception *a1)
{
  v4 = v2 + 104;
  v5 = -128;
  while (1)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    v4 -= 32;
    v5 += 32;
    if (!v5)
    {
      MEMORY[0x1B8CC7230](v1, 0x10A0C408EF24B1CLL);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<char,std::string>,std::__unordered_map_hasher<char,std::__hash_value_type<char,std::string>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,std::string>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,std::string>>>::find<char>(void *a1, char *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 16) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1B8A3F920()
{
  result = qword_1EDB75700;
  if (!qword_1EDB75700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB75700);
  }

  return result;
}

void *sub_1B8A3F974(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97210, &qword_1B8AFB570);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_1B8A3F9FC(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_1B8AF0778();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1B8A3FAC4(char *a1, int64_t a2, char a3)
{
  result = sub_1B8A3FAE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8A3FAE4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97210, &qword_1B8AFB570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B8A3FC1C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(v4 + 40);
  sub_1B8AF1018();
  a3(v12, a1, a2);
  v9 = sub_1B8AF1038();

  return a4(a1, a2, v9);
}

unint64_t sub_1B8A3FCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B8AF0EA8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B8A3FD68()
{
  result = qword_1EDB756F8;
  if (!qword_1EDB756F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA97208, &qword_1B8AFB240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB756F8);
  }

  return result;
}

id scml::MultiwordGazetteer::replaceMatches(std::mutex **this, NSString *a2, NSString *a3)
{
  v3 = scml::MultiwordGazetteer::Impl::replaceMatches(*this, a2, a3);

  return v3;
}

NSString *scml::MultiwordGazetteer::Impl::replaceMatches(std::mutex *this, NSString *a2, NSString *a3)
{
  v5 = a2;
  v6 = a3;
  std::mutex::lock(this);
  scml::strGetWordRanges(v5, v18);
  scml::MultiwordGazetteer::Impl::longestNonOverlappingGazetteerMatches(this, v5, v18, &__p);
  v8 = 126 - 2 * __clz((v17 - __p) >> 4);
  if (v17 == __p)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  *&v10 = std::__introsort<std::_ClassicAlgPolicy,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &,_NSRange*,false>(__p, v17, &v19, v9, 1, v7).n128_u64[0];
  v11 = __p;
  v12 = v17;
  if (__p == v17)
  {
    v13 = v5;
  }

  else
  {
    do
    {
      v13 = [(NSString *)v5 stringByReplacingCharactersInRange:v11->n128_u64[0] withString:v11->n128_u64[1], v6, v10];

      ++v11;
      v5 = v13;
    }

    while (v11 != v12);
  }

  v14 = v13;
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  std::mutex::unlock(this);

  return v14;
}

void sub_1B8A3FF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  std::mutex::unlock(v15);

  _Unwind_Resume(a1);
}

void scml::strGetWordRanges(scml *this@<X0>, void *a2@<X8>)
{
  v4 = this;
  {
    scml::strGetWordRanges(NSString *)::regex = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\b" options:64 error:0];
  }

  {
    scml::strGetWordRanges(NSString *)::wordRegex = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^(\\w|')+$" options:0 error:0];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x4812000000;
  v17 = __Block_byref_object_copy__8;
  v18 = __Block_byref_object_dispose__9;
  v19 = "";
  v21 = 0;
  v22 = 0;
  __p = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v5 = scml::strGetWordRanges(NSString *)::regex;
  v6 = [(scml *)v4 length];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN4scml16strGetWordRangesEP8NSString_block_invoke;
  v9[3] = &unk_1E7EB3CE8;
  v11 = v13;
  v7 = v4;
  v10 = v7;
  v12 = &v14;
  [v5 enumerateMatchesInString:v7 options:0 range:0 usingBlock:{v6, v9}];
  v8 = v15;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange*,_NSRange*>(a2, v8[6], v8[7], (v8[7] - v8[6]) >> 4);

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v14, 8);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }
}

void sub_1B8A401C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{

  _Unwind_Resume(a1);
}

void ___ZN4scml16strGetWordRangesEP8NSString_block_invoke(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = [v22 range] - *(*(*(a1 + 40) + 8) + 24);
  v4 = [*(a1 + 32) substringWithRange:?];
  if (scml::regexSearch(scml::strGetWordRanges(NSString *)::wordRegex, v4, v5))
  {
    v6 = *(*(a1 + 48) + 8);
    v7 = *(*(a1 + 40) + 8);
    v9 = v6[7];
    v8 = v6[8];
    if (v9 >= v8)
    {
      v11 = v6[6];
      v12 = v9 - v11;
      v13 = (v9 - v11) >> 4;
      v14 = v13 + 1;
      if ((v13 + 1) >> 60)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v15 = v8 - v11;
      if (v15 >> 3 > v14)
      {
        v14 = v15 >> 3;
      }

      v16 = v15 >= 0x7FFFFFFFFFFFFFF0;
      v17 = 0xFFFFFFFFFFFFFFFLL;
      if (!v16)
      {
        v17 = v14;
      }

      if (v17)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>((v6 + 6), v17);
      }

      v18 = (16 * v13);
      *v18 = *(v7 + 24);
      v18[1] = v3;
      v10 = 16 * v13 + 16;
      memcpy(0, v11, v12);
      v19 = v6[6];
      v6[6] = 0;
      v6[7] = v10;
      v6[8] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v9 = *(v7 + 24);
      *(v9 + 1) = v3;
      v10 = (v9 + 16);
    }

    v6[7] = v10;
  }

  v20 = [v22 range];
  [v22 range];
  *(*(*(a1 + 40) + 8) + 24) = v21 + v20;
}

BOOL scml::regexSearch(scml *this, NSRegularExpression *a2, NSString *a3)
{
  v4 = this;
  v5 = a2;
  v6 = [(scml *)v4 rangeOfFirstMatchInString:v5 options:0 range:0, [(NSRegularExpression *)v5 length]]!= 0x7FFFFFFFFFFFFFFFLL;

  return v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange*,_NSRange*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<_NSRange>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B8A4050C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<_NSRange>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void scml::MultiwordGazetteer::Impl::longestNonOverlappingGazetteerMatches(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, const void **a4@<X8>)
{
  v34 = a2;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v7 = a3[1] - *a3;
  if (v7)
  {
    v8 = v7 >> 4;
    do
    {
      v9 = scml::MultiwordGazetteer::Impl::rangesStartForLongestGazetteerMatch(a1, v34, a3, v8);
      v10 = v9;
      if (v9 < v8)
      {
        v11 = *(*a3 + 16 * v9);
        v12 = *a3 + 16 * v8;
        v13 = *(v12 - 16);
        v14 = *(v12 - 8);
        v15 = [v34 substringWithRange:{v13, v14}];
        v17 = scml::strEndsWith(v15, &cfstr_S_4.isa, v16);
        v18 = v14 + v13;

        v19 = v18 - 2;
        if (!v17)
        {
          v19 = v18;
        }

        v20 = v19 - v11;
        v22 = a4[1];
        v21 = a4[2];
        if (v22 >= v21)
        {
          v24 = *a4;
          v25 = v22 - *a4;
          v26 = v25 >> 4;
          v27 = (v25 >> 4) + 1;
          if (v27 >> 60)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v28 = v21 - v24;
          if (v28 >> 3 > v27)
          {
            v27 = v28 >> 3;
          }

          v29 = v28 >= 0x7FFFFFFFFFFFFFF0;
          v30 = 0xFFFFFFFFFFFFFFFLL;
          if (!v29)
          {
            v30 = v27;
          }

          if (v30)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a4, v30);
          }

          v31 = (16 * v26);
          *v31 = v11;
          v31[1] = v20;
          v23 = 16 * v26 + 16;
          v32 = &v31[-2 * (v25 >> 4)];
          memcpy(v32, v24, v25);
          v33 = *a4;
          *a4 = v32;
          a4[1] = v23;
          a4[2] = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v22 = v11;
          *(v22 + 1) = v20;
          v23 = (v22 + 16);
        }

        a4[1] = v23;
        v8 = v10 + 1;
      }

      --v8;
    }

    while (v8);
  }
}

void sub_1B8A40724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

unint64_t scml::MultiwordGazetteer::Impl::rangesStartForLongestGazetteerMatch(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v22 = a2;
  v6 = 0;
  v7 = &stru_1F374C020;
  if (a4 && *(a1 + 64))
  {
    v6 = 0;
    v8 = 16 * a4;
    v9 = &stru_1F374C020;
    v10 = 2;
    while (1)
    {
      v11 = [v22 substringWithRange:{*(*a3 + v8 - 16), *(*a3 + v8 - 8)}];
      if ([(__CFString *)v9 length])
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v11, v9];
      }

      else if (scml::strEndsWith(v11, &cfstr_S_4.isa, v12))
      {
        v13 = [v11 substringToIndex:{objc_msgSend(v11, "length") - 2}];
      }

      else
      {
        v13 = v11;
      }

      v7 = v13;

      v15 = scml::MultiwordGazetteer::Impl::fullMatchString(a1, &v7->isa, v14);

      if (!v15)
      {
        break;
      }

      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s %@", "startsentinel", v7];
      v18 = scml::MultiwordGazetteer::Impl::fullMatchString(a1, v16, v17);

      if (v18)
      {
        v6 = v10 - 1;
      }

      if (v10 <= a4)
      {
        v8 -= 16;
        v9 = v7;
        if (v10++ <= *(a1 + 64))
        {
          continue;
        }
      }

      goto LABEL_17;
    }
  }

LABEL_17:

  return a4 - v6;
}

BOOL scml::strEndsWith(scml *this, NSString *a2, NSString *a3)
{
  v4 = this;
  v5 = a2;
  if ([(NSString *)v5 length])
  {
    v7 = [(scml *)v4 rangeOfString:v5];
    v8 = v7 != 0x7FFFFFFFFFFFFFFFLL && v7 + v6 == [(scml *)v4 length];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &,_NSRange*,false>(unint64_t *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 4;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v48 = a2[-1].n128_u64[0];
        v46 = a2 - 1;
        if (v48 <= *v12)
        {
          return result;
        }

LABEL_77:
        v77 = *v12;
        *v12 = *v46;
        result = v77;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v43 = (v12 + 2);
      v44 = v12[2];
      v47 = a2[-1].n128_u64[0];
      v46 = a2 - 1;
      v45 = v47;
      if (v44 > *v12)
      {
        if (v45 > v44)
        {
          goto LABEL_77;
        }

        v76 = *v12;
        *v12 = *v43;
        result = v76;
        *v43 = v76;
        if (v46->n128_u64[0] <= v12[2])
        {
          return result;
        }

        result = *v43;
        *v43 = *v46;
LABEL_78:
        *v46 = result;
        return result;
      }

      if (v45 <= v44)
      {
        return result;
      }

      result = *v43;
      *v43 = *v46;
      *v46 = result;
      goto LABEL_109;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &,_NSRange*,0>(v12, v12 + 1, v12 + 4, v12 + 3, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &,_NSRange*>(v12, a2->n128_u64);
      }

      else if (v12 != a2)
      {
        v52 = (v12 + 2);
        while (v52 != a2)
        {
          v53 = v52;
          v54 = a1[2];
          if (v54 > *a1)
          {
            v55 = a1[3];
            v56 = v53;
            do
            {
              result = v56[-1];
              *v56 = result;
              v57 = v56[-2].n128_u64[0];
              --v56;
            }

            while (v54 > v57);
            v56->n128_u64[0] = v54;
            v56->n128_u64[1] = v55;
          }

          v52 = v53 + 1;
          a1 = v53;
        }
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &,_NSRange*,_NSRange*>(v12, a2->n128_u64, a2->n128_u64, a3);
      }

      return result;
    }

    v16 = &v12[2 * (v15 >> 1)];
    v17 = v16;
    v18 = v9->n128_u64[0];
    if (v15 >= 0x81)
    {
      v19 = *v16;
      if (*v16 <= *v12)
      {
        if (v18 > v19)
        {
          v61 = *v16;
          *v16 = *v9;
          *v9 = v61;
          if (*v16 > *v12)
          {
            v62 = *v12;
            *v12 = *v16;
            *v16 = v62;
          }
        }
      }

      else
      {
        if (v18 <= v19)
        {
          v65 = *v12;
          *v12 = *v16;
          *v16 = v65;
          if (v9->n128_u64[0] <= *v16)
          {
            goto LABEL_28;
          }

          v59 = *v16;
          *v16 = *v9;
        }

        else
        {
          v59 = *v12;
          *v12 = *v9;
        }

        *v9 = v59;
      }

LABEL_28:
      v21 = (v12 + 2);
      v22 = (v16 - 2);
      v23 = *(v16 - 2);
      v24 = v10->n128_u64[0];
      if (v23 <= v12[2])
      {
        if (v24 > v23)
        {
          v66 = *v22;
          *v22 = *v10;
          *v10 = v66;
          if (v22->n128_u64[0] > v21->n128_u64[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 <= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (v10->n128_u64[0] <= v22->n128_u64[0])
          {
            goto LABEL_40;
          }

          v68 = *v22;
          *v22 = *v10;
          v25 = v68;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = (v12 + 4);
      v31 = v16[2];
      v29 = (v16 + 2);
      v30 = v31;
      v32 = v11->n128_u64[0];
      if (v31 <= v12[4])
      {
        if (v32 > v30)
        {
          v69 = *v29;
          *v29 = *v11;
          *v11 = v69;
          if (v29->n128_u64[0] > v28->n128_u64[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 <= v30)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (v11->n128_u64[0] <= v29->n128_u64[0])
          {
            goto LABEL_49;
          }

          v70 = *v29;
          *v29 = *v11;
          v33 = v70;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = *v17;
      v37 = v29->n128_u64[0];
      if (*v17 <= v22->n128_u64[0])
      {
        if (v37 > v36)
        {
          v72 = *v17;
          *v17 = *v29;
          *v29 = v72;
          if (*v17 > v22->n128_u64[0])
          {
            v73 = *v22;
            *v22 = *v17;
            *v17 = v73;
          }
        }

        goto LABEL_58;
      }

      if (v37 <= v36)
      {
        v74 = *v22;
        *v22 = *v17;
        *v17 = v74;
        if (v29->n128_u64[0] <= *v17)
        {
LABEL_58:
          v75 = *v12;
          *v12 = *v17;
          *v17 = v75;
          goto LABEL_59;
        }

        v71 = *v17;
        *v17 = *v29;
      }

      else
      {
        v71 = *v22;
        *v22 = *v29;
      }

      *v29 = v71;
      goto LABEL_58;
    }

    v20 = *v12;
    if (*v12 <= *v17)
    {
      if (v18 > v20)
      {
        v63 = *v12;
        *v12 = *v9;
        *v9 = v63;
        if (*v12 > *v17)
        {
          v64 = *v17;
          *v17 = *v12;
          *v12 = v64;
        }
      }
    }

    else
    {
      if (v18 > v20)
      {
        v60 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v60;
        goto LABEL_59;
      }

      v67 = *v17;
      *v17 = *v12;
      *v12 = v67;
      if (v9->n128_u64[0] > *v12)
      {
        v60 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *(v12 - 2) <= *v12)
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,_NSRange *,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &>(v12, a2->n128_u64);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,_NSRange *,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &>(v12, a2);
    if ((v40 & 1) == 0)
    {
      goto LABEL_64;
    }

    v41 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &,_NSRange*>(v12, v38, v39);
    v12 = (v38 + 1);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &,_NSRange*>((v38 + 1), a2, v42))
    {
      a4 = -v14;
      a2 = v38;
      if (v41)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v41)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &,_NSRange*,false>(a1, v38, a3, -v14, a5 & 1);
      v12 = (v38 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v43 = (v12 + 2);
  v49 = v12[2];
  v50 = (v12 + 4);
  v51 = v12[4];
  if (v49 <= *v12)
  {
    if (v51 > v49)
    {
      result = *v43;
      *v43 = *v50;
      *v50 = result;
      if (v12[2] > *v12)
      {
        v79 = *v12;
        *v12 = *v43;
        result = v79;
        *v43 = v79;
      }
    }
  }

  else
  {
    if (v51 > v49)
    {
      v78 = *v12;
      *v12 = *v50;
      result = v78;
      goto LABEL_105;
    }

    v80 = *v12;
    *v12 = *v43;
    result = v80;
    *v43 = v80;
    if (v51 > v12[2])
    {
      result = *v43;
      *v43 = *v50;
LABEL_105:
      *v50 = result;
    }
  }

  if (v9->n128_u64[0] <= v50->n128_u64[0])
  {
    return result;
  }

  result = *v50;
  *v50 = *v9;
  *v9 = result;
  if (v50->n128_u64[0] <= v43->n128_u64[0])
  {
    return result;
  }

  result = *v43;
  *v43 = *v50;
  *v50 = result;
LABEL_109:
  if (v12[2] > *v12)
  {
    v81 = *v12;
    *v12 = *v43;
    result = v81;
    *v43 = v81;
  }

  return result;
}

uint64_t scml::anonymous namespace::AsyncResponder::finish(scml::_anonymous_namespace_::AsyncResponder *this)
{
  v2 = *(this + 16) + 1;
  *(this + 16) = v2;
  if ((*(this + 32) & 1) == 0)
  {
    if (v2 == (*(this + 6) - *(this + 5)) >> 5 || *(this + 3))
    {
      goto LABEL_23;
    }

    if (*(this + 8))
    {
      goto LABEL_2;
    }

    if (![*(this + 2) safe])
    {
LABEL_23:
      if (!*(this + 3))
      {
        v6 = *(this + 2);
      }

      (*(*this + 16))();
      *(this + 32) = 1;
      v7 = *(this + 5);
      if (v7)
      {
        v8 = *(this + 6);
        v9 = *(this + 5);
        if (v8 != v7)
        {
          do
          {
          }

          while (v8 != v7);
          v9 = *(this + 5);
        }

        *(this + 6) = v7;
        operator delete(v9);
      }

      JUMPOUT(0x1B8CC7230);
    }

    LODWORD(v2) = *(this + 16);
  }

LABEL_2:
  v3 = *(this + 5);
  v10 = this;
  v4 = *(v3 + 32 * v2 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v10);
}

void scml::SignpostInterval::~SignpostInterval(scml::SignpostInterval *this)
{
  v2 = *(this + 5);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 16);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

BOOL sub_1B8A41808(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1B8A41C7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8A41CB4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *sub_1B8A41CC0()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1B8A41D10()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B8A41D70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1B8A41FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8AEFED8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B8A4206C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B8AEFED8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8A42124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8AF04E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1B8A421EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B8AF04E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_1B8A422A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1B8A42304@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B8A4235C(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1B8A424C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectorImplResult_people;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B8A42524()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8A4257C()
{
  sub_1B8AD9C00(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1B8A425BC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8A42608()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8A42640()
{
  sub_1B8ADA374(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1B8A4270C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1B8A42798@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t getEnumTagSinglePayload for TextImageAlignmentCalculator.EmbeddingSizesDoNotMatch(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextImageAlignmentCalculator.EmbeddingSizesDoNotMatch(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1B8A4282C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  return sub_1B8AD0514();
}

unint64_t SCML::extractLocalPeaks@<X0>(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = *(a1 + 2);
  v5 = *(a1 + 3);
  v7 = *(a1 + 4);
  result = std::vector<float>::vector[abi:ne200100](a3, v7 * v6 * v5);
  v30 = v6;
  if (v6 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = *result;
    v12 = (a2 - 1) / 2;
    v14 = *(a1 + 3);
    v13 = *(a1 + 4);
    v15 = v12 + 1;
    do
    {
      if (v5 >= 1)
      {
        v16 = 0;
        LODWORD(result) = (a2 - 1) / -2;
        do
        {
          v17 = v15 + v16;
          if ((v15 + v16) >= v5)
          {
            v17 = v5;
          }

          if (v7 >= 1)
          {
            v18 = 0;
            v19 = *a1;
            v20 = (v10 * v14 + v16) * v13;
            v21 = (a2 - 1) / -2;
            do
            {
              v22 = *(v19 + 4 * (v20 + v18));
              if (((v16 - v12) & ~((v16 - v12) >> 31)) >= v17)
              {
LABEL_23:
                *(v11 + 4 * (v20 + v18)) = v22;
              }

              else
              {
                v23 = v15 + v18;
                if (v7 < v15 + v18)
                {
                  v23 = v7;
                }

                v24 = v23;
                v25 = v13 * (v9 + (result & ~(result >> 31)));
                v26 = (v16 - v12) & ~((v16 - v12) >> 31);
                while (((v18 - v12) & ~((v18 - v12) >> 31)) >= v24)
                {
LABEL_22:
                  ++v26;
                  v25 += v13;
                  if (v26 >= v17)
                  {
                    goto LABEL_23;
                  }
                }

                v27 = v21 & ~(v21 >> 31);
                while (1)
                {
                  v28 = *(v19 + 4 * (v25 + v27));
                  if (v22 <= v28)
                  {
                    v29 = v16 < v26;
                    if (v18 != v27)
                    {
                      v29 = 0;
                    }

                    if (v18 < v27 || v22 < v28 || v29)
                    {
                      break;
                    }
                  }

                  if (++v27 >= v24)
                  {
                    goto LABEL_22;
                  }
                }
              }

              ++v18;
              ++v21;
            }

            while (v18 != v7);
          }

          ++v16;
          result = (result + 1);
        }

        while (v16 != v5);
      }

      ++v10;
      v9 += v14;
    }

    while (v10 != v30);
  }

  return result;
}

void SCML::topDetections(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v42 = HIDWORD(v6);
  if (SHIDWORD(v6) < 1)
  {
    v10 = 0;
    v38 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = v6 & 0x7FFFFFFF;
    v43 = v6;
    do
    {
      if (v7 >= 1)
      {
        for (i = 0; i != v7; ++i)
        {
          if (v6 >= 1)
          {
            v14 = 0;
            v15 = *(a1 + 16);
            v16 = i + v11 * v15;
            v17 = *(a1 + 12) * v15;
            v18 = 0.0;
            v19 = -1;
            do
            {
              if (*(*a1 + 4 * v16) > v18)
              {
                v18 = *(*a1 + 4 * v16);
                v19 = v14;
              }

              ++v14;
              v16 += v17;
            }

            while (v12 != v14);
            if ((v19 & 0x80000000) == 0)
            {
              v21 = *(a2 + 12);
              v20 = *(a2 + 16);
              v22 = *(*a2 + 4 * (i + v20 * v11));
              v23 = *(*a2 + 4 * (i + (v21 + v11) * v20));
              v24 = v11 + 2 * v21;
              v25 = v23;
              v26 = v22;
              v27 = (*(*a2 + 4 * (i + (v24 + v21) * v20)) - v23);
              v28 = (*(*a2 + 4 * (i + v24 * v20)) - v22);
              v29 = a4[2];
              if (v10 >= v29)
              {
                v30 = *a4;
                v31 = v10 - *a4;
                v32 = 0xCCCCCCCCCCCCCCCDLL * (v31 >> 3) + 1;
                if (v32 > 0x666666666666666)
                {
                  std::vector<float>::__throw_length_error[abi:ne200100]();
                }

                v33 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - v30) >> 3);
                if (2 * v33 > v32)
                {
                  v32 = 2 * v33;
                }

                if (v33 >= 0x333333333333333)
                {
                  v34 = 0x666666666666666;
                }

                else
                {
                  v34 = v32;
                }

                if (v34)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<SCML::BoxInfo>>(a4, v34);
                }

                v35 = 8 * (v31 >> 3);
                *v35 = v18;
                *(v35 + 4) = v19;
                *(v35 + 8) = v25;
                *(v35 + 16) = v26;
                *(v35 + 24) = v27;
                *(v35 + 32) = v28;
                v10 = v35 + 40;
                v36 = v35 - v31;
                memcpy((v35 - v31), v30, v31);
                v37 = *a4;
                *a4 = v36;
                a4[1] = v10;
                a4[2] = 0;
                if (v37)
                {
                  operator delete(v37);
                }

                LODWORD(v6) = v43;
              }

              else
              {
                *v10 = v18;
                *(v10 + 4) = v19;
                *(v10 + 8) = v25;
                *(v10 + 16) = v26;
                *(v10 + 24) = v27;
                *(v10 + 32) = v28;
                v10 += 40;
              }

              a4[1] = v10;
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v42);
    v38 = *a4;
    v4 = a3;
  }

  v39 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v10 - v38) >> 3));
  if (v10 == v38)
  {
    v40 = 0;
  }

  else
  {
    v40 = v39;
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 3) > v4)
  {
    std::vector<SCML::BoxInfo>::resize(a4, v4);
  }
}

void sub_1B8A42D3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<SCML::BoxInfo>::resize(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<SCML::BoxInfo>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 40 * a2;
  }
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B8A42E94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7EB39E8, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SCML::BoxInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,SCML::anonymous namespace::BoxDataDescendingScoreComparator &,SCML::BoxInfo *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v7 = a2 - 40;
    v8 = a2 - 80;
    v9 = a2 - 120;
    v10 = a1;
    v307 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v10;
          v11 = a2 - v10;
          v12 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v10) >> 3);
          v13 = v12 - 2;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                if (v212)
                {
                  if (v213)
                  {
                    goto LABEL_110;
                  }

                  v300 = *v10;
                  v301 = *(v10 + 16);
                  v313 = *(v10 + 32);
                  v311 = v300;
                  v312 = v301;
                  v302 = *(v10 + 56);
                  *v10 = *(v10 + 40);
                  *(v10 + 16) = v302;
                  *(v10 + 32) = *(v10 + 72);
                  v303 = v312;
                  *(v10 + 40) = v311;
                  *(v10 + 56) = v303;
                  *(v10 + 72) = v313;
                  {
                    return;
                  }

                  v218 = *(v10 + 40);
                  v219 = *(v10 + 56);
                  v311 = v218;
                  v312 = v219;
                  v220 = *(v10 + 72);
                  v313 = v220;
                  v305 = *v7;
                  v304 = *(v7 + 16);
                  *(v10 + 72) = *(v7 + 32);
                  *(v10 + 40) = v305;
                  *(v10 + 56) = v304;
LABEL_111:
                  *(v7 + 32) = v220;
                  *v7 = v218;
                  *(v7 + 16) = v219;
                  return;
                }

                if (!v213)
                {
                  return;
                }

                v283 = *(v10 + 56);
                v311 = *(v10 + 40);
                v282 = v311;
                v312 = v283;
                v313 = *(v10 + 72);
                v284 = v313;
                v286 = *v7;
                v285 = *(v7 + 16);
                *(v10 + 72) = *(v7 + 32);
                *(v10 + 40) = v286;
                *(v10 + 56) = v285;
                *(v7 + 32) = v284;
                *v7 = v282;
                *(v7 + 16) = v283;
LABEL_167:
                {
                  v287 = *v10;
                  v288 = *(v10 + 16);
                  v313 = *(v10 + 32);
                  v311 = v287;
                  v312 = v288;
                  v289 = *(v10 + 56);
                  *v10 = *(v10 + 40);
                  *(v10 + 16) = v289;
                  *(v10 + 32) = *(v10 + 72);
                  v290 = v312;
                  *(v10 + 40) = v311;
                  *(v10 + 56) = v290;
                  *(v10 + 72) = v313;
                }

                return;
              case 4:

                return;
              case 5:
                {
                  return;
                }

                v199 = *(v10 + 136);
                v311 = *(v10 + 120);
                v198 = v311;
                v312 = v199;
                v313 = *(v10 + 152);
                v200 = v313;
                v202 = *v7;
                v201 = *(v7 + 16);
                *(v10 + 152) = *(v7 + 32);
                *(v10 + 120) = v202;
                *(v10 + 136) = v201;
                *(v7 + 32) = v200;
                *v7 = v198;
                *(v7 + 16) = v199;
                {
                  return;
                }

                v203 = *(v10 + 112);
                v205 = *(v10 + 80);
                v204 = *(v10 + 96);
                v206 = *(v10 + 136);
                *(v10 + 80) = *(v10 + 120);
                *(v10 + 96) = v206;
                *(v10 + 112) = *(v10 + 152);
                *(v10 + 120) = v205;
                *(v10 + 136) = v204;
                *(v10 + 152) = v203;
                {
                  return;
                }

                v207 = *(v10 + 72);
                v208 = *(v10 + 56);
                v209 = *(v10 + 40);
                v210 = *(v10 + 96);
                *(v10 + 40) = *(v10 + 80);
                *(v10 + 56) = v210;
                *(v10 + 72) = *(v10 + 112);
                *(v10 + 80) = v209;
                *(v10 + 96) = v208;
                *(v10 + 112) = v207;
                goto LABEL_167;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return;
            }

            if (v12 == 2)
            {
              {
                return;
              }

LABEL_110:
              v214 = *v10;
              v215 = *(v10 + 16);
              v313 = *(v10 + 32);
              v311 = v214;
              v312 = v215;
              v216 = *v7;
              v217 = *(v7 + 16);
              *(v10 + 32) = *(v7 + 32);
              *v10 = v216;
              *(v10 + 16) = v217;
              v218 = v311;
              v219 = v312;
              v220 = v313;
              goto LABEL_111;
            }
          }

          if (v11 <= 959)
          {
            v221 = v10 + 40;
            v222 = v10 == a2 || v221 == a2;
            v223 = v222;
            if (a4)
            {
              if ((v223 & 1) == 0)
              {
                v224 = 0;
                v225 = v10;
                do
                {
                  v226 = v225;
                  v225 = v221;
                  {
                    v227 = *v225;
                    v228 = *(v225 + 16);
                    v313 = *(v225 + 32);
                    v311 = v227;
                    v312 = v228;
                    v229 = v224;
                    while (1)
                    {
                      v230 = v10 + v229;
                      v231 = *(v10 + v229 + 16);
                      *(v230 + 40) = *(v10 + v229);
                      *(v230 + 56) = v231;
                      *(v230 + 72) = *(v10 + v229 + 32);
                      if (!v229)
                      {
                        break;
                      }

                      v229 -= 40;
                      {
                        v232 = v10 + v229 + 40;
                        goto LABEL_130;
                      }
                    }

                    v232 = v10;
LABEL_130:
                    v233 = v311;
                    v234 = v312;
                    *(v232 + 32) = v313;
                    *v232 = v233;
                    *(v232 + 16) = v234;
                    a2 = v307;
                  }

                  v221 = v225 + 40;
                  v224 += 40;
                }

                while (v225 + 40 != a2);
              }
            }

            else if ((v223 & 1) == 0)
            {
              v291 = v10 - 40;
              do
              {
                v292 = a1;
                a1 = v221;
                {
                  v293 = *a1;
                  v294 = *(a1 + 16);
                  v313 = *(a1 + 32);
                  v311 = v293;
                  v312 = v294;
                  v295 = v291;
                  do
                  {
                    v296 = *(v295 + 56);
                    *(v295 + 80) = *(v295 + 40);
                    *(v295 + 96) = v296;
                    *(v295 + 112) = *(v295 + 72);
                    v295 -= 40;
                  }

                  while (v297);
                  v298 = v311;
                  v299 = v312;
                  *(v295 + 112) = v313;
                  *(v295 + 80) = v298;
                  *(v295 + 96) = v299;
                }

                v221 = a1 + 40;
                v291 += 40;
              }

              while (a1 + 40 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v10 != a2)
            {
              v235 = v13 >> 1;
              v236 = v13 >> 1;
              do
              {
                v237 = v236;
                if (v235 >= v236)
                {
                  v238 = (2 * v236) | 1;
                  v239 = a1 + 40 * v238;
                  {
                    v239 += 40;
                    v238 = 2 * v237 + 2;
                  }

                  v240 = a1 + 40 * v237;
                  {
                    v241 = *v240;
                    v242 = *(v240 + 16);
                    v313 = *(v240 + 32);
                    v311 = v241;
                    v312 = v242;
                    do
                    {
                      v243 = v239;
                      v244 = *v239;
                      v245 = *(v239 + 16);
                      *(v240 + 32) = *(v239 + 32);
                      *v240 = v244;
                      *(v240 + 16) = v245;
                      if (v235 < v238)
                      {
                        break;
                      }

                      v246 = (2 * v238) | 1;
                      v239 = a1 + 40 * v246;
                      v247 = 2 * v238 + 2;
                      {
                        v239 += 40;
                        v246 = v247;
                      }

                      v240 = v243;
                      v238 = v246;
                    }

                    v248 = v311;
                    v249 = v312;
                    *(v243 + 32) = v313;
                    *v243 = v248;
                    *(v243 + 16) = v249;
                  }
                }

                v236 = v237 - 1;
              }

              while (v237);
              v250 = 0xCCCCCCCCCCCCCCCDLL * (v11 >> 3);
              v251 = v307;
              do
              {
                v252 = 0;
                v253 = *a1;
                v254 = *(a1 + 16);
                v310 = *(a1 + 32);
                v308 = v253;
                v309 = v254;
                v255 = a1;
                do
                {
                  v256 = v255 + 40 * v252;
                  v257 = v256 + 40;
                  v258 = (2 * v252) | 1;
                  v259 = 2 * v252 + 2;
                  if (v259 < v250)
                  {
                    v260 = v256 + 80;
                    {
                      v257 = v260;
                      v258 = v259;
                    }
                  }

                  v261 = *v257;
                  v262 = *(v257 + 16);
                  *(v255 + 32) = *(v257 + 32);
                  *v255 = v261;
                  *(v255 + 16) = v262;
                  v255 = v257;
                  v252 = v258;
                }

                while (v258 <= ((v250 - 2) >> 1));
                v263 = v251 - 40;
                if (v257 == v263)
                {
                  v268 = v263;
                  v279 = v308;
                  v280 = v309;
                  *(v257 + 32) = v310;
                  *v257 = v279;
                  *(v257 + 16) = v280;
                }

                else
                {
                  v264 = *v263;
                  v265 = *(v263 + 16);
                  *(v257 + 32) = *(v263 + 32);
                  *v257 = v264;
                  *(v257 + 16) = v265;
                  v266 = v308;
                  v267 = v309;
                  *(v263 + 32) = v310;
                  *v263 = v266;
                  *(v263 + 16) = v267;
                  v268 = v263;
                  v269 = v257 - a1 + 40;
                  if (v269 >= 41)
                  {
                    v270 = (-2 - 0x3333333333333333 * (v269 >> 3)) >> 1;
                    v271 = a1 + 40 * v270;
                    {
                      v272 = *v257;
                      v273 = *(v257 + 16);
                      v313 = *(v257 + 32);
                      v311 = v272;
                      v312 = v273;
                      do
                      {
                        v274 = v271;
                        v275 = *v271;
                        v276 = *(v271 + 16);
                        *(v257 + 32) = *(v271 + 32);
                        *v257 = v275;
                        *(v257 + 16) = v276;
                        if (!v270)
                        {
                          break;
                        }

                        v270 = (v270 - 1) >> 1;
                        v271 = a1 + 40 * v270;
                        v257 = v274;
                      }

                      v277 = v311;
                      v278 = v312;
                      *(v274 + 32) = v313;
                      *v274 = v277;
                      *(v274 + 16) = v278;
                    }
                  }
                }

                v281 = v250-- <= 2;
                v251 = v268;
              }

              while (!v281);
            }

            return;
          }

          v14 = v12 >> 1;
          v15 = v10 + 40 * v14;
          if (v11 >= 0x1401)
          {
            if (v16)
            {
              if (v17)
              {
                v18 = *a1;
                v19 = *(a1 + 16);
                v313 = *(a1 + 32);
                v311 = v18;
                v312 = v19;
                v20 = *v7;
                v21 = *(v7 + 16);
                *(a1 + 32) = *(v7 + 32);
                *a1 = v20;
                *(a1 + 16) = v21;
              }

              else
              {
                v52 = *a1;
                v53 = *(a1 + 16);
                v313 = *(a1 + 32);
                v311 = v52;
                v312 = v53;
                v54 = *v15;
                v55 = *(v15 + 16);
                *(a1 + 32) = *(v15 + 32);
                *a1 = v54;
                *(a1 + 16) = v55;
                v56 = v311;
                v57 = v312;
                *(v15 + 32) = v313;
                *v15 = v56;
                *(v15 + 16) = v57;
                {
                  goto LABEL_27;
                }

                v58 = *v15;
                v59 = *(v15 + 16);
                v313 = *(v15 + 32);
                v311 = v58;
                v312 = v59;
                v60 = *v7;
                v61 = *(v7 + 16);
                *(v15 + 32) = *(v7 + 32);
                *v15 = v60;
                *(v15 + 16) = v61;
              }

              v62 = v311;
              v63 = v312;
              *(v7 + 32) = v313;
              *v7 = v62;
              *(v7 + 16) = v63;
            }

            else if (v17)
            {
              v28 = *v15;
              v29 = *(v15 + 16);
              v313 = *(v15 + 32);
              v311 = v28;
              v312 = v29;
              v30 = *v7;
              v31 = *(v7 + 16);
              *(v15 + 32) = *(v7 + 32);
              *v15 = v30;
              *(v15 + 16) = v31;
              v32 = v311;
              v33 = v312;
              *(v7 + 32) = v313;
              *v7 = v32;
              *(v7 + 16) = v33;
              {
                v34 = *a1;
                v35 = *(a1 + 16);
                v313 = *(a1 + 32);
                v311 = v34;
                v312 = v35;
                v36 = *v15;
                v37 = *(v15 + 16);
                *(a1 + 32) = *(v15 + 32);
                *a1 = v36;
                *(a1 + 16) = v37;
                v38 = v311;
                v39 = v312;
                *(v15 + 32) = v313;
                *v15 = v38;
                *(v15 + 16) = v39;
              }
            }

LABEL_27:
            v64 = a1 + 40 * v14 - 40;
            if (v65)
            {
              if (v66)
              {
                v67 = *(a1 + 40);
                v68 = *(a1 + 56);
                v311 = v67;
                v312 = v68;
                v69 = *(a1 + 72);
                v313 = v69;
                v71 = *v8;
                v70 = *(v8 + 16);
                *(a1 + 72) = *(v8 + 32);
                *(a1 + 40) = v71;
                *(a1 + 56) = v70;
              }

              else
              {
                v96 = *(a1 + 56);
                v311 = *(a1 + 40);
                v95 = v311;
                v312 = v96;
                v313 = *(a1 + 72);
                v97 = v313;
                v99 = *v64;
                v98 = *(a1 + 40 * v14 - 24);
                *(a1 + 72) = *(a1 + 40 * v14 - 8);
                *(a1 + 40) = v99;
                *(a1 + 56) = v98;
                *(a1 + 40 * v14 - 8) = v97;
                *v64 = v95;
                *(a1 + 40 * v14 - 24) = v96;
                {
                  goto LABEL_39;
                }

                v100 = *v64;
                v101 = *(a1 + 40 * v14 - 24);
                v313 = *(a1 + 40 * v14 - 8);
                v311 = v100;
                v312 = v101;
                v102 = *v8;
                v103 = *(v8 + 16);
                *(a1 + 40 * v14 - 8) = *(v8 + 32);
                *v64 = v102;
                *(a1 + 40 * v14 - 24) = v103;
                v67 = v311;
                v68 = v312;
                v69 = v313;
              }

              *(v8 + 32) = v69;
              *v8 = v67;
              *(v8 + 16) = v68;
            }

            else if (v66)
            {
              v72 = *v64;
              v73 = *(a1 + 40 * v14 - 24);
              v313 = *(a1 + 40 * v14 - 8);
              v311 = v72;
              v312 = v73;
              v74 = *v8;
              v75 = *(v8 + 16);
              *(a1 + 40 * v14 - 8) = *(v8 + 32);
              *v64 = v74;
              *(a1 + 40 * v14 - 24) = v75;
              v76 = v311;
              v77 = v312;
              *(v8 + 32) = v313;
              *v8 = v76;
              *(v8 + 16) = v77;
              {
                v79 = *(a1 + 56);
                v311 = *(a1 + 40);
                v78 = v311;
                v312 = v79;
                v313 = *(a1 + 72);
                v80 = v313;
                v82 = *v64;
                v81 = *(a1 + 40 * v14 - 24);
                *(a1 + 72) = *(a1 + 40 * v14 - 8);
                *(a1 + 40) = v82;
                *(a1 + 56) = v81;
                *(a1 + 40 * v14 - 8) = v80;
                *v64 = v78;
                *(a1 + 40 * v14 - 24) = v79;
              }
            }

LABEL_39:
            v104 = a1 + 40 * v14;
            if (v105)
            {
              if (v106)
              {
                v107 = *(a1 + 80);
                v108 = *(a1 + 96);
                v311 = v107;
                v312 = v108;
                v109 = *(a1 + 112);
                v313 = v109;
                v111 = *v9;
                v110 = *(v9 + 16);
                *(a1 + 112) = *(v9 + 32);
                *(a1 + 80) = v111;
                *(a1 + 96) = v110;
              }

              else
              {
                v124 = *(a1 + 96);
                v311 = *(a1 + 80);
                v123 = v311;
                v312 = v124;
                v313 = *(a1 + 112);
                v125 = v313;
                v126 = *(v104 + 56);
                v127 = *(v104 + 40);
                *(a1 + 112) = *(v104 + 72);
                *(a1 + 80) = v127;
                *(a1 + 96) = v126;
                *(v104 + 56) = v124;
                *(v104 + 72) = v125;
                *(v104 + 40) = v123;
                {
                  goto LABEL_48;
                }

                v128 = *(v104 + 40);
                v129 = *(v104 + 56);
                v313 = *(v104 + 72);
                v311 = v128;
                v312 = v129;
                v130 = *v9;
                v131 = *(v9 + 16);
                *(v104 + 72) = *(v9 + 32);
                *(v104 + 56) = v131;
                *(v104 + 40) = v130;
                v107 = v311;
                v108 = v312;
                v109 = v313;
              }

              *(v9 + 32) = v109;
              *v9 = v107;
              *(v9 + 16) = v108;
            }

            else if (v106)
            {
              v112 = *(v104 + 40);
              v113 = *(v104 + 56);
              v313 = *(v104 + 72);
              v311 = v112;
              v312 = v113;
              v114 = *v9;
              v115 = *(v9 + 16);
              *(v104 + 72) = *(v9 + 32);
              *(v104 + 56) = v115;
              *(v104 + 40) = v114;
              v116 = v311;
              v117 = v312;
              *(v9 + 32) = v313;
              *v9 = v116;
              *(v9 + 16) = v117;
              {
                v119 = *(a1 + 96);
                v311 = *(a1 + 80);
                v118 = v311;
                v312 = v119;
                v313 = *(a1 + 112);
                v120 = v313;
                v121 = *(v104 + 56);
                v122 = *(v104 + 40);
                *(a1 + 112) = *(v104 + 72);
                *(a1 + 80) = v122;
                *(a1 + 96) = v121;
                *(v104 + 56) = v119;
                *(v104 + 72) = v120;
                *(v104 + 40) = v118;
              }
            }

LABEL_48:
            if (!v132)
            {
              if (v133)
              {
                v137 = *v15;
                v138 = *(v15 + 16);
                v313 = *(v15 + 32);
                v311 = v137;
                v312 = v138;
                v139 = *(v104 + 56);
                *v15 = *(v104 + 40);
                *(v15 + 16) = v139;
                *(v15 + 32) = *(v104 + 72);
                v140 = v313;
                v141 = v311;
                *(v104 + 56) = v312;
                *(v104 + 72) = v140;
                *(v104 + 40) = v141;
                {
                  v142 = *v64;
                  v143 = *(v64 + 16);
                  v313 = *(v64 + 32);
                  v311 = v142;
                  v312 = v143;
                  v144 = *(v15 + 16);
                  *v64 = *v15;
                  *(v64 + 16) = v144;
                  *(v64 + 32) = *(v15 + 32);
                  v145 = v311;
                  v146 = v312;
                  *(v15 + 32) = v313;
                  *v15 = v145;
                  *(v15 + 16) = v146;
                }
              }

              goto LABEL_57;
            }

            if (v133)
            {
              v134 = *v64;
              v135 = *(v64 + 16);
              v313 = *(v64 + 32);
              v311 = v134;
              v312 = v135;
              v136 = *(v104 + 56);
              *v64 = *(v104 + 40);
              *(v64 + 16) = v136;
              *(v64 + 32) = *(v104 + 72);
            }

            else
            {
              v147 = *v64;
              v148 = *(v64 + 16);
              v313 = *(v64 + 32);
              v311 = v147;
              v312 = v148;
              v149 = *(v15 + 16);
              *v64 = *v15;
              *(v64 + 16) = v149;
              *(v64 + 32) = *(v15 + 32);
              v150 = v311;
              v151 = v312;
              *(v15 + 32) = v313;
              *v15 = v150;
              *(v15 + 16) = v151;
              {
LABEL_57:
                v157 = *a1;
                v158 = *(a1 + 16);
                v313 = *(a1 + 32);
                v311 = v157;
                v312 = v158;
                v159 = *v15;
                v160 = *(v15 + 16);
                *(a1 + 32) = *(v15 + 32);
                *a1 = v159;
                *(a1 + 16) = v160;
                v161 = v311;
                v162 = v312;
                *(v15 + 32) = v313;
                *v15 = v161;
                *(v15 + 16) = v162;
                goto LABEL_58;
              }

              v152 = *v15;
              v153 = *(v15 + 16);
              v313 = *(v15 + 32);
              v311 = v152;
              v312 = v153;
              v154 = *(v104 + 56);
              *v15 = *(v104 + 40);
              *(v15 + 16) = v154;
              *(v15 + 32) = *(v104 + 72);
            }

            v155 = v313;
            v156 = v311;
            *(v104 + 56) = v312;
            *(v104 + 72) = v155;
            *(v104 + 40) = v156;
            goto LABEL_57;
          }

          if (v22)
          {
            if (v23)
            {
              v24 = *v15;
              v25 = *(v15 + 16);
              v313 = *(v15 + 32);
              v311 = v24;
              v312 = v25;
              v26 = *v7;
              v27 = *(v7 + 16);
              *(v15 + 32) = *(v7 + 32);
              *v15 = v26;
              *(v15 + 16) = v27;
LABEL_35:
              v93 = v311;
              v94 = v312;
              *(v7 + 32) = v313;
              *v7 = v93;
              *(v7 + 16) = v94;
              goto LABEL_58;
            }

            v83 = *v15;
            v84 = *(v15 + 16);
            v313 = *(v15 + 32);
            v311 = v83;
            v312 = v84;
            v85 = *a1;
            v86 = *(a1 + 16);
            *(v15 + 32) = *(a1 + 32);
            *v15 = v85;
            *(v15 + 16) = v86;
            v87 = v311;
            v88 = v312;
            *(a1 + 32) = v313;
            *a1 = v87;
            *(a1 + 16) = v88;
            {
              v89 = *a1;
              v90 = *(a1 + 16);
              v313 = *(a1 + 32);
              v311 = v89;
              v312 = v90;
              v91 = *v7;
              v92 = *(v7 + 16);
              *(a1 + 32) = *(v7 + 32);
              *a1 = v91;
              *(a1 + 16) = v92;
              goto LABEL_35;
            }
          }

          else if (v23)
          {
            v40 = *a1;
            v41 = *(a1 + 16);
            v313 = *(a1 + 32);
            v311 = v40;
            v312 = v41;
            v42 = *v7;
            v43 = *(v7 + 16);
            *(a1 + 32) = *(v7 + 32);
            *a1 = v42;
            *(a1 + 16) = v43;
            v44 = v311;
            v45 = v312;
            *(v7 + 32) = v313;
            *v7 = v44;
            *(v7 + 16) = v45;
            {
              v46 = *v15;
              v47 = *(v15 + 16);
              v313 = *(v15 + 32);
              v311 = v46;
              v312 = v47;
              v48 = *a1;
              v49 = *(a1 + 16);
              *(v15 + 32) = *(a1 + 32);
              *v15 = v48;
              *(v15 + 16) = v49;
              v50 = v311;
              v51 = v312;
              *(a1 + 32) = v313;
              *a1 = v50;
              *(a1 + 16) = v51;
            }
          }

LABEL_58:
          --a3;
          {
            break;
          }

          v182 = *a1;
          v183 = *(a1 + 16);
          v310 = *(a1 + 32);
          v308 = v182;
          v309 = v183;
          {
            v10 = a1;
            a2 = v307;
            do
            {
              v10 += 40;
            }
          }

          else
          {
            v184 = a1 + 40;
            a2 = v307;
            do
            {
              v10 = v184;
              if (v184 >= v307)
              {
                break;
              }

              v184 = v10 + 40;
            }

            while (!v185);
          }

          v186 = a2;
          if (v10 < a2)
          {
            v186 = a2;
            do
            {
              v186 -= 40;
            }
          }

          while (v10 < v186)
          {
            v187 = *v10;
            v188 = *(v10 + 16);
            v313 = *(v10 + 32);
            v311 = v187;
            v312 = v188;
            v189 = *v186;
            v190 = *(v186 + 16);
            *(v10 + 32) = *(v186 + 32);
            *v10 = v189;
            *(v10 + 16) = v190;
            v191 = v311;
            v192 = v312;
            *(v186 + 32) = v313;
            *v186 = v191;
            *(v186 + 16) = v192;
            do
            {
              v10 += 40;
            }

            do
            {
              v186 -= 40;
            }
          }

          v193 = (v10 - 40);
          if (v10 - 40 != a1)
          {
            v194 = *v193;
            v195 = *(v10 - 24);
            *(a1 + 32) = *(v10 - 8);
            *a1 = v194;
            *(a1 + 16) = v195;
          }

          a4 = 0;
          v196 = v308;
          v197 = v309;
          *(v10 - 8) = v310;
          *v193 = v196;
          *(v10 - 24) = v197;
        }

        v163 = 0;
        v164 = *a1;
        v165 = *(a1 + 16);
        v310 = *(a1 + 32);
        v308 = v164;
        v309 = v165;
        do
        {
          v163 += 40;
        }

        v166 = a1 + v163;
        v167 = v307;
        v222 = v163 == 40;
        a2 = v307;
        if (v222)
        {
          v167 = v307;
          do
          {
            if (v166 >= v167)
            {
              break;
            }

            v167 -= 40;
          }
        }

        else
        {
          do
          {
            v167 -= 40;
          }
        }

        if (v166 >= v167)
        {
          v176 = v166 - 40;
        }

        else
        {
          v168 = v166;
          v169 = v167;
          do
          {
            v170 = *v168;
            v171 = *(v168 + 16);
            v313 = *(v168 + 32);
            v311 = v170;
            v312 = v171;
            v172 = *v169;
            v173 = *(v169 + 16);
            *(v168 + 32) = *(v169 + 32);
            *v168 = v172;
            *(v168 + 16) = v173;
            v174 = v311;
            v175 = v312;
            *(v169 + 32) = v313;
            *v169 = v174;
            *(v169 + 16) = v175;
            do
            {
              v168 += 40;
            }

            do
            {
              v169 -= 40;
            }
          }

          while (v168 < v169);
          v176 = v168 - 40;
        }

        if (v176 != a1)
        {
          v177 = *v176;
          v178 = *(v176 + 16);
          *(a1 + 32) = *(v176 + 32);
          *a1 = v177;
          *(a1 + 16) = v178;
        }

        v179 = v308;
        v180 = v309;
        *(v176 + 32) = v310;
        *v176 = v179;
        *(v176 + 16) = v180;
        if (v166 >= v167)
        {
          break;
        }

LABEL_81:
        a4 = 0;
        v10 = v176 + 40;
      }

      v10 = v176 + 40;
      {
        break;
      }

      if (!v181)
      {
        goto LABEL_81;
      }
    }

    a2 = v176;
    if (!v181)
    {
      continue;
    }

    break;
  }
}

BOOL SCML::anonymous namespace::BoxDataDescendingScoreComparator::operator()(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return *a1 > *a2;
  }

  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  if (v3 != v4)
  {
    return v3 < v4;
  }

  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  v7 = v5 < v6;
  if (v5 != v6)
  {
    return v7;
  }

  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  v7 = v8 < v9;
  if (v8 != v9)
  {
    return v7;
  }

  v10 = *(a1 + 24);
  v11 = *(a2 + 24);
  v7 = v10 < v11;
  if (v10 != v11)
  {
    return v7;
  }

  v12 = *(a1 + 32);
  v13 = *(a2 + 32);
  return v12 != v13 && v12 < v13;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,SCML::anonymous namespace::BoxDataDescendingScoreComparator &,SCML::BoxInfo *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (v8)
  {
    if (v9)
    {
      v10 = *a1;
      v11 = *(a1 + 16);
      v12 = *(a1 + 32);
      v13 = *(a3 + 32);
      v14 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v14;
      *(a1 + 32) = v13;
LABEL_9:
      *(a3 + 32) = v12;
      *a3 = v10;
      *(a3 + 16) = v11;
      goto LABEL_10;
    }

    v25 = *a1;
    v26 = *(a1 + 16);
    v27 = *(a1 + 32);
    v28 = *(a2 + 32);
    v29 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v29;
    *(a1 + 32) = v28;
    *(a2 + 32) = v27;
    *a2 = v25;
    *(a2 + 16) = v26;
    {
      v10 = *a2;
      v11 = *(a2 + 16);
      v12 = *(a2 + 32);
      v30 = *(a3 + 32);
      v31 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v31;
      *(a2 + 32) = v30;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v15 = *a2;
    v16 = *(a2 + 16);
    v17 = *(a2 + 32);
    v18 = *(a3 + 32);
    v19 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v19;
    *(a2 + 32) = v18;
    *(a3 + 32) = v17;
    *a3 = v15;
    *(a3 + 16) = v16;
    {
      v20 = *a1;
      v21 = *(a1 + 16);
      v22 = *(a1 + 32);
      v23 = *(a2 + 32);
      v24 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v24;
      *(a1 + 32) = v23;
      *(a2 + 32) = v22;
      *a2 = v20;
      *(a2 + 16) = v21;
    }
  }

LABEL_10:
  {
    v33 = *a3;
    v34 = *(a3 + 16);
    v35 = *(a3 + 32);
    v36 = *(a4 + 32);
    v37 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v37;
    *(a3 + 32) = v36;
    *(a4 + 32) = v35;
    *a4 = v33;
    *(a4 + 16) = v34;
    {
      v38 = *a2;
      v39 = *(a2 + 16);
      v40 = *(a2 + 32);
      v41 = *(a3 + 32);
      v42 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v42;
      *(a2 + 32) = v41;
      *(a3 + 32) = v40;
      *a3 = v38;
      *(a3 + 16) = v39;
      {
        result = *a1;
        v43 = *(a1 + 16);
        v44 = *(a1 + 32);
        v45 = *(a2 + 32);
        v46 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v46;
        *(a1 + 32) = v45;
        *(a2 + 32) = v44;
        *a2 = result;
        *(a2 + 16) = v43;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,SCML::anonymous namespace::BoxDataDescendingScoreComparator &,SCML::BoxInfo *>(uint64_t a1, uint64_t a2)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 40;
        if (v20)
        {
          if (v21)
          {
LABEL_15:
            v22 = *a1;
            v23 = *(a1 + 16);
            v24 = *(a1 + 32);
            v25 = *(v5 + 32);
            v26 = *(v5 + 16);
            *a1 = *v5;
            *(a1 + 16) = v26;
            *(a1 + 32) = v25;
LABEL_16:
            *(v5 + 32) = v24;
            result = 1;
            *v5 = v22;
            *(v5 + 16) = v23;
            return result;
          }

          v52 = *(a1 + 32);
          v54 = *a1;
          v53 = *(a1 + 16);
          v55 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v55;
          *(a1 + 32) = *(a1 + 72);
          *(a1 + 40) = v54;
          *(a1 + 56) = v53;
          *(a1 + 72) = v52;
          {
            v22 = *(a1 + 40);
            v23 = *(a1 + 56);
            v24 = *(a1 + 72);
            v56 = *(v5 + 32);
            v57 = *(v5 + 16);
            *(a1 + 40) = *v5;
            *(a1 + 56) = v57;
            *(a1 + 72) = v56;
            goto LABEL_16;
          }

          return 1;
        }

        if (!v21)
        {
          return 1;
        }

        v35 = *(a1 + 40);
        v36 = *(a1 + 56);
        v37 = *(a1 + 72);
        v38 = *(v5 + 32);
        v39 = *(v5 + 16);
        *(a1 + 40) = *v5;
        *(a1 + 56) = v39;
        *(a1 + 72) = v38;
        *(v5 + 32) = v37;
        *v5 = v35;
        *(v5 + 16) = v36;
        break;
      case 4:
        return 1;
      case 5:
        v6 = a2 - 40;
        {
          return 1;
        }

        v7 = *(a1 + 120);
        v8 = *(a1 + 136);
        v9 = *(a1 + 152);
        v10 = *(v6 + 32);
        v11 = *(v6 + 16);
        *(a1 + 120) = *v6;
        *(a1 + 136) = v11;
        *(a1 + 152) = v10;
        *(v6 + 32) = v9;
        *v6 = v7;
        *(v6 + 16) = v8;
        {
          return 1;
        }

        v12 = *(a1 + 112);
        v14 = *(a1 + 80);
        v13 = *(a1 + 96);
        v15 = *(a1 + 136);
        *(a1 + 80) = *(a1 + 120);
        *(a1 + 96) = v15;
        *(a1 + 112) = *(a1 + 152);
        *(a1 + 120) = v14;
        *(a1 + 136) = v13;
        *(a1 + 152) = v12;
        {
          return 1;
        }

        v16 = *(a1 + 72);
        v17 = *(a1 + 56);
        v18 = *(a1 + 40);
        v19 = *(a1 + 96);
        *(a1 + 40) = *(a1 + 80);
        *(a1 + 56) = v19;
        *(a1 + 72) = *(a1 + 112);
        *(a1 + 80) = v18;
        *(a1 + 96) = v17;
        *(a1 + 112) = v16;
        break;
      default:
        goto LABEL_17;
    }

    {
      v40 = *(a1 + 32);
      v42 = *a1;
      v41 = *(a1 + 16);
      v43 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v43;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v42;
      *(a1 + 56) = v41;
      result = 1;
      *(a1 + 72) = v40;
      return result;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 40;
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v28 = (a1 + 80);
  if (v29)
  {
    if (v30)
    {
      v31 = *(a1 + 32);
      v33 = *a1;
      v32 = *(a1 + 16);
      v34 = *(a1 + 96);
      *a1 = *v28;
      *(a1 + 16) = v34;
      *(a1 + 32) = *(a1 + 112);
    }

    else
    {
      v58 = *(a1 + 32);
      v60 = *a1;
      v59 = *(a1 + 16);
      v61 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v61;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v60;
      *(a1 + 56) = v59;
      *(a1 + 72) = v58;
      {
        goto LABEL_33;
      }

      v31 = *(a1 + 72);
      v32 = *(a1 + 56);
      v33 = *(a1 + 40);
      v62 = *(a1 + 96);
      *(a1 + 40) = *v28;
      *(a1 + 56) = v62;
      *(a1 + 72) = *(a1 + 112);
    }

    *v28 = v33;
    *(a1 + 96) = v32;
    *(a1 + 112) = v31;
  }

  else if (v30)
  {
    v44 = *(a1 + 72);
    v45 = *(a1 + 56);
    v46 = *(a1 + 40);
    v47 = *(a1 + 96);
    *(a1 + 40) = *v28;
    *(a1 + 56) = v47;
    *(a1 + 72) = *(a1 + 112);
    *v28 = v46;
    *(a1 + 96) = v45;
    *(a1 + 112) = v44;
    {
      v48 = *(a1 + 32);
      v50 = *a1;
      v49 = *(a1 + 16);
      v51 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v51;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v50;
      *(a1 + 56) = v49;
      *(a1 + 72) = v48;
    }
  }

LABEL_33:
  v63 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v64 = 0;
  v65 = 0;
  while (1)
  {
    {
      v66 = *(v63 + 16);
      v72 = *v63;
      v73 = v66;
      v74 = *(v63 + 32);
      v67 = v64;
      while (1)
      {
        v68 = a1 + v67;
        v69 = *(a1 + v67 + 96);
        *(v68 + 120) = *(a1 + v67 + 80);
        *(v68 + 136) = v69;
        *(v68 + 152) = *(a1 + v67 + 112);
        if (v67 == -80)
        {
          break;
        }

        v67 -= 40;
        {
          v70 = a1 + v67 + 120;
          goto LABEL_41;
        }
      }

      v70 = a1;
LABEL_41:
      v71 = v73;
      *v70 = v72;
      *(v70 + 16) = v71;
      *(v70 + 32) = v74;
      if (++v65 == 8)
      {
        return v63 + 40 == a2;
      }
    }

    v28 = v63;
    v64 += 40;
    v63 += 40;
    if (v63 == a2)
    {
      return 1;
    }
  }
}

void std::vector<SCML::BoxInfo>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 40 * ((40 * a2 - 40) / 0x28) + 40;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SCML::BoxInfo>>(a1, v9);
    }

    v11 = 40 * v6;
    v12 = 40 * ((40 * a2 - 40) / 0x28) + 40;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void sub_1B8A4506C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20)
{
  if (v24)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1B8A4525C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SCMLImageAnalyzer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B8A4573C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, std::runtime_error __p, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p.__vftable);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    if ((v42 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (!v42)
  {
LABEL_14:
    if (a2 == 1)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      MEMORY[0x1B8CC6FB0](&__p, exception_ptr);
      __cxa_begin_catch(a1);
      if (*(v40 + 56))
      {
        espresso_plan_destroy();
        *(v40 + 56) = 0;
      }

      if (*(v40 + 64))
      {
        espresso_context_destroy();
        *(v40 + 64) = 0;
      }

      v46 = +[SCMLLog imageAnalyzer];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [SCMLImageAnalyzer loadNetworkForURL:? espressoEngine:? storageType:? deviceId:?];
      }

      std::runtime_error::~runtime_error(&__p);
      __cxa_end_catch();
      JUMPOUT(0x1B8A4547CLL);
    }

    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v41);
  goto LABEL_14;
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(const char *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  v7 = std::string::insert(a2, 0, a1, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void sub_1B8A45BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t scml::strCat<char const(&)[38],std::string>@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  scml::scml_impl::strCat<char const(&)[38],std::string>(&v10, a1, a2);
  if ((v17 & 0x10) != 0)
  {
    v7 = v16;
    if (v16 < v13)
    {
      v16 = v13;
      v7 = v13;
    }

    locale = v12[4].__locale_;
  }

  else
  {
    if ((v17 & 8) == 0)
    {
      v6 = 0;
      a3[23] = 0;
      goto LABEL_14;
    }

    locale = v12[1].__locale_;
    v7 = v12[3].__locale_;
  }

  v6 = v7 - locale;
  if ((v7 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  a3[23] = v6;
  if (v6)
  {
    memmove(a3, locale, v6);
  }

LABEL_14:
  a3[v6] = 0;
  v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(__p);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x1B8CC71A0](&v18);
}

void sub_1B8A45EAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8CC71A0](v2 + 112);
  _Unwind_Resume(a1);
}

void sub_1B8A45FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v23 & 1) == 0)
    {
LABEL_8:

      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
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

void sub_1B8A461E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v23 & 1) == 0)
    {
LABEL_8:

      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void sub_1B8A46E8C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B8A47698(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1B8A47B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, char a32)
{
  _Block_object_dispose(&a26, 8);

  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 96), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__79(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_1B8A47EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::runtime_error a12)
{
  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(exception_object);
    MEMORY[0x1B8CC6FB0](&a12, exception_ptr);
    __cxa_begin_catch(exception_object);
    v16 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SCMLImageAnalyzer _computeOutputForPixelBuffer:? error:?];
    }

    if (v13)
    {
      *v13 = [MEMORY[0x1E696ABC0] errorWithDomain:SCMLErrorDomain code:6 userInfo:0];
    }

    v12[2] = 0u;
    v12[3] = 0u;
    *v12 = 0u;
    v12[1] = 0u;
    std::runtime_error::~runtime_error(&a12);
    __cxa_end_catch();
    JUMPOUT(0x1B8A47E0CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::tensorViewCHW@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 112) != 1)
  {
  }

  if (*(result + 104) != 1)
  {
  }

  v2 = *(result + 80);
  v3 = *(result + 96) | (*(result + 88) << 32);
  *a2 = *result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  return result;
}

void sub_1B8A480D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B8A48554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B8A48760(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::runtime_error a9)
{
  v15 = v14;

  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    MEMORY[0x1B8CC6FB0](&a9, exception_ptr);
    __cxa_begin_catch(a1);
    v19 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SCMLImageAnalyzer getOperatingPointDataForClassName:? modelURL:? error:?];
    }

    if (v11)
    {
      *v11 = [MEMORY[0x1E696ABC0] errorWithDomain:SCMLErrorDomain code:8 userInfo:0];
    }

    std::runtime_error::~runtime_error(&a9);
    __cxa_end_catch();
    JUMPOUT(0x1B8A48728);
  }

  _Unwind_Resume(a1);
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

uint64_t scml::scml_impl::strCat<char const(&)[38],std::string>(void *a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v6);
  v7 = *(a3 + 23);
  if (v7 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v8, v9);

  return scml::scml_impl::strCat<>(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void sub_1B8A49984(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B8A49B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B8A49C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B8A4A218(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

id anonymous namespace::checkedConvert<NSDictionary>(void *a1, void *a2)
{
  v3 = a1;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t anonymous namespace::checkDictKeys(void *a1, void *a2, char a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = *v27;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v9);
        }

        if (([v8 containsObject:*(*(&v26 + 1) + 8 * i)] & 1) == 0)
        {
          v13 = 0;
          v14 = v9;
          goto LABEL_12;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (a3)
  {
    v13 = 1;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = v8;
    v17 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v17)
    {
      v18 = *v23;
      while (2)
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = [v9 objectForKeyedSubscript:{*(*(&v22 + 1) + 8 * j), v22}];
          v21 = v20 == 0;

          if (v21)
          {
            v13 = 0;
            goto LABEL_12;
          }
        }

        v17 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
        v13 = 1;
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v13 = 1;
    }

LABEL_12:
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

id anonymous namespace::GetThresholdModeStrings(_anonymous_namespace_ *this)
{
  v5[4] = *MEMORY[0x1E69E9840];
  {
    v4[0] = &unk_1F3751930;
    v4[1] = &unk_1F3751948;
    v5[0] = @"super_high_precision";
    v5[1] = @"high_precision";
    v4[2] = &unk_1F3751960;
    v4[3] = &unk_1F3751978;
    v5[2] = @"balanced";
    v5[3] = @"high_recall";
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:4];
  }

  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

id anonymous namespace::makeError(id result, void *a2)
{
  if (a2)
  {
    result = [MEMORY[0x1E696ABC0] errorWithDomain:SCMLErrorDomain code:result userInfo:0];
    *a2 = result;
  }

  return result;
}

void sub_1B8A4AAF8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void scml::ClipEmbeddingClassifier::Impl::Impl(uint64_t a1, const void *a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a3;
  *a1 = 850045863;
  *(a1 + 136) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = 1065353216;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  scml::ClipEmbeddingClassifier::Impl::loadConfig(a1, a2, a3);
}

void sub_1B8A4B518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, int a19, __int16 a20, char a21, unsigned __int8 a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (a2 == 1)
  {
    v42 = __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x18uLL);
    scml::strCat<char const(&)[27],std::string_view &>("Failed to load model from ", &a10, &a17);
    if ((a22 & 0x80u) == 0)
    {
      v44 = &a17;
    }

    else
    {
      v44 = a17;
    }

    if ((a22 & 0x80u) == 0)
    {
      v45 = a22;
    }

    else
    {
      v45 = a18;
    }

    scml::makeException(v44, v45, v42, exception);
  }

  if (*(v35 + 263) < 0)
  {
    operator delete(*(v35 + 240));
  }

  std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::~__hash_table(v35 + 192);
  v46 = *v37;
  *v37 = 0;
  if (v46)
  {
    std::default_delete<ik::E5Op>::operator()[abi:ne200100](v37, v46);
  }

  if (*(v35 + 183) < 0)
  {
    operator delete(*(v35 + 160));
  }

  if (*(v35 + 159) < 0)
  {
    operator delete(*v36);
  }

  if (*(v35 + 135) < 0)
  {
    operator delete(*v39);
  }

  v47 = *(v35 + 88);
  if (v47)
  {
    *(v35 + 96) = v47;
    operator delete(v47);
  }

  a17 = (v35 + 64);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a17);
  std::mutex::~mutex(v35);
  _Unwind_Resume(a1);
}

void sub_1B8A4B79C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v23)
  {
LABEL_6:
    __cxa_end_catch();
    JUMPOUT(0x1B8A4B7D0);
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void sub_1B8A4B85C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B8A4B854);
}

void sub_1B8A4BDFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a15 == 1 && a14 < 0)
  {
    operator delete(a9);
  }

  scml::Config::~Config(&a46);
  _Unwind_Resume(a1);
}

void scml::TensorSpec::~TensorSpec(void **this)
{
  v2 = this + 3;
  std::vector<std::variant<int,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t scml::strCat<char const(&)[27],std::string_view &>@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v7);
  scml::scml_impl::strCat<char const(&)[27],std::string_view &>(&v7, a1, a2);
  std::ostringstream::str[abi:ne200100](&v7, a3);
  v7 = *MEMORY[0x1E69E54E8];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x1B8CC71A0](&v11);
}

void sub_1B8A4C0BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void scml::Exception::~Exception(std::runtime_error *this)
{

  std::runtime_error::~runtime_error(this);
}

{

  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1B8CC7230);
}

uint64_t scml::Config::get<std::string>(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v18[0] = a2;
  v18[1] = a3;
  v8 = scml::Config::as<std::unordered_map<std::string,scml::Config>>(a1);
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (a3 >= 0x17)
  {
    operator new();
  }

  v17 = a3;
  if (a3)
  {
    memmove(__dst, a2, a3);
  }

  *(__dst + a3) = 0;
  v10 = std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::find<std::string>(v9, __dst);
  v11 = v10;
  if (v17 < 0)
  {
    operator delete(__dst[0]);
    if (v11)
    {
      return scml::Config::as<std::string>((v11 + 5));
    }
  }

  else if (v10)
  {
    return scml::Config::as<std::string>((v11 + 5));
  }

  if ((*(a4 + 24) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    scml::strCat<std::string_view const&,char const(&)[11]>(v18, " not found", __dst);
    if ((v17 & 0x80u) == 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v15 = v17;
    }

    else
    {
      v15 = __dst[1];
    }

    scml::Config::error(a1, v14, v15, exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a4;
}

void sub_1B8A4C294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t scml::Config::get<std::vector<scml::Config>>(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v18[0] = a2;
  v18[1] = a3;
  v8 = scml::Config::as<std::unordered_map<std::string,scml::Config>>(a1);
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (a3 >= 0x17)
  {
    operator new();
  }

  v17 = a3;
  if (a3)
  {
    memmove(__dst, a2, a3);
  }

  *(__dst + a3) = 0;
  v10 = std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::find<std::string>(v9, __dst);
  v11 = v10;
  if (v17 < 0)
  {
    operator delete(__dst[0]);
    if (v11)
    {
      return scml::Config::as<std::vector<scml::Config>>((v11 + 5));
    }
  }

  else if (v10)
  {
    return scml::Config::as<std::vector<scml::Config>>((v11 + 5));
  }

  if ((*(a4 + 24) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    scml::strCat<std::string_view const&,char const(&)[11]>(v18, " not found", __dst);
    if ((v17 & 0x80u) == 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v15 = v17;
    }

    else
    {
      v15 = __dst[1];
    }

    scml::Config::error(a1, v14, v15, exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a4;
}

void sub_1B8A4C468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

float scml::Config::get<float>(uint64_t a1, const void *a2, size_t a3, _BYTE *a4)
{
  v18[0] = a2;
  v18[1] = a3;
  v8 = scml::Config::as<std::unordered_map<std::string,scml::Config>>(a1);
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (a3 >= 0x17)
  {
    operator new();
  }

  v17 = a3;
  if (a3)
  {
    memmove(__dst, a2, a3);
  }

  *(__dst + a3) = 0;
  v10 = std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::find<std::string>(v9, __dst);
  v11 = v10;
  if (v17 < 0)
  {
    operator delete(__dst[0]);
    if (v11)
    {
      return scml::Config::as<float>(v11 + 10);
    }
  }

  else if (v10)
  {
    return scml::Config::as<float>(v11 + 10);
  }

  if (a4[4] != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    scml::strCat<std::string_view const&,char const(&)[11]>(v18, " not found", __dst);
    if ((v17 & 0x80u) == 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v15 = v17;
    }

    else
    {
      v15 = __dst[1];
    }

    scml::Config::error(a1, v14, v15, exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return *a4;
}

void sub_1B8A4C67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void scml::ClipEmbeddingClassifier::Impl::writeInputTensors(uint64_t a1, void *a2)
{
  v3 = (a1 + 232);
  if (*(a1 + 232) != (a2[1] - *a2) >> 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    __p[0] = ((a2[1] - *a2) >> 2);
    scml::strCat<char const(&)[16],unsigned long,char const(&)[12],unsigned long &>("embedding size ", __p, ", expected ", v3, &v11);
    std::runtime_error::runtime_error(exception, &v11);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v11.__r_.__value_.__r.__words[0] = a1 + 136;
  v4 = std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 192), (a1 + 136));
  v5 = ik::Tensor::Data<float>((v4 + 5));
  (*(*v4[10] + 32))(__p);
  ik::ArrayView<float,-1>::ArrayView(&v11, v5, __p);
  v11.__r_.__value_.__r.__words[0] = &unk_1F3745870;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  __p[0] = 0;
  if (*v3)
  {
    v6 = 0;
    do
    {
      v7 = *(*a2 + 4 * v6);
      v10 = 0;
      size = v11.__r_.__value_.__l.__size_;
      *(size + 4 * ik::ArrayView<float,-1>::IndexOf<int,unsigned long>(&v11, &v10, __p)) = v7;
      v6 = __p[0] + 1;
      __p[0] = v6;
    }

    while (v6 < *v3);
  }

  v11.__r_.__value_.__r.__words[0] = &unk_1F37458B8;
  if (v11.__r_.__value_.__r.__words[2])
  {
    v12 = v11.__r_.__value_.__r.__words[2];
    operator delete(v11.__r_.__value_.__r.__words[2]);
  }
}

void sub_1B8A4C8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v20 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

uint64_t scml::strCat<char const(&)[16],unsigned long,char const(&)[12],unsigned long &>@<X0>(char *a1@<X0>, void *a2@<X1>, char *a3@<X2>, void *a4@<X3>, _BYTE *a5@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  scml::scml_impl::strCat<char const(&)[16],unsigned long,char const(&)[12],unsigned long &>(&v11, a1, a2, a3, a4);
  std::ostringstream::str[abi:ne200100](&v11, a5);
  v11 = *MEMORY[0x1E69E54E8];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x1B8CC71A0](&v15);
}

void sub_1B8A4CA9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void *ik::MutableArrayView<float,-1>::~MutableArrayView(void *a1)
{
  *a1 = &unk_1F37458B8;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void scml::ClipEmbeddingClassifier::~ClipEmbeddingClassifier(void ***this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    scml::ClipEmbeddingClassifier::Impl::~Impl(v2);
    MEMORY[0x1B8CC7230]();
  }
}

void scml::ClipEmbeddingClassifier::predict(std::mutex **a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = *a1;
  std::mutex::lock(*a1);
  scml::ClipEmbeddingClassifier::Impl::writeInputTensors(*a1, a2);
  ik::core::E5OpImpl::Run(**&(*a1)[2].__m_.__opaque[48], v35);
  v7 = std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::find<std::string>(v35, &(*a1)[2].__m_.__opaque[24]);
  v8 = v7;
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = ik::Tensor::Data<float>((v7 + 5));
  (*(*v8[10] + 32))(v36);
  ik::ArrayView<float,-1>::ArrayView(&v31, v9, v36);
  v31 = &unk_1F3745870;
  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  *a3 = 1;
  *(a3 + 1) = 0;
  v10 = *a1;
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a3 + 8), v10[1].__m_.__sig, *v10[1].__m_.__opaque, 0xAAAAAAAAAAAAAAABLL * ((*v10[1].__m_.__opaque - v10[1].__m_.__sig) >> 3));
  v11 = 0xAAAAAAAAAAAAAAABLL * ((*(*a1)[1].__m_.__opaque - (*a1)[1].__m_.__sig) >> 3);
  LOBYTE(v30) = 1;
  std::vector<BOOL>::vector(a3 + 4, v11);
  v12 = 0xAAAAAAAAAAAAAAABLL * ((*(*a1)[1].__m_.__opaque - (*a1)[1].__m_.__sig) >> 3);
  LODWORD(v36[0]) = -1082130432;
  std::vector<float>::vector[abi:ne200100](a3 + 7, v12);
  LODWORD(v36[0]) = 0;
  if (*(v8[7] + 1))
  {
    do
    {
      v30 = 0;
      v13 = v32;
      v14 = *(v13 + 4 * ik::ArrayView<float,-1>::IndexOf<int,int>(&v31, &v30, v36));
      v15 = SLODWORD(v36[0]);
      v16 = *(*&(*a1)[1].__m_.__opaque[16] + 4 * SLODWORD(v36[0]));
      v17 = *a3;
      if (v14 >= v16)
      {
        v17 = 0;
      }

      *a3 = v17;
      v18 = *(a3 + 4);
      v19 = (v15 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v20 = *(v18 + v19);
      v21 = (v20 & (1 << v15)) != 0;
      v22 = v20 & ~(1 << v15);
      v23 = v20 | (1 << v15);
      if (v21 && v14 < v16)
      {
        v24 = v23;
      }

      else
      {
        v24 = v22;
      }

      *(v18 + v19) = v24;
      v25 = *(a3 + 7);
      v30 = 0;
      v26 = v32;
      v27 = ik::ArrayView<float,-1>::IndexOf<int,int>(&v31, &v30, v36);
      v28 = *(v25 + 4 * v15);
      if (v28 < *(v26 + 4 * v27))
      {
        v28 = *(v26 + 4 * v27);
      }

      v29 = SLODWORD(v36[0]);
      *(*(a3 + 7) + 4 * SLODWORD(v36[0])) = v28;
      LODWORD(v36[0]) = ++v29;
    }

    while (*(v8[7] + 1) > v29);
  }

  v31 = &unk_1F37458B8;
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::~__hash_table(v35);
  std::mutex::unlock(v6);
}

void sub_1B8A4CE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v22 = *(v18 + 32);
  if (v22)
  {
    operator delete(v22);
  }

  *(v20 - 88) = v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v20 - 88));
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::~__hash_table(&a17);
  std::mutex::unlock(v17);
  _Unwind_Resume(a1);
}

void scml::anonymous namespace::configPathForModel(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v13 resourceURL];
  v7 = [v6 path];

  v8 = scml::strToNSString(a1, a2);
  v9 = [v8 stringByAppendingString:@".config.json"];
  v10 = [v7 stringByAppendingPathComponent:@"Models"];
  v11 = [v10 stringByAppendingPathComponent:v8];
  v12 = [v11 stringByAppendingPathComponent:v9];
  scml::strFromNSString(v12, a3);
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

uint64_t std::vector<E5RT::ComputeDeviceType>::__init_with_size[abi:ne200100]<E5RT::ComputeDeviceType const*,E5RT::ComputeDeviceType const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<E5RT::ComputeDeviceType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B8A4D1E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<E5RT::ComputeDeviceType>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<E5RT::ComputeDeviceType>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<E5RT::ComputeDeviceType>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ik::core::E5LoadMILConfig::~E5LoadMILConfig(id *this)
{
  v3 = this + 13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = this[10];
  if (v2)
  {
    this[11] = v2;
    operator delete(v2);
  }

  if (*(this + 72) == 1 && *(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void ik::core::E5LoadPreCompiledConfig::~E5LoadPreCompiledConfig(void **this)
{
  if (*(this + 72) == 1 && *(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
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

uint64_t std::vector<std::variant<int,std::string>>::__init_with_size[abi:ne200100]<std::variant<int,std::string> const*,std::variant<int,std::string> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::variant<int,std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B8A4D47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::variant<int,std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::variant<int,std::string>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::variant<int,std::string>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::variant<int,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::variant<int,std::string>>,std::variant<int,std::string> const*,std::variant<int,std::string> const*,std::variant<int,std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<int,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a4, v6);
      v6 += 32;
      a4 += 32;
      v7 -= 32;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1B8A4D580(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 32;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<int,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
      v4 -= 32;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<int,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<int,std::string>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<int,std::string>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<int,std::string>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<int,std::string>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<int,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_1F37453D8[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<int,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_1F37453C8[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJiSD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSO_E_JRKNS0_6__baseILSI_1EJiSD_EEEEEEDcSN_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void std::vector<std::variant<int,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 32;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<int,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<scml::TensorSpec>::__init_with_size[abi:ne200100]<scml::TensorSpec const*,scml::TensorSpec const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<scml::TensorSpec>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B8A4D7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<scml::TensorSpec>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<scml::TensorSpec>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<scml::TensorSpec>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<scml::TensorSpec>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<scml::TensorSpec>,scml::TensorSpec const*,scml::TensorSpec const*,scml::TensorSpec*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      v11 = a4 + v7;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      v12 = a4 + v7 + 24;
      *(v12 + 16) = 0;
      std::vector<std::variant<int,std::string>>::__init_with_size[abi:ne200100]<std::variant<int,std::string>*,std::variant<int,std::string>*>(v12, *(a2 + v7 + 24), *(a2 + v7 + 32), (*(a2 + v7 + 32) - *(a2 + v7 + 24)) >> 5);
      *(a4 + v7 + 48) = *(a2 + v7 + 48);
      v7 += 56;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1B8A4D96C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 56;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<scml::TensorSpec,0>(v4);
      v4 -= 56;
      v5 += 56;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::variant<int,std::string>>::__init_with_size[abi:ne200100]<std::variant<int,std::string>*,std::variant<int,std::string>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::variant<int,std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B8A4DA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::variant<int,std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::variant<int,std::string>>,std::variant<int,std::string>*,std::variant<int,std::string>*,std::variant<int,std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<int,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a4, v6);
      v6 += 32;
      a4 += 32;
      v7 -= 32;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1B8A4DA9C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 32;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<int,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
      v4 -= 32;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<scml::TensorSpec,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::variant<int,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::vector<scml::TensorSpec>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 56;
        std::__destroy_at[abi:ne200100]<scml::TensorSpec,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5410], std::bad_variant_access::~bad_variant_access);
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<ik::core::GenericTensorsFromE5Tensors(std::unordered_map<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>> const&)::{lambda(ik::Tensor const&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,ik::E5BufferTensor,ik::PixelBufferTensor> const&>(void ***a1, uint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(**a1, (*a1)[1]);
  v4 = v3;
  *(v3 + 12) = *(a2 + 8);
  if (v3 + 5 != a2)
  {
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v3 + 7, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
  }

  v6 = *(a2 + 40);
  v5 = *(a2 + 48);
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  v7 = v4[11];
  v4[10] = v6;
  v4[11] = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<ik::core::GenericTensorsFromE5Tensors(std::unordered_map<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>> const&)::{lambda(ik::Tensor const&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,ik::E5BufferTensor,ik::PixelBufferTensor> const&>(void ***a1, uint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(**a1, (*a1)[1]);
  v4 = v3;
  *(v3 + 12) = *(a2 + 8);
  if (v3 + 5 != a2)
  {
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v3 + 7, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
  }

  v6 = *(a2 + 40);
  v5 = *(a2 + 48);
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  v7 = v4[11];
  v4[10] = v6;
  v4[11] = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void *std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
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

      std::vector<E5RT::ComputeDeviceType>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
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

uint64_t ik::core::E5OpImpl::CreateInputTensors@<X0>(E5RT::ExecutionStreamOperation **this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  result = E5RT::ExecutionStreamOperation::GetInputPorts(*this);
  v3 = *(result + 16);
  if (v3)
  {
    PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(*(v3 + 40));
    if (E5RT::OperandDescriptor::TryAsTensorDescriptor(PortDescriptorRef))
    {
      ik::core::CreateBufferTensor(*(v3 + 40), v5);
    }

    if (E5RT::OperandDescriptor::TryAsSurfaceDescriptor(PortDescriptorRef))
    {
      E5RT::IOPort::GetPortDescriptor(&SurfaceWidth, *(v3 + 40));
      v6 = E5RT::OperandDescriptor::SurfaceDescriptor(SurfaceWidth);
      if (SurfaceHeight)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](SurfaceHeight);
      }

      SurfaceWidth = E5RT::SurfaceDescriptor::GetSurfaceWidth(v6);
      SurfaceHeight = E5RT::SurfaceDescriptor::GetSurfaceHeight(v6);
      SurfaceFormat = E5RT::SurfaceDescriptor::GetSurfaceFormat(v6);
      v8 = SurfaceFormat;
      if (SurfaceFormat < 0x20 && ((0x80017FFF >> SurfaceFormat) & 1) != 0)
      {
        v14 = *&aF024800largbab[4 * SurfaceFormat];
        v15 = 1;
        v16 = 0;
        v17 = 0;
        ik::PixelBufferTensor::PixelBufferTensor(&v11, &SurfaceWidth);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::to_string(&v18, v8);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Unsupported SurfaceFormat: ", &v18, &v19);
      std::runtime_error::runtime_error(exception, &v19);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Unknown input port type.");
    __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void ik::core::CreateBufferTensor(ik::core *this, const E5RT::IOPort *a2)
{
  E5RT::IOPort::GetPortDescriptor(&__p, this);
  v2 = E5RT::OperandDescriptor::TensorDescriptor(__p);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  E5RT::TensorDescriptor::GetTensorDataType(v11, v2);
  ComponentSize = E5RT::TensorDataType::GetComponentSize(v11);
  ComponentDataType = E5RT::TensorDataType::GetComponentDataType(v11);
  if (ComponentDataType == 4)
  {
    if (ComponentSize == 2)
    {
      v5 = 3;
    }

    else
    {
      if (ComponentSize != 4)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Unsupported component size for float.");
        goto LABEL_21;
      }

      v5 = 4;
    }
  }

  else
  {
    if (ComponentDataType != 1)
    {
      if (ComponentDataType)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Unsupported e5rt component type.");
      }

      else
      {
        if (ComponentSize == 1)
        {
          v5 = 0;
          goto LABEL_16;
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Unsupported component size for uint.");
      }

LABEL_21:
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (ComponentSize == 2)
    {
      v5 = 1;
    }

    else
    {
      if (ComponentSize != 4)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Unsupported component size for int.");
        goto LABEL_21;
      }

      v5 = 2;
    }
  }

LABEL_16:
  v12 = v5;
  TensorShape = E5RT::TensorDescriptor::GetTensorShape(v2);
  __p = 0;
  v9 = 0;
  v10 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, *TensorShape, TensorShape[1], (TensorShape[1] - *TensorShape) >> 3);
  ik::E5BufferTensor::E5BufferTensor();
}

void sub_1B8A4E33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  __cxa_free_exception(v12);
  E5RT::TensorDataType::~TensorDataType(&a12);
  _Unwind_Resume(a1);
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<E5RT::ComputeDeviceType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B8A4E404(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B8A4E4CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ik::Tensor::Tensor(uint64_t a1, void *a2, _DWORD *a3, uint64_t *a4)
{
  *a1 = &unk_1F3745648;
  *(a1 + 8) = *a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1 + 16, *a4, a4[1], (a4[1] - *a4) >> 3);
  v6 = a2[1];
  *(a1 + 40) = *a2;
  *(a1 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void ik::E5BufferTensor::~E5BufferTensor(ik::E5BufferTensor *this)
{
  ik::Tensor::~Tensor(this);

  JUMPOUT(0x1B8CC7230);
}

void *std::__shared_ptr_emplace<ik::core::E5BufferStorage>::__shared_ptr_emplace[abi:ne200100]<decltype(nullptr),ik::DataType const&,ik::TensorShape const&,std::allocator<ik::core::E5BufferStorage>,0>(void *a1, uint64_t a2, unsigned int *a3, int **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F3745450;
  std::construct_at[abi:ne200100]<ik::core::E5BufferStorage,decltype(nullptr),ik::DataType const&,ik::TensorShape const&,ik::core::E5BufferStorage*>(a1 + 3, a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<ik::core::E5BufferStorage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F3745450;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8CC7230);
}

void *std::construct_at[abi:ne200100]<ik::core::E5BufferStorage,decltype(nullptr),ik::DataType const&,ik::TensorShape const&,ik::core::E5BufferStorage*>(void *a1, uint64_t a2, unsigned int *a3, int **a4)
{
  v6 = 0;
  v7 = 0;
  ik::core::E5BufferStorage::E5BufferStorage(a1, &v6, a3, a4);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return a1;
}

void sub_1B8A4E748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *ik::core::E5BufferStorage::E5BufferStorage(void *a1, void *a2, unsigned int *a3, int **a4)
{
  *a1 = &unk_1F37454A0;
  if (*a2)
  {
    v7 = a2[1];
    a1[1] = *a2;
    a1[2] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v8 = *a3;
    if (v8 >= 5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unknown data type");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v9 = qword_1B8AF4520[v8];
    v10 = *a4;
    v11 = a4[1];
    if (*a4 != v11)
    {
      v12 = 1;
      do
      {
        v13 = *v10;
        v10 += 2;
        v12 *= v13;
      }

      while (v10 != v11);
    }

    E5RT::BufferObject::AllocMemory();
    a1[1] = v24;
    if (v24)
    {
      operator new();
    }

    a1[2] = 0;
  }

  v14 = *a3;
  if (v14 >= 5)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v22, "Unknown data type");
    __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v15 = qword_1B8AF4520[v14];
  v16 = (a4[1] - *a4) >> 3;
  std::vector<unsigned long>::vector[abi:ne200100](a1 + 3, v16);
  v17 = v16 - 1;
  if (v16 >= 1)
  {
    v18 = a1[3];
    v19 = *a4;
    do
    {
      *(v18 + 8 * v17) = v15;
      v15 *= *&v19[2 * v17];
      v20 = v17-- + 1;
    }

    while (v20 > 1);
  }

  return a1;
}

void ik::core::E5BufferStorage::~E5BufferStorage(ik::core::E5BufferStorage *this)
{
  ik::core::E5BufferStorage::~E5BufferStorage(this);

  JUMPOUT(0x1B8CC7230);
}

{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t ik::core::E5BufferStorage::Bind(int a1, char **lpsrc)
{
  v2 = **lpsrc;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    _ZN2ik14InferenceErrorCI1St13runtime_errorEPKc(exception, "This tensor type can only be used with E5RT.");
  }

  v4 = *(*v3 + 40);

  return v4();
}

uint64_t ik::core::E5BufferStorage::Strides@<X0>(ik::core::E5BufferStorage *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a2, *(this + 3), *(this + 4), (*(this + 4) - *(this + 3)) >> 3);
}

void ik::TensorStorage::CopyData(ik::TensorStorage *this)
{
  (*(*this + 24))(this);
  (*(*this + 32))(&__p, this);
  ik::StridedArray::StridedArray();
}

void sub_1B8A4EBA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<E5RT::BufferObject  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8CC7230);
}

uint64_t std::__shared_ptr_pointer<E5RT::BufferObject  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<E5RT::BufferObject  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<E5RT::ComputeDeviceType>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B8A4ED1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

std::runtime_error *_ZN2ik14InferenceErrorCI1St13runtime_errorEPKc(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_1F37455A8;
  return result;
}

void ik::InferenceError::~InferenceError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1B8CC7230);
}

void sub_1B8A4EE70(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B8A4EEF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x1B8CC7230](v1, 0x1000C4077774924);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<unsigned char *,std::shared_ptr<unsigned char []>::__shared_ptr_default_delete<unsigned char [],unsigned char>,std::allocator<unsigned char>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8CC7230);
}

uint64_t std::__shared_ptr_pointer<unsigned char *,std::shared_ptr<unsigned char []>::__shared_ptr_default_delete<unsigned char [],unsigned char>,std::allocator<unsigned char>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1B8CC7210);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<unsigned char *,std::shared_ptr<unsigned char []>::__shared_ptr_default_delete<unsigned char [],unsigned char>,std::allocator<unsigned char>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void ik::Tensor::~Tensor(ik::Tensor *this)
{
  ik::Tensor::~Tensor(this);

  JUMPOUT(0x1B8CC7230);
}

{
  *this = &unk_1F3745648;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1B8A4F2AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
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

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_7variantIJN2ik14E5BufferTensorENS9_17PixelBufferTensorEEEEEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(std::string *this, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    this->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  ik::Tensor::Tensor(&this[1]);
  this[1].__r_.__value_.__r.__words[0] = &unk_1F3745408;
  LODWORD(this[3].__r_.__value_.__r.__words[1]) = 0;
  return this;
}

void sub_1B8A4F938(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

ik::Tensor *ik::Tensor::Tensor(ik::Tensor *this)
{
  v7 = 0;
  v8 = 0;
  v6 = 4;
  __p = 0;
  v4 = 0;
  v5 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, 0, 0, 0);
  ik::Tensor::Tensor(this, &v7, &v6, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return this;
}

{
  v7 = 0;
  v8 = 0;
  v6 = 4;
  __p = 0;
  v4 = 0;
  v5 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, 0, 0, 0);
  ik::Tensor::Tensor(this, &v7, &v6, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return this;
}

void sub_1B8A4F9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,0>(uint64_t a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ik::E5BufferTensor,ik::PixelBufferTensor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

unsigned int *std::__variant_detail::__dtor<std::__variant_detail::__traits<ik::E5BufferTensor,ik::PixelBufferTensor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](unsigned int *result)
{
  v1 = result;
  v2 = result[14];
  if (v2 != -1)
  {
    result = off_1F3745658[v2](&v3, result);
  }

  v1[14] = -1;
  return result;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<ik::E5BufferTensor,ik::PixelBufferTensor>>::__assign_alt[abi:ne200100]<0ul,ik::E5BufferTensor,ik::E5BufferTensor>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if (a1[14])
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ik::E5BufferTensor,ik::PixelBufferTensor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    ik::Tensor::Tensor(a1, a3);
    *a1 = &unk_1F3745408;
    a1[14] = 0;
  }

  else
  {
    *(a2 + 8) = *(a3 + 8);
    if (a2 != a3)
    {
      std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>((a2 + 16), *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 3);
    }

    v7 = *(a3 + 40);
    v6 = *(a3 + 48);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(a2 + 48);
    *(a2 + 40) = v7;
    *(a2 + 48) = v6;
    if (v8)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

ik::Tensor *ik::Tensor::Tensor(ik::Tensor *this, const ik::Tensor *a2)
{
  *this = &unk_1F3745648;
  *(this + 2) = *(a2 + 2);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 16, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 3);
  v4 = *(a2 + 6);
  *(this + 5) = *(a2 + 5);
  *(this + 6) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void ik::PixelBufferTensor::PixelBufferTensor(ik::PixelBufferTensor *a1, uint64_t a2)
{
  if (*a2 && *(a2 + 8))
  {
    pixelBufferOut = 0;
    v4 = *MEMORY[0x1E695E480];
    theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (*(a2 + 20) == 1)
    {
      Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v6 = *MEMORY[0x1E69660D8];
      v12.__r_.__value_.__r.__words[0] = Mutable;
      CFDictionarySetValue(theDict, v6, Mutable);
      ik::Dict::~Dict(&v12.__r_.__value_.__l.__data_);
    }

    if (*(a2 + 32) == 1)
    {
      ik::Dict::Set<unsigned long>(&theDict, *MEMORY[0x1E6966020], (a2 + 24), kCFNumberSInt64Type);
    }

    v7 = CVPixelBufferCreate(v4, *a2, *(a2 + 8), *(a2 + 16), theDict, &pixelBufferOut);
    if (!v7)
    {
      v8 = pixelBufferOut;
      ik::Dict::~Dict(&theDict);
      ik::PixelBufferTensor::PixelBufferTensor(a1, v8);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v11, v7);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed to create CVPixelBuffer. Status = ", &v11, &v12);
    std::runtime_error::runtime_error(exception, &v12);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v9 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v9, "Invalid dimensions requested for CVPixelBuffer creation.");
  __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1B8A5002C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, const void *a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      ik::Dict::~Dict(&a21);
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7EB39F0, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void ik::Dict::Set<unsigned long>(CFMutableDictionaryRef *a1, const void *a2, const void *a3, CFNumberType theType)
{
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], theType, a3);
  CFDictionarySetValue(*a1, a2, v6);

  CFRelease(v6);
}

void ik::Dict::~Dict(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_1B8A502F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ik::core::DataTypeFromPixelBuffer(ik::core *this, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  v3 = 0;
  if (PixelFormatType > 1278226533)
  {
    if (PixelFormatType > 1717855599)
    {
      if (PixelFormatType != 1717856627 && PixelFormatType != 1717855600)
      {
LABEL_16:
        v6 = PixelFormatType;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v8, v6);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Unsupported CVPixelBuffer type: ", &v8, &v9);
        std::runtime_error::runtime_error(exception, &v9);
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else if (PixelFormatType != 1278226534)
    {
      v4 = 1380401729;
      goto LABEL_10;
    }

    return 4;
  }

  if (PixelFormatType > 1111970368)
  {
    if (PixelFormatType == 1111970369)
    {
      return v3;
    }

    v4 = 1278226488;
  }

  else
  {
    if (PixelFormatType == 32)
    {
      return v3;
    }

    v4 = 1094862674;
  }

LABEL_10:
  if (PixelFormatType != v4)
  {
    goto LABEL_16;
  }

  return v3;
}

void sub_1B8A50480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void ik::PixelBufferTensor::~PixelBufferTensor(ik::PixelBufferTensor *this)
{
  ik::Tensor::~Tensor(this);

  JUMPOUT(0x1B8CC7230);
}

void *std::__shared_ptr_emplace<ik::core::PixelBufferStorage>::__shared_ptr_emplace[abi:ne200100]<__CVBuffer *&,std::allocator<ik::core::PixelBufferStorage>,0>(void *a1, CVPixelBufferRef *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F37456B0;
  ik::core::PixelBufferStorage::PixelBufferStorage((a1 + 3), *a2);
  return a1;
}

void std::__shared_ptr_emplace<ik::core::PixelBufferStorage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F37456B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8CC7230);
}

ik::core::PixelBufferStorage *ik::core::PixelBufferStorage::PixelBufferStorage(ik::core::PixelBufferStorage *this, CVPixelBufferRef texture)
{
  *this = &unk_1F3745700;
  *(this + 1) = texture;
  if (!texture)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Null CVPixelBuffer encountered.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CVPixelBufferRetain(texture);
  return this;
}

void ik::core::PixelBufferStorage::~PixelBufferStorage(CVPixelBufferRef *this)
{
  CVPixelBufferRelease(this[1]);
}

{
  CVPixelBufferRelease(this[1]);

  JUMPOUT(0x1B8CC7230);
}

void *ik::core::PixelBufferStorage::Data(CVPixelBufferRef *this)
{
  BaseAddress = CVPixelBufferGetBaseAddress(this[1]);
  if (!BaseAddress)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to get CVPixelBuffer's data. Ensure the buffer was locked.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = BaseAddress;
  CVPixelBufferGetDataSize(this[1]);
  return v3;
}

uint64_t ik::core::PixelBufferStorage::Strides@<X0>(ik::core **this@<X0>, __CVBuffer *a2@<X1>, void *a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = qword_1B8AF4520[ik::core::DataTypeFromPixelBuffer(this[1], a2)];
  v9[0] = CVPixelBufferGetBytesPerRow(this[1]);
  v9[1] = ik::core::ChannelCountFromPixelBuffer(this[1], v6) * v5;
  v9[2] = v5;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  result = std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(a3, v9, &v10, 3uLL);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B8A50954(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ik::core::CorePixelBufferScopeLock::~CorePixelBufferScopeLock(va);
  _Unwind_Resume(a1);
}

uint64_t ik::core::ChannelCountFromPixelBuffer(ik::core *this, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  v3 = 4;
  if (PixelFormatType > 1278226533)
  {
    if (PixelFormatType > 1717855599)
    {
      if (PixelFormatType != 1717856627)
      {
        v5 = 1717855600;
LABEL_14:
        if (PixelFormatType != v5)
        {
          goto LABEL_17;
        }
      }
    }

    else if (PixelFormatType != 1278226534)
    {
      v4 = 1380401729;
      goto LABEL_8;
    }

    return 1;
  }

  if (PixelFormatType > 1111970368)
  {
    if (PixelFormatType == 1111970369)
    {
      return v3;
    }

    v5 = 1278226488;
    goto LABEL_14;
  }

  if (PixelFormatType == 32)
  {
    return v3;
  }

  v4 = 1094862674;
LABEL_8:
  if (PixelFormatType != v4)
  {
LABEL_17:
    v7 = PixelFormatType;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v9, v7);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Unsupported CVPixelBuffer type: ", &v9, &v10);
    std::runtime_error::runtime_error(exception, &v10);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return v3;
}

void sub_1B8A50AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<E5RT::ComputeDeviceType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B8A50B6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

ik::core::CorePixelBufferScopeLock *ik::core::CorePixelBufferScopeLock::CorePixelBufferScopeLock(ik::core::CorePixelBufferScopeLock *this, CVPixelBufferRef pixelBuffer, CVPixelBufferLockFlags lockFlags)
{
  *this = &unk_1F3745758;
  *(this + 1) = pixelBuffer;
  *(this + 2) = lockFlags;
  if (CVPixelBufferLockBaseAddress(pixelBuffer, lockFlags))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to lock pixel buffer.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return this;
}

void ik::core::CorePixelBufferScopeLock::~CorePixelBufferScopeLock(ik::core::CorePixelBufferScopeLock *this)
{
  ik::core::CorePixelBufferScopeLock::~CorePixelBufferScopeLock(this);

  JUMPOUT(0x1B8CC7230);
}

{
  *this = &unk_1F3745758;
  if (CVPixelBufferUnlockBaseAddress(*(this + 1), *(this + 2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }
}

uint64_t ik::TensorShape::TensorShape<unsigned long,unsigned long,unsigned long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  v6 = a4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a1, &v8);
  std::vector<unsigned long>::push_back[abi:ne200100](a1, &v7);
  std::vector<unsigned long>::push_back[abi:ne200100](a1, &v6);
  return a1;
}

void sub_1B8A50D90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
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
      std::vector<float>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<E5RT::ComputeDeviceType>>(a1, v12);
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

void std::__variant_detail::__assignment<std::__variant_detail::__traits<ik::E5BufferTensor,ik::PixelBufferTensor>>::__assign_alt[abi:ne200100]<1ul,ik::PixelBufferTensor,ik::PixelBufferTensor>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if (a1[14] == 1)
  {
    *(a2 + 8) = *(a3 + 8);
    if (a2 != a3)
    {
      std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>((a2 + 16), *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 3);
    }

    v6 = *(a3 + 40);
    v5 = *(a3 + 48);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(a2 + 48);
    *(a2 + 40) = v6;
    *(a2 + 48) = v5;
    if (v7)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ik::E5BufferTensor,ik::PixelBufferTensor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    ik::Tensor::Tensor(a1, a3);
    *a1 = &unk_1F3745678;
    a1[14] = 1;
  }
}

uint64_t ik::core::E5OpImpl::Bind<ik::Tensor>(uint64_t a1, void *a2, void *a3)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(*a1);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v45, InputPorts);
  for (i = v46; i; i = *i)
  {
    v9 = i[5];
    v8 = i[6];
    v37 = &unk_1F3745788;
    v38 = v9;
    v39 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::find<std::string>(a2, i + 2);
    if (!v10)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    (*(*v10[10] + 16))(v10[10], &v37);
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }
  }

  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(*a1);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v43, OutputPorts);
  std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::clear(a1 + 24);
  for (j = v44; j; j = *j)
  {
    ik::Tensor::Tensor(&v37);
    v37 = &unk_1F3745408;
    if (!std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::find<std::string>(a3, j + 2))
    {
      ik::core::CreateBufferTensor(j[5], v14);
    }

    v15 = std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::find<std::string>(a3, j + 2);
    v16 = v15;
    if (!v15)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    LODWORD(v38) = *(v15 + 12);
    if (&v37 != (v15 + 5))
    {
      std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v39, v15[7], v15[8], (v15[8] - v15[7]) >> 3);
    }

    v18 = v16[10];
    v17 = v16[11];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v42;
    v41 = v18;
    v42 = v17;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    v21 = j[5];
    v20 = j[6];
    v35[0] = &unk_1F3745788;
    v35[1] = v21;
    v36 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v41 + 16))(v41, v35);
    v47 = (j + 2);
    v22 = std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 24), j + 2);
    v23 = v22;
    *(v22 + 12) = v38;
    if (v22 + 5 != &v37)
    {
      std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v22 + 7, v39, v40, (v40 - v39) >> 3);
    }

    v25 = v41;
    v24 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = v23[11];
    v23[10] = v25;
    v23[11] = v24;
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    ik::Tensor::~Tensor(&v37);
  }

  E5RT::ExecutionStream::CreateExecutionStream(&v37, v12);
  v27 = v37;
  v37 = 0;
  v28 = *(a1 + 16);
  *(a1 + 16) = v27;
  if (v28)
  {
    (*(*v28 + 8))(v28);
    v29 = v37;
    v37 = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }
  }

  v31 = *(a1 + 8);
  v30 = *(a1 + 16);
  v33 = *a1;
  v34 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::ExecutionStream::EncodeOperation();
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v43);
  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v45);
}

void sub_1B8A51328(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(va);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v17 - 136);
  _Unwind_Resume(a1);
}

void ik::core::E5CoreBinder::~E5CoreBinder(ik::core::E5CoreBinder *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1B8CC7230);
}

uint64_t std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<E5RT::IOPort>> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<E5RT::IOPort>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<E5RT::IOPort>> const&>();
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

void sub_1B8A516A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<E5RT::IOPort>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::shared_ptr<E5RT::IOPort>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  v5 = *(a2 + 4);
  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<E5RT::IOPort>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<E5RT::IOPort>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void ik::core::E5CoreBinder::Bind()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "E5RT does not support vImage_Bufer backed tensors.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "E5RT does not support espresso_buffer_t backed tensors.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

uint64_t ik::core::E5CoreBinder::Bind(ik::core::E5CoreBinder *this, CVPixelBufferRef pixelBuffer)
{
  v2 = *(this + 1);
  CVPixelBufferGetIOSurface(pixelBuffer);
  E5RT::SurfaceObject::CreateSurfaceFromHandle<__IOSurface *>();
  if (v4)
  {
    operator new();
  }

  E5RT::IOPort::BindMemoryObject();
  return 0;
}

void sub_1B8A51A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void ik::core::E5CoreBinder::Bind(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::IOPort::BindMemoryObject();
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1B8A51B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<E5RT::SurfaceObject  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8CC7230);
}

uint64_t std::__shared_ptr_pointer<E5RT::SurfaceObject  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<E5RT::SurfaceObject  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::find<std::string>(void *a1, const void **a2)
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

void std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,ik::E5BufferTensor>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,ik::E5BufferTensor>,0>(uint64_t a1)
{
  ik::Tensor::~Tensor((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1B8A52054(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ik::E5BufferTensor>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ik::E5BufferTensor>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ik::E5BufferTensor>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ik::E5BufferTensor>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,ik::E5BufferTensor>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN2ik14E5BufferTensorEEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSE_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSN_IJXspT2_EEEE(std::string *this, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    this->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  ik::Tensor::Tensor(&this[1]);
  this[1].__r_.__value_.__r.__words[0] = &unk_1F3745408;
  return this;
}

void sub_1B8A521B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::string::ends_with[abi:ne200100](uint64_t *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    v6 = a1;
    a1 = *a1;
    v5 = v6[1];
  }

  v8[0] = a1;
  v8[1] = v5;
  return std::string_view::ends_with[abi:ne200100](v8, __s, v4);
}

uint64_t scml::strCat<char const(&)[47],std::string const&>@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v7);
  scml::scml_impl::strCat<char const(&)[38],std::string>(&v7, a1, a2);
  std::ostringstream::str[abi:ne200100](&v7, a3);
  v7 = *MEMORY[0x1E69E54E8];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x1B8CC71A0](&v11);
}

void sub_1B8A52380(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

std::__fs::filesystem::path *std::__fs::filesystem::operator/[abi:ne200100]@<X0>(std::__fs::filesystem::path *this@<X1>, uint64_t a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a3->__pn_, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__pn_.__r_.__value_.__l.__data_ = *a2;
    a3->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  return std::__fs::filesystem::path::operator/=[abi:ne200100](a3, this);
}

void sub_1B8A523EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double std::__fs::filesystem::path::parent_path[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__parent_path(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

uint64_t std::string_view::compare[abi:ne200100](void *a1, unint64_t a2, size_t a3, void *__s2, size_t a5)
{
  v5 = a1[1];
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  if (v7 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  if (a5 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a5;
  }

  LODWORD(result) = memcmp((*a1 + a2), __s2, v10);
  if (v9 < a5)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v9 == a5)
  {
    v12 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v12;
  }
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1B8CC71A0](a1 + 112);
  return a1;
}

std::__fs::filesystem::path *std::__fs::filesystem::path::operator/=[abi:ne200100](std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append[abi:ne200100]<char const*,0>(a1, *a2, (*a2 + *(a2 + 8)));
  return a1;
}

void sub_1B8A52758(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_1B8A528D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void std::vector<scml::Config>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 64;
        std::__destroy_at[abi:ne200100]<scml::Config,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__destroy_at[abi:ne200100]<scml::Config,0>(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return std::__variant_detail::__dtor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
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
    std::vector<float>::__throw_length_error[abi:ne200100]();
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

void scml::Config::~Config(scml::Config *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this);
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2 != -1)
  {
    result = (off_1F3745830[v2])(&v3, result);
  }

  *(v1 + 40) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJDnxdNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIN4scml6ConfigENSB_ISG_EEEENS_13unordered_mapISD_SG_NS_4hashISD_EENS_8equal_toISD_EENSB_INS_4pairIKSD_SG_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSU_1EJDnxdSD_SI_SS_EEEEEEDcSW_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,scml::Config>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,scml::Config>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,scml::Config>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,scml::Config>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,scml::Config>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,scml::Config>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,scml::Config>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,scml::Config>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,scml::Config>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,scml::Config>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,scml::Config>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,scml::Config>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::string const,scml::Config>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::pair<std::string const,scml::Config>::~pair(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t ik::Tensor::Data<float>(uint64_t a1)
{
  if (*(a1 + 8) != 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Incorrect data type requested.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return (*(**(a1 + 40) + 24))(*(a1 + 40));
}

void *ik::ArrayView<float,-1>::ArrayView(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_1F37458B8;
  a1[1] = a2;
  a1[2] = 0;
  v4 = (a1 + 2);
  a1[3] = 0;
  a1[4] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>((a1 + 2), *a3, a3[1], (a3[1] - *a3) >> 3);
  v5 = a1[3];
  v6 = *v4;
  v7 = v5 == *v4;
  a1[5] = v5 - *v4;
  if (!v7)
  {
    do
    {
      if ((*v6 & 3) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Inconsistent stride encountered.");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      *v6++ >>= 2;
    }

    while (v6 != v5);
  }

  return a1;
}

void sub_1B8A5300C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void ik::MutableArrayView<float,-1>::~MutableArrayView(void *a1)
{
  *a1 = &unk_1F37458B8;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8CC7230);
}

void *ik::ArrayView<float,-1>::~ArrayView(void *a1)
{
  *a1 = &unk_1F37458B8;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void ik::ArrayView<float,-1>::~ArrayView(void *a1)
{
  *a1 = &unk_1F37458B8;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8CC7230);
}

uint64_t ik::core::E5OpImpl::Run@<X0>(ik::core::E5OpImpl *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 2);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Run invoked before binding tensors.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  E5RT::ExecutionStream::ExecuteStreamSync(v3);

  return std::unordered_map<std::string,ik::E5BufferTensor>::unordered_map(a2, this + 24);
}

uint64_t std::unordered_map<std::string,ik::E5BufferTensor>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,ik::E5BufferTensor> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,ik::E5BufferTensor> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::__construct_node_hash<std::pair<std::string const,ik::E5BufferTensor> const&>();
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

void sub_1B8A534BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ik::E5BufferTensor>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ik::E5BufferTensor>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,ik::E5BufferTensor>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  ik::Tensor::Tensor(&this[1], (a2 + 24));
  this[1].__r_.__value_.__r.__words[0] = &unk_1F3745408;
  return this;
}

void sub_1B8A535C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B8A53684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
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

  std::vector<float>::__throw_length_error[abi:ne200100]();
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

    std::__allocate_at_least[abi:ne200100]<std::allocator<E5RT::ComputeDeviceType>>(a1, v2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
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

void scml::ClipEmbeddingClassifier::PredictResult::~PredictResult(scml::ClipEmbeddingClassifier::PredictResult *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
}

const void **std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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