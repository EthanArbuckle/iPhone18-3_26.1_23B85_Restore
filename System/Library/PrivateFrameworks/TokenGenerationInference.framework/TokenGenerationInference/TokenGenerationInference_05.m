uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 128 - v5;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x11)
  {
    v9 = a3;
    v11 = a4;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 4;
      v11 = a4 >> 4;
      *(v8 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v8 -= 4;
      v12 = a3 <= 0x10F;
      a3 = v9;
      a4 >>= 4;
    }

    while (!v12);
  }

  v13 = (v8 - 1);
  do
  {
    v14 = v9 & 1;
    v12 = v9 <= 1;
    *(&v15 + 1) = v11;
    *&v15 = v9;
    v9 = v15 >> 1;
    v11 >>= 1;
    *v13-- = a01[v14];
  }

  while (!v12);
  return v7;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (-126 - v5) / 3u;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x41)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 6;
      a4 >>= 6;
      *(v8 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x40);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 7;
    v13 = v9 <= 7;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 3;
    a4 >>= 3;
    *v11-- = a01234567[v12];
  }

  while (!v13);
  return v7;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 131 - v5;
  if (a2 - a1 < (v6 >> 2))
  {
    return a2;
  }

  v7 = a1 + (v6 >> 2);
  if (__PAIR128__(a4, a3) < 0x101)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + (v6 >> 2);
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 8;
      a4 >>= 8;
      *(v8 - 2) = std::__itoa::__base_16_lut[a3];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x100);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 0xF;
    v13 = v9 <= 0xF;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 4;
    a4 >>= 4;
    *v11-- = a0123456789abcd_0[v12];
  }

  while (!v13);
  return v7;
}

void *std::__formatter_integer<char>::format[abi:ne200100]<unsigned int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, unsigned int a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,unsigned int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v6, v5, 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,unsigned int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned int a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 >= 0x80)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter_integer<char>::format[abi:ne200100]<unsigned long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, unint64_t a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,unsigned long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {

    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v6, v5, 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,unsigned long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 >= 0x80)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter_integer<char>::format[abi:ne200100]<unsigned __int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, unint64_t a2, unint64_t a3, void *a4)
{
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  if ((v8 & 0xFF00) == 0xA00)
  {
    v9 = *a4;

    return std::__formatter::__format_char[abi:ne200100]<char,unsigned __int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v9, v8, v7);
  }

  else
  {

    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, a4, v8, v7, 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,unsigned __int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (__PAIR128__(a2, a1) >= 0x80)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a3, a4, a5, 1);
}

void *std::__formatter::__format_floating_point[abi:ne200100]<float,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(void **a1, uint64_t a2, unint64_t a3, float a4)
{
  v43[32] = *MEMORY[0x277D85DE8];
  if ((LODWORD(a4) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v33 = *a1;

    return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v33, a2, a3, a4 < 0.0, 0);
  }

  else
  {
    v7 = fabsf(a4);
    if (a3 == -1)
    {
      v8 = 149;
    }

    else
    {
      v8 = a3;
    }

    v39 = v8;
    v40 = 0;
    if (v8 < 150)
    {
      v41 = v8 + 45;
      if ((v8 + 45) >= 0x101)
      {
        operator new();
      }
    }

    else
    {
      v39 = 149;
      v40 = v8 - 149;
      v41 = 194;
    }

    __p = v43;
    std::__formatter::__format_buffer[abi:ne200100]<float,float>(&v39, a4 < 0.0, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, BYTE1(a2), &v35, v7);
    if ((a2 & 0x20) != 0)
    {
      v9 = v36;
      v10 = *v38;
      if (v36 == *v38)
      {
        ++*v38;
        *v10 = 46;
        v11 = v37;
        v12 = (*v38 - 1);
        if (v37 != (*v38 - 1))
        {
          if (v37 + 1 == v12)
          {
            v14 = *v37;
            *v37 = v37[1];
            v11[1] = v14;
          }

          else
          {
            v13 = *(*v38 - 1);
            memmove(v37 + 1, v37, v12 - v37);
            *v11 = v13;
          }
        }

        v9 = v37;
        v36 = v37++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v15 = 6;
        }

        if (v37 == *v38)
        {
          v16 = v35 - v9;
        }

        else
        {
          v16 = -1;
        }

        v17 = v16 + v15;
        v18 = &v37[~v9];
        if (v18 < v17)
        {
          v40 += v17 - v18;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v26 = *a1;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a1, &v34);
      v27 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,float,char>(v26, &v39, &v35, &v34, a2, a3);
      std::locale::~locale(&v34);
    }

    else
    {
      v19 = *v38;
      v20 = __p;
      v21 = *v38 - __p;
      v22 = v40;
      if (*v38 - __p + v40 >= a2 >> 32)
      {
        if (!v40 || (v28 = v37, v37 == *v38))
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, *v38 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v27, v22, 48);
        }

        else
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, v37 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v27, v22, 48);
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v27, v28, v19 - v28);
        }
      }

      else
      {
        v23 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v35)
          {
            std::__format::__output_buffer<char>::push_back[abi:ne200100](v23, *__p);
            ++v20;
          }

          v24 = a2 & 0xB8 | 3;
          v25 = 48;
        }

        else
        {
          v25 = BYTE4(a3);
          v24 = a2;
        }

        v29 = a2 & 0xFFFFFFFFFFFFFF00 | v24;
        v30 = a3 & 0xFFFFFF00FFFFFFFFLL | (v25 << 32);
        if (v22)
        {
          v31 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v38, v23, v29, v30, v21, v37, v22);
        }

        else
        {
          v31 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v38 - v20, v23, v29, v30, v21);
        }

        v27 = v31;
      }
    }

    if (v41 >= 0x101)
    {
      operator delete(__p);
    }

    return v27;
  }
}

void sub_220986BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x101)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(void *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  if (a4)
  {
    v5 = 45;
  }

  else
  {
    v6 = (a2 >> 3) & 3;
    if (v6 == 2)
    {
      v5 = 43;
    }

    else
    {
      if (v6 != 3)
      {
        p_src = &__src;
        goto LABEL_8;
      }

      v5 = 32;
    }
  }

  p_src = v14;
  __src = v5;
LABEL_8:
  if (BYTE1(a2) <= 0x10u && ((1 << SBYTE1(a2)) & 0x15000) != 0)
  {
    v8 = 6;
  }

  else
  {
    v8 = 6;
    if (BYTE1(a2) != 18)
    {
      v8 = 0;
    }
  }

  v9 = 3;
  if (!a5)
  {
    v9 = 0;
  }

  v10 = &aInfnaninfnan[v8 + v9];
  *p_src = *v10;
  p_src[2] = v10[2];
  if ((a2 & 7) == 4)
  {
    v11 = a2 & 0xF8 | 3;
  }

  else
  {
    v11 = a2;
  }

  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, p_src - &__src + 3, a1, a2 & 0xFFFFFFFFFFFFFF00 | v11, a3, p_src - &__src + 3);
}

char *std::__formatter::__format_buffer[abi:ne200100]<float,float>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char **a6@<X8>, float a7@<S0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      result = MEMORY[0x223D8FDE0](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      a6[1] = &result[-v14];
      return result;
    }

    if (a5 != 17)
    {
      result = std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(a1, *a1, v9, a6);
      v15 = a6[2];
      if (v15 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v18 = *a1;
      }

      else
      {
        v18 = 0xFFFFFFFFLL;
      }

      return std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(a1, v18, v9, a6);
    }

    if (!a3)
    {

      return std::__formatter::__format_buffer_default[abi:ne200100]<float,float>(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v16 = *a1;

    return std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(a1, v16, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(a1, v11, v9, a6);
    }

    result = std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(a1, *a1, v9, a6);
    v15 = a6[2];
LABEL_35:
    *v15 = 69;
    return result;
  }

  if (a3)
  {
    v17 = *a1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<float,float>(a1, v17, v9, a6);
}

void *std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,float,char>(void *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, MEMORY[0x277D826C0]);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v50 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_29;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if (v50 <= *__p.__r_.__value_.__l.__data_)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_29;
    }

    v16 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_29;
    }

    if (v50 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_29;
    }

    p_p = &__p;
    size = __p.__r_.__value_.__l.__size_;
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  memset(&v51, 0, sizeof(v51));
  v17 = (v16 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = p_p->__r_.__value_.__s.__data_[0];
  v19 = v50 - p_p->__r_.__value_.__s.__data_[0];
  if (v19 >= 1)
  {
    v20 = (v17 - 1);
    do
    {
      std::string::push_back(&v51, v18);
      if (p_p == v20)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v21 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v22 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v23 = *v22++;
          v18 = v23;
          if (v23)
          {
            v24 = 1;
          }

          else
          {
            v24 = v21 == v20;
          }

          v21 = v22;
        }

        while (!v24);
        p_p = (v22 - 1);
      }

      v19 -= v18;
    }

    while (v19 > 0);
  }

  std::string::push_back(&v51, v18 + v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v51;
LABEL_29:
  v25 = HIDWORD(a6);
  v26 = *(a2 + 16);
  v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __p.__r_.__value_.__l.__size_;
  }

  v28 = a3[3] - v26 + *(a2 + 4) + v27 - (v27 != 0);
  v29 = a5 & 7;
  v30 = (a5 >> 32) - v28;
  if (a5 >> 32 <= v28)
  {
    *v49 = 0;
    v30 = 0;
    v31 = v25;
    goto LABEL_45;
  }

  if (v29 == 4)
  {
    v31 = 48;
  }

  else
  {
    v31 = v25;
  }

  if (v29 == 4)
  {
    v32 = 3;
  }

  else
  {
    v32 = a5 & 7;
  }

  if (v32 > 1)
  {
    if (v32 != 3)
    {
      *v49 = v30 - (v30 >> 1);
      v30 >>= 1;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (!v32)
  {
LABEL_43:
    *v49 = 0;
    goto LABEL_45;
  }

  *v49 = (a5 >> 32) - v28;
  v30 = 0;
LABEL_45:
  if (v29 == 4 && v13 != v26)
  {
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v26);
  }

  v33 = v25 & 0xFFFFFF00 | v31;
  v34 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v30, v33);
  v35 = v34;
  if (v29 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      std::__format::__output_buffer<char>::push_back[abi:ne200100](v34, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_56;
    }

LABEL_59:
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v50);
    goto LABEL_60;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_59;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_56:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v40);
  }

LABEL_60:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v45);
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, a3[1] + 1, a3[2] - (a3[1] + 1));
    std::__format::__output_buffer<char>::__fill[abi:ne200100](v35, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v46, v44 - v46);
  }

  v47 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v35, *v49, v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v47;
}

void sub_220987304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7, size_t a8)
{
  v12 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      v13 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ((a4 & 7) == 3)
  {
LABEL_5:
    v13 = (a4 >> 32) - (a6 + a8);
    v12 = 0;
    goto LABEL_7;
  }

  v13 = v12 >> 1;
  v12 -= v12 >> 1;
LABEL_7:
  v14 = HIDWORD(a5);
  v15 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v13, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v15, a1, a7 - a1);
  std::__format::__output_buffer<char>::__fill[abi:ne200100](v15, a8, 48);
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v15, a7, a2 - a7);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v15, v12, v14);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 4) = 0;
  *a4 = a3;
  v6 = MEMORY[0x223D8FDE0](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
  a4[3] = v6;
  result = (a3 + 1);
  if (a3 + 1 == v6)
  {
    a4[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a4[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (*(v6 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a4[2] = v6 + v10;
    if (v10)
    {
      if (*result == 46)
      {
        v6 = a3 + 1;
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a4[v11] = v6;
  return result;
}

_BYTE *std::__formatter::__format_buffer_default[abi:ne200100]<float,float>@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x223D8FDE0](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
  }

  a4[3] = result;
  v8 = *(a3 + 1);
  v7 = a3 + 1;
  if (v8 == 46)
  {
    v9 = result - 2;
    v10 = memchr((result - 5), 112, 3uLL);
    result = v7;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = std::__formatter::__hex_to_upper[abi:ne200100](*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  result = MEMORY[0x223D8FDE0](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
  a4[3] = result;
  v7 = a3 + 1;
  if (*(a3 + 1) == 46)
  {
    a4[1] = v7;
    v8 = result - a3 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a4[1] = result;
  }

  a4[2] = v7;
  return result;
}

uint64_t std::__format::__output_buffer<char>::push_back[abi:ne200100](uint64_t result, char a2)
{
  v2 = *(result + 32);
  if (!v2 || (v4 = *v2, v3 = v2[1], v2[1] = v3 + 1, v3 < v4))
  {
    v5 = *result;
    v6 = *(result + 16);
    *(result + 16) = v6 + 1;
    *(v5 + v6) = a2;
    if (*(result + 16) == *(result + 8))
    {
      return (*(result + 24))(result, 2);
    }
  }

  return result;
}

void *std::__formatter::__format_floating_point[abi:ne200100]<double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(void **a1, uint64_t a2, unint64_t a3, double a4)
{
  v43[128] = *MEMORY[0x277D85DE8];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v33 = *a1;

    return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v33, a2, a3, a4 < 0.0, 0);
  }

  else
  {
    v7 = fabs(a4);
    if (a3 == -1)
    {
      v8 = 1074;
    }

    else
    {
      v8 = a3;
    }

    v39 = v8;
    v40 = 0;
    if (v8 >= 1075)
    {
      v39 = 1074;
      v40 = v8 - 1074;
      v41 = 1390;
      goto LABEL_8;
    }

    v41 = v8 + 316;
    if ((v8 + 316) >= 0x401)
    {
LABEL_8:
      operator new();
    }

    __p = v43;
    std::__formatter::__format_buffer[abi:ne200100]<double,double>(&v39, a4 < 0.0, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, BYTE1(a2), &v35, v7);
    if ((a2 & 0x20) != 0)
    {
      v9 = v36;
      v10 = *v38;
      if (v36 == *v38)
      {
        ++*v38;
        *v10 = 46;
        v11 = v37;
        v12 = (*v38 - 1);
        if (v37 != (*v38 - 1))
        {
          if (v37 + 1 == v12)
          {
            v14 = *v37;
            *v37 = v37[1];
            v11[1] = v14;
          }

          else
          {
            v13 = *(*v38 - 1);
            memmove(v37 + 1, v37, v12 - v37);
            *v11 = v13;
          }
        }

        v9 = v37;
        v36 = v37++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v15 = 6;
        }

        if (v37 == *v38)
        {
          v16 = v35 - v9;
        }

        else
        {
          v16 = -1;
        }

        v17 = v16 + v15;
        v18 = &v37[~v9];
        if (v18 < v17)
        {
          v40 += v17 - v18;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v26 = *a1;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a1, &v34);
      v27 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v26, &v39, &v35, &v34, a2, a3);
      std::locale::~locale(&v34);
    }

    else
    {
      v19 = *v38;
      v20 = __p;
      v21 = *v38 - __p;
      v22 = v40;
      if (*v38 - __p + v40 >= a2 >> 32)
      {
        if (!v40 || (v28 = v37, v37 == *v38))
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, *v38 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v27, v22, 48);
        }

        else
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, v37 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v27, v22, 48);
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v27, v28, v19 - v28);
        }
      }

      else
      {
        v23 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v35)
          {
            std::__format::__output_buffer<char>::push_back[abi:ne200100](v23, *__p);
            ++v20;
          }

          v24 = a2 & 0xB8 | 3;
          v25 = 48;
        }

        else
        {
          v25 = BYTE4(a3);
          v24 = a2;
        }

        v29 = a2 & 0xFFFFFFFFFFFFFF00 | v24;
        v30 = a3 & 0xFFFFFF00FFFFFFFFLL | (v25 << 32);
        if (v22)
        {
          v31 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v38, v23, v29, v30, v21, v37, v22);
        }

        else
        {
          v31 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v38 - v20, v23, v29, v30, v21);
        }

        v27 = v31;
      }
    }

    if (v41 >= 0x401)
    {
      operator delete(__p);
    }

    return v27;
  }
}

