void sub_298079F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_298079F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(a1);
}

void print_tlv_field(_BYTE *a1@<X0>, int64_t a2@<X1>, unsigned int a3@<W2>, std::string *a4@<X8>)
{
  memset(a4, 170, sizeof(std::string));
  if (a3 > 5)
  {
    v7 = "unknown";
  }

  else
  {
    v7 = off_29EE89C20[a3];
  }

  v8 = strlen(v7);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    v10 = operator new(v11);
    a4->__r_.__value_.__l.__size_ = v9;
    a4->__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
    a4->__r_.__value_.__r.__words[0] = v10;
  }

  else
  {
    *(&a4->__r_.__value_.__s + 23) = v8;
    v10 = a4;
    if (!v8)
    {
      a4->__r_.__value_.__s.__data_[0] = 0;
      if (a2 != 1)
      {
        goto LABEL_8;
      }

LABEL_15:
      std::string::append(a4, " [1 byte]: ", 0xBuLL);
      goto LABEL_56;
    }
  }

  memcpy(v10, v7, v9);
  *(v10 + v9) = 0;
  if (a2 == 1)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (!a2)
  {
    std::string::append(a4, " [0 bytes]", 0xAuLL);
    return;
  }

  std::to_string(&v44, a2);
  v12 = std::string::insert(&v44, 0, " [", 2uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v46 = v12->__r_.__value_.__r.__words[2];
  *v45 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = SHIBYTE(v46);
  if ((SHIBYTE(v46) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v46) - 14) < 9)
    {
      v15 = (SHIBYTE(v46) + 9);
      v16 = v45;
      v17 = 22;
LABEL_22:
      v18 = 2 * v17;
      if (v15 > 2 * v17)
      {
        v18 = v15;
      }

      if ((v18 | 7) == 0x17)
      {
        v19 = 25;
      }

      else
      {
        v19 = (v18 | 7) + 1;
      }

      if (v18 >= 0x17)
      {
        v20 = v19;
      }

      else
      {
        v20 = 23;
      }

      v21 = v17 == 22;
      goto LABEL_31;
    }

    v26 = v45;
LABEL_38:
    v27 = v26 + v14;
    *v27 = *" bytes]: ";
    v27[8] = 32;
    v28 = v14 + 9;
    if (SHIBYTE(v46) < 0)
    {
      v45[1] = (v14 + 9);
    }

    else
    {
      HIBYTE(v46) = v28 & 0x7F;
    }

    v25 = v26 + v28;
    goto LABEL_42;
  }

  v14 = v45[1];
  v17 = (v46 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v17 - v45[1] >= 9)
  {
    v26 = v45[0];
    goto LABEL_38;
  }

  v15 = v45[1] + 9;
  if ((0x7FFFFFFFFFFFFFF7 - (v46 & 0x7FFFFFFFFFFFFFFFLL)) < v45[1] - v17 + 9)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v45[0];
  if (v17 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_22;
  }

  v21 = 0;
  v20 = 0x7FFFFFFFFFFFFFF7;
LABEL_31:
  v22 = operator new(v20);
  v23 = v22;
  if (v14)
  {
    memmove(v22, v16, v14);
  }

  v24 = v23 + v14;
  *v24 = *" bytes]: ";
  v24[8] = 32;
  if (!v21)
  {
    operator delete(v16);
  }

  v45[1] = v15;
  v46 = v20 | 0x8000000000000000;
  v45[0] = v23;
  v25 = &v15[v23];
LABEL_42:
  *v25 = 0;
  v48 = v46;
  *__p = *v45;
  v45[1] = 0;
  v46 = 0;
  v45[0] = 0;
  if (v48 >= 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  if (v48 >= 0)
  {
    v30 = HIBYTE(v48);
  }

  else
  {
    v30 = __p[1];
  }

  std::string::append(a4, v29, v30);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v46) & 0x80000000) == 0)
    {
LABEL_50:
      if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_55;
    }
  }

  else if ((SHIBYTE(v46) & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

  operator delete(v45[0]);
  if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_51:
    if (a2 < 1)
    {
      return;
    }

    goto LABEL_56;
  }

LABEL_55:
  operator delete(v44.__r_.__value_.__l.__data_);
  if (a2 < 1)
  {
    return;
  }

LABEL_56:
  v31 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  v32 = 3 * a2 - 1;
  if (v31 < 0)
  {
    v33 = a4->__r_.__value_.__l.__size_ + v32;
    if (v33 <= 0x7FFFFFFFFFFFFFF7)
    {
      if ((a4->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1 >= v33)
      {
        goto LABEL_68;
      }

LABEL_62:
      v34 = v33 | 7;
      if ((v33 | 7) == 0x17)
      {
        v34 = 24;
      }

      if (v33 <= 0x16)
      {
        v35 = 22;
      }

      else
      {
        v35 = v34;
      }

      std::string::__shrink_or_extend[abi:ne200100](a4, v35);
      goto LABEL_68;
    }

LABEL_86:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v33 = v32 + v31;
  if (v33 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_86;
  }

  if (v33 > 0x16)
  {
    goto LABEL_62;
  }

LABEL_68:
  if (*a1 >= 0xA0u)
  {
    v36 = (*a1 >> 4) + 87;
  }

  else
  {
    v36 = (*a1 >> 4) | 0x30;
  }

  std::string::push_back(a4, v36);
  v37 = *a1 & 0xF;
  if (v37 >= 0xA)
  {
    v38 = v37 + 87;
  }

  else
  {
    v38 = *a1 & 0xF | 0x30;
  }

  std::string::push_back(a4, v38);
  v39 = a2 - 1;
  if (v39)
  {
    v40 = a1 + 1;
    do
    {
      std::string::push_back(a4, 32);
      if (*v40 >= 0xA0u)
      {
        v41 = (*v40 >> 4) + 87;
      }

      else
      {
        v41 = (*v40 >> 4) | 0x30;
      }

      std::string::push_back(a4, v41);
      v42 = *v40 & 0xF;
      if (v42 >= 0xA)
      {
        v43 = v42 + 87;
      }

      else
      {
        v43 = *v40 & 0xF | 0x30;
      }

      std::string::push_back(a4, v43);
      ++v40;
      --v39;
    }

    while (v39);
  }
}

void sub_29807A3FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(a16);
    if (a15 < 0)
    {
LABEL_3:
      operator delete(__p);
      if (*(v28 + 23) < 0)
      {
LABEL_7:
        operator delete(*v28);
        _Unwind_Resume(a1);
      }

LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_3;
  }

  if (*(v28 + 23) < 0)
  {
    goto LABEL_7;
  }

  goto LABEL_8;
}

void print_tlv_field(uint64_t a1@<X0>, unsigned int a2@<W1>, std::string *a3@<X8>)
{
  print_tlv_field(*a1, *(a1 + 8) - *a1, a2, a3);
}

{
  print_tlv_field(*a1, *(a1 + 8) - *a1, a2, a3);
}

void print_tlv_field_pair(char *a1@<X0>, xpc_object_t *a2@<X1>, void *a3@<X8>)
{
  keys[1] = *MEMORY[0x29EDCA608];
  values = *a2;
  keys[0] = a1;
  v4 = xpc_dictionary_create(keys, &values, 1uLL);
  v5 = v4;
  if (v4)
  {
    xpc_retain(v4);
    *a3 = v5;
  }

  else
  {
    v5 = xpc_null_create();
    *a3 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C27FAF0](v5) != MEMORY[0x29EDCAA00])
  {
    v6 = xpc_null_create();
LABEL_8:
    *a3 = v6;
    goto LABEL_9;
  }

  xpc_retain(v5);
LABEL_9:
  xpc_release(v5);
  v7 = *MEMORY[0x29EDCA608];
}

{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  print_tlv_field_pair(a1, a2, a3);
}

void sub_29807A5B4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void extract_tlv_field(xpc_object_t *a1@<X0>, const char *a2@<X2>, size_t a3@<X1>, void *a4@<X8>)
{
  v8 = MEMORY[0x29C27FAF0](*a1);
  v9 = MEMORY[0x29EDCA9E0];
  if (v8 != MEMORY[0x29EDCA9E0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Null object encountered");
LABEL_20:
  }

  if (MEMORY[0x29C27FAF0](*a1) != v9 || xpc_array_get_count(*a1) <= a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Object does not have enough elements!");
    goto LABEL_20;
  }

  value = xpc_array_get_value(*a1, a3);
  v11 = MEMORY[0x29EDCAA00];
  if (value)
  {
    v12 = value;
    xpc_retain(value);
  }

  else
  {
    v12 = xpc_null_create();
    if (!v12)
    {
      v13 = xpc_null_create();
      v12 = 0;
      goto LABEL_11;
    }
  }

  if (MEMORY[0x29C27FAF0](v12) == v11)
  {
    xpc_retain(v12);
    v13 = v12;
  }

  else
  {
    v13 = xpc_null_create();
  }

LABEL_11:
  xpc_release(v12);
  if (MEMORY[0x29C27FAF0](v13) != v11)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "Object at index is not a dictionary type");
    goto LABEL_23;
  }

  if (xpc_dictionary_get_count(v13) != 1)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "Object at index is a dictionary but does not have exactly one element");
LABEL_23:
    v17->__vftable = &unk_2A1E9BC10;
  }

  *a4 = 0xAAAAAAAAAAAAAAAALL;
  v14 = xpc_dictionary_get_value(v13, a2);
  v15 = v14;
  *a4 = v14;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    v15 = xpc_null_create();
    *a4 = v15;
  }

  if (MEMORY[0x29C27FAF0](v15) == MEMORY[0x29EDCAA40])
  {
    v18 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v18, "Object at index does not have the right name");
    v18->__vftable = &unk_2A1E9BC10;
  }

  xpc_release(v13);
}

void sub_29807A864(_Unwind_Exception *a1)
{
  __cxa_free_exception(v4);
  xpc_release(v3);
  *v2 = 0;
  xpc_release(v1);
  _Unwind_Resume(a1);
}

void extract_tlv_field(xpc_object_t *a1@<X0>, size_t a2@<X1>, const char *a3@<X2>, void *a4@<X8>)
{
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  extract_tlv_field(a1, a3, a2, a4);
}

void TlvDefinition::sFillInParseFailure(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 3;
  v4 = xpc_string_create("[ Unable to parse this TLV as defined ]");
  v11 = v4;
  if (!v4)
  {
    v4 = xpc_null_create();
    v11 = v4;
  }

  print_tlv_field_pair("parse_error", &v11, &value);
  v5 = value.__r_.__value_.__r.__words[0];
  xpc_array_append_value(*(a1 + 32), value.__r_.__value_.__l.__data_);
  xpc_release(v5);
  xpc_release(v4);
  print_tlv_field(*a2, *(a2 + 8) - *a2, 2u, &value);
  if ((value.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_value = &value;
  }

  else
  {
    p_value = value.__r_.__value_.__r.__words[0];
  }

  v7 = xpc_string_create(p_value);
  v10 = v7;
  if (!v7)
  {
    v7 = xpc_null_create();
    v10 = v7;
  }

  print_tlv_field_pair("bytes", &v10, &v11);
  v8 = v11;
  xpc_array_append_value(*(a1 + 32), v11);
  xpc_release(v8);
  v11 = 0;
  xpc_release(v7);
  if (SHIBYTE(value.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(value.__r_.__value_.__l.__data_);
  }
}

void sub_29807AA5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  xpc_release(v18);
  xpc_release(v17);
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void *TlvDefinitionImpl<QmiResultCode,(unsigned char)2>::TlvDefinitionImpl(void *result)
{
  *result = &unk_2A1E9BC68;
  result[1] = "QMI Response Result";
  return result;
}

{
  *result = &unk_2A1E9BC68;
  result[1] = "QMI Response Result";
  return result;
}

size_t TlvDefinitionImpl<QmiResultCode,(unsigned char)2>::parse@<X0>(uint64_t a1@<X0>, char **a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v6;
  *(a3 + 16) = v6;
  TlvAnnotation::TlvAnnotation(a3);
  std::string::__assign_external(v7, *(a1 + 8));
  v8 = *a2;
  if (a2[1] - *a2 != 4)
  {
    goto LABEL_74;
  }

  v9 = *v8;
  v10 = *(v8 + 1);
  v84 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v83[7] = v11;
  v83[8] = v11;
  v83[5] = v11;
  v83[6] = v11;
  v83[3] = v11;
  v83[4] = v11;
  v83[1] = v11;
  v83[2] = v11;
  v82 = v11;
  v83[0] = v11;
  *v80 = v11;
  v81 = v11;
  v78 = v11;
  v79 = v11;
  v76 = v11;
  v77 = v11;
  v75 = v11;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v75);
  v12 = MEMORY[0x29C27F7A0](&v76, v9);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " (0x", 4);
  v14 = v13;
  v15 = *v13;
  *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v13 + *(v15 - 24) + 24) = 4;
  v16 = v13 + *(v15 - 24);
  if (*(v16 + 36) == -1)
  {
    std::ios_base::getloc((v13 + *(v15 - 24)));
    v17 = std::locale::use_facet(__dst, MEMORY[0x29EDC93D0]);
    v18 = (v17->__vftable[2].~facet_0)(v17, 32);
    std::locale::~locale(__dst);
    *(v16 + 36) = v18;
  }

  *(v16 + 36) = 48;
  v19 = MEMORY[0x29C27F7A0](v14, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ")", 1);
  if ((BYTE8(v82) & 0x10) != 0)
  {
    v22 = v82;
    if (v82 < *(&v79 + 1))
    {
      *&v82 = *(&v79 + 1);
      v22 = *(&v79 + 1);
    }

    v23 = v79;
    v20 = v22 - v79;
    if ((v22 - v79) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_79;
    }
  }

  else
  {
    if ((BYTE8(v82) & 8) == 0)
    {
      v20 = 0;
      BYTE7(v65) = 0;
      v21 = __dst;
      goto LABEL_18;
    }

    v23 = *(&v77 + 1);
    v20 = *(&v78 + 1) - *(&v77 + 1);
    if (*(&v78 + 1) - *(&v77 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_79:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v20 | 7) + 1;
    }

    v21 = operator new(v24);
    __dst[1].__locale_ = v20;
    *&v65 = v24 | 0x8000000000000000;
    __dst[0].__locale_ = v21;
    goto LABEL_17;
  }

  BYTE7(v65) = v20;
  v21 = __dst;
  if (v20)
  {
LABEL_17:
    memmove(v21, v23, v20);
  }

LABEL_18:
  *(v21 + v20) = 0;
  if ((SBYTE7(v65) & 0x80u) == 0)
  {
    locale = __dst;
  }

  else
  {
    locale = __dst[0].__locale_;
  }

  v26 = xpc_string_create(locale);
  v74 = v26;
  if (!v26)
  {
    v26 = xpc_null_create();
    v74 = v26;
  }

  print_tlv_field_pair("fResult", &v74, &value);
  v27 = value;
  xpc_array_append_value(*(a3 + 32), value);
  xpc_release(v27);
  value = 0;
  xpc_release(v26);
  if (SBYTE7(v65) < 0)
  {
    operator delete(__dst[0].__locale_);
  }

  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v72[7] = v28;
  v72[8] = v28;
  v72[5] = v28;
  v72[6] = v28;
  v72[3] = v28;
  v72[4] = v28;
  v72[1] = v28;
  v72[2] = v28;
  v71 = v28;
  v72[0] = v28;
  *__p = v28;
  v70 = v28;
  v67 = v28;
  v68 = v28;
  v65 = v28;
  v66 = v28;
  *&__dst[0].__locale_ = v28;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__dst);
  v29 = MEMORY[0x29C27F7A0](&v65, v10);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " (0x", 4);
  v31 = v30;
  v32 = *v30;
  *(v30 + *(*v30 - 24) + 8) = *(v30 + *(*v30 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v30 + *(v32 - 24) + 24) = 4;
  v33 = v30 + *(v32 - 24);
  if (*(v33 + 36) == -1)
  {
    std::ios_base::getloc((v30 + *(v32 - 24)));
    v34 = std::locale::use_facet(&value, MEMORY[0x29EDC93D0]);
    v35 = (v34->__vftable[2].~facet_0)(v34, 32);
    std::locale::~locale(&value);
    *(v33 + 36) = v35;
  }

  *(v33 + 36) = 48;
  v36 = MEMORY[0x29C27F7A0](v31, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ")", 1);
  if ((BYTE8(v71) & 0x10) != 0)
  {
    v39 = v71;
    if (v71 < *(&v68 + 1))
    {
      *&v71 = *(&v68 + 1);
      v39 = *(&v68 + 1);
    }

    v40 = v68;
    v37 = v39 - v68;
    if ((v39 - v68) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_81;
    }
  }

  else
  {
    if ((BYTE8(v71) & 8) == 0)
    {
      v37 = 0;
      HIBYTE(v62) = 0;
      p_value = &value;
      goto LABEL_41;
    }

    v40 = *(&v66 + 1);
    v37 = *(&v67 + 1) - *(&v66 + 1);
    if (*(&v67 + 1) - *(&v66 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_81:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v37 >= 0x17)
  {
    if ((v37 | 7) == 0x17)
    {
      v41 = 25;
    }

    else
    {
      v41 = (v37 | 7) + 1;
    }

    p_value = operator new(v41);
    v61 = v37;
    v62 = v41 | 0x8000000000000000;
    value = p_value;
    goto LABEL_40;
  }

  HIBYTE(v62) = v37;
  p_value = &value;
  if (v37)
  {
LABEL_40:
    memmove(p_value, v40, v37);
  }

LABEL_41:
  *(p_value + v37) = 0;
  if (v62 >= 0)
  {
    v42 = &value;
  }

  else
  {
    v42 = value;
  }

  v43 = xpc_string_create(v42);
  v63 = v43;
  if (!v43)
  {
    v43 = xpc_null_create();
    v63 = v43;
  }

  print_tlv_field_pair("fResultCode", &v63, &v74);
  v44 = v74;
  xpc_array_append_value(*(a3 + 32), v74);
  xpc_release(v44);
  v74 = 0;
  xpc_release(v43);
  if ((SHIBYTE(v62) & 0x80000000) == 0)
  {
    if (v9)
    {
      goto LABEL_48;
    }

LABEL_53:
    if (!v10)
    {
      v49 = xpc_string_create("none");
      v74 = v49;
      if (!v49)
      {
        v49 = xpc_null_create();
        v74 = v49;
      }

      print_tlv_field_pair("fError", &v74, &value);
      v50 = value;
      xpc_array_append_value(*(a3 + 32), value);
      xpc_release(v50);
      value = 0;
      xpc_release(v49);
    }

    goto LABEL_69;
  }

  operator delete(value);
  if (!v9)
  {
    goto LABEL_53;
  }

LABEL_48:
  v45 = qmi::asString(v10);
  v46 = strlen(v45);
  if (v46 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v47 = v46;
  if (v46 >= 0x17)
  {
    if ((v46 | 7) == 0x17)
    {
      v51 = 25;
    }

    else
    {
      v51 = (v46 | 7) + 1;
    }

    v48 = operator new(v51);
    v61 = v47;
    v62 = v51 | 0x8000000000000000;
    value = v48;
  }

  else
  {
    HIBYTE(v62) = v46;
    v48 = &value;
    if (!v46)
    {
      goto LABEL_62;
    }
  }

  memmove(v48, v45, v47);
LABEL_62:
  *(v48 + v47) = 0;
  if (v62 >= 0)
  {
    v52 = &value;
  }

  else
  {
    v52 = value;
  }

  v53 = xpc_string_create(v52);
  v63 = v53;
  if (!v53)
  {
    v53 = xpc_null_create();
    v63 = v53;
  }

  print_tlv_field_pair("fError", &v63, &v74);
  v54 = v74;
  xpc_array_append_value(*(a3 + 32), v74);
  xpc_release(v54);
  v74 = 0;
  xpc_release(v53);
  if (SHIBYTE(v62) < 0)
  {
    operator delete(value);
  }

LABEL_69:
  __dst[0] = *MEMORY[0x29EDC9528];
  v55 = __dst[0].__locale_;
  v56 = *(MEMORY[0x29EDC9528] + 72);
  v57 = *(MEMORY[0x29EDC9528] + 64);
  *(&__dst[0].__locale_ + *(__dst[0].__locale_ - 3)) = v57;
  v58 = v56;
  *&v65 = v56;
  *(&v65 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v70) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v65 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v66);
  std::iostream::~basic_iostream();
  MEMORY[0x29C27F880](v72);
  *&v75 = v55;
  *(&v75 + *(v55 - 3)) = v57;
  *&v76 = v58;
  *(&v76 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80[1]);
  }

  *(&v76 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v77);
  std::iostream::~basic_iostream();
  MEMORY[0x29C27F880](v83);
LABEL_74:
  result = MEMORY[0x29C27FAF0](*(a3 + 32));
  if (result != MEMORY[0x29EDCA9E0] || (result = xpc_array_get_count(*(a3 + 32))) == 0)
  {
    *(a3 + 24) = 3;
  }

  return result;
}

void sub_29807B45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  xpc_release(v57);
  xpc_release(v56);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a55);
  TlvAnnotation::~TlvAnnotation(v55);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C27F880](a1 + 128);
  return a1;
}

