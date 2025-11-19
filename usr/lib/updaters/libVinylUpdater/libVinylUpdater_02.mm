_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 4) = 0;
  *a4 = a3;
  v6 = MEMORY[0x29C2B8F30](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
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
    result = MEMORY[0x29C2B8F30](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
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
  result = MEMORY[0x29C2B8F30](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
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
  v49[128] = *MEMORY[0x29EDCA608];
  v7 = *&a4 >> 63;
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v8 = a2 >> 8;
    v9 = fabs(a4);
    if (a3 == -1)
    {
      v10 = 1074;
    }

    else
    {
      v10 = a3;
    }

    v45 = v10;
    v46 = 0;
    if (v10 < 1075)
    {
      v11 = v10 + 316;
      v47 = v11;
      if ((v10 + 316) < 0x401)
      {
        v12 = v49;
        goto LABEL_10;
      }
    }

    else
    {
      v45 = 1074;
      v46 = v10 - 1074;
      v11 = 1390;
      v47 = 1390;
    }

    v12 = operator new(v11);
LABEL_10:
    __p = v12;
    std::__formatter::__format_buffer[abi:ne200100]<double,double>(&v45, v7, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, v8, &v41, v9);
    if ((a2 & 0x20) != 0)
    {
      v13 = v42;
      v14 = *v44;
      if (v42 == *v44)
      {
        ++*v44;
        *v14 = 46;
        v15 = v43;
        v16 = (*v44 - 1);
        if (v43 != (*v44 - 1))
        {
          if (v43 + 1 == v16)
          {
            v18 = *v43;
            *v43 = v43[1];
            v15[1] = v18;
          }

          else
          {
            v17 = *(*v44 - 1);
            memmove(v43 + 1, v43, v16 - v43);
            *v15 = v17;
          }
        }

        v13 = v43;
        v42 = v43++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v19 = 6;
        }

        if (v43 == *v44)
        {
          v20 = v41 - v13;
        }

        else
        {
          v20 = -1;
        }

        v21 = v20 + v19;
        v22 = &v43[~v13];
        if (v22 < v21)
        {
          v46 += v21 - v22;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v30 = *a1;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a1, &v40);
      v31 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v30, &v45, &v41, &v40, a2, a3);
      std::locale::~locale(&v40);
    }

    else
    {
      v23 = *v44;
      v24 = __p;
      v25 = *v44 - __p;
      v26 = v46;
      if (*v44 - __p + v46 >= a2 >> 32)
      {
        if (!v46 || (v32 = v43, v43 == *v44))
        {
          v31 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, *v44 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v31, v26, 48);
        }

        else
        {
          v31 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, v43 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v31, v26, 48);
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v31, v32, v23 - v32);
        }
      }

      else
      {
        v27 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v41)
          {
            std::__format::__output_buffer<char>::push_back[abi:ne200100](v27, *__p);
            ++v24;
          }

          v28 = a2 & 0xB8 | 3;
          v29 = 48;
        }

        else
        {
          v29 = BYTE4(a3);
          v28 = a2;
        }

        v33 = a2 & 0xFFFFFFFFFFFFFF00 | v28;
        v34 = a3 & 0xFFFFFF00FFFFFFFFLL | (v29 << 32);
        if (v26)
        {
          v35 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, *v44, v27, v33, v34, v25, v43, v26);
        }

        else
        {
          v35 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, *v44 - v24, v27, v33, v34, v25);
        }

        v31 = v35;
      }
    }

    if (v47 >= 0x401)
    {
      operator delete(__p);
    }

    v36 = *MEMORY[0x29EDCA608];
    return v31;
  }

  v38 = *a1;
  v39 = *MEMORY[0x29EDCA608];

  return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v38, a2, a3, a4 < 0.0, 0);
}

void sub_299FAAB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
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
      result = MEMORY[0x29C2B8ED0](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
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
  v11 = std::locale::use_facet(this, MEMORY[0x29EDC93F8]);
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

void sub_299FAB148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  v6 = MEMORY[0x29C2B8ED0](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
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
    result = MEMORY[0x29C2B8ED0](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
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
  result = MEMORY[0x29C2B8ED0](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
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
  v49[128] = *MEMORY[0x29EDCA608];
  v7 = *&a4 >> 63;
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v8 = a2 >> 8;
    v9 = fabs(a4);
    if (a3 == -1)
    {
      v10 = 1074;
    }

    else
    {
      v10 = a3;
    }

    v45 = v10;
    v46 = 0;
    if (v10 < 1075)
    {
      v11 = v10 + 316;
      v47 = v11;
      if ((v10 + 316) < 0x401)
      {
        v12 = v49;
        goto LABEL_10;
      }
    }

    else
    {
      v45 = 1074;
      v46 = v10 - 1074;
      v11 = 1390;
      v47 = 1390;
    }

    v12 = operator new(v11);
LABEL_10:
    __p = v12;
    std::__formatter::__format_buffer[abi:ne200100]<double,long double>(&v45, v7, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, v8, &v41, v9);
    if ((a2 & 0x20) != 0)
    {
      v13 = v42;
      v14 = *v44;
      if (v42 == *v44)
      {
        ++*v44;
        *v14 = 46;
        v15 = v43;
        v16 = (*v44 - 1);
        if (v43 != (*v44 - 1))
        {
          if (v43 + 1 == v16)
          {
            v18 = *v43;
            *v43 = v43[1];
            v15[1] = v18;
          }

          else
          {
            v17 = *(*v44 - 1);
            memmove(v43 + 1, v43, v16 - v43);
            *v15 = v17;
          }
        }

        v13 = v43;
        v42 = v43++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v19 = 6;
        }

        if (v43 == *v44)
        {
          v20 = v41 - v13;
        }

        else
        {
          v20 = -1;
        }

        v21 = v20 + v19;
        v22 = &v43[~v13];
        if (v22 < v21)
        {
          v46 += v21 - v22;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v30 = *a1;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a1, &v40);
      v31 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v30, &v45, &v41, &v40, a2, a3);
      std::locale::~locale(&v40);
    }

    else
    {
      v23 = *v44;
      v24 = __p;
      v25 = *v44 - __p;
      v26 = v46;
      if (*v44 - __p + v46 >= a2 >> 32)
      {
        if (!v46 || (v32 = v43, v43 == *v44))
        {
          v31 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, *v44 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v31, v26, 48);
        }

        else
        {
          v31 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, v43 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v31, v26, 48);
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v31, v32, v23 - v32);
        }
      }

      else
      {
        v27 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v41)
          {
            std::__format::__output_buffer<char>::push_back[abi:ne200100](v27, *__p);
            ++v24;
          }

          v28 = a2 & 0xB8 | 3;
          v29 = 48;
        }

        else
        {
          v29 = BYTE4(a3);
          v28 = a2;
        }

        v33 = a2 & 0xFFFFFFFFFFFFFF00 | v28;
        v34 = a3 & 0xFFFFFF00FFFFFFFFLL | (v29 << 32);
        if (v26)
        {
          v35 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, *v44, v27, v33, v34, v25, v43, v26);
        }

        else
        {
          v35 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, *v44 - v24, v27, v33, v34, v25);
        }

        v31 = v35;
      }
    }

    if (v47 >= 0x401)
    {
      operator delete(__p);
    }

    v36 = *MEMORY[0x29EDCA608];
    return v31;
  }

  v38 = *a1;
  v39 = *MEMORY[0x29EDCA608];

  return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v38, a2, a3, a4 < 0.0, 0);
}

void sub_299FAB8A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
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
      result = MEMORY[0x29C2B8F00](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
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
  v6 = MEMORY[0x29C2B8F00](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
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
    result = MEMORY[0x29C2B8F00](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
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
  result = MEMORY[0x29C2B8F00](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
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

void *std::formatter<char const*,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, char *__s, void *a3)
{
  v6 = strlen(__s);
  v7 = *a3;
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

  return std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__s, v6, v7, v9, v8);
}

void *std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x80000000) != 0)
  {

    return std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5);
  }

  else
  {
    v9 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, a5 & 0x7FFFFFFF, 0);
    v11 = v10 - __src;

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, v11, a3, a4, a5, v9);
  }
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

void *std::__formatter_pointer<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t a2, void *a3)
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
  v14 = *MEMORY[0x29EDCA608];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    v11 = 2;
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

    v9 = &v14;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v12, v9, v7, v11);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    v11 = 16;
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

    v9 = &v13;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v12, &v13 + 2, 0, 10);
    goto LABEL_19;
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v12, &v13 + 5, v5, 8);
LABEL_19:
  v10 = *MEMORY[0x29EDCA608];
  return result;
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
  v21 = std::locale::use_facet(&v43, MEMORY[0x29EDC93F8]);
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

void sub_299FAC464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t __cxx_global_var_init_2()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_299F8C000);
  }

  return result;
}

uint64_t __cxx_global_var_init_23()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_299F8C000);
  }

  return result;
}

void *VinylUpdaterCreate(const __CFDictionary *a1, uint64_t (*a2)(void, void), void *a3, ACFULogging **a4)
{
  MEMORY[0x29C2B8A50](v42, @"VinylUpdaterCreate");
  keys = CFDictionaryGetValue(a1, @"RestoreOptions");
  v8 = ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&v41, &keys);
  BBULogParseDebugArgs(v8);
  if (v41)
  {
    CFRelease(v41);
  }

  gVinylUpdaterLogFunc = a2;
  VinylLogRegisterSync(VinylLogAdapter);
  v9 = BBULogModuleEnabled(22);
  v10 = MEMORY[0x29EDB8ED8];
  if (!v9)
  {
    LogInstance = ACFULogging::getLogInstance(v9);
    inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
    v19 = inited;
    goto LABEL_21;
  }

  keys = @"ACFUDebugArgs";
  v11 = *MEMORY[0x29EDB8ED8];
  values = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"logLevel=%d", 4);
  v12 = CFDictionaryCreate(v11, &keys, &values, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v38 = v12;
  Mutable = CFDictionaryCreateMutable(v11, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v14 = Mutable;
  v37 = Mutable;
  if (v12)
  {
    v15 = Mutable == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (!v15)
  {
    CFDictionaryAddValue(Mutable, @"Options", v12);
    v18 = ACFULogging::getLogInstance(v17);
    v19 = ACFULogging::initLog(v18, v14, a2, a3);
    if (values)
    {
      CFRelease(values);
      values = 0;
    }

LABEL_13:
    CFRelease(v14);
    if (!v12)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  ACFULogging::getLogInstance(Mutable);
  inited = ACFULogging::handleMessage();
  if (v14)
  {
    v19 = 0;
    goto LABEL_13;
  }

  v16 = 0;
  v19 = 0;
  if (v12)
  {
LABEL_14:
    CFRelease(v12);
  }

LABEL_15:
  if ((v16 & 1) == 0)
  {
    Instance = 0;
    goto LABEL_17;
  }

LABEL_21:
  if (v19)
  {
    ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage();
    std::string::basic_string[abi:ne200100]<0>(v35, "failed to init logging");
    inited = ACFUError::addError();
    Instance = 0;
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    v28 = v35;
LABEL_39:
    operator delete(*v28);
    goto LABEL_17;
  }

  if (VinylUpdaterCreate::only_once != -1)
  {
    VinylUpdaterCreate_cold_1();
  }

  if (!kVinylRestoreObjTypeID)
  {
    ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage();
    std::string::basic_string[abi:ne200100]<0>(v33, "failed to create Vinyl CFRuntimeClass");
    inited = ACFUError::addError();
    Instance = 0;
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    v28 = v33;
    goto LABEL_39;
  }

  v24 = *v10;
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    std::string::basic_string[abi:ne200100]<0>(v31, "failed to create Vinyl CFType object");
    inited = ACFUError::addError();
    Instance = 0;
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    v28 = v31;
    goto LABEL_39;
  }

  v26 = VinylRestore::create(a1, v25);
  Instance[2] = v26;
  if (v26)
  {
    ACFULogging::getLogInstance(v26);
    ACFULogging::handleMessage();
    goto LABEL_28;
  }

  ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage();
  std::string::basic_string[abi:ne200100]<0>(v29, "failed to get the Vinyl restore instance");
  inited = ACFUError::addError();
  if (v30 < 0)
  {
    v28 = v29;
    goto LABEL_39;
  }

LABEL_17:
  ACFULogging::getLogInstance(inited);
  ACFULogging::handleMessage();
  CFError = ACFUError::getCFError(v42);
  *a4 = CFError;
  if (Instance)
  {
    CFRelease(Instance);
  }

  ACFULogging::getLogInstance(CFError);
  ACFULogging::handleMessage();
  Instance = 0;
LABEL_28:
  MEMORY[0x29C2B8A60](v42);
  return Instance;
}

void sub_299FAC998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, int a37, __int16 a38, char a39, char a40)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C2B8A60](v40 - 96);
  _Unwind_Resume(a1);
}

void VinylLogAdapter(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (gVinylUpdaterLogFunc)
  {
    v9 = 0;
    vasprintf(&v9, a2, &a9);
    gVinylUpdaterLogFunc(0, v9);
    free(v9);
  }
}

uint64_t __VinylUpdaterCreate_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kVinylRestoreObjTypeID = result;
  return result;
}

uint64_t VinylRestoreObjDestroy(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  v2 = ACFULogging::handleMessage();
  if (a1)
  {
    v2 = *(a1 + 2);
    if (v2)
    {
      v3 = (*(*v2 + 8))(v2);
      ACFULogging::getLogInstance(v3);
      v2 = ACFULogging::handleMessage();
      *(a1 + 2) = 0;
    }
  }

  ACFULogging::getLogInstance(v2);
  return ACFULogging::handleMessage();
}

ACFULogging *VinylRestoreObjDescribe(ACFULogging *a1)
{
  v1 = a1;
  ACFULogging::getLogInstance(a1);
  v2 = ACFULogging::handleMessage();
  if (v1)
  {
    v3 = CFGetAllocator(v1);
    v4 = CFGetAllocator(v1);
    v2 = CFStringCreateWithFormat(v3, 0, @"<VinylRestoreObj %p [%p]>{}", v1, v4, "VinylRestoreObjDescribe");
    v1 = v2;
  }

  ACFULogging::getLogInstance(v2);
  ACFULogging::handleMessage();
  return v1;
}