void sub_220987BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::__formatter::__format_buffer[abi:ne200100]<double,double>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char **a6@<X8>, double a7@<D0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      result = MEMORY[0x223D8FD80](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      a6[1] = &result[-v14];
      return result;
    }

    if (a5 != 17)
    {
      result = std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(a1, *a1, v9, a6);
      v15 = a6[2];
      if (v15 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v18 = *a1;
      }

      else
      {
        v18 = 0xFFFFFFFFLL;
      }

      return std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(a1, v18, v9, a6);
    }

    if (!a3)
    {

      return std::__formatter::__format_buffer_default[abi:ne200100]<double,double>(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v16 = *a1;

    return std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(a1, v16, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(a1, v11, v9, a6);
    }

    result = std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(a1, *a1, v9, a6);
    v15 = a6[2];
LABEL_35:
    *v15 = 69;
    return result;
  }

  if (a3)
  {
    v17 = *a1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,double>(a1, v17, v9, a6);
}

void *std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(void *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, MEMORY[0x277D826C0]);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v50 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_29;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if (v50 <= *__p.__r_.__value_.__l.__data_)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_29;
    }

    v16 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_29;
    }

    if (v50 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_29;
    }

    p_p = &__p;
    size = __p.__r_.__value_.__l.__size_;
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  memset(&v51, 0, sizeof(v51));
  v17 = (v16 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = p_p->__r_.__value_.__s.__data_[0];
  v19 = v50 - p_p->__r_.__value_.__s.__data_[0];
  if (v19 >= 1)
  {
    v20 = (v17 - 1);
    do
    {
      std::string::push_back(&v51, v18);
      if (p_p == v20)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v21 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v22 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v23 = *v22++;
          v18 = v23;
          if (v23)
          {
            v24 = 1;
          }

          else
          {
            v24 = v21 == v20;
          }

          v21 = v22;
        }

        while (!v24);
        p_p = (v22 - 1);
      }

      v19 -= v18;
    }

    while (v19 > 0);
  }

  std::string::push_back(&v51, v18 + v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v51;
LABEL_29:
  v25 = HIDWORD(a6);
  v26 = *(a2 + 16);
  v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __p.__r_.__value_.__l.__size_;
  }

  v28 = a3[3] - v26 + *(a2 + 4) + v27 - (v27 != 0);
  v29 = a5 & 7;
  v30 = (a5 >> 32) - v28;
  if (a5 >> 32 <= v28)
  {
    *v49 = 0;
    v30 = 0;
    v31 = v25;
    goto LABEL_45;
  }

  if (v29 == 4)
  {
    v31 = 48;
  }

  else
  {
    v31 = v25;
  }

  if (v29 == 4)
  {
    v32 = 3;
  }

  else
  {
    v32 = a5 & 7;
  }

  if (v32 > 1)
  {
    if (v32 != 3)
    {
      *v49 = v30 - (v30 >> 1);
      v30 >>= 1;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (!v32)
  {
LABEL_43:
    *v49 = 0;
    goto LABEL_45;
  }

  *v49 = (a5 >> 32) - v28;
  v30 = 0;
LABEL_45:
  if (v29 == 4 && v13 != v26)
  {
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v26);
  }

  v33 = v25 & 0xFFFFFF00 | v31;
  v34 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v30, v33);
  v35 = v34;
  if (v29 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      std::__format::__output_buffer<char>::push_back[abi:ne200100](v34, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_56;
    }

LABEL_59:
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v50);
    goto LABEL_60;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_59;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_56:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v40);
  }

LABEL_60:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v45);
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, a3[1] + 1, a3[2] - (a3[1] + 1));
    std::__format::__output_buffer<char>::__fill[abi:ne200100](v35, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v46, v44 - v46);
  }

  v47 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v35, *v49, v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v47;
}

void sub_2209881A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 4) = 0;
  *a4 = a3;
  v6 = MEMORY[0x223D8FD80](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
  a4[3] = v6;
  result = (a3 + 1);
  if (a3 + 1 == v6)
  {
    a4[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a4[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (*(v6 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a4[2] = v6 + v10;
    if (v10)
    {
      if (*result == 46)
      {
        v6 = a3 + 1;
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a4[v11] = v6;
  return result;
}

_BYTE *std::__formatter::__format_buffer_default[abi:ne200100]<double,double>@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x223D8FD80](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
  }

  a4[3] = result;
  v8 = *(a3 + 1);
  v7 = a3 + 1;
  if (v8 == 46)
  {
    v9 = result - 2;
    v10 = memchr((result - 6), 112, 4uLL);
    result = v7;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = std::__formatter::__hex_to_upper[abi:ne200100](*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  result = MEMORY[0x223D8FD80](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
  a4[3] = result;
  v7 = a3 + 1;
  if (*(a3 + 1) == 46)
  {
    a4[1] = v7;
    v8 = result - a3 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a4[1] = result;
  }

  a4[2] = v7;
  return result;
}

void *std::__formatter::__format_floating_point[abi:ne200100]<long double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(void **a1, uint64_t a2, unint64_t a3, double a4)
{
  v43[128] = *MEMORY[0x277D85DE8];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v33 = *a1;

    return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v33, a2, a3, a4 < 0.0, 0);
  }

  else
  {
    v7 = fabs(a4);
    if (a3 == -1)
    {
      v8 = 1074;
    }

    else
    {
      v8 = a3;
    }

    v39 = v8;
    v40 = 0;
    if (v8 >= 1075)
    {
      v39 = 1074;
      v40 = v8 - 1074;
      v41 = 1390;
      goto LABEL_8;
    }

    v41 = v8 + 316;
    if ((v8 + 316) >= 0x401)
    {
LABEL_8:
      operator new();
    }

    __p = v43;
    std::__formatter::__format_buffer[abi:ne200100]<double,long double>(&v39, a4 < 0.0, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, BYTE1(a2), &v35, v7);
    if ((a2 & 0x20) != 0)
    {
      v9 = v36;
      v10 = *v38;
      if (v36 == *v38)
      {
        ++*v38;
        *v10 = 46;
        v11 = v37;
        v12 = (*v38 - 1);
        if (v37 != (*v38 - 1))
        {
          if (v37 + 1 == v12)
          {
            v14 = *v37;
            *v37 = v37[1];
            v11[1] = v14;
          }

          else
          {
            v13 = *(*v38 - 1);
            memmove(v37 + 1, v37, v12 - v37);
            *v11 = v13;
          }
        }

        v9 = v37;
        v36 = v37++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v15 = 6;
        }

        if (v37 == *v38)
        {
          v16 = v35 - v9;
        }

        else
        {
          v16 = -1;
        }

        v17 = v16 + v15;
        v18 = &v37[~v9];
        if (v18 < v17)
        {
          v40 += v17 - v18;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v26 = *a1;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a1, &v34);
      v27 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v26, &v39, &v35, &v34, a2, a3);
      std::locale::~locale(&v34);
    }

    else
    {
      v19 = *v38;
      v20 = __p;
      v21 = *v38 - __p;
      v22 = v40;
      if (*v38 - __p + v40 >= a2 >> 32)
      {
        if (!v40 || (v28 = v37, v37 == *v38))
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, *v38 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v27, v22, 48);
        }

        else
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, v37 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v27, v22, 48);
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v27, v28, v19 - v28);
        }
      }

      else
      {
        v23 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v35)
          {
            std::__format::__output_buffer<char>::push_back[abi:ne200100](v23, *__p);
            ++v20;
          }

          v24 = a2 & 0xB8 | 3;
          v25 = 48;
        }

        else
        {
          v25 = BYTE4(a3);
          v24 = a2;
        }

        v29 = a2 & 0xFFFFFFFFFFFFFF00 | v24;
        v30 = a3 & 0xFFFFFF00FFFFFFFFLL | (v25 << 32);
        if (v22)
        {
          v31 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v38, v23, v29, v30, v21, v37, v22);
        }

        else
        {
          v31 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v38 - v20, v23, v29, v30, v21);
        }

        v27 = v31;
      }
    }

    if (v41 >= 0x401)
    {
      operator delete(__p);
    }

    return v27;
  }
}

void sub_220988910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::__formatter::__format_buffer[abi:ne200100]<double,long double>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char **a6@<X8>, double a7@<D0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      result = MEMORY[0x223D8FDB0](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      a6[1] = &result[-v14];
      return result;
    }

    if (a5 != 17)
    {
      result = std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(a1, *a1, v9, a6);
      v15 = a6[2];
      if (v15 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v18 = *a1;
      }

      else
      {
        v18 = 0xFFFFFFFFLL;
      }

      return std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(a1, v18, v9, a6);
    }

    if (!a3)
    {

      return std::__formatter::__format_buffer_default[abi:ne200100]<double,long double>(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v16 = *a1;

    return std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(a1, v16, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(a1, v11, v9, a6);
    }

    result = std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(a1, *a1, v9, a6);
    v15 = a6[2];
LABEL_35:
    *v15 = 69;
    return result;
  }

  if (a3)
  {
    v17 = *a1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,long double>(a1, v17, v9, a6);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 4) = 0;
  *a4 = a3;
  v6 = MEMORY[0x223D8FDB0](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
  a4[3] = v6;
  result = (a3 + 1);
  if (a3 + 1 == v6)
  {
    a4[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a4[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (*(v6 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a4[2] = v6 + v10;
    if (v10)
    {
      if (*result == 46)
      {
        v6 = a3 + 1;
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a4[v11] = v6;
  return result;
}

_BYTE *std::__formatter::__format_buffer_default[abi:ne200100]<double,long double>@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x223D8FDB0](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
  }

  a4[3] = result;
  v8 = *(a3 + 1);
  v7 = a3 + 1;
  if (v8 == 46)
  {
    v9 = result - 2;
    v10 = memchr((result - 6), 112, 4uLL);
    result = v7;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = std::__formatter::__hex_to_upper[abi:ne200100](*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  result = MEMORY[0x223D8FDB0](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
  a4[3] = result;
  v7 = a3 + 1;
  if (*(a3 + 1) == 46)
  {
    a4[1] = v7;
    v8 = result - a3 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a4[1] = result;
  }

  a4[2] = v7;
  return result;
}

unsigned __int8 *std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(a1, a2, 296);
  v4 = a1[1];
  if (v4 >= 2 && v4 != 19)
  {
    std::__throw_format_error[abi:ne200100]("The type option contains an invalid value for a string formatting argument");
  }

  return result;
}

unsigned __int8 *std::__formatter_pointer<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(a1, a2, 292);
  v4 = a1[1];
  if ((v4 - 8) >= 2 && v4 != 0)
  {
    std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a pointer");
  }

  return result;
}

void *std::__formatter_pointer<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, unint64_t a2, void *a3)
{
  v5 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = 1536;
  if ((v5 & 0xFF00) == 0x900)
  {
    v7 = 1792;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v5 & 0xFFFFFFFFFFFF00FFLL | v7 | 0x20, v6, 0);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 10);
    }

    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v13;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v12;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 10);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, &v12 + 5, v5, 8);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v43);
  v21 = std::locale::use_facet(&v43, MEMORY[0x277D826C0]);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_2209893B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2209894B4(_Unwind_Exception *exception_object)
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

void sub_220989538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
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

uint64_t std::unordered_map<E5RT::ComponentDataType,std::string>::unordered_map(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::__unordered_map_hasher<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::hash<E5RT::ComponentDataType>,std::equal_to<E5RT::ComponentDataType>,true>,std::__unordered_map_equal<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::equal_to<E5RT::ComponentDataType>,std::hash<E5RT::ComponentDataType>,true>,std::allocator<std::__hash_value_type<E5RT::ComponentDataType,std::string>>>::__emplace_unique_key_args<E5RT::ComponentDataType,std::pair<E5RT::ComponentDataType const,std::string> const&>(a1, a2);
      a2 += 8;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::__unordered_map_hasher<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::hash<E5RT::ComponentDataType>,std::equal_to<E5RT::ComponentDataType>,true>,std::__unordered_map_equal<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::equal_to<E5RT::ComponentDataType>,std::hash<E5RT::ComponentDataType>,true>,std::allocator<std::__hash_value_type<E5RT::ComponentDataType,std::string>>>::__emplace_unique_key_args<E5RT::ComponentDataType,std::pair<E5RT::ComponentDataType const,std::string> const&>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::__unordered_map_hasher<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::hash<E5RT::ComponentDataType>,std::equal_to<E5RT::ComponentDataType>,true>,std::__unordered_map_equal<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::equal_to<E5RT::ComponentDataType>,std::hash<E5RT::ComponentDataType>,true>,std::allocator<std::__hash_value_type<E5RT::ComponentDataType,std::string>>>::__construct_node_hash<std::pair<E5RT::ComponentDataType const,std::string> const&>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_220989898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<E5RT::ComponentDataType,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_220989960(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<E5RT::ComponentDataType,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<E5RT::ComponentDataType,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::__unordered_map_hasher<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::hash<E5RT::ComponentDataType>,std::equal_to<E5RT::ComponentDataType>,true>,std::__unordered_map_equal<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::equal_to<E5RT::ComponentDataType>,std::hash<E5RT::ComponentDataType>,true>,std::allocator<std::__hash_value_type<E5RT::ComponentDataType,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::__unordered_map_hasher<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::hash<E5RT::ComponentDataType>,std::equal_to<E5RT::ComponentDataType>,true>,std::__unordered_map_equal<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::equal_to<E5RT::ComponentDataType>,std::hash<E5RT::ComponentDataType>,true>,std::allocator<std::__hash_value_type<E5RT::ComponentDataType,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::__unordered_map_hasher<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::hash<E5RT::ComponentDataType>,std::equal_to<E5RT::ComponentDataType>,true>,std::__unordered_map_equal<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::equal_to<E5RT::ComponentDataType>,std::hash<E5RT::ComponentDataType>,true>,std::allocator<std::__hash_value_type<E5RT::ComponentDataType,std::string>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::__unordered_map_hasher<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::hash<E5RT::ComponentDataType>,std::equal_to<E5RT::ComponentDataType>,true>,std::__unordered_map_equal<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::equal_to<E5RT::ComponentDataType>,std::hash<E5RT::ComponentDataType>,true>,std::allocator<std::__hash_value_type<E5RT::ComponentDataType,std::string>>>::find<E5RT::ComponentDataType>(void *a1, int *a2)
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
      if (*(result + 4) == v3)
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

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x223D8FC80](v13, a1);
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

  MEMORY[0x223D8FC90](v13);
  return a1;
}

void sub_220989C5C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x223D8FC90](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x220989C3CLL);
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

void sub_220989E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *cgm::token_generation_inference::ajax::ANEAJAXE5ImageTokenizer::ANEAJAXE5ImageTokenizer(uint64_t *a1, uint64_t a2)
{
  v32[1] = *MEMORY[0x277D85DE8];
  *(a1 + 1) = 0u;
  v4 = (a1 + 2);
  *(a1 + 3) = 0u;
  v5 = (a1 + 6);
  a1[8] = 0;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v31, *a2, *(a2 + 8));
  }

  else
  {
    *v31 = *a2;
    *&v31[16] = *(a2 + 16);
  }

  E5RT::ProgramLibrary::OpenLibrary();
  if (v24)
  {
    operator new();
  }

  v24 = 0;
  if ((v31[23] & 0x80000000) != 0)
  {
    operator delete(*v31);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v31, *a2, *(a2 + 8));
  }

  else
  {
    *v31 = *a2;
    *&v31[16] = *(a2 + 16);
  }

  E5RT::PrecompiledComputeOpCreateOptions::Create();
  if ((v31[23] & 0x80000000) != 0)
  {
    operator delete(*v31);
  }

  E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp();
  std::shared_ptr<E5RT::ExecutionStreamOperation>::operator=[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(a1, v31);
  v7 = *v31;
  *v31 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = cgm::token_generation_inference::ajax::utils::allocateAndBindMemoryToPorts(*a1, v6);
  E5RT::ExecutionStream::CreateExecutionStream(v31, v8);
  std::shared_ptr<E5RT::ExecutionStream>::operator=[abi:ne200100]<E5RT::ExecutionStream,std::default_delete<E5RT::ExecutionStream>,0>(v4, v31);
  v9 = *v31;
  *v31 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = a1[1];
  v28 = *a1;
  v29 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::ExecutionStream::EncodeOperation();
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  E5RT::ExecutionStream::PreWireInUseAllocations(*v4);
  E5RT::TensorDataType::TensorDataType();
  std::string::basic_string[abi:ne200100]<0>(&v24, "image_embeddings");
  OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  MEMORY[0x223D8F770](v23, v27);
  *v31 = xmmword_220AE5A00;
  *&v31[16] = unk_220AE5A10;
  v21 = 0;
  v22 = 0;
  __p = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&__p, v31, v32, 4uLL);
  cgm::token_generation_inference::ajax::utils::checkTensorType(OutputPortRef, v23, &__p);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  E5RT::TensorDataType::~TensorDataType(v23);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v24);
  }

  std::string::basic_string[abi:ne200100]<0>(v31, "image");
  InputPortRef = E5RT::ExecutionStreamOperation::GetInputPortRef();
  if ((v31[23] & 0x80000000) != 0)
  {
    operator delete(*v31);
  }

  MEMORY[0x223D8F770](v19, v27);
  *v31 = xmmword_220AE5A20;
  *&v31[16] = unk_220AE5A30;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v24, v31, v32, 4uLL);
  cgm::token_generation_inference::ajax::utils::checkTensorType(InputPortRef, v19, &v24);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  E5RT::TensorDataType::~TensorDataType(v19);
  PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(InputPortRef);
  v14 = E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
  TensorShape = E5RT::TensorDescriptor::GetTensorShape(v14);
  v16 = *TensorShape;
  a1[5] = *(*TensorShape + 1);
  a1[4] = *(v16 + 2);
  if (v5 != TensorShape)
  {
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v5, v16, TensorShape[1], (TensorShape[1] - v16) >> 3);
  }

  E5RT::TensorDataType::~TensorDataType(v27);
  v17 = v30;
  v30 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  return a1;
}