void TlvDefinitionImpl<QmiResultCode,(unsigned char)2>::build(xpc_object_t *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(4uLL);
  *v4 = 0;
  *a2 = v4;
  a2[1] = v4 + 2;
  a2[2] = v4 + 2;
  v6 = 0;
  extract_tlv_field(a1, "fResult", 0, &object);
  tlv::build_tlv_field(&object, &v6 + 1);
  xpc_release(object);
  extract_tlv_field(a1, "fResultCode", 1uLL, &object);
  tlv::build_tlv_field(&object, &v6);
  xpc_release(object);
  *v4 = HIWORD(v6);
  v4[1] = v6;
}

void sub_29807B83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  *(v10 + 8) = v9;
  operator delete(v9);
  _Unwind_Resume(a1);
}

void *QmiMessageRegistry::create@<X0>(void *a1@<X8>)
{
  v3 = operator new(0x30uLL);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = &unk_2A1E9BDC0;
  v3[5] = 0;
  v4 = v3;
  a1[1] = v3;
  v3[4] = 0;
  result = v3 + 4;
  v4[3] = result;
  *a1 = v4 + 3;
  return result;
}

_DWORD *QmiMessageRegistry::registerClass(uint64_t **this, const QmiMessageDefinition *a2)
{
  v4 = -1431655766;
  v5 = -21846;
  LOBYTE(v4) = *(a2 + 16);
  HIWORD(v4) = *(a2 + 9);
  LOBYTE(v5) = *(a2 + 20);
  v3 = a2;
  return std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::__emplace_multi<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType> const&,QmiMessageDefinition const*>(this, &v4, &v3);
}

void QmiMessageRegistry::getAllQmiMessageDefinitions(QmiMessageRegistry **this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = this + 1;
  v3 = *this;
  if (*this != (this + 1))
  {
    v5 = 0;
    do
    {
      v6 = *(v3 + 5);
      v7 = a2[2];
      v8 = *(v6 + 16);
      if (v5 >= v7)
      {
        v13 = *a2;
        v14 = &v5[-*a2] >> 5;
        if ((v14 + 1) >> 59)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v15 = *(v6 + 18);
        v16 = *(v6 + 20);
        v17 = *(v6 + 8);
        v18 = v7 - v13;
        v19 = (v7 - v13) >> 4;
        if (v19 <= v14 + 1)
        {
          v19 = v14 + 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFE0)
        {
          v20 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          if (v20 >> 59)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v21 = operator new(32 * v20);
        }

        else
        {
          v21 = 0;
        }

        v23 = &v21[32 * v14];
        v34 = v23;
        v35 = v23;
        v36 = &v21[32 * v20];
        *v23 = v8;
        *(v23 + 1) = v15;
        v23[4] = v16;
        v24 = strlen(v17);
        if (v24 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v25 = v24;
        if (v24 >= 0x17)
        {
          if ((v24 | 7) == 0x17)
          {
            v27 = 25;
          }

          else
          {
            v27 = (v24 | 7) + 1;
          }

          v26 = operator new(v27);
          *(v23 + 2) = v25;
          *(v23 + 3) = v27 | 0x8000000000000000;
          *(v23 + 1) = v26;
        }

        else
        {
          v26 = v23 + 8;
          v23[31] = v24;
          if (!v24)
          {
LABEL_34:
            v26[v25] = 0;
            v5 = v23 + 32;
            v28 = a2[1] - *a2;
            v29 = &v34[-v28];
            memcpy(&v34[-v28], *a2, v28);
            v30 = *a2;
            *a2 = v29;
            a2[1] = (v35 + 32);
            a2[2] = v36;
            if (v30)
            {
              operator delete(v30);
            }

            goto LABEL_36;
          }
        }

        memmove(v26, v17, v25);
        goto LABEL_34;
      }

      *v5 = v8;
      *(v5 + 1) = *(v6 + 18);
      v5[4] = *(v6 + 20);
      v9 = *(v6 + 8);
      v10 = strlen(v9);
      if (v10 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        if ((v10 | 7) == 0x17)
        {
          v22 = 25;
        }

        else
        {
          v22 = (v10 | 7) + 1;
        }

        v12 = operator new(v22);
        *(v5 + 2) = v11;
        *(v5 + 3) = v22 | 0x8000000000000000;
        *(v5 + 1) = v12;
      }

      else
      {
        v12 = v5 + 8;
        v5[31] = v10;
        if (!v10)
        {
          goto LABEL_23;
        }
      }

      memmove(v12, v9, v11);
LABEL_23:
      *(v12 + v11) = 0;
      v5 += 32;
LABEL_36:
      a2[1] = v5;
      v31 = *(v3 + 1);
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = *(v3 + 2);
          v33 = *v32 == v3;
          v3 = v32;
        }

        while (!v33);
      }

      v3 = v32;
    }

    while (v32 != v2);
  }
}

void sub_29807BBEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType,std::string>>::~__split_buffer(va);
  std::vector<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType,std::string>>::~vector[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void QmiMessageRegistry::getDefinitions(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, unsigned int a4@<W3>, void *a5@<X8>)
{
  v9 = (a1 + 8);
  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_70;
  }

  while (1)
  {
    while (1)
    {
      v10 = *(v8 + 32);
      if (v10 == a2)
      {
        break;
      }

      if (v10 > a2)
      {
        goto LABEL_3;
      }

      if (v10 >= a2)
      {
        v15 = 1;
      }

      else
      {
        v15 = -1;
      }

      if ((v15 & 0x80) == 0)
      {
        goto LABEL_27;
      }

LABEL_25:
      v8 = *(v8 + 8);
      if (!v8)
      {
        goto LABEL_70;
      }
    }

    v11 = *(v8 + 34);
    if (v11 != a3)
    {
      if (v11 > a3)
      {
        goto LABEL_3;
      }

      if (v11 >= a3)
      {
        v16 = 1;
      }

      else
      {
        v16 = -1;
      }

      if ((v16 & 0x80) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    v12 = *(v8 + 36);
    v13 = v12 == a4;
    if (v12 <= a4)
    {
      break;
    }

LABEL_3:
    v9 = v8;
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_70;
    }
  }

  if (v12 >= a4)
  {
    v14 = 1;
  }

  else
  {
    v14 = -1;
  }

  if (v13)
  {
    v14 = 0;
  }

  if (v14 < 0)
  {
    goto LABEL_25;
  }

LABEL_27:
  v17 = *v8;
  v18 = v8;
  if (*v8)
  {
    v18 = v8;
    do
    {
      v21 = *(v17 + 32);
      v22 = v21 == a2;
      if (v21 >= a2)
      {
        v23 = 1;
      }

      else
      {
        v23 = -1;
      }

      if (v22)
      {
        v24 = *(v17 + 34);
        v25 = v24 == a3;
        v23 = v24 >= a3 ? 1 : -1;
        if (v25)
        {
          v26 = *(v17 + 36);
          v27 = v26 == a4;
          v23 = v26 >= a4 ? 1 : -1;
          if (v27)
          {
            v23 = 0;
          }
        }
      }

      v19 = v23 & 0x80;
      v13 = v19 == 0;
      v20 = v19 >> 4;
      if (v13)
      {
        v18 = v17;
      }

      v17 = *(v17 + v20);
    }

    while (v17);
  }

  for (i = *(v8 + 8); i; i = *(i + v30))
  {
    v31 = *(i + 32);
    v32 = v31 == a2;
    if (v31 <= a2)
    {
      v33 = 1;
    }

    else
    {
      v33 = -1;
    }

    if (v32)
    {
      v34 = *(i + 34);
      v35 = v34 == a3;
      v33 = v34 <= a3 ? 1 : -1;
      if (v35)
      {
        v36 = *(i + 36);
        v37 = v36 == a4;
        v33 = v36 <= a4 ? 1 : -1;
        if (v37)
        {
          v33 = 0;
        }
      }
    }

    v29 = v33 & 0x80;
    v13 = v29 == 0;
    v30 = (v29 >> 4) ^ 8;
    if (!v13)
    {
      v9 = i;
    }
  }

  if (v18 != v9)
  {
    goto LABEL_191;
  }

LABEL_70:
  v38 = qword_2A1899900;
  if (!qword_2A1899900)
  {
    goto LABEL_139;
  }

  v9 = &qword_2A1899900;
  while (2)
  {
    while (2)
    {
      v39 = *(v38 + 32);
      if (v39 != a2)
      {
        if (v39 > a2)
        {
          goto LABEL_72;
        }

        if (v39 >= a2)
        {
          v44 = 1;
        }

        else
        {
          v44 = -1;
        }

        if ((v44 & 0x80) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_94;
      }

      v40 = *(v38 + 34);
      if (v40 != a3)
      {
        if (v40 > a3)
        {
LABEL_72:
          v9 = v38;
          v38 = *v38;
          if (!v38)
          {
            goto LABEL_139;
          }

          continue;
        }

        if (v40 >= a3)
        {
          v45 = 1;
        }

        else
        {
          v45 = -1;
        }

        if ((v45 & 0x80) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_94;
      }

      break;
    }

    v41 = *(v38 + 36);
    v42 = v41 == a4;
    if (v41 > a4)
    {
      goto LABEL_72;
    }

    if (v41 >= a4)
    {
      v43 = 1;
    }

    else
    {
      v43 = -1;
    }

    if (v42)
    {
      v43 = 0;
    }

    if (v43 < 0)
    {
LABEL_94:
      v38 = *(v38 + 8);
      if (!v38)
      {
        goto LABEL_139;
      }

      continue;
    }

    break;
  }

LABEL_96:
  v46 = *v38;
  v18 = v38;
  if (*v38)
  {
    v18 = v38;
    do
    {
      v49 = *(v46 + 32);
      v50 = v49 == a2;
      if (v49 >= a2)
      {
        v51 = 1;
      }

      else
      {
        v51 = -1;
      }

      if (v50)
      {
        v52 = *(v46 + 34);
        v53 = v52 == a3;
        v51 = v52 >= a3 ? 1 : -1;
        if (v53)
        {
          v54 = *(v46 + 36);
          v55 = v54 == a4;
          v51 = v54 >= a4 ? 1 : -1;
          if (v55)
          {
            v51 = 0;
          }
        }
      }

      v47 = v51 & 0x80;
      v13 = v47 == 0;
      v48 = v47 >> 4;
      if (v13)
      {
        v18 = v46;
      }

      v46 = *(v46 + v48);
    }

    while (v46);
  }

  for (j = *(v38 + 8); j; j = *(j + v58))
  {
    v59 = *(j + 32);
    v60 = v59 == a2;
    if (v59 <= a2)
    {
      v61 = 1;
    }

    else
    {
      v61 = -1;
    }

    if (v60)
    {
      v62 = *(j + 34);
      v63 = v62 == a3;
      v61 = v62 <= a3 ? 1 : -1;
      if (v63)
      {
        v64 = *(j + 36);
        v65 = v64 == a4;
        v61 = v64 <= a4 ? 1 : -1;
        if (v65)
        {
          v61 = 0;
        }
      }
    }

    v57 = v61 & 0x80;
    v13 = v57 == 0;
    v58 = (v57 >> 4) ^ 8;
    if (!v13)
    {
      v9 = j;
    }
  }

  if (v18 != v9)
  {
    goto LABEL_191;
  }

LABEL_139:
  v66 = operator new(0x30uLL);
  *(v66 + 3) = 0;
  v67 = (v66 + 24);
  *(v66 + 4) = 0;
  *(v66 + 5) = 0;
  v121 = 0xAAAAAAAAAAAAAAAALL;
  *&v68 = 0xAAAAAAAAAAAAAAAALL;
  *(&v68 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v120[7] = v68;
  v120[8] = v68;
  v120[5] = v68;
  v120[6] = v68;
  v120[3] = v68;
  v120[4] = v68;
  v120[1] = v68;
  v120[2] = v68;
  v119 = v68;
  v120[0] = v68;
  *__p = v68;
  v118 = v68;
  v115 = v68;
  v116 = v68;
  v113 = v68;
  v114 = v68;
  v112 = v68;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v112);
  v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v113, "(unknown ", 9);
  v70 = qmi::asShortString();
  v71 = strlen(v70);
  v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, v70, v71);
  v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, " ", 1);
  if (a4 > 2)
  {
    v74 = &unk_2980896BB;
  }

  else
  {
    v74 = off_29EE89C50[a4];
  }

  v75 = strlen(v74);
  v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, v74, v75);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, ")", 1);
  if ((BYTE8(v119) & 0x10) != 0)
  {
    v79 = v119;
    if (v119 < *(&v116 + 1))
    {
      *&v119 = *(&v116 + 1);
      v79 = *(&v116 + 1);
    }

    v80 = v116;
    v77 = v79 - v116;
    if ((v79 - v116) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_218;
    }
  }

  else
  {
    if ((BYTE8(v119) & 8) == 0)
    {
      v77 = 0;
      HIBYTE(v111) = 0;
      p_dst = &__dst;
      goto LABEL_156;
    }

    v80 = *(&v114 + 1);
    v77 = *(&v115 + 1) - *(&v114 + 1);
    if (*(&v115 + 1) - *(&v114 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_218:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v77 >= 0x17)
  {
    if ((v77 | 7) == 0x17)
    {
      v81 = 25;
    }

    else
    {
      v81 = (v77 | 7) + 1;
    }

    p_dst = operator new(v81);
    *(&__dst + 1) = v77;
    v111 = v81 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_155;
  }

  HIBYTE(v111) = v77;
  p_dst = &__dst;
  if (v77)
  {
LABEL_155:
    memmove(p_dst, v80, v77);
  }

LABEL_156:
  *(p_dst + v77) = 0;
  if (v66[47] < 0)
  {
    operator delete(*v67);
  }

  *v67 = __dst;
  v82 = MEMORY[0x29EDC9528];
  *(v66 + 5) = v111;
  *&v112 = *v82;
  v83 = v82[9];
  *(&v112 + *(v112 - 24)) = v82[8];
  *&v113 = v83;
  *(&v113 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v118) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v113 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v114);
  std::iostream::~basic_iostream();
  MEMORY[0x29C27F880](v120);
  *v66 = &unk_2A1E9BCF0;
  if (v66[47] < 0)
  {
    v67 = *v67;
  }

  v66[16] = a2;
  *(v66 + 9) = a3;
  v66[20] = a4;
  *v66 = &unk_2A1E9BCF0;
  *(v66 + 1) = v67;
  v84 = operator new(0x30uLL);
  v18 = v84;
  *(v84 + 32) = a2;
  *(v84 + 33) = -86;
  *(v84 + 17) = a3;
  *(v84 + 36) = a4;
  *(v84 + 37) = -86;
  v84[5] = v66;
  v85 = qword_2A1899900;
  if (qword_2A1899900)
  {
    do
    {
      while (1)
      {
        v87 = v85;
        v88 = *(v85 + 32);
        v89 = v88 == a2;
        if (v88 <= a2)
        {
          v90 = 1;
        }

        else
        {
          v90 = -1;
        }

        if (v89)
        {
          v91 = *(v87 + 17);
          v92 = v91 == a3;
          v90 = v91 <= a3 ? 1 : -1;
          if (v92)
          {
            v93 = *(v87 + 36);
            v94 = v93 == a4;
            v90 = v93 <= a4 ? 1 : -1;
            if (v94)
            {
              v90 = 0;
            }
          }
        }

        if ((v90 & 0x80) == 0)
        {
          break;
        }

        v85 = *v87;
        v86 = v87;
        if (!*v87)
        {
          goto LABEL_184;
        }
      }

      v85 = v87[1];
    }

    while (v85);
    v86 = v87 + 1;
  }

  else
  {
    v87 = &qword_2A1899900;
    v86 = &qword_2A1899900;
  }

LABEL_184:
  *v84 = 0;
  v84[1] = 0;
  v84[2] = v87;
  *v86 = v84;
  if (*qword_2A18998F8)
  {
    qword_2A18998F8 = *qword_2A18998F8;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(qword_2A1899900, v84);
  ++qword_2A1899908;
  v95 = v18[1];
  if (v95)
  {
    do
    {
      v9 = v95;
      v95 = *v95;
    }

    while (v95);
  }

  else
  {
    v9 = v18;
    do
    {
      v96 = v9;
      v9 = v9[2];
    }

    while (*v9 != v96);
  }

LABEL_191:
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (v18 == v9)
  {
    return;
  }

  v97 = 0;
  v98 = 0;
  v99 = 0;
  while (2)
  {
    v100 = v18[5];
    if (v99 >= v98)
    {
      v102 = v99 - v97;
      v103 = (v99 - v97) >> 3;
      v104 = v103 + 1;
      if ((v103 + 1) >> 61)
      {
        a5[1] = v99;
        a5[2] = v98;
        *a5 = v97;
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      if ((v98 - v97) >> 2 > v104)
      {
        v104 = (v98 - v97) >> 2;
      }

      if ((v98 - v97) >= 0x7FFFFFFFFFFFFFF8)
      {
        v105 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v105 = v104;
      }

      if (v105)
      {
        if (v105 >> 61)
        {
          a5[1] = v99;
          a5[2] = v98;
          *a5 = v97;
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v106 = operator new(8 * v105);
      }

      else
      {
        v106 = 0;
      }

      v107 = &v106[8 * v103];
      v98 = &v106[8 * v105];
      *v107 = v100;
      v99 = v107 + 8;
      memcpy(v106, v97, v102);
      if (v97)
      {
        operator delete(v97);
      }

      v97 = v106;
      v101 = v18[1];
      if (v101)
      {
        goto LABEL_210;
      }

      do
      {
LABEL_212:
        v108 = v18[2];
        v13 = *v108 == v18;
        v18 = v108;
      }

      while (!v13);
    }

    else
    {
      *v99 = v100;
      v99 += 8;
      v101 = v18[1];
      if (!v101)
      {
        goto LABEL_212;
      }

      do
      {
LABEL_210:
        v108 = v101;
        v101 = *v101;
      }

      while (v101);
    }

    v18 = v108;
    if (v108 != v9)
    {
      continue;
    }

    break;
  }

  a5[1] = v99;
  a5[2] = v98;
  *a5 = v97;
}

void sub_29807C4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v14[47] < 0)
  {
    operator delete(*v13);
  }

  operator delete(v14);
  _Unwind_Resume(a1);
}

uint64_t *QmiMessageDefinition::getDefaultTlvDefinition(QmiMessageDefinition *this)
{
  if (atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire))
  {
    return &qword_2A18998E8;
  }

  if (__cxa_guard_acquire(&_MergedGlobals_0))
  {
    qword_2A18998E8 = &unk_2A1E9BD78;
    unk_2A18998F0 = "(unknown tlv type)";
    __cxa_guard_release(&_MergedGlobals_0);
  }

  return &qword_2A18998E8;
}