uint64_t VinylUpdaterExecCommand(uint64_t a1, __CFString *theString)
{
  v13 = *MEMORY[0x29EDCA608];
  CString = CFStringGetCString(theString, buffer, 128, 0x8000100u);
  ACFULogging::getLogInstance(CString);
  v5 = ACFULogging::handleMessage();
  if (a1)
  {
    if (*(a1 + 16))
    {
      v7 = ACFURestore::restoreCommand(theString, v6);
      v8 = ACFURestore::executeCommand();
      if ((v8 & 1) == 0)
      {
        v8 = VinylUpdaterExecCommand_cold_1(v7);
        v9 = 0;
        goto LABEL_5;
      }
    }

    else
    {
      v8 = VinylUpdaterExecCommand_cold_2(v5);
    }
  }

  else
  {
    v8 = VinylUpdaterExecCommand_cold_3(v5);
  }

  v9 = 1;
LABEL_5:
  ACFULogging::getLogInstance(v8);
  ACFULogging::handleMessage();
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t VinylUpdaterIsDone(ACFULogging *a1, void *a2)
{
  v3 = a1;
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
  pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v4 = xmmword_2A14F5908;
  if (!xmmword_2A14F5908)
  {
    BBUCapabilities::create_default_global(v16);
    v5 = *v16;
    v16[0] = 0;
    v16[1] = 0;
    v6 = *(&xmmword_2A14F5908 + 1);
    xmmword_2A14F5908 = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (v16[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16[1]);
      }
    }

    v4 = xmmword_2A14F5908;
  }

  v7 = *(&xmmword_2A14F5908 + 1);
  if (*(&xmmword_2A14F5908 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A14F5908 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v8 = BBUCapabilities::supportsVinylUpdate(v4);
  v9 = v8;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if ((v9 & 1) == 0)
  {
    ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage();
    if (a2)
    {
      *a2 = 0;
    }

    return 1;
  }

  if (v3)
  {
    v10 = *(v3 + 2);
    if (v10)
    {
      if (VinylRestore::updateAllowed(*(v3 + 2)))
      {
        isRestoreComplete = ACFURestore::isRestoreComplete(v10);
        v3 = isRestoreComplete;
        if (a2)
        {
          if (!isRestoreComplete)
          {
            *a2 = 0;
            goto LABEL_30;
          }

          ACFURestore::getErrorHandle(v16, v10);
          *a2 = ACFUError::getCFError(v16[0]);
          isRestoreComplete = v16[1];
          if (v16[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16[1]);
          }
        }

        else if (!isRestoreComplete)
        {
LABEL_30:
          ACFULogging::getLogInstance(isRestoreComplete);
          ACFULogging::handleMessage();
          return v3;
        }

        ACFULogging::getLogInstance(isRestoreComplete);
        isRestoreComplete = ACFULogging::handleMessage();
        goto LABEL_30;
      }
    }

    else
    {
      v12 = MEMORY[0x29C2B8A50](v16, @"VinylUpdaterIsDone");
      ACFULogging::getLogInstance(v12);
      ACFULogging::handleMessage();
      std::string::basic_string[abi:ne200100]<0>(&__p, "VinylRestore object doesn't exist");
      ACFUError::addError();
      if (v15 < 0)
      {
        operator delete(__p);
      }

      if (a2)
      {
        *a2 = ACFUError::getCFError(v16);
      }

      MEMORY[0x29C2B8A60](v16);
    }

    return 1;
  }

  return v3;
}

void sub_299FACFCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylUpdaterSupported(void *a1)
{
  if (a1)
  {
    *a1 = 0;
  }

  pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v1 = xmmword_2A14F5908;
  if (!xmmword_2A14F5908)
  {
    BBUCapabilities::create_default_global(&v8);
    v2 = v8;
    v8 = 0uLL;
    v3 = *(&xmmword_2A14F5908 + 1);
    xmmword_2A14F5908 = v2;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      if (*(&v8 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
      }
    }

    v1 = xmmword_2A14F5908;
  }

  v4 = *(&xmmword_2A14F5908 + 1);
  if (*(&xmmword_2A14F5908 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A14F5908 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v5 = BBUCapabilities::supportsVinylUpdate(v1);
  v6 = v5;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (!v6)
  {
    return 0;
  }

  ACFULogging::getLogInstance(v5);
  ACFULogging::handleMessage();
  return 1;
}

uint64_t __cxx_global_var_init_3()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_299F8C000);
  }

  return result;
}

FILE *vinyl_fopen_file_func(int a1, void *__buf, int a3, size_t __size)
{
  if (__buf)
  {
    return fmemopen(__buf, __size, "rb");
  }

  else
  {
    return 0;
  }
}

uint64_t vinyl_fseek_file_func(int a1, FILE *a2, uint64_t a3, unsigned int a4)
{
  if (a4 > 2)
  {
    return -1;
  }

  fseek(a2, a3, a4);
  return 0;
}

FILE *(**vinyl_fill_fopen_filefunc(FILE *(**result)(int a1, void *__buf, int a3, size_t __size)))(int a1, void *__buf, int a3, size_t __size)
{
  *result = vinyl_fopen_file_func;
  result[1] = vinyl_fread_file_func;
  result[2] = vinyl_fwrite_file_func;
  result[3] = vinyl_ftell_file_func;
  result[4] = vinyl_fseek_file_func;
  result[5] = vinyl_fclose_file_func;
  result[6] = vinyl_ferror_file_func;
  result[7] = 0;
  return result;
}

void VinylICECommunication::statusCallback(char a1, uint64_t a2, int a3)
{
  if ((*gBBULogMaskGet() & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "transport %p, status: %d\n", v5, v6, v7, a1);
  }

  if (a3 == 1)
  {
    v8 = *MEMORY[0x29EDB8ED8];
    Controller = TelephonyBasebandCreateController();
    v10 = TelephonyBasebandResetModem();
    if ((*gBBULogMaskGet() & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      v14 = "failure";
      if (v10)
      {
        v14 = "success";
      }

      _BBULog(2, 0, "BBUICE16Communication", "", "Resetting modem: %s\n", v11, v12, v13, v14);
    }

    if (Controller)
    {
      CFRelease(Controller);
    }
  }
}

void sub_299FAD3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t VinylICECommunication::freeTransportSync(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return 1;
  }

  if (v2 == a2)
  {
    v9 = *(a1 + 40);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN21VinylICECommunication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke;
    block[3] = &__block_descriptor_tmp_3;
    block[4] = a1;
    dispatch_sync(v9, block);
    v8 = TelephonyUtilTransportFree();
    v10 = *(a1 + 40);
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 0x40000000;
    v13[2] = ___ZN21VinylICECommunication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke_2;
    v13[3] = &__block_descriptor_tmp_8;
    v14 = v8;
    v13[4] = a1;
    v13[5] = a2;
    dispatch_sync(v10, v13);
  }

  else
  {
    v8 = 0;
    if ((*gBBULogMaskGet() & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      v12 = *(a1 + 48);
      _BBULog(2, 0, "BBUICE16Communication", "", "call with %p different from fTransportCreated(%p)\n", v5, v6, v7, a2);
      return 0;
    }
  }

  return v8;
}

uint64_t ___ZN21VinylICECommunication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  *(v1 + 24) = 0;
  if (*(result + 48) == 1)
  {
    *(v1 + 48) = 0;
  }

  else
  {
    v2 = result;
    result = gBBULogMaskGet();
    if ((*result & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      return _BBULog(2, 0, "BBUICE16Communication", "", "fail to free transport: %p\n", v3, v4, v5, *(v2 + 40));
    }
  }

  return result;
}

uint64_t VinylICECommunication::openChannel()
{
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "BBUICE16Communication", "", " Initializing KTL options struct, opening ARI channel\n", v0, v1, v2, v10);
  IceAriGetContext();
  pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v3 = xmmword_2A14F5908;
  if (!xmmword_2A14F5908)
  {
    BBUCapabilities::create_default_global(&v10);
    v4 = v10;
    v10 = 0uLL;
    v5 = *(&xmmword_2A14F5908 + 1);
    xmmword_2A14F5908 = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      if (*(&v10 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
      }
    }

    v3 = xmmword_2A14F5908;
  }

  v6 = *(&xmmword_2A14F5908 + 1);
  if (*(&xmmword_2A14F5908 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A14F5908 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  BBUCapabilities::getARICommandTimeout(v3);
  v7 = KTLInitOptions();
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v7)
  {
    IceAriGetContext();
    v8 = KTLOpenChannel();
    IceAriSetContextValid(1);
    if (v8)
    {
      return 0;
    }

    else
    {
      return 11;
    }
  }

  else
  {
    IceAriSetContextValid(1);
    return 11;
  }
}

void IceAriSetContextValid(char a1)
{
  pthread_mutex_lock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  v2 = off_2A14F5858;
  if (!off_2A14F5858)
  {
    v3 = operator new(0x28uLL);
    v3[32] = 0;
    std::shared_ptr<ICEARIContext>::shared_ptr[abi:ne200100]<ICEARIContext,0>(&v7, v3);
    v4 = v7;
    v7 = 0uLL;
    v5 = *(&off_2A14F5858 + 1);
    off_2A14F5858 = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      if (*(&v7 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
      }
    }

    v2 = off_2A14F5858;
  }

  v6 = *(&off_2A14F5858 + 1);
  if (*(&off_2A14F5858 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F5858 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  *(v2 + 32) = a1;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

uint64_t VinylICECommunication::createTransport(uint64_t a1, uint64_t a2)
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 3;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2000000000;
  v33 = 0;
  TelephonyBasebandPCITransportInitParameters();
  if (*(a1 + 48))
  {
    if ((*gBBULogMaskGet() & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(2, 0, "BBUICE16Communication", "", "Need to free transport before creating again", v4, v5, v6, v17);
    }

    (*(*a1 + 40))(a1, *(a1 + 48));
    *(a1 + 48) = 0;
  }

  v7 = *(a1 + 40);
  LODWORD(v28) = v28 | 1;
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 0x40000000;
  v25[2] = ___ZN21VinylICECommunication15createTransportEP26TelephonyUtilTransport_tag_block_invoke;
  v25[3] = &__block_descriptor_tmp_12;
  v25[4] = a2;
  *(&v26 + 1) = v7;
  *&v27 = v25;
  if ((*gBBULogMaskGet() & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "Creating transport:%p \n", v8, v9, v10, a2);
  }

  LODWORD(v26) = 8;
  DWORD2(v27) = 10000;
  *(a1 + 56) = 8;
  if ((*gBBULogMaskGet() & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "Creating with timeout set to %u ms\n", v11, v12, v13, SBYTE8(v27));
  }

  v14 = *(a1 + 32);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN21VinylICECommunication15createTransportEP26TelephonyUtilTransport_tag_block_invoke_2;
  block[3] = &unk_29F293530;
  block[6] = a1;
  block[7] = a2;
  v21 = v28;
  v22 = v29;
  v23 = v30;
  v24 = v31;
  v19 = v26;
  v20 = v27;
  block[4] = v32;
  block[5] = &v34;
  dispatch_sync(v14, block);
  v15 = *(v35 + 6);
  if (v26 == 8 && !v15)
  {
    v15 = (*(*a1 + 24))(a1, a2);
    *(v35 + 6) = v15;
  }

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(&v34, 8);
  return v15;
}

void sub_299FADB20(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 112), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

_BYTE *___ZN21VinylICECommunication15createTransportEP26TelephonyUtilTransport_tag_block_invoke_2(void *a1)
{
  v2 = a1[6];
  *(v2 + 48) = a1[7];
  *(*(a1[4] + 8) + 24) = TelephonyBasebandPCITransportCreate();
  result = gBBULogMaskGet();
  if ((*result & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    if (*(*(a1[4] + 8) + 24))
    {
      v7 = "success";
    }

    else
    {
      v7 = "failure";
    }

    result = _BBULog(2, 0, "BBUICE16Communication", "", " TelephonyBasebandPCITransportCreate returns: %s\n", v4, v5, v6, v7);
  }

  if (*(*(a1[4] + 8) + 24))
  {
    if (!*(v2 + 48))
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Communication/ICE/VinylICECommunication.cpp", 0x82u, "Assertion failure(nullptr != fTransportCreated && Telephony util transport error.)", v10, v11, v12, v13);
    }

    v8 = 0;
  }

  else
  {
    result = VinylICECommunication::freeTransportSync(v2, a1[7]);
    v8 = 3;
  }

  *(*(a1[5] + 8) + 24) = v8;
  return result;
}

void VinylICECommunication::closeChannel(VinylICECommunication *this)
{
  if (IceAriGetContextValid())
  {
    IceAriGetContext();
    KTLCloseChannel();

    IceAriSetContextValid(0);
  }
}

uint64_t IceAriGetContextValid(void)
{
  pthread_mutex_lock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  v0 = off_2A14F5858;
  if (!off_2A14F5858)
  {
    v1 = operator new(0x28uLL);
    v1[32] = 0;
    std::shared_ptr<ICEARIContext>::shared_ptr[abi:ne200100]<ICEARIContext,0>(&v7, v1);
    v2 = v7;
    v7 = 0uLL;
    v3 = *(&off_2A14F5858 + 1);
    off_2A14F5858 = v2;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      if (*(&v7 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
      }
    }

    v0 = off_2A14F5858;
  }

  v4 = *(&off_2A14F5858 + 1);
  if (*(&off_2A14F5858 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F5858 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  v5 = *(v0 + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5;
}

uint64_t VinylICECommunication::freeTransport(void *a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 1;
  if ((*gBBULogMaskGet() & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "request to free transport: %p\n", v4, v5, v6, a2);
  }

  (*(*a1 + 32))(a1);
  v7 = a1[4];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN21VinylICECommunication13freeTransportEP26TelephonyUtilTransport_tag_block_invoke;
  block[3] = &unk_29F293558;
  block[4] = &v11;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v7, block);
  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t ___ZN21VinylICECommunication13freeTransportEP26TelephonyUtilTransport_tag_block_invoke(void *a1)
{
  result = VinylICECommunication::freeTransportSync(a1[5], a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void VinylICECommunication::~VinylICECommunication(VinylICECommunication *this)
{
  VinylICECommunication::~VinylICECommunication(this);

  operator delete(v1);
}

{
  *this = &unk_2A2031940;
  v2 = *(this + 5);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    dispatch_release(v3);
  }

  eUICC::eUICCVinylValve::~eUICCVinylValve(this);
}

uint64_t __cxx_global_var_init_4()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_299F8C000);
  }

  return result;
}

uint64_t __cxx_global_var_init_21()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_299F8C000);
  }

  return result;
}

unint64_t DEREncodeItemIntoVector(unint64_t a1, unint64_t a2, const void *a3, unint64_t *a4)
{
  v8 = DERLengthOfItem(a1, a2);
  v15 = v8;
  v9 = *a4;
  v10 = a4[1] - *a4;
  if (v8 <= v10)
  {
    if (v8 < v10)
    {
      a4[1] = v9 + v8;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a4, v8 - v10);
    v9 = *a4;
  }

  v11 = DEREncodeItem(a1, a2, a3, v9, &v15);
  if (v11)
  {
    v12 = *a4;
  }

  else
  {
    v13 = a4[1] - *a4;
    if (v15 > v13)
    {
      std::vector<unsigned char>::__append(a4, v15 - v13);
      return v11;
    }

    if (v15 >= v13)
    {
      return v11;
    }

    v12 = *a4 + v15;
  }

  a4[1] = v12;
  return v11;
}

uint64_t DEREncodeSequenceIntoVector(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v8 = DERLengthOfEncodedSequence(a1, a2, *(a3 + 8), *a3);
  v15 = v8;
  v9 = *a4;
  v10 = a4[1] - *a4;
  if (v8 <= v10)
  {
    if (v8 < v10)
    {
      a4[1] = v9 + v8;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a4, v8 - v10);
    v9 = *a4;
  }

  v11 = DEREncodeSequence(a1, a2, *(a3 + 8), *a3, v9, &v15);
  if (v11)
  {
    v12 = *a4;
  }

  else
  {
    v13 = a4[1] - *a4;
    if (v15 > v13)
    {
      std::vector<unsigned char>::__append(a4, v15 - v13);
      return v11;
    }

    if (v15 >= v13)
    {
      return v11;
    }

    v12 = *a4 + v15;
  }

  a4[1] = v12;
  return v11;
}

uint64_t DERDecodeBBTicket(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v17[6] = xmmword_299FE2D58;
  v17[7] = unk_299FE2D68;
  v17[8] = xmmword_299FE2D78;
  v17[2] = xmmword_299FE2D18;
  v17[3] = unk_299FE2D28;
  v17[4] = xmmword_299FE2D38;
  v17[5] = unk_299FE2D48;
  v17[0] = xmmword_299FE2CF8;
  v17[1] = unk_299FE2D08;
  v15[6] = xmmword_299FE2DE8;
  v15[7] = unk_299FE2DF8;
  v15[8] = xmmword_299FE2E08;
  v15[9] = unk_299FE2E18;
  v15[2] = xmmword_299FE2DA8;
  v15[3] = unk_299FE2DB8;
  v15[4] = xmmword_299FE2DC8;
  v15[5] = unk_299FE2DD8;
  v15[0] = xmmword_299FE2D88;
  v15[1] = unk_299FE2D98;
  v16 = 1;
  v12[0] = a1;
  v12[1] = a2;
  result = DERDecodeItem(v12, &v13);
  if (!result)
  {
    if (v13 == 0x2000000000000010)
    {
      if (TelephonyRadiosGetRadioVendor() == 1)
      {
        v5 = v15;
        v6 = 7;
      }

      else
      {
        v5 = v17;
        v6 = 6;
      }

      result = DERParseSequenceContent(&v14, v6, v5, a3, 0);
      if (!result)
      {
        v7 = *(a3 + 16);
        v8 = *v7;
        v9 = *(v7 + 4);
        v10 = v8 == 0x43DCE48862A0806 && v9 == 771;
        result = 3;
        if (v10)
        {
          if (*(a3 + 24) == 10)
          {
            result = 0;
          }

          else
          {
            result = 3;
          }
        }
      }
    }

    else
    {
      result = 2;
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t parseAndCheckIfTagEnabled(uint64_t a1, unsigned int a2, int *a3)
{
  v12 = 0;
  v5 = DERDecodeSeqInit(a1, &v12, v13);
  v6 = 0;
  if (!v5)
  {
    v7 = a2 | 0x8000000000000000;
    while (1)
    {
      v5 = DERDecodeSeqNext(v13, &v9);
      if (v5)
      {
        break;
      }

      if (v9 == v7)
      {
        if (v11 != 4)
        {
          v6 = 0;
LABEL_14:
          v5 = 3;
          goto LABEL_12;
        }

        v6 = 0;
        if (*v10)
        {
          if (*v10 != 1)
          {
            goto LABEL_14;
          }

          v6 = 1;
        }
      }
    }

    if (v5 == 1)
    {
      v5 = 0;
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_12:
  *a3 = v5;
  return v6 & 1;
}

uint64_t isBBTicketCalibEnabled(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  result = parseAndCheckIfTagEnabled(a1 + 48, 0xD4u, &v4);
  if (v4)
  {
    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t isBBTicketFATPCalibEnabled(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  result = parseAndCheckIfTagEnabled(a1 + 48, 0x1C2u, &v4);
  if (v4)
  {
    result = 0;
    *a2 = v4;
  }

  return result;
}

void std::vector<unsigned char>::__append(uint64_t a1, size_t a2)
{
  v6 = a1 + 8;
  v4 = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v5 - v4 >= a2)
  {
    if (a2)
    {
      v13 = &v4[a2];
      bzero(v4, a2);
      v4 = v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v7 = *a1;
    v8 = &v4[-*a1];
    v9 = v8 + a2;
    if ((v8 + a2) < 0)
    {
      std::vector<char *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    bzero(&v12[v8], a2);
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = &v12[v8 + a2];
    *(a1 + 16) = &v12[v11];
    if (v7)
    {

      operator delete(v7);
    }
  }
}

uint64_t _BBUException::_BBUException(uint64_t a1, int a2, char *a3, unsigned int a4, ctu::LogMessageBuffer *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *a1 = &unk_2A20319A0;
  *(a1 + 520) = a2;
  _BBUException::constructCommon(a1, a2, a3, a4, a5, &a9);
  return a1;
}

{
  *a1 = &unk_2A20319A0;
  *(a1 + 520) = a2;
  _BBUException::constructCommon(a1, a2, a3, a4, a5, &a9);
  return a1;
}

void _BBUException::constructCommon(uint64_t a1, int a2, char *a3, unsigned int a4, ctu::LogMessageBuffer *this, char *a6)
{
  ctu::LogMessageBuffer::vCreateWithFormat(&v40, this, a6, a3);
  v10 = MEMORY[0x29C2B81B0](&v40);
  v11 = *v10;
  v42.__r_.__value_.__r.__words[2] = *(v10 + 16);
  *&v42.__r_.__value_.__l.__data_ = v11;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = 0;
  MEMORY[0x29C2B81D0](&v40);
  *(&v35.__r_.__value_.__s + 23) = 1;
  LOWORD(v35.__r_.__value_.__l.__data_) = 32;
  v12 = BBUReturnAsString(a2);
  v13 = strlen(v12);
  v14 = std::string::append(&v35, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v36, "@", 1uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  ctu::llvm::StringRef::StringRef(&v32, a3);
  ctu::basename();
  if ((v34 & 0x80u) == 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v19 = v34;
  }

  else
  {
    v19 = __p[1];
  }

  v20 = std::string::append(&v37, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v38, ":", 1uLL);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v32, a4);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v32;
  }

  else
  {
    v24 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  v26 = std::string::append(&v39, v24, size);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v41 = v26->__r_.__value_.__r.__words[2];
  v40 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v41 >= 0)
  {
    v28 = &v40;
  }

  else
  {
    v28 = v40;
  }

  if (v41 >= 0)
  {
    v29 = HIBYTE(v41);
  }

  else
  {
    v29 = *(&v40 + 1);
  }

  std::string::append(&v42, v28, v29);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = 0u;
  v30 = a1 + 8;
  *(v30 + 480) = 0u;
  *(v30 + 496) = 0u;
  *(v30 + 448) = 0u;
  *(v30 + 464) = 0u;
  *(v30 + 416) = 0u;
  *(v30 + 432) = 0u;
  *(v30 + 384) = 0u;
  *(v30 + 400) = 0u;
  *(v30 + 352) = 0u;
  *(v30 + 368) = 0u;
  *(v30 + 320) = 0u;
  *(v30 + 336) = 0u;
  *(v30 + 288) = 0u;
  *(v30 + 304) = 0u;
  *(v30 + 256) = 0u;
  *(v30 + 272) = 0u;
  *(v30 + 224) = 0u;
  *(v30 + 240) = 0u;
  *(v30 + 192) = 0u;
  *(v30 + 208) = 0u;
  *(v30 + 160) = 0u;
  *(v30 + 176) = 0u;
  *(v30 + 128) = 0u;
  *(v30 + 144) = 0u;
  *(v30 + 96) = 0u;
  *(v30 + 112) = 0u;
  *(v30 + 64) = 0u;
  *(v30 + 80) = 0u;
  *(v30 + 32) = 0u;
  *(v30 + 48) = 0u;
  v31 = &v42;
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v31 = v42.__r_.__value_.__r.__words[0];
  }

  *(v30 + 16) = 0uLL;
  snprintf(v30, 0x200uLL, "%s\n", v31);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }
}

void sub_299FAE900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v54 - 57) < 0)
  {
    operator delete(*(v54 - 80));
  }

  _Unwind_Resume(exception_object);
}

void _BBUException::~_BBUException(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

void _BBUException::_BBUException(_BBUException *this, const _BBUException *a2)
{
  *this = &unk_2A20319A0;
  strncpy(this + 8, a2 + 8, 0x200uLL);
  *(this + 130) = *(a2 + 130);
}

ctu::llvm::StringRef *ctu::llvm::StringRef::StringRef(ctu::llvm::StringRef *this, const char *__s)
{
  *this = __s;
  if (!__s)
  {
    ctu::llvm::StringRef::StringRef();
  }

  *(this + 1) = strlen(__s);
  return this;
}

uint64_t eUICC::logEUICCData(int *a1)
{
  gBBULogMaskGet();
  v2 = *(a1 + 5);
  v3 = *a1;
  ctu::hex((a1 + 7), 0x10);
  v30 = *(a1 + 23);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "status 0x%x sw1_sw2 0x%x eid 0x%s op_mode 0x%hhx\n", v4, v5, v6, v3);
  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  gBBULogMaskGet();
  v7 = v35;
  ctu::hex((a1 + 6), 0x20);
  if (v36 < 0)
  {
    LOBYTE(v7) = v35[0];
  }

  ctu::hex((a1 + 14), 8);
  ctu::hex((a1 + 16), 8);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "current_fw_version %s main_fw_nonce 0x%s gold_fw_nonce 0x%s\n", v8, v9, v10, v7);
  if (v32 < 0)
  {
    operator delete(__p);
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  gBBULogMaskGet();
  ctu::hex((a1 + 18), 0x10);
  v11 = v36;
  v12 = v35[0];
  ctu::hex((a1 + 147), 0x10);
  if (v11 >= 0)
  {
    v16 = v35;
  }

  else
  {
    LOBYTE(v16) = v12;
  }

  v28 = *(a1 + 111);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "main_fw_pcf_mac 0x%s gold_fw_pcf_mac 0x%s pcf_version 0x%x\n", v13, v14, v15, v16);
  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  gBBULogMaskGet();
  ctu::hex((a1 + 60), 3);
  v17 = v36;
  v18 = v35[0];
  ctu::hex((a1 + 243), 0x20);
  if (v17 >= 0)
  {
    v22 = v35;
  }

  else
  {
    LOBYTE(v22) = v18;
  }

  v29 = *(a1 + 4);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "loader_version 0x%s key_id 0x%s perso %d\n", v19, v20, v21, v22);
  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  gBBULogMaskGet();
  *(a1 + 279);
  v27 = *(a1 + 276);
  return _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "chip_id 0x%x stream_apdu_max_apdus 0x%x isAbsentOk: %s\n", v23, v24, v25, *(a1 + 275));
}

void sub_299FAEE1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 49) < 0)
  {
    operator delete(*(v25 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t vinyl_unzStringFileNameCompare(const char *a1, const char *a2, int a3)
{
  if (a3 == 1)
  {
    return strcmp(a1, a2);
  }

  while (1)
  {
    v5 = *a1++;
    v4 = v5;
    v7 = *a2++;
    v6 = v7;
    if ((v4 - 97) < 0x1A)
    {
      LOBYTE(v4) = v4 - 32;
    }

    if ((v6 - 97) < 0x1A)
    {
      LOBYTE(v6) = v6 - 32;
    }

    if (!v4)
    {
      break;
    }

    if (!v6)
    {
      return 1;
    }

    if (v4 < v6)
    {
      return 0xFFFFFFFFLL;
    }

    if (v4 > v6)
    {
      return 1;
    }
  }

  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void *vinyl_unzOpen2(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  memset(__src, 0, 336);
  if (a2)
  {
    v5 = a2[1];
    __src[0] = *a2;
    __src[1] = v5;
    v6 = a2[3];
    __src[2] = a2[2];
    __src[3] = v6;
    v7 = (*&__src[0])(*(&v6 + 1), a1, 5, a3);
  }

  else
  {
    vinyl_fill_fopen_filefunc(__src);
    v7 = (*&__src[0])(*(&__src[3] + 1), a1, 5, a3);
  }

  v8 = v7;
  *&__src[4] = v7;
  if (v7)
  {
    if ((*&__src[2])(*(&__src[3] + 1), v7, 0, 2) || ((v10 = (*(&__src[1] + 1))(*(&__src[3] + 1), v8), v11 = v10, v10 >= 0xFFFF) ? (v12 = 0xFFFFLL) : (v12 = v10), (v13 = malloc(0x404uLL)) == 0))
    {
      v9 = 0;
      v36 = 0;
    }

    else
    {
      v14 = v13;
      if (v11 >= 5)
      {
        v15 = 4;
        while (2)
        {
          v16 = v15 + 1024;
          if (v15 + 1024 >= v12)
          {
            v15 = v12;
          }

          else
          {
            v15 += 1024;
          }

          v17 = v15 >= 0x404 ? 1028 : v15;
          if (!(*&__src[2])(*(&__src[3] + 1), v8, v11 - v15, 0) && (*(&__src[0] + 1))(*(&__src[3] + 1), v8, v14, v17) == v17)
          {
            v18 = (v17 - 4);
            v19 = v15 - v11 - v18;
            v20 = v17 - 3;
            v21 = &v14[v18 + 1];
            while (*(v21 - 1) != 80 || *v21 != 75 || v21[1] != 5 || v21[2] != 6)
            {
              ++v19;
              --v21;
              v22 = __OFSUB__(v20--, 1);
              if ((v20 < 0) ^ v22 | (v20 == 0))
              {
                goto LABEL_28;
              }
            }

            if (v19)
            {
              v9 = -v19;
              v36 = 1;
              goto LABEL_33;
            }

LABEL_28:
            if (v16 < v12)
            {
              continue;
            }
          }

          break;
        }
      }

      v9 = 0;
      v36 = 0;
LABEL_33:
      free(v14);
    }

    v38 = 0;
    v39 = 0;
    v37 = 0;
    v33 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v9, 0);
    HIDWORD(v34) = unzlocal_getLong(__src, *&__src[4], &v40);
    LODWORD(v34) = unzlocal_getShort(__src, *&__src[4], &v39);
    Short = unzlocal_getShort(__src, *&__src[4], &v38);
    v23 = unzlocal_getShort(__src, *&__src[4], &__src[4] + 1);
    v24 = unzlocal_getShort(__src, *&__src[4], &v37);
    v26 = v37;
    v25 = v38;
    v27 = v39;
    v28 = *(&__src[4] + 1);
    Long = unzlocal_getLong(__src, *&__src[4], &__src[8]);
    v30 = unzlocal_getLong(__src, *&__src[4], &__src[8] + 1);
    v31 = unzlocal_getShort(__src, *&__src[4], &__src[5]);
    if (v9 < *&__src[8] + *(&__src[8] + 1) || v30 | Long | v31 || v26 != v28 || v25 || v27 || !v36 || v24 || v23 || Short || v34 || v33)
    {
      (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
      return 0;
    }

    else
    {
      *(&__src[5] + 1) = v9 - (*&__src[8] + *(&__src[8] + 1));
      *(&__src[7] + 1) = v9;
      *&__src[18] = 0;
      DWORD2(__src[18]) = 0;
      v8 = malloc(0x150uLL);
      memcpy(v8, __src, 0x150uLL);
      vinyl_unzGoToFirstFile(v8);
    }
  }

  return v8;
}

uint64_t unzlocal_getLong(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = 0;
  if (unzlocal_getByte(a1, a2, &v11) || (v6 = v11, unzlocal_getByte(a1, a2, &v11)) || (v7 = v11, unzlocal_getByte(a1, a2, &v11)))
  {
    v8 = 0;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v6 + (v7 << 8) + (v11 << 16);
    result = unzlocal_getByte(a1, a2, &v11);
    v8 = v10 + (v11 << 24);
    if (result)
    {
      v8 = 0;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t unzlocal_getShort(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  if (unzlocal_getByte(a1, a2, &v9))
  {
    v6 = 0;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = v9;
    result = unzlocal_getByte(a1, a2, &v9);
    v6 = v8 + (v9 << 8);
    if (result)
    {
      v6 = 0;
    }
  }

  *a3 = v6;
  return result;
}

uint64_t vinyl_unzGoToFirstFile(void *a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = a1[17];
  a1[12] = 0;
  a1[13] = v2;
  result = unzlocal_GetCurrentFileInfoInternal(a1, (a1 + 18), a1 + 35, 0, 0, 0, 0, 0, 0);
  a1[14] = result == 0;
  return result;
}

uint64_t vinyl_unzClose(uint64_t a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (*(a1 + 288))
  {
    vinyl_unzCloseCurrentFile(a1);
  }

  (*(a1 + 40))(*(a1 + 56), *(a1 + 64));
  free(a1);
  return 0;
}

uint64_t vinyl_unzCloseCurrentFile(uint64_t a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = *(a1 + 288);
  if (!v2)
  {
    return 4294967194;
  }

  if (*(v2 + 184) || *(v2 + 280))
  {
    v3 = 0;
  }

  else if (*(v2 + 160) == *(v2 + 168))
  {
    v3 = 0;
  }

  else
  {
    v3 = 4294967191;
  }

  if (*v2)
  {
    free(*v2);
  }

  *v2 = 0;
  if (*(v2 + 128))
  {
    inflateEnd((v2 + 8));
  }

  free(v2);
  *(a1 + 288) = 0;
  return v3;
}

uint64_t vinyl_unzGetGlobalInfo(uint64_t a1, _OWORD *a2)
{
  if (!a1)
  {
    return 4294967194;
  }

  result = 0;
  *a2 = *(a1 + 72);
  return result;
}

uint64_t unzlocal_GetCurrentFileInfoInternal(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  if (!a1)
  {
    return 4294967194;
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 88) + *(a1 + 104), 0) || (v52 = 0, unzlocal_getLong(a1, *(a1 + 64), &v52)))
  {
    v11 = -1;
  }

  else if (v52 == 33639248)
  {
    v11 = 0;
  }

  else
  {
    v11 = -103;
  }

  v46 = v11;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0;
  Short = unzlocal_getShort(a1, *(a1 + 64), &v54);
  v44 = unzlocal_getShort(a1, *(a1 + 64), &v54 + 1);
  v12 = unzlocal_getShort(a1, *(a1 + 64), &v55);
  v13 = unzlocal_getShort(a1, *(a1 + 64), &v55 + 1);
  Long = unzlocal_getLong(a1, *(a1 + 64), &v56);
  v15.i32[0] = v56;
  v16 = vshlq_u32(vdupq_n_s32(v56), xmmword_299FE2E60);
  v16.i32[0] = vshlq_u32(v15, xmmword_299FE2E50).u32[0];
  LODWORD(v62) = ((v56 >> 21) & 0xF) - 1;
  HIDWORD(v62) = (v56 >> 25) + 1980;
  v61 = vandq_s8(v16, xmmword_299FE2E70);
  v17 = unzlocal_getLong(a1, *(a1 + 64), &v56 + 1) | Long;
  v18 = unzlocal_getLong(a1, *(a1 + 64), &v57);
  v19 = v17 | v18 | unzlocal_getLong(a1, *(a1 + 64), &v57 + 1);
  v20 = v19 | unzlocal_getShort(a1, *(a1 + 64), &v58);
  v21 = unzlocal_getShort(a1, *(a1 + 64), &v58 + 1);
  v22 = unzlocal_getShort(a1, *(a1 + 64), &v59);
  v23 = unzlocal_getShort(a1, *(a1 + 64), &v59 + 1);
  v24 = unzlocal_getShort(a1, *(a1 + 64), &v60);
  v25 = unzlocal_getLong(a1, *(a1 + 64), &v60 + 1);
  if (unzlocal_getLong(a1, *(a1 + 64), &v53) | v25 | v24 | v23 | v22 | v21 | v20 | v13 | v12 | v44 | Short)
  {
    v26 = 0xFFFFFFFFLL;
  }

  else
  {
    v26 = v46;
  }

  v27 = v58;
  if (a4)
  {
    v29 = a7;
    v28 = a6;
    if (v26)
    {
      v31 = a8;
    }

    else
    {
      v30 = a5;
      v31 = a8;
      if (v58 < a5)
      {
        *(a4 + v58) = 0;
        v30 = v27;
      }

      v26 = 0;
      if (a5 && v27)
      {
        if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64)) == v30)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0xFFFFFFFFLL;
        }
      }

      v27 -= v30;
    }
  }

  else
  {
    v28 = a6;
    v31 = a8;
    v29 = a7;
  }

  v32 = *(&v58 + 1);
  if (!v28 || v26)
  {
    v35 = *(&v58 + 1) + v27;
    if (!v31)
    {
      goto LABEL_56;
    }

    goto LABEL_42;
  }

  if (*(&v58 + 1) >= v29)
  {
    v33 = v29;
  }

  else
  {
    v33 = *(&v58 + 1);
  }

  if (!v27)
  {
    v26 = 0;
    if (!v29)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v34 = (*(a1 + 32))(*(a1 + 56), *(a1 + 64), v27, 1);
  if (v34)
  {
    v26 = 0xFFFFFFFFLL;
  }

  else
  {
    v26 = 0;
  }

  if (!v34)
  {
    v27 = 0;
  }

  if (v29)
  {
LABEL_37:
    if (v32)
    {
      if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64), v28, v33) == v33)
      {
        v26 = v26;
      }

      else
      {
        v26 = 0xFFFFFFFFLL;
      }
    }
  }