void sub_22098A2CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v30 = *v27;
  if (*v27)
  {
    v26[7] = v30;
    operator delete(v30);
  }

  v31 = v26[3];
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = v26[1];
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<E5RT::ExecutionStream>::operator=[abi:ne200100]<E5RT::ExecutionStream,std::default_delete<E5RT::ExecutionStream>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<E5RT::ExecutionStream>::shared_ptr[abi:ne200100]<E5RT::ExecutionStream,std::default_delete<E5RT::ExecutionStream>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void cgm::token_generation_inference::ajax::ANEAJAXE5ImageTokenizer::encodeImage(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "image");
  v7 = _ZN3cgm26token_generation_inference4ajax5utils9inputSpanIDF16_EEN4E5RT4SpanIT_Lm18446744073709551615EEERNS4_24ExecutionStreamOperationERKNSt3__112basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEE();
  v9 = v8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v5[2](v5, v7, v9, a1 + 48) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "I/O has invalid dtype");
    std::runtime_error::runtime_error(exception, &__p);
    exception->__vftable = &unk_28344D360;
  }

  E5RT::ExecutionStream::ExecuteStreamSync(*(a1 + 16));
  std::string::basic_string[abi:ne200100]<0>(&__p, "image_embeddings");
  v10 = cgm::token_generation_inference::ajax::utils::outputSpan<unsigned char>();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6[2](v6, v10);
}

void sub_22098A640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:

      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

uint64_t cgm::token_generation_inference::ajax::utils::outputSpan<unsigned char>()
{
  OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  MemoryObjectRef = E5RT::IOPort::GetMemoryObjectRef(OutputPortRef);
  v2 = E5RT::MemoryObject::TryAsBuffer(MemoryObjectRef);
  result = E5RT::BufferObject::GetDataSpan(v2);
  if (!v4)
  {
    return 0;
  }

  return result;
}

uint64_t cgm::token_generation_inference::ajax::ANEAJAXE5ImageTokenizer::getEmbeddingsPerImageCount(cgm::token_generation_inference::ajax::ANEAJAXE5ImageTokenizer *this)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "image_embeddings");
  OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  E5RT::IOPort::GetPortDescriptor(&v7, OutputPortRef);
  v2 = E5RT::OperandDescriptor::TensorDescriptor(v7);
  v3 = *(*E5RT::TensorDescriptor::GetTensorShape(v2) + 8);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v6 < 0)
  {
    operator delete(__p);
  }

  return v3;
}

void sub_22098A76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cgm::token_generation_inference::ajax::ANEAJAXE5ImageTokenizer::getEncodedImageByteCount(cgm::token_generation_inference::ajax::ANEAJAXE5ImageTokenizer *this)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "image_embeddings");
  OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  E5RT::IOPort::GetPortDescriptor(&v7, OutputPortRef);
  v2 = E5RT::OperandDescriptor::TensorDescriptor(v7);
  Size = E5RT::TensorDescriptor::GetSize(v2);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v6 < 0)
  {
    operator delete(__p);
  }

  return Size;
}

void sub_22098A818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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

      std::vector<unsigned long>::__vallocate[abi:ne200100](v6, v10);
    }

    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
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

uint64_t *std::shared_ptr<E5RT::ExecutionStream>::shared_ptr[abi:ne200100]<E5RT::ExecutionStream,std::default_delete<E5RT::ExecutionStream>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<E5RT::ExecutionStream  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223D8FE50);
}

uint64_t std::__shared_ptr_pointer<E5RT::ExecutionStream  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t cgm::token_generation_inference::ajax::utils::getAneQoSForNSQoS(cgm::token_generation_inference::ajax::utils *this, NSQualityOfService a2)
{
  if (this <= 16)
  {
    if (this != -1)
    {
      if (this != 9)
      {
        goto LABEL_12;
      }

      return 7;
    }

    return 5;
  }

  if (this == 17)
  {
    return 5;
  }

  if (this != 33)
  {
    if (this == 25)
    {
      return 4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&v4, "Could not find corresponding ANE priority for the thread QoS");
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 0, &v4);
  }

  return 3;
}

void sub_22098AB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::loadEmbeddingTable(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  ExportedFunctions = E5RT::ProgramLibrary::GetExportedFunctions(*a1);
  std::string::basic_string[abi:ne200100]<0>(v13, "load_embeddings");
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(ExportedFunctions, v13);
  v6 = v5;
  if (SBYTE7(v14) < 0)
  {
    operator delete(v13[0]);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_20:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_3:
  v7 = *(a1 + 8);
  v18 = *a1;
  v19 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "load_embeddings");
  *v13 = 0u;
  v14 = 0u;
  v15 = 1065353216;
  cgm::token_generation_inference::ajax::ane::loadOperationFromLibrary(&v18, __p, &v20);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v13);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v9 = cgm::token_generation_inference::ajax::utils::allocateAndBindMemoryToPorts(v20, v8);
  E5RT::ExecutionStream::CreateExecutionStream(__p, v9);
  v12 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::ExecutionStream::EncodeOperation();
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  E5RT::ExecutionStream::ExecuteStreamSync(__p[0]);
  std::string::basic_string[abi:ne200100]<0>(v13, "embeddings");
  OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  E5RT::IOPort::GetMemoryObject(a2, OutputPortRef);
  if (SBYTE7(v14) < 0)
  {
    operator delete(v13[0]);
  }

  v11 = __p[0];
  __p[0] = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }
}

void sub_22098AD20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    (*(*__p + 8))(__p);
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(exception_object);
}

void cgm::token_generation_inference::ajax::ane::loadOperationFromLibrary(E5RT::ProgramLibrary **a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  ExportedFunctions = E5RT::ProgramLibrary::GetExportedFunctions(*a1);
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(ExportedFunctions, a2);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v7 = v6[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = v7;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v9 = 0;
  }

  E5RT::PrecompiledComputeOpCreateOptions::Create();
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  E5RT::PrecompiledComputeOpCreateOptions::SetMutableMILWeightPaths();
  E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp();
  *a3 = v8;
  if (v8)
  {
    operator new();
  }

  a3[1] = 0;
  if (v10)
  {
    (*(*v10 + 8))();
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_22098AF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a9)
  {
    cgm::token_generation_inference::ajax::ane::loadOperationFromLibrary();
  }

  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::ANEAJAXE5MLModel(cgm::token_generation_inference::ajax::ANEAJAXE5MLModel *this, const TGIE5ModelConfiguration *a2)
{
  __p[39] = *MEMORY[0x277D85DE8];
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *this = &unk_28344D488;
  *(this + 5) = 0;
  *(this + 6) = &unk_28344D510;
  if (a2[4].var1.var0.var0.var0.var0[7] < 0)
  {
    std::string::__init_copy_ctor_external((this + 56), *(&a2[3].var1.var0.var0.var1 + 2), *&a2[4].var0);
  }

  else
  {
    v4 = *(&a2[3].var1.var0.var0.var1 + 1);
    *(this + 9) = a2[4].var1.var0.var0.var1.var0;
    *(this + 56) = v4;
  }

  *(this + 8) = 0u;
  *(this + 10) = 0u;
  *(this + 13) = 0u;
  *(this + 17) = 0u;
  *(this + 281) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 297) = a2[4].var1.var0.var0.var0.var0[9];
  cgm::token_generation_inference::ajax::utils::makeANEAjaxCompilerOptions(this, &v6);
  cgm::token_generation_inference::ajax::utils::makeProgramLibrary(&a2->var1, a2[4].var1.var0.var0.var0.var0[8], __p);
  if (__p[0])
  {
    operator new();
  }

  __p[0] = 0;
  v5 = v6.__r_.__value_.__r.__words[0];
  v6.__r_.__value_.__r.__words[0] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator new();
}

void sub_22098BEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a72 < 0)
  {
    operator delete(__p);
    if ((v73 & 1) == 0)
    {
LABEL_6:
      std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(&STACK[0x200]);
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a29);
      STACK[0x200] = &a34;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
      STACK[0x200] = &a39;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
      STACK[0x200] = &a45;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
      if (v74)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v74);
      }

      v77 = *a11;
      if (*a11)
      {
        *(v72 + 280) = v77;
        operator delete(v77);
      }

      STACK[0x200] = a12;
      std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
      v78 = *(v72 + 240);
      if (v78)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v78);
      }

      STACK[0x200] = a10;
      std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
      STACK[0x200] = a13;
      std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
      STACK[0x200] = a9;
      std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
      if (*(v72 + 79) < 0)
      {
        operator delete(*(v72 + 56));
      }

      cgm::token_generation_inference::ajax::AJAXE5MLModel::~AJAXE5MLModel(v72);
      _Unwind_Resume(a1);
    }
  }

  else if (!v73)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v75);
  goto LABEL_6;
}

void cgm::token_generation_inference::ajax::ane::filterFunctions(E5RT::ProgramLibrary **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::vector<std::string> *a4@<X8>)
{
  a4->__begin_ = 0;
  a4->__end_ = 0;
  a4->__end_cap_.__value_ = 0;
  for (i = *(E5RT::ProgramLibrary::GetExportedFunctions(*a1) + 16); i; i = *i)
  {
    v8 = *(a3 + 24);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v8 + 48))(v8, i + 2, *(i + 5)))
    {
      std::vector<std::string>::push_back[abi:ne200100](a4, i + 1);
    }
  }

  if (a2)
  {
    if (*(a2 + 64) != *(a2 + 56))
    {
      TGIE5ModelConfiguration::e5FunctionNames(a2, v11);
      v9.__i_ = std::remove_if[abi:ne200100]<std::__wrap_iter<std::string *>,cgm::token_generation_inference::ajax::ane::filterFunctions(std::shared_ptr<E5RT::ProgramLibrary>,TGIE5ModelConfiguration const*,std::function<BOOL ()(std::string const&,E5RT::ProgramFunction const&)>)::{lambda(std::string const&)#1}>(&a4->__begin_->__r_.__value_.__l.__data_, &a4->__end_->__r_.__value_.__l.__data_, v11);
      v10.__i_ = a4->__end_;
      std::vector<std::string>::erase(a4, v9, v10);
      v12 = v11;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
    }
  }
}