void std::string::__shrink_or_extend[abi:ne200100](_BYTE *__dst, unint64_t a2)
{
  v4 = __dst[23];
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = 22;
    LOBYTE(v6) = __dst[23];
    v7 = v6;
    v8 = a2 < 0x17;
    if (a2 < 0x17)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v5 >= a2)
    {
      v13 = operator new(a2 + 1);
      v10 = v13;
      if ((v4 & 0x80000000) == 0 || (v14 = *(__dst + 2), (v14 & 0x7FFFFFFFFFFFFFFFLL) - 1 < a2))
      {

        operator delete(v13);
        return;
      }

      v6 = HIBYTE(v14);
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = operator new(a2 + 1);
      if ((v6 & 0x80) == 0)
      {
LABEL_8:
        v9 = __dst;
        goto LABEL_9;
      }
    }

    v9 = *__dst;
    goto LABEL_23;
  }

  v7 = *(__dst + 1);
  v11 = *(__dst + 2);
  v5 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v6 = HIBYTE(v11);
  v8 = a2 < 0x17;
  if (a2 >= 0x17)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = *__dst;
  v10 = __dst;
  if ((v6 & 0x80) != 0)
  {
LABEL_23:
    v15 = *(__dst + 1);
    v8 = 1;
    v12 = v15 + 1;
    if (v15 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_9:
  v12 = v6 + 1;
LABEL_10:
  memmove(v10, v9, v12);
LABEL_11:
  if (v8)
  {
    operator delete(v9);
    if (a2 < 0x17)
    {
      goto LABEL_13;
    }
  }

  else if (a2 < 0x17)
  {
LABEL_13:
    __dst[23] = v7 & 0x7F;
    return;
  }

  *(__dst + 1) = v7;
  *(__dst + 2) = (a2 + 1) | 0x8000000000000000;
  *__dst = v10;
}

void sub_29807C734(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t std::__split_buffer<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType,std::string>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **std::vector<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType,std::string>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 3));
        }

        v3 -= 4;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *anonymous namespace::UnknownQmiMessageDefinition::getTlvDefinition(_anonymous_namespace_::UnknownQmiMessageDefinition *this, int a2)
{
  if (a2 == 2 && *(this + 20) == 1)
  {
    return &qword_2A18998D8;
  }

  result = &qword_2A18998E8;
  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&_MergedGlobals_0))
    {
      qword_2A18998E8 = &unk_2A1E9BD78;
      unk_2A18998F0 = "(unknown tlv type)";
      __cxa_guard_release(&_MergedGlobals_0);
    }

    return &qword_2A18998E8;
  }

  return result;
}

uint64_t *anonymous namespace::UnknownQmiMessageDefinition::getTlvDefinition(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 20) == 1)
  {
    v2 = *(a2 + 23);
    if (v2 < 0)
    {
      if (a2[1] != 13)
      {
        goto LABEL_11;
      }

      a2 = *a2;
    }

    else if (v2 != 13)
    {
      goto LABEL_11;
    }

    if (*a2 == 0x6C75736552696D51 && *(a2 + 5) == 0x65646F43746C7573)
    {
      return &qword_2A18998D8;
    }
  }

LABEL_11:
  result = &qword_2A18998E8;
  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&_MergedGlobals_0))
    {
      qword_2A18998E8 = &unk_2A1E9BD78;
      unk_2A18998F0 = "(unknown tlv type)";
      __cxa_guard_release(&_MergedGlobals_0);
    }

    return &qword_2A18998E8;
  }

  return result;
}

void anonymous namespace::UnknownQmiMessageDefinition::~UnknownQmiMessageDefinition(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  if (*(this + 47) < 0)
  {
    v2 = this;
    operator delete(this[3]);
    this = v2;
  }

  operator delete(this);
}

void anonymous namespace::UnknownTlvType::parse(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v6;
  *(a3 + 16) = v6;
  TlvAnnotation::TlvAnnotation(a3);
  std::string::__assign_external(v7, *(a1 + 8));
  *(a3 + 24) = 1;
  print_tlv_field(*a2, *(a2 + 8) - *a2, 2u, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v9 = xpc_string_create(p_p);
  v12 = v9;
  if (!v9)
  {
    v9 = xpc_null_create();
    v12 = v9;
  }

  print_tlv_field_pair("bytes", &v12, &value);
  v10 = value;
  xpc_array_append_value(*(a3 + 32), value);
  xpc_release(v10);
  value = 0;
  xpc_release(v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29807CBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  v20 = v19;
  xpc_release(v20);
  xpc_release(v18);
  if (a15 < 0)
  {
    operator delete(__p);
    TlvAnnotation::~TlvAnnotation(v17);
    _Unwind_Resume(a1);
  }

  TlvAnnotation::~TlvAnnotation(v17);
  _Unwind_Resume(a1);
}

void anonymous namespace::UnknownTlvType::build(xpc_object_t *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (MEMORY[0x29C27FAF0](*a1) == MEMORY[0x29EDCA9E0])
  {
    extract_tlv_field(a1, "bytes", 0, &object);
    sAttemptToDecodeData(&v8, &object);
    v5 = object;
    v6 = v9;
    *a2 = v8;
    a2[2] = v6;
    xpc_release(v5);
  }
}

void std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(_BYTE *a1, unint64_t a2, size_t a3, _BYTE *__src, _BYTE *a5)
{
  v10 = a1[23];
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = *(a1 + 1);
    v14 = *(a1 + 2);
    v15 = v14 & 0x7FFFFFFFFFFFFFFFLL;
    v12 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v12 - v10 < a2)
    {
      v11 = v10 + a2;
      if (0x7FFFFFFFFFFFFFF8 - v15 >= v10 + a2 - v12)
      {
        v13 = *a1;
        if (v12 > 0x3FFFFFFFFFFFFFF2)
        {
          v18 = 0;
          v17 = 0x7FFFFFFFFFFFFFF7;
          v19 = operator new(0x7FFFFFFFFFFFFFF7uLL);
          if (!a3)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

LABEL_8:
        if (v11 <= 2 * v12)
        {
          v11 = 2 * v12;
        }

        if ((v11 | 7) == 0x17)
        {
          v16 = 25;
        }

        else
        {
          v16 = (v11 | 7) + 1;
        }

        if (v11 >= 0x17)
        {
          v17 = v16;
        }

        else
        {
          v17 = 23;
        }

        v18 = v12 == 22;
        v19 = operator new(v17);
        if (!a3)
        {
          goto LABEL_18;
        }

LABEL_17:
        memmove(v19, v13, a3);
LABEL_18:
        if (v10 != a3)
        {
          memmove(&v19[a3 + a2], &v13[a3], v10 - a3);
        }

        if (!v18)
        {
          operator delete(v13);
        }

        *a1 = v19;
        *(a1 + 2) = v17 | 0x8000000000000000;
        v20 = v10 + a2;
LABEL_30:
        *(a1 + 1) = v20;
        v19[v20] = 0;
        v24 = a5 - __src;
        if (a5 == __src)
        {
          return;
        }

        goto LABEL_27;
      }

LABEL_36:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v21 = HIBYTE(v14);
    v19 = *a1;
    v22 = a3;
    v23 = v10 - a3;
    if (v10 != a3)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (22 - v10 < a2)
    {
      v11 = v10 + a2;
      if (v10 + a2 - 0x7FFFFFFFFFFFFFF8 >= 0x800000000000001ELL)
      {
        v12 = 22;
        v13 = a1;
        goto LABEL_8;
      }

      goto LABEL_36;
    }

    LOBYTE(v21) = a1[23];
    v19 = a1;
    v22 = a3;
    v23 = v10 - a3;
    if (v10 != a3)
    {
LABEL_24:
      memmove(&v19[a3 + a2], &v19[a3], v23);
      LOBYTE(v21) = a1[23];
      v22 = v10;
    }
  }

  v20 = v22 + a2;
  if ((v21 & 0x80) != 0)
  {
    goto LABEL_30;
  }

  a1[23] = v20 & 0x7F;
  v19[v20] = 0;
  v24 = a5 - __src;
  if (a5 == __src)
  {
    return;
  }

LABEL_27:

  memmove(&v19[a3], __src, v24);
}

void std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::destroy(*a1);
    std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<QmiMessageRegistryPrivate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9BDC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

_DWORD *std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::__emplace_multi<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType> const&,QmiMessageDefinition const*>(uint64_t **a1, uint64_t a2, void *a3)
{
  v6 = operator new(0x30uLL);
  v7 = v6;
  v6[8] = *a2;
  *(v6 + 18) = *(a2 + 4);
  *(v6 + 5) = *a3;
  v8 = a1 + 1;
  v9 = a1[1];
  if (!v9)
  {
    *v6 = 0;
    *(v6 + 1) = 0;
    *(v6 + 2) = v8;
    *v8 = v6;
    v22 = **a1;
    if (!v22)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v10 = *(v6 + 32);
  v11 = *(v6 + 17);
  v12 = *(v6 + 36);
  do
  {
    while (1)
    {
      v14 = v9;
      v15 = *(v9 + 32);
      v16 = v10 == v15;
      if (v10 >= v15)
      {
        v17 = 1;
      }

      else
      {
        v17 = -1;
      }

      if (v16)
      {
        v18 = *(v14 + 17);
        v19 = v11 == v18;
        v17 = v11 >= v18 ? 1 : -1;
        if (v19)
        {
          v20 = *(v14 + 36);
          v21 = v12 == v20;
          if (v12 >= v20)
          {
            v17 = 1;
          }

          else
          {
            v17 = -1;
          }

          if (v21)
          {
            v17 = 0;
          }
        }
      }

      if ((v17 & 0x80) == 0)
      {
        break;
      }

      v9 = *v14;
      v13 = v14;
      if (!*v14)
      {
        goto LABEL_22;
      }
    }

    v9 = v14[1];
  }

  while (v9);
  v13 = v14 + 1;
LABEL_22:
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = v14;
  *v13 = v6;
  v22 = **a1;
  if (v22)
  {
LABEL_23:
    *a1 = v22;
  }

LABEL_24:
  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v6);
  a1[2] = (a1[2] + 1);
  return v7;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

uint64_t _GLOBAL__sub_I_QMIMessageRegistry_cpp()
{
  qword_2A18998D8 = &unk_2A1E9BC68;
  unk_2A18998E0 = "QMI Response Result";
  __cxa_atexit(TlvDefinitionImpl<QmiResultCode,(unsigned char)2>::~TlvDefinitionImpl, &qword_2A18998D8, &dword_29806B000);
  qword_2A1899900 = 0;
  qword_2A18998F8 = &qword_2A1899900;
  qword_2A1899908 = 0;

  return __cxa_atexit(std::multimap<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>::~multimap[abi:ne200100], &qword_2A18998F8, &dword_29806B000);
}

const char *qmi::asString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "UNKNOWN";
  }

  else
  {
    return (&off_29EE89C88)[a1];
  }
}

uint64_t ___ZN3qmi5parseEPKhiU13block_pointerFvRKNS_10QMuxHeaderES1_iE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a1 + 32);
  if (a5 < a4)
  {
    a3 = 0;
    a4 = 0;
  }

  return (*(v5 + 16))(v5, a2, a3, a4);
}

uint64_t qmi::createRequest@<X0>(int a1@<W0>, char a2@<W1>, __int16 a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (a1)
  {
    v11 = 9;
  }

  else
  {
    v11 = 8;
  }

  v12 = a4;
  v13 = v11 + a4;
  v14 = operator new(v13);
  *a6 = v14;
  a6[2] = &v14[v13];
  bzero(v14, v13);
  a6[1] = &v14[v13];
  *v14 = 1;
  *(v14 + 1) = v13 - 1;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = 0;
  v14[7] = a3;
  if (a1)
  {
    v14[8] = HIBYTE(a3);
  }

  return (*(a5 + 16))(a5, &v14[v11], v12);
}

void sub_29807D4FC(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t qmi::stripRequestHeader(int a1, uint64_t **a2)
{
  v2 = **a2;
  v3 = (*a2)[1] - v2;
  v4 = 8;
  if (a1)
  {
    v4 = 9;
  }

  v5 = v2 + v4;
  if (v3 >= v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void *___ZN3qmi13createRequestEhNS_11buffer_viewE_block_invoke(uint64_t a1, void *__dst, size_t a3)
{
  if (*(a1 + 48) < a3)
  {
    a3 = *(a1 + 48);
  }

  return memcpy(__dst, *(a1 + 32), a3);
}

void **qmi::fixupHeader(void **result, int a2, char a3)
{
  if (*result)
  {
    v3 = **result;
    v4 = 8;
    if (a2)
    {
      v4 = 9;
    }

    if ((*result)[1] - v3 >= v4)
    {
      v3[5] = a3;
      v3[7] = *(*result + 26);
      if (a2)
      {
        v3[8] = *(*result + 27);
      }
    }
  }

  return result;
}

void std::__shared_ptr_emplace<qmi::SerializedMessage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9BE40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void defaultWriteHandler(uint64_t a1, void *a2, uint64_t a3)
{
  exception = __cxa_allocate_exception(0x20uLL);
  tlv_write_exception::tlv_write_exception(exception, a1, a2, a3);
}

uint64_t qmi::MutableMessageBase::MutableMessageBase(uint64_t this)
{
  *this = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

qmi::MutableMessageBase *qmi::MutableMessageBase::MutableMessageBase(qmi::MutableMessageBase *this, const qmi::MutableMessageBase *a2)
{
  v3 = *a2;
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = v3;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = v6 - v5;
  if (v6 != v5)
  {
    if (v7 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = operator new(v6 - v5);
    *(this + 1) = v9;
    *(this + 2) = v9;
    *(this + 3) = &v9[v7];
    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
  }

  while (v5 != v6)
  {
    v11 = (*(**v5 + 32))();
    v13 = *(this + 2);
    v12 = *(this + 3);
    if (v13 < v12)
    {
      *v13 = v11;
      v10 = v13 + 1;
    }

    else
    {
      v14 = *v4;
      v15 = v13 - *v4;
      v16 = (v15 >> 3) + 1;
      if (v16 >> 61)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v17 = v12 - v14;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (v18 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v19 = v11;
        v20 = operator new(8 * v18);
        v11 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = &v20[8 * (v15 >> 3)];
      *v21 = v11;
      v10 = v21 + 1;
      memcpy(v20, v14, v15);
      *(this + 1) = v20;
      *(this + 2) = v10;
      *(this + 3) = &v20[8 * v18];
      if (v14)
      {
        operator delete(v14);
      }
    }

    *(this + 2) = v10;
    v5 += 8;
  }

  return this;
}

void sub_29807D830(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 qmi::MutableMessageBase::MutableMessageBase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t qmi::MutableMessageBase::MutableMessageBase(uint64_t this, const qmi::MessageBase *a2)
{
  *this = *a2;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = *a2;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

const qmi::MutableMessageBase *qmi::MutableMessageBase::operator=(const qmi::MutableMessageBase *a1, const qmi::MutableMessageBase *a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v11 = v3;
    *&v11[16] = v3;
    qmi::MutableMessageBase::MutableMessageBase(v11, a2);
    v4 = *a1;
    *a1 = *v11;
    *v11 = v4;
    v6 = *&v11[8];
    *&v11[8] = *(a1 + 1);
    v5 = *&v11[8];
    v7 = *&v11[24];
    v8 = *(a1 + 1);
    *(a1 + 8) = v6;
    *(a1 + 3) = v7;
    *&v11[16] = v8;
    v9 = v8;
    if (v5 == v8)
    {
      if (v5)
      {
LABEL_4:
        *&v11[16] = v5;
        operator delete(v5);
      }
    }

    else
    {
      do
      {
        if (*v5)
        {
          (*(**v5 + 8))(*v5);
        }

        ++v5;
      }

      while (v5 != v9);
      v5 = *&v11[8];
      if (*&v11[8])
      {
        goto LABEL_4;
      }
    }
  }

  return a1;
}

__int16 *qmi::MutableMessageBase::swap(__int16 *this, qmi::MutableMessageBase *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  v3 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  return this;
}

uint64_t qmi::MutableMessageBase::operator=(uint64_t a1, __int16 *a2)
{
  if (a1 != a2)
  {
    v3 = *a2;
    v4 = *(a2 + 3);
    v5 = *(a2 + 4);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(a2 + 1) = 0;
    *a1 = v3;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    *(a1 + 8) = v5;
    *(a1 + 24) = v4;
    if (v6 != v7)
    {
      v8 = v6;
      do
      {
        if (*v8)
        {
          (*(**v8 + 8))(*v8);
        }

        ++v8;
      }

      while (v8 != v7);
    }

    if (v6)
    {
      operator delete(v6);
    }
  }

  return a1;
}

uint64_t qmi::MutableMessageBase::getSize(qmi::MutableMessageBase *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  for (i = 4; v1 != v2; i += (*(*v4 + 16))(v4))
  {
    v4 = *v1++;
  }

  return i;
}

uint64_t tlv_write_exception::tlv_write_exception(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  v8 = a1 + 8;
  *a1 = &unk_2A1E9BEA8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v35 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34[7] = v9;
  v34[8] = v9;
  v34[5] = v9;
  v34[6] = v9;
  v34[3] = v9;
  v34[4] = v9;
  v34[1] = v9;
  v34[2] = v9;
  v33 = v9;
  v34[0] = v9;
  *__p = v9;
  v32 = v9;
  v29 = v9;
  v30 = v9;
  v27 = v9;
  v28 = v9;
  v26 = v9;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v26);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "tlv_write_exception: msgId=", 27);
  v11 = MEMORY[0x29C27F7A0](v10, a2);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " wrote ", 7);
  v13 = MEMORY[0x29C27F770](v12, a4);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " of ", 4);
  v15 = MEMORY[0x29C27F780](v14, a3[1] - *a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " expected bytes", 15);
  if ((BYTE8(v33) & 0x10) != 0)
  {
    v18 = v33;
    if (v33 < *(&v30 + 1))
    {
      *&v33 = *(&v30 + 1);
      v18 = *(&v30 + 1);
    }

    v19 = v30;
    v16 = v18 - v30;
    if ((v18 - v30) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((BYTE8(v33) & 8) == 0)
    {
      v16 = 0;
      HIBYTE(v25) = 0;
      p_dst = &__dst;
      goto LABEL_15;
    }

    v19 = *(&v28 + 1);
    v16 = *(&v29 + 1) - *(&v28 + 1);
    if (*(&v29 + 1) - *(&v28 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_21:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v16 >= 0x17)
  {
    if ((v16 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v16 | 7) + 1;
    }

    p_dst = operator new(v20);
    *(&__dst + 1) = v16;
    v25 = v20 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v25) = v16;
  p_dst = &__dst;
  if (v16)
  {
LABEL_14:
    memmove(p_dst, v19, v16);
  }

LABEL_15:
  *(p_dst + v16) = 0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*v8);
  }

  *v8 = __dst;
  v21 = MEMORY[0x29EDC9528];
  *(v8 + 16) = v25;
  *&v26 = *v21;
  v22 = v21[9];
  *(&v26 + *(v26 - 24)) = v21[8];
  *&v27 = v22;
  *(&v27 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v27 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v28);
  std::iostream::~basic_iostream();
  MEMORY[0x29C27F880](v34);
  return a1;
}

void sub_29807DED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (*(v13 + 31) < 0)
  {
    operator delete(*v14);
  }

  std::exception::~exception(v13);
  _Unwind_Resume(a1);
}

void tlv_write_exception::~tlv_write_exception(std::exception *this)
{
  this->__vftable = &unk_2A1E9BEA8;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    v2 = this;
    operator delete(this[1].__vftable);
    this = v2;
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_2A1E9BEA8;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
    std::exception::~exception(this);
  }

  else
  {
    std::exception::~exception(this);
  }

  operator delete(v2);
}

uint64_t tlv_write_exception::what(tlv_write_exception *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t qmi::generateRandomField(qmi *this, qmi::RandomMessageContext *a2, BOOL *a3)
{
  result = (*(*this + 16))(this, 1, a3);
  *a2 = result != 0;
  return result;
}

uint64_t qmi::generateRandomField(uint64_t a1, std::string *a2)
{
  v4 = (*(*a1 + 8))(a1, 20);
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
    if (size >= v4)
    {
      v6 = a2->__r_.__value_.__r.__words[0];
      a2->__r_.__value_.__l.__size_ = v4;
      goto LABEL_7;
    }

LABEL_5:
    std::string::append(a2, v4 - size, 0);
    goto LABEL_8;
  }

  if (v4 > size)
  {
    goto LABEL_5;
  }

  *(&a2->__r_.__value_.__s + 23) = v4;
  v6 = a2;
LABEL_7:
  v6->__r_.__value_.__s.__data_[v4] = 0;
LABEL_8:
  v7 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = a2->__r_.__value_.__r.__words[0];
  }

  if (v7 >= 0)
  {
    v9 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = a2->__r_.__value_.__l.__size_;
  }

  v10 = *(*a1 + 24);

  return v10(a1, v8, v9);
}

uint64_t qmi::validateTlvFields(std::string **this, qmi::RandomMessageReporter *a2, uint64_t a3)
{
  v3 = a2 ^ a3;
  if (v3 != 1)
  {
    return v3;
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[7] = v7;
  v26[8] = v7;
  v26[5] = v7;
  v26[6] = v7;
  v26[3] = v7;
  v26[4] = v7;
  v26[1] = v7;
  v26[2] = v7;
  v26[0] = v7;
  v24 = v7;
  v25 = v7;
  v22 = v7;
  *__p = v7;
  v20 = v7;
  v21 = v7;
  v19 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "Mismatch in BOOL field: actual=", 31);
  v9 = MEMORY[0x29C27F740](v8, a2);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", expected=", 11);
  MEMORY[0x29C27F740](v10, a3);
  if ((BYTE8(v25) & 0x10) != 0)
  {
    v13 = v25;
    if (v25 < *(&v22 + 1))
    {
      *&v25 = *(&v22 + 1);
      v13 = *(&v22 + 1);
    }

    v14 = v22;
    v11 = v13 - v22;
    if ((v13 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ((BYTE8(v25) & 8) == 0)
    {
      v11 = 0;
      HIBYTE(v18) = 0;
      v12 = __dst;
      goto LABEL_16;
    }

    v14 = *(&v20 + 1);
    v11 = *(&v21 + 1) - *(&v20 + 1);
    if (*(&v21 + 1) - *(&v20 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_25:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v11 | 7) + 1;
    }

    v12 = operator new(v15);
    __dst[1] = v11;
    v18 = v15 | 0x8000000000000000;
    __dst[0] = v12;
    goto LABEL_15;
  }

  HIBYTE(v18) = v11;
  v12 = __dst;
  if (v11)
  {
LABEL_15:
    memmove(v12, v14, v11);
  }

LABEL_16:
  *(v12 + v11) = 0;
  memset(&v28, 170, sizeof(v28));
  ctu::join<std::__wrap_iter<char const**>>(this[1], this[2], "::", 2uLL, &v28);
  ((*this)->__r_.__value_.__r.__words[2])(this, &v28, __dst);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    operator delete(__dst[0]);
    goto LABEL_18;
  }

  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  *&v19 = *MEMORY[0x29EDC9538];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v19 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v19 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v20);
  std::ostream::~ostream();
  MEMORY[0x29C27F880](v26);
  return v3;
}