LABEL_41:
  v35 = v32 - v33 + v27;
  if (!v31)
  {
    goto LABEL_56;
  }

LABEL_42:
  if (!v26)
  {
    v36 = v59;
    v37 = a9;
    if (v59 < a9)
    {
      *(v31 + v59) = 0;
      v37 = v36;
    }

    if (v35)
    {
      if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), v35, 1))
      {
        v26 = 0xFFFFFFFFLL;
      }

      else
      {
        v26 = 0;
      }

      if (!a9)
      {
        goto LABEL_56;
      }

LABEL_52:
      if (v36)
      {
        if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64), v31, v37) == v37)
        {
          v26 = v26;
        }

        else
        {
          v26 = 0xFFFFFFFFLL;
        }
      }

      goto LABEL_56;
    }

    v26 = 0;
    if (a9)
    {
      goto LABEL_52;
    }
  }

LABEL_56:
  if (a2 && !v26)
  {
    v38 = v61;
    *(a2 + 96) = v60;
    *(a2 + 112) = v38;
    *(a2 + 128) = v62;
    v39 = v57;
    *(a2 + 32) = v56;
    *(a2 + 48) = v39;
    v40 = v59;
    *(a2 + 64) = v58;
    *(a2 + 80) = v40;
    v41 = v55;
    *a2 = v54;
    *(a2 + 16) = v41;
  }

  if (a3 && !v26)
  {
    *a3 = v53;
  }

  return v26;
}

uint64_t vinyl_unzGoToNextFile(void *a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (!a1[14])
  {
    return 4294967196;
  }

  v2 = a1[9];
  v3 = a1[12] + 1;
  if (v2 != 0xFFFF && v3 == v2)
  {
    return 4294967196;
  }

  v5 = a1[26] + a1[27] + a1[28] + a1[13] + 46;
  a1[12] = v3;
  a1[13] = v5;
  result = unzlocal_GetCurrentFileInfoInternal(a1, (a1 + 18), a1 + 35, 0, 0, 0, 0, 0, 0);
  a1[14] = result == 0;
  return result;
}

uint64_t vinyl_unzLocateFile(uint64_t a1, char *__s, int a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (a1 && strlen(__s) <= 0xFF)
  {
    if (*(a1 + 112))
    {
      v8 = *(a1 + 96);
      v9 = *(a1 + 104);
      v18 = *(a1 + 240);
      v19 = *(a1 + 256);
      v10 = *(a1 + 280);
      v20 = *(a1 + 272);
      v14 = *(a1 + 176);
      v15 = *(a1 + 192);
      v16 = *(a1 + 208);
      v17 = *(a1 + 224);
      v12 = *(a1 + 144);
      v13 = *(a1 + 160);
      v11 = *(a1 + 136);
      *(a1 + 96) = 0;
      *(a1 + 104) = v11;
      result = unzlocal_GetCurrentFileInfoInternal(a1, a1 + 144, (a1 + 280), 0, 0, 0, 0, 0, 0);
      for (*(a1 + 112) = result == 0; !result; result = vinyl_unzGoToNextFile(a1))
      {
        result = unzlocal_GetCurrentFileInfoInternal(a1, 0, 0, v21, 0x100uLL, 0, 0, 0, 0);
        if (result)
        {
          break;
        }

        result = vinyl_unzStringFileNameCompare(v21, __s, a3);
        if (!result)
        {
          goto LABEL_4;
        }
      }

      *(a1 + 96) = v8;
      *(a1 + 104) = v9;
      *(a1 + 240) = v18;
      *(a1 + 256) = v19;
      *(a1 + 176) = v14;
      *(a1 + 192) = v15;
      *(a1 + 208) = v16;
      *(a1 + 224) = v17;
      *(a1 + 144) = v12;
      *(a1 + 160) = v13;
      *(a1 + 272) = v20;
      *(a1 + 280) = v10;
    }

    else
    {
      result = 4294967196;
    }
  }

  else
  {
    result = 4294967194;
  }

LABEL_4:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t vinyl_unzGetFilePos(int8x16_t *a1, int8x16_t *a2)
{
  result = 4294967194;
  if (a1 && a2)
  {
    if (a1[7].i64[0])
    {
      result = 0;
      *a2 = vextq_s8(a1[6], a1[6], 8uLL);
    }

    else
    {
      return 4294967196;
    }
  }

  return result;
}

uint64_t vinyl_unzGoToFilePos(int8x16_t *a1, int8x16_t *a2)
{
  result = 4294967194;
  if (a1)
  {
    if (a2)
    {
      a1[6] = vextq_s8(*a2, *a2, 8uLL);
      result = unzlocal_GetCurrentFileInfoInternal(a1, a1[9].i64, &a1[17].i64[1], 0, 0, 0, 0, 0, 0);
      a1[7].i64[0] = result == 0;
    }
  }

  return result;
}

uint64_t vinyl_unzOpenCurrentFile3(uint64_t a1, _DWORD *a2, int *a3, int a4, _BYTE *a5)
{
  v56[2] = *MEMORY[0x29EDCA608];
  if (!a1 || !*(a1 + 112))
  {
    v17 = 4294967194;
    goto LABEL_49;
  }

  if (*(a1 + 288))
  {
    vinyl_unzCloseCurrentFile(a1);
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 88) + *(a1 + 280), 0))
  {
    goto LABEL_48;
  }

  v55 = 0;
  v56[0] = 0;
  v54 = 0;
  Long = unzlocal_getLong(a1, *(a1 + 64), v56);
  v11 = v56[0];
  Short = unzlocal_getShort(a1, *(a1 + 64), &v55);
  v13 = unzlocal_getShort(a1, *(a1 + 64), &v54);
  v14 = -103;
  if (!unzlocal_getShort(a1, *(a1 + 64), &v55))
  {
    v19 = v11 == 67324752 ? 0 : -103;
    v20 = v13 | Short | Long;
    v14 = v20 ? -1 : v19;
    if (!v20 && v11 == 67324752)
    {
      v14 = -103;
      if (v55 == *(a1 + 168))
      {
        if ((v55 & 0xFFFFFFFFFFFFFFF7) != 0)
        {
          v14 = -103;
        }

        else
        {
          v14 = 0;
        }
      }
    }
  }

  v15 = unzlocal_getLong(a1, *(a1 + 64), &v55);
  v16 = unzlocal_getLong(a1, *(a1 + 64), &v55) || v15 | v14 || v55 != *(a1 + 184) && (v54 & 8) == 0;
  v18 = 1;
  if (!unzlocal_getLong(a1, *(a1 + 64), &v55) && !v16)
  {
    v18 = v55 != *(a1 + 192) && (v54 & 8) == 0;
  }

  v21 = 1;
  if (!unzlocal_getLong(a1, *(a1 + 64), &v55) && !v18)
  {
    v21 = v55 != *(a1 + 200) && (v54 & 8) == 0;
  }

  v53 = 0;
  v22 = unzlocal_getShort(a1, *(a1 + 64), &v53);
  v23 = 0;
  v24 = v53;
  if (!v22 && !v21)
  {
    v23 = v53 == *(a1 + 208);
  }

  v52 = 0;
  if (unzlocal_getShort(a1, *(a1 + 64), &v52) || !v23)
  {
LABEL_48:
    v17 = 4294967193;
    goto LABEL_49;
  }

  v25 = *(a1 + 280);
  v26 = v52;
  v27 = malloc(0x120uLL);
  if (!v27)
  {
    goto LABEL_67;
  }

  v28 = v27;
  v29 = malloc(0x4000uLL);
  *v28 = v29;
  *(v28 + 17) = v24 + v25 + 30;
  *(v28 + 36) = v26;
  *(v28 + 19) = 0;
  *(v28 + 70) = a4;
  if (!v29)
  {
    free(v28);
    goto LABEL_67;
  }

  *(v28 + 16) = 0;
  if (a2)
  {
    *a2 = *(a1 + 168);
  }

  if (a3)
  {
    *a3 = 6;
    v30 = *(a1 + 160) & 6;
    if (v30 > 3)
    {
      if (v30 == 6)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }
    }

    else
    {
      if (!v30)
      {
        goto LABEL_56;
      }

      v31 = 9;
    }

    *a3 = v31;
  }