void TGIE5ModelConfiguration::mutableWeightsSymbolToPath(void *a1@<X0>, std::string *a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v11[0]) = 0;
  v16 = 0;
  v5 = a1[7];
  v6 = a1[8];
  v17 = a2;
  v18 = v11;
  std::__any_of[abi:ne200100]<std::__wrap_iter<TGIE5Function const*>,std::__wrap_iter<TGIE5Function const*>,std::__identity,TGIE5ModelConfiguration::mutableWeightsSymbolToPath(std::string const&)::{lambda(TGIE5Function const&)#1}>(v5, v6, &v17);
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v8 = a1[4];
  v7 = a1[5];
  v17 = v11;
  v18 = a3;
  if (v8 != v7)
  {
    do
    {
      v9 = _ZZNK23TGIE5ModelConfiguration26mutableWeightsSymbolToPathERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEENKUlRKT_E_clI25TGIE5AdapterConfigurationEEDaSB_(&v17, v8);
      v8 += 9;
      if (v8 == v7)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }
    }

    while ((v10 & 1) == 0);
  }

  if (v16 == 1)
  {
    if (v15 == 1 && v14 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::prepareDecodingStreamOps(uint64_t *a1, E5RT::ProgramLibrary **a2, uint64_t a3, __int128 **a4, __int128 **a5)
{
  v80 = *MEMORY[0x277D85DE8];
  memset(&v72, 0, sizeof(v72));
  std::vector<std::string>::reserve(&v72, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) - 0x5555555555555555 * ((a5[1] - *a5) >> 3));
  std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(&v72, v72.__end_, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(&v72, v72.__end_, *a5, a5[1], 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3));
  __src = 0;
  v70 = 0;
  v71 = 0;
  std::vector<std::shared_ptr<E5RT::PrecompiledComputeOpCreateOptions>>::reserve(&__src, 0xAAAAAAAAAAAAAAABLL * ((v72.__end_ - v72.__begin_) >> 3));
  begin = v72.__begin_;
  for (i = v72.__end_; begin != i; ++begin)
  {
    ExportedFunctions = E5RT::ProgramLibrary::GetExportedFunctions(*a2);
    v12 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(ExportedFunctions, &begin->__r_.__value_.__l.__data_);
    if (!v12)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v14 = v12[5];
    v13 = v12[6];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    cgm::token_generation_inference::ajax::ane::checkIOPorts(begin, v14);
    v66 = v14;
    v67 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    E5RT::PrecompiledComputeOpCreateOptions::Create();
    if (v67)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v67);
    }

    E5RT::PrecompiledComputeOpCreateOptions::SetMutableMILWeightPaths();
    v15 = (*(*v14 + 32))(v14);
    std::unordered_map<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>::unordered_map(__p, v15);
    QueryLength = cgm::token_generation_inference::ajax::ane::getQueryLength(__p);
    ContextLength = cgm::token_generation_inference::ajax::ane::getContextLength(__p);
    v18 = (*(*v14 + 40))(v14);
    std::string::basic_string[abi:ne200100]<0>(buf, "out_logits");
    v19 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v18, buf);
    v20 = v19;
    if (SHIBYTE(v78) < 0)
    {
      operator delete(*buf);
    }

    v21 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      *&buf[4] = QueryLength;
      *&buf[12] = 2048;
      *&buf[14] = ContextLength;
      v78 = 1024;
      v79 = v20 != 0;
      _os_log_debug_impl(&dword_220940000, v21, OS_LOG_TYPE_DEBUG, "Loading operation with (query_length, context_length): (%zu, %zu) and computesLogits: %i.", buf, 0x1Cu);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(__p);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (v62)
    {
      operator new();
    }

    v62 = 0;
    v22 = v70;
    if (v70 >= v71)
    {
      v24 = __src;
      v25 = v70 - __src;
      v26 = (v70 - __src) >> 4;
      v27 = v26 + 1;
      if ((v26 + 1) >> 60)
      {
        _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
      }

      v28 = v71 - __src;
      if ((v71 - __src) >> 3 > v27)
      {
        v27 = v28 >> 3;
      }

      v29 = v28 >= 0x7FFFFFFFFFFFFFF0;
      v30 = 0xFFFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v30 = v27;
      }

      p_src = &__src;
      if (v30)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<E5RT::PrecompiledComputeOpCreateOptions>>>(&__src, v30);
      }

      v31 = (v70 - __src) >> 4;
      v32 = (16 * v26);
      *v32 = 0;
      v32[1] = 0;
      v23 = 16 * v26 + 16;
      v33 = &v32[-2 * v31];
      memcpy(v33, v24, v25);
      v34 = __src;
      v35 = v71;
      __src = v33;
      v70 = v23;
      v71 = 0;
      v74 = v34;
      v75 = v35;
      __p[0] = v34;
      __p[1] = v34;
      std::__split_buffer<std::shared_ptr<E5RT::PrecompiledComputeOpCreateOptions>>::~__split_buffer(__p);
    }

    else
    {
      *v70 = 0;
      *(v22 + 1) = 0;
      v23 = (v22 + 16);
    }

    v70 = v23;
    v36 = v62;
    v62 = 0;
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }
  }

  MEMORY[0x223D8F920](buf, &__src);
  v66 = 0;
  v67 = 0;
  v68 = 0;
  std::vector<std::shared_ptr<E5RT::PrecompiledComputeOpCreateOptions>>::reserve(&v66, (*&buf[8] - *buf) >> 3);
  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<E5RT::ExecutionStreamOperation> *,std::unique_ptr<E5RT::ExecutionStreamOperation> *,std::back_insert_iterator<std::vector<std::shared_ptr<E5RT::ExecutionStreamOperation>>>>(__p, *buf, *&buf[8], &v66);
  v37 = 126 - 2 * __clz((v67 - v66) >> 4);
  __p[0] = cgm::token_generation_inference::ajax::ane::compareOpsByQueryContext;
  if (v67 == v66)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,false>(v66, v67, __p, v38, 1);
  v40 = v67;
  while (v40 != v66)
  {
    shared_owners = v40[-1].__shared_owners_;
    v40 = (v40 - 16);
    v64 = shared_owners;
    v42 = v40->__shared_owners_;
    v65 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    E5RT::ExecutionStream::CreateExecutionStream(__p, v39);
    v62 = __p[0];
    if (__p[0])
    {
      operator new();
    }

    v63 = 0;
    InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(v64);
    std::string::basic_string[abi:ne200100]<0>(__p, "in_step");
    v44 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(InputPorts, __p);
    v45 = v44;
    if (SHIBYTE(v74) < 0)
    {
      operator delete(__p[0]);
      if (!v45)
      {
LABEL_47:
        v50 = a1[21];
        if (v50 >= a1[22])
        {
          v53 = std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__emplace_back_slow_path<std::shared_ptr<E5RT::ExecutionStreamOperation> &,std::shared_ptr<E5RT::ExecutionStream> &>(a1 + 20, &v64, &v62);
        }

        else
        {
          *v50 = v64;
          v51 = v65;
          v50[1] = v65;
          if (v51)
          {
            atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v52 = v63;
          v50[2] = v62;
          v50[3] = v52;
          if (v52)
          {
            atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v53 = (v50 + 4);
        }

        a1[21] = v53;
        goto LABEL_57;
      }
    }

    else if (!v44)
    {
      goto LABEL_47;
    }

    v46 = a1[24];
    if (v46 >= a1[25])
    {
      v49 = std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__emplace_back_slow_path<std::shared_ptr<E5RT::ExecutionStreamOperation> &,std::shared_ptr<E5RT::ExecutionStream> &>(a1 + 23, &v64, &v62);
    }

    else
    {
      *v46 = v64;
      v47 = v65;
      v46[1] = v65;
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v48 = v63;
      v46[2] = v62;
      v46[3] = v48;
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v49 = (v46 + 4);
    }

    a1[24] = v49;
LABEL_57:
    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }

    v39 = v65;
    if (v65)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65);
    }
  }

  v54 = a1[20];
  v55 = a1[21];
  v56 = 126 - 2 * __clz((v55 - v54) >> 5);
  if (v55 == v54)
  {
    v57 = 0;
  }

  else
  {
    v57 = v56;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,false>(v54, v55, __p, v57, 1);
  v58 = a1[23];
  v59 = a1[24];
  v60 = 126 - 2 * __clz((v59 - v58) >> 5);
  if (v59 == v58)
  {
    v61 = 0;
  }

  else
  {
    v61 = v60;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,false>(v58, v59, __p, v61, 1);
  __p[0] = &v66;
  std::vector<std::shared_ptr<E5RT::ExecutionStreamOperation>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = buf;
  std::vector<std::unique_ptr<E5RT::ExecutionStreamOperation>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = &__src;
  std::vector<std::shared_ptr<E5RT::ExecutionStreamOperation>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = &v72;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_22098CCC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  a13 = &a18;
  std::vector<std::shared_ptr<E5RT::ExecutionStreamOperation>>::__destroy_vector::operator()[abi:ne200100](&a13);
  a18 = &a21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::prepareGatherStreamOps(void *a1, E5RT::ProgramLibrary **a2, const void ***a3)
{
  std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::reserve(a1 + 26, 0xAAAAAAAAAAAAAAABLL * (a3[1] - *a3));
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    do
    {
      ExportedFunctions = E5RT::ProgramLibrary::GetExportedFunctions(*a2);
      v9 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(ExportedFunctions, v6);
      if (!v9)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v10 = v9[5];
      v11 = v9[6];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v20 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v20 = 0;
      }

      v19[1] = v10;
      E5RT::PrecompiledComputeOpCreateOptions::Create();
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      PreCompiledComputeOp = E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp();
      E5RT::ExecutionStream::CreateExecutionStream(&v18, PreCompiledComputeOp);
      v13 = a1[27];
      if (v13 >= a1[28])
      {
        v14 = std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__emplace_back_slow_path<std::unique_ptr<E5RT::ExecutionStreamOperation>,std::unique_ptr<E5RT::ExecutionStream>>(a1 + 26, v19, &v18);
      }

      else
      {
        std::construct_at[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair,std::unique_ptr<E5RT::ExecutionStreamOperation>,std::unique_ptr<E5RT::ExecutionStream>,cgm::token_generation_inference::ajax::utils::StreamOpPair*>(a1[27], v19, &v18);
        v14 = v13 + 32;
        a1[27] = v13 + 32;
      }

      a1[27] = v14;
      v15 = v18;
      v18 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      v16 = v19[0];
      v19[0] = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      v17 = v21;
      v21 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      v6 += 3;
    }

    while (v6 != v7);
  }
}

void sub_22098D034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cgm::token_generation_inference::ajax::ane::vocabSizeFromExtendOps(uint64_t *a1)
{
  cgm::token_generation_inference::ajax::ane::anyOpComputingLogits(a1, &v12);
  std::string::basic_string[abi:ne200100]<0>(&__p, "out_logits");
  OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (cgm::token_generation_inference::ajax::ane::areLogitsContiguousForTokens(&v12))
  {
    PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(OutputPortRef);
    v3 = E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
    TensorShape = E5RT::TensorDescriptor::GetTensorShape(v3);
    v5 = 24;
  }

  else
  {
    v6 = E5RT::IOPort::GetPortDescriptorRef(OutputPortRef);
    v7 = E5RT::OperandDescriptor::TensorDescriptor(v6);
    TensorShape = E5RT::TensorDescriptor::GetTensorShape(v7);
    v5 = 8;
  }

  v8 = *(*TensorShape + v5);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return v8;
}

void sub_22098D1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(&a16);
  _Unwind_Resume(a1);
}

uint64_t cgm::token_generation_inference::ajax::ane::maxContextLengthFromExtendOps(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 - 24);
  v11 = *(v1 - 32);
  v12 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = *(v1 - 8);
  v13 = *(v1 - 16);
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "state_keys_LHC");
  v4 = E5RT::ExecutionStreamOperation::GetInOutPortRef();
  if (v10 < 0)
  {
    operator delete(__p);
  }

  PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(v4);
  v6 = E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
  v7 = *(*E5RT::TensorDescriptor::GetTensorShape(v6) + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return v7;
}

void sub_22098D2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(&a16);
  _Unwind_Resume(a1);
}

void *std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>>(result, a2);
    }

    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
  }

  return result;
}

void sub_22098D394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<unsigned long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(result, a2);
    }

    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
  }

  return result;
}

void cgm::token_generation_inference::ajax::AJAXE5MLModel::~AJAXE5MLModel(cgm::token_generation_inference::ajax::AJAXE5MLModel *this)
{
  *this = &unk_28344D598;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    MEMORY[0x223D8FE50](v2, 0x81C40B8603338);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  std::unique_ptr<ImageEmbeddingsProvider>::reset[abi:ne200100](this + 1, 0);
}

void *std::vector<std::shared_ptr<E5RT::PrecompiledComputeOpCreateOptions>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<E5RT::PrecompiledComputeOpCreateOptions>>>(result, a2);
    }

    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
  }

  return result;
}

BOOL cgm::token_generation_inference::ajax::ane::compareOpsByQueryContext(E5RT::ExecutionStreamOperation **a1, E5RT::ExecutionStreamOperation **a2)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(*a1);
  QueryLength = cgm::token_generation_inference::ajax::ane::getQueryLength(InputPorts);
  ContextLength = cgm::token_generation_inference::ajax::ane::getContextLength(*a1, v6);
  v8 = E5RT::ExecutionStreamOperation::GetInputPorts(*a2);
  v9 = cgm::token_generation_inference::ajax::ane::getQueryLength(v8);
  v11 = ContextLength < cgm::token_generation_inference::ajax::ane::getContextLength(*a2, v10);
  if (QueryLength == v9)
  {
    return v11;
  }

  else
  {
    return QueryLength < v9;
  }
}

BOOL cgm::token_generation_inference::ajax::anonymous namespace::compareStreamOps(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(v3);
  QueryLength = cgm::token_generation_inference::ajax::ane::getQueryLength(InputPorts);
  ContextLength = cgm::token_generation_inference::ajax::ane::getContextLength(v3, v8);
  v10 = E5RT::ExecutionStreamOperation::GetInputPorts(v5);
  v11 = cgm::token_generation_inference::ajax::ane::getQueryLength(v10);
  v13 = cgm::token_generation_inference::ajax::ane::getContextLength(v5, v12);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (QueryLength == v11)
  {
    return ContextLength < v13;
  }

  else
  {
    return QueryLength < v11;
  }
}

void sub_22098D690(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::setKVCacheEntry(unint64_t *a1, unint64_t a2, uint64_t **a3, uint64_t *a4, uint64_t *a5)
{
  v5 = (a1 + 31);
  if (a2 != (a1[32] - a1[31]) >> 5)
  {
    cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::setKVCacheEntry();
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3) != (a4[1] - *a4) >> 2)
  {
    cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::setKVCacheEntry();
  }

  v11 = (*a3)[3];
  cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::fillCacheHolesIfNeeded(a1, v11, 1);
  cgm::token_generation_inference::ajax::AJAXE5MLModelWithModularAttentionSupport::checkKVCacheEntry((a1 + 6), a2, v11, (a1[32] - a1[31]) >> 5, a1[10]);
  v12 = *a3;
  v13 = (*a3)[3];
  v28[0] = a2;
  v28[1] = v13;
  v14 = a1[23];
  v16 = *v14;
  v15 = v14[1];
  v26 = v16;
  v27 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = *a3;
  }

  v25[0] = &v26;
  v25[1] = a1;
  v25[2] = v28;
  v25[3] = a3;
  cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::setKVCacheEntry(unsigned long,std::unique_ptr<TGIE5KVCacheEntry> const&,std::vector<int> const&,std::vector<std::vector<signed char>> const&)::$_0::operator()(v25, "state_keys_LHC", v12);
  cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::setKVCacheEntry(unsigned long,std::unique_ptr<TGIE5KVCacheEntry> const&,std::vector<int> const&,std::vector<std::vector<signed char>> const&)::$_0::operator()(v25, "state_values_LHC", *a3 + 1);
  v17 = *a4;
  if (a4[1] != *a4)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v21 = *(v17 + 4 * v19);
      v20 = *a5;
      if (0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3) <= v19)
      {
        std::vector<std::vector<signed char>>::__throw_out_of_range[abi:ne200100]();
      }

      __p = 0;
      v23 = 0;
      v24 = 0;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&__p, *(v20 + v18), *(v20 + v18 + 8), *(v20 + v18 + 8) - *(v20 + v18));
      std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::push_back[abi:ne200100](v5, &v21);
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      ++v19;
      v17 = *a4;
      v18 += 24;
    }

    while (v19 < (a4[1] - *a4) >> 2);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }
}