void sub_29807E58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (*(v16 - 65) < 0)
  {
    operator delete(*(v16 - 88));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      std::ostringstream::~ostringstream(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void sub_29807E5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29807E5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

BOOL qmi::validateTlvFields(std::string **this, qmi::RandomMessageReporter *a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return a2 != a3;
  }

  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[7] = v6;
  v25[8] = v6;
  v25[5] = v6;
  v25[6] = v6;
  v25[3] = v6;
  v25[4] = v6;
  v25[1] = v6;
  v25[2] = v6;
  v25[0] = v6;
  v23 = v6;
  v24 = v6;
  v21 = v6;
  *__p = v6;
  v19 = v6;
  v20 = v6;
  v18 = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "Mismatch in int8_t field: actual=", 33);
  v8 = MEMORY[0x29C27F750](v7, a2);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", expected=", 11);
  MEMORY[0x29C27F750](v9, a3);
  if ((BYTE8(v24) & 0x10) != 0)
  {
    v12 = v24;
    if (v24 < *(&v21 + 1))
    {
      *&v24 = *(&v21 + 1);
      v12 = *(&v21 + 1);
    }

    v13 = v21;
    v10 = v12 - v21;
    if ((v12 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ((BYTE8(v24) & 8) == 0)
    {
      v10 = 0;
      HIBYTE(v17) = 0;
      v11 = __dst;
      goto LABEL_16;
    }

    v13 = *(&v19 + 1);
    v10 = *(&v20 + 1) - *(&v19 + 1);
    if (*(&v20 + 1) - *(&v19 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_25:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v10 | 7) + 1;
    }

    v11 = operator new(v14);
    __dst[1] = v10;
    v17 = v14 | 0x8000000000000000;
    __dst[0] = v11;
    goto LABEL_15;
  }

  HIBYTE(v17) = v10;
  v11 = __dst;
  if (v10)
  {
LABEL_15:
    memmove(v11, v13, v10);
  }

LABEL_16:
  *(v11 + v10) = 0;
  memset(&v27, 170, sizeof(v27));
  ctu::join<std::__wrap_iter<char const**>>(this[1], this[2], "::", 2uLL, &v27);
  ((*this)->__r_.__value_.__r.__words[2])(this, &v27, __dst);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    operator delete(__dst[0]);
    goto LABEL_18;
  }

  if (SHIBYTE(v17) < 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  *&v18 = *MEMORY[0x29EDC9538];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v18 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v18 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v19);
  std::ostream::~ostream();
  MEMORY[0x29C27F880](v25);
  return a2 != a3;
}

{
  if (a2 == a3)
  {
    return a2 != a3;
  }

  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[7] = v6;
  v25[8] = v6;
  v25[5] = v6;
  v25[6] = v6;
  v25[3] = v6;
  v25[4] = v6;
  v25[1] = v6;
  v25[2] = v6;
  v25[0] = v6;
  v23 = v6;
  v24 = v6;
  v21 = v6;
  *__p = v6;
  v19 = v6;
  v20 = v6;
  v18 = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "Mismatch in uint8_t field: actual=", 34);
  v8 = MEMORY[0x29C27F760](v7, a2);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", expected=", 11);
  MEMORY[0x29C27F760](v9, a3);
  if ((BYTE8(v24) & 0x10) != 0)
  {
    v12 = v24;
    if (v24 < *(&v21 + 1))
    {
      *&v24 = *(&v21 + 1);
      v12 = *(&v21 + 1);
    }

    v13 = v21;
    v10 = v12 - v21;
    if ((v12 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ((BYTE8(v24) & 8) == 0)
    {
      v10 = 0;
      HIBYTE(v17) = 0;
      v11 = __dst;
      goto LABEL_16;
    }

    v13 = *(&v19 + 1);
    v10 = *(&v20 + 1) - *(&v19 + 1);
    if (*(&v20 + 1) - *(&v19 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_25:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v10 | 7) + 1;
    }

    v11 = operator new(v14);
    __dst[1] = v10;
    v17 = v14 | 0x8000000000000000;
    __dst[0] = v11;
    goto LABEL_15;
  }

  HIBYTE(v17) = v10;
  v11 = __dst;
  if (v10)
  {
LABEL_15:
    memmove(v11, v13, v10);
  }

LABEL_16:
  *(v11 + v10) = 0;
  memset(&v27, 170, sizeof(v27));
  ctu::join<std::__wrap_iter<char const**>>(this[1], this[2], "::", 2uLL, &v27);
  ((*this)->__r_.__value_.__r.__words[2])(this, &v27, __dst);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    operator delete(__dst[0]);
    goto LABEL_18;
  }

  if (SHIBYTE(v17) < 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  *&v18 = *MEMORY[0x29EDC9538];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v18 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v18 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v19);
  std::ostream::~ostream();
  MEMORY[0x29C27F880](v25);
  return a2 != a3;
}

{
  if (a2 == a3)
  {
    return a2 != a3;
  }

  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[7] = v6;
  v25[8] = v6;
  v25[5] = v6;
  v25[6] = v6;
  v25[3] = v6;
  v25[4] = v6;
  v25[1] = v6;
  v25[2] = v6;
  v25[0] = v6;
  v23 = v6;
  v24 = v6;
  v21 = v6;
  *__p = v6;
  v19 = v6;
  v20 = v6;
  v18 = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "Mismatch in int16_t field: actual=", 34);
  v8 = MEMORY[0x29C27F790](v7, a2);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", expected=", 11);
  MEMORY[0x29C27F790](v9, a3);
  if ((BYTE8(v24) & 0x10) != 0)
  {
    v12 = v24;
    if (v24 < *(&v21 + 1))
    {
      *&v24 = *(&v21 + 1);
      v12 = *(&v21 + 1);
    }

    v13 = v21;
    v10 = v12 - v21;
    if ((v12 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ((BYTE8(v24) & 8) == 0)
    {
      v10 = 0;
      HIBYTE(v17) = 0;
      v11 = __dst;
      goto LABEL_16;
    }

    v13 = *(&v19 + 1);
    v10 = *(&v20 + 1) - *(&v19 + 1);
    if (*(&v20 + 1) - *(&v19 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_25:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v10 | 7) + 1;
    }

    v11 = operator new(v14);
    __dst[1] = v10;
    v17 = v14 | 0x8000000000000000;
    __dst[0] = v11;
    goto LABEL_15;
  }

  HIBYTE(v17) = v10;
  v11 = __dst;
  if (v10)
  {
LABEL_15:
    memmove(v11, v13, v10);
  }

LABEL_16:
  *(v11 + v10) = 0;
  memset(&v27, 170, sizeof(v27));
  ctu::join<std::__wrap_iter<char const**>>(this[1], this[2], "::", 2uLL, &v27);
  ((*this)->__r_.__value_.__r.__words[2])(this, &v27, __dst);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    operator delete(__dst[0]);
    goto LABEL_18;
  }

  if (SHIBYTE(v17) < 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  *&v18 = *MEMORY[0x29EDC9538];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v18 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v18 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v19);
  std::ostream::~ostream();
  MEMORY[0x29C27F880](v25);
  return a2 != a3;
}

{
  if (a2 == a3)
  {
    return a2 != a3;
  }

  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[7] = v6;
  v25[8] = v6;
  v25[5] = v6;
  v25[6] = v6;
  v25[3] = v6;
  v25[4] = v6;
  v25[1] = v6;
  v25[2] = v6;
  v25[0] = v6;
  v23 = v6;
  v24 = v6;
  v21 = v6;
  *__p = v6;
  v19 = v6;
  v20 = v6;
  v18 = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "Mismatch in uint16_t field: actual=", 35);
  v8 = MEMORY[0x29C27F7A0](v7, a2);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", expected=", 11);
  MEMORY[0x29C27F7A0](v9, a3);
  if ((BYTE8(v24) & 0x10) != 0)
  {
    v12 = v24;
    if (v24 < *(&v21 + 1))
    {
      *&v24 = *(&v21 + 1);
      v12 = *(&v21 + 1);
    }

    v13 = v21;
    v10 = v12 - v21;
    if ((v12 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ((BYTE8(v24) & 8) == 0)
    {
      v10 = 0;
      HIBYTE(v17) = 0;
      v11 = __dst;
      goto LABEL_16;
    }

    v13 = *(&v19 + 1);
    v10 = *(&v20 + 1) - *(&v19 + 1);
    if (*(&v20 + 1) - *(&v19 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_25:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v10 | 7) + 1;
    }

    v11 = operator new(v14);
    __dst[1] = v10;
    v17 = v14 | 0x8000000000000000;
    __dst[0] = v11;
    goto LABEL_15;
  }

  HIBYTE(v17) = v10;
  v11 = __dst;
  if (v10)
  {
LABEL_15:
    memmove(v11, v13, v10);
  }

LABEL_16:
  *(v11 + v10) = 0;
  memset(&v27, 170, sizeof(v27));
  ctu::join<std::__wrap_iter<char const**>>(this[1], this[2], "::", 2uLL, &v27);
  ((*this)->__r_.__value_.__r.__words[2])(this, &v27, __dst);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    operator delete(__dst[0]);
    goto LABEL_18;
  }

  if (SHIBYTE(v17) < 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  *&v18 = *MEMORY[0x29EDC9538];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v18 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v18 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v19);
  std::ostream::~ostream();
  MEMORY[0x29C27F880](v25);
  return a2 != a3;
}

{
  if (a2 == a3)
  {
    return a2 != a3;
  }

  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[7] = v6;
  v25[8] = v6;
  v25[5] = v6;
  v25[6] = v6;
  v25[3] = v6;
  v25[4] = v6;
  v25[1] = v6;
  v25[2] = v6;
  v25[0] = v6;
  v23 = v6;
  v24 = v6;
  v21 = v6;
  *__p = v6;
  v19 = v6;
  v20 = v6;
  v18 = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "Mismatch in int32_t field: actual=", 34);
  v8 = MEMORY[0x29C27F750](v7, a2);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", expected=", 11);
  MEMORY[0x29C27F750](v9, a3);
  if ((BYTE8(v24) & 0x10) != 0)
  {
    v12 = v24;
    if (v24 < *(&v21 + 1))
    {
      *&v24 = *(&v21 + 1);
      v12 = *(&v21 + 1);
    }

    v13 = v21;
    v10 = v12 - v21;
    if ((v12 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ((BYTE8(v24) & 8) == 0)
    {
      v10 = 0;
      HIBYTE(v17) = 0;
      v11 = __dst;
      goto LABEL_16;
    }

    v13 = *(&v19 + 1);
    v10 = *(&v20 + 1) - *(&v19 + 1);
    if (*(&v20 + 1) - *(&v19 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_25:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v10 | 7) + 1;
    }

    v11 = operator new(v14);
    __dst[1] = v10;
    v17 = v14 | 0x8000000000000000;
    __dst[0] = v11;
    goto LABEL_15;
  }

  HIBYTE(v17) = v10;
  v11 = __dst;
  if (v10)
  {
LABEL_15:
    memmove(v11, v13, v10);
  }

LABEL_16:
  *(v11 + v10) = 0;
  memset(&v27, 170, sizeof(v27));
  ctu::join<std::__wrap_iter<char const**>>(this[1], this[2], "::", 2uLL, &v27);
  ((*this)->__r_.__value_.__r.__words[2])(this, &v27, __dst);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    operator delete(__dst[0]);
    goto LABEL_18;
  }

  if (SHIBYTE(v17) < 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  *&v18 = *MEMORY[0x29EDC9538];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v18 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v18 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v19);
  std::ostream::~ostream();
  MEMORY[0x29C27F880](v25);
  return a2 != a3;
}

{
  if (a2 == a3)
  {
    return a2 != a3;
  }

  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[7] = v6;
  v25[8] = v6;
  v25[5] = v6;
  v25[6] = v6;
  v25[3] = v6;
  v25[4] = v6;
  v25[1] = v6;
  v25[2] = v6;
  v25[0] = v6;
  v23 = v6;
  v24 = v6;
  v21 = v6;
  *__p = v6;
  v19 = v6;
  v20 = v6;
  v18 = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "Mismatch in uint32_t field: actual=", 35);
  v8 = MEMORY[0x29C27F760](v7, a2);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", expected=", 11);
  MEMORY[0x29C27F760](v9, a3);
  if ((BYTE8(v24) & 0x10) != 0)
  {
    v12 = v24;
    if (v24 < *(&v21 + 1))
    {
      *&v24 = *(&v21 + 1);
      v12 = *(&v21 + 1);
    }

    v13 = v21;
    v10 = v12 - v21;
    if ((v12 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ((BYTE8(v24) & 8) == 0)
    {
      v10 = 0;
      HIBYTE(v17) = 0;
      v11 = __dst;
      goto LABEL_16;
    }

    v13 = *(&v19 + 1);
    v10 = *(&v20 + 1) - *(&v19 + 1);
    if (*(&v20 + 1) - *(&v19 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_25:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v10 | 7) + 1;
    }

    v11 = operator new(v14);
    __dst[1] = v10;
    v17 = v14 | 0x8000000000000000;
    __dst[0] = v11;
    goto LABEL_15;
  }

  HIBYTE(v17) = v10;
  v11 = __dst;
  if (v10)
  {
LABEL_15:
    memmove(v11, v13, v10);
  }

LABEL_16:
  *(v11 + v10) = 0;
  memset(&v27, 170, sizeof(v27));
  ctu::join<std::__wrap_iter<char const**>>(this[1], this[2], "::", 2uLL, &v27);
  ((*this)->__r_.__value_.__r.__words[2])(this, &v27, __dst);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    operator delete(__dst[0]);
    goto LABEL_18;
  }

  if (SHIBYTE(v17) < 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  *&v18 = *MEMORY[0x29EDC9538];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v18 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v18 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v19);
  std::ostream::~ostream();
  MEMORY[0x29C27F880](v25);
  return a2 != a3;
}