LABEL_56:
  v34 = *(a1 + 184);
  *(v28 + 20) = 0;
  *(v28 + 21) = v34;
  v35 = *(a1 + 168);
  *(v28 + 32) = *(a1 + 64);
  *(v28 + 33) = v35;
  v36 = *(a1 + 16);
  *(v28 + 12) = *a1;
  *(v28 + 13) = v36;
  v37 = *(a1 + 48);
  *(v28 + 14) = *(a1 + 32);
  *(v28 + 15) = v37;
  *(v28 + 34) = *(a1 + 88);
  *(v28 + 6) = 0;
  if (!a4 && v35 == 8)
  {
    *(v28 + 1) = 0;
    *(v28 + 4) = 0;
    *(v28 + 10) = 0;
    *(v28 + 11) = 0;
    *(v28 + 9) = 0;
    v38 = inflateInit2_((v28 + 8), -15, "1.2.12", 112);
    if (v38)
    {
      v17 = v38;
      free(v28);
      goto LABEL_49;
    }

    *(v28 + 16) = 1;
    v25 = *(a1 + 280);
  }

  *(v28 + 11) = *(a1 + 192);
  *(v28 + 15) = v25 + (v26 + v24) + 30;
  *(v28 + 4) = 0;
  *(a1 + 288) = v28;
  if (!a5)
  {
    v17 = 0;
    goto LABEL_49;
  }

  v39 = 878082192;
  crc_table = get_crc_table();
  *(a1 + 304) = xmmword_299FE2E80;
  *(a1 + 320) = 878082192;
  *(a1 + 328) = crc_table;
  v41 = *a5;
  if (*a5)
  {
    v42 = a5 + 1;
    v43 = 305419896;
    v44 = 591751049;
    do
    {
      v43 = crc_table[v41 ^ v43] ^ (v43 >> 8);
      v44 = 134775813 * (v44 + v43) + 1;
      *(a1 + 304) = v43;
      *(a1 + 312) = v44;
      v39 = crc_table[(v39 ^ BYTE3(v44))] ^ (v39 >> 8);
      *(a1 + 320) = v39;
      v45 = *v42++;
      v41 = v45;
    }

    while (v45);
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(*(a1 + 288) + 272) + *(*(a1 + 288) + 120), 0) || (*(a1 + 8))(*(a1 + 56), *(a1 + 64), v56, 12) < 0xC)
  {
LABEL_67:
    v17 = 4294967192;
    goto LABEL_49;
  }

  v46 = 0;
  v48 = *(a1 + 320);
  v47 = *(a1 + 328);
  v49 = *(a1 + 304);
  v50 = *(a1 + 312);
  do
  {
    v51 = *(v56 + v46) ^ (((v48 & 0xFFFD ^ 3) * (v48 | 2)) >> 8);
    *(v56 + v46) = v51;
    v49 = *(v47 + 8 * (v51 ^ v49)) ^ (v49 >> 8);
    v50 = 134775813 * (v50 + v49) + 1;
    *(a1 + 304) = v49;
    *(a1 + 312) = v50;
    v48 = *(v47 + 8 * (v48 ^ BYTE3(v50))) ^ (v48 >> 8);
    *(a1 + 320) = v48;
    ++v46;
  }

  while (v46 != 12);
  v17 = 0;
  *(*(a1 + 288) + 120) += 12;
  *(a1 + 296) = 1;
LABEL_49:
  v32 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t vinyl_unzReadCurrentFile(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  v4 = *(a1 + 288);
  if (!v4)
  {
    return 4294967194;
  }

  if (!*v4)
  {
    return 4294967196;
  }

  if (!a3)
  {
    return 0;
  }

  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  v5 = a3;
  v6 = *(v4 + 184);
  if (v6 < a3 && !*(v4 + 280))
  {
    *(v4 + 40) = v6;
    a3 = v6;
  }

  v7 = *(v4 + 176);
  v8 = *(v4 + 16);
  if (v7 + v8 < v5 && *(v4 + 280))
  {
    a3 = v8 + v7;
    *(v4 + 40) = v8 + v7;
  }

  if (!a3)
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    while (1)
    {
      LODWORD(v10) = *(v4 + 16);
      if (!v10)
      {
        v11 = *(v4 + 176);
        if (v11)
        {
          if (v11 >= 0x4000)
          {
            v10 = 0x4000;
          }

          else
          {
            v10 = *(v4 + 176);
          }

          if ((*(v4 + 224))(*(v4 + 248), *(v4 + 256), *(v4 + 272) + *(v4 + 120), 0) || (*(v4 + 200))(*(v4 + 248), *(v4 + 256), *v4, v10) != v10)
          {
            return 0xFFFFFFFFLL;
          }

          if (*(a1 + 296))
          {
            v12 = 0;
            do
            {
              v13 = *(a1 + 328);
              v14 = *(*v4 + v12) ^ (((*(a1 + 320) & 0xFFFD ^ 3) * (*(a1 + 320) | 2u)) >> 8);
              *(*v4 + v12) ^= ((*(a1 + 320) & 0xFFFD ^ 3) * (*(a1 + 320) | 2)) >> 8;
              v15 = *(v13 + 8 * (v14 ^ *(a1 + 304))) ^ (*(a1 + 304) >> 8);
              v16 = 134775813 * (*(a1 + 312) + v15) + 1;
              *(a1 + 304) = v15;
              *(a1 + 312) = v16;
              *(a1 + 320) = *(v13 + 8 * (*(a1 + 320) ^ BYTE3(v16))) ^ (*(a1 + 320) >> 8);
              *(*v4 + v12++) = v14;
            }

            while (v10 != v12);
          }

          *(v4 + 120) += v10;
          *(v4 + 176) -= v10;
          *(v4 + 8) = *v4;
          *(v4 + 16) = v10;
        }

        else
        {
          LODWORD(v10) = 0;
        }
      }

      if (*(v4 + 264) && !*(v4 + 280))
      {
        break;
      }

      if (v10 || *(v4 + 176))
      {
        v17 = *(v4 + 40);
        v10 = v17 >= v10 ? v10 : v17;
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            *(*(v4 + 32) + i) = *(*(v4 + 8) + i);
          }

          v19 = v10;
        }

        else
        {
          v19 = 0;
        }

        *(v4 + 160) = crc32(*(v4 + 160), *(v4 + 32), v10);
        *(v4 + 184) -= v19;
        *(v4 + 16) -= v10;
        v20 = *(v4 + 40) - v10;
        *(v4 + 40) = v20;
        *(v4 + 32) += v19;
        *(v4 + 8) += v19;
        v9 = (v10 + v9);
        *(v4 + 48) += v19;
        if (v20)
        {
          continue;
        }
      }

      return v9;
    }

    v21 = *(v4 + 48);
    v22 = *(v4 + 32);
    v23 = inflate((v4 + 8), 2);
    if ((v23 & 0x80000000) == 0 && *(v4 + 56))
    {
      v26 = *(v4 + 48);
      v27 = v26 - v21;
      *(v4 + 160) = crc32(*(v4 + 160), v22, v26 - v21);
      *(v4 + 184) -= v27;
      return 4294967293;
    }

    v24 = *(v4 + 48) - v21;
    *(v4 + 160) = crc32(*(v4 + 160), v22, v24);
    *(v4 + 184) -= v24;
    v9 = (v9 + v24);
    if (v23)
    {
      break;
    }

    if (!*(v4 + 40))
    {
      return v9;
    }
  }

  if (v23 == 1)
  {
    return v9;
  }

  else
  {
    return v23;
  }
}

uint64_t vinyl_unztell(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 288)) != 0)
  {
    return *(v1 + 48);
  }

  else
  {
    return -102;
  }
}

uint64_t vinyl_unzeof(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 288)) != 0)
  {
    return *(v1 + 184) == 0;
  }

  else
  {
    return 4294967194;
  }
}

unint64_t vinyl_unzGetLocalExtrafield(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  v3 = *(a1 + 288);
  if (!v3)
  {
    return 4294967194;
  }

  v5 = *(v3 + 152);
  result = *(v3 + 144) - v5;
  if (a2)
  {
    if (result >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = result;
    }

    if (v7)
    {
      if ((*(v3 + 224))(*(v3 + 248), *(v3 + 256), *(v3 + 136) + v5, 0))
      {
        return 0xFFFFFFFFLL;
      }

      else if ((*(v3 + 200))(*(v3 + 248), *(v3 + 256), a2, v7) == v7)
      {
        return v7;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t vinyl_unzGetGlobalComment(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (*(a1 + 80) >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *(a1 + 80);
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 120) + 22, 0))
  {
    return 0xFFFFFFFFLL;
  }

  if (v6)
  {
    *a2 = 0;
    if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64), a2, v6) != v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (!a2)
  {
    return v6;
  }

  v8 = *(a1 + 80);
  if (v8 < a3)
  {
    a2[v8] = 0;
  }

  return v6;
}

uint64_t vinyl_unzGetOffset(void *a1)
{
  if (!a1)
  {
    return -102;
  }

  if (a1[14])
  {
    v1 = a1[9];
    v2 = !v1 || v1 == 0xFFFF;
    if (v2 || a1[12] != v1)
    {
      return a1[13];
    }
  }

  return 0;
}

uint64_t vinyl_unzSetOffset(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294967194;
  }

  a1[12] = a1[9];
  a1[13] = a2;
  result = unzlocal_GetCurrentFileInfoInternal(a1, (a1 + 18), a1 + 35, 0, 0, 0, 0, 0, 0);
  a1[14] = result == 0;
  return result;
}

uint64_t unzlocal_getByte(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = 0;
  if ((*(a1 + 8))(*(a1 + 56), a2, &v7, 1) == 1)
  {
    result = 0;
    *a3 = v7;
  }

  else if ((*(a1 + 48))(*(a1 + 56), a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }

  return result;
}

eUICC::eUICCVinylMAVValve *eUICC::eUICCVinylMAVValve::eUICCVinylMAVValve(eUICC::eUICCVinylMAVValve *this, void *a2, int a3, char a4)
{
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 275) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *this = &unk_2A20319E0;
  *(this + 37) = a2;
  *(this + 73) = a3;
  *(this + 291) = a4;
  *(this + 304) = 15;
  eUICC::eUICCVinylValve::hardwareHasESIM = eUICC::eUICCVinylMAVValve::HardwareHasESIM(this, &eUICC::eUICCVinylValve::simSKUID);
  return this;
}

uint64_t eUICC::eUICCVinylMAVValve::HardwareHasESIM(eUICC::eUICCVinylMAVValve *this, unsigned __int8 *a2)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN5eUICC18eUICCVinylMAVValve15HardwareHasESIMERh_block_invoke;
  v3[3] = &__block_descriptor_tmp_4;
  v3[4] = this;
  v3[5] = a2;
  if (eUICC::eUICCVinylValve::simSKUOnceToken != -1)
  {
    dispatch_once(&eUICC::eUICCVinylValve::simSKUOnceToken, v3);
  }

  return eUICC::eUICCVinylMAVValve::HardwareHasESIM(unsigned char &)::result;
}

uint64_t ___ZN5eUICC18eUICCVinylMAVValve15HardwareHasESIMERh_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = capabilities::euicc::supportsGenericUpdater(a1);
  if (!result)
  {
    return result;
  }

  v16[0] = *(v2 + 296);
  v16[1] = 30000;
  v6 = eUICC::GetSIMSKUID::Perform(v16);
  if (v6 || v4 != 1)
  {
    gBBULogMaskGet();
    return _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "GetSIMSKUID error %d status 0x%hhx\n", v10, v11, v12, v6);
  }

  **(a1 + 40) = v5;
  v7 = **(a1 + 40);
  result = TelephonyRadiosGetRadio();
  if (result == 13)
  {
    goto LABEL_7;
  }

  v8 = result;
  if (result != 18)
  {
    if (result != 17)
    {
      gBBULogMaskGet();
      return _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "MAV radio %d eSIM lookup not supported!\n", v13, v14, v15, v8);
    }

LABEL_7:
    if (v7 <= 6 && ((1 << v7) & 0x74) != 0)
    {
      eUICC::eUICCVinylMAVValve::HardwareHasESIM(unsigned char &)::result = 1;
    }

    return result;
  }

  if (v7 - 7 <= 1)
  {
    eUICC::eUICCVinylMAVValve::HardwareHasESIM(unsigned char &)::result = 1;
  }

  return result;
}

void *eUICC::eUICCVinylMAVValve::GetVinylType@<X0>(eUICC::eUICCVinylMAVValve *this@<X0>, void *a2@<X8>)
{
  v14 = *(this + 37);
  v15 = *(this + 73);
  v4 = eUICC::GetVinylType::Perform();
  v6 = v5;
  v7 = v4;
  v9 = v8;
  gBBULogMaskGet();
  if (v7 || v9 != 1)
  {
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "error %d status 0x%hhx\n", v10, v11, v12, v7);
  }

  else
  {
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "status 0x%hhx cards_type: %hhu \n", v10, v11, v12, 1);
    *(this + 2) = 1;
    *(this + 285) = v6;
    *(this + 288) = v6 == 3;
  }

  return memcpy(a2, this + 8, 0x11BuLL);
}

void *eUICC::eUICCVinylMAVValve::GetData@<X0>(eUICC::eUICCVinylMAVValve *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v48 = *MEMORY[0x29EDCA608];
  if (!*(this + 37))
  {
    eUICC::eUICCVinylMAVValve::GetData(this, a2, a3, a4, a5, a6, a7, a8, v20);
    goto LABEL_8;
  }

  if (*(this + 290) == 1)
  {
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "eUICCVinylData cache is valid. Using cached data!\n", v11, v12, v13, v20);
  }

  else
  {
    *(this + 248) = 0u;
    *(this + 264) = 0u;
    *(this + 216) = 0u;
    *(this + 232) = 0u;
    *(this + 184) = 0u;
    *(this + 200) = 0u;
    *(this + 152) = 0u;
    *(this + 168) = 0u;
    *(this + 120) = 0u;
    *(this + 136) = 0u;
    *(this + 88) = 0u;
    *(this + 104) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 8) = 0u;
    *(this + 275) = 0u;
    *(this + 2) = TelephonyRadiosGetRadioVendor() - 2 < 3;
    v23 = *(this + 37);
    v24 = *(this + 73);
    eUICC::GetData::Perform();
    *(this + 2) = v26;
    *(this + 13) = bswap32(v28) >> 16;
    *(this + 15) = v29;
    *(this + 31) = v30;
    *(this + 2) = v31;
    *(this + 3) = v32;
    *(this + 4) = v33;
    *(this + 5) = v34;
    *(this + 143) = *&v37[15];
    *(this + 7) = v36;
    *(this + 8) = *v37;
    *(this + 6) = v35;
    *(this + 218) = *&v41[15];
    *(this + 203) = *v41;
    *(this + 187) = v40;
    *(this + 171) = v39;
    *(this + 155) = v38;
    *(this + 115) = v42;
    *(this + 250) = v44;
    *(this + 124) = v43;
    *(this + 267) = v46;
    *(this + 251) = v45;
    *(this + 12) = v27;
    *(this + 283) = v47;
    v14 = eUICC::eUICCVinylValve::hardwareHasESIM;
    *(this + 289) = eUICC::eUICCVinylValve::hardwareHasESIM;
    *(this + 286) = eUICC::eUICCVinylValve::simSKUID;
    *(this + 287) = (v26 == 4) & (v14 ^ 1);
    if (*(this + 2) != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
    {
      gBBULogMaskGet();
      v21 = *(this + 2);
      v22 = *(this + 13);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "error %d status %u sw1_sw2 0x%x\n", v15, v16, v17, v25);
      goto LABEL_8;
    }

    *(this + 290) = 1;
  }

  eUICC::logEUICCData(this + 2);
LABEL_8:
  result = memcpy(a9, this + 8, 0x11BuLL);
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::SetCardMode(uint64_t a1, int a2, char a3)
{
  __src[36] = *MEMORY[0x29EDCA608];
  v6 = (a1 + 8);
  (*(*a1 + 8))(__src);
  memcpy(v6, __src, 0x11BuLL);
  if ((a3 & 1) == 0)
  {
    if (*v6 != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, "outData.Valid()");
      goto LABEL_8;
    }

    if (*(a1 + 31) == a2)
    {
      gBBULogMaskGet();
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "SwitchCardMode: Baseband already in mode %hhu\n", v13, v14, v15, a2);
LABEL_11:
      result = 0;
      goto LABEL_12;
    }
  }

  v7 = *(a1 + 292);
  __src[0] = *(a1 + 296);
  LOBYTE(__src[1]) = v7;
  BYTE1(__src[1]) = a2;
  WORD1(__src[1]) = 1;
  HIDWORD(__src[1]) = 10000;
  v9 = eUICC::SwitchMode::Perform();
  if (!v9 && (v8 & 0xFF00000000) == 0x100000000 && a2 == BYTE5(v8))
  {
    goto LABEL_11;
  }

  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "SwitchCardMode: Failed err %d status %hhu mode %d sw1 0x%x sw2 0x%x\n", v10, v11, v12, v9);
LABEL_8:
  result = 18;
LABEL_12:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::ResetCard(eUICC::eUICCVinylMAVValve *this)
{
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "eUICCVinylMAVValve::ResetCard not supported\n", v1, v2, v3, vars0);
  return 9;
}

uint64_t eUICC::eUICCVinylMAVValve::DeleteProfile(eUICC::eUICCVinylMAVValve *this, char a2)
{
  if (*(this + 37))
  {
    v2 = *(this + 73);
    v10 = *(this + 37);
    v11 = v2;
    v12 = a2;
    v13 = 0;
    v14 = 60000;
    v3 = eUICC::DeleteProfile::Perform();
    v5 = v3;
    if (v3 || (result = 0, v4 != 1))
    {
      gBBULogMaskGet();
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "DeleteProfile failed, error %d status %hhu sw1 0x%x sw2 0x%x\n", v7, v8, v9, v5);
      return 18;
    }
  }

  else
  {
    eUICC::eUICCVinylMAVValve::DeleteProfile(&v10);
    return v10;
  }

  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::StoreData(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v23 = *MEMORY[0x29EDCA608];
  v15 = *(v1 + 296);
  v16 = *(v1 + 292);
  v17 = v6[1] - *v6;
  eUICC::StoreData::Perform();
  if (v18 || v19 != 1)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v8, v9, v10, "rsp.Valid()");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to StoreData status %hhu SW1 0x%x SW2 0x%x\n", v11, v12, v13, v19);
    result = 18;
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v5, v22, &v22[v21], v21);
    result = 0;
  }

  *v3 = bswap32(v20) >> 16;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t eUICC::eUICCVinylMAVValve::LETOEnableEUICC(eUICC::eUICCVinylMAVValve *this)
{
  v11[0] = *(this + 37);
  v11[1] = 0x271000003201;
  result = eUICC::LETOMuxSwitch::Perform(v11);
  v3 = HIDWORD(result);
  if (result)
  {
    goto LABEL_6;
  }

  v4 = BYTE4(result) == 0;
  if ((v2 & 0xFF000000000000) != 0x5000000000000)
  {
    v4 = 0;
  }

  if (BYTE4(result) != 2 && !v4)
  {
LABEL_6:
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v5, v6, v7, "rsp.Valid() &&(( rsp.hwSetRsp == LETOMuxSwitch::MgrSetSIMHWSetResultType::kSuccess && rsp.contents.resultPhase == LETOMuxSwitch::ResultPhase::kTargetHWActivationCompleted) || rsp.hwSetRsp == LETOMuxSwitch::MgrSetSIMHWSetResultType::kErrorAlreadySet)");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to LETOEnableEUICC hwSetRsp %hhu resultAvailable %d srcSimHwSet %hhu targetSimHwSet %hhu resultPhase %hhu\n", v8, v9, v10, v3);
    return 18;
  }

  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::InstallTicket(uint64_t a1, CFDataRef *a2)
{
  if (*a2)
  {
    v4 = (*(*a1 + 16))(a1, 0, 0);
    if (v4)
    {
      v5 = v4;
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v6, v7, v8, "kBBUReturnSuccess == ret");
    }

    else
    {
      CFDataGetBytePtr(*a2);
      CFDataGetLength(*a2);
      v19 = *(a1 + 296);
      v20 = *(a1 + 292);
      v12 = eUICC::InstallTicket::Perform();
      v14 = v12;
      if (v12 || (v13 & 0xFF00000000) != 0x100000000)
      {
        gBBULogMaskGet();
        _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "InstallTicket failed error %d status %hhu sw1 0x%x sw2 0x%x\n", v15, v16, v17, v14);
        return 16;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v9, v10, v11, "installTicket");
    return 2;
  }

  return v5;
}