void sub_22098D884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_22098D8A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x22098D890);
}

void cgm::token_generation_inference::ajax::AJAXE5MLModelWithModularAttentionSupport::checkKVCacheEntry(cgm::token_generation_inference::ajax::AJAXE5MLModelWithModularAttentionSupport *this, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a3 + a2 + a4 > a5)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v16 = a2;
    v17 = 0;
    v18 = a3;
    v19 = 0;
    v20 = a4;
    v21 = 0;
    v23 = 0;
    v24 = 236775;
    v22 = a5;
    v25 = v29;
    v26 = xmmword_220AE5410;
    v27 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v28 = 0;
    __p = v29;
    v13 = 4;
    v14 = &v16;
    v15 = 236775;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v25, "Failed to set kv cache entry, invalid range: ({}, {}), tokens processed {}, max state length: {}", 96, &v13);
    v13 = __p;
    v14 = *(&v26 + 1);
    std::string::basic_string<std::string_view,0>(&v12, &v13);
    if (__p != v29)
    {
      operator delete(__p);
    }

    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 0, &v12);
  }

  if (a2 > a4)
  {
    v11 = __cxa_allocate_exception(0x18uLL);
    v16 = a2;
    v17 = 0;
    v19 = 0;
    v20 = 231;
    v18 = a4;
    v25 = v29;
    v26 = xmmword_220AE5410;
    v27 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v28 = 0;
    __p = v29;
    v13 = 2;
    v14 = &v16;
    v15 = 231;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v25, "Failed to set kv cache entry, start index {} is past {}", 55, &v13);
    v13 = __p;
    v14 = *(&v26 + 1);
    std::string::basic_string<std::string_view,0>(&v12, &v13);
    if (__p != v29)
    {
      operator delete(__p);
    }

    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(v11, 0, &v12);
  }
}

void sub_22098DB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    __cxa_free_exception(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::setKVCacheEntry(unsigned long,std::unique_ptr<TGIE5KVCacheEntry> const&,std::vector<int> const&,std::vector<std::vector<signed char>> const&)::$_0::operator()(uint64_t a1, char *a2, uint64_t *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  v6 = E5RT::ExecutionStreamOperation::GetInOutPortRef();
  E5RT::IOPort::GetMemoryObject(&v24, v6);
  v7 = E5RT::MemoryObject::Buffer(v24);
  v19[0] = E5RT::BufferObject::GetDataSpan(v7);
  v19[1] = v8;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  v18 = *a3;
  v9 = *(a1 + 16);
  v23[0] = &unk_28344D660;
  v23[1] = &v18;
  v23[3] = v23;
  cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::enumerateCacheSequences(v5, v19, v9, v23);
  result = std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](v23);
  v11 = (v18 - *a3);
  if (v11 != *(**(a1 + 24) + 16))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v13 = a1;
    v14 = exception;
    v15 = **(v13 + 24);
    v24 = v11;
    v25 = 0;
    v16 = *(v15 + 16);
    v27 = 0;
    v28 = 231;
    v26 = v16;
    __p = v33;
    v30 = xmmword_220AE5410;
    v31 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v32 = 0;
    v34 = v33;
    v20 = 2;
    v21 = &v24;
    v22 = 231;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__p, "Only used {} bytes of {} input", 30, &v20);
    v20 = v34;
    v21 = *(&v30 + 1);
    std::string::basic_string<std::string_view,0>(&__dst, &v20);
    if (v34 != v33)
    {
      operator delete(v34);
    }

    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(v14, 0, &__dst);
  }

  return result;
}

void sub_22098DD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::enumerateCacheSequences(uint64_t result, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*(result + 112))
  {
    v6 = result;
    v7 = 0;
    v8 = *a3;
    v9 = a3[1];
    do
    {
      v10 = v6[13] * v6[15];
      result = std::function<void ()(unsigned char *,unsigned long)>::operator()(a4, *a2 + v10 * (v8 + v6[10] * v7++), v10 * v9);
    }

    while (v7 < v6[14]);
  }

  return result;
}

uint64_t std::function<void ()(unsigned char *,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::createKVCacheEntry(cgm::token_generation_inference::ajax::ANEAJAXE5MLModel *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::fillCacheHolesIfNeeded(a1, v4, 1);
  v13 = *(a1 + 14) * v4 * *(a1 + 15) * *(a1 + 13);
  v5 = *(a1 + 23);
  v7 = *v5;
  v6 = v5[1];
  v12[0] = v7;
  v12[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v12;
  v9 = &v13;
  v10 = a1;
  v11 = a2;
  operator new();
}

void sub_22098DFFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  *v15 = 0;
  TGIE5KVCacheEntry::~TGIE5KVCacheEntry(v16);
  MEMORY[0x223D8FE50]();
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::createKVCacheEntry(std::pair<unsigned long,unsigned long> const&)::$_0::operator()(uint64_t a1, char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  v2 = E5RT::ExecutionStreamOperation::GetInOutPortRef();
  E5RT::IOPort::GetMemoryObject(&v7, v2);
  v3 = E5RT::MemoryObject::Buffer(v7);
  DataSpan = E5RT::BufferObject::GetDataSpan(v3);
  v10 = v4;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v6 < 0)
  {
    operator delete(__p);
  }

  operator new[]();
}

void sub_22098E178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](&a19);
  *v19 = 0;
  MEMORY[0x223D8FE30](v21, v20);
  _Unwind_Resume(a1);
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::fillCacheHolesIfNeeded(unsigned long,BOOL)::$_1::operator()(uint64_t *a1, E5RT::OperandDescriptor *this, cgm::token_generation_inference::common::logging::CGMTGILogger *a3, unint64_t a4)
{
  v7 = *a1;
  v8 = E5RT::OperandDescriptor::TensorDescriptor(this);
  E5RT::TensorDescriptor::GetTensorDataType(v19, v8);
  v9 = E5RT::OperandDescriptor::TensorDescriptor(this);
  TensorShape = E5RT::TensorDescriptor::GetTensorShape(v9);
  NumComponents = E5RT::TensorDataType::GetNumComponents(v19);
  if (TensorShape[1] - *TensorShape != 40)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&v18, "Unexpected KV cache shape.");
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &v18);
  }

  v12 = NumComponents;
  v13 = *(*TensorShape + 16) * **TensorShape;
  if (E5RT::TensorDataType::GetComponentDataType(v19) == 4 && E5RT::TensorDataType::GetComponentSize(v19) == 2)
  {
    if (a4 >= 2)
    {
      v14 = a3;
    }

    else
    {
      v14 = 0;
    }

    cgm::token_generation_inference::ajax::kvcache_utils::fillCacheHoles(v14, a4 >> 1, (v7 + 272), (*(v7 + 256) - *(v7 + 248)) >> 5, *(v7 + 80), v12, v13);
  }

  else
  {
    if (E5RT::TensorDataType::GetComponentDataType(v19) != 1 || E5RT::TensorDataType::GetComponentSize(v19) != 1)
    {
      v16 = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(&v18, "Unexpected KV cache dtype.");
      cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(v16, 1, &v18);
    }

    if (a4)
    {
      v15 = a3;
    }

    else
    {
      v15 = 0;
    }

    cgm::token_generation_inference::ajax::kvcache_utils::fillCacheHoles(v15, a4, (v7 + 272), (*(v7 + 256) - *(v7 + 248)) >> 5, *(v7 + 80), v12, v13);
  }

  E5RT::TensorDataType::~TensorDataType(v19);
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::purgeSteps(cgm::token_generation_inference::ajax::ANEAJAXE5MLModel *a1, uint64_t *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  __p = 0;
  v43 = 0;
  v44 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a2, a2[1], (a2[1] - *a2) >> 2);
  std::__sort<std::__less<int,int> &,int *>();
  v3 = __p;
  v4 = v43;
  if (v43 != __p)
  {
    v5 = 0;
    v6 = "mContextTokens[shiftedStep].tokenID != -1";
    while (1)
    {
      v7 = v3[v5] - v5;
      v9 = *(a1 + 34);
      v8 = *(a1 + 35);
      v10 = v8 - v9;
      if (v8 == v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v13 = v10 >> 3;
        if (v13 <= 1)
        {
          v13 = 1;
        }

        while (1)
        {
          v14 = v11 ? *&v9[8 * v11] + ~*&v9[8 * v11 - 8] : *v9;
          if (v7 + 1 - v12 <= v14)
          {
            break;
          }

          v12 += v14;
          if (v13 == ++v11)
          {
            v11 = v13;
            break;
          }
        }
      }

      v15 = v11 + v7;
      v41 = v15;
      v16 = *(a1 + 31);
      if (*(v16 + 32 * v15) == -1)
      {
        break;
      }

      if (v15 >= (*(a1 + 32) - v16) >> 5)
      {
        v40 = 724;
        v6 = "shiftedStep < mContextTokens.size()";
LABEL_43:
        __assert_rtn("purgeSteps", "ane_ajax_e5ml_model.mm", v40, v6);
      }

      *buf = -1;
      v45 = 0;
      v48 = 0;
      *&v47[4] = 0uLL;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(&v47[4], &v45, buf, 1);
      v17 = *(a1 + 31) + 32 * v41;
      *v17 = *buf;
      v18 = *(v17 + 8);
      if (v18)
      {
        *(v17 + 16) = v18;
        operator delete(v18);
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
      }

      *(v17 + 8) = *&v47[4];
      *(v17 + 24) = v48;
      v20 = *(a1 + 34);
      v19 = *(a1 + 35);
      if (v19 != v20)
      {
        v21 = (v19 - v20) >> 3;
        do
        {
          v22 = v21 >> 1;
          v23 = &v20[8 * (v21 >> 1)];
          v25 = *v23;
          v24 = (v23 + 1);
          v21 += ~(v21 >> 1);
          if (v41 >= v25)
          {
            v20 = v24;
          }

          else
          {
            v21 = v22;
          }
        }

        while (v21);
        v19 = v20;
      }

      std::vector<unsigned long>::insert(a1 + 34, v19, &v41);
      ++v5;
      v3 = __p;
      v4 = v43;
      if (v5 >= (v43 - __p) >> 2)
      {
        goto LABEL_25;
      }
    }

    v40 = 723;
    goto LABEL_43;
  }

LABEL_25:
  if (v3 == v4)
  {
    __assert_rtn("purgeContextTokensSteps", "ane_ajax_e5ml_model.hpp", 178, "!sortedSteps.empty()");
  }

  v26 = *(a1 + 32);
  for (i = *(a1 + 31) + 32 * *v3; i != v26; i += 32)
  {
    v28 = v43;
    if (v43 != v3)
    {
      v29 = *(i + 16);
      do
      {
        v31 = *--v28;
        v30 = v31;
        v32 = *(i + 8);
        if (&v29[-v32] > v31)
        {
          v33 = &v30[v32];
          v34 = &v30[v32 + 1];
          v35 = v29 - v34;
          if (v29 != v34)
          {
            memmove(&v30[v32], v34, v29 - v34);
            v3 = __p;
          }

          v29 = &v33[v35];
          *(i + 16) = &v33[v35];
        }
      }

      while (v28 != v3);
      v26 = *(a1 + 32);
    }
  }

  cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::fillCacheHolesIfNeeded(a1, 1uLL, 1);
  v37 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v36);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    v38 = (*(a1 + 32) - *(a1 + 31)) >> 5;
    v39 = (*(a1 + 35) - *(a1 + 34)) >> 3;
    *buf = 134218240;
    *v47 = v38;
    *&v47[8] = 2048;
    *&v47[10] = v39;
    _os_log_debug_impl(&dword_220940000, v37, OS_LOG_TYPE_DEBUG, "purgeSteps called with, end of function call mContextTokensSize=%zu and numHoles=%zu", buf, 0x16u);
  }

  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }
}

void sub_22098E7AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned long>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    std::__split_buffer<unsigned long>::emplace_back<unsigned long const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_22098E97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::clearAllState(E5RT::ExecutionStreamOperation ***this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(this);
  v3 = os_signpost_id_generate(v2);

  v5 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_220940000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "TGI_ANE_Clear_State", "", v10, 2u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN3cgm26token_generation_inference4ajax16ANEAJAXE5MLModel13clearAllStateEv_block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v3;
  v7 = _Block_copy(aBlock);
  ((*this)[1])(this, 0);
  v8 = this[23];
  if (this[24] == v8)
  {
    __assert_rtn("clearAllState", "ane_ajax_e5ml_model.mm", 783, "mExtendStreamOps.size() > 0 && Expected ANE model to always have at least 1 extend op.");
  }

  v9 = *v8;
  std::string::basic_string[abi:ne200100]<0>(v12, "in_embeddings");
  std::unordered_set<std::string>::unordered_set(v10, v12, 1);
  cgm::token_generation_inference::ajax::utils::zeroAllMemoryObjects(v9, v10);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v10);
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v7[2](v7);
}

void ___ZN3cgm26token_generation_inference4ajax16ANEAJAXE5MLModel13clearAllStateEv_block_invoke(cgm::token_generation_inference::common::logging::CGMTGILogger *a1)
{
  v2 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(a1);
  v3 = v2;
  v4 = *(a1 + 4);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_220940000, v3, OS_SIGNPOST_INTERVAL_END, v4, "TGI_ANE_Clear_State", "", v5, 2u);
  }
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

std::vector<std::string>::iterator std::vector<std::string>::erase(std::vector<std::string> *this, std::vector<std::string>::const_iterator __first, std::vector<std::string>::const_iterator __last)
{
  if (__last.__i_ != __first.__i_)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v10, __last.__i_, this->__end_, __first.__i_);
    v6 = v5;
    end = this->__end_;
    if (end != v5)
    {
      do
      {
        v8 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
        --end;
        if (v8 < 0)
        {
          operator delete(end->__r_.__value_.__l.__data_);
        }
      }

      while (end != v6);
    }

    this->__end_ = v6;
  }

  return __first.__i_;
}