void sub_29807E918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (*(v16 - 65) < 0)
  {
    operator delete(*(v16 - 88));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      std::ostringstream::~ostringstream(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void sub_29807E974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29807E988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29807ECA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (*(v16 - 65) < 0)
  {
    operator delete(*(v16 - 88));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      std::ostringstream::~ostringstream(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void sub_29807ED00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29807ED14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29807F030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (*(v16 - 65) < 0)
  {
    operator delete(*(v16 - 88));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      std::ostringstream::~ostringstream(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void sub_29807F08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29807F0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29807F3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (*(v16 - 65) < 0)
  {
    operator delete(*(v16 - 88));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      std::ostringstream::~ostringstream(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void sub_29807F418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29807F42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29807F748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (*(v16 - 65) < 0)
  {
    operator delete(*(v16 - 88));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      std::ostringstream::~ostringstream(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void sub_29807F7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29807F7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29807FAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (*(v16 - 65) < 0)
  {
    operator delete(*(v16 - 88));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      std::ostringstream::~ostringstream(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void sub_29807FB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29807FB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

BOOL qmi::validateTlvFields(std::string **this, qmi::RandomMessageReporter *a2, qmi::RandomMessageReporter *a3)
{
  if (a2 == a3)
  {
    return a2 != a3;
  }

  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[7] = v6;
  v25[8] = v6;
  v25[5] = v6;
  v25[6] = v6;
  v25[3] = v6;
  v25[4] = v6;
  v25[1] = v6;
  v25[2] = v6;
  v25[0] = v6;
  v23 = v6;
  v24 = v6;
  v21 = v6;
  *__p = v6;
  v19 = v6;
  v20 = v6;
  v18 = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "Mismatch in uint64_t field: actual=", 35);
  v8 = MEMORY[0x29C27F7C0](v7, a2);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", expected=", 11);
  MEMORY[0x29C27F7C0](v9, a3);
  if ((BYTE8(v24) & 0x10) != 0)
  {
    v12 = v24;
    if (v24 < *(&v21 + 1))
    {
      *&v24 = *(&v21 + 1);
      v12 = *(&v21 + 1);
    }

    v13 = v21;
    v10 = v12 - v21;
    if ((v12 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ((BYTE8(v24) & 8) == 0)
    {
      v10 = 0;
      HIBYTE(v17) = 0;
      v11 = __dst;
      goto LABEL_16;
    }

    v13 = *(&v19 + 1);
    v10 = *(&v20 + 1) - *(&v19 + 1);
    if (*(&v20 + 1) - *(&v19 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_25:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v10 | 7) + 1;
    }

    v11 = operator new(v14);
    __dst[1] = v10;
    v17 = v14 | 0x8000000000000000;
    __dst[0] = v11;
    goto LABEL_15;
  }

  HIBYTE(v17) = v10;
  v11 = __dst;
  if (v10)
  {
LABEL_15:
    memmove(v11, v13, v10);
  }

LABEL_16:
  *(v11 + v10) = 0;
  memset(&v27, 170, sizeof(v27));
  ctu::join<std::__wrap_iter<char const**>>(this[1], this[2], "::", 2uLL, &v27);
  ((*this)->__r_.__value_.__r.__words[2])(this, &v27, __dst);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    operator delete(__dst[0]);
    goto LABEL_18;
  }

  if (SHIBYTE(v17) < 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  *&v18 = *MEMORY[0x29EDC9538];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v18 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v18 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v19);
  std::ostream::~ostream();
  MEMORY[0x29C27F880](v25);
  return a2 != a3;
}

void sub_29807FE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (*(v16 - 65) < 0)
  {
    operator delete(*(v16 - 88));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      std::ostringstream::~ostringstream(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void sub_29807FEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29807FED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t qmi::validateTlvFields(std::string **a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = a3[23];
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 1);
  }

  if (v7 != v8 || (v6 >= 0 ? (v10 = a2) : (v10 = *a2), (v11 = *a3, v9 >= 0) ? (v12 = a3) : (v12 = *a3), result = memcmp(v10, v12, v7), result))
  {
    v44 = 0xAAAAAAAAAAAAAAAALL;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v43[7] = v14;
    v43[8] = v14;
    v43[5] = v14;
    v43[6] = v14;
    v43[3] = v14;
    v43[4] = v14;
    v43[1] = v14;
    v43[2] = v14;
    v43[0] = v14;
    v41 = v14;
    v42 = v14;
    v39 = v14;
    *v40 = v14;
    v37 = v14;
    v38 = v14;
    v36 = v14;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v36);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "Mismatch in string field: ", 26);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "actual=[", 8);
    if (*(a2 + 23) >= 0)
    {
      v17 = *(a2 + 23);
    }

    else
    {
      v17 = *(a2 + 8);
    }

    v18 = MEMORY[0x29C27F780](v16, v17);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " bytes]:", 8);
    ctu::py_escape(a2, 1, &v45);
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v45;
    }

    else
    {
      v20 = v45.__r_.__value_.__r.__words[0];
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v45.__r_.__value_.__l.__size_;
    }

    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, size);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", expected=[", 12);
    if ((a3[23] & 0x80u) == 0)
    {
      v24 = a3[23];
    }

    else
    {
      v24 = *(a3 + 1);
    }

    v25 = MEMORY[0x29C27F780](v23, v24);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " bytes]:", 8);
    ctu::py_escape(a3, 1, &__p);
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
      v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v28 = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, p_p, v28);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_34:
        v29 = BYTE8(v42);
        if ((BYTE8(v42) & 0x10) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_39;
      }
    }

    else if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    operator delete(v45.__r_.__value_.__l.__data_);
    v29 = BYTE8(v42);
    if ((BYTE8(v42) & 0x10) == 0)
    {
LABEL_35:
      if ((v29 & 8) == 0)
      {
        v30 = 0;
        *(&__p.__r_.__value_.__s + 23) = 0;
        v31 = &__p;
        goto LABEL_50;
      }

      v33 = *(&v37 + 1);
      v30 = *(&v38 + 1) - *(&v37 + 1);
      if (*(&v38 + 1) - *(&v37 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
      {
LABEL_59:
        std::string::__throw_length_error[abi:ne200100]();
      }

LABEL_42:
      if (v30 >= 0x17)
      {
        if ((v30 | 7) == 0x17)
        {
          v34 = 25;
        }

        else
        {
          v34 = (v30 | 7) + 1;
        }

        v31 = operator new(v34);
        __p.__r_.__value_.__l.__size_ = v30;
        __p.__r_.__value_.__r.__words[2] = v34 | 0x8000000000000000;
        __p.__r_.__value_.__r.__words[0] = v31;
      }

      else
      {
        *(&__p.__r_.__value_.__s + 23) = v30;
        v31 = &__p;
        if (!v30)
        {
LABEL_50:
          v31->__r_.__value_.__s.__data_[v30] = 0;
          memset(&v45, 170, sizeof(v45));
          ctu::join<std::__wrap_iter<char const**>>(a1[1], a1[2], "::", 2uLL, &v45);
          ((*a1)->__r_.__value_.__r.__words[2])(a1, &v45, &__p);
          if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v45.__r_.__value_.__l.__data_);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_52;
            }
          }

          else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_52:
            *&v36 = *MEMORY[0x29EDC9538];
            *(&v36 + *(v36 - 24)) = *(MEMORY[0x29EDC9538] + 24);
            *(&v36 + 1) = MEMORY[0x29EDC9570] + 16;
            if (SHIBYTE(v41) < 0)
            {
              operator delete(v40[1]);
            }

            *(&v36 + 1) = MEMORY[0x29EDC9568] + 16;
            std::locale::~locale(&v37);
            std::ostream::~ostream();
            MEMORY[0x29C27F880](v43);
            return 1;
          }

          operator delete(__p.__r_.__value_.__l.__data_);
          goto LABEL_52;
        }
      }

      memmove(v31, v33, v30);
      goto LABEL_50;
    }

LABEL_39:
    v32 = v42;
    if (v42 < *(&v39 + 1))
    {
      *&v42 = *(&v39 + 1);
      v32 = *(&v39 + 1);
    }

    v33 = v39;
    v30 = v32 - v39;
    if ((v32 - v39) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_59;
    }

    goto LABEL_42;
  }

  return result;
}

void sub_298080318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (*(v16 - 49) < 0)
  {
    operator delete(*(v16 - 72));
  }

  if (a15 < 0)
  {
    operator delete(__p);
    std::ostringstream::~ostringstream(&a16);
    _Unwind_Resume(a1);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t qmi::validateTlvFields(std::string **this, qmi::RandomMessageReporter *__s1, size_t __n, void *__s2, const void *a5)
{
  if (__n == a5)
  {
    result = memcmp(__s1, __s2, __n);
    if (!result)
    {
      return result;
    }
  }

  v38 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37[7] = v11;
  v37[8] = v11;
  v37[5] = v11;
  v37[6] = v11;
  v37[3] = v11;
  v37[4] = v11;
  v37[1] = v11;
  v37[2] = v11;
  v37[0] = v11;
  v35 = v11;
  v36 = v11;
  v33 = v11;
  *v34 = v11;
  v31 = v11;
  v32 = v11;
  v30 = v11;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "Mismatch in binary blob field: actual=[", 39);
  v13 = MEMORY[0x29C27F780](v12, __n);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " bytes]:", 8);
  ctu::hex_sp(__s1, __n, &v39);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v39;
  }

  else
  {
    v15 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v39.__r_.__value_.__l.__size_;
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, size);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", expected=[", 12);
  v19 = MEMORY[0x29C27F730](v18, __s2);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " bytes]:", 8);
  ctu::hex_sp(__s2, a5, &__p);
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
    v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, p_p, v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_17:
      v23 = BYTE8(v36);
      if ((BYTE8(v36) & 0x10) == 0)
      {
        goto LABEL_18;
      }

LABEL_22:
      v26 = v36;
      if (v36 < *(&v33 + 1))
      {
        *&v36 = *(&v33 + 1);
        v26 = *(&v33 + 1);
      }

      v27 = v33;
      v24 = v26 - v33;
      if ((v26 - v33) >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_42;
      }

      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v39.__r_.__value_.__l.__data_);
  v23 = BYTE8(v36);
  if ((BYTE8(v36) & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  if ((v23 & 8) == 0)
  {
    v24 = 0;
    *(&__p.__r_.__value_.__s + 23) = 0;
    v25 = &__p;
    goto LABEL_33;
  }

  v27 = *(&v31 + 1);
  v24 = *(&v32 + 1) - *(&v31 + 1);
  if (*(&v32 + 1) - *(&v31 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
  {
LABEL_42:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_25:
  if (v24 >= 0x17)
  {
    if ((v24 | 7) == 0x17)
    {
      v28 = 25;
    }

    else
    {
      v28 = (v24 | 7) + 1;
    }

    v25 = operator new(v28);
    __p.__r_.__value_.__l.__size_ = v24;
    __p.__r_.__value_.__r.__words[2] = v28 | 0x8000000000000000;
    __p.__r_.__value_.__r.__words[0] = v25;
    goto LABEL_32;
  }

  *(&__p.__r_.__value_.__s + 23) = v24;
  v25 = &__p;
  if (v24)
  {
LABEL_32:
    memmove(v25, v27, v24);
  }

LABEL_33:
  v25->__r_.__value_.__s.__data_[v24] = 0;
  memset(&v39, 170, sizeof(v39));
  ctu::join<std::__wrap_iter<char const**>>(this[1], this[2], "::", 2uLL, &v39);
  ((*this)->__r_.__value_.__r.__words[2])(this, &v39, &__p);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_40:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_35;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_40;
  }

LABEL_35:
  *&v30 = *MEMORY[0x29EDC9538];
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v30 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[1]);
  }

  *(&v30 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v31);
  std::ostream::~ostream();
  MEMORY[0x29C27F880](v37);
  return 1;
}

void sub_2980807B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (*(v16 - 65) < 0)
  {
    operator delete(*(v16 - 88));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void QmiMessageDefinitionImpl_ctl_ConfigPowerSaveMode_Request::~QmiMessageDefinitionImpl_ctl_ConfigPowerSaveMode_Request(QmiMessageDefinitionImpl_ctl_ConfigPowerSaveMode_Request *this)
{
  *this = &unk_2A1E9BED0;
}

{
  *this = &unk_2A1E9BED0;
}

uint64_t *QmiMessageDefinitionImpl_ctl_ConfigPowerSaveMode_Request::getTlvDefinition(QmiMessageDefinition *a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    v5 = a2[1];
    if (v5 != 13)
    {
      if (v5 != 19)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      v6 = **a2 == 0x7661537265776F50 && *(*a2 + 8) == 0x7069726373654465;
      if (!v6 || *(*a2 + 11) != 0x726F747069726373)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      return (a1 + 24);
    }

    a2 = *a2;
  }

  else
  {
    v2 = *(a2 + 23);
    if (v2 != 13)
    {
      if (v2 != 19)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      v3 = *a2 == 0x7661537265776F50 && a2[1] == 0x7069726373654465;
      if (!v3 || *(a2 + 11) != 0x726F747069726373)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      return (a1 + 24);
    }
  }

  if (*a2 != 0x6974616369646E49 || *(a2 + 5) != 0x7465536E6F697461)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  return (a1 + 40);
}

void QmiMessageDefinitionImpl_ctl_ConfigPowerSaveMode_Response::~QmiMessageDefinitionImpl_ctl_ConfigPowerSaveMode_Response(QmiMessageDefinitionImpl_ctl_ConfigPowerSaveMode_Response *this)
{
  *this = &unk_2A1E9BF00;
}

{
  *this = &unk_2A1E9BF00;
}

uint64_t *QmiMessageDefinitionImpl_ctl_ConfigPowerSaveMode_Response::getTlvDefinition(QmiMessageDefinition *a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 13)
    {
      return QmiMessageDefinition::getDefaultTlvDefinition(a1);
    }

    a2 = *a2;
  }

  else if (v2 != 13)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  if (*a2 != 0x6C75736552696D51 || *(a2 + 5) != 0x65646F43746C7573)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  return (a1 + 24);
}

void QmiMessageDefinitionImpl_ctl_ConfigPowerSaveModeExt_Request::~QmiMessageDefinitionImpl_ctl_ConfigPowerSaveModeExt_Request(QmiMessageDefinitionImpl_ctl_ConfigPowerSaveModeExt_Request *this)
{
  *this = &unk_2A1E9BF30;
}

{
  *this = &unk_2A1E9BF30;
}

uint64_t *QmiMessageDefinitionImpl_ctl_ConfigPowerSaveModeExt_Request::getTlvDefinition(QmiMessageDefinition *a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    v5 = a2[1];
    if (v5 != 16)
    {
      if (v5 != 19)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      v6 = **a2 == 0x7661537265776F50 && *(*a2 + 8) == 0x7069726373654465;
      if (!v6 || *(*a2 + 11) != 0x726F747069726373)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      return (a1 + 24);
    }

    a2 = *a2;
  }

  else
  {
    v2 = *(a2 + 23);
    if (v2 != 16)
    {
      if (v2 != 19)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      v3 = *a2 == 0x7661537265776F50 && a2[1] == 0x7069726373654465;
      if (!v3 || *(a2 + 11) != 0x726F747069726373)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      return (a1 + 24);
    }
  }

  if (*a2 != 0x6974616369646E49 || a2[1] != 0x7478457465536E6FLL)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  return (a1 + 40);
}

void QmiMessageDefinitionImpl_ctl_ConfigPowerSaveModeExt_Response::~QmiMessageDefinitionImpl_ctl_ConfigPowerSaveModeExt_Response(QmiMessageDefinitionImpl_ctl_ConfigPowerSaveModeExt_Response *this)
{
  *this = &unk_2A1E9BF60;
}

{
  *this = &unk_2A1E9BF60;
}

uint64_t *QmiMessageDefinitionImpl_ctl_ConfigPowerSaveModeExt_Response::getTlvDefinition(QmiMessageDefinition *a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 13)
    {
      return QmiMessageDefinition::getDefaultTlvDefinition(a1);
    }

    a2 = *a2;
  }

  else if (v2 != 13)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  if (*a2 != 0x6C75736552696D51 || *(a2 + 5) != 0x65646F43746C7573)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  return (a1 + 24);
}

void QmiMessageDefinitionImpl_ctl_GetClientId_Request::~QmiMessageDefinitionImpl_ctl_GetClientId_Request(QmiMessageDefinitionImpl_ctl_GetClientId_Request *this)
{
  *this = &unk_2A1E9BF90;
}

{
  *this = &unk_2A1E9BF90;
}

uint64_t *QmiMessageDefinitionImpl_ctl_GetClientId_Request::getTlvDefinition(QmiMessageDefinition *a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 11)
    {
      return QmiMessageDefinition::getDefaultTlvDefinition(a1);
    }

    a2 = *a2;
  }

  else if (v2 != 11)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  if (*a2 != 0x5465636976726553 || *(a2 + 3) != 0x6570795465636976)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  return (a1 + 24);
}

void QmiMessageDefinitionImpl_ctl_GetClientId_Response::~QmiMessageDefinitionImpl_ctl_GetClientId_Response(QmiMessageDefinitionImpl_ctl_GetClientId_Response *this)
{
  *this = &unk_2A1E9BFC0;
}

{
  *this = &unk_2A1E9BFC0;
}

uint64_t *QmiMessageDefinitionImpl_ctl_GetClientId_Response::getTlvDefinition(QmiMessageDefinition *a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    v4 = a2[1];
    if (v4 != 10)
    {
      if (v4 != 13)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      if (**a2 != 0x6C75736552696D51 || *(*a2 + 5) != 0x65646F43746C7573)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      return (a1 + 24);
    }

    a2 = *a2;
  }

  else
  {
    v2 = *(a2 + 23);
    if (v2 != 10)
    {
      if (v2 != 13)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      if (*a2 != 0x6C75736552696D51 || *(a2 + 5) != 0x65646F43746C7573)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      return (a1 + 24);
    }
  }

  if (*a2 != 0x64656E6769737341 || *(a2 + 4) != 25673)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  return (a1 + 40);
}

void QmiMessageDefinitionImpl_ctl_ReleaseClientId_Request::~QmiMessageDefinitionImpl_ctl_ReleaseClientId_Request(QmiMessageDefinitionImpl_ctl_ReleaseClientId_Request *this)
{
  *this = &unk_2A1E9BFF0;
}

{
  *this = &unk_2A1E9BFF0;
}

uint64_t *QmiMessageDefinitionImpl_ctl_ReleaseClientId_Request::getTlvDefinition(QmiMessageDefinition *a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 10)
    {
      return QmiMessageDefinition::getDefaultTlvDefinition(a1);
    }

    a2 = *a2;
  }

  else if (v2 != 10)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  if (*a2 != 0x64656E6769737341 || *(a2 + 4) != 25673)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  return (a1 + 24);
}

void QmiMessageDefinitionImpl_ctl_ReleaseClientId_Response::~QmiMessageDefinitionImpl_ctl_ReleaseClientId_Response(QmiMessageDefinitionImpl_ctl_ReleaseClientId_Response *this)
{
  *this = &unk_2A1E9C020;
}

{
  *this = &unk_2A1E9C020;
}

uint64_t *QmiMessageDefinitionImpl_ctl_ReleaseClientId_Response::getTlvDefinition(QmiMessageDefinition *a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    v4 = a2[1];
    if (v4 != 10)
    {
      if (v4 != 13)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      if (**a2 != 0x6C75736552696D51 || *(*a2 + 5) != 0x65646F43746C7573)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      return (a1 + 24);
    }

    a2 = *a2;
  }

  else
  {
    v2 = *(a2 + 23);
    if (v2 != 10)
    {
      if (v2 != 13)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      if (*a2 != 0x6C75736552696D51 || *(a2 + 5) != 0x65646F43746C7573)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      return (a1 + 24);
    }
  }

  if (*a2 != 0x64656E6769737341 || *(a2 + 4) != 25673)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  return (a1 + 40);
}

void QmiMessageDefinitionImpl_ctl_RevokeClientId_Indication::~QmiMessageDefinitionImpl_ctl_RevokeClientId_Indication(QmiMessageDefinitionImpl_ctl_RevokeClientId_Indication *this)
{
  *this = &unk_2A1E9C050;
}

{
  *this = &unk_2A1E9C050;
}

uint64_t *QmiMessageDefinitionImpl_ctl_RevokeClientId_Indication::getTlvDefinition(QmiMessageDefinition *a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 10)
    {
      return QmiMessageDefinition::getDefaultTlvDefinition(a1);
    }

    a2 = *a2;
  }

  else if (v2 != 10)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  if (*a2 != 0x64656E6769737341 || *(a2 + 4) != 25673)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  return (a1 + 24);
}

void QmiMessageDefinitionImpl_ctl_SetDataFormat_Request::~QmiMessageDefinitionImpl_ctl_SetDataFormat_Request(QmiMessageDefinitionImpl_ctl_SetDataFormat_Request *this)
{
  *this = &unk_2A1E9C080;
}

{
  *this = &unk_2A1E9C080;
}