uint64_t eUICC::eUICCVinylMAVValve::StreamFirmware(eUICC::eUICCVinylMAVValve *this, __CFData *a2)
{
  __src[36] = *MEMORY[0x29EDCA608];
  VinylFirmware::getFirmwareAPDUs(a2, &v56);
  v4 = v56;
  v3 = v57;
  (*(*this + 8))(__src, this);
  memcpy(this + 8, __src, 0x11BuLL);
  if (*(this + 2) == TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    v5 = *(this + 284);
    if (!*(this + 284))
    {
      v5 = *(this + 304);
    }

    gBBULogMaskGet();
    v6 = v5;
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "~~~~ MAX APDU PER SET: %zu  ~~~~\n", v7, v8, v9, v5);
    v10 = (v3 - v4) >> 5;
    v55 = v10;
    if (v10 % v5)
    {
      v11 = v10 / v5 + 1;
    }

    else
    {
      v11 = v10 / v5;
    }

    if (v11)
    {
      v12 = (*(*this + 16))(this, 1, 0);
      if (v12)
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v13, v14, v15, "kBBUReturnSuccess == ret");
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v54 = 0;
        v24 = 32 * v5;
        v25 = v55;
        while (1)
        {
          v26 = v25 - v6;
          if (v25 >= v6)
          {
            v25 = v6;
          }

          v27 = v25 <= 1 ? 1 : v25;
          v28 = v55 - v23 * v6 >= v6 ? v6 : v55 - v23 * v6;
          LODWORD(__src[4]) = 15000;
          v29 = v24;
          __src[2] = operator new[](v24);
          __src[3] = v6;
          __src[0] = *(this + 37);
          LOBYTE(__src[1]) = *(this + 73);
          WORD1(__src[1]) = v11;
          WORD2(__src[1]) = v23;
          BYTE6(__src[1]) = v28;
          gBBULogMaskGet();
          _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "StreamFirmware set %d/%zu adpusThisSet %zu\n", v30, v31, v32, v23);
          if (v55 == v23 * v6)
          {
LABEL_25:
            if (eUICC::StreamAPDU::Perform() || (v40 & 0xFF00000000) != 0x100000000)
            {
              gBBULogMaskGet();
              _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed StreamAPDU set %d/%zu, error %d status %hhu sw1 0x%x sw2 0x%x\n", v42, v43, v44, v23);
              v41 = 0;
              v54 = 16;
            }

            else
            {
              v41 = 1;
            }
          }

          else
          {
            v33 = 0;
            v34 = 0;
            v35 = v22;
            while (__src[3] >= v34)
            {
              v36 = *(v56 + v35);
              v37 = *(v56 + v35 + 16);
              v38 = *(v56 + v35 + 24);
              v39 = (__src[2] + v33);
              *v39 = *(v56 + v35 + 8);
              v39[1] = v36;
              v39[2] = v38;
              v39[3] = v37;
              ++v34;
              v35 += 32;
              v33 += 32;
              if (v27 == v34)
              {
                goto LABEL_25;
              }
            }

            gBBULogMaskGet();
            _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v45, v46, v47, "j <= req.apdu_payload.apdu_data_size");
            gBBULogMaskGet();
            _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed SteamAPDU index '%d' is greater than max array size '%zu'", v48, v49, v50, v34);
            v41 = 0;
          }

          v51 = __src[2];
          __src[2] = 0;
          if (v51)
          {
            operator delete[](v51);
          }

          if ((v41 & 1) == 0)
          {
            break;
          }

          ++v23;
          v24 = v29;
          v22 += v29;
          v25 = v26;
          if (v11 <= v23)
          {
            v12 = 0;
            goto LABEL_36;
          }
        }

        v12 = v54;
      }
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v19, v20, v21, "apduSetCount");
      v12 = 15;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, "outData.Valid()");
    v12 = 18;
  }

LABEL_36:
  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  v52 = *MEMORY[0x29EDCA608];
  return v12;
}

void sub_299FB198C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::eUICCVinylMAVValve::InitPerso(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  *&__dst[6] = 0;
  *__dst = 0;
  *&__dst[14] = 30000;
  v4 = *(a1 + 296);
  v5 = *(a1 + 292);
  v6 = *a2;
  v8 = *(a2 + 8) - v6;
  if (v8 >= 0xC)
  {
    v9 = 12;
  }

  else
  {
    v9 = v8;
  }

  memcpy(__dst, v6, v9);
  v26 = v4;
  v27 = v5;
  v28 = 0;
  v29 = 0;
  v30 = v9;
  v31 = *__dst;
  v32 = *&__dst[16];
  eUICC::InitPersoSession::Perform();
  if (*__dst)
  {
    if (!**__dst && *(*__dst + 8) == 1 && *(*__dst + 11))
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, (*__dst + 13), (*__dst + 13 + *(*__dst + 11)), *(*__dst + 11));
      v10 = 0;
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "rsp->Valid() && rsp->contents.rsp_len");
      gBBULogMaskGet();
      v23 = *(*__dst + 10);
      v24 = *(*__dst + 11);
      v22 = *(*__dst + 9);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to InitPerso status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v14, v15, v16, *(*__dst + 8));
      v10 = 18;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "rsp");
    v10 = 11;
  }

  if (*&__dst[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&__dst[8]);
  }

  v20 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t eUICC::eUICCVinylMAVValve::AuthPerso(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = operator new(0x818uLL);
  bzero(v6 + 2, 0x810uLL);
  bzero(v6 + 3, 0x802uLL);
  v6[516] = 30000;
  *v6 = *(a1 + 296);
  *(v6 + 8) = *(a1 + 292);
  v7 = *a2;
  if (*(a2 + 8) - *a2 >= 0x800uLL)
  {
    v8 = 2048;
  }

  else
  {
    v8 = *(a2 + 8) - *a2;
  }

  memcpy(v6 + 14, v7, v8);
  *(v6 + 6) = v8;
  eUICC::AuthPersoSession::Perform();
  if (v23)
  {
    if (!*v23 && *(v23 + 8) == 1 && *(v23 + 11))
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, (v23 + 13), (v23 + 13 + *(v23 + 11)), *(v23 + 11));
      v9 = 0;
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v10, v11, v12, "rsp->Valid() && rsp->contents.rsp_len");
      gBBULogMaskGet();
      v21 = *(v23 + 10);
      v22 = *(v23 + 11);
      v20 = *(v23 + 9);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to AuthenticatePersoDevice status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v13, v14, v15, *(v23 + 8));
      v9 = 18;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, "rsp");
    v9 = 11;
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  operator delete(v6);
  return v9;
}

uint64_t eUICC::eUICCVinylMAVValve::FinalizePerso(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  memset(__dst, 0, 266);
  *(&__dst[16] + 2) = 30000;
  v3 = *(a1 + 296);
  v4 = *(a1 + 292);
  v5 = *a2;
  v7 = *(a2 + 8) - v5;
  if (v7 >= 0x100)
  {
    v8 = 256;
  }

  else
  {
    v8 = v7;
  }

  memcpy(__dst, v5, v8);
  v9 = *(a1 + 291);
  v25 = v3;
  v26 = v4;
  v27 = 0;
  v28 = v9;
  v29 = 0;
  v30 = v8;
  memcpy(v31, __dst, sizeof(v31));
  eUICC::FinalizePersoSession::Perform();
  if (*&__dst[0])
  {
    if (**&__dst[0] || *(*&__dst[0] + 8) != 1)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "rsp->Valid()");
      gBBULogMaskGet();
      v22 = *(*&__dst[0] + 9);
      v23 = *(*&__dst[0] + 10);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to FinalizePersoDevice status %hhu SW1 0x%x SW2 0x%x\n", v14, v15, v16, *(*&__dst[0] + 8));
      v10 = 18;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "rsp");
    v10 = 11;
  }

  if (*(&__dst[0] + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__dst[0] + 1));
  }

  v20 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t eUICC::eUICCVinylMAVValve::ValidatePerso(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = *MEMORY[0x29EDCA608];
  v30 = 0u;
  memset(v31, 0, 24);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  __dst = 0u;
  *&v31[24] = 30000;
  v4 = *(a1 + 296);
  v5 = *(a1 + 292);
  v6 = *a2;
  v8 = *(a2 + 8) - v6;
  if (v8 >= 0x78)
  {
    v9 = 120;
  }

  else
  {
    v9 = v8;
  }

  memcpy(&__dst, v6, v9);
  v40 = v29;
  v41 = v30;
  *v42 = *v31;
  *&v42[12] = *&v31[12];
  v36 = __dst;
  v37 = v26;
  v38 = v27;
  v32 = v4;
  v33 = v5;
  v34 = 0;
  v35 = v9;
  v39 = v28;
  eUICC::VinylValidatePerso::Perform(&v32, &__dst);
  if (__dst)
  {
    if (!*__dst && *(__dst + 8) == 1 && *(__dst + 11))
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, (__dst + 13), (__dst + 13 + *(__dst + 11)), *(__dst + 11));
      v10 = 0;
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "rsp->Valid() && rsp->contents.rsp_len");
      gBBULogMaskGet();
      v23 = *(__dst + 10);
      v24 = *(__dst + 11);
      v22 = *(__dst + 9);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to AuthenticatePersoDevice status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v14, v15, v16, *(__dst + 8));
      v10 = 18;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "rsp");
    v10 = 11;
  }

  if (*(&__dst + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__dst + 1));
  }

  v20 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t eUICC::eUICCVinylMAVValve::InstallPairingMSM(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v27 = *MEMORY[0x29EDCA608];
  v21 = 0;
  v20 = 0;
  v2 = *(v1 + 292);
  v4 = *v3;
  v5 = v3[1] - *v3;
  v17 = *(v1 + 296);
  v18 = v2;
  v19 = 0;
  v22 = v4;
  v23 = v5;
  v24 = 10000;
  eUICC::VinylManagePairing::Perform(&v17, &v25);
  v6 = v25;
  v7 = v26;
  gBBULogMaskGet();
  if (v6 || v7 != 1)
  {
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v8, v9, v10, "rsp.Valid()");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to InstallPairingMSM status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v12, v13, v14, v26);
    result = 18;
  }

  else
  {
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "InstallPairingMSM returning success\n", v8, v9, v10, v16);
    result = 0;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::ManagePairingGetNonce(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v26 = *MEMORY[0x29EDCA608];
  v4 = *(v1 + 292);
  v17 = *(v1 + 296);
  v18 = v4;
  v19 = 1;
  *v21 = 0;
  v20 = 0;
  *&v21[3] = 0;
  *&v21[7] = 10000;
  eUICC::VinylManagePairing::Perform(&v17, &v22);
  if (!v22 && v23 == 1 && v24)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v3, v25, &v25[v24], v24);
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "ManagePairingGetNonce returning success\n", v13, v14, v15, v16);
    result = 0;
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v5, v6, v7, "rsp.Valid() && rsp.contents.rsp_len");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "ManagePairingGetNonce Failed status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v8, v9, v10, v23);
    result = 18;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::ManagePairingAuthenticate(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v27 = *MEMORY[0x29EDCA608];
  v21 = 0;
  v20 = 0;
  v2 = *(v1 + 292);
  v4 = *v3;
  v5 = v3[1] - *v3;
  v17 = *(v1 + 296);
  v18 = v2;
  v19 = 2;
  v22 = v4;
  v23 = v5;
  v24 = 10000;
  eUICC::VinylManagePairing::Perform(&v17, &v25);
  v6 = v25;
  v7 = v26;
  gBBULogMaskGet();
  if (v6 || v7 != 1)
  {
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v8, v9, v10, "rsp.Valid()");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "ManagePairingAuthenticate Failed status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v12, v13, v14, v26);
    result = 18;
  }

  else
  {
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "ManagePairingAuthenticate returning success\n", v8, v9, v10, v16);
    result = 0;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void eUICC::eUICCVinylMAVValve::~eUICCVinylMAVValve(eUICC::eUICCVinylMAVValve *this)
{
  eUICC::eUICCVinylValve::~eUICCVinylValve(this);

  operator delete(v1);
}

uint64_t eUICCStateMachine::Run(unsigned int *a1, void *a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t *a6)
{
  v64 = 0;
  if (a5)
  {
    v49 = a5;
    ctu::cf::CFSharedRef<__CFDictionary const>::reset(&v64, &v49);
    cf = v64;
    if (v64)
    {
      CFRetain(v64);
    }
  }

  else
  {
    cf = 0;
  }

  Options::Options(&v49, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v55 & 1) != 0 || (v50)
  {
    v11 = 0;
  }

  else
  {
    v11 = v51 ^ 1;
  }

  gBBULogMaskGet();
  Options::ToString(&v49, __p);
  if (v47 >= 0)
  {
    v15 = __p;
  }

  else
  {
    LOBYTE(v15) = __p[0];
  }

  _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Options:\n%s\n", v12, v13, v14, v15);
  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = v49;
  v17 = v54;
  v18 = a6[1];
  v44 = *a6;
  v45 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  eUICC::VinylFactory::GetValve(a2, v16, v17, &v44, __p);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (__p[0])
  {
    v19 = *a1;
    *a1 = 0;
    gBBULogMaskGet();
    LOBYTE(v19) = eUICCStateMachine::StateAsString(v19);
    eUICCStateMachine::StateAsString(*a1);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Resetting state machine: %s --> %s\n", v20, v21, v22, v19);
    while (1)
    {
      if (*a1 > 6)
      {
        v27 = 0;
        goto LABEL_30;
      }

      gBBULogMaskGet();
      v23 = eUICCStateMachine::StateAsString(*a1);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Running at state %s\n", v24, v25, v26, v23);
      v27 = eUICCStateMachine::Step(a1, a3, a4);
      if (v27 == 45)
      {
        break;
      }

      gBBULogMaskGet();
      eUICCStateMachine::StateAsString(*a1);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Result %d next state %s allowRetry %d\n", v28, v29, v30, v27);
      if (((v27 != 0) & v11) == 1)
      {
        v27 = 0;
        v11 = 0;
        *a1 = 6;
      }

      if (v27)
      {
        goto LABEL_30;
      }
    }

    gBBULogMaskGet();
    v38 = eUICCStateMachine::StateAsString(*a1);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "eUICC -- back to host to personalize in state %s\n", v39, v40, v41, v38);
    v27 = 0;
  }

  else
  {
    gBBULogMaskGet();
    v31 = eUICCStateMachine::StateAsString(*a1);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Fatal Error: Error creating vinyl valve! Current State: %s\n", v32, v33, v34, v31);
    *a1 = 7;
    v27 = 9;
LABEL_30:
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "ret = %d\n", v35, v36, v37, v27);
  }

  v42 = __p[0];
  __p[0] = 0;
  if (v42)
  {
    (*(*v42 + 136))(v42);
  }

  if (v63 < 0)
  {
    operator delete(v62);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (v59 < 0)
  {
    operator delete(v58);
  }

  if (v57 < 0)
  {
    operator delete(v56);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  return v27;
}

void ctu::cf::CFSharedRef<__CFDictionary const>::reset(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    CFRelease(v4);
  }
}

const char *eUICCStateMachine::StateAsString(unsigned int a1)
{
  if (a1 > 8)
  {
    return "??????";
  }

  else
  {
    return off_29F293598[a1];
  }
}

uint64_t eUICCStateMachine::Step(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x29EDCA608];
  v25 = 7;
  v26[0] = 0;
  v27[0] = &unk_2A2031AA0;
  v27[1] = eUICCStateMachine::Start;
  v27[3] = v27;
  v28 = 2;
  v29[0] = &unk_2A2031AA0;
  v29[1] = eUICCStateMachine::Perso;
  v29[3] = v29;
  v30 = 1;
  v31[0] = &unk_2A2031AA0;
  v31[1] = eUICCStateMachine::Recovery;
  v31[3] = v31;
  v32 = 3;
  v33[0] = &unk_2A2031AA0;
  v33[1] = eUICCStateMachine::UpdateGold;
  v33[3] = v33;
  v34 = 4;
  v35[0] = &unk_2A2031AA0;
  v35[1] = eUICCStateMachine::UpdateMain;
  v35[3] = v35;
  v36 = 5;
  v37[0] = &unk_2A2031AA0;
  v37[1] = eUICCStateMachine::PostProcess;
  v37[3] = v37;
  v38 = 6;
  v39[0] = &unk_2A2031AA0;
  v39[1] = eUICCStateMachine::Retry;
  v39[3] = v39;
  v40 = 7;
  v41 = 0;
  v42 = 8;
  v43 = 0;
  std::map<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>::map[abi:ne200100](v23, v26, 9);
  for (i = 82; i != -8; i -= 10)
  {
    std::__function::__value_func<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::~__value_func[abi:ne200100](&v26[i]);
  }

  v7 = v24[0];
  if (!v24[0])
  {
    goto LABEL_17;
  }

  v8 = *a1;
  v9 = v24;
  do
  {
    if (*(v7 + 8) >= v8)
    {
      v9 = v7;
    }

    v7 = v7[*(v7 + 8) < v8];
  }

  while (v7);
  if (v9 == v24 || v8 < *(v9 + 8) || !v9[8])
  {
LABEL_17:
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Update/StateMachine/eUICCStateMachine.cpp", 0x88u, "Assertion failure(((stateMap.end() != def) && def->second) && eUICCStateMachine is corrupted.)", v19, v20, v21, v22);
  }

  v10 = std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::operator()((v9 + 5), a2, a3);
  gBBULogMaskGet();
  eUICCStateMachine::StateAsString(*a1);
  eUICCStateMachine::StateAsString(v25);
  _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Ret %d from state %s next %s\n", v11, v12, v13, v10);
  v14 = v10 == 45 || v10 == 0;
  v15 = v25;
  if (!v14)
  {
    v15 = 7;
  }

  *a1 = v15;
  std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::destroy(v23, v24[0]);
  v16 = *MEMORY[0x29EDCA608];
  return v10;
}