const void **std::remove_if[abi:ne200100]<std::__wrap_iter<std::string *>,cgm::token_generation_inference::ajax::ane::filterFunctions(std::shared_ptr<E5RT::ProgramLibrary>,TGIE5ModelConfiguration const*,std::function<BOOL ()(std::string const&,E5RT::ProgramFunction const&)>)::{lambda(std::string const&)#1}>(const void **a1, const void **a2, uint64_t *a3)
{
  v5 = a1;
  if (a1 != a2)
  {
    v18 = *a3;
    v19 = a3[1];
    while (1)
    {
      v20 = v18;
      if (v18 != v19)
      {
        v21 = *(v5 + 23);
        if (v21 >= 0)
        {
          v22 = *(v5 + 23);
        }

        else
        {
          v22 = v5[1];
        }

        if (v21 >= 0)
        {
          v23 = v5;
        }

        else
        {
          v23 = *v5;
        }

        v20 = v18;
        while (1)
        {
          v24 = *(v20 + 23);
          v25 = v24;
          if ((v24 & 0x80u) != 0)
          {
            v24 = *(v20 + 8);
          }

          if (v24 == v22)
          {
            v26 = v25 >= 0 ? v20 : *v20;
            if (!memcmp(v26, v23, v22))
            {
              break;
            }
          }

          v20 += 24;
          if (v20 == v19)
          {
            goto LABEL_2;
          }
        }
      }

      if (v20 == v19)
      {
        break;
      }

      v5 += 3;
      if (v5 == a2)
      {
        return a2;
      }
    }
  }

LABEL_2:
  if (v5 == a2)
  {
    return a2;
  }

  v6 = v5 + 3;
  if (v5 + 3 == a2)
  {
    return v5;
  }

  v7 = v5;
  do
  {
    v8 = v5;
    v5 = v6;
    v9 = *a3;
    v10 = a3[1];
    if (*a3 != v10)
    {
      v11 = *(v8 + 47);
      if (v11 >= 0)
      {
        v12 = *(v8 + 47);
      }

      else
      {
        v12 = v8[4];
      }

      if (v11 >= 0)
      {
        v13 = v6;
      }

      else
      {
        v13 = *v6;
      }

      while (1)
      {
        v14 = *(v9 + 23);
        v15 = v14;
        if ((v14 & 0x80u) != 0)
        {
          v14 = *(v9 + 8);
        }

        if (v14 == v12)
        {
          v16 = v15 >= 0 ? v9 : *v9;
          if (!memcmp(v16, v13, v12))
          {
            break;
          }
        }

        v9 += 24;
        if (v9 == v10)
        {
          goto LABEL_25;
        }
      }
    }

    if (v9 != v10)
    {
      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v17 = *v5;
      v7[2] = v5[2];
      *v7 = v17;
      v7 += 3;
      *(v8 + 47) = 0;
      *v5 = 0;
    }

LABEL_25:
    v6 = v5 + 3;
  }

  while (v5 + 3 != a2);
  return v7;
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

uint64_t std::__any_of[abi:ne200100]<std::__wrap_iter<TGIE5Function const*>,std::__wrap_iter<TGIE5Function const*>,std::__identity,TGIE5ModelConfiguration::mutableWeightsSymbolToPath(std::string const&)::{lambda(TGIE5Function const&)#1}>(uint64_t a1, uint64_t a2, std::string **a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v6 = a1;
  v7 = *a3;
  v8 = SHIBYTE((*a3)->__r_.__value_.__r.__words[2]);
  if (v8 >= 0)
  {
    size = HIBYTE((*a3)->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = (*a3)->__r_.__value_.__l.__size_;
  }

  while (1)
  {
    v10 = *(v6 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(v6 + 8);
    }

    if (v10 == size)
    {
      v12 = v11 >= 0 ? v6 : *v6;
      v13 = v8 >= 0 ? v7 : v7->__r_.__value_.__r.__words[0];
      if (!memcmp(v12, v13, size))
      {
        break;
      }
    }

    v6 += 64;
    if (v6 == a2)
    {
      return 0;
    }
  }

  std::optional<TGIE5Function>::operator=[abi:ne200100]<TGIE5Function const&,void>(a3[1], v6);
  return 1;
}

std::string *std::optional<TGIE5Function>::operator=[abi:ne200100]<TGIE5Function const&,void>(std::string *this, std::string *__str)
{
  if (this[2].__r_.__value_.__s.__data_[16] == 1)
  {
    std::string::operator=(this, __str);
    this[1].__r_.__value_.__r.__words[0] = __str[1].__r_.__value_.__r.__words[0];
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((this + 32), (__str + 32));
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v4 = *&__str->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v4;
    }

    this[1].__r_.__value_.__r.__words[0] = __str[1].__r_.__value_.__r.__words[0];
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 32), &__str[1].__r_.__value_.__r.__words[1]);
    this[2].__r_.__value_.__s.__data_[16] = 1;
  }

  return this;
}

void sub_22098F174(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (this[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(this, a2);
    }
  }

  else if (this[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(a1, a2);
  return a1;
}

void sub_22098F264(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(std::string *this, __int128 *a2)
{
  if (*(a2 + 24) == 1)
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

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

uint64_t _ZZNK23TGIE5ModelConfiguration26mutableWeightsSymbolToPathERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEENKUlRKT_E_clI25TGIE5AdapterConfigurationEEDaSB_(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = *a1;
  if (*(*a1 + 64))
  {
    if (*(v4 + 56) != 1)
    {
      return 0;
    }

    v5 = *(v4 + 55);
    if (v5 >= 0)
    {
      v6 = *(v4 + 55);
    }

    else
    {
      v6 = *(v4 + 40);
    }

    v7 = *(a2 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = a2[1];
    }

    if (v6 != v7)
    {
      return 0;
    }

    v11 = *(v4 + 32);
    v9 = (v4 + 32);
    v10 = v11;
    if (v5 >= 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }

    if (v8 < 0)
    {
      a2 = *a2;
    }

    if (memcmp(v12, a2, v6))
    {
      return 0;
    }

    if (*(v2 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v17, v2[6], v2[7]);
    }

    else
    {
      v17 = *(v2 + 2);
    }
  }

  else if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, a2[6], a2[7]);
  }

  else
  {
    v17 = *(a2 + 2);
  }

  v14 = a1[1];
  v18 = v2 + 3;
  v15 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v14, v2 + 3);
  v16 = v15;
  if (*(v15 + 63) < 0)
  {
    operator delete(v15[5]);
  }

  *(v16 + 5) = v17;
  return 1;
}

void sub_22098F440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_22098F6C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<TGIE5Function>::~optional(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

uint64_t std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22098F884(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>,cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        *(v5 + 16) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>,cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>,cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>,cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>,cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 32;
  }
}

uint64_t std::__split_buffer<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 32;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<E5RT::PrecompiledComputeOpCreateOptions>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<E5RT::PrecompiledComputeOpCreateOptions>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<E5RT::PrecompiledComputeOpCreateOptions>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<E5RT::PrecompiledComputeOpCreateOptions>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t cgm::token_generation_inference::ajax::ane::checkIOPorts(const void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v13, "in_embeddings");
  std::string::basic_string[abi:ne200100]<0>(v14, "in_relative_positions_CT");
  std::string::basic_string[abi:ne200100]<0>(v15, "in_new_token_ids");
  std::string::basic_string[abi:ne200100]<0>(v16, "in_step");
  std::string::basic_string[abi:ne200100]<0>(v17, "transformer_input");
  std::string::basic_string[abi:ne200100]<0>(v18, "in_position_ids");
  std::string::basic_string[abi:ne200100]<0>(v19, "in_causal_mask");
  std::string::basic_string[abi:ne200100]<0>(v20, "state_keys_LHC");
  std::string::basic_string[abi:ne200100]<0>(v21, "state_values_LHC");
  std::string::basic_string[abi:ne200100]<0>(v22, "embeddings");
  std::string::basic_string[abi:ne200100]<0>(v23, "out_logits");
  std::string::basic_string[abi:ne200100]<0>(v24, "placeholder_out_opt_logits");
  std::unordered_set<std::string>::unordered_set(v12, v13, 12);
  v4 = 36;
  do
  {
    if (SHIBYTE(v13[v4 - 1]) < 0)
    {
      operator delete(*&v12[v4 * 8 + 16]);
    }

    v4 -= 3;
  }

  while (v4 * 8);
  v13[0] = a1;
  v13[1] = v12;
  v5 = (*(*a2 + 32))(a2);
  std::unordered_map<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>::unordered_map(v11, v5);
  cgm::token_generation_inference::ajax::ane::checkIOPorts(std::string const&,E5RT::ProgramFunction const&)::{lambda(std::unordered_map<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>)#1}::operator()(v13, v11);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v11);
  v6 = (*(*a2 + 48))(a2);
  std::unordered_map<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>::unordered_map(v10, v6);
  cgm::token_generation_inference::ajax::ane::checkIOPorts(std::string const&,E5RT::ProgramFunction const&)::{lambda(std::unordered_map<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>)#1}::operator()(v13, v10);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v10);
  v7 = (*(*a2 + 40))(a2);
  std::unordered_map<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>::unordered_map(v9, v7);
  cgm::token_generation_inference::ajax::ane::checkIOPorts(std::string const&,E5RT::ProgramFunction const&)::{lambda(std::unordered_map<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>)#1}::operator()(v13, v9);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v9);
  return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v12);
}

void sub_22098FE1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(va);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

void sub_220990088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t cgm::token_generation_inference::ajax::ane::getContextLength(void *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_relative_positions_CT");
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_);
  v3 = v2;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v3)
    {
      goto LABEL_8;
    }
  }

  else if (v2)
  {
    goto LABEL_8;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "in_causal_mask");
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!v3)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Cannot find in_relative_positions_CT or in_causal_mask on extend/prompt function.");
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &__p);
  }

LABEL_8:
  v4 = E5RT::OperandDescriptor::TensorDescriptor(v3[5]);
  return *(*E5RT::TensorDescriptor::GetTensorShape(v4) + 8);
}

void sub_220990200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

const void **cgm::token_generation_inference::ajax::ane::checkIOPorts(std::string const&,E5RT::ProgramFunction const&)::{lambda(std::unordered_map<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>)#1}::operator()(const void **result, uint64_t a2)
{
  v2 = result;
  v18 = *MEMORY[0x277D85DE8];
  v3 = (a2 + 16);
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v2[1], v3 + 2);
    if (!result)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      v5 = *v2;
      v11[0] = 0;
      std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string const,std::string const>(v11, v10, v3 + 2, v5);
      v12 = v16;
      v13 = xmmword_220AE5410;
      v14 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v15 = 0;
      __p = v16;
      v7 = 2;
      v8 = v10;
      v9 = v11[0];
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v12, "Found unknown port named {} on function {}.", 43, &v7);
      v7 = __p;
      v8 = *(&v13 + 1);
      std::string::basic_string<std::string_view,0>(&v6, &v7);
      if (__p != v16)
      {
        operator delete(__p);
      }

      cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &v6);
    }
  }

  return result;
}

void sub_220990390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v63 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v63)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v62);
  goto LABEL_6;
}

void *std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string const,std::string const>(void *result, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a3 + 23);
  v5 = v4;
  v6 = *a3;
  v7 = a3[1];
  *result = 13;
  if ((v4 & 0x80u) != 0)
  {
    v4 = v7;
  }

  if (v5 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = v6;
  }

  *a2 = v8;
  a2[1] = v4;
  v9 = *(a4 + 23);
  v10 = v9;
  v11 = *a4;
  v12 = a4[1];
  *result |= 0x1A0uLL;
  if ((v9 & 0x80u) != 0)
  {
    v9 = v12;
  }

  if (v10 >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = v11;
  }

  a2[2] = v13;
  a2[3] = v9;
  return result;
}

uint64_t std::unordered_map<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<E5RT::OperandDescriptor const>> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<E5RT::OperandDescriptor const>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::OperandDescriptor const>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<E5RT::OperandDescriptor const>> const&>();
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

void sub_2209906F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<E5RT::PrecompiledComputeOpCreateOptions  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223D8FE50);
}

uint64_t std::__shared_ptr_pointer<E5RT::PrecompiledComputeOpCreateOptions  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<E5RT::PrecompiledComputeOpCreateOptions  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<E5RT::ExecutionStreamOperation> *,std::unique_ptr<E5RT::ExecutionStreamOperation> *,std::back_insert_iterator<std::vector<std::shared_ptr<E5RT::ExecutionStreamOperation>>>>(uint64_t a1, uint64_t *a2, uint64_t *a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      std::shared_ptr<E5RT::ExecutionStreamOperation>::shared_ptr[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(&v20, v5);
      v8 = a4[1];
      v7 = a4[2];
      if (v8 >= v7)
      {
        v9 = *a4;
        v10 = v8 - *a4;
        v11 = v10 >> 4;
        v12 = (v10 >> 4) + 1;
        if (v12 >> 60)
        {
          _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
        }

        v13 = v7 - v9;
        if (v13 >> 3 > v12)
        {
          v12 = v13 >> 3;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        v21[4] = a4;
        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<E5RT::PrecompiledComputeOpCreateOptions>>>(a4, v14);
        }

        *(16 * v11) = v20;
        v15 = 16 * v11 + 16;
        v20 = 0uLL;
        memcpy(0, v9, v10);
        v16 = *a4;
        *a4 = 0;
        v21[0] = v16;
        v21[1] = v16;
        a4[1] = v15;
        v21[2] = v16;
        v17 = a4[2];
        a4[2] = 0;
        v21[3] = v17;
        std::__split_buffer<std::shared_ptr<E5RT::PrecompiledComputeOpCreateOptions>>::~__split_buffer(v21);
        v18 = *(&v20 + 1);
        a4[1] = v15;
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }
      }

      else
      {
        *v8 = v20;
        a4[1] = v8 + 16;
      }

      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_220990984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,false>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3uLL:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,0>(v9, v9 + 2, a2 - 2, a3);
          return;
        case 4uLL:
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,0>(v9, v9 + 2, v9 + 4, a2 - 2, a3);
          return;
        case 5uLL:
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,0>(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2, a3);
          return;
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
        v23 = *a3;
        v24 = *(a2 - 1);
        v35 = *(a2 - 2);
        v36 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v25 = v9[1];
        v33 = *v9;
        v34 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = v23(&v35, &v33);
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        if (v26)
        {
          v27 = *v9;
          *v9 = *(a2 - 2);
          *(a2 - 2) = v27;
          v28 = v9[1];
          v9[1] = *(a2 - 1);
          *(a2 - 1) = v28;
        }

        return;
      }
    }

    if (v12 <= 23)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*>(v9, a2, a3);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*>(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      break;
    }

    v13 = v12 >> 1;
    v14 = &v9[2 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,0>(&v9[2 * (v12 >> 1)], v9, a2 - 2, a3);
      if (a5)
      {
        goto LABEL_25;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,0>(v9, &v9[2 * (v12 >> 1)], a2 - 2, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,0>(v9 + 2, v14 - 2, a2 - 4, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,0>(v9 + 4, &v9[2 * v13 + 2], a2 - 6, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,0>(v14 - 2, v14, &v9[2 * v13 + 2], a3);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      if (a5)
      {
        goto LABEL_25;
      }
    }

    v16 = *a3;
    v17 = *(v9 - 1);
    v31 = *(v9 - 2);
    v32 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v9[1];
    v29 = *v9;
    v30 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v16(&v31, &v29);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if ((v19 & 1) == 0)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<E5RT::ExecutionStreamOperation> *,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>)>(v9, a2, a3);
      goto LABEL_30;
    }

LABEL_25:
    v20 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<E5RT::ExecutionStreamOperation> *,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>)>(v9, a2, a3);
    if ((v21 & 1) == 0)
    {
      goto LABEL_28;
    }

    v22 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*>(v9, v20, a3);
    v9 = v20 + 2;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*>(v20 + 2, a2, a3))
    {
      a4 = -v11;
      a2 = v20;
      if (v22)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v22)
    {
LABEL_28:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,false>(a1, v20, a3, -v11, a5 & 1);
      v9 = v20 + 2;
LABEL_30:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v9 != a2)
  {
    std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,std::shared_ptr<E5RT::ExecutionStreamOperation>*>(v9, a2, a2, a3);
  }
}