uint64_t *QmiMessageDefinitionImpl_ctl_SetDataFormat_Request::getTlvDefinition(QmiMessageDefinition *a1, void *a2)
{
  if (*(a2 + 23) < 0)
  {
    v3 = a2[1];
    if (v3 != 10)
    {
      if (v3 != 17)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      a2 = *a2;
LABEL_8:
      if (*a2 == 0x6579614C6B6E694CLL && a2[1] == 0x6F636F746F725072 && *(a2 + 16) == 108)
      {
        return (a1 + 40);
      }

      return QmiMessageDefinition::getDefaultTlvDefinition(a1);
    }

    if (**a2 != 0x6D726F4661746144 || *(*a2 + 8) != 29793)
    {
      return QmiMessageDefinition::getDefaultTlvDefinition(a1);
    }
  }

  else
  {
    v2 = *(a2 + 23);
    if (v2 != 10)
    {
      if (v2 != 17)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      goto LABEL_8;
    }

    if (*a2 != 0x6D726F4661746144 || *(a2 + 4) != 29793)
    {
      return QmiMessageDefinition::getDefaultTlvDefinition(a1);
    }
  }

  return (a1 + 24);
}

void QmiMessageDefinitionImpl_ctl_SetDataFormat_Response::~QmiMessageDefinitionImpl_ctl_SetDataFormat_Response(QmiMessageDefinitionImpl_ctl_SetDataFormat_Response *this)
{
  *this = &unk_2A1E9C0B0;
}

{
  *this = &unk_2A1E9C0B0;
}

uint64_t *QmiMessageDefinitionImpl_ctl_SetDataFormat_Response::getTlvDefinition(QmiMessageDefinition *a1, void *a2)
{
  if (*(a2 + 23) < 0)
  {
    v3 = a2[1];
    if (v3 != 13)
    {
      if (v3 != 17)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      a2 = *a2;
LABEL_8:
      if (*a2 == 0x6579614C6B6E694CLL && a2[1] == 0x6F636F746F725072 && *(a2 + 16) == 108)
      {
        return (a1 + 40);
      }

      return QmiMessageDefinition::getDefaultTlvDefinition(a1);
    }

    if (**a2 != 0x6C75736552696D51 || *(*a2 + 5) != 0x65646F43746C7573)
    {
      return QmiMessageDefinition::getDefaultTlvDefinition(a1);
    }
  }

  else
  {
    v2 = *(a2 + 23);
    if (v2 != 13)
    {
      if (v2 != 17)
      {
        return QmiMessageDefinition::getDefaultTlvDefinition(a1);
      }

      goto LABEL_8;
    }

    if (*a2 != 0x6C75736552696D51 || *(a2 + 5) != 0x65646F43746C7573)
    {
      return QmiMessageDefinition::getDefaultTlvDefinition(a1);
    }
  }

  return (a1 + 24);
}

void QmiMessageDefinitionImpl_ctl_SetPowerSaveMode_Request::~QmiMessageDefinitionImpl_ctl_SetPowerSaveMode_Request(QmiMessageDefinitionImpl_ctl_SetPowerSaveMode_Request *this)
{
  *this = &unk_2A1E9C0E0;
}

{
  *this = &unk_2A1E9C0E0;
}

uint64_t *QmiMessageDefinitionImpl_ctl_SetPowerSaveMode_Request::getTlvDefinition(QmiMessageDefinition *a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 14)
    {
      return QmiMessageDefinition::getDefaultTlvDefinition(a1);
    }

    a2 = *a2;
  }

  else if (v2 != 14)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  if (*a2 != 0x7661537265776F50 || *(a2 + 6) != 0x6574617453657661)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  return (a1 + 24);
}

void QmiMessageDefinitionImpl_ctl_SetPowerSaveMode_Response::~QmiMessageDefinitionImpl_ctl_SetPowerSaveMode_Response(QmiMessageDefinitionImpl_ctl_SetPowerSaveMode_Response *this)
{
  *this = &unk_2A1E9C110;
}

{
  *this = &unk_2A1E9C110;
}

uint64_t *QmiMessageDefinitionImpl_ctl_SetPowerSaveMode_Response::getTlvDefinition(QmiMessageDefinition *a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 13)
    {
      return QmiMessageDefinition::getDefaultTlvDefinition(a1);
    }

    a2 = *a2;
  }

  else if (v2 != 13)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  if (*a2 != 0x6C75736552696D51 || *(a2 + 5) != 0x65646F43746C7573)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  return (a1 + 24);
}

void QmiMessageDefinitionImpl_ctl_Sync_Response::~QmiMessageDefinitionImpl_ctl_Sync_Response(QmiMessageDefinitionImpl_ctl_Sync_Response *this)
{
  *this = &unk_2A1E9C140;
}

{
  *this = &unk_2A1E9C140;
}

uint64_t *QmiMessageDefinitionImpl_ctl_Sync_Response::getTlvDefinition(QmiMessageDefinition *a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 13)
    {
      return QmiMessageDefinition::getDefaultTlvDefinition(a1);
    }

    a2 = *a2;
  }

  else if (v2 != 13)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  if (*a2 != 0x6C75736552696D51 || *(a2 + 5) != 0x65646F43746C7573)
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(a1);
  }

  return (a1 + 24);
}

uint64_t *QmiMessageDefinitionImpl_ctl_ConfigPowerSaveMode_Request::getTlvDefinition(QmiMessageDefinitionImpl_ctl_ConfigPowerSaveMode_Request *this, int a2)
{
  if (a2 == 17)
  {
    return (this + 40);
  }

  if (a2 == 1)
  {
    return (this + 24);
  }

  return QmiMessageDefinition::getDefaultTlvDefinition(this);
}

uint64_t *QmiMessageDefinitionImpl_ctl_ConfigPowerSaveMode_Response::getTlvDefinition(QmiMessageDefinitionImpl_ctl_ConfigPowerSaveMode_Response *this, int a2)
{
  if (a2 == 2)
  {
    return (this + 24);
  }

  else
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(this);
  }
}

uint64_t *QmiMessageDefinitionImpl_ctl_ConfigPowerSaveModeExt_Request::getTlvDefinition(QmiMessageDefinitionImpl_ctl_ConfigPowerSaveModeExt_Request *this, int a2)
{
  if (a2 == 16)
  {
    return (this + 40);
  }

  if (a2 == 1)
  {
    return (this + 24);
  }

  return QmiMessageDefinition::getDefaultTlvDefinition(this);
}

uint64_t *QmiMessageDefinitionImpl_ctl_ConfigPowerSaveModeExt_Response::getTlvDefinition(QmiMessageDefinitionImpl_ctl_ConfigPowerSaveModeExt_Response *this, int a2)
{
  if (a2 == 2)
  {
    return (this + 24);
  }

  else
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(this);
  }
}

uint64_t *QmiMessageDefinitionImpl_ctl_GetClientId_Request::getTlvDefinition(QmiMessageDefinitionImpl_ctl_GetClientId_Request *this, int a2)
{
  if (a2 == 1)
  {
    return (this + 24);
  }

  else
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(this);
  }
}

uint64_t *QmiMessageDefinitionImpl_ctl_GetClientId_Response::getTlvDefinition(QmiMessageDefinitionImpl_ctl_GetClientId_Response *this, int a2)
{
  if (a2 == 1)
  {
    return (this + 40);
  }

  if (a2 == 2)
  {
    return (this + 24);
  }

  return QmiMessageDefinition::getDefaultTlvDefinition(this);
}

uint64_t *QmiMessageDefinitionImpl_ctl_ReleaseClientId_Request::getTlvDefinition(QmiMessageDefinitionImpl_ctl_ReleaseClientId_Request *this, int a2)
{
  if (a2 == 1)
  {
    return (this + 24);
  }

  else
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(this);
  }
}

uint64_t *QmiMessageDefinitionImpl_ctl_ReleaseClientId_Response::getTlvDefinition(QmiMessageDefinitionImpl_ctl_ReleaseClientId_Response *this, int a2)
{
  if (a2 == 1)
  {
    return (this + 40);
  }

  if (a2 == 2)
  {
    return (this + 24);
  }

  return QmiMessageDefinition::getDefaultTlvDefinition(this);
}

uint64_t *QmiMessageDefinitionImpl_ctl_RevokeClientId_Indication::getTlvDefinition(QmiMessageDefinitionImpl_ctl_RevokeClientId_Indication *this, int a2)
{
  if (a2 == 1)
  {
    return (this + 24);
  }

  else
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(this);
  }
}

uint64_t *QmiMessageDefinitionImpl_ctl_SetDataFormat_Request::getTlvDefinition(QmiMessageDefinitionImpl_ctl_SetDataFormat_Request *this, int a2)
{
  if (a2 == 16)
  {
    return (this + 40);
  }

  if (a2 == 1)
  {
    return (this + 24);
  }

  return QmiMessageDefinition::getDefaultTlvDefinition(this);
}

uint64_t *QmiMessageDefinitionImpl_ctl_SetDataFormat_Response::getTlvDefinition(QmiMessageDefinitionImpl_ctl_SetDataFormat_Response *this, int a2)
{
  if (a2 == 16)
  {
    return (this + 40);
  }

  if (a2 == 2)
  {
    return (this + 24);
  }

  return QmiMessageDefinition::getDefaultTlvDefinition(this);
}

uint64_t *QmiMessageDefinitionImpl_ctl_SetPowerSaveMode_Request::getTlvDefinition(QmiMessageDefinitionImpl_ctl_SetPowerSaveMode_Request *this, int a2)
{
  if (a2 == 1)
  {
    return (this + 24);
  }

  else
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(this);
  }
}

uint64_t *QmiMessageDefinitionImpl_ctl_SetPowerSaveMode_Response::getTlvDefinition(QmiMessageDefinitionImpl_ctl_SetPowerSaveMode_Response *this, int a2)
{
  if (a2 == 2)
  {
    return (this + 24);
  }

  else
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(this);
  }
}

uint64_t *QmiMessageDefinitionImpl_ctl_Sync_Response::getTlvDefinition(QmiMessageDefinitionImpl_ctl_Sync_Response *this, int a2)
{
  if (a2 == 2)
  {
    return (this + 24);
  }

  else
  {
    return QmiMessageDefinition::getDefaultTlvDefinition(this);
  }
}

uint64_t ctu::llvm::StringRef::compare_lower(uint64_t a1, const char *a2, unint64_t a3)
{
  v3 = a3;
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5 < a3)
  {
    a3 = *(a1 + 8);
  }

  LODWORD(result) = ascii_strncasecmp(*a1, a2, a3);
  if (v5 < v3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (v5 == v3)
  {
    v7 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v7;
  }
}

uint64_t ascii_strncasecmp(const char *a1, const char *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  while (1)
  {
    v4 = *a1++;
    v3 = v4;
    v5 = v4 | 0x20;
    v6 = v4 - 65 >= 0x1A;
    v8 = *a2++;
    v7 = v8;
    if (!v6)
    {
      v3 = v5;
    }

    if (v7 - 65 < 0x1A)
    {
      v7 |= 0x20u;
    }

    if (v3 != v7)
    {
      break;
    }

    if (!--a3)
    {
      return 0;
    }
  }

  if (v3 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t ctu::llvm::StringRef::compare_numeric(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1[1];
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a1[1];
  }

  if (v6)
  {
    v8 = 0;
    v9 = v6 + 1;
    v10 = *a1;
    v11 = -v6;
    v12 = *a1 + 1;
    do
    {
      v13 = *(v10 + v8);
      v14 = *(a2 + v8);
      if (v13 - 48 > 9 || v14 - 48 > 9)
      {
        v16 = v8;
        if (v13 != v14)
        {
          if (v13 < v14)
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return 1;
          }
        }
      }

      else
      {
        v17 = 0;
        v18 = v12;
        v19 = a2 + 1;
        do
        {
          if (!(v11 + v8 + v17))
          {
            v16 = v6;
            v29 = v9;
            goto LABEL_35;
          }

          v20 = v8 + v17 + 1;
          v21 = v20 < v5 && *(v18 + v8) - 48 < 0xA;
          if (v20 >= a3)
          {
            v24 = 0;
            v26 = 5;
            v25 = 1;
          }

          else
          {
            v22 = (*(v19 + v8) - 48);
            v23 = v22 >= 0xA;
            v24 = v22 < 0xA;
            if (v23)
            {
              v25 = 1;
            }

            else
            {
              v25 = -1;
            }

            if (v23)
            {
              v26 = 5;
            }

            else
            {
              v26 = 0;
            }
          }

          v27 = v21 == v24;
          if (v21 == v24)
          {
            v28 = v26;
          }

          else
          {
            v28 = 1;
          }

          if (v27)
          {
            v3 = v3;
          }

          else
          {
            v3 = v25;
          }

          ++v17;
          ++v19;
          ++v18;
        }

        while (!v28);
        if (v28 != 5)
        {
          return v3;
        }

        v29 = v8 + v17;
        v16 = v29 - 1;
LABEL_35:
        if (v29 != v8)
        {
          v35 = v11;
          v30 = v10;
          v31 = v6;
          v32 = memcmp((v10 + v8), (a2 + v8), v29 - v8);
          v6 = v31;
          v10 = v30;
          v11 = v35;
          if (v32)
          {
            return (v32 >> 31) | 1u;
          }
        }
      }

      v8 = v16 + 1;
    }

    while (v16 + 1 != v6);
  }

  if (v5 < a3)
  {
    v33 = -1;
  }

  else
  {
    v33 = 1;
  }

  if (v5 == a3)
  {
    return 0;
  }

  else
  {
    return v33;
  }
}

void *ctu::llvm::StringRef::lower@<X0>(ctu::llvm::StringRef *this@<X0>, void *a2@<X8>)
{
  memset(a2, 170, 24);
  result = std::string::basic_string[abi:ne200100](a2, *(this + 1), 0);
  v4 = *(this + 1);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = *(*this + i);
      if ((v6 - 65) < 0x1A)
      {
        LOBYTE(v6) = v6 | 0x20;
      }

      if (*(result + 23) >= 0)
      {
        v7 = result;
      }

      else
      {
        v7 = *result;
      }

      *(v7 + i) = v6;
    }
  }

  return result;
}

void *std::string::basic_string[abi:ne200100](void *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__len | 7) + 1;
    }

    v6 = operator new(v7);
    __b[1] = __len;
    __b[2] = v7 | 0x8000000000000000;
    *__b = v6;
  }

  else
  {
    *(__b + 23) = __len;
    v6 = __b;
    if (!__len)
    {
      goto LABEL_10;
    }
  }

  memset(v6, __c, __len);
LABEL_10:
  *(v6 + __len) = 0;
  return __b;
}

void *ctu::llvm::StringRef::upper@<X0>(ctu::llvm::StringRef *this@<X0>, void *a2@<X8>)
{
  memset(a2, 170, 24);
  result = std::string::basic_string[abi:ne200100](a2, *(this + 1), 0);
  v4 = *(this + 1);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = *(*this + i);
      if ((v6 - 97) < 0x1A)
      {
        LOBYTE(v6) = v6 - 32;
      }

      if (*(result + 23) >= 0)
      {
        v7 = result;
      }

      else
      {
        v7 = *result;
      }

      *(v7 + i) = v6;
    }
  }

  return result;
}

unint64_t ctu::llvm::StringRef::find(uint64_t *a1, unsigned __int8 *a2, size_t a3, unint64_t a4)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  v5 = v4 - a3;
  if (v4 < a3)
  {
    goto LABEL_2;
  }

  v6 = a4;
  if (a3 - 256 < 0xFFFFFFFFFFFFFF01 || v4 <= 0xF)
  {
    v21 = v5 + 1;
    if (v5 + 1 <= a4)
    {
LABEL_2:
      v6 = -1;
      goto LABEL_3;
    }

    v22 = *a1;
    while (1)
    {
      v23 = v6 >= v4 ? v4 : v6;
      if (a3 <= v4 - v23 && (!a3 || !memcmp((v22 + v23), a2, a3)))
      {
        break;
      }

      if (v21 == ++v6)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
    v11 = v4 - a4;
    if (v4 <= a4)
    {
      goto LABEL_2;
    }

    v25 = vdupq_n_s8(a3);
    v26 = v25;
    v24[12] = v25;
    v24[13] = v25;
    v24[10] = v25;
    v24[11] = v25;
    v24[8] = v25;
    v24[9] = v25;
    v24[6] = v25;
    v24[7] = v25;
    v24[4] = v25;
    v24[5] = v25;
    v24[2] = v25;
    v24[3] = v25;
    v24[0] = v25;
    v24[1] = v25;
    if (a3 != 1)
    {
      v12 = 1;
      v13 = a3 - 1;
      v14 = a2;
      do
      {
        v15 = *v14++;
        *(v24 + v15) = v13--;
      }

      while (a3 - 1 != v12++);
    }

    if (v11 < a3)
    {
      goto LABEL_2;
    }

    v17 = *a1;
    v18 = *a1 + a3 - 1;
    while (1)
    {
      v19 = v6 >= v4 ? v4 : v6;
      if (a3 <= v4 - v19 && !memcmp((v17 + v19), a2, a3))
      {
        break;
      }

      v20 = *(v24 + *(v18 + v6));
      v11 -= v20;
      v6 += v20;
      if (v11 < a3)
      {
        goto LABEL_2;
      }
    }
  }

LABEL_3:
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

size_t ctu::llvm::StringRef::rfind(uint64_t *a1, void *__s2, size_t __n)
{
  v3 = a1[1];
  v4 = v3 - __n;
  if (v3 < __n)
  {
    return -1;
  }

  v5 = v4 + 1;
  if (v4 == -1)
  {
    return -1;
  }

  v9 = *a1;
  while (1)
  {
    --v5;
    v10 = v4 >= v3 ? v3 : v4;
    if (__n <= v3 - v10)
    {
      if (!__n)
      {
        return v4;
      }

      if (!memcmp((v9 + v10), __s2, __n))
      {
        break;
      }
    }

    if (--v4 == -1)
    {
      return v4;
    }
  }

  return v5;
}

uint64_t ctu::llvm::StringRef::find_first_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) == 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

unint64_t ctu::llvm::StringRef::find_first_not_of(ctu::llvm::StringRef *this, unsigned __int8 a2, unint64_t a3)
{
  v3 = *(this + 1);
  if (v3 <= a3)
  {
    return -1;
  }

  while (*(*this + a3) == a2)
  {
    if (v3 == ++a3)
    {
      return -1;
    }
  }

  return a3;
}

uint64_t ctu::llvm::StringRef::find_first_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) != 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t ctu::llvm::StringRef::find_last_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a4 >= a1[1])
  {
    v5 = a1[1];
  }

  else
  {
    v5 = a4;
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if (v8)
    {
      return v6;
    }
  }

  return -1;
}

unint64_t ctu::llvm::StringRef::find_last_not_of(ctu::llvm::StringRef *this, unsigned __int8 a2, unint64_t a3)
{
  if (a3 >= *(this + 1))
  {
    v3 = *(this + 1);
  }

  else
  {
    v3 = a3;
  }

  while (v3)
  {
    v4 = v3 - 1;
    v5 = *(*this + v3-- - 1);
    if (v5 != a2)
    {
      return v4;
    }
  }

  return -1;
}

uint64_t ctu::llvm::StringRef::find_last_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a4 >= a1[1])
  {
    v5 = a1[1];
  }

  else
  {
    v5 = a4;
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if ((v8 & 1) == 0)
    {
      return v6;
    }
  }

  return -1;
}