void sub_299FB2F34(_Unwind_Exception *a1)
{
  for (i = 328; i != -32; i -= 40)
  {
    std::__function::__value_func<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::~__value_func[abi:ne200100](v1 + i);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICCStateMachine::Start(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  *&v11[283] = *MEMORY[0x29EDCA608];
  (*(**a5 + 8))(v11);
  v7 = HowToProceed(v11, a3);
  if (v7 > 1)
  {
    if (v7 == 3)
    {
      v9 = 8;
    }

    else
    {
      v9 = 5;
    }

    goto LABEL_8;
  }

  if (v7)
  {
    v9 = 2;
LABEL_8:
    result = 0;
    *a4 = v9;
    goto LABEL_9;
  }

  result = 18;
LABEL_9:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t eUICCStateMachine::Perso(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, void (****a5)(std::string *__return_ptr))
{
  v17 = *MEMORY[0x29EDCA608];
  (**a5)[1](&v14);
  if (BYTE4(v14) == 1 || *(a3 + 48) == 1)
  {
    VinylFirmware::bootloaderVersion(v15, v16, &__p);
    v8 = eUICC::Perso::Perform(a3, &__p, a5);
    v9 = *a5;
    *++v9 = 0u;
    *(v9 + 15) = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 13) = 0u;
    *(v9 + 14) = 0u;
    *(v9 + 11) = 0u;
    *(v9 + 12) = 0u;
    *(v9 + 9) = 0u;
    *(v9 + 10) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 8) = 0u;
    *(v9 + 5) = 0u;
    *(v9 + 6) = 0u;
    *(v9 + 3) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 1) = 0u;
    *(v9 + 2) = 0u;
    *(v9 + 267) = 0u;
    *v9 = TelephonyRadiosGetRadioVendor() - 2 < 3;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = 0;
  }

  if (*(a3 + 9))
  {
    v10 = 5;
  }

  else
  {
    v10 = 1;
  }

  *a4 = v10;
  v11 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_299FB3198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICCStateMachine::Recovery(VinylFirmware *a1, VinylFirmware *a2, uint64_t a3, _DWORD *a4, void *a5)
{
  *&v33[137] = *MEMORY[0x29EDCA608];
  (*(**a5 + 8))(&v31);
  if (v31 != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v15, v16, v17, "euiccData.Valid()");
    v10 = 18;
    goto LABEL_19;
  }

  if (!v32)
  {
    goto LABEL_18;
  }

  if (VinylFirmware::getRecoveryFwData(a2))
  {
    v9 = a2;
  }

  else
  {
    v9 = a1;
  }

  if (VinylFirmware::getRecoveryFwData(v9))
  {
    v10 = (*(**a5 + 64))();
    v11 = *a5;
    *(v11 + 8) = 0u;
    v11 += 8;
    *(v11 + 240) = 0u;
    *(v11 + 256) = 0u;
    *(v11 + 208) = 0u;
    *(v11 + 224) = 0u;
    *(v11 + 176) = 0u;
    *(v11 + 192) = 0u;
    *(v11 + 144) = 0u;
    *(v11 + 160) = 0u;
    *(v11 + 112) = 0u;
    *(v11 + 128) = 0u;
    *(v11 + 80) = 0u;
    *(v11 + 96) = 0u;
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 267) = 0u;
    *v11 = TelephonyRadiosGetRadioVendor() - 2 < 3;
    gBBULogMaskGet();
    if (v10)
    {
      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v12, v13, v14, "kBBUReturnSuccess == ret");
      goto LABEL_19;
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "successfully streamed recovery Firmware\n", v12, v13, v14, v28);
    v10 = (*(**a5 + 16))(*a5, 0, 0);
    if (v10)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v22, v23, v24, "kBBUReturnSuccess == ret");
      goto LABEL_19;
    }

    v25 = *a5;
    *(v25 + 8) = 0u;
    v25 += 8;
    *(v25 + 240) = 0u;
    *(v25 + 256) = 0u;
    *(v25 + 208) = 0u;
    *(v25 + 224) = 0u;
    *(v25 + 176) = 0u;
    *(v25 + 192) = 0u;
    *(v25 + 144) = 0u;
    *(v25 + 160) = 0u;
    *(v25 + 112) = 0u;
    *(v25 + 128) = 0u;
    *(v25 + 80) = 0u;
    *(v25 + 96) = 0u;
    *(v25 + 48) = 0u;
    *(v25 + 64) = 0u;
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0u;
    *(v25 + 267) = 0u;
    *v25 = TelephonyRadiosGetRadioVendor() - 2 < 3;
LABEL_18:
    v10 = 0;
    *a4 = 3;
    goto LABEL_19;
  }

  ctu::hex(v33, 8);
  gBBULogMaskGet();
  p_p = &__p;
  if (v30 < 0)
  {
    LOBYTE(p_p) = __p;
  }

  _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "SM::Recovery Missing gold with hash %s\n", v18, v19, v20, p_p);
  if (v30 < 0)
  {
    operator delete(__p);
  }

  v10 = 15;
LABEL_19:
  v26 = *MEMORY[0x29EDCA608];
  return v10;
}

void sub_299FB34FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICCStateMachine::UpdateGold(const __CFDictionary **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&__dst[71] = *MEMORY[0x29EDCA608];
  cf = 0;
  (*(**a5 + 8))(__dst);
  if (__dst[0] == TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    if (a1)
    {
      VinylFirmware::getFwMac(a1);
      __src = 0;
      v20 = 0uLL;
      ctu::cf::assign();
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v12, v13, v14, "bundMac.size() == kFWMacSize");
      v15 = 1;
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v9, v10, v11, "goldFirmware");
      v15 = 15;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v6, v7, v8, "euiccData.Valid()");
    v15 = 18;
  }

  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

void sub_299FB3C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, const void *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a22);
  if (v28)
  {
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICCStateMachine::UpdateMain(uint64_t a1, CFMutableDataRef *a2, uint64_t a3, int *a4, void *a5)
{
  v119 = *MEMORY[0x29EDCA608];
  __p[0] = 0;
  __p[1] = 0;
  v113 = 0;
  v110 = 0;
  v111 = 0uLL;
  cf = 0;
  (*(**a5 + 8))(__dst);
  if (*__dst != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    gBBULogMaskGet();
    v13 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v14, v15, v16, "euiccData.Valid()");
    v17 = 18;
    goto LABEL_38;
  }

  if (!a2)
  {
    gBBULogMaskGet();
    v13 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v18, v19, v20, "mainFirmware");
    v17 = 15;
    goto LABEL_38;
  }

  VinylFirmware::getVersionString(a2, __src);
  if (SHIBYTE(v113) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = *__src;
  v113 = *&__src[16];
  v107 = __dst[41];
  if (__dst[41] == 79)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Update card version as it is overridden\n", v9, v10, v11, v102);
    v117 = *&__dst[24];
    v118 = __dst[40];
    v116[0] = *&__dst[42];
    *(v116 + 6) = *&__dst[48];
    v12 = operator new(0x28uLL);
    *v12 = *&__dst[24];
    v12[16] = __dst[40];
    v12[17] = 77;
    *(v12 + 18) = *&__dst[42];
    *(v12 + 3) = *&__dst[48];
  }

  else
  {
    v12 = operator new(0x28uLL);
    v21 = *&__dst[40];
    *v12 = *&__dst[24];
    *(v12 + 1) = v21;
  }

  v12[32] = 0;
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v110);
  }

  v110 = v12;
  v111 = xmmword_299FE2F20;
  VinylFirmware::getFwMac(a2);
  memset(__src, 0, 24);
  ctu::cf::assign();
  v13 = *__src;
  if (*&__src[8] - *__src != 8)
  {
    gBBULogMaskGet();
    v39 = "bundMac.size() == kFWMacSize";
LABEL_37:
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v36, v37, v38, v39);
    v17 = 1;
    goto LABEL_38;
  }

  v22 = HIBYTE(v113);
  if (v113 < 0)
  {
    v22 = __p[1];
  }

  if (!v22)
  {
    goto LABEL_36;
  }

  v23 = HIBYTE(v111);
  if (v111 < 0)
  {
    v23 = v111;
  }

  if (!v23)
  {
LABEL_36:
    gBBULogMaskGet();
    v39 = "!bundVersionString.empty() && !cardVersionString.empty()";
    goto LABEL_37;
  }

  gBBULogMaskGet();
  v27 = &v110;
  if (v111 < 0)
  {
    LOBYTE(v27) = v110;
  }

  _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Update Main:Card %s Bundle %s\n", v24, v25, v26, v27);
  v28 = a4;
  v29 = SHIBYTE(v111);
  if (v111 >= 0)
  {
    v30 = HIBYTE(v111);
  }

  else
  {
    v30 = v111;
  }

  v31 = HIBYTE(v113);
  if (v113 >= 0)
  {
    v32 = HIBYTE(v113);
  }

  else
  {
    v32 = __p[1];
  }

  if (v30 == v32)
  {
    if (v111 >= 0)
    {
      v33 = &v110;
    }

    else
    {
      v33 = v110;
    }

    if (v113 >= 0)
    {
      v34 = __p;
    }

    else
    {
      v34 = __p[0];
    }

    v35 = memcmp(v33, v34, v30) == 0;
  }

  else
  {
    v35 = 0;
  }

  if (v30 < 0x12)
  {
    v44 = 0;
  }

  else
  {
    if (v29 >= 0)
    {
      v42 = &v110;
    }

    else
    {
      v42 = v110;
    }

    v43 = memchr(v42 + 17, 82, v30 - 17);
    v44 = 0;
    if (v43 && v43 - v42 == 17 && v32 >= 0x12)
    {
      if (v31 >= 0)
      {
        v45 = __p;
      }

      else
      {
        v45 = __p[0];
      }

      v46 = memchr(v45 + 17, 77, v32 - 17);
      if (v46)
      {
        v47 = v46 - v45 == 17;
      }

      else
      {
        v47 = 0;
      }

      v44 = v47;
    }
  }

  v48 = *(a3 + 137);
  gBBULogMaskGet();
  v106 = *(a3 + 137);
  _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "isR2MUpdate=%d, optimizeRefurbFirmwareUpdatePath=%d\n", v49, v50, v51, v44);
  if (*(a3 + 10) & 1) == 0 && ((v35 | v44 & v48))
  {
    gBBULogMaskGet();
    if (v35)
    {
      v55 = "Main FW versions already matching (no forceMain)\n";
    }

    else
    {
      v55 = "Refurb optimization enabled, therefore blocking Refurb to Main FW update.";
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", v55, v52, v53, v54, v103);
    v17 = 0;
    goto LABEL_71;
  }

  AuthPayload = VinylFirmware::getAuthPayload(a2);
  Length = CFDataGetLength(AuthPayload);
  *__src = CFDataCreateMutableCopy(*MEMORY[0x29EDB8ED8], Length, AuthPayload);
  ctu::cf::CFSharedRef<__CFData const>::operator=<__CFData,void>(&cf, __src);
  if (!cf)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Install main but no ticket -- back to restored please\n", v61, v62, v63, v103);
    v17 = 45;
    v56 = 4;
    goto LABEL_78;
  }

  if ((*(a3 + 10) & 1) != 0 || *&__dst[72] != *v13)
  {
    v59 = *a5;
    v108 = cf;
    CFRetain(cf);
    v17 = (*(*v59 + 56))(v59, &v108);
    ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&v108);
    v60 = *a5;
    *(v60 + 8) = 0u;
    v60 += 8;
    *(v60 + 240) = 0u;
    *(v60 + 256) = 0u;
    *(v60 + 208) = 0u;
    *(v60 + 224) = 0u;
    *(v60 + 176) = 0u;
    *(v60 + 192) = 0u;
    *(v60 + 144) = 0u;
    *(v60 + 160) = 0u;
    *(v60 + 112) = 0u;
    *(v60 + 128) = 0u;
    *(v60 + 80) = 0u;
    *(v60 + 96) = 0u;
    *(v60 + 48) = 0u;
    *(v60 + 64) = 0u;
    *(v60 + 16) = 0u;
    *(v60 + 32) = 0u;
    *(v60 + 267) = 0u;
    *v60 = TelephonyRadiosGetRadioVendor() - 2 < 3;
    if (v17)
    {
LABEL_95:
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v88, v89, v90, "kBBUReturnSuccess == ret");
      goto LABEL_38;
    }

    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "successfully pushed Install Ticket\n", v64, v65, v66, v103);
  }

  v67 = *a5;
  FwData = VinylFirmware::getFwData(a2);
  v17 = (*(*v67 + 64))(v67, FwData);
  v69 = *a5;
  *(v69 + 8) = 0u;
  v69 += 8;
  *(v69 + 240) = 0u;
  *(v69 + 256) = 0u;
  *(v69 + 208) = 0u;
  *(v69 + 224) = 0u;
  *(v69 + 176) = 0u;
  *(v69 + 192) = 0u;
  *(v69 + 144) = 0u;
  *(v69 + 160) = 0u;
  *(v69 + 112) = 0u;
  *(v69 + 128) = 0u;
  *(v69 + 80) = 0u;
  *(v69 + 96) = 0u;
  *(v69 + 48) = 0u;
  *(v69 + 64) = 0u;
  *(v69 + 16) = 0u;
  *(v69 + 32) = 0u;
  *(v69 + 267) = 0u;
  *v69 = TelephonyRadiosGetRadioVendor() - 2 < 3;
  if (v17)
  {
    goto LABEL_95;
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "successfully streamed Firmware\n", v70, v71, v72, v103);
  v17 = (*(**a5 + 16))(*a5, 0, 0);
  v73 = *a5;
  *(v73 + 8) = 0u;
  v73 += 8;
  *(v73 + 240) = 0u;
  *(v73 + 256) = 0u;
  *(v73 + 208) = 0u;
  *(v73 + 224) = 0u;
  *(v73 + 176) = 0u;
  *(v73 + 192) = 0u;
  *(v73 + 144) = 0u;
  *(v73 + 160) = 0u;
  *(v73 + 112) = 0u;
  *(v73 + 128) = 0u;
  *(v73 + 80) = 0u;
  *(v73 + 96) = 0u;
  *(v73 + 48) = 0u;
  *(v73 + 64) = 0u;
  *(v73 + 16) = 0u;
  *(v73 + 32) = 0u;
  *(v73 + 267) = 0u;
  *v73 = TelephonyRadiosGetRadioVendor() - 2 < 3;
  if (v17)
  {
    goto LABEL_95;
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "successfully switched back to Normal\n", v74, v75, v76, v104);
  if (v107 == 79 || *(a3 + 20) >= 1)
  {
    v17 = (*(**a5 + 16))(*a5, 1, 1);
    if (v17)
    {
      goto LABEL_95;
    }

    v17 = (*(**a5 + 16))(*a5, 0, 1);
    if (v17)
    {
      goto LABEL_95;
    }

    v98 = *a5;
    *(v98 + 8) = 0u;
    v98 += 8;
    *(v98 + 240) = 0u;
    *(v98 + 256) = 0u;
    *(v98 + 208) = 0u;
    *(v98 + 224) = 0u;
    *(v98 + 176) = 0u;
    *(v98 + 192) = 0u;
    *(v98 + 144) = 0u;
    *(v98 + 160) = 0u;
    *(v98 + 112) = 0u;
    *(v98 + 128) = 0u;
    *(v98 + 80) = 0u;
    *(v98 + 96) = 0u;
    *(v98 + 48) = 0u;
    *(v98 + 64) = 0u;
    *(v98 + 16) = 0u;
    *(v98 + 32) = 0u;
    *(v98 + 267) = 0u;
    *v98 = TelephonyRadiosGetRadioVendor() - 2 < 3;
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "successfully reset the card\n", v99, v100, v101, v105);
  }

  (*(**a5 + 8))(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v77 = operator new(0x28uLL);
  *__src = v77;
  *&__src[8] = xmmword_299FE2F20;
  v78 = *&__dst[40];
  *v77 = *&__dst[24];
  v77[1] = v78;
  *(v77 + 32) = 0;
  if (*(a3 + 20) >= 1)
  {
    v117 = *&__dst[24];
    v118 = __dst[40];
    v79 = __dst[41];
    v116[0] = *&__dst[42];
    *(v116 + 6) = *&__dst[48];
    if (__dst[41] == 79)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Update card version as it is overridden\n", v80, v81, v82, v105);
      v79 = 77;
    }

    v83 = operator new(0x28uLL);
    *v83 = v117;
    v83[16] = v118;
    v83[17] = v79;
    *(v83 + 18) = v116[0];
    *(v83 + 3) = *(v116 + 6);
    v83[32] = 0;
    operator delete(v77);
    *__src = v83;
    *&__src[8] = xmmword_299FE2F20;
  }

  if (*__dst == TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__src, __p))
    {
      v17 = 0;
      v84 = 1;
    }

    else
    {
      gBBULogMaskGet();
      v94 = __src;
      if (__src[23] < 0)
      {
        LOBYTE(v94) = __src[0];
      }

      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Main version strings mismatched: Card %s Bundle %s", v91, v92, v93, v94);
      v84 = 0;
      v17 = 22;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v85, v86, v87, "euiccData.Valid()");
    v84 = 0;
    v17 = 18;
  }

  if ((__src[23] & 0x80000000) != 0)
  {
    operator delete(*__src);
  }

  if (v84)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Success!\n", v95, v96, v97, v105);
LABEL_71:
    v56 = 5;
LABEL_78:
    *v28 = v56;
  }

LABEL_38:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    operator delete(v13);
  }

  if (SHIBYTE(v111) < 0)
  {
    operator delete(v110);
  }

  if (SHIBYTE(v113) < 0)
  {
    operator delete(__p[0]);
  }

  v40 = *MEMORY[0x29EDCA608];
  return v17;
}

void sub_299FB4964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, const void *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  operator delete(__p);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a18);
  if (v36)
  {
    operator delete(v36);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICCStateMachine::PostProcess(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Empty implementation for PostProcess. Non updater takes care of refurb options!\n", v5, v6, v7, v9);
  *a4 = 8;
  return 0;
}

uint64_t eUICCStateMachine::Retry(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, void *a5)
{
  (*(**a5 + 16))(*a5, 0, 1);
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "...waiting patiently for reset\n", v6, v7, v8, v10);
  __ns.__rep_ = 10000000000;
  std::this_thread::sleep_for (&__ns);
  *a4 = 0;
  return 0;
}

uint64_t std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t HowToProceed(uint64_t a1, uint64_t a2)
{
  *&v31 = *MEMORY[0x29EDCA608];
  if (*(a2 + 8) == 1)
  {
    gBBULogMaskGet();
    v5 = "eUICC Skip All\n";
LABEL_3:
    _BBULog(0, 0xFFFFFFFFLL, "eUICC", "", v5, v2, v3, v4, v28);
    v6 = 3;
    goto LABEL_43;
  }

  if (*a1 == TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    *(&__p.__r_.__value_.__s + 23) = 3;
    LODWORD(__p.__r_.__value_.__l.__data_) = 3223088;
    memset(&v29, 0, sizeof(v29));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v29, &__p, &v31, 1uLL);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    VinylFirmware::bootloaderVersion(*(a1 + 240), *(a1 + 241), &__p);
    size = v29.__r_.__value_.__l.__size_;
    v8 = v29.__r_.__value_.__r.__words[0];
    if (v29.__r_.__value_.__r.__words[0] != v29.__r_.__value_.__l.__size_)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v10 = __p.__r_.__value_.__l.__size_;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      while (1)
      {
        v12 = *(v8 + 23);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v8 + 8);
        }

        if (v12 == v10)
        {
          v14 = v13 >= 0 ? v8 : *v8;
          if (!memcmp(v14, p_p, v10))
          {
            break;
          }
        }

        v8 += 24;
        if (v8 == size)
        {
          goto LABEL_27;
        }
      }
    }

    if (v8 == size)
    {
LABEL_27:
      v6 = 1;
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICC", "", "eUICC HW present is too old so we will skip updating it\n", v15, v16, v17, v28);
      v6 = 3;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = &v29;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
    if (*(a1 + 279) == 1)
    {
      gBBULogMaskGet();
      v5 = "eUICC not stuffed but that's ok!\n";
      goto LABEL_3;
    }

    pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    v18 = xmmword_2A14F5908;
    if (!xmmword_2A14F5908)
    {
      BBUCapabilities::create_default_global(&v29);
      v19 = *&v29.__r_.__value_.__l.__data_;
      *&v29.__r_.__value_.__l.__data_ = 0uLL;
      v20 = *(&xmmword_2A14F5908 + 1);
      xmmword_2A14F5908 = v19;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        if (v29.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29.__r_.__value_.__l.__size_);
        }
      }

      v18 = xmmword_2A14F5908;
    }

    v21 = *(&xmmword_2A14F5908 + 1);
    if (*(&xmmword_2A14F5908 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A14F5908 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    v22 = BBUCapabilities::supportsVinylUpdate(v18);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (v22)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICC", "", "Bailing on eUICC error due to status %u\n", v23, v24, v25, *a1);
      v6 = 0;
    }

    else
    {
      v6 = 2;
    }
  }