void sub_220990D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,0>(void *a1, void *a2, void *a3, uint64_t (**a4)(uint64_t *, uint64_t *))
{
  v8 = *a4;
  v10 = (a2 + 1);
  v9 = a2[1];
  v55 = *a2;
  v56 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = (a1 + 1);
  v11 = a1[1];
  v53 = *a1;
  v54 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v8(&v55, &v53);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  v14 = *a4;
  v15 = (a3 + 1);
  if (v13)
  {
    v16 = *v15;
    v43 = *a3;
    v44 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = a2[1];
    v41 = *a2;
    v42 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v14(&v43, &v41);
    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }

    v19 = *a1;
    if (v18)
    {
      *a1 = *a3;
      *a3 = v19;
    }

    else
    {
      *a1 = *a2;
      *a2 = v19;
      v30 = a1[1];
      a1[1] = a2[1];
      a2[1] = v30;
      v31 = *a4;
      v32 = a3[1];
      v39 = *a3;
      v40 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        v30 = *v10;
      }

      v37 = *a2;
      v38 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v33 = v31(&v39, &v37);
      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }

      if (!v33)
      {
        return 1;
      }

      v34 = *a2;
      *a2 = *a3;
      *a3 = v34;
      v12 = v10;
    }

    v10 = (a3 + 1);
LABEL_50:
    v35 = *v12;
    *v12 = *v10;
    *v10 = v35;
    return 1;
  }

  v20 = *v15;
  v51 = *a3;
  v52 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = a2[1];
  v49 = *a2;
  v50 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = v14(&v51, &v49);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  if (v22)
  {
    v23 = *a2;
    *a2 = *a3;
    *a3 = v23;
    v24 = a2[1];
    a2[1] = a3[1];
    a3[1] = v24;
    v25 = *a4;
    v26 = a2[1];
    v47 = *a2;
    v48 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = a1[1];
    v45 = *a1;
    v46 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = v25(&v47, &v45);
    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    }

    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    if (!v28)
    {
      return 1;
    }

    v29 = *a1;
    *a1 = *a2;
    *a2 = v29;
    goto LABEL_50;
  }

  return 0;
}

void sub_220991028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (**a5)(uint64_t *, uint64_t *))
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,0>(a1, a2, a3, a5);
  v10 = *a5;
  v11 = a4[1];
  v38 = *a4;
  v39 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a3[1];
  v36 = *a3;
  v37 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v10(&v38, &v36);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (v13)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    v15 = a3[1];
    a3[1] = a4[1];
    a4[1] = v15;
    v16 = *a5;
    v17 = a3[1];
    v34 = *a3;
    v35 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = a2[1];
    v32 = *a2;
    v33 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v16(&v34, &v32);
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    if (v19)
    {
      v20 = *a2;
      *a2 = *a3;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a5;
      v23 = a2[1];
      v30 = *a2;
      v31 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = a1[1];
      v28 = *a1;
      v29 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = v22(&v30, &v28);
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if (v25)
      {
        v26 = *a1;
        *a1 = *a2;
        *a2 = v26;
        v27 = a1[1];
        a1[1] = a2[1];
        a2[1] = v27;
      }
    }
  }
}

void sub_22099128C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,0>(a1, a2, a3, a4, a6);
  v12 = *a6;
  v13 = a5[1];
  v50 = *a5;
  v51 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a4[1];
  v48 = *a4;
  v49 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v12(&v50, &v48);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  if (v15)
  {
    v16 = *a4;
    *a4 = *a5;
    *a5 = v16;
    v17 = a4[1];
    a4[1] = a5[1];
    a5[1] = v17;
    v18 = *a6;
    v19 = a4[1];
    v46 = *a4;
    v47 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = a3[1];
    v44 = *a3;
    v45 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = v18(&v46, &v44);
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }

    if (v21)
    {
      v22 = *a3;
      *a3 = *a4;
      *a4 = v22;
      v23 = a3[1];
      a3[1] = a4[1];
      a4[1] = v23;
      v24 = *a6;
      v25 = a3[1];
      v42 = *a3;
      v43 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = a2[1];
      v40 = *a2;
      v41 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = v24(&v42, &v40);
      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }

      if (v27)
      {
        v28 = *a2;
        *a2 = *a3;
        *a3 = v28;
        v29 = a2[1];
        a2[1] = a3[1];
        a3[1] = v29;
        v30 = *a6;
        v31 = a2[1];
        v38 = *a2;
        v39 = v31;
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v32 = a1[1];
        v36 = *a1;
        v37 = v32;
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v33 = v30(&v38, &v36);
        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        if (v33)
        {
          v34 = *a1;
          *a1 = *a2;
          *a2 = v34;
          v35 = a1[1];
          a1[1] = a2[1];
          a2[1] = v35;
        }
      }
    }
  }
}

void sub_220991544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  if (a1 == a2)
  {
    return;
  }

  v5 = a1 + 2;
  if (a1 + 2 == a2)
  {
    return;
  }

  v7 = 0;
  v8 = a1;
  do
  {
    v9 = v8;
    v8 = v5;
    v10 = *a3;
    v11 = v9[3];
    v31 = v9[2];
    v32 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v9[1];
    v29 = *v9;
    v30 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = v10(&v31, &v29);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (!v13)
    {
      goto LABEL_32;
    }

    v14 = *v8;
    v15 = v9[3];
    v16 = v7;
    *v8 = 0;
    v8[1] = 0;
    while (1)
    {
      v17 = a1 + v16;
      v18 = *(a1 + v16);
      *v17 = 0;
      *(v17 + 1) = 0;
      v19 = *(a1 + v16 + 24);
      *(v17 + 1) = v18;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if (!v16)
      {
        v23 = a1;
        goto LABEL_30;
      }

      v20 = *a3;
      v27 = v14;
      v28 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = *(a1 + v16 - 8);
      v25 = *(a1 + v16 - 16);
      v26 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = v20(&v27, &v25);
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (!v28)
      {
        break;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      if ((v22 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_27:
      v16 -= 16;
    }

    if (v22)
    {
      goto LABEL_27;
    }

LABEL_29:
    v23 = (a1 + v16);
LABEL_30:
    v24 = v23[1];
    *v23 = v14;
    v23[1] = v15;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

LABEL_32:
    v5 = v8 + 2;
    v7 += 16;
  }

  while (v8 + 2 != a2);
}

void sub_220991750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 2;
    if (a1 + 2 != a2)
    {
      v7 = (a1 + 3);
      do
      {
        v8 = v4;
        v4 = v5;
        v9 = *a3;
        v10 = v8[3];
        v28 = v8[2];
        v29 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = v8[1];
        v26 = *v8;
        v27 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = v9(&v28, &v26);
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }

        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        if (v12)
        {
          v13 = *v4;
          v14 = v8[3];
          v15 = v7;
          *v4 = 0;
          v4[1] = 0;
          do
          {
            v16 = *(v15 - 3);
            *(v15 - 3) = 0;
            *(v15 - 2) = 0;
            v17 = *v15;
            *(v15 - 1) = v16;
            if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            }

            v18 = *a3;
            v24 = v13;
            v25 = v14;
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v19 = *(v15 - 4);
            v22 = *(v15 - 5);
            v23 = v19;
            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v20 = v18(&v24, &v22);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v23);
            }

            if (v25)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v25);
            }

            v15 -= 2;
          }

          while ((v20 & 1) != 0);
          v21 = *v15;
          *(v15 - 1) = v13;
          *v15 = v14;
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }
        }

        v5 = v4 + 2;
        v7 += 2;
      }

      while (v4 + 2 != a2);
    }
  }
}

void sub_220991904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<E5RT::ExecutionStreamOperation> *,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v7 = *a1;
  v6 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v8 = *a3;
  v56 = v7;
  v57 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 - 1);
  v54 = *(a2 - 2);
  v55 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v8(&v56, &v54);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  if (v10)
  {
    i = a1;
    do
    {
      v12 = *a3;
      v52 = v7;
      v53 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = i[3];
      v50 = i[2];
      v51 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = v12(&v52, &v50);
      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }

      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      }

      i += 2;
    }

    while ((v14 & 1) == 0);
  }

  else
  {
    for (i = a1 + 2; i < v4; i += 2)
    {
      v15 = *a3;
      v48 = v7;
      v49 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = i[1];
      v46 = *i;
      v47 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = v15(&v48, &v46);
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }

      if (v17)
      {
        break;
      }
    }
  }

  if (i < v4)
  {
    do
    {
      v18 = *a3;
      v44 = v7;
      v45 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = *(v4 - 1);
      v42 = *(v4 - 2);
      v43 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = v18(&v44, &v42);
      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }

      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      v4 -= 2;
    }

    while ((v20 & 1) != 0);
  }

  while (i < v4)
  {
    v21 = *i;
    *i = *v4;
    *v4 = v21;
    v22 = i[1];
    i[1] = v4[1];
    v4[1] = v22;
    do
    {
      v23 = *a3;
      v40 = v7;
      v41 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = i[3];
      v38 = i[2];
      v39 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = v23(&v40, &v38);
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      i += 2;
    }

    while (!v25);
    do
    {
      v26 = *a3;
      v36 = v7;
      v37 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = *(v4 - 1);
      v34 = *(v4 - 2);
      v35 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = v26(&v36, &v34);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      v4 -= 2;
    }

    while ((v28 & 1) != 0);
  }

  v29 = (i - 2);
  if (i - 2 != a1)
  {
    v30 = *v29;
    *v29 = 0;
    *(i - 1) = 0;
    v31 = a1[1];
    *a1 = v30;
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }
  }

  v32 = *(i - 1);
  *(i - 2) = v7;
  *(i - 1) = v6;
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  return i;
}

void sub_220991C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v29 = *(v27 - 104);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *(v27 - 88);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<E5RT::ExecutionStreamOperation> *,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = 0;
  v8 = *a1;
  v7 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  do
  {
    v9 = *a3;
    v10 = a1[v6 + 3];
    v56 = a1[v6 + 2];
    v57 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v54 = v8;
    v55 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v9(&v56, &v54);
    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }

    v6 += 2;
  }

  while ((v11 & 1) != 0);
  v12 = &a1[v6];
  if (v6 == 2)
  {
    if (v12 < a2)
    {
      for (a2 -= 2; ; a2 -= 2)
      {
        v17 = *a3;
        v18 = a2[1];
        v52 = *a2;
        v53 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v50 = v8;
        v51 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v19 = v17(&v52, &v50);
        if (v51)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v51);
        }

        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        }

        v20 = v12 >= a2 ? 1 : v19;
        if (v20)
        {
          break;
        }
      }
    }
  }

  else
  {
    do
    {
      v14 = *(a2 - 2);
      v13 = *(a2 - 1);
      a2 -= 2;
      v15 = *a3;
      v48 = v14;
      v49 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v46 = v8;
      v47 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = v15(&v48, &v46);
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }
    }

    while ((v16 & 1) == 0);
  }

  if (v12 >= a2)
  {
    v21 = &a1[v6];
  }

  else
  {
    v21 = &a1[v6];
    v22 = a2;
    do
    {
      v23 = *v21;
      *v21 = *v22;
      *v22 = v23;
      v24 = v21[1];
      v21[1] = v22[1];
      v22[1] = v24;
      do
      {
        v26 = v21[2];
        v25 = v21[3];
        v21 += 2;
        v27 = *a3;
        v44 = v26;
        v45 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v42 = v8;
        v43 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = v27(&v44, &v42);
        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }

        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }
      }

      while ((v28 & 1) != 0);
      do
      {
        v30 = *(v22 - 2);
        v29 = *(v22 - 1);
        v22 -= 2;
        v31 = *a3;
        v40 = v30;
        v41 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = v8;
        v39 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v32 = v31(&v40, &v38);
        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }
      }

      while (!v32);
    }

    while (v21 < v22);
  }

  v33 = (v21 - 2);
  if (v21 - 2 != a1)
  {
    v34 = *v33;
    *v33 = 0;
    *(v21 - 1) = 0;
    v35 = a1[1];
    *a1 = v34;
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }
  }

  v36 = *(v21 - 1);
  *(v21 - 2) = v8;
  *(v21 - 1) = v7;
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  return v21 - 2;
}

void sub_220991FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v6 = (a2 - a1) >> 4;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a3;
        v8 = *(a2 - 1);
        v44 = *(a2 - 2);
        v45 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = a1[1];
        v42 = *a1;
        v43 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = v7(&v44, &v42);
        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }

        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }

        if (v10)
        {
          v11 = *a1;
          *a1 = *(v4 - 2);
          *(v4 - 2) = v11;
          v12 = a1[1];
          a1[1] = *(v4 - 1);
          *(v4 - 1) = v12;
        }

        return 1;
      }

      goto LABEL_19;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,0>(a1, a1 + 2, a2 - 2, a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
      return 1;
  }

LABEL_19:
  v13 = a1 + 4;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,0>(a1, a1 + 2, a1 + 4, a3);
  v14 = a1 + 6;
  if (a1 + 6 == v4)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  v32 = v4;
  while (1)
  {
    v17 = *a3;
    v18 = v14[1];
    v40 = *v14;
    v41 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v13[1];
    v38 = *v13;
    v39 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = v17(&v40, &v38);
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    if (v20)
    {
      v33 = v16;
      v21 = *v14;
      v22 = v14[1];
      v23 = v15;
      *v14 = 0;
      v14[1] = 0;
      while (1)
      {
        v24 = a1 + v23;
        v25 = *(a1 + v23 + 32);
        *(v24 + 4) = 0;
        *(v24 + 5) = 0;
        v26 = *(a1 + v23 + 56);
        *(v24 + 3) = v25;
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        if (v23 == -32)
        {
          break;
        }

        v27 = *a3;
        v36 = v21;
        v37 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = *(a1 + v23 + 24);
        v34 = *(a1 + v23 + 16);
        v35 = v28;
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v29 = v27(&v36, &v34);
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
          if ((v29 & 1) == 0)
          {
            v13 = (a1 + v23 + 32);
            goto LABEL_46;
          }
        }

        else if (!v29)
        {
          goto LABEL_46;
        }

        v13 -= 2;
        v23 -= 16;
      }

      v13 = a1;
LABEL_46:
      v30 = v13[1];
      *v13 = v21;
      v13[1] = v22;
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      v16 = v33 + 1;
      v4 = v32;
      if (v33 == 7)
      {
        return v14 + 2 == v32;
      }
    }

    v13 = v14;
    v15 += 16;
    v14 += 2;
    if (v14 == v4)
    {
      return 1;
    }
  }
}