void ctu::llvm::StringRef::split(__int128 *a1, uint64_t a2, unsigned __int8 *a3, size_t a4, int a5, int a6)
{
  v20 = *a1;
  v6 = v20;
  if (!v20)
  {
    return;
  }

  for (i = 0; a5 < 0 || i < a5; ++i)
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v18 = v13;
    v19 = v13;
    v14 = ctu::llvm::StringRef::find(&v20, a3, a4, 0);
    if (v14 == -1)
    {
      v19 = 0uLL;
      v18 = v20;
      v15 = *(&v20 + 1);
      if (a6)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 >= *(&v20 + 1))
      {
        v15 = *(&v20 + 1);
      }

      else
      {
        v15 = v14;
      }

      v16 = v14 + a4;
      if (v14 + a4 >= *(&v20 + 1))
      {
        v16 = *(&v20 + 1);
      }

      *&v18 = v6;
      *(&v18 + 1) = v15;
      *&v19 = v6 + v16;
      *(&v19 + 1) = *(&v20 + 1) - v16;
      if (a6)
      {
LABEL_15:
        std::vector<ctu::llvm::StringRef>::push_back[abi:ne200100](a2, &v18);
        goto LABEL_16;
      }
    }

    if (v15)
    {
      goto LABEL_15;
    }

LABEL_16:
    v20 = v19;
    v6 = v19;
    if (!v19)
    {
      return;
    }
  }

  if (*(&v20 + 1))
  {
    v17 = 0;
  }

  else
  {
    v17 = a6 == 0;
  }

  if (!v17)
  {
    std::vector<ctu::llvm::StringRef>::push_back[abi:ne200100](a2, &v20);
  }
}

void std::vector<ctu::llvm::StringRef>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
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

    if (v10)
    {
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<ctu::llvm::StringRef>>(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[16 * v7];
    v13 = &v11[16 * v10];
    *v12 = *a2;
    v6 = v12 + 16;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t ctu::llvm::StringRef::count(uint64_t *a1, const void *a2, size_t a3)
{
  v3 = a1[1];
  v4 = v3 - a3;
  if (v3 < a3 || v4 == -1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = *a1;
  v10 = v4 + 1;
  do
  {
    if (v8 >= v3)
    {
      v11 = v3;
    }

    else
    {
      v11 = v8;
    }

    if (a3 <= v3 - v11 && (!a3 || !memcmp((v9 + v11), a2, a3)))
    {
      ++v7;
    }

    ++v8;
  }

  while (v10 != v8);
  return v7;
}

uint64_t ctu::llvm::getAsUnsignedInteger(_WORD *a1, unint64_t a2, unsigned int a3, unint64_t *a4)
{
  if (a3)
  {
LABEL_2:
    if (!a2)
    {
      return 1;
    }

    goto LABEL_13;
  }

  if (a2 < 2)
  {
    if (!a2)
    {
      return 1;
    }

    goto LABEL_10;
  }

  switch(*a1)
  {
    case 0x7830:
      ++a1;
      a3 = 16;
LABEL_29:
      a2 -= 2;
      goto LABEL_2;
    case 0x6230:
      ++a1;
      a3 = 2;
      goto LABEL_29;
    case 0x6F30:
      ++a1;
      a3 = 8;
      goto LABEL_29;
  }

LABEL_10:
  if (*a1 == 48)
  {
    a3 = 8;
  }

  else
  {
    a3 = 10;
  }

LABEL_13:
  v5 = 0;
  *a4 = 0;
  while (*a1 >= 48)
  {
    v6 = *a1;
    if (v6 >= 0x3A)
    {
      if (v6 < 0x61)
      {
        if (v6 - 65 > 0x19)
        {
          return 1;
        }

        v7 = -55;
      }

      else
      {
        if (v6 >= 0x7B)
        {
          return 1;
        }

        v7 = -87;
      }
    }

    else
    {
      v7 = -48;
    }

    v8 = v7 + v6;
    if (v8 >= a3)
    {
      break;
    }

    v9 = v5 * a3 + v8;
    *a4 = v9;
    if (v9 / a3 < v5)
    {
      break;
    }

    a1 = (a1 + 1);
    v5 = v9;
    if (!--a2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ctu::llvm::getAsSignedInteger(_WORD *a1, unint64_t a2, unsigned int a3, uint64_t *a4)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  if (a2 && *a1 == 45)
  {
    if (ctu::llvm::getAsUnsignedInteger((a1 + 1), a2 - 1, a3, &v8))
    {
      return 1;
    }

    v5 = -v8;
    if (-v8 >= 0 && v8 != 0)
    {
      return 1;
    }

    goto LABEL_8;
  }

  AsUnsignedInteger = ctu::llvm::getAsUnsignedInteger(a1, a2, a3, &v8);
  result = 1;
  if ((AsUnsignedInteger & 1) == 0)
  {
    v5 = v8;
    if ((v8 & 0x8000000000000000) == 0)
    {
LABEL_8:
      result = 0;
      *a4 = v5;
    }
  }

  return result;
}

void *ctu::llvm::operator<<(void *a1, uint64_t a2)
{
  v3 = *a2;
  if (!*a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    __dst = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_13;
  }

  v4 = *(a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v4 | 7) + 1;
    }

    p_dst = operator new(v9);
    v15 = v4;
    v16 = v9 | 0x8000000000000000;
    __dst = p_dst;
  }

  else
  {
    HIBYTE(v16) = *(a2 + 8);
    p_dst = &__dst;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  memmove(p_dst, v3, v4);
LABEL_12:
  *(p_dst + v4) = 0;
  v8 = HIBYTE(v16);
  v7 = __dst;
  v6 = v15;
LABEL_13:
  if ((v8 & 0x80u) == 0)
  {
    v10 = &__dst;
  }

  else
  {
    v10 = v7;
  }

  if ((v8 & 0x80u) == 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v10, v11);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst);
  }

  return v12;
}

void sub_298082528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<ctu::llvm::StringRef>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(16 * a2);
}

BOOL ctu::starts_with(const void *a1, size_t a2, const void *a3, size_t a4)
{
  if (a2 < a4)
  {
    return 0;
  }

  if (a4)
  {
    return memcmp(a1, a3, a4) == 0;
  }

  return 1;
}

BOOL ctu::ends_with(uint64_t a1, size_t a2, const void *a3, size_t a4)
{
  if (a2 < a4)
  {
    return 0;
  }

  if (a4)
  {
    return memcmp((a1 + a2 - a4), a3, a4) == 0;
  }

  return 1;
}

double ctu::partition@<D0>(char *a1@<X0>, size_t a2@<X1>, unsigned __int8 *a3@<X2>, size_t a4@<X3>, uint64_t a5@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0;
  v10 = ctu::llvm::StringRef::find(v17, a3, a4, 0);
  if (v10 == -1)
  {
    ctu::llvm::StringRef::operator std::string(&__dst, a1, a2);
    result = *&__dst;
    *a5 = __dst;
    *(a5 + 16) = v16;
  }

  else
  {
    v11 = v10;
    if (v10 >= a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = v10;
    }

    ctu::llvm::StringRef::operator std::string(&__dst, a1, v12);
    *a5 = __dst;
    *(a5 + 16) = v16;
    ctu::llvm::StringRef::operator std::string(&__dst, a3, a4);
    *(a5 + 24) = __dst;
    *(a5 + 40) = v16;
    v13 = v11 + a4;
    if (v11 + a4 >= a2)
    {
      v13 = a2;
    }

    ctu::llvm::StringRef::operator std::string(&__dst, &a1[v13], a2 - v13);
    result = *&__dst;
    *(a5 + 48) = __dst;
    *(a5 + 64) = v16;
  }

  return result;
}

void *ctu::llvm::StringRef::operator std::string(void *__dst, void *__src, size_t __n)
{
  v3 = __dst;
  if (!__src)
  {
    *__dst = 0;
    __dst[1] = 0;
    __dst[2] = 0;
    return __dst;
  }

  if (__n >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__n >= 0x17)
  {
    if ((__n | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__n | 7) + 1;
    }

    v7 = operator new(v6);
    v3[1] = __n;
    v3[2] = v6 | 0x8000000000000000;
    *v3 = v7;
    v3 = v7;
  }

  else
  {
    *(__dst + 23) = __n;
    if (!__n)
    {
      goto LABEL_12;
    }
  }

  __dst = memcpy(v3, __src, __n);
LABEL_12:
  *(v3 + __n) = 0;
  return __dst;
}

uint64_t ctu::split_any@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, const void **a5@<X8>)
{
  v31[0] = a1;
  v31[1] = a2;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  first_not_of = ctu::llvm::StringRef::find_first_not_of(v31, a3, a4, 0);
  result = ctu::llvm::StringRef::find_first_of(v31, a3, a4, first_not_of);
  if ((first_not_of & result) != 0xFFFFFFFFFFFFFFFFLL)
  {
    v12 = result;
    v13 = 0;
    do
    {
      if (v12 == -1)
      {
        v14 = a2;
      }

      else
      {
        v14 = v12;
      }

      v15 = v14 - first_not_of;
      v16 = a1 + first_not_of;
      v17 = a5[2];
      if (v13 >= v17)
      {
        v18 = *a5;
        v19 = v13 - *a5;
        v20 = v19 >> 4;
        v21 = (v19 >> 4) + 1;
        if (v21 >> 60)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v22 = v17 - v18;
        if (v22 >> 3 > v21)
        {
          v21 = v22 >> 3;
        }

        v23 = v22 >= 0x7FFFFFFFFFFFFFF0;
        v24 = 0xFFFFFFFFFFFFFFFLL;
        if (!v23)
        {
          v24 = v21;
        }

        if (v24)
        {
          v25 = std::__allocate_at_least[abi:ne200100]<std::allocator<ctu::llvm::StringRef>>(a5, v24);
          v24 = v26;
          v18 = *a5;
          v19 = a5[1] - *a5;
        }

        else
        {
          v25 = 0;
        }

        v27 = &v25[16 * v20];
        v28 = &v25[16 * v24];
        *v27 = v16;
        *(v27 + 1) = v15;
        v13 = v27 + 16;
        v29 = &v27[-16 * (v19 >> 4)];
        memcpy(v29, v18, v19);
        v30 = *a5;
        *a5 = v29;
        a5[1] = v13;
        a5[2] = v28;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v13 = v16;
        *(v13 + 1) = v15;
        v13 += 16;
      }

      a5[1] = v13;
      first_not_of = ctu::llvm::StringRef::find_first_not_of(v31, a3, a4, v12);
      result = ctu::llvm::StringRef::find_first_of(v31, a3, a4, first_not_of);
      v12 = result;
    }

    while ((first_not_of & result) != 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_298082988(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::split_any_copy@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a1;
  v26 = a2;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  first_not_of = ctu::llvm::StringRef::find_first_not_of(&v25, a3, a4, 0);
  result = ctu::llvm::StringRef::find_first_of(&v25, a3, a4, first_not_of);
  if ((first_not_of & result) != 0xFFFFFFFFFFFFFFFFLL)
  {
    v10 = result;
    v11 = 0;
    do
    {
      v12 = v25;
      if (first_not_of >= v26)
      {
        v13 = v26;
      }

      else
      {
        v13 = first_not_of;
      }

      if (v10 - first_not_of >= v26 - v13)
      {
        v14 = v26 - v13;
      }

      else
      {
        v14 = v10 - first_not_of;
      }

      v15 = *(a5 + 16);
      if (v11 >= v15)
      {
        v16 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a5) >> 3);
        v17 = v16 + 1;
        if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a5) >> 3);
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0x555555555555555)
        {
          v19 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v19 = v17;
        }

        v27.__end_cap_.__value_ = a5;
        if (v19)
        {
          if (v19 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v20 = operator new(24 * v19);
        }

        else
        {
          v20 = 0;
        }

        v27.__first_ = v20;
        v27.__begin_ = v20 + v16;
        v27.__end_ = v27.__begin_;
        v27.__end_cap_.__value_ = &v20[v19];
        ctu::llvm::StringRef::operator std::string(v27.__begin_->__r_.__value_.__r.__words, (v12 + v13), v14);
        v11 = v27.__end_ + 1;
        v21 = *(a5 + 8) - *a5;
        v22 = v27.__begin_ - v21;
        memcpy(v27.__begin_ - v21, *a5, v21);
        v23 = *a5;
        *a5 = v22;
        *(a5 + 8) = v11;
        v24 = *(a5 + 16);
        *(a5 + 16) = v27.__end_cap_.__value_;
        v27.__end_ = v23;
        v27.__end_cap_.__value_ = v24;
        v27.__first_ = v23;
        v27.__begin_ = v23;
        std::__split_buffer<std::string>::~__split_buffer(&v27);
      }

      else
      {
        ctu::llvm::StringRef::operator std::string(v11++, (v25 + v13), v14);
      }

      *(a5 + 8) = v11;
      first_not_of = ctu::llvm::StringRef::find_first_not_of(&v25, a3, a4, v10);
      result = ctu::llvm::StringRef::find_first_of(&v25, a3, a4, first_not_of);
      v10 = result;
    }

    while ((first_not_of & result) != 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_298082BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__split_buffer<std::string> *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ctu::py_escape(unsigned __int8 *a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v6 = a1[23];
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 1);
  }

  v7 = 2;
  if (!a2)
  {
    v7 = 0;
  }

  std::string::reserve(a3, v6 + v7);
  if (a2)
  {
    std::string::push_back(a3, 34);
  }

  v8 = a1[23];
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
    v10 = a1[23];
  }

  else
  {
    v10 = *(a1 + 1);
  }

  if (v10)
  {
    v11 = MEMORY[0x29EDCA600];
    do
    {
      v12 = *v9;
      if (v12 > 0x21)
      {
        switch(v12)
        {
          case '""':
            std::string::push_back(a3, 92);
            LOBYTE(v13) = 34;
            goto LABEL_32;
          case '\'':
            std::string::push_back(a3, 92);
            LOBYTE(v13) = 39;
            goto LABEL_32;
          case '\\':
            LOBYTE(v13) = 92;
            std::string::push_back(a3, 92);
            goto LABEL_32;
        }
      }

      else
      {
        switch(v12)
        {
          case 9u:
            std::string::push_back(a3, 92);
            LOBYTE(v13) = 116;
            goto LABEL_32;
          case 0xAu:
            std::string::push_back(a3, 92);
            LOBYTE(v13) = 110;
            goto LABEL_32;
          case 0xDu:
            std::string::push_back(a3, 92);
            LOBYTE(v13) = 114;
            goto LABEL_32;
        }
      }

      v13 = v12;
      if ((v13 & 0x80000000) != 0)
      {
        v14 = __maskrune(v12, 0x40000uLL);
      }

      else
      {
        v14 = *(v11 + 4 * v13 + 60) & 0x40000;
      }

      if (!v14)
      {
        std::string::push_back(a3, 92);
        std::string::push_back(a3, 120);
        ctu::hex0(v13, &__p);
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

        std::string::append(a3, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_33;
      }

LABEL_32:
      std::string::push_back(a3, v13);
LABEL_33:
      ++v9;
      --v10;
    }

    while (v10);
  }

  if (a2)
  {
    std::string::push_back(a3, 34);
  }
}

void sub_298082E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void ctu::replace_copy(char *__s@<X1>, uint64_t a2@<X0>, size_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, std::string *a6@<X8>)
{
  v10 = a6;
  memset(a6, 170, sizeof(std::string));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a6, *a2, *(a2 + 8));
  }

  else
  {
    *&a6->__r_.__value_.__l.__data_ = *a2;
    a6->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  size = v10->__r_.__value_.__l.__size_;
  if ((v10->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v10->__r_.__value_.__r.__words[0];
    v12 = size;
  }

  for (; v12; --v12)
  {
    v13 = memchr(__s, v10->__r_.__value_.__s.__data_[0], a3);
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = &__s[a3];
    }

    v15 = v14 - __s;
    if (v14 != &__s[a3] && v15 < a5)
    {
      v10->__r_.__value_.__s.__data_[0] = *(a4 + v15);
    }

    v10 = (v10 + 1);
  }
}

_BYTE *ctu::replace(_BYTE *result, char *__s, size_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result[23];
  if (v5 >= 0)
  {
    v6 = result;
  }

  else
  {
    v6 = *result;
  }

  if (v5 >= 0)
  {
    v7 = result[23];
  }

  else
  {
    v7 = *(result + 1);
  }

  if (v7)
  {
    v11 = &__s[a3];
    do
    {
      result = memchr(__s, *v6, a3);
      if (result)
      {
        v13 = result;
      }

      else
      {
        v13 = v11;
      }

      v14 = v13 - __s;
      if (v13 != v11 && v14 < a5)
      {
        *v6 = *(a4 + v14);
      }

      ++v6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t std::tuple<std::string,std::string,std::string>::~tuple(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

uint64_t xpc::dyn_cast_or_default(xpc_object_t *a1, uint64_t a2)
{
  v4 = MEMORY[0x29C27FAF0](*a1);
  v5 = *a1;
  if (v4 == MEMORY[0x29EDCAA30])
  {

    return xpc_int64_get_value(v5);
  }

  else
  {
    v6 = MEMORY[0x29C27FAF0](v5);
    v7 = *a1;
    if (v6 == MEMORY[0x29EDCAA58])
    {

      return xpc_uint64_get_value(v7);
    }

    else
    {
      if (MEMORY[0x29C27FAF0](v7) == MEMORY[0x29EDCA9E8])
      {
        return xpc::dyn_cast_or_default(a1, 0);
      }

      return a2;
    }
  }
}

BOOL xpc::dyn_cast_or_default(xpc_object_t *a1, uint64_t a2)
{
  v4 = MEMORY[0x29C27FAF0](*a1);
  v5 = *a1;
  if (v4 == MEMORY[0x29EDCA9E8])
  {
    return v5 == MEMORY[0x29EDCA9B0];
  }

  v6 = MEMORY[0x29C27FAF0](v5);
  v7 = *a1;
  if (v6 == MEMORY[0x29EDCAA30])
  {
    value = xpc_int64_get_value(v7);
    return value != 0;
  }

  if (MEMORY[0x29C27FAF0](v7) == MEMORY[0x29EDCAA58])
  {
    value = xpc_uint64_get_value(*a1);
    return value != 0;
  }

  return a2;
}

uint64_t xpc::dyn_cast_or_default(void *a1, int64_t value)
{
  v4 = MEMORY[0x29C27FAF0](*a1);
  v5 = *a1;
  if (v4 == MEMORY[0x29EDCAA30])
  {
    value = xpc_int64_get_value(v5);
    if (value < 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::out_of_range::out_of_range[abi:ne200100](exception, "dyn_cast to uint64_t requires nonnegative values");
      __cxa_throw(exception, off_29EE89C10, MEMORY[0x29EDC9350]);
    }

    return value;
  }

  if (MEMORY[0x29C27FAF0](v5) != MEMORY[0x29EDCAA58])
  {
    return value;
  }

  v6 = *a1;

  return xpc_uint64_get_value(v6);
}

uint64_t xpc::dyn_cast_or_default@<X0>(xpc_object_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (MEMORY[0x29C27FAF0](*a1) == MEMORY[0x29EDCA9F8] && (bytes_ptr = xpc_data_get_bytes_ptr(*a1)) != 0)
  {
    v11 = bytes_ptr;
    result = xpc_data_get_length(*a1);
    if (result < 1)
    {
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v12 = result;
      v13 = operator new(result);
      v14 = &v13[v12];
      result = memcpy(v13, v11, v12);
    }

    *a3 = v13;
    a3[1] = v14;
    a3[2] = v14;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = *a2;
    v7 = *(a2 + 8);
    v8 = v7 - *a2;

    return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, v6, v7, v8);
  }

  return result;
}

void xpc::dyn_cast_or_default(xpc_object_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (MEMORY[0x29C27FAF0](*a1) == MEMORY[0x29EDCA9F8])
  {
    v12 = 0;
    v13 = 0;
    v11 = &v12;
    bytes_ptr = xpc_data_get_bytes_ptr(*a1);
    if (bytes_ptr)
    {
      for (i = xpc_data_get_length(*a1); i; --i)
      {
        std::__tree<unsigned char>::__emplace_hint_unique_key_args<unsigned char,unsigned char const&>(&v11, &v12, *bytes_ptr, *bytes_ptr);
        ++bytes_ptr;
      }

      v8 = v12;
      *a3 = v11;
      a3[1] = v8;
      v9 = a3 + 1;
      v10 = v13;
      a3[2] = v13;
      if (v10)
      {
        v8[2] = v9;
        v11 = &v12;
        v12 = 0;
        v13 = 0;
        v8 = 0;
      }

      else
      {
        *a3 = v9;
      }
    }

    else
    {
      std::set<unsigned char>::set[abi:ne200100](a3, a2);
      v8 = v12;
    }

    std::__tree<unsigned char>::destroy(v8);
  }

  else
  {

    std::set<unsigned char>::set[abi:ne200100](a3, a2);
  }
}

void xpc::dyn_cast_or_default(xpc_object_t *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (MEMORY[0x29C27FAF0](*a1) == MEMORY[0x29EDCAA50])
  {
    string_ptr = xpc_string_get_string_ptr(*a1);
    length = xpc_string_get_length(*a1);

    std::string::basic_string[abi:ne200100](a3, string_ptr, length);
  }

  else if (*(a2 + 23) < 0)
  {
    v8 = *a2;
    v9 = *(a2 + 8);

    std::string::__init_copy_ctor_external(a3, v8, v9);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }
}

void *std::string::basic_string[abi:ne200100](void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__len | 7) + 1;
    }

    v6 = operator new(v7);
    __dst[1] = __len;
    __dst[2] = v7 | 0x8000000000000000;
    *__dst = v6;
  }

  else
  {
    *(__dst + 23) = __len;
    v6 = __dst;
    if (!__len)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __src, __len);
LABEL_10:
  *(v6 + __len) = 0;
  return __dst;
}