LABEL_43:
  v26 = *MEMORY[0x29EDCA608];
  return v6;
}

const void **ctu::cf::CFSharedRef<__CFData const>::operator=<__CFData,void>(const void **a1, CFTypeRef *a2)
{
  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<__CFData,void>(&v5, a2);
  v3 = *a1;
  *a1 = v5;
  v5 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void Options::~Options(void **this)
{
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

void *std::__function::__func<BBUReturn (*)(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &),std::allocator<BBUReturn (*)(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>,BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2031AA0;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<BBUReturn (*)(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &),std::allocator<BBUReturn (*)(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>,BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2031AA0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BBUReturn (*)(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &),std::allocator<BBUReturn (*)(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>,BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

std::string *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_299FB51E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

char *std::vector<std::string>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::vector<char *>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[24 * v4];
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(24 * a2);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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

uint64_t std::map<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 40 * a3;
    do
    {
      std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICCStateMachine::State,std::pair<eUICCStateMachine::State const,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(a1, v4, a2, a2);
      a2 += 10;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICCStateMachine::State,std::pair<eUICCStateMachine::State const,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(uint64_t **a1, uint64_t *a2, int *a3, _DWORD *a4)
{
  v6 = std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__find_equal<eUICCStateMachine::State>(a1, a2, &v12, &v11, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__construct_node<std::pair<eUICCStateMachine::State const,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(a1, a4, v10);
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__insert_node_at(a1, v12, v8, v10[0]);
    v7 = v10[0];
    v10[0] = 0;
    std::unique_ptr<std::__tree_node<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,void *>>>>::~unique_ptr[abi:ne200100](v10);
  }

  return v7;
}

uint64_t *std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__find_equal<eUICCStateMachine::State>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
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

uint64_t std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__construct_node<std::pair<eUICCStateMachine::State const,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x48uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v6[8] = *a2;
  result = std::__function::__value_func<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::__value_func[abi:ne200100]((v6 + 10), (a2 + 2));
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::~__value_func[abi:ne200100](v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::destroy(a1, a2[1]);
    std::__function::__value_func<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::~__value_func[abi:ne200100]((a2 + 5));

    operator delete(a2);
  }
}

void *ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<__CFData,void>(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFDataGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

uint64_t __cxx_global_var_init_5()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_299F8C000);
  }

  return result;
}

uint64_t __cxx_global_var_init_53()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_299F8C000);
  }

  return result;
}

uint64_t VinylController::create(uint64_t a1, int a2)
{
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "entering VinylController::create\n", v4, v5, v6, v19);
  v14 = VinylController::instance;
  if (!a2 || VinylController::instance)
  {
    if (VinylController::instance)
    {
      goto LABEL_7;
    }

    v14 = operator new(0x88uLL);
    VinylController::VinylController(v14);
  }

  else
  {
    v14 = operator new(0x88uLL);
    VinylController::VinylController(v14, 0, a1);
  }

  VinylController::instance = v14;
LABEL_7:
  if (!*(v14 + 2))
  {
    VinylControllerObjDestroy(v14, v7, v8, v9, v10, v11, v12, v13, v20);
    VinylController::instance = 0;
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "returning VinylController::create\n", v15, v16, v17, v20);
  return VinylController::instance;
}

uint64_t VinylControllerObjDestroy(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    (*(*result + 8))(result);
    VinylController::instance = 0;
    gBBULogMaskGet();

    return _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Cleaning up VinylController object \n", v9, v10, v11, a9);
  }

  return result;
}

uint64_t VinylController::create(uint64_t *a1)
{
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "entering VinylController::create\n", v2, v3, v4, v20[0]);
  v12 = VinylController::instance;
  if (!VinylController::instance)
  {
    v13 = operator new(0x88uLL);
    v12 = v13;
    v14 = *a1;
    v15 = a1[1];
    v20[0] = v14;
    v20[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    VinylController::VinylController(v13, v20);
    VinylController::instance = v12;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      v12 = VinylController::instance;
    }
  }

  if (!*(v12 + 16))
  {
    VinylControllerObjDestroy(v12, v5, v6, v7, v8, v9, v10, v11, v20[0]);
    VinylController::instance = 0;
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "returning VinylController::create\n", v16, v17, v18, v20[0]);
  return VinylController::instance;
}

void sub_299FB5B84(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t VinylController::VinylController(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_2A2031B50;
  *(a1 + 8) = 0;
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = VinylCommunication::create(&v7);
  v5 = v8;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *(a1 + 120) = VinylSecureElement::create(v5);
  *(a1 + 128) = 0;
  *(a1 + 24) = *a2 != 0;
  return a1;
}

void sub_299FB5C4C(_Unwind_Exception *a1)
{
  v4 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v4)
  {
    VinylController::VinylController(v4);
  }

  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(v1);
  _Unwind_Resume(a1);
}

uint64_t VinylController::VinylController(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = &unk_2A2031B50;
  *(a1 + 8) = 0;
  v5 = VinylCommunication::create(a2, 0);
  *(a1 + 16) = v5;
  *(a1 + 120) = VinylSecureElement::create(v5);
  *(a1 + 128) = 0;
  if (a3)
  {
    v6 = *(a3 + 16);
    *(a1 + 32) = *a3;
    *(a1 + 48) = v6;
    v7 = *(a3 + 32);
    v8 = *(a3 + 48);
    v9 = *(a3 + 64);
    *(a1 + 112) = *(a3 + 80);
    *(a1 + 80) = v8;
    *(a1 + 96) = v9;
    *(a1 + 64) = v7;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    *(a1 + 112) = 0;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 32) = 0u;
  }

  *(a1 + 24) = v10;
  return a1;
}

void sub_299FB5D6C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    VinylController::VinylController(v4);
  }

  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(v2);
  _Unwind_Resume(a1);
}

void VinylController::VinylController(VinylController *this)
{
  *this = &unk_2A2031B50;
  *(this + 1) = 0;
  *(this + 2) = VinylCommunication::create(0, 0);
  *(this + 24) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
}

uint64_t get_info(__CFDictionary **a1, uint64_t a2)
{
  v45 = *MEMORY[0x29EDCA608];
  if (*a2 != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    result = 1;
    goto LABEL_60;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    get_info(&v43);
    result = LODWORD(v43.__r_.__value_.__l.__data_);
    goto LABEL_60;
  }

  v5 = Mutable;
  stringifyDataBuffer((a2 + 7), 16, &v43);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v41 = v43;
  }

  v7 = copyAsCFString();
  v42 = v7;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v5, @"kVinylEID", v7);
  memset(v44, 0, sizeof(v44));
  if (*(a2 + 4))
  {
    qmemcpy(v44, "Unpersonalized", 14);
    v8 = 14;
  }

  else
  {
    qmemcpy(v44, "Personalized", 12);
    v8 = 12;
  }

  *v38 = *v44;
  *&v38[15] = *&v44[15];
  v39 = v8;
  v9 = copyAsCFString();
  v40 = v9;
  if (v39 < 0)
  {
    operator delete(*v38);
  }

  CFDictionarySetValue(v5, @"kVinylPersoState", v9);
  v10 = operator new(0x28uLL);
  v11 = *(a2 + 40);
  *v10 = *(a2 + 24);
  v10[1] = v11;
  *(v10 + 32) = 0;
  std::string::__init_copy_ctor_external(&v36, v10, 0x20uLL);
  v12 = copyAsCFString();
  v37 = v12;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v5, @"kVinylFirmware", v12);
  v13 = *(a2 + 281);
  v14 = *(a2 + 278);
  std::to_string(&v34, v14);
  v15 = copyAsCFString();
  v35 = v15;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v5, @"kVinylSIMSKUID", v15);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  v17 = "ESIM";
  if ((RadioVendor - 2) < 2)
  {
    if (!v13)
    {
      v17 = "PSIM";
    }

    goto LABEL_24;
  }

  if (RadioVendor != 1)
  {
    if (RadioVendor != 4)
    {
      goto LABEL_28;
    }

LABEL_24:
    std::string::basic_string[abi:ne200100]<0>(&v33, v17);
    goto LABEL_29;
  }

  if (v14 < 0xB)
  {
    std::string::basic_string[abi:ne200100]<0>(&v33, eUICC::MAVHWSIMSKUStr[v14]);
    goto LABEL_29;
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Condition <<%s>> failed %s %s/%d\n", v18, v19, v20, "simSKUID < ARR_SIZE(MAVHWSIMSKUStr)");
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Error: invalid simSKUID = %u\n", v21, v22, v23, v14);
LABEL_28:
  memset(&v33, 0, sizeof(v33));
LABEL_29:
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    v31 = v33;
  }

  v24 = copyAsCFString();
  v32 = v24;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v5, @"kVinylSIMSKU", v24);
  capabilities::radio::radioType(&__p, v25);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v28 = __p;
  }

  v26 = copyAsCFString();
  v29 = v26;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v5, @"kVinylRadioType", v26);
  *a1 = v5;
  if (v26)
  {
    CFRelease(v26);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v24)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (v24)
  {
LABEL_45:
    CFRelease(v24);
  }

LABEL_46:
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v15)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  operator delete(v33.__r_.__value_.__l.__data_);
  if (v15)
  {
LABEL_50:
    CFRelease(v15);
  }

LABEL_51:
  if (v12)
  {
    CFRelease(v12);
  }

  operator delete(v10);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  result = 0;
LABEL_60:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299FB62D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, const void *a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, const void *a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, const void *a54)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a34);
  if (a40 < 0)
  {
    operator delete(a35);
  }

  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a47);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a54);
  operator delete(v54);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v55 - 184));
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v55 - 144));
  if (*(v55 - 113) < 0)
  {
    operator delete(*(v55 - 136));
  }

  _Unwind_Resume(a1);
}

uint64_t VinylController::getParamUpdateOperation(const void **this, __CFDictionary *a2, const __CFDictionary *a3)
{
  v153 = *MEMORY[0x29EDCA608];
  memset(__dst, 0, 283);
  v149 = 0;
  v150 = 0;
  v147 = 0;
  v148 = 0;
  v145 = 0;
  v146 = 0;
  v143 = 0;
  v144 = 0;
  v141 = 0;
  v142 = 0;
  v140 = 0;
  if (a3)
  {
    __p[0] = a3;
    ctu::cf::CFSharedRef<__CFDictionary const>::reset(this + 16, __p);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&cf, this + 16);
  Options::Options(v128, &cf);
  v123 = this;
  if (cf)
  {
    CFRelease(cf);
  }

  gBBULogMaskGet();
  Options::ToString(v128, __p);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v8 = __p;
  }

  else
  {
    LOBYTE(v8) = __p[0];
  }

  _BBULog(22, 0xFFFFFFFFLL, "VinylController", "", "VinylRestore Options:\n%s\n", v5, v6, v7, v8);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (!a2)
  {
    v49 = gBBULogMaskGet();
    if (VinylDaleCommunication::createTransport(v49))
    {
      _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
    }

    v122 = 1;
    v121 = 0;
    if (*gBBULogMaskGet())
    {
      v119 = 0;
      v120 = 0;
      v30 = 0;
      v19 = 0;
      v22 = 0;
      v23 = 0;
      v21 = 0;
      v18 = 0;
      v24 = 0;
      v25 = 0;
      v124 = 0;
      if (gBBULogVerbosity >= 1)
      {
        v122 = 1;
        v124 = 0;
        _BBULog(0, 1, "VinylController", "", "deviceInfoDict passed is NULL:\n", v53, v54, v55, v118);
        v120 = 0;
        v121 = 0;
        v30 = 0;
        v119 = 0;
        v19 = 0;
        v22 = 0;
        v23 = 0;
        v21 = 0;
        v18 = 0;
        v24 = 0;
        v25 = 0;
      }

      goto LABEL_34;
    }

LABEL_124:
    v119 = 0;
    v120 = 0;
    v30 = 0;
    v19 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v18 = 0;
    v24 = 0;
    v25 = 0;
    v124 = 0;
    goto LABEL_34;
  }

  TransportNoEvents = VinylController::createTransportNoEvents(this);
  v10 = TransportNoEvents;
  if (!TransportNoEvents)
  {
    v11 = v128[0];
    (*(**(v123 + 2) + 48))(&v125);
    eUICC::VinylFactory::GetValve(v123 + 32, v11, 0, &v125, __p);
    v12 = __p[0];
    __p[0] = 0;
    if (v126)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v126);
    }

    if (v12)
    {
      v124 = v12;
      (*(*v12 + 8))(__p, v12);
      memcpy(__dst, __p, 0x11BuLL);
      if (LODWORD(__dst[0]) == TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
      {
        v13 = *MEMORY[0x29EDB8ED8];
        v14 = CFDataCreate(*MEMORY[0x29EDB8ED8], __dst + 7, 16);
        v150 = v14;
        if (v14)
        {
          v121 = v14;
          CFDictionarySetValue(a2, @"eUICC,EID", v14);
          v15 = CFNumberCreate(v13, kCFNumberSInt8Type, &__dst[17] + 3);
          v149 = v15;
          if (v15)
          {
            v120 = v15;
            CFDictionarySetValue(a2, @"eUICC,ChipID", v15);
            v16 = CFDataCreate(v13, &__dst[3] + 8, 8);
            v147 = v16;
            Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
            v18 = Mutable;
            v142 = Mutable;
            v119 = v16;
            if (!v16 || !Mutable)
            {
              v34 = gBBULogMaskGet();
              if (VinylDaleCommunication::createTransport(v34))
              {
                _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
              }

              gBBULogMaskGet();
              _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "failed to create mainDict\n", v38, v39, v40, v118);
              v30 = 0;
              v19 = 0;
              v22 = 0;
              v23 = 0;
              v21 = 0;
              goto LABEL_112;
            }

            CFDictionarySetValue(Mutable, @"Nonce", v16);
            CFDictionarySetValue(a2, @"eUICC,Main", v18);
            v19 = CFDataCreate(v13, &__dst[4], 8);
            v146 = v19;
            v20 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
            v21 = v20;
            v143 = v20;
            if (v19 && v20)
            {
              CFDictionarySetValue(v20, @"Nonce", v19);
              CFDictionarySetValue(a2, @"eUICC,Gold", v21);
              CFDictionarySetValue(a2, @"@eUICC,Ticket", *MEMORY[0x29EDB8F00]);
              v22 = CFDataCreate(v13, &__dst[15] + 3, 20);
              v145 = v22;
              if (v22)
              {
                CFDictionarySetValue(a2, @"eUICC,RootKeyIdentifier", v22);
                v23 = CFDataCreate(v13, &__dst[15], 3);
                v144 = v23;
                if (v23)
                {
                  CFDictionarySetValue(a2, @"eUICC,FirmwareLoaderVersion", v23);
                  v24 = CFDataCreate(v13, &__dst[4] + 8, 16);
                  v141 = v24;
                  if (v24)
                  {
                    CFDictionarySetValue(a2, @"eUICC,MainFwMac", v24);
                    v25 = CFDataCreate(v13, &__dst[9] + 3, 16);
                    v140 = v25;
                    if (v25)
                    {
                      CFDictionarySetValue(a2, @"eUICC,GoldFwMac", v25);
                      v26 = MGCopyAnswer();
                      if (v26)
                      {
                        CFDictionarySetValue(a2, @"eUICC,ApProductionMode", v26);
                      }

                      else
                      {
                        gBBULogMaskGet();
                        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "MobileGestalt returned NULL for SigningFuse", v27, v28, v29, v118);
                      }

                      if (v129 < 1)
                      {
                        v30 = 0;
                        goto LABEL_33;
                      }

                      v30 = CFNumberCreate(v13, kCFNumberSInt8Type, &v129);
                      v148 = v30;
                      if (v30)
                      {
                        CFDictionarySetValue(a2, @"eUICC,BypassSEPPairing", v30);
LABEL_33:
                        v122 = 0;
                        goto LABEL_34;
                      }

                      v111 = gBBULogMaskGet();
                      if (VinylDaleCommunication::createTransport(v111))
                      {
                        _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v112, v113, v114, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
                      }

                      gBBULogMaskGet();
                      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "failed to create eUICCSepPairingBypassValue\n", v115, v116, v117, v118);
                      v30 = 0;
                      goto LABEL_114;
                    }

                    v104 = gBBULogMaskGet();
                    if (VinylDaleCommunication::createTransport(v104))
                    {
                      _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v105, v106, v107, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
                    }

                    gBBULogMaskGet();
                    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "failed to create goldFwMac\n", v108, v109, v110, v118);
                    v30 = 0;
LABEL_113:
                    v25 = 0;
LABEL_114:
                    v122 = 1;
                    goto LABEL_34;
                  }

                  v97 = gBBULogMaskGet();
                  if (VinylDaleCommunication::createTransport(v97))
                  {
                    _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v98, v99, v100, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
                  }

                  gBBULogMaskGet();
                  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "failed to create mainFwMac\n", v101, v102, v103, v118);
                  v30 = 0;
LABEL_112:
                  v24 = 0;
                  goto LABEL_113;
                }

                v90 = gBBULogMaskGet();
                if (VinylDaleCommunication::createTransport(v90))
                {
                  _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v91, v92, v93, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
                }

                gBBULogMaskGet();
                _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "failed to create firmwareLoaderVersion\n", v94, v95, v96, v118);
                v30 = 0;
LABEL_111:
                v23 = 0;
                goto LABEL_112;
              }

              v86 = gBBULogMaskGet();
              if (VinylDaleCommunication::createTransport(v86))
              {
                _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v87, v88, v89, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
              }

              gBBULogMaskGet();
              v48 = "failed to create certIdentifier\n";
            }

            else
            {
              v41 = gBBULogMaskGet();
              if (VinylDaleCommunication::createTransport(v41))
              {
                _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
              }

              gBBULogMaskGet();
              v48 = "failed to create goldDict\n";
            }

            _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", v48, v45, v46, v47, v118);
            v30 = 0;
            v22 = 0;
            goto LABEL_111;
          }

          v79 = gBBULogMaskGet();
          if (VinylDaleCommunication::createTransport(v79))
          {
            _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v80, v81, v82, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
          }

          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "failed to create euiccCSN\n", v83, v84, v85, v118);
LABEL_103:
          v119 = 0;
          v120 = 0;
          v30 = 0;
          v19 = 0;
          v22 = 0;
          v23 = 0;
          v21 = 0;
          v18 = 0;
          goto LABEL_112;
        }

        v75 = gBBULogMaskGet();
        if (VinylDaleCommunication::createTransport(v75))
        {
          _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v76, v77, v78, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
        }

        gBBULogMaskGet();
        v74 = "failed to create euiccCSN\n";
      }

      else
      {
        v67 = gBBULogMaskGet();
        if (VinylDaleCommunication::createTransport(v67))
        {
          _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
        }

        gBBULogMaskGet();
        v74 = "eUICC not detected, skipping\n";
      }

      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", v74, v71, v72, v73, v118);
      v121 = 0;
      goto LABEL_103;
    }

    v63 = gBBULogMaskGet();
    if (VinylDaleCommunication::createTransport(v63))
    {
      _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
    }

    gBBULogMaskGet();
    v10 = 0;
    v122 = -1;
LABEL_92:
    v124 = 0;
    _BBULog(0, v122, "VinylController", "", "Fail to create transport: %d\n", v60, v61, v62, v10);
    v122 = 1;
    v25 = 0;
    v120 = 0;
    v121 = 0;
    v30 = 0;
    v119 = 0;
    v19 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v18 = 0;
    v24 = 0;
    goto LABEL_34;
  }

  v56 = gBBULogMaskGet();
  if (VinylDaleCommunication::createTransport(v56))
  {
    _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v57, v58, v59, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
  }

  v122 = 1;
  v121 = 0;
  if ((*gBBULogMaskGet() & 1) == 0)
  {
    goto LABEL_124;
  }

  v119 = 0;
  v120 = 0;
  v30 = 0;
  v19 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v18 = 0;
  v24 = 0;
  v25 = 0;
  v124 = 0;
  if (gBBULogVerbosity > 0)
  {
    goto LABEL_92;
  }