void sub_22099235C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*,std::shared_ptr<E5RT::ExecutionStreamOperation>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t *, uint64_t *))
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*>(a1, a4, v8, v11);
        v11 -= 2;
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
        v13 = *a4;
        v14 = v12[1];
        v23 = *v12;
        v24 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = a1[1];
        v21 = *a1;
        v22 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = v13(&v23, &v21);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        if (v16)
        {
          v17 = *v12;
          *v12 = *a1;
          *a1 = v17;
          v18 = v12[1];
          v12[1] = a1[1];
          a1[1] = v18;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*>(a1, v6, a4, v8);
        v6 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

void sub_220992530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*>(uint64_t a1, uint64_t (**a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return;
  }

  v5 = a4;
  v6 = a1;
  v36 = v4 >> 1;
  if ((v4 >> 1) < (a4 - a1) >> 4)
  {
    return;
  }

  v9 = (a4 - a1) >> 3;
  v10 = v9 + 1;
  v11 = (a1 + 16 * (v9 + 1));
  v12 = v9 + 2;
  if (v9 + 2 < a3)
  {
    v13 = *a2;
    v50 = *v11;
    if (*(&v50 + 1))
    {
      atomic_fetch_add_explicit((*(&v50 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(v11 + 3);
    v48 = *(v11 + 2);
    v49 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v13(&v50, &v48);
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    if (*(&v50 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v50 + 1));
      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (v15)
    {
LABEL_12:
      ++v11;
      v10 = v12;
    }
  }

LABEL_13:
  v16 = *a2;
  v17 = *(v11 + 1);
  v46 = *v11;
  v47 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v5[1];
  v44 = *v5;
  v45 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = v16(&v46, &v44);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if ((v19 & 1) == 0)
  {
    v20 = v5[1];
    v35 = *v5;
    *v5 = 0;
    v5[1] = 0;
    v21 = v6;
    while (1)
    {
      v22 = v11;
      v23 = *v11;
      *v11 = 0;
      *(v11 + 1) = 0;
      v24 = v5[1];
      *v5 = v23;
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v36 < v10)
      {
LABEL_48:
        v34 = v22[1];
        *v22 = v35;
        v22[1] = v20;
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        return;
      }

      v25 = 2 * v10;
      v10 = (2 * v10) | 1;
      v11 = (v6 + 16 * v10);
      v26 = v25 + 2;
      if (v25 + 2 < a3)
      {
        v27 = *a2;
        v28 = *v11;
        v43 = v28;
        if (*(&v28 + 1))
        {
          atomic_fetch_add_explicit((*(&v28 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v29 = *(v11 + 3);
        v41 = *(v11 + 2);
        v42 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v30 = v27(&v43, &v41);
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        if (!*(&v43 + 1))
        {
          if (!v30)
          {
            goto LABEL_36;
          }

LABEL_35:
          ++v11;
          v10 = v26;
          goto LABEL_36;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v43 + 1));
        if (v30)
        {
          goto LABEL_35;
        }
      }

LABEL_36:
      v31 = *a2;
      v32 = *(v11 + 1);
      v39 = *v11;
      v40 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v37 = v35;
      v38 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v33 = v31(&v39, &v37);
      v6 = v21;
      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }

      v5 = v22;
      if (v33)
      {
        goto LABEL_48;
      }
    }
  }
}

void sub_220992804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (*(v24 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v24 - 88));
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*>(uint64_t *a1, uint64_t a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*>(a1, a3, a4);
    v10 = v9;
    if (v9 == (a2 - 16))
    {
      v15 = v9[1];
      *v10 = v8;
      v10[1] = v7;
      if (v15)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    else
    {
      v11 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v12 = v9[1];
      *v10 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = (v10 + 2);
      v14 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = v7;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*>(a1, v13, a3, (v13 - a1) >> 4);
    }
  }
}

void sub_220992978(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*>(void *a1, uint64_t (**a2)(uint64_t *, uint64_t *), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[2 * v6];
    v9 = v8 + 2;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 >= a3)
    {
      goto LABEL_12;
    }

    v12 = *a2;
    v13 = v8[3];
    v23 = v8[2];
    v24 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v8[4];
    v14 = v8[5];
    v16 = v8 + 4;
    v21 = v15;
    v22 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = v12(&v23, &v21);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      if ((v17 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_11:
      v9 = v16;
      v6 = v11;
      goto LABEL_12;
    }

    if (v17)
    {
      goto LABEL_11;
    }

LABEL_12:
    v18 = *v9;
    *v9 = 0;
    v9[1] = 0;
    v19 = a1[1];
    *a1 = v18;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

void sub_220992AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<E5RT::ExecutionStreamOperation>,std::shared_ptr<E5RT::ExecutionStreamOperation>),std::shared_ptr<E5RT::ExecutionStreamOperation>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, uint64_t *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = (a1 + 16 * (v4 >> 1));
    v10 = *a3;
    v11 = *v9;
    v29 = v11;
    if (*(&v11 + 1))
    {
      atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v12 = *(a2 - 8);
    v13 = (a2 - 16);
    v27 = *(a2 - 16);
    v28 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = v10(&v29, &v27);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (*(&v29 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
    }

    if (v14)
    {
      v16 = *(a2 - 16);
      v15 = *(a2 - 8);
      *v13 = 0;
      v13[1] = 0;
      do
      {
        v17 = v9;
        v18 = *v9;
        *v9 = 0;
        v9[1] = 0;
        v19 = v13[1];
        *v13 = v18;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 16 * v8);
        v20 = *a3;
        v21 = *v9;
        v26 = v21;
        if (*(&v21 + 1))
        {
          atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v24 = v16;
        v25 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = v20(&v26, &v24);
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        if (*(&v26 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
        }

        v13 = v17;
      }

      while ((v22 & 1) != 0);
      v23 = v17[1];
      *v17 = v16;
      v17[1] = v15;
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }
    }
  }
}

void sub_220992C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__emplace_back_slow_path<std::shared_ptr<E5RT::ExecutionStreamOperation> &,std::shared_ptr<E5RT::ExecutionStream> &>(uint64_t *a1, void *a2, void *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v21 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<cgm::token_generation_inference::ajax::utils::StreamOpPair>>(a1, v8);
  }

  v9 = (32 * v3);
  v18 = 0;
  v19 = v9;
  *(&v20 + 1) = 0;
  v10 = a2[1];
  *v9 = *a2;
  v9[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a3[1];
  *(32 * v3 + 0x10) = *a3;
  *(32 * v3 + 0x18) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *&v20 = v9 + 4;
  v12 = a1[1];
  v13 = (v9 + *a1 - v12);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cgm::token_generation_inference::ajax::utils::StreamOpPair>,cgm::token_generation_inference::ajax::utils::StreamOpPair*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<cgm::token_generation_inference::ajax::utils::StreamOpPair>::~__split_buffer(&v18);
  return v17;
}

void sub_220992DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<cgm::token_generation_inference::ajax::utils::StreamOpPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,false>(__int128 *a1, __int128 *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
  v7 = a2;
  v8 = a1;
  v54 = a2;
  v55 = a1;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = (v7 - v8) >> 5;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3uLL:
          v54 = (v7 - 4);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,0>(v8, v8 + 2, v7 - 2, a3);
          return;
        case 4uLL:
          v54 = (v7 - 4);
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,0>(v8, v8 + 2, v8 + 4, v7 - 2, a3);
          return;
        case 5uLL:
          v54 = (v7 - 4);
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,0>(v8, v8 + 2, v8 + 4, v8 + 6, v7 - 2, a3);
          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v30 = *a3;
        v54 = (v7 - 4);
        v31 = *(v7 - 3);
        v50 = *(v7 - 4);
        v51 = v31;
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v32 = *(v7 - 1);
        v52 = *(v7 - 2);
        v53 = v32;
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v33 = *(v8 + 1);
        v46 = *v8;
        v47 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = *(v8 + 3);
        v48 = *(v8 + 2);
        v49 = v34;
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v35 = v30(&v50, &v46);
        if (v49)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        }

        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }

        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        }

        if (v51)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v51);
        }

        if (v35)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair *&,cgm::token_generation_inference::ajax::utils::StreamOpPair *&>(&v55, &v54);
        }

        return;
      }
    }

    if (v10 <= 23)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*>(v8, v7, a3);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*>(v8, v7, a3);
      }

      return;
    }

    if (i == 1)
    {
      break;
    }

    v11 = v10 >> 1;
    v12 = (v7 - 4);
    if (v10 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,0>(&v8[2 * (v10 >> 1)], v8, v12, a3);
      v8 = v55;
      if (a5)
      {
        goto LABEL_41;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,0>(v8, &v8[2 * (v10 >> 1)], v12, a3);
      v13 = v54;
      v8 = v55;
      v14 = &v55[2 * v11];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,0>(v55 + 2, v14 - 2, v54 - 4, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,0>(v8 + 4, v14 + 2, v13 - 6, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,0>(v14 - 2, &v8[2 * v11], v14 + 2, a3);
      v36 = *v8;
      v37 = v8[1];
      *v8 = 0;
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      v15 = *v14;
      *v14 = 0;
      *(v14 + 1) = 0;
      v16 = *(v8 + 1);
      *v8 = v15;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      v17 = v14[1];
      *(v14 + 2) = 0;
      *(v14 + 3) = 0;
      v18 = *(v8 + 3);
      v8[1] = v17;
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      v19 = *(v14 + 1);
      *v14 = v36;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      v20 = *(v14 + 3);
      v14[1] = v37;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (a5)
      {
        goto LABEL_41;
      }
    }

    v21 = *a3;
    v22 = *(v8 - 3);
    v42 = *(v8 - 4);
    v43 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = *(v8 - 1);
    v44 = *(v8 - 2);
    v45 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = *(v8 + 1);
    v38 = *v8;
    v39 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = *(v8 + 3);
    v40 = *(v8 + 2);
    v41 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = v21(&v42, &v38);
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if ((v26 & 1) == 0)
    {
      v7 = v54;
      v8 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,cgm::token_generation_inference::ajax::utils::StreamOpPair *,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair)>(v8, v54, a3);
      goto LABEL_50;
    }

LABEL_41:
    v7 = v54;
    v27 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,cgm::token_generation_inference::ajax::utils::StreamOpPair *,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair)>(v8, v54, a3);
    if ((v28 & 1) == 0)
    {
      goto LABEL_48;
    }

    v29 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*>(v8, v27, a3);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*>(v27 + 4, v7, a3))
    {
      if (v29)
      {
        return;
      }

      v54 = v27;
      v7 = v27;
    }

    else
    {
      if (!v29)
      {
LABEL_48:
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,false>(v8, v27, a3, -i, a5 & 1);
        v8 = v27 + 2;
LABEL_50:
        a5 = 0;
        v55 = v8;
        a4 = -i;
        goto LABEL_2;
      }

      v55 = v27 + 2;
      v8 = v27 + 2;
    }
  }

  if (v8 != v7)
  {
    std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,cgm::token_generation_inference::ajax::utils::StreamOpPair*>(v8, v7, v7, a3);
  }
}

void sub_2209931F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(va);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(va1);
  _Unwind_Resume(a1);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair *&,cgm::token_generation_inference::ajax::utils::StreamOpPair *&>(__int128 **a1, __int128 **a2)
{
  v2 = *a1;
  v3 = *a2;
  v10 = **a1;
  v11 = (*a1)[1];
  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  v4 = *v3;
  *v3 = 0;
  *(v3 + 1) = 0;
  v5 = *(v2 + 1);
  *v2 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v3[1];
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  v7 = *(v2 + 3);
  v2[1] = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(v3 + 1);
  *v3 = v10;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(v3 + 3);
  v3[1] = v11;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t (**a4)(uint64_t *, uint64_t *))
{
  v93 = a2;
  v94 = a1;
  v92 = a3;
  v5 = *a4;
  v6 = *(a2 + 1);
  v88 = *a2;
  v89 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 3);
  v90 = *(a2 + 2);
  v91 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 1);
  v84 = *a1;
  v85 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 3);
  v86 = *(a1 + 2);
  v87 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v5(&v88, &v84);
  if (v87)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v87);
  }

  if (v85)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v85);
  }

  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if (v89)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v89);
  }

  v11 = *a4;
  v12 = v92;
  if (v10)
  {
    v13 = *(v92 + 1);
    v64 = *v92;
    v65 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    v66 = v15;
    v67 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = v93;
    v17 = *(v93 + 1);
    v60 = *v93;
    v61 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    v62 = v19;
    v63 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = v11(&v64, &v60);
    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }

    if (v61)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v61);
    }

    if (v67)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v67);
    }

    if (v65)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65);
    }

    v21 = &v94;
    if (!v20)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair *&,cgm::token_generation_inference::ajax::utils::StreamOpPair *&>(&v94, &v93);
      v22 = *a4;
      v23 = v92;
      v24 = *(v92 + 1);
      v56 = *v92;
      v57 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v23 + 2);
      v25 = *(v23 + 3);
      v58 = v26;
      v59 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = v93;
      v28 = *(v93 + 1);
      v52 = *v93;
      v53 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = *(v27 + 2);
      v29 = *(v27 + 3);
      v54 = v30;
      v55 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v31 = v22(&v56, &v52);
      if (v55)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v55);
      }

      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      }

      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v59);
      }

      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v57);
      }

      if (!v31)
      {
        return 1;
      }

      v21 = &v93;
    }

    v32 = &v92;
LABEL_89:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair *&,cgm::token_generation_inference::ajax::utils::StreamOpPair *&>(v21, v32);
    return 1;
  }

  v33 = *(v92 + 1);
  v80 = *v92;
  v81 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v35 = *(v12 + 2);
  v34 = *(v12 + 3);
  v82 = v35;
  v83 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v36 = v93;
  v37 = *(v93 + 1);
  v76 = *v93;
  v77 = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = *(v36 + 2);
  v38 = *(v36 + 3);
  v78 = v39;
  v79 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v40 = v11(&v80, &v76);
  if (v79)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
  }

  if (v77)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v77);
  }

  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if (v81)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v81);
  }

  if (v40)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair *&,cgm::token_generation_inference::ajax::utils::StreamOpPair *&>(&v93, &v92);
    v41 = *a4;
    v42 = v93;
    v43 = *(v93 + 1);
    v72 = *v93;
    v73 = v43;
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v45 = *(v42 + 2);
    v44 = *(v42 + 3);
    v74 = v45;
    v75 = v44;
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v46 = v94;
    v47 = *(v94 + 1);
    v68 = *v94;
    v69 = v47;
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v49 = *(v46 + 2);
    v48 = *(v46 + 3);
    v70 = v49;
    v71 = v48;
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v50 = v41(&v72, &v68);
    if (v71)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v71);
    }

    if (v69)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v69);
    }

    if (v75)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v75);
    }

    if (v73)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v73);
    }

    if (!v50)
    {
      return 1;
    }

    v21 = &v94;
    v32 = &v93;
    goto LABEL_89;
  }

  return 0;
}