size_t xpc::dyn_cast_or_default@<X0>(xpc_object_t *a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  if (MEMORY[0x29C27FAF0](*a1) != MEMORY[0x29EDCAA50])
  {
    result = strlen(a2);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = result;
    if (result >= 0x17)
    {
      if ((result | 7) == 0x17)
      {
        v10 = 25;
      }

      else
      {
        v10 = (result | 7) + 1;
      }

      v11 = operator new(v10);
      a3[1] = v7;
      a3[2] = v10 | 0x8000000000000000;
      *a3 = v11;
      a3 = v11;
    }

    else
    {
      *(a3 + 23) = result;
      if (!result)
      {
        goto LABEL_14;
      }
    }

    result = memcpy(a3, a2, v7);
LABEL_14:
    *(a3 + v7) = 0;
    return result;
  }

  string_ptr = xpc_string_get_string_ptr(*a1);
  length = xpc_string_get_length(*a1);

  return std::string::basic_string[abi:ne200100](a3, string_ptr, length);
}

double xpc::dyn_cast_or_default(void *a1, double a2)
{
  if (MEMORY[0x29C27FAF0](*a1) != MEMORY[0x29EDCAA08])
  {
    return a2;
  }

  v5 = *a1;

  return xpc_double_get_value(v5);
}

uint64_t xpc::is_logically_false(xpc_object_t *a1)
{
  if (MEMORY[0x29C27FAF0](*a1) == MEMORY[0x29EDCAA40])
  {
    return 1;
  }

  v2 = MEMORY[0x29C27FAF0](*a1);
  v3 = *a1;
  if (v2 == MEMORY[0x29EDCAA30])
  {
    value = xpc_int64_get_value(v3);
  }

  else
  {
    v4 = MEMORY[0x29C27FAF0](v3);
    v5 = *a1;
    if (v4 == MEMORY[0x29EDCAA58])
    {
      value = xpc_uint64_get_value(v5);
    }

    else
    {
      v6 = MEMORY[0x29C27FAF0](v5);
      v7 = *a1;
      if (v6 == MEMORY[0x29EDCA9E8])
      {
        return !xpc_BOOL_get_value(v7);
      }

      v8 = MEMORY[0x29C27FAF0](v7);
      v9 = *a1;
      if (v8 == MEMORY[0x29EDCA9F8])
      {
        value = xpc_data_get_length(v9);
      }

      else
      {
        v10 = MEMORY[0x29C27FAF0](v9);
        v11 = *a1;
        if (v10 == MEMORY[0x29EDCAA50])
        {
          value = xpc_string_get_length(v11);
        }

        else
        {
          v12 = MEMORY[0x29C27FAF0](v11);
          v13 = *a1;
          if (v12 == MEMORY[0x29EDCA9E0])
          {
            value = xpc_array_get_count(v13);
          }

          else
          {
            if (MEMORY[0x29C27FAF0](v13) != MEMORY[0x29EDCAA00])
            {
              return 0;
            }

            value = xpc_dictionary_get_count(*a1);
          }
        }
      }
    }
  }

  return value == 0;
}

void xpc::auto_reply::deleter(xpc_object_t *a1)
{
  if (a1)
  {
    if (MEMORY[0x29C27FAF0](*a1) == MEMORY[0x29EDCAA00])
    {
      remote_connection = xpc_dictionary_get_remote_connection(*a1);
      if (remote_connection)
      {
        xpc_connection_send_message(remote_connection, *a1);
      }
    }

    xpc_release(*a1);

    operator delete(a1);
  }
}

void xpc::auto_reply::deleter_with_conn(xpc_object_t *a1, xpc_connection_t *a2)
{
  if (a1)
  {
    if (MEMORY[0x29C27FAF0](*a1) == MEMORY[0x29EDCAA00] && MEMORY[0x29C27FAF0](*a2) == MEMORY[0x29EDCA9F0])
    {
      xpc_connection_send_message(*a2, *a1);
    }

    xpc_release(*a1);

    operator delete(a1);
  }
}

void xpc::auto_reply::connect(void ***a1, xpc_object_t *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = *a2;
    if (*a2)
    {
      xpc_retain(*a2);
    }

    else
    {
      v4 = xpc_null_create();
    }

    v5 = *v2;
    *v2 = v4;
    xpc_release(v5);
    v6 = xpc_null_create();
    v7 = *a2;
    *a2 = v6;
    xpc_release(v7);
  }
}

void *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, const void *a2, uint64_t a3, size_t __sz)
{
  if (__sz)
  {
    v5 = result;
    if ((__sz & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    result = operator new(__sz);
    v8 = result;
    *v5 = result;
    v5[1] = result;
    v5[2] = result + __sz;
    v9 = a3 - a2;
    if (v9)
    {
      result = memcpy(result, a2, v9);
    }

    v5[1] = &v8[v9];
  }

  return result;
}

void sub_298083CEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<unsigned char>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<unsigned char>::destroy(*a1);
    std::__tree<unsigned char>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t *std::set<unsigned char>::set[abi:ne200100](uint64_t *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<unsigned char>::__emplace_hint_unique_key_args<unsigned char,unsigned char const&>(a1, v3, *(v5 + 25), *(v5 + 25));
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

uint64_t *std::__tree<unsigned char>::__emplace_hint_unique_key_args<unsigned char,unsigned char const&>(uint64_t *result, uint64_t *a2, unsigned __int8 a3, char a4)
{
  v5 = a2;
  v6 = result;
  v7 = (result + 1);
  if (result + 1 != a2)
  {
    v8 = *(a2 + 25);
    if (v8 <= a3)
    {
      if (v8 >= a3)
      {
        return result;
      }

      v13 = a2 + 1;
      v12 = a2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
          v5 = v13;
          v14 = v13;
        }

        while (v12);
      }

      else
      {
        v14 = a2;
        do
        {
          v20 = v14;
          v14 = v14[2];
        }

        while (*v14 != v20);
      }

      if (v14 == v7)
      {
        goto LABEL_42;
      }

      if (*(v14 + 25) > a3)
      {
        goto LABEL_42;
      }

      v21 = *v7;
      v13 = result + 1;
      v5 = result + 1;
      if (!*v7)
      {
        goto LABEL_42;
      }

      while (1)
      {
        while (1)
        {
          v5 = v21;
          v22 = *(v21 + 25);
          if (v22 <= a3)
          {
            break;
          }

          v21 = *v21;
          v13 = v5;
          if (!*v5)
          {
            goto LABEL_42;
          }
        }

        if (v22 >= a3)
        {
          return result;
        }

        v21 = v21[1];
        if (!v21)
        {
LABEL_30:
          v13 = v5 + 1;
          goto LABEL_42;
        }
      }
    }
  }

  v9 = *a2;
  if (*result == a2)
  {
    v11 = a2;
  }

  else
  {
    if (v9)
    {
      v10 = *a2;
      do
      {
        v11 = v10;
        v10 = v10[1];
      }

      while (v10);
    }

    else
    {
      v15 = a2;
      do
      {
        v11 = v15[2];
        v16 = *v11 == v15;
        v15 = v11;
      }

      while (v16);
    }

    if (*(v11 + 25) >= a3)
    {
      v18 = *v7;
      v13 = result + 1;
      v5 = result + 1;
      if (!*v7)
      {
        goto LABEL_42;
      }

      while (1)
      {
        while (1)
        {
          v5 = v18;
          v19 = *(v18 + 25);
          if (v19 <= a3)
          {
            break;
          }

          v18 = *v18;
          v13 = v5;
          if (!*v5)
          {
            goto LABEL_42;
          }
        }

        if (v19 >= a3)
        {
          return result;
        }

        v18 = v18[1];
        if (!v18)
        {
          goto LABEL_30;
        }
      }
    }
  }

  if (v9)
  {
    v17 = v11;
  }

  else
  {
    v17 = a2;
  }

  if (v9)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = a2;
  }

  if (!*v13)
  {
    v5 = v17;
LABEL_42:
    v23 = operator new(0x20uLL);
    v23[25] = a4;
    *v23 = 0;
    *(v23 + 1) = 0;
    *(v23 + 2) = v5;
    *v13 = v23;
    v24 = **v6;
    if (v24)
    {
      *v6 = v24;
      v25 = *v13;
    }

    else
    {
      v25 = v23;
    }

    result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v6[1], v25);
    ++v6[2];
  }

  return result;
}

void ctu::hex(ctu *this@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a2 >= 1)
  {
    v3 = this;
    v5 = (this + a2);
    do
    {
      if (*v3 >= 0xA0u)
      {
        v6 = (*v3 >> 4) + 87;
      }

      else
      {
        v6 = (*v3 >> 4) | 0x30;
      }

      std::string::push_back(a3, v6);
      v7 = *v3 & 0xF;
      if (v7 >= 0xA)
      {
        v8 = v7 + 87;
      }

      else
      {
        v8 = *v3 & 0xF | 0x30;
      }

      std::string::push_back(a3, v8);
      v3 = (v3 + 1);
    }

    while (v3 < v5);
  }
}

void sub_298084070(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::hex_sp(ctu *this@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a2 >= 1)
  {
    v3 = this;
    v5 = (this + a2);
    do
    {
      if (*v3 >= 0xA0u)
      {
        v6 = (*v3 >> 4) + 87;
      }

      else
      {
        v6 = (*v3 >> 4) | 0x30;
      }

      std::string::push_back(a3, v6);
      v7 = *v3 & 0xF;
      if (v7 >= 0xA)
      {
        v8 = v7 + 87;
      }

      else
      {
        v8 = *v3 & 0xF | 0x30;
      }

      std::string::push_back(a3, v8);
      std::string::push_back(a3, 32);
      v3 = (v3 + 1);
    }

    while (v3 < v5);
    v9 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    if (v9 < 0)
    {
      size = a3->__r_.__value_.__l.__size_;
      if (!size)
      {
        return;
      }

      v11 = a3->__r_.__value_.__r.__words[0];
      v10 = a3->__r_.__value_.__r.__words[0] + size;
    }

    else
    {
      if (!*(&a3->__r_.__value_.__s + 23))
      {
        return;
      }

      v10 = a3 + v9;
      v11 = a3;
    }

    std::string::erase(a3, ~v11 + v10, 1uLL);
  }
}

void sub_298084164(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::hex(ctu **a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1[1];
  v3 = v2 - *a1;
  if (v2 == *a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1;
  }

  ctu::hex(v4, v3, a2);
}

void ctu::hex_sp(ctu **a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1[1];
  v3 = v2 - *a1;
  if (v2 == *a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1;
  }

  ctu::hex_sp(v4, v3, a2);
}

void ctu::hex(ctu *this@<X0>, unint64_t a2@<X8>)
{
  v2 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((v2 & 0xFu) >= 0xA)
    {
      v4 = (v2 & 0xF) + 87;
    }

    else
    {
      v4 = v2 & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v5 = v2;
    v2 >>= 4;
  }

  while (v5 > 0xF);
  v6 = *(a2 + 23);
  v7 = v6 < 0;
  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = *(a2 + 23);
  }

  v10 = (v8 + v9 - 1);
  if (v9)
  {
    v11 = v10 > v8;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v8 + 1;
    do
    {
      v13 = *(v12 - 1);
      *(v12 - 1) = *v10;
      *v10-- = v13;
    }

    while (v12++ < v10);
  }
}

{
  v2 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((v2 & 0xFu) >= 0xA)
    {
      v4 = (v2 & 0xF) + 87;
    }

    else
    {
      v4 = v2 & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v5 = v2;
    v2 >>= 4;
  }

  while (v5 > 0xF);
  v6 = *(a2 + 23);
  v7 = v6 < 0;
  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = *(a2 + 23);
  }

  v10 = (v8 + v9 - 1);
  if (v9)
  {
    v11 = v10 > v8;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v8 + 1;
    do
    {
      v13 = *(v12 - 1);
      *(v12 - 1) = *v10;
      *v10-- = v13;
    }

    while (v12++ < v10);
  }
}

{
  v2 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((v2 & 0xF) >= 0xA)
    {
      v4 = (v2 & 0xF) + 87;
    }

    else
    {
      v4 = v2 & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v10 = v2 > 0xF;
    v2 >>= 4;
  }

  while (v10);
  v5 = *(a2 + 23);
  v6 = v5 < 0;
  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = *(a2 + 23);
  }

  v9 = (v7 + v8 - 1);
  if (v8)
  {
    v10 = v9 > v7;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v7 + 1;
    do
    {
      v12 = *(v11 - 1);
      *(v11 - 1) = *v9;
      *v9-- = v12;
    }

    while (v11++ < v9);
  }
}

{
  v2 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((v2 & 0xFu) >= 0xA)
    {
      v4 = (v2 & 0xF) + 87;
    }

    else
    {
      v4 = v2 & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v5 = v2;
    v2 >>= 4;
  }

  while (v5 > 0xF);
  v6 = *(a2 + 23);
  v7 = v6 < 0;
  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = *(a2 + 23);
  }

  v10 = (v8 + v9 - 1);
  if (v9)
  {
    v11 = v10 > v8;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v8 + 1;
    do
    {
      v13 = *(v12 - 1);
      *(v12 - 1) = *v10;
      *v10-- = v13;
    }

    while (v12++ < v10);
  }
}

{
  v2 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((v2 & 0xFu) >= 0xA)
    {
      v4 = (v2 & 0xF) + 87;
    }

    else
    {
      v4 = v2 & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v5 = v2;
    v2 >>= 4;
  }

  while (v5 > 0xF);
  v6 = *(a2 + 23);
  v7 = v6 < 0;
  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = *(a2 + 23);
  }

  v10 = (v8 + v9 - 1);
  if (v9)
  {
    v11 = v10 > v8;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v8 + 1;
    do
    {
      v13 = *(v12 - 1);
      *(v12 - 1) = *v10;
      *v10-- = v13;
    }

    while (v12++ < v10);
  }
}

{
  v2 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((v2 & 0xFu) >= 0xA)
    {
      v4 = (v2 & 0xF) + 87;
    }

    else
    {
      v4 = v2 & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v5 = v2;
    v2 >>= 4;
  }

  while (v5 > 0xF);
  v6 = *(a2 + 23);
  v7 = v6 < 0;
  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = *(a2 + 23);
  }

  v10 = (v8 + v9 - 1);
  if (v9)
  {
    v11 = v10 > v8;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v8 + 1;
    do
    {
      v13 = *(v12 - 1);
      *(v12 - 1) = *v10;
      *v10-- = v13;
    }

    while (v12++ < v10);
  }
}

{
  v2 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((v2 & 0xF) >= 0xA)
    {
      v4 = (v2 & 0xF) + 87;
    }

    else
    {
      v4 = v2 & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v10 = v2 > 0xF;
    v2 >>= 4;
  }

  while (v10);
  v5 = *(a2 + 23);
  v6 = v5 < 0;
  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = *(a2 + 23);
  }

  v9 = (v7 + v8 - 1);
  if (v8)
  {
    v10 = v9 > v7;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v7 + 1;
    do
    {
      v12 = *(v11 - 1);
      *(v11 - 1) = *v9;
      *v9-- = v12;
    }

    while (v11++ < v9);
  }
}

void sub_298084250(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_298084318(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2980843E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::hex(unint64_t this@<X0>, unint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((this & 0xF) >= 0xA)
    {
      v4 = (this & 0xF) + 87;
    }

    else
    {
      v4 = this & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v10 = this > 0xF;
    this >>= 4;
  }

  while (v10);
  v5 = *(a2 + 23);
  v6 = v5 < 0;
  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = *(a2 + 23);
  }

  v9 = (v7 + v8 - 1);
  if (v8)
  {
    v10 = v9 > v7;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v7 + 1;
    do
    {
      v12 = *(v11 - 1);
      *(v11 - 1) = *v9;
      *v9-- = v12;
    }

    while (v11++ < v9);
  }
}

{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((this & 0xF) >= 0xA)
    {
      v4 = (this & 0xF) + 87;
    }

    else
    {
      v4 = this & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v10 = this > 0xF;
    this >>= 4;
  }

  while (v10);
  v5 = *(a2 + 23);
  v6 = v5 < 0;
  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = *(a2 + 23);
  }

  v9 = (v7 + v8 - 1);
  if (v8)
  {
    v10 = v9 > v7;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v7 + 1;
    do
    {
      v12 = *(v11 - 1);
      *(v11 - 1) = *v9;
      *v9-- = v12;
    }

    while (v11++ < v9);
  }
}

{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((this & 0xF) >= 0xA)
    {
      v4 = (this & 0xF) + 87;
    }

    else
    {
      v4 = this & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v10 = this > 0xF;
    this >>= 4;
  }

  while (v10);
  v5 = *(a2 + 23);
  v6 = v5 < 0;
  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = *(a2 + 23);
  }

  v9 = (v7 + v8 - 1);
  if (v8)
  {
    v10 = v9 > v7;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v7 + 1;
    do
    {
      v12 = *(v11 - 1);
      *(v11 - 1) = *v9;
      *v9-- = v12;
    }

    while (v11++ < v9);
  }
}

{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((this & 0xF) >= 0xA)
    {
      v4 = (this & 0xF) + 87;
    }

    else
    {
      v4 = this & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v10 = this > 0xF;
    this >>= 4;
  }

  while (v10);
  v5 = *(a2 + 23);
  v6 = v5 < 0;
  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = *(a2 + 23);
  }

  v9 = (v7 + v8 - 1);
  if (v8)
  {
    v10 = v9 > v7;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v7 + 1;
    do
    {
      v12 = *(v11 - 1);
      *(v11 - 1) = *v9;
      *v9-- = v12;
    }

    while (v11++ < v9);
  }
}