LABEL_34:
  v31 = VinylController::freeTransport(v123);
  if (v139 < 0)
  {
    operator delete(v138);
  }

  if (v137 < 0)
  {
    operator delete(v136);
  }

  if (v135 < 0)
  {
    operator delete(v134);
  }

  if (v133 < 0)
  {
    operator delete(v132);
  }

  if (v131 < 0)
  {
    operator delete(v130);
    if (!v25)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (v25)
  {
LABEL_46:
    CFRelease(v25);
  }

LABEL_47:
  if (v24)
  {
    CFRelease(v24);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v119)
  {
    CFRelease(v119);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v120)
  {
    CFRelease(v120);
  }

  if (v121)
  {
    CFRelease(v121);
  }

  if (v124)
  {
    (*(*v124 + 136))(v124);
  }

  if (v31)
  {
    result = v31;
  }

  else
  {
    result = v122;
  }

  v33 = *MEMORY[0x29EDCA608];
  return result;
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

uint64_t VinylController::createTransportNoEvents(VinylController *this)
{
  if (!*(this + 2))
  {
    VinylController::createTransportNoEvents(&v16);
    return v16;
  }

  if (!*(this + 24))
  {
    VinylController::freeTransport(this);
    v7 = 1;
    v8 = 1;
    do
    {
      v9 = v7;
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "createTransport attempt %d/%d\n", v10, v11, v12, v8);
      v13 = (*(**(this + 2) + 16))(*(this + 2), this + 32);
      if (!v13)
      {
        break;
      }

      VinylController::freeTransport(this);
      __ns.__rep_ = 3000000000;
      std::this_thread::sleep_for (&__ns);
      v7 = 0;
      v8 = 2;
    }

    while ((v9 & 1) != 0);
    return v13;
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "opening channel on provided external transport\n", v2, v3, v4, v14);
  v5 = *(**(this + 2) + 24);

  return v5();
}

uint64_t VinylController::freeTransport(VinylController *this)
{
  if (*(this + 24))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Skipping free of external transport\n", v1, v2, v3, v10);
    return 0;
  }

  else
  {
    v6 = *(this + 2);
    if (v6)
    {
      v7 = *(this + 11);
      if (v7 && (v8 = v7(this + 32), v6 = *(this + 2), v8))
      {
        v9 = *(*v6 + 40);
      }

      else
      {
        v9 = *(*v6 + 40);
      }

      if (v9())
      {
        return 0;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      VinylController::freeTransport(&v11);
      return v11;
    }
  }
}

uint64_t VinylController::checkVinylPresence(const void **this, const __CFDictionary *a2, BOOL *a3, char a4)
{
  v68 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    __p[0] = a2;
    ctu::cf::CFSharedRef<__CFDictionary const>::reset(this + 16, __p);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&cf, this + 16);
  Options::Options(v54, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  gBBULogMaskGet();
  Options::ToString(v54, __p);
  if (v66 >= 0)
  {
    v10 = __p;
  }

  else
  {
    LOBYTE(v10) = __p[0];
  }

  _BBULog(22, 0xFFFFFFFFLL, "VinylController", "", "VinylRestore Options:\n%s\n", v7, v8, v9, v10);
  if (v66 < 0)
  {
    operator delete(__p[0]);
  }

  if (a3)
  {
    *a3 = 0;
    TransportNoEvents = VinylController::createTransportNoEvents(this);
    v12 = TransportNoEvents;
    if (TransportNoEvents)
    {
      v36 = gBBULogMaskGet();
      if (VinylDaleCommunication::createTransport(v36))
      {
        _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
      }

      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Fail to create transport: %d\n", v40, v41, v42, v12);
    }

    else
    {
      v13 = v54[0];
      (*(*this[2] + 48))(&v51);
      eUICC::VinylFactory::GetValve(this + 4, v13, 0, &v51, __p);
      v14 = __p[0];
      __p[0] = 0;
      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
      }

      if (v14)
      {
        (*(*v14 + 8))(__p, v14);
        v15 = __p[0];
        v16 = v67;
        if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
        {
          v17 = v15 == TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD;
          _BBULog(22, 7, "VinylController", "", "Get data Valid(): %d isAbsentOk %d\n", v18, v19, v20, v17);
        }

        if (v15 == TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD || (v16 & 1) == 0)
        {
          if (v15 != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
          {
            gBBULogMaskGet();
            _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Invalid GetData, but allow Vinyl Update for coredump collection\n", v22, v23, v24, v50);
          }

          v21 = 1;
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_24;
      }

      v43 = gBBULogMaskGet();
      if (VinylDaleCommunication::createTransport(v43))
      {
        _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
      }

      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Fail to create transport: %d\n", v47, v48, v49, 0);
    }

    v14 = 0;
    v21 = a4 ^ 1;
LABEL_24:
    v25 = 0;
    *a3 = v21;
    goto LABEL_25;
  }

  v29 = gBBULogMaskGet();
  if (VinylDaleCommunication::createTransport(v29))
  {
    _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Invalid input parameter\n", v33, v34, v35, v50);
  v14 = 0;
  v25 = 2;
LABEL_25:
  v26 = VinylController::freeTransport(this);
  if (v64 < 0)
  {
    operator delete(v63);
  }

  if (v62 < 0)
  {
    operator delete(v61);
  }

  if (v60 < 0)
  {
    operator delete(v59);
  }

  if (v58 < 0)
  {
    operator delete(v57);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  if (v14)
  {
    (*(*v14 + 136))(v14);
  }

  if (v26)
  {
    result = v26;
  }

  else
  {
    result = v25;
  }

  v28 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299FB7AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylController::updateFw(VinylController *this, VinylFirmware *a2, VinylFirmware *a3, const __CFDictionary *a4)
{
  eUICCStateMachine::create_default_global(&v43);
  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "VinylController", "", "entering VinylController::updateFw\n", v8, v9, v10, v39);
  if (a2 && a3 && a4)
  {
    TransportNoEvents = VinylController::createTransportNoEvents(this);
    if (TransportNoEvents)
    {
      v25 = gBBULogMaskGet();
      if (VinylDaleCommunication::createTransport(v25))
      {
        _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
      }

      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Fail to create transport: %d\n", v29, v30, v31, TransportNoEvents);
    }

    else
    {
      v12 = v43;
      (*(**(this + 2) + 48))(&v41);
      TransportNoEvents = eUICCStateMachine::Run(v12, this + 32, a2, a3, a4, &v41);
      if (v42)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }

      if (TransportNoEvents)
      {
        v32 = gBBULogMaskGet();
        if (VinylDaleCommunication::createTransport(v32))
        {
          _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
        }

        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Fail to run eUICC state machine: %d\n", v36, v37, v38, TransportNoEvents);
      }

      else
      {
        TransportNoEvents = 0;
        if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 1)
        {
          _BBULog(22, 1, "VinylController", "", "returning VinylController::updateFw\n", v13, v14, v15, v40);
          TransportNoEvents = 0;
        }
      }
    }
  }

  else
  {
    v18 = gBBULogMaskGet();
    if (VinylDaleCommunication::createTransport(v18))
    {
      _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp");
    }

    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "invalid input params", v22, v23, v24, v40);
    TransportNoEvents = 2;
  }

  v16 = VinylController::freeTransport(this);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (v16)
  {
    return v16;
  }

  else
  {
    return TransportNoEvents;
  }
}

void sub_299FB7E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
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

void *eUICCStateMachine::create_default_global@<X0>(void *a1@<X8>)
{
  v3 = operator new(4uLL);
  eUICCStateMachine::eUICCStateMachine(v3);

  return std::shared_ptr<eUICCStateMachine>::shared_ptr[abi:ne200100]<eUICCStateMachine,0>(a1, v3);
}

uint64_t VinylController::Refurb(uint64_t a1, int a2, void *a3)
{
  *&v21[283] = *MEMORY[0x29EDCA608];
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "refurbAction: %d\n", v5, v6, v7, a2);
  v8 = 0;
  if ((a2 - 3) >= 2)
  {
    if (a2 == 1)
    {
      v9 = 0;
    }

    else
    {
      if (a2 != 2)
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "default case\n", v14, v15, v16, v20);
        goto LABEL_10;
      }

      v9 = 1;
    }

    v10 = (*(**a3 + 32))(*a3, v9);
    if (v10)
    {
      v8 = v10;
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Failed to handle Refurb operation, ret %d\n", v11, v12, v13, v8);
      goto LABEL_11;
    }

    v17 = *a3;
    *(v17 + 8) = 0u;
    v17 += 8;
    *(v17 + 240) = 0u;
    *(v17 + 256) = 0u;
    *(v17 + 208) = 0u;
    *(v17 + 224) = 0u;
    *(v17 + 176) = 0u;
    *(v17 + 192) = 0u;
    *(v17 + 144) = 0u;
    *(v17 + 160) = 0u;
    *(v17 + 112) = 0u;
    *(v17 + 128) = 0u;
    *(v17 + 80) = 0u;
    *(v17 + 96) = 0u;
    *(v17 + 48) = 0u;
    *(v17 + 64) = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    *(v17 + 267) = 0u;
    *v17 = TelephonyRadiosGetRadioVendor() - 2 < 3;
    (*(**a3 + 8))(v21);
LABEL_10:
    v8 = 0;
  }

LABEL_11:
  v18 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t VinylController::operationRequested(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a3 + 4))
  {
    pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    v5 = xmmword_2A14F5908;
    if (!xmmword_2A14F5908)
    {
      BBUCapabilities::create_default_global(&v19);
      v6 = v19;
      v19 = 0uLL;
      v7 = *(&xmmword_2A14F5908 + 1);
      xmmword_2A14F5908 = v6;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        if (*(&v19 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
        }
      }

      v5 = xmmword_2A14F5908;
    }

    v8 = *(&xmmword_2A14F5908 + 1);
    if (*(&xmmword_2A14F5908 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A14F5908 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    if (BBUCapabilities::supportsEuiccViaEOS(v5))
    {
      v9 = 1;
    }

    else
    {
      pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
      v10 = xmmword_2A14F5908;
      if (!xmmword_2A14F5908)
      {
        BBUCapabilities::create_default_global(&v19);
        v11 = v19;
        v19 = 0uLL;
        v12 = *(&xmmword_2A14F5908 + 1);
        xmmword_2A14F5908 = v11;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          if (*(&v19 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
          }
        }

        v10 = xmmword_2A14F5908;
      }

      v13 = *(&xmmword_2A14F5908 + 1);
      if (*(&xmmword_2A14F5908 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_2A14F5908 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
      v9 = BBUCapabilities::supportsVinylUpdate(v10);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = *(a3 + 135);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a3 + 120);
  }

  v15 = *(a3 + 79);
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a3 + 64);
  }

  if (a2 > 2)
  {
    if ((a2 - 4) >= 3)
    {
      if (a2 == 3)
      {
        return (v15 | v14) != 0;
      }

      if (a2 != 8)
      {
        return 0;
      }
    }

    return 1;
  }

  switch(a2)
  {
    case 0:
      return 1;
    case 1:
      if (v15 | v14)
      {
        v17 = 1;
      }

      else
      {
        v17 = v9;
      }

      return (*(a3 + 13) | *(a3 + 12) | v17);
    case 2:
      return v9;
    default:
      return 0;
  }
}

void sub_299FB82E0(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void VinylController::~VinylController(VinylController *this)
{
  VinylController::~VinylController(this);

  operator delete(v1);
}

{
  *this = &unk_2A2031B50;
  v2 = *(this + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    CFRelease(v5);
  }
}

void *std::shared_ptr<eUICCStateMachine>::shared_ptr[abi:ne200100]<eUICCStateMachine,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2031B80;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_299FB83CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<eUICCStateMachine *,std::shared_ptr<eUICCStateMachine>::__shared_ptr_default_delete<eUICCStateMachine,eUICCStateMachine>,std::allocator<eUICCStateMachine>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICCStateMachine *,std::shared_ptr<eUICCStateMachine>::__shared_ptr_default_delete<eUICCStateMachine,eUICCStateMachine>,std::allocator<eUICCStateMachine>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<eUICCStateMachine *,std::shared_ptr<eUICCStateMachine>::__shared_ptr_default_delete<eUICCStateMachine,eUICCStateMachine>,std::allocator<eUICCStateMachine>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t __cxx_global_var_init_6()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_299F8C000);
  }

  return result;
}

uint64_t __cxx_global_var_init_109()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_299F8C000);
  }

  return result;
}

VinylDaleCommunication *VinylCommunication::create(int a1, uint64_t a2)
{
  if ((*gBBULogMaskGet() & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "VinylCommunication", "", "VinylCommunication::create", v4, v5, v6, v14);
  }

  RadioVendor = TelephonyRadiosGetRadioVendor();
  if ((RadioVendor - 2) < 2)
  {
    v9 = operator new(0x40uLL);
    VinylICECommunication::VinylICECommunication(v9, a1, a2);
  }

  else
  {
    v8 = RadioVendor;
    if (RadioVendor == 4)
    {
      v9 = operator new(0x58uLL);
      VinylDaleCommunication::VinylDaleCommunication(v9);
    }

    else if (RadioVendor == 1)
    {
      v9 = operator new(0x38uLL);
      VinylEURCommunication::VinylEURCommunication(v9, a2);
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylCommunication", "", "Unhandled radio(%d) type or no radio\n", v10, v11, v12, v8);
      return 0;
    }
  }

  return v9;
}

void *VinylCommunication::create(uint64_t *a1)
{
  if ((*gBBULogMaskGet() & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "VinylCommunication", "", "VinylCommunication::create", v2, v3, v4, v14);
  }

  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (RadioVendor == 4)
  {
    v6 = operator new(0x58uLL);
    v7 = v6;
    v8 = a1[1];
    v15 = *a1;
    v16 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    VinylDaleCommunication::VinylDaleCommunication(v6, &v15);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else
  {
    v9 = RadioVendor;
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylCommunication", "", "Unhandled radio(%d) type or no radio\n", v10, v11, v12, v9);
    return 0;
  }

  return v7;
}

void sub_299FB8794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  operator delete(v12);
  _Unwind_Resume(a1);
}

uint64_t VinylCommunication::VinylCommunication(uint64_t result, int a2, uint64_t a3)
{
  *result = &unk_2A2031BF8;
  *(result + 8) = a2;
  *(result + 16) = a3;
  return result;
}

uint64_t VinylEURCommunication::VinylEURCommunication(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *a1 = &unk_2A20312F8;
  *(a1 + 24) = dispatch_queue_create("com.apple.VinylCommunication", 0);
  *(a1 + 32) = dispatch_queue_create("com.apple.VinylStatuscallback", 0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 35;
  return a1;
}

uint64_t VinylICECommunication::VinylICECommunication(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *a1 = &unk_2A2031940;
  *(a1 + 24) = 0;
  *(a1 + 32) = dispatch_queue_create("com.apple.VinylCommunication", 0);
  *(a1 + 40) = dispatch_queue_create("com.apple.VinylStatuscallback", 0);
  *(a1 + 48) = 0;
  *(a1 + 56) = 35;
  return a1;
}

void VinylDaleCommunication::VinylDaleCommunication(VinylDaleCommunication *this)
{
  *(this + 2) = 0;
  *(this + 2) = 0;
  *this = &unk_2A2031358;
  *(this + 3) = dispatch_queue_create("com.apple.VinylStatuscallback", 0);
  *(this + 4) = dispatch_queue_create("com.apple.VinylCommunicationMisc", 0);
  *(this + 10) = 35;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 80) = 0;
}

uint64_t VinylDaleCommunication::VinylDaleCommunication(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A2031358;
  *(a1 + 24) = dispatch_queue_create("com.apple.VinylStatuscallback", 0);
  *(a1 + 32) = dispatch_queue_create("com.apple.VinylCommunicationMisc", 0);
  *(a1 + 40) = 35;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v6 = *(a1 + 56);
    *(a1 + 48) = v5;
    *(a1 + 56) = v4;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    *(a1 + 48) = v5;
    *(a1 + 56) = 0;
  }

  return a1;
}

uint64_t *ReverseProxyGetSettings@<X0>(uint64_t a1@<X0>, const void **a2@<X8>)
{
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3002000000;
  v39[3] = __Block_byref_object_copy__0;
  v39[4] = __Block_byref_object_dispose__0;
  v4 = operator new(0x90uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 850045863;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 124) = 0u;
  *v4 = &unk_2A2031C50;
  v40[0] = v4;
  v38 = v4;
  std::__assoc_sub_state::__attach_future[abi:ne200100](v4);
  *a2 = 0;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *a1, *(a1 + 8));
  }

  else
  {
    v36 = *a1;
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  }

  else
  {
    v41 = v36;
  }

  v40[1] = 0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    v42 = v41;
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v43, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    v43 = v42;
  }

  v5 = *MEMORY[0x29EDB8ED8];
  v44 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = CFURLCreateWithString(v5, v44, 0);
    CFRelease(v44);
  }

  else
  {
    v6 = 0;
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v37 = v6;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  v7 = RPRegisterForAvailability();
  if (!v7)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, "reg");
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Failed to register for proxy\n", v19, v20, v21, v34);
    if (!v6)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v8 = *(a1 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (!v8 || !v6)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", v22, v23, v24, "!url.empty() && urlRef");
    gBBULogMaskGet();
    v28 = "NULL requestURL?\n";
LABEL_34:
    _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", v28, v25, v26, v27, v35);
    goto LABEL_35;
  }

  RPRegistrationResume();
  v43.__r_.__value_.__r.__words[0] = 5;
  v9 = std::__assoc_sub_state::wait_for[abi:ne200100]<long long,std::ratio<1l,1l>>(v4, &v43);
  RPRegistrationInvalidate();
  if (v9)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", v10, v11, v12, "fs == std::future_status::ready");
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "PRP timed out %d\n", v13, v14, v15, v9);
    goto LABEL_35;
  }

  if ((std::future<BOOL>::get(&v38) & 1) == 0)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", v31, v32, v33, "future.get()");
    gBBULogMaskGet();
    v28 = "Failed to get PRP\n";
    goto LABEL_34;
  }

  v43.__r_.__value_.__r.__words[0] = RPCopyProxyDictionary();
  ctu::cf::CFSharedRef<__CFDictionary const>::operator=(a2, &v43.__r_.__value_.__l.__data_);
LABEL_35:
  CFRelease(v7);
  v6 = v37;
  if (v37)
  {
LABEL_36:
    CFRelease(v6);
  }

LABEL_37:
  v29 = v38;
  if (v38 && !atomic_fetch_add(v38 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v29 + 16))(v29);
  }

  _Block_object_dispose(v39, 8);
  return std::promise<BOOL>::~promise(v40);
}

void sub_299FB8EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, const void *a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(&a25);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(v33);
  v36 = a26;
  if (a26)
  {
    if (!atomic_fetch_add((a26 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v36 + 16))(v36);
    }
  }

  _Block_object_dispose(&a27, 8);
  std::promise<BOOL>::~promise((v34 + 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___Z23ReverseProxyGetSettingsRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_block_invoke(uint64_t a1, int a2)
{
  if (a2 != 2)
  {
    v2 = a2;
    if (a2 == 1)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Proxy Available!\n", v4, v5, v6, v11);
      v7 = *(*(a1 + 32) + 8);
      v12 = 1;
      std::promise<BOOL>::set_value((v7 + 40), &v12);
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Proxy Aborted? %d\n", v8, v9, v10, v2);
    }
  }
}

void std::promise<BOOL>::set_value(uint64_t *a1, _BYTE *a2)
{
  v3 = *a1;
  if (!v3)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_state<BOOL>::set_value<BOOL>(v3, a2);
}