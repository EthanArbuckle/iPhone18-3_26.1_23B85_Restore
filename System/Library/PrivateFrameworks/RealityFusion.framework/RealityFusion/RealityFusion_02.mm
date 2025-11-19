uint64_t std::__unicode::__code_point_view<char>::__consume[abi:ne200100](unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = (__clz(**a1 ^ 0xFF) - 24);
  if (v2 <= 2)
  {
    if (!v2)
    {
      *a1 = v1 + 1;
      return *v1;
    }

    if (v2 == 2 && a1[1] - v1 >= 2)
    {
      v3 = v1 + 1;
      if ((v1[1] & 0xC0) == 0x80)
      {
        *a1 = v3;
        v4 = *v1 & 0x1F;
        *a1 = v1 + 2;
        if (v4 < 2)
        {
          return 2147549181;
        }

        else
        {
          return *v3 & 0x3F | (v4 << 6);
        }
      }
    }

LABEL_35:
    v5 = 2147549181;
    *a1 = v1 + 1;
    return v5;
  }

  if (v2 == 3)
  {
    if (a1[1] - v1 < 3)
    {
      goto LABEL_35;
    }

    v13 = 1;
    do
    {
      v14 = v1[v13] & 0xC0;
    }

    while (v14 == 128 && v13++ != 2);
    if (v14 != 128)
    {
      goto LABEL_35;
    }

    v5 = 2147549181;
    *a1 = v1 + 1;
    v16 = *v1 & 0xF;
    *a1 = v1 + 2;
    v17 = (v16 << 12) | ((v1[1] & 0x3F) << 6);
    *a1 = v1 + 3;
    if (v17 >= 0x800)
    {
      v18 = v17 | v1[2] & 0x3F;
      if ((v17 & 0xF800) == 0xD800)
      {
        return 2147549181;
      }

      else
      {
        return v18;
      }
    }
  }

  else
  {
    if (v2 != 4 || a1[1] - v1 < 4)
    {
      goto LABEL_35;
    }

    v6 = 1;
    do
    {
      v7 = v1[v6] & 0xC0;
    }

    while (v7 == 128 && v6++ != 3);
    if (v7 != 128)
    {
      goto LABEL_35;
    }

    v5 = 2147549181;
    *a1 = v1 + 1;
    v9 = *v1 & 7;
    *a1 = v1 + 2;
    v10 = (v9 << 12) | ((v1[1] & 0x3F) << 6);
    *a1 = v1 + 3;
    v11 = v1[2];
    *a1 = v1 + 4;
    if (v10 >= 0x400)
    {
      v12 = v1[3] & 0x3F | ((v10 | v11 & 0x3F) << 6);
      if (v10 >> 10 >= 0x11)
      {
        return 2147549181;
      }

      else
      {
        return v12;
      }
    }
  }

  return v5;
}

unsigned __int8 *std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
  }

  v4 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v4 == a2 || *v4 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The argument index is invalid");
  }

  return v4 + 1;
}

void std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](const char *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v8, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v8, a1, v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v9, " formatting argument", 0x14uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v11 = v5->__r_.__value_.__r.__words[2];
  v10 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (v11 >= 0)
  {
    v7 = &v10;
  }

  else
  {
    v7 = v10;
  }

  std::__throw_format_error[abi:ne200100](v7);
}

void sub_2617E8D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__format_spec::__parser<char>::__validate[abi:ne200100](uint64_t result, const char *a2)
{
  if ((*result & 0x18) != 0)
  {
    v2 = "sign";
    goto LABEL_11;
  }

  if ((*result & 0x20) != 0)
  {
    v2 = "alternate form";
    goto LABEL_11;
  }

  if ((*result & 7) == 4)
  {
    v2 = "zero-padding";
    goto LABEL_11;
  }

  if (*(result + 8) != -1)
  {
    v2 = "precision";
LABEL_11:
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a2, v2);
  }

  if (*(result + 1) >= 0x20u)
  {
    std::__throw_format_error[abi:ne200100]("The type does not fit in the mask");
  }

  return result;
}

void std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](const char *a1, const char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v15, "The format specifier for ");
  v4 = strlen(a1);
  v5 = std::string::append(&v15, a1, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v16, " does not allow the ", 0x14uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = strlen(a2);
  v10 = std::string::append(&v17, a2, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v18, " option", 7uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v20 = v12->__r_.__value_.__r.__words[2];
  v19 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19;
  }

  std::__throw_format_error[abi:ne200100](v14);
}

void sub_2617E8F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, void *a2)
{
  *&v26[23] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  if ((*(a1 + 1) & 0x4000) != 0)
  {
    v9 = *(a1 + 1);
    v10 = a2[1];
    if (v10 <= v9)
    {
      LOBYTE(v12) = 0;
    }

    else if (v10 > 0xC)
    {
      v13 = a2[2] + 32 * v9;
      v2 = *v13;
      v9 = *(v13 + 8);
      LOBYTE(v12) = *(v13 + 16);
      *v22 = *(v13 + 17);
      *&v22[7] = *(v13 + 24);
    }

    else
    {
      v11 = a2[2];
      v12 = (a2[3] >> (5 * v9)) & 0x1FLL;
      v2 = *(v11 + 16 * v9);
      v9 = *(v11 + 16 * v9 + 8);
    }

    v23 = v2;
    v24 = v9;
    v25 = v12;
    *v26 = *v22;
    *&v26[7] = *&v22[7];
    v7 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v23);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *(a1 + 1);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
LABEL_3:
      v8 = *(a1 + 2);
      goto LABEL_16;
    }
  }

  v14 = *(a1 + 2);
  v15 = a2[1];
  if (v15 <= v14)
  {
    LOBYTE(v17) = 0;
  }

  else if (v15 > 0xC)
  {
    v18 = a2[2] + 32 * v14;
    v2 = *v18;
    v14 = *(v18 + 8);
    LOBYTE(v17) = *(v18 + 16);
    *v22 = *(v18 + 17);
    *&v22[7] = *(v18 + 24);
  }

  else
  {
    v16 = a2[2];
    v17 = (a2[3] >> (5 * v14)) & 0x1FLL;
    v2 = *(v16 + 16 * v14);
    v14 = *(v16 + 16 * v14 + 8);
  }

  v23 = v2;
  v24 = v14;
  v25 = v17;
  *v26 = *v22;
  *&v26[7] = *&v22[7];
  v8 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v23);
LABEL_16:
  v19 = *MEMORY[0x277D85DE8];
  v20 = v8 | (*(a1 + 3) << 32);
  return (v6 << 8) | (v7 << 32) | v5 & 0x7F;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v15 = *MEMORY[0x277D85DE8];
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

    v9 = &v15;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, __src, v9, v7, v11);
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

    v9 = v13;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, __src, v13, 0, 0xAu);
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

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, __src, v14, v5, 8u);
LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

std::locale *std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](std::locale *this, uint64_t a2)
{
  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x26670CF20](&v6);
    v4 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v4, &v6);
    }

    else
    {
      std::locale::locale(v4, &v6);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(&v6);
  }

  return std::locale::locale(this, (a2 + 32));
}

void *std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a4 <= 0)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
  }

  else
  {
    v10 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, HIDWORD(a4), 1);
    std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5, v10);
  }

  return a3;
}

unint64_t std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(unsigned __int8 *a1, uint64_t a2, unint64_t a3, int a4)
{
  result = 0;
  if (!a2)
  {
    return result;
  }

  v6 = a3;
  if (!a3)
  {
    return result;
  }

  if (*a1 < 0)
  {
    v8 = a1;
  }

  else
  {
    v7 = 0;
    v8 = &a1[a3 - 1];
    while (1)
    {
      if (a2 - 1 == v7)
      {
        return a2;
      }

      if (a3 - 1 == v7)
      {
        break;
      }

      v9 = a1[++v7];
      if (v9 < 0)
      {
        v6 = a3 - v7 + 1;
        v8 = &a1[v7 - 1];
        goto LABEL_10;
      }
    }

    if ((a1[a3] & 0x80000000) == 0)
    {
      return a3;
    }

    v6 = 1;
  }

LABEL_10:
  v10 = &a1[a2];
  v35 = v8;
  v36 = &a1[a2];
  v11 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v35);
  v12 = v11 & 0x7FFFFFFF;
  v37 = v11 & 0x7FFFFFFF;
  v13 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v11 & 0x7FFFFFFF);
  v38 = v13;
  v39 = 0;
  v40 = 0;
  if (v13 == 3)
  {
    v14 = 2;
    goto LABEL_16;
  }

  if (v13 == 9)
  {
    v14 = 3;
LABEL_16:
    LODWORD(v39) = v14;
    goto LABEL_17;
  }

  if (!std::__indic_conjunct_break::__get_property[abi:ne200100](v12))
  {
    v14 = 1;
    goto LABEL_16;
  }

LABEL_17:
  v33 = v8 - a1;
  if (v8 != v10)
  {
    v15 = 0;
    while (1)
    {
      v16 = v35;
      if (v35 != v36)
      {
        break;
      }

      v18 = v12;
LABEL_49:
      if ((v12 - 262142) < 0xFFFC1102)
      {
        goto LABEL_59;
      }

      v23 = &std::__width_estimation_table::__entries[abi:ne200100];
      v24 = 107;
      do
      {
        v25 = v24 >> 1;
        v26 = &v23[v24 >> 1];
        v28 = *v26;
        v27 = v26 + 1;
        v24 += ~(v24 >> 1);
        if (((v12 << 14) | 0x3FFFu) >= v28)
        {
          v23 = v27;
        }

        else
        {
          v24 = v25;
        }
      }

      while (v24);
      if (v23 == &std::__width_estimation_table::__entries[abi:ne200100])
      {
LABEL_59:
        v30 = 1;
      }

      else
      {
        v29 = (*(v23 - 1) & 0x3FFF) + (*(v23 - 1) >> 14) >= v12;
        v30 = 1;
        if (v29)
        {
          v30 = 2;
        }
      }

      v31 = v30 + v15;
      if (a4 || v31 <= v6)
      {
        v32 = v16 == v10 || v31 > v6;
        v12 = v18;
        v15 = v31;
        if (!v32)
        {
          continue;
        }
      }

      return v33 + v15;
    }

    while (1)
    {
      v17 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v35);
      v18 = v17 & 0x7FFFFFFF;
      v19 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v17 & 0x7FFFFFFF);
      v20 = v19;
      if (v39 > 1)
      {
        if (v39 == 2)
        {
          if (HIDWORD(v39) == 2)
          {
            if (v19 != 3)
            {
              goto LABEL_44;
            }

            HIDWORD(v39) = 0;
          }

          else if (HIDWORD(v39) == 1)
          {
            if (v19 != 2)
            {
              if (v19 != 13)
              {
                goto LABEL_44;
              }

LABEL_39:
              HIDWORD(v39) = 2;
              LOBYTE(v20) = 13;
            }
          }

          else
          {
            if (v19 == 13)
            {
              goto LABEL_39;
            }

            if (v19 != 2)
            {
              goto LABEL_44;
            }

            HIDWORD(v39) = 1;
          }
        }

        else
        {
          LODWORD(v39) = 0;
          if (v19 != 9)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        if (!v39)
        {
          goto LABEL_45;
        }

        v21 = std::__indic_conjunct_break::__get_property[abi:ne200100](v18);
        if (v21 == 3)
        {
LABEL_44:
          LODWORD(v39) = 0;
LABEL_45:
          v22 = std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](&v37, v18, v20);
          v37 = v18;
          v38 = v20;
          if (v22)
          {
            goto LABEL_49;
          }

          goto LABEL_46;
        }

        if (v40)
        {
          if ((v21 - 1) >= 2)
          {
            v40 = 0;
          }
        }

        else if (v21 != 1)
        {
          if (v21 != 2)
          {
            goto LABEL_44;
          }

          v40 = 1;
        }
      }

      v37 = v18;
      v38 = v20;
LABEL_46:
      v16 = v35;
      if (v35 == v36)
      {
        goto LABEL_49;
      }
    }
  }

  v15 = 0;
  return v33 + v15;
}

void *std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 > a6)
  {
    v10 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v11 = v9 >> 1;
        v9 -= v9 >> 1;
        goto LABEL_9;
      }
    }

    else if ((a4 & 7) != 0)
    {
      v11 = 0;
LABEL_9:
      v12 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v11, SHIDWORD(a5));
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v12, __src, a2);
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v9, v10);
      return a3;
    }

    v11 = (a4 >> 32) - a6;
    v9 = 0;
    goto LABEL_9;
  }

  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
  return a3;
}

void *std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(void *result, char *__src, size_t a3)
{
  v4 = result;
  v5 = result[4];
  if (v5)
  {
    v7 = *v5;
    v6 = v5[1];
    if (*v5 - v6 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *v5 - v6;
    }

    v5[1] = v6 + a3;
    if (v7 <= v6 || v8 == 0)
    {
      return result;
    }
  }

  else
  {
    v8 = a3;
  }

  v10 = result[2];
  do
  {
    v11 = *(v4 + 8) - v10;
    if (v11 < v8 + 1)
    {
      result = (*(v4 + 24))(v4, v8 + 2);
      v10 = *(v4 + 16);
      v11 = *(v4 + 8) - v10;
    }

    if (v11 >= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      result = memmove((*v4 + v10), __src, v12);
      v10 = *(v4 + 16);
    }

    v10 += v12;
    *(v4 + 16) = v10;
    __src += v12;
    v13 = v8 > v11;
    v8 -= v12;
  }

  while (v13);
  return result;
}

uint64_t std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 1496;
  v2 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 16;
  if (v2 != &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 4) & 0x7F) + (v8 >> 11);
    v10 = v8 & 0xF;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 16;
    }
  }

  return v7;
}

uint64_t std::__indic_conjunct_break::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 201;
  v2 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &std::__indic_conjunct_break::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 4);
  if (a3 == 5 && !*(a1 + 4))
  {
    return 0;
  }

  result = 1;
  v7 = v5 > 5 || ((1 << v5) & 0x23) == 0;
  if (v7 && (a3 > 5 || ((1 << a3) & 0x23) == 0))
  {
    if (v5 > 6)
    {
      if (v5 != 7)
      {
        if (v5 != 12)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 2817;
    }

    else
    {
      if (v5 != 4)
      {
        if (v5 != 6)
        {
          goto LABEL_21;
        }

LABEL_17:
        if ((a3 - 11) >= 2u)
        {
LABEL_21:
          if (a3 == 11 && v5 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v5 == 8)
          {
            return 0;
          }

LABEL_30:
          if (std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
          {
            if (a3 == 9)
            {
              v12 = 3;
              v11 = 8;
              goto LABEL_37;
            }

            if (a3 != 3)
            {
              return 1;
            }

            v10 = 2;
            v11 = 12;
          }

          else
          {
            v10 = 1;
            v11 = 16;
          }

          v12 = 0;
          *(a1 + 8) = v10;
LABEL_37:
          *(a1 + v11) = v12;
          return 1;
        }

        return 0;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 3381;
    }

    if (((v9 >> v8) & 1) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  return result;
}

void *std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(void *a1, size_t a2, int a3)
{
  v3 = a2;
  __src = a3;
  v5 = __clz(~a3);
  v6 = v5 - 24;
  if (v5 == 24)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, a2, a3);
  }

  else if (a2)
  {
    do
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, &__src, v6);
      --v3;
    }

    while (v3);
  }

  return a1;
}

void *std::__format::__output_buffer<char>::__fill[abi:ne200100](void *result, size_t a2, int __c)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = *v6;
  v7 = v6[1];
  if (*v6 - v7 < a2)
  {
    v4 = *v6 - v7;
  }

  v6[1] = v7 + a2;
  if (v8 > v7 && v4 != 0)
  {
LABEL_8:
    v10 = result[2];
    do
    {
      v11 = *(v5 + 8) - v10;
      if (v11 < v4 + 1)
      {
        result = (*(v5 + 24))(v5, v4 + 2);
        v10 = *(v5 + 16);
        v11 = *(v5 + 8) - v10;
      }

      if (v11 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        result = memset((*v5 + v10), __c, v12);
        v10 = *(v5 + 16);
      }

      v10 += v12;
      *(v5 + 16) = v10;
      v13 = v4 > v11;
      v4 -= v12;
    }

    while (v13);
  }

  return result;
}

unint64_t std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int *a1)
{
  switch(*(a1 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      std::__throw_format_error[abi:ne200100]("Replacement argument isn't a standard signed or unsigned integer type");
    case 3:
      result = *a1;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_12;
      }

      return result;
    case 4:
      result = *a1;
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_12:
        std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
      }

      if (result >> 31)
      {
        goto LABEL_10;
      }

      return result;
    case 6:
      result = *a1;
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_10;
    case 7:
      result = *a1;
      if (result >> 31)
      {
LABEL_10:
        std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
      }

      return result;
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *__src, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a7;
  v10 = __src;
  v14 = a1;
  v15 = a3;
  if (a5)
  {
    v16 = 45;
LABEL_7:
    *__src = v16;
    v18 = __src + 1;
    goto LABEL_8;
  }

  v17 = (a3 >> 3) & 3;
  if (v17 == 2)
  {
    v16 = 43;
    goto LABEL_7;
  }

  v18 = __src;
  if (v17 == 3)
  {
    v16 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v19 = *a8;
      if (*a8)
      {
        v20 = a8 + 1;
        do
        {
          *v18++ = v19;
          v21 = *v20++;
          v19 = v21;
        }

        while (v21);
      }
    }
  }

  HIDWORD(v23) = a9 - 2;
  LODWORD(v23) = a9 - 2;
  v22 = v23 >> 1;
  switch(v22)
  {
    case 4:
      if (a7 - v18 > 9 || (v24 = (1233 * (32 - __clz(a1 | 1))) >> 12, a7 - v18 >= (((__PAIR64__(v24, a1) - std::__itoa::__pow10_32[v24]) >> 32) + 1)))
      {
        v25 = std::__itoa::__base_10_u32[abi:ne200100](v18, a1);
LABEL_17:
        v9 = v25;
      }

      break;
    case 0:
      v25 = std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    case 3:
      v25 = std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    case 7:
      v25 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    default:
      v48 = a7 - v18;
      v49 = std::__to_chars_integral_width[abi:ne200100]<unsigned int>(a1, a9);
      if (v48 >= v49)
      {
        v9 = &v18[v49];
        v50 = (v9 - 1);
        do
        {
          *v50-- = a0123456789abcd[v14 % a9];
          v51 = v14 >= a9;
          v14 /= a9;
        }

        while (v51);
      }

      break;
  }

  if ((v15 & 0x40) == 0)
  {
    goto LABEL_45;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v53, a2);
  v26 = std::locale::use_facet(&v53, MEMORY[0x277D826C0]);
  v27 = v9 - v18;
  std::locale::~locale(&v53);
  (v26->__vftable[1].__on_zero_shared)(&v53, v26);
  if ((v55 & 0x8000000000000000) != 0)
  {
    locale = v53.__locale_;
    v29 = v54;
    if (v54 && v27 > *v53.__locale_)
    {
      v30 = v53.__locale_;
      goto LABEL_26;
    }

    operator delete(v53.__locale_);
LABEL_45:
    v41 = HIDWORD(a3);
    if ((v15 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v10, v18 - v10);
      v42 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v18 - v10)
      {
        v43 = v18 - v10;
      }

      else
      {
        v43 = HIDWORD(a3);
      }

      v41 = (HIDWORD(a3) - v43);
      v44 = 48;
      v10 = v18;
    }

    else
    {
      v44 = BYTE4(a4);
      v42 = a3;
    }

    v31 = *a2;
    v45 = v41 << 32;
    v46 = a4 & 0xFFFFFF00FFFFFFFFLL | (v44 << 32);
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v9, v31, a3 & 0xFFFF0700 | v45 | v42, v46);
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v9 - v10, v31, v45 | a3 & 0xFFFFFF00 | v42, v46, v9 - v10);
    }

    return v31;
  }

  if (!v55 || v27 <= SLOBYTE(v53.__locale_))
  {
    goto LABEL_45;
  }

  locale = &v53;
  v30 = v53.__locale_;
  v29 = v54;
LABEL_26:
  v31 = *a2;
  memset(&__p, 0, sizeof(__p));
  v32 = v30 + v29;
  if (v55 >= 0)
  {
    v32 = &v53 + v55;
  }

  v33 = *locale;
  v34 = v27 - *locale;
  if (v34 >= 1)
  {
    v35 = v32 - 1;
    do
    {
      std::string::push_back(&__p, v33);
      if (locale == v35)
      {
        v33 = *locale;
      }

      else
      {
        v36 = locale + 1;
        v37 = locale + 1;
        do
        {
          v38 = *v37++;
          v33 = v38;
          if (v38)
          {
            v39 = 1;
          }

          else
          {
            v39 = v36 == v35;
          }

          v36 = v37;
        }

        while (!v39);
        locale = v37 - 1;
      }

      v34 -= v33;
    }

    while (v34 > 0);
  }

  std::string::push_back(&__p, v33 + v34);
  v40 = (v26->__vftable[1].~facet_0)(v26);
  std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v31, v10, v18, v9, &__p, v40, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v55 < 0)
  {
    operator delete(v53.__locale_);
  }

  return v31;
}

void sub_2617EA11C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void *std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(void *a1, char *__src, char *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v11 = a3;
  v14 = HIDWORD(a7);
  v15 = HIDWORD(a8);
  v16 = a3 - __src;
  LODWORD(v17) = *(a5 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = a5[1];
  }

  v18 = a4 - __src - 1 + v17;
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v18)
    {
      v19 = 0;
LABEL_16:
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, __src, v16);
      goto LABEL_17;
    }

    v19 = (a7 >> 32) - v18;
    if ((a7 & 7u) > 1)
    {
      if ((a7 & 7) != 3)
      {
        v20 = v19 >> 1;
        v19 -= v19 >> 1;
        goto LABEL_15;
      }
    }

    else if ((a7 & 7) != 0)
    {
      v20 = 0;
LABEL_15:
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v20, SHIDWORD(a8));
      goto LABEL_16;
    }

    v20 = (a7 >> 32) - v18;
    v19 = 0;
    goto LABEL_15;
  }

  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, __src, a3 - __src);
  if (v14 > v18)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, v14 - v18, 48);
  }

  v19 = 0;
LABEL_17:
  v21 = *(a5 + 23);
  v22 = v21;
  v23 = a5 + v21;
  if (v22 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = (*a5 + a5[1]);
  }

  if (v22 >= 0)
  {
    v25 = a5;
  }

  else
  {
    v25 = *a5;
  }

  v26 = v25 + 1;
  v27 = v8 & 0xFF00;
  for (i = v24; ; v24 = i)
  {
    v30 = *--i;
    v29 = v30;
    if (v27 == 1792)
    {
      v31 = &v11[v29];
      std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(a1, v11, &v11[v29]);
      v11 = v31;
    }

    else
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v11, v29);
      v11 += *i;
    }

    if (v24 == v26)
    {
      break;
    }

    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, a6);
  }

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v19, v15);
}

void *std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v8 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 > a2 - a1)
  {
    v9 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v10 = v8 >> 1;
        v8 -= v8 >> 1;
        goto LABEL_9;
      }
    }

    else if ((a4 & 7) != 0)
    {
      v10 = 0;
LABEL_9:
      v11 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v10, SHIDWORD(a5));
      std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(v11, a1, a2);
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v8, v9);
      return a3;
    }

    v10 = (a4 >> 32) - (a2 - a1);
    v8 = 0;
    goto LABEL_9;
  }

  std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(a3, a1, a2);
  return a3;
}

uint64_t std::__formatter::__hex_to_upper[abi:ne200100](int a1)
{
  if ((a1 - 97) >= 6)
  {
    return a1;
  }

  else
  {
    return (a1 - 32);
  }
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned int>(unsigned int a1, unsigned int a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = v4 * v4;
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < a2 * a2 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

char *std::__itoa::__base_10_u32[abi:ne200100](_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = std::__itoa::__digits_base_10[v7];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        a1[2] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v13 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = std::__itoa::__digits_base_10[v13 / 0x64u];
        a1[4] = std::__itoa::__digits_base_10[v13 % 0x64u];
        v2 = 10;
      }

      else
      {
        *a1 = v7 | 0x30;
        v8 = (140737489 * (a2 % 0x5F5E100)) >> 47;
        *(a1 + 1) = std::__itoa::__digits_base_10[v8];
        v9 = a2 % 0x5F5E100 - 1000000 * v8;
        *(a1 + 3) = std::__itoa::__digits_base_10[v9 / 0x2710uLL];
        v9 %= 0x2710u;
        *(a1 + 5) = std::__itoa::__digits_base_10[v9 / 0x64u];
        *(a1 + 7) = std::__itoa::__digits_base_10[v9 % 0x64u];
        v2 = 9;
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = std::__itoa::__digits_base_10[v3];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v11 = a2 % 0xF4240 % 0x2710;
        a1[2] = std::__itoa::__digits_base_10[v11 / 0x64u];
        a1[3] = std::__itoa::__digits_base_10[v11 % 0x64u];
        v2 = 8;
      }

      else
      {
        *a1 = v3 + 48;
        v4 = (429497 * (a2 % 0xF4240)) >> 32;
        *(a1 + 1) = std::__itoa::__digits_base_10[v4];
        v5 = a2 % 0xF4240 - 10000 * v4;
        *(a1 + 3) = std::__itoa::__digits_base_10[v5 / 0x64u];
        *(a1 + 5) = std::__itoa::__digits_base_10[v5 % 0x64u];
        v2 = 7;
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v6 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = std::__itoa::__digits_base_10[v6];
      v12 = a2 % 0x2710;
      a1[1] = std::__itoa::__digits_base_10[v12 / 0x64u];
      a1[2] = std::__itoa::__digits_base_10[v12 % 0x64u];
      v2 = 6;
    }

    else
    {
      *a1 = v6 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[(5243 * (a2 % 0x2710)) >> 19];
      *(a1 + 3) = std::__itoa::__digits_base_10[(a2 % 0x2710 - 100 * (((5243 * (a2 % 0x2710)) >> 16) >> 3))];
      v2 = 5;
    }
  }

  else if (a2 > 0x63)
  {
    v10 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = std::__itoa::__digits_base_10[v10];
      a1[1] = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 4;
    }

    else
    {
      *a1 = v10 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 3;
    }
  }

  else if (a2 > 9)
  {
    *a1 = std::__itoa::__digits_base_10[a2];
    v2 = 2;
  }

  else
  {
    *a1 = a2 | 0x30;
    v2 = 1;
  }

  return a1 + v2;
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 32 - __clz(a3 | 1);
  if (a2 - a1 >= v3)
  {
    a2 = a1 + v3;
    if (a3 < 0x11)
    {
      v5 = a3;
      v4 = a2;
    }

    else
    {
      v4 = a1 + v3;
      do
      {
        v5 = a3 >> 4;
        *(v4 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
        v4 -= 4;
        v6 = a3 > 0x10F;
        a3 >>= 4;
      }

      while (v6);
    }

    v7 = (v4 - 1);
    do
    {
      *v7-- = a01[v5 & 1];
      v6 = v5 > 1;
      v5 >>= 1;
    }

    while (v6);
  }

  return a2;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (86 * (34 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 >= v3)
  {
    a2 = a1 + v3;
    if (a3 < 0x41)
    {
      v5 = a3;
      v4 = a2;
    }

    else
    {
      v4 = a1 + v3;
      do
      {
        v5 = a3 >> 6;
        *(v4 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
        v4 -= 2;
        a3 = v5;
      }

      while (v5 > 0x40);
    }

    v6 = (v4 - 1);
    do
    {
      *v6-- = a01234567[v5 & 7];
      v7 = v5 > 7;
      v5 >>= 3;
    }

    while (v7);
  }

  return a2;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (35 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 >= v3)
  {
    a2 = a1 + v3;
    if (a3 < 0x101)
    {
      v5 = a3;
      v4 = a2;
    }

    else
    {
      v4 = a1 + v3;
      do
      {
        v5 = a3 >> 8;
        *(v4 - 2) = std::__itoa::__base_16_lut[a3];
        v4 -= 2;
        a3 = v5;
      }

      while (v5 > 0x100);
    }

    v6 = (v4 - 1);
    do
    {
      *v6-- = a0123456789abcd_0[v5 & 0xF];
      v7 = v5 > 0xF;
      v5 >>= 4;
    }

    while (v7);
  }

  return a2;
}

uint64_t std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(uint64_t result, char *a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  v5 = a3 - a2;
  v6 = *(result + 32);
  if (v6)
  {
    v8 = *v6;
    v7 = v6[1];
    if (*v6 - v7 >= v5)
    {
      v9 = a3 - a2;
    }

    else
    {
      v9 = *v6 - v7;
    }

    v6[1] = v7 + v5;
    if (v8 <= v7 || v9 == 0)
    {
      return result;
    }
  }

  else
  {
    v9 = a3 - a2;
  }

  v11 = *(result + 16);
  do
  {
    v12 = *(v4 + 8) - v11;
    if (v12 < v9 + 1)
    {
      result = (*(v4 + 24))(v4, v9 + 2);
      v11 = *(v4 + 16);
      v12 = *(v4 + 8) - v11;
    }

    if (v12 >= v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      v14 = (*v4 + v11);
      v15 = v13;
      v16 = v3;
      do
      {
        v17 = *v16++;
        result = std::__formatter::__hex_to_upper[abi:ne200100](v17);
        *v14++ = result;
        --v15;
      }

      while (v15);
      v11 = *(v4 + 16);
    }

    v3 += v13;
    v11 += v13;
    *(v4 + 16) = v11;
    v18 = v9 > v12;
    v9 -= v13;
  }

  while (v18);
  return result;
}

void std::__formatter::__escape[abi:ne200100]<char>(std::string *a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v23 = a2;
  v24 = &a2[a3];
  if (a3)
  {
    v5 = a2;
    v7 = 1;
    do
    {
      v8 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v23);
      if (v8 < 0)
      {
        v12 = v23;
        while (v5 != v12)
        {
          v13 = *v5++;
          std::__formatter::__write_escaped_code_unit[abi:ne200100]<char>(a1, v13, "\\x{");
        }

        goto LABEL_45;
      }

      v9 = v8;
      if (v8 <= 31)
      {
        switch(v8)
        {
          case 9:
            v10 = a1;
            v11 = "\\t";
            goto LABEL_43;
          case 10:
            v10 = a1;
            v11 = "\\n";
            goto LABEL_43;
          case 13:
            v10 = a1;
            v11 = "\\r";
            goto LABEL_43;
        }
      }

      else if (v8 > 38)
      {
        if (v8 == 39)
        {
          v10 = a1;
          if (!a4)
          {
            v11 = "\\'";
            goto LABEL_43;
          }

          v16 = 39;
          goto LABEL_41;
        }

        if (v8 == 92)
        {
          v10 = a1;
          v11 = "\\\";
          goto LABEL_43;
        }
      }

      else
      {
        if (v8 == 32)
        {
          v10 = a1;
          v16 = 32;
LABEL_41:
          std::string::push_back(v10, v16);
          goto LABEL_44;
        }

        if (v8 == 34)
        {
          v10 = a1;
          if (a4 == 1)
          {
            v11 = "\\"";
LABEL_43:
            std::string::append(v10, v11, 2uLL);
            goto LABEL_44;
          }

          v16 = 34;
          goto LABEL_41;
        }
      }

      if ((v8 - 917760) < 0xF0)
      {
        goto LABEL_23;
      }

      if (v8 <= 0x323AF)
      {
        v17 = &std::__escaped_output_table::__entries[abi:ne200100];
        v18 = 711;
        do
        {
          v19 = v18 >> 1;
          v20 = &v17[v18 >> 1];
          v22 = *v20;
          v21 = v20 + 1;
          v18 += ~(v18 >> 1);
          if (((v8 << 14) | 0x3FFFu) >= v22)
          {
            v17 = v21;
          }

          else
          {
            v18 = v19;
          }
        }

        while (v18);
        if (v17 == &std::__escaped_output_table::__entries[abi:ne200100] || (*(v17 - 1) & 0x3FFF) + (*(v17 - 1) >> 14) < v8)
        {
LABEL_23:
          if ((v7 & 1) == 0 || std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v8) != 2)
          {
            v14 = v23;
            if (v5 == v23)
            {
              v7 = 0;
            }

            else
            {
              do
              {
                v15 = *v5++;
                std::string::push_back(a1, v15);
                v7 = 0;
              }

              while (v5 != v14);
            }

            goto LABEL_45;
          }
        }
      }

      std::__formatter::__write_escaped_code_unit[abi:ne200100]<char>(a1, v9, "\\u{");
LABEL_44:
      v7 = 1;
LABEL_45:
      v5 = v23;
    }

    while (v23 != v24);
  }
}

void std::__formatter::__write_escaped_code_unit[abi:ne200100]<char>(std::string *this, unsigned int a2, std::string::value_type *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  if (*a3)
  {
    v6 = (a3 + 1);
    do
    {
      std::string::push_back(this, v5);
      v7 = *v6++;
      v5 = v7;
    }

    while (v7);
  }

  v8 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(&v12, &v13, a2);
  if (&v12 != v8)
  {
    v9 = v8;
    v10 = &v12;
    do
    {
      std::string::push_back(this, *v10++);
    }

    while (v10 != v9);
  }

  std::string::push_back(this, 125);
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(uint64_t result)
{
  v1 = *(result + 1);
  if ((v1 - 2) >= 6 && v1 != 0)
  {
    if (v1 != 10)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("an integer");
    }

    v3 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, "an integer");
    if ((*v3 & 7) == 0)
    {
      *v3 |= 1u;
    }
  }

  return result;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v14 = *MEMORY[0x277D85DE8];
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
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v12, v9, v7, v11);
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
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v12, &v13 + 2, 0, 0xAu);
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

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v12, &v13 + 5, v5, 8u);
LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, unsigned int a9)
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
    goto LABEL_40;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v44, a2);
  v21 = std::locale::use_facet(&v44, MEMORY[0x277D826C0]);
  v22 = v20 - v16;
  std::locale::~locale(&v44);
  (v21->__vftable[1].__on_zero_shared)(&v44, v21);
  if ((v46 & 0x8000000000000000) != 0)
  {
    locale = v44.__locale_;
    v24 = v45;
    if (v45 && v22 > *v44.__locale_)
    {
      v25 = v44.__locale_;
      goto LABEL_21;
    }

    operator delete(v44.__locale_);
LABEL_40:
    v36 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v37 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        v38 = v16 - v9;
      }

      else
      {
        v38 = HIDWORD(a3);
      }

      v36 = (HIDWORD(a3) - v38);
      v39 = 48;
      v9 = v16;
    }

    else
    {
      v39 = BYTE4(a4);
      v37 = a3;
    }

    v26 = *a2;
    v40 = v36 << 32;
    v41 = a4 & 0xFFFFFF00FFFFFFFFLL | (v39 << 32);
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, v26, a3 & 0xFFFF0700 | v40 | v37, v41);
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, v26, v40 | a3 & 0xFFFFFF00 | v37, v41, v20 - v9);
    }

    return v26;
  }

  if (!v46 || v22 <= SLOBYTE(v44.__locale_))
  {
    goto LABEL_40;
  }

  locale = &v44;
  v25 = v44.__locale_;
  v24 = v45;
LABEL_21:
  v26 = *a2;
  memset(&__p, 0, sizeof(__p));
  v27 = v25 + v24;
  if (v46 >= 0)
  {
    v27 = &v44 + v46;
  }

  v28 = *locale;
  v29 = v22 - *locale;
  if (v29 >= 1)
  {
    v30 = v27 - 1;
    do
    {
      std::string::push_back(&__p, v28);
      if (locale == v30)
      {
        v28 = *locale;
      }

      else
      {
        v31 = locale + 1;
        v32 = locale + 1;
        do
        {
          v33 = *v32++;
          v28 = v33;
          if (v33)
          {
            v34 = 1;
          }

          else
          {
            v34 = v31 == v30;
          }

          v31 = v32;
        }

        while (!v34);
        locale = v32 - 1;
      }

      v29 -= v28;
    }

    while (v29 > 0);
  }

  std::string::push_back(&__p, v28 + v29);
  v35 = (v21->__vftable[1].~facet_0)(v21);
  std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v26, v9, v16, v20, &__p, v35, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v44.__locale_);
  }

  return v26;
}

void sub_2617EB2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

char *std::__to_chars_integral[abi:ne200100]<unsigned long long>(char *a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v4 = a3;
  HIDWORD(v6) = a4 - 2;
  LODWORD(v6) = a4 - 2;
  v5 = v6 >> 1;
  if (v5 != 4)
  {
    if (!v5)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v5 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v5 != 7)
    {
      v16 = a1;
      v10 = a2 - a1;
      v11 = a2;
      v13 = std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(a3, a4);
      a2 = v11;
      if (v10 >= v13)
      {
        a2 = &v16[v13];
        v14 = (a2 - 1);
        do
        {
          *v14-- = a0123456789abcd[v4 % a4];
          v15 = v4 >= a4;
          v4 /= a4;
        }

        while (v15);
      }

      return a2;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
  }

  if (a2 - a1 > 19 || (v7 = (1233 * (64 - __clz(a3 | 1))) >> 12, a2 - a1 >= v7 - (std::__itoa::__pow10_64[v7] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      v4 %= 0x2540BE400uLL;
    }

    return std::__itoa::__append10[abi:ne200100]<unsigned long long>(a1, v4);
  }

  return a2;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(unint64_t a1, unsigned int a2)
{
  if (a2 > a1)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = (v4 * v4);
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < v4 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

_WORD *std::__itoa::__append10[abi:ne200100]<unsigned long long>(_WORD *a1, unint64_t a2)
{
  *a1 = *(std::__itoa::__digits_base_10 + ((a2 / 0x2FAF080) & 0xFFFFFFFE));
  v2 = a2 % 0x5F5E100;
  a1[1] = std::__itoa::__digits_base_10[v2 / 0xF4240uLL];
  v2 %= 0xF4240u;
  a1[2] = std::__itoa::__digits_base_10[v2 / 0x2710uLL];
  v2 %= 0x2710u;
  a1[3] = std::__itoa::__digits_base_10[v2 / 0x64u];
  a1[4] = std::__itoa::__digits_base_10[v2 % 0x64u];
  return a1 + 5;
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 64 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (86 * (66 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 67 - __clz(a3 | 1);
  if (a2 - a1 < (v3 >> 2))
  {
    return a2;
  }

  v4 = a1 + (v3 >> 2);
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + (v3 >> 2);
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6)
{
  v16 = *MEMORY[0x277D85DE8];
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      goto LABEL_11;
    }

    v12 = 2;
    if (BYTE1(a4) == 2)
    {
      v11 = "0b";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v11 = "0B";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v16;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, v13, v9, v11, v12);
    goto LABEL_19;
  }

  if (BYTE1(a4) > 5u)
  {
    v12 = 16;
    if (BYTE1(a4) == 6)
    {
      v11 = "0x";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v11 = "0X";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v14;
    goto LABEL_18;
  }

  if (BYTE1(a4) != 4)
  {
LABEL_11:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, v13, &v14 + 5, 0, 0xAu);
    goto LABEL_19;
  }

  if (a1 | a2)
  {
    v6 = "0";
  }

  else
  {
    v6 = 0;
  }

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, v13, v15, v6, 8u);
LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6, char *a7, uint64_t a8, _BYTE *a9, unsigned int a10)
{
  v10 = a8;
  v11 = a7;
  v12 = a5;
  v14 = a3;
  v15 = a2;
  v16 = a1;
  v17 = a4;
  if (a6)
  {
    v18 = 45;
LABEL_7:
    *a7 = v18;
    v20 = a7 + 1;
    goto LABEL_8;
  }

  v19 = (a4 >> 3) & 3;
  if (v19 == 2)
  {
    v18 = 43;
    goto LABEL_7;
  }

  v20 = a7;
  if (v19 == 3)
  {
    v18 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v21 = *a9;
      if (*a9)
      {
        v22 = a9 + 1;
        do
        {
          *v20++ = v21;
          v23 = *v22++;
          v21 = v23;
        }

        while (v23);
      }
    }
  }

  HIDWORD(v25) = a10 - 2;
  LODWORD(v25) = a10 - 2;
  v24 = v25 >> 1;
  if (v24 == 4)
  {
    v26 = a8 - v20;
    if (a2)
    {
      if (v26 > 38 || (v27 = (1233 * (128 - __clz(a2))) >> 12, v26 >= v27 - (__PAIR128__(a2, a1) < std::__itoa::__pow10_128[v27]) + 1))
      {
        if (__PAIR128__(a2, a1) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
        {
          *v20 = __udivti3() | 0x30;
          v32 = __udivti3();
          v20[1] = ((1441151881 * v32) >> 57) + 48;
          *(v20 + 1) = std::__itoa::__digits_base_10[v32 % 0x5F5E100 / 0xF4240uLL];
          v33 = v32 % 0x5F5E100 % 0xF4240;
          *(v20 + 2) = std::__itoa::__digits_base_10[v33 / 0x2710uLL];
          v33 %= 0x2710u;
          *(v20 + 3) = std::__itoa::__digits_base_10[v33 / 0x64u];
          *(v20 + 4) = std::__itoa::__digits_base_10[v33 % 0x64u];
          v34 = __udivti3();
          v29 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v20 + 5, v34);
        }

        else
        {
          v28 = __udivti3();
          if (HIDWORD(v28))
          {
            v38 = v20;
            if (v28 > 0x2540BE3FFLL)
            {
              v38 = std::__itoa::__base_10_u32[abi:ne200100](v20, v28 / 0x2540BE400);
              v28 %= 0x2540BE400uLL;
            }

            v35 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v38, v28);
            goto LABEL_35;
          }

          v29 = std::__itoa::__base_10_u32[abi:ne200100](v20, v28);
        }

        v35 = v29;
LABEL_35:
        v39 = __umodti3();
        *v35 = v39 / 0x2540BE400 / 0x5F5E100 + 48;
        v40 = v39 / 0x2540BE400 % 0x5F5E100;
        *(v35 + 1) = std::__itoa::__digits_base_10[v40 / 0xF4240uLL];
        v40 %= 0xF4240u;
        *(v35 + 3) = std::__itoa::__digits_base_10[v40 / 0x2710uLL];
        v40 %= 0x2710u;
        *(v35 + 5) = std::__itoa::__digits_base_10[v40 / 0x64u];
        *(v35 + 7) = std::__itoa::__digits_base_10[v40 % 0x64u];
        v10 = std::__itoa::__append10[abi:ne200100]<unsigned long long>((v35 + 9), v39 % 0x2540BE400);
        v12 = a5;
        v14 = a3;
        v11 = a7;
      }

LABEL_36:
      if ((v17 & 0x40) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_37;
    }

    if (v26 <= 19)
    {
      v30 = (1233 * (64 - __clz(a1 | 1))) >> 12;
      if (v26 < v30 - (std::__itoa::__pow10_64[v30] > a1) + 1)
      {
        goto LABEL_36;
      }
    }

    if (HIDWORD(a1))
    {
      v37 = v20;
      if (v16 > 0x2540BE3FFLL)
      {
        v37 = std::__itoa::__base_10_u32[abi:ne200100](v20, v16 / 0x2540BE400);
        v16 %= 0x2540BE400uLL;
      }

      v10 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v37, v16);
      v14 = a3;
      if ((v17 & 0x40) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_37;
    }

    v31 = std::__itoa::__base_10_u32[abi:ne200100](v20, a1);
  }

  else if (v24)
  {
    if (v24 == 3)
    {
      v31 = std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(v20, a8, a1, a2);
    }

    else
    {
      if (v24 != 7)
      {
        v63 = a8 - v20;
        v64 = std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(a1, a2, a10);
        if (v63 >= v64)
        {
          v10 = &v20[v64];
          v65 = v10 - 1;
          do
          {
            v66 = __udivti3();
            v67 = __PAIR128__(v15, v16) >= a10;
            *v65-- = a0123456789abcd[v16 - v66 * a10];
            v16 = v66;
            v15 = v68;
          }

          while (v67);
        }

        v14 = a3;
        if ((v17 & 0x40) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_37;
      }

      v31 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(v20, a8, a1, a2);
    }
  }

  else
  {
    v31 = std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(v20, a8, a1, a2);
  }

  v10 = v31;
  if ((v17 & 0x40) == 0)
  {
    goto LABEL_63;
  }

LABEL_37:
  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v74, v14);
  v41 = std::locale::use_facet(&v74, MEMORY[0x277D826C0]);
  v42 = v10 - v20;
  std::locale::~locale(&v74);
  (v41->__vftable[1].__on_zero_shared)(&v74, v41);
  if ((v76 & 0x8000000000000000) != 0)
  {
    locale = v74.__locale_;
    v44 = v75;
    if (v75 && v42 > *v74.__locale_)
    {
      v45 = v74.__locale_;
      goto LABEL_44;
    }

    operator delete(v74.__locale_);
LABEL_63:
    v56 = HIDWORD(a4);
    if ((v17 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*v14, v11, v20 - v11);
      v57 = a4 & 0xF8 | 3;
      if (SHIDWORD(a4) >= v20 - v11)
      {
        v58 = v20 - v11;
      }

      else
      {
        v58 = HIDWORD(a4);
      }

      v56 = (HIDWORD(a4) - v58);
      v59 = 48;
      v11 = v20;
    }

    else
    {
      v59 = BYTE4(v12);
      v57 = a4;
    }

    v46 = *v14;
    v60 = v56 << 32;
    v61 = v12 & 0xFFFFFF00FFFFFFFFLL | (v59 << 32);
    if ((a4 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, v10, v46, a4 & 0xFFFF0700 | v60 | v57, v61);
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, v10 - v11, v46, v60 | a4 & 0xFFFFFF00 | v57, v61, v10 - v11);
    }

    return v46;
  }

  if (!v76 || v42 <= SLOBYTE(v74.__locale_))
  {
    goto LABEL_63;
  }

  locale = &v74;
  v45 = v74.__locale_;
  v44 = v75;
LABEL_44:
  v46 = *v14;
  memset(&v73, 0, sizeof(v73));
  v47 = v45 + v44;
  if (v76 >= 0)
  {
    v47 = &v74 + v76;
  }

  v48 = *locale;
  v49 = v42 - *locale;
  if (v49 >= 1)
  {
    v50 = v47 - 1;
    do
    {
      std::string::push_back(&v73, v48);
      if (locale == v50)
      {
        v48 = *locale;
      }

      else
      {
        v51 = locale + 1;
        v52 = locale + 1;
        do
        {
          v53 = *v52++;
          v48 = v53;
          if (v53)
          {
            v54 = 1;
          }

          else
          {
            v54 = v51 == v50;
          }

          v51 = v52;
        }

        while (!v54);
        locale = v52 - 1;
      }

      v49 -= v48;
    }

    while (v49 > 0);
  }

  std::string::push_back(&v73, v48 + v49);
  v55 = (v41->__vftable[1].~facet_0)(v41);
  std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v46, v11, v20, v10, &v73, v55, a4, v12);
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (v76 < 0)
  {
    operator delete(v74.__locale_);
  }

  return v46;
}

void sub_2617EC128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::locale a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19.__locale_);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (__PAIR128__(a2, a1) < a3)
  {
    return 1;
  }

  v5 = a3 * a3;
  v6 = a3 * a3 * a3;
  v3 = 4;
  while (1)
  {
    if (__PAIR128__(a2, a1) < v5)
    {
      return (v3 - 2);
    }

    if (__PAIR128__(a2, a1) < v6)
    {
      break;
    }

    if (__PAIR128__(a2, a1) < v5 * v5)
    {
      return v3;
    }

    a1 = __udivti3();
    v3 = (v3 + 4);
    if (__PAIR128__(a2, a1) < a3)
    {
      return (v3 - 3);
    }
  }

  return (v3 - 1);
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 128 - v5;
  if (a2 - a1 >= v6)
  {
    a2 = a1 + v6;
    if (__PAIR128__(a4, a3) < 0x11)
    {
      v8 = a3;
      v10 = a4;
      v7 = a2;
    }

    else
    {
      v7 = a1 + v6;
      do
      {
        *(&v9 + 1) = a4;
        *&v9 = a3;
        v8 = v9 >> 4;
        v10 = a4 >> 4;
        *(v7 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
        v7 -= 4;
        v11 = a3 <= 0x10F;
        a3 = v8;
        a4 >>= 4;
      }

      while (!v11);
    }

    v12 = (v7 - 1);
    do
    {
      v13 = v8 & 1;
      v11 = v8 <= 1;
      *(&v14 + 1) = v10;
      *&v14 = v8;
      v8 = v14 >> 1;
      v10 >>= 1;
      *v12-- = a01[v13];
    }

    while (!v11);
  }

  return a2;
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
  if (a2 - a1 >= v6)
  {
    a2 = a1 + v6;
    if (__PAIR128__(a4, a3) < 0x41)
    {
      v8 = a3;
      v7 = a2;
    }

    else
    {
      v7 = a1 + v6;
      do
      {
        *(&v9 + 1) = a4;
        *&v9 = a3;
        v8 = v9 >> 6;
        a4 >>= 6;
        *(v7 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
        v7 -= 2;
        a3 = v8;
      }

      while (v8 > 0x40);
    }

    v10 = (v7 - 1);
    do
    {
      v11 = v8 & 7;
      v12 = v8 <= 7;
      *(&v13 + 1) = a4;
      *&v13 = v8;
      v8 = v13 >> 3;
      a4 >>= 3;
      *v10-- = a01234567[v11];
    }

    while (!v12);
  }

  return a2;
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
  if (a2 - a1 >= (v6 >> 2))
  {
    a2 = a1 + (v6 >> 2);
    if (__PAIR128__(a4, a3) < 0x101)
    {
      v8 = a3;
      v7 = a2;
    }

    else
    {
      v7 = a1 + (v6 >> 2);
      do
      {
        *(&v9 + 1) = a4;
        *&v9 = a3;
        v8 = v9 >> 8;
        a4 >>= 8;
        *(v7 - 2) = std::__itoa::__base_16_lut[a3];
        v7 -= 2;
        a3 = v8;
      }

      while (v8 > 0x100);
    }

    v10 = (v7 - 1);
    do
    {
      v11 = v8 & 0xF;
      v12 = v8 <= 0xF;
      *(&v13 + 1) = a4;
      *&v13 = v8;
      v8 = v13 >> 4;
      a4 >>= 4;
      *v10-- = a0123456789abcd_0[v11];
    }

    while (!v12);
  }

  return a2;
}

void *std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(void *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  if (a4)
  {
    v6 = 45;
  }

  else
  {
    v7 = (a2 >> 3) & 3;
    if (v7 == 2)
    {
      v6 = 43;
    }

    else
    {
      if (v7 != 3)
      {
        p_src = &__src;
        goto LABEL_8;
      }

      v6 = 32;
    }
  }

  p_src = v15;
  __src = v6;
LABEL_8:
  if (BYTE1(a2) <= 0x10u && ((1 << SBYTE1(a2)) & 0x15000) != 0)
  {
    v9 = 6;
  }

  else
  {
    v9 = 6;
    if (BYTE1(a2) != 18)
    {
      v9 = 0;
    }
  }

  v10 = 3;
  if (!a5)
  {
    v10 = 0;
  }

  v11 = &aInfnaninfnan[v9 + v10];
  *p_src = *v11;
  p_src[2] = v11[2];
  if ((a2 & 7) == 4)
  {
    v12 = a2 & 0xF8 | 3;
  }

  else
  {
    v12 = a2;
  }

  std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, p_src - &__src + 3, a1, a2 & 0xFFFFFFFFFFFFFF00 | v12, a3, p_src - &__src + 3);
  return a1;
}

void *std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7, size_t a8)
{
  v13 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      v14 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ((a4 & 7) == 3)
  {
LABEL_5:
    v14 = (a4 >> 32) - (a6 + a8);
    v13 = 0;
    goto LABEL_7;
  }

  v14 = v13 >> 1;
  v13 -= v13 >> 1;
LABEL_7:
  v15 = HIDWORD(a5);
  v16 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v14, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v16, a1, a7 - a1);
  std::__format::__output_buffer<char>::__fill[abi:ne200100](a3, a8, 48);
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, a7, a2 - a7);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v13, v15);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x26670CFD0](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
  a1[3] = v6;
  result = (a4 + 1);
  if (a4 + 1 == v6)
  {
    a1[1] = v6;
    v11 = 2;
  }

  else
  {
    v8 = v6 - result;
    if (v6 - result < 4)
    {
LABEL_8:
      a1[2] = v6;
      result = memchr(result, 46, v8);
      if (result)
      {
        v6 = result;
      }
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

      a1[2] = v6 + v10;
      if (*result == 46)
      {
        v6 = a4 + 1;
      }
    }

    v11 = 1;
  }

  a1[v11] = v6;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x26670CFD0](a5, v7, 4);
  }

  a1[3] = result;
  v10 = *(a5 + 1);
  v9 = a5 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 5), 112, 3uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x26670CFD0](a5, a3 + a2, 1);
  a1[3] = result;
  v8 = a5 + 1;
  if (*(a5 + 1) == 46)
  {
    a1[1] = v8;
    v9 = result - a5 - 2;
    if (v9 < 4)
    {
LABEL_8:
      v8 = result;
    }

    else
    {
      if (v9 >= 6)
      {
        v9 = 6;
      }

      v10 = -v9;
      while (*(result + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      v8 = result + v10;
    }
  }

  else
  {
    a1[1] = result;
  }

  a1[2] = v8;
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

  v49 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_30;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    v16 = *__p.__r_.__value_.__l.__data_;
    if (v49 <= v16)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_30;
    }

    v18 = *__p.__r_.__value_.__l.__data_;
    v15 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_30;
    }

    if (v49 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_30;
    }

    size = __p.__r_.__value_.__l.__size_;
    v15 = __p.__r_.__value_.__r.__words[0];
    v16 = __p.__r_.__value_.__s.__data_[0];
    p_p = &__p;
    v18 = __p.__r_.__value_.__s.__data_[0];
  }

  memset(&v50, 0, sizeof(v50));
  v19 = (v15 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v19;
  }

  v21 = v49 - v16;
  if (v49 - v16 >= 1)
  {
    v22 = (v20 - 1);
    do
    {
      std::string::push_back(&v50, v18);
      if (p_p == v22)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v23 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v24 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v25 = *v24++;
          v18 = v25;
          if (v25)
          {
            v26 = 1;
          }

          else
          {
            v26 = v23 == v22;
          }

          v23 = v24;
        }

        while (!v26);
        p_p = (v24 - 1);
      }

      v21 -= v18;
    }

    while (v21 > 0);
  }

  std::string::push_back(&v50, v18 + v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v50;
LABEL_30:
  v27 = HIDWORD(a6);
  v28 = *(a2 + 16);
  v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = __p.__r_.__value_.__l.__size_;
  }

  v30 = a3[3] - v28 + *(a2 + 4) + v29 - (v29 != 0);
  v31 = a5 & 7;
  v32 = (a5 >> 32) - v30;
  if (a5 >> 32 <= v30)
  {
    *v48 = 0;
    v32 = 0;
    v33 = v27;
    goto LABEL_46;
  }

  if (v31 == 4)
  {
    v33 = 48;
  }

  else
  {
    v33 = v27;
  }

  if (v31 == 4)
  {
    v34 = 3;
  }

  else
  {
    v34 = a5 & 7;
  }

  if (v34 > 1)
  {
    if (v34 != 3)
    {
      *v48 = v32 - (v32 >> 1);
      v32 >>= 1;
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (!v34)
  {
LABEL_44:
    *v48 = 0;
    goto LABEL_46;
  }

  *v48 = (a5 >> 32) - v30;
  v32 = 0;
LABEL_46:
  if (v31 == 4 && v13 != v28)
  {
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v28);
  }

  v35 = v27 & 0xFFFFFF00 | v33;
  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v32, v35);
  if (v31 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_57;
    }

LABEL_60:
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v13, v49);
    goto LABEL_61;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_60;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_57:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, v40);
  }

LABEL_61:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, v45);
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, a3[1] + 1, a3[2] - (a3[1] + 1));
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v46, v44 - v46);
  }

  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, *v48, v35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_2617ECC90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x26670CF70](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
  a1[3] = v6;
  result = (a4 + 1);
  if (a4 + 1 == v6)
  {
    a1[1] = v6;
    v11 = 2;
  }

  else
  {
    v8 = v6 - result;
    if (v6 - result < 4)
    {
LABEL_8:
      a1[2] = v6;
      result = memchr(result, 46, v8);
      if (result)
      {
        v6 = result;
      }
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

      a1[2] = v6 + v10;
      if (*result == 46)
      {
        v6 = a4 + 1;
      }
    }

    v11 = 1;
  }

  a1[v11] = v6;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x26670CF70](a5, v7, 4);
  }

  a1[3] = result;
  v10 = *(a5 + 1);
  v9 = a5 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 6), 112, 4uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x26670CF70](a5, a3 + a2, 1);
  a1[3] = result;
  v8 = a5 + 1;
  if (*(a5 + 1) == 46)
  {
    a1[1] = v8;
    v9 = result - a5 - 2;
    if (v9 < 4)
    {
LABEL_8:
      v8 = result;
    }

    else
    {
      if (v9 >= 6)
      {
        v9 = 6;
      }

      v10 = -v9;
      while (*(result + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      v8 = result + v10;
    }
  }

  else
  {
    a1[1] = result;
  }

  a1[2] = v8;
  return result;
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x26670CFA0](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
  a1[3] = v6;
  result = (a4 + 1);
  if (a4 + 1 == v6)
  {
    a1[1] = v6;
    v11 = 2;
  }

  else
  {
    v8 = v6 - result;
    if (v6 - result < 4)
    {
LABEL_8:
      a1[2] = v6;
      result = memchr(result, 46, v8);
      if (result)
      {
        v6 = result;
      }
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

      a1[2] = v6 + v10;
      if (*result == 46)
      {
        v6 = a4 + 1;
      }
    }

    v11 = 1;
  }

  a1[v11] = v6;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x26670CFA0](a5, v7, 4);
  }

  a1[3] = result;
  v10 = *(a5 + 1);
  v9 = a5 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 6), 112, 4uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x26670CFA0](a5, a3 + a2, 1);
  a1[3] = result;
  v8 = a5 + 1;
  if (*(a5 + 1) == 46)
  {
    a1[1] = v8;
    v9 = result - a5 - 2;
    if (v9 < 4)
    {
LABEL_8:
      v8 = result;
    }

    else
    {
      if (v9 >= 6)
      {
        v9 = 6;
      }

      v10 = -v9;
      while (*(result + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      v8 = result + v10;
    }
  }

  else
  {
    a1[1] = result;
  }

  a1[2] = v8;
  return result;
}

unsigned __int8 *std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(a1, a2, 40);
  v4 = *(a1 + 1);
  if (v4 >= 2 && v4 != 19)
  {
    std::__throw_format_error[abi:ne200100]("The type option contains an invalid value for a string formatting argument");
  }

  return result;
}

void *std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 *a2, size_t a3, void *a4)
{
  v6 = *(a1 + 1);
  v7 = *a4;
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  v10 = v8;
  if (v6 == 19)
  {
    memset(&v14, 0, sizeof(v14));
    std::string::push_back(&v14, 34);
    std::__formatter::__escape[abi:ne200100]<char>(&v14, a2, a3, 1);
    std::string::push_back(&v14, 34);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v14;
    }

    else
    {
      v11 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, size, v7, v9, v10);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v7, v9, v8);
  }

  return v7;
}

void sub_2617ED220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x80000000) != 0)
  {
    std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5);
  }

  else
  {
    v9 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, a5 & 0x7FFFFFFF, 0);
    std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, v10 - __src, a3, a4, a5, v9);
  }

  return a3;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char *a5, uint64_t a6, _BYTE *a7, unsigned int a8)
{
  v8 = a5;
  v12 = (a3 >> 3) & 3;
  if (v12 == 2)
  {
    v14 = 43;
    goto LABEL_5;
  }

  v13 = a5;
  if (v12 == 3)
  {
    v14 = 32;
LABEL_5:
    *a5 = v14;
    v13 = a5 + 1;
  }

  if ((a3 & 0x20) != 0)
  {
    if (a7)
    {
      v15 = *a7;
      if (*a7)
      {
        v16 = a7 + 1;
        do
        {
          *v13++ = v15;
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }
    }
  }

  v18 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v13, a6, a1, a8);
  if ((a3 & 0x40) == 0)
  {
    goto LABEL_38;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v42, a2);
  v19 = std::locale::use_facet(&v42, MEMORY[0x277D826C0]);
  v20 = v18 - v13;
  std::locale::~locale(&v42);
  (v19->__vftable[1].__on_zero_shared)(&v42, v19);
  if ((v44 & 0x8000000000000000) != 0)
  {
    locale = v42.__locale_;
    v22 = v43;
    if (v43 && v20 > *v42.__locale_)
    {
      v23 = v42.__locale_;
      goto LABEL_19;
    }

    operator delete(v42.__locale_);
LABEL_38:
    v34 = HIDWORD(a3);
    if ((a3 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v8, v13 - v8);
      v35 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v13 - v8)
      {
        v36 = v13 - v8;
      }

      else
      {
        v36 = HIDWORD(a3);
      }

      v34 = (HIDWORD(a3) - v36);
      v37 = 48;
      v8 = v13;
    }

    else
    {
      v37 = BYTE4(a4);
      v35 = a3;
    }

    v24 = *a2;
    v38 = v34 << 32;
    v39 = a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32);
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v8, v18, v24, a3 & 0xFFFF0700 | v38 | v35, v39);
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v8, v18 - v8, v24, v38 | a3 & 0xFFFFFF00 | v35, v39, v18 - v8);
    }

    return v24;
  }

  if (!v44 || v20 <= SLOBYTE(v42.__locale_))
  {
    goto LABEL_38;
  }

  locale = &v42;
  v23 = v42.__locale_;
  v22 = v43;
LABEL_19:
  v24 = *a2;
  memset(&__p, 0, sizeof(__p));
  v25 = v23 + v22;
  if (v44 >= 0)
  {
    v25 = &v42 + v44;
  }

  v26 = *locale;
  v27 = v20 - *locale;
  if (v27 >= 1)
  {
    v28 = v25 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (locale == v28)
      {
        v26 = *locale;
      }

      else
      {
        v29 = locale + 1;
        v30 = locale + 1;
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
        locale = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v19->__vftable[1].~facet_0)(v19);
  std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v24, v8, v13, v18, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(v42.__locale_);
  }

  return v24;
}

void sub_2617ED5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void RFAnchorManagementServiceCreate()
{
  v3 = *MEMORY[0x277D85DE8];
  v1[9] = 0;
  v1[13] = 0;
  v1[5] = 0;
  v1[0] = 0;
  *(v1 + 7) = 0;
  v1[21] = 0;
  v1[22] = 0;
  v1[17] = 0;
  v2 = 0;
  v0 = *MEMORY[0x277CBECE8];
  if (qword_2810C4650 != -1)
  {
    dispatch_once(&qword_2810C4650, &__block_literal_global_0);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

void sub_2617ED778(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RFAnchorManagementServiceCleanupWithServiceLocator(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 16);
    result = MEMORY[0x26670CB90](a2);
    if (result)
    {
      result = REShadowManagerClearShadowClusterRootUpdateHandler();
      *(v2 + 320) = 0;
    }
  }

  return result;
}

uint64_t RFAnchorManagementUpdateAnchoringInScene(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  ECSManagerNullable = RESceneGetECSManagerNullable();
  if (ECSManagerNullable)
  {
    ECSManagerNullable = REECSManagerGetServiceLocator();
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  v7 = 0;
  v8 = ECSManagerNullable;
  v9 = v5;
  v10 = a2;
  v11 = 1;
  v12 = 0;
  return (*(*(v3 + 8) + 16))(v3 + 8, &v7);
}

uint64_t RFAnchorManagementServiceUpdateByDeltaTime(uint64_t a1, uint64_t a2, uint64_t *a3, float a4)
{
  v7 = *(a1 + 16) + 8;
  ECSManagerNullable = RESceneGetECSManagerNullable();
  if (!ECSManagerNullable)
  {
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = a4;
    v12 = ECSManagerNullable;
    v13 = v9;
    v14 = a2;
    v15 = 1;
    v16 = 0;
    return (*(*v7 + 16))(v7, &v11);
  }

  ECSManagerNullable = REECSManagerGetServiceLocator();
  v9 = 1;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = a4;
  v12 = ECSManagerNullable;
  v13 = v9;
  v14 = a2;
  v15 = 1;
  v16 = *a3;
  return (*(*v7 + 16))(v7, &v11);
}

uint64_t RFAnchorManagementSetDebugVisualizationEnabled(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (*(v2 + 72) != a2)
  {
    *(v2 + 72) = a2;
  }

  return result;
}

uint64_t RFAnchorManagementSetRequiresPlacement(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (*(v2 + 73) != a2)
  {
    *(v2 + 73) = a2;
  }

  return result;
}

uint64_t RFAnchorManagementSetRestrictNestedAnchoring(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (*(v2 + 74) != a2)
  {
    *(v2 + 74) = a2;
  }

  return result;
}

uint64_t RFAnchorManagementSetRestrictAnchoring(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (*(v2 + 75) != a2)
  {
    *(v2 + 75) = a2;
  }

  return result;
}

uint64_t RFAnchorManagementSetCheckEntitledAncestor(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (*(v2 + 76) != a2)
  {
    *(v2 + 76) = a2;
  }

  return result;
}

void *RFAnchorManagementAddNestedAnchoringEntitledPeer(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = a2;
  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>((v2 + 328), &v4);
}

uint64_t *RFAnchorManagementRemoveNestedAnchoringEntitledPeer(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = a2;
  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__erase_unique<unsigned long long>((v2 + 328), &v4);
}

void *RFAnchorManagementAddAnchoringEntitledPeer(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = a2;
  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>((v2 + 368), &v4);
}

uint64_t *RFAnchorManagementRemoveAnchoringEntitledPeer(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = a2;
  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__erase_unique<unsigned long long>((v2 + 368), &v4);
}

void *RFAnchorManagementAddAnchoringEntitledAncestor(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = a2;
  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>((v2 + 408), &v4);
}

uint64_t *RFAnchorManagementRemoveAnchoringEntitledAncestor(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = a2;
  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__erase_unique<unsigned long long>((v2 + 408), &v4);
}

uint64_t RFAnchorManagementSetStrictLocalAnchoring(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (*(v2 + 77) != a2)
  {
    *(v2 + 77) = a2;
  }

  return result;
}

uint64_t RFAnchorManagerSetRestrictTransformSync(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (*(v2 + 78) != a2)
  {
    *(v2 + 78) = a2;
  }

  return result;
}

void *RFAnchorManagerAllowTransformSyncingForPeer(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = a2;
  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>((v2 + 448), &v4);
}

uint64_t *RFAnchorManagerRevokeTransformSyncingForPeer(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = a2;
  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__erase_unique<unsigned long long>((v2 + 448), &v4);
}

uint64_t RFAnchorManagementSetAnchoringStateChangeCallback(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v5[0] = &unk_2874083F8;
  v5[1] = MEMORY[0x26670D530](a2);
  v5[3] = v5;
  std::function<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator=((v2 + 40), v5);
  result = std::__function::__value_func<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2617EDCA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *RFAnchorManagerAddReservedAnchorIdentifier(uint64_t a1, __int128 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  v7 = 0;
  v8 = 0;
  uuid_clear(&v6);
  v6 = *a2;
  result = std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>((v3 + 528), &v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *RFAnchorManagerRemoveReservedAnchorIdentifier(uint64_t a1, __int128 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  v7 = 0;
  v8 = 0;
  uuid_clear(&v6);
  v6 = *a2;
  result = std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>((v3 + 528), &v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RFAnchorManagementSetOnAnchorCreatedCallback(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v5[0] = &unk_287408488;
  v5[1] = MEMORY[0x26670D530](a2);
  v5[3] = v5;
  std::function<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::operator=((v2 + 80), v5);
  result = std::__function::__value_func<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2617EDE44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RFAnchorManagementSetOnCustomAnchorCreateCallback(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v5[0] = &unk_287408598;
  v5[1] = MEMORY[0x26670D530](a2);
  v5[3] = v5;
  std::function<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::operator=((v2 + 112), v5);
  result = std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2617EDEEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RFAnchorManagementSetOnSharedCustomAnchorCreateCallback(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v5[0] = &unk_287408628;
  v5[1] = MEMORY[0x26670D530](a2);
  v5[3] = v5;
  std::function<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::operator=((v2 + 144), v5);
  result = std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2617EDF94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RFAnchorManagementSetOnImageAnchorChangedCallback(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v5[0] = &unk_2874086A8;
  v5[1] = MEMORY[0x26670D530](a2);
  v5[3] = v5;
  std::function<void ()(NSSet<ARReferenceImage *> *)>::operator=((v2 + 208), v5);
  result = std::__function::__value_func<void ()(NSSet<ARReferenceImage *> *)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2617EE03C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(NSSet<ARReferenceImage *> *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RFAnchorManagementSetNeedClientAnchoring(uint64_t result, char a2)
{
  v2 = *(result + 16);
  *(v2 + 241) = a2;
  *(v2 + 32) = 1;
  return result;
}

void rf::data_flow::consumer::AnchorManagementConfig::~AnchorManagementConfig(rf::data_flow::consumer::AnchorManagementConfig *this)
{
  std::__function::__value_func<void ()(NSSet<ARReferenceImage *> *)>::~__value_func[abi:ne200100](this + 168);
  std::__function::__value_func<void ()(rf::data_flow::RFUUID)>::~__value_func[abi:ne200100](this + 136);
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::~__value_func[abi:ne200100](this + 104);
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::~__value_func[abi:ne200100](this + 72);
  std::__function::__value_func<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::~__value_func[abi:ne200100](this + 40);

  std::__function::__value_func<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::~__value_func[abi:ne200100](this);
}

uint64_t std::__function::__value_func<void ()(rf::data_flow::RFUUID)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(NSSet<ARReferenceImage *> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_9data_flow8consumer27AnchorManagementConsumerIOSEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_2[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::data_flow::consumer::AnchorManagementConsumerIOS]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4658 = 0u;
  xmmword_2810C4668 = 0u;
  xmmword_2810C4678 = 0u;
  unk_2810C4688 = 0u;
  xmmword_2810C4698 = 0u;
  unk_2810C46A8 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4658 + 1) = p_dst;
  *&xmmword_2810C4668 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::AnchorManagementConsumerIOS>>::initCallback;
  *&xmmword_2810C4678 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::AnchorManagementConsumerIOS>>::finalizeCallback;
  qword_2810C4690 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::AnchorManagementConsumerIOS>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4698 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::AnchorManagementConsumerIOS>>::copyDebugDescriptionCallback;
  _MergedGlobals_1 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2617EE5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<rf::CustomCFObject<rf::data_flow::consumer::AnchorManagementConsumerIOS>::BridgableObject,std::default_delete<rf::CustomCFObject<rf::data_flow::consumer::AnchorManagementConsumerIOS>::BridgableObject>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    rf::data_flow::consumer::AnchorManagementConsumer::~AnchorManagementConsumer((v2 + 8));

    JUMPOUT(0x26670D060);
  }

  return result;
}

void rf::data_flow::consumer::AnchorManagementConsumer::~AnchorManagementConsumer(id *this)
{
  *this = &unk_28740AFD0;
  std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::~__hash_table((this + 80));
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>>>::~__hash_table((this + 73));

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table((this + 65));
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table((this + 60));
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table((this + 55));
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table((this + 50));
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table((this + 45));
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table((this + 40));
  RESharedPtr<REAsset>::~RESharedPtr(this + 38);
  std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::~__hash_table((this + 31));
  std::__function::__value_func<void ()(NSSet<ARReferenceImage *> *)>::~__value_func[abi:ne200100]((this + 25));
  std::__function::__value_func<void ()(rf::data_flow::RFUUID)>::~__value_func[abi:ne200100]((this + 21));
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::~__value_func[abi:ne200100]((this + 17));
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::~__value_func[abi:ne200100]((this + 13));
  std::__function::__value_func<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::~__value_func[abi:ne200100]((this + 9));
  std::__function::__value_func<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::~__value_func[abi:ne200100]((this + 4));
}

{
  rf::data_flow::consumer::AnchorManagementConsumer::~AnchorManagementConsumer(this);

  JUMPOUT(0x26670D060);
}

uint64_t std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions::~SceneSubscriptions((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions::~SceneSubscriptions(rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions *this)
{
  rf::internal::assert_impl<(rf::internal::AssertLevel)0,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions::~SceneSubscriptions()::{lambda(void)#1}>(*this != 0);
  MEMORY[0x26670C440](*this, *(this + 10), *(this + 11));
  rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions::unsubscribeComponentEvents(this);
}

uint64_t rf::internal::assert_impl<(rf::internal::AssertLevel)0,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions::~SceneSubscriptions()::{lambda(void)#1}>(uint64_t result)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    rf::getMessage("Event bus should not be null", __p);
    rf::internal::logAssert(__p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v2);
    v5 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions::~SceneSubscriptions()::{lambda()#1}::operator()(&v4);
    if ((v4.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v4;
    }

    else
    {
      v3 = v4.__r_.__value_.__r.__words[0];
    }

    v8 = 136315138;
    v9 = v3;
    _os_log_send_and_compose_impl();
    std::string::~string(&v4);
    _os_crash_msg();
    __break(1u);
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2617EE944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions::unsubscribeComponentEvents(uint64_t this)
{
  if (*(this + 8))
  {
    v1 = this;
    v2 = (this + 24);
    v3 = 64;
    do
    {
      this = MEMORY[0x26670C440](*(v1 + 8), *(v2 - 1), *v2);
      v2 += 2;
      v3 -= 16;
    }

    while (v3);
    *(v1 + 8) = 0;
  }

  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,ARReferenceImage * {__strong}>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,ARReferenceImage * {__strong}>,0>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__function::__func<RFAnchorManagementSetAnchoringStateChangeCallback::$_0,std::allocator<RFAnchorManagementSetAnchoringStateChangeCallback::$_0>,void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFAnchorManagementSetAnchoringStateChangeCallback::$_0,std::allocator<RFAnchorManagementSetAnchoringStateChangeCallback::$_0>,void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2874083F8;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFAnchorManagementSetAnchoringStateChangeCallback::$_0,std::allocator<RFAnchorManagementSetAnchoringStateChangeCallback::$_0>,void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFAnchorManagementSetAnchoringStateChangeCallback::$_0,std::allocator<RFAnchorManagementSetAnchoringStateChangeCallback::$_0>,void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator()(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = *a2;
  v4 = *a3;
  return (*(*(a1 + 8) + 16))();
}

uint64_t std::__function::__func<RFAnchorManagementSetAnchoringStateChangeCallback::$_0,std::allocator<RFAnchorManagementSetAnchoringStateChangeCallback::$_0>,void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RFAnchorManagementSetOnAnchorCreatedCallback::$_0,std::allocator<RFAnchorManagementSetOnAnchorCreatedCallback::$_0>,rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFAnchorManagementSetOnAnchorCreatedCallback::$_0,std::allocator<RFAnchorManagementSetOnAnchorCreatedCallback::$_0>,rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_287408488;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFAnchorManagementSetOnAnchorCreatedCallback::$_0,std::allocator<RFAnchorManagementSetOnAnchorCreatedCallback::$_0>,rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<RFAnchorManagementSetOnAnchorCreatedCallback::$_0,std::allocator<RFAnchorManagementSetOnAnchorCreatedCallback::$_0>,rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v4, a2);
  if (v5 != -1)
  {
    p_cf = &cf;
    (off_2874084F8[v5])(&p_cf, v4);
    rf::makeCustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>&>();
  }

  std::__throw_bad_variant_access[abi:ne200100]();
}

void sub_2617EF038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<RFAnchorManagementSetOnAnchorCreatedCallback::$_0,std::allocator<RFAnchorManagementSetOnAnchorCreatedCallback::$_0>,rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZ44RFAnchorManagementSetOnAnchorCreatedCallbackENK3__0clENS_7variantIJN2rf9data_flow12CustomAnchorENSB_11PlaneAnchorENSB_11ImageAnchorENSB_12ObjectAnchorENSB_10FaceAnchorENSB_10BodyAnchorEEEEEUlRT_E_EEJRNS0_6__baseILNS0_6_TraitE1EJSC_SD_SE_SF_SG_SH_EEEEEEDcSJ_DpT0_(uint64_t a1, _OWORD *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  LOBYTE(v7) = 0;
  *(&v7 + 1) = 0;
  uuid_clear(uu);
  uuid_generate_random(uu);
  result = *uu;
  v4 = v7;
  *a2 = *uu;
  a2[1] = v4;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZ44RFAnchorManagementSetOnAnchorCreatedCallbackENK3__0clENS_7variantIJN2rf9data_flow12CustomAnchorENSB_11PlaneAnchorENSB_11ImageAnchorENSB_12ObjectAnchorENSB_10FaceAnchorENSB_10BodyAnchorEEEEEUlRT_E_EEJRNS0_6__baseILNS0_6_TraitE1EJSC_SD_SE_SF_SG_SH_EEEEEEDcSJ_DpT0_(uint64_t a1, _OWORD *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  LOBYTE(v7) = 0;
  *(&v7 + 1) = 0;
  uuid_clear(uu);
  uuid_generate_random(uu);
  result = *uu;
  v4 = v7;
  *a2 = *uu;
  a2[1] = v4;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZ44RFAnchorManagementSetOnAnchorCreatedCallbackENK3__0clENS_7variantIJN2rf9data_flow12CustomAnchorENSB_11PlaneAnchorENSB_11ImageAnchorENSB_12ObjectAnchorENSB_10FaceAnchorENSB_10BodyAnchorEEEEEUlRT_E_EEJRNS0_6__baseILNS0_6_TraitE1EJSC_SD_SE_SF_SG_SH_EEEEEEDcSJ_DpT0_(uint64_t a1, _OWORD *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  LOBYTE(v7) = 0;
  *(&v7 + 1) = 0;
  uuid_clear(uu);
  uuid_generate_random(uu);
  result = *uu;
  v4 = v7;
  *a2 = *uu;
  a2[1] = v4;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZ44RFAnchorManagementSetOnAnchorCreatedCallbackENK3__0clENS_7variantIJN2rf9data_flow12CustomAnchorENSB_11PlaneAnchorENSB_11ImageAnchorENSB_12ObjectAnchorENSB_10FaceAnchorENSB_10BodyAnchorEEEEEUlRT_E_EEJRNS0_6__baseILNS0_6_TraitE1EJSC_SD_SE_SF_SG_SH_EEEEEEDcSJ_DpT0_(uint64_t a1, _OWORD *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  LOBYTE(v7) = 0;
  *(&v7 + 1) = 0;
  uuid_clear(uu);
  uuid_generate_random(uu);
  result = *uu;
  v4 = v7;
  *a2 = *uu;
  a2[1] = v4;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZ44RFAnchorManagementSetOnAnchorCreatedCallbackENK3__0clENS_7variantIJN2rf9data_flow12CustomAnchorENSB_11PlaneAnchorENSB_11ImageAnchorENSB_12ObjectAnchorENSB_10FaceAnchorENSB_10BodyAnchorEEEEEUlRT_E_EEJRNS0_6__baseILNS0_6_TraitE1EJSC_SD_SE_SF_SG_SH_EEEEEEDcSJ_DpT0_(uint64_t a1, _OWORD *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  LOBYTE(v7) = 0;
  *(&v7 + 1) = 0;
  uuid_clear(uu);
  uuid_generate_random(uu);
  result = *uu;
  v4 = v7;
  *a2 = *uu;
  a2[1] = v4;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZ44RFAnchorManagementSetOnAnchorCreatedCallbackENK3__0clENS_7variantIJN2rf9data_flow12CustomAnchorENSB_11PlaneAnchorENSB_11ImageAnchorENSB_12ObjectAnchorENSB_10FaceAnchorENSB_10BodyAnchorEEEEEUlRT_E_EEJRNS0_6__baseILNS0_6_TraitE1EJSC_SD_SE_SF_SG_SH_EEEEEEDcSJ_DpT0_(uint64_t a1, _OWORD *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  LOBYTE(v7) = 0;
  *(&v7 + 1) = 0;
  uuid_clear(uu);
  uuid_generate_random(uu);
  result = *uu;
  v4 = v7;
  *a2 = *uu;
  a2[1] = v4;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::createWithCFAllocator<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>&>()
{
  if (rf::ClassRegistration<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>::_dispatchOnceFlag != -1)
  {
    dispatch_once(&rf::ClassRegistration<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>::_dispatchOnceFlag, &__block_literal_global_18);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINSt3__17variantIJNS_9data_flow12CustomAnchorENS4_11PlaneAnchorENS4_11ImageAnchorENS4_12ObjectAnchorENS4_10FaceAnchorENS4_10BodyAnchorEEEEEEE13registerClassEv_block_invoke()
{
  rf::getTypeName<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(__p);
  rf::ClassRegistration<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>::_cfClass = 0u;
  xmmword_27FEB9CA0 = 0u;
  xmmword_27FEB9CB0 = 0u;
  unk_27FEB9CC0 = 0u;
  xmmword_27FEB9CD0 = 0u;
  unk_27FEB9CE0 = 0u;
  if (v2 >= 0)
  {
    v0 = __p;
  }

  else
  {
    v0 = __p[0];
  }

  *(&rf::ClassRegistration<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>::_cfClass + 1) = v0;
  *&xmmword_27FEB9CA0 = rf::ClassRegistration<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>::initCallback;
  *&xmmword_27FEB9CB0 = rf::ClassRegistration<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>::finalizeCallback;
  qword_27FEB9CC8 = rf::ClassRegistration<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>::copyFormattingDescriptionCallback;
  *&xmmword_27FEB9CD0 = rf::ClassRegistration<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>::copyDebugDescriptionCallback;
  rf::ClassRegistration<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>::_cfTypeID = _CFRuntimeRegisterClass();
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617EF56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::getTypeName<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(_BYTE *a1@<X8>)
{
  v2 = 0;
  v3 = 1;
  for (i = 115; i != 91; i = aStdStringViewR_3[v2++ + 51])
  {
    if (i == 93)
    {
      v5 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v2 = 0;
      a1[23] = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v5 = 1;
LABEL_8:
  v3 += v5;
  if (v3)
  {
    goto LABEL_9;
  }

  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v2 >= 0x17)
  {
    operator new();
  }

  a1[23] = v2;
  if (v2)
  {
    memcpy(a1, "std::variant<rf::data_flow::CustomAnchor, rf::data_flow::PlaneAnchor, rf::data_flow::ImageAnchor, rf::data_flow::ObjectAnchor, rf::data_flow::FaceAnchor, rf::data_flow::BodyAnchor>]", v2);
  }

LABEL_16:
  a1[v2] = 0;
}

uint64_t *std::unique_ptr<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::BridgableObject,std::default_delete<rf::CustomCFObject<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::BridgableObject>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 16);

    JUMPOUT(0x26670D060);
  }

  return result;
}

void *rf::CFObjectRef<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::CFObjectRef(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  return a1;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZ44RFAnchorManagementSetOnAnchorCreatedCallbackENK3__0clENS_7variantIJN2rf9data_flow12CustomAnchorENSB_11PlaneAnchorENSB_11ImageAnchorENSB_12ObjectAnchorENSB_10FaceAnchorENSB_10BodyAnchorEEEEEUlRT_E0_EEJRNS0_6__baseILNS0_6_TraitE1EJSC_SD_SE_SF_SG_SH_EEEEEEDcSJ_DpT0_@<Q0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZ44RFAnchorManagementSetOnAnchorCreatedCallbackENK3__0clENS_7variantIJN2rf9data_flow12CustomAnchorENSB_11PlaneAnchorENSB_11ImageAnchorENSB_12ObjectAnchorENSB_10FaceAnchorENSB_10BodyAnchorEEEEEUlRT_E0_EEJRNS0_6__baseILNS0_6_TraitE1EJSC_SD_SE_SF_SG_SH_EEEEEEDcSJ_DpT0_@<Q0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZ44RFAnchorManagementSetOnAnchorCreatedCallbackENK3__0clENS_7variantIJN2rf9data_flow12CustomAnchorENSB_11PlaneAnchorENSB_11ImageAnchorENSB_12ObjectAnchorENSB_10FaceAnchorENSB_10BodyAnchorEEEEEUlRT_E0_EEJRNS0_6__baseILNS0_6_TraitE1EJSC_SD_SE_SF_SG_SH_EEEEEEDcSJ_DpT0_@<Q0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZ44RFAnchorManagementSetOnAnchorCreatedCallbackENK3__0clENS_7variantIJN2rf9data_flow12CustomAnchorENSB_11PlaneAnchorENSB_11ImageAnchorENSB_12ObjectAnchorENSB_10FaceAnchorENSB_10BodyAnchorEEEEEUlRT_E0_EEJRNS0_6__baseILNS0_6_TraitE1EJSC_SD_SE_SF_SG_SH_EEEEEEDcSJ_DpT0_@<Q0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZ44RFAnchorManagementSetOnAnchorCreatedCallbackENK3__0clENS_7variantIJN2rf9data_flow12CustomAnchorENSB_11PlaneAnchorENSB_11ImageAnchorENSB_12ObjectAnchorENSB_10FaceAnchorENSB_10BodyAnchorEEEEEUlRT_E0_EEJRNS0_6__baseILNS0_6_TraitE1EJSC_SD_SE_SF_SG_SH_EEEEEEDcSJ_DpT0_@<Q0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZ44RFAnchorManagementSetOnAnchorCreatedCallbackENK3__0clENS_7variantIJN2rf9data_flow12CustomAnchorENSB_11PlaneAnchorENSB_11ImageAnchorENSB_12ObjectAnchorENSB_10FaceAnchorENSB_10BodyAnchorEEEEEUlRT_E0_EEJRNS0_6__baseILNS0_6_TraitE1EJSC_SD_SE_SF_SG_SH_EEEEEEDcSJ_DpT0_@<Q0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

const void **rf::CFObjectRef<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::~CFObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__function::__func<RFAnchorManagementSetOnCustomAnchorCreateCallback::$_0,std::allocator<RFAnchorManagementSetOnCustomAnchorCreateCallback::$_0>,void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFAnchorManagementSetOnCustomAnchorCreateCallback::$_0,std::allocator<RFAnchorManagementSetOnCustomAnchorCreateCallback::$_0>,void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_287408598;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFAnchorManagementSetOnCustomAnchorCreateCallback::$_0,std::allocator<RFAnchorManagementSetOnCustomAnchorCreateCallback::$_0>,void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFAnchorManagementSetOnCustomAnchorCreateCallback::$_0,std::allocator<RFAnchorManagementSetOnCustomAnchorCreateCallback::$_0>,void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RFAnchorManagementSetOnSharedCustomAnchorCreateCallback::$_0,std::allocator<RFAnchorManagementSetOnSharedCustomAnchorCreateCallback::$_0>,void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFAnchorManagementSetOnSharedCustomAnchorCreateCallback::$_0,std::allocator<RFAnchorManagementSetOnSharedCustomAnchorCreateCallback::$_0>,void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_287408628;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFAnchorManagementSetOnSharedCustomAnchorCreateCallback::$_0,std::allocator<RFAnchorManagementSetOnSharedCustomAnchorCreateCallback::$_0>,void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFAnchorManagementSetOnSharedCustomAnchorCreateCallback::$_0,std::allocator<RFAnchorManagementSetOnSharedCustomAnchorCreateCallback::$_0>,void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RFAnchorManagementSetOnImageAnchorChangedCallback::$_0,std::allocator<RFAnchorManagementSetOnImageAnchorChangedCallback::$_0>,void ()(NSSet<ARReferenceImage *> *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFAnchorManagementSetOnImageAnchorChangedCallback::$_0,std::allocator<RFAnchorManagementSetOnImageAnchorChangedCallback::$_0>,void ()(NSSet<ARReferenceImage *> *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2874086A8;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFAnchorManagementSetOnImageAnchorChangedCallback::$_0,std::allocator<RFAnchorManagementSetOnImageAnchorChangedCallback::$_0>,void ()(NSSet<ARReferenceImage *> *)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFAnchorManagementSetOnImageAnchorChangedCallback::$_0,std::allocator<RFAnchorManagementSetOnImageAnchorChangedCallback::$_0>,void ()(NSSet<ARReferenceImage *> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void RFEnvironmentProbePlacementServiceCreate()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = 16777217;
  v2 = 3;
  v3 = xmmword_261861BC0;
  v4 = 0x3F8000003F4CCCCDLL;
  v5 = 0;
  v6 = xmmword_261861BD0;
  v7 = 0;
  v8 = 0;
  v0 = *MEMORY[0x277CBECE8];
  if (qword_2810C46C0 != -1)
  {
    dispatch_once(&qword_2810C46C0, &__block_literal_global_1);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

void sub_2617EFE70(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RFEnvironmentProbePlacementServiceUpdateByDeltaTime(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *(a1 + 16);
  ECSManagerNullable = RESceneGetECSManagerNullable();
  if (ECSManagerNullable)
  {
    ECSManagerNullable = REECSManagerGetServiceLocator();
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v9 = a3;
  v10 = ECSManagerNullable;
  v11 = v7;
  v12 = a2;
  v13 = 1;
  v14 = 0;
  return (*(*(v5 + 16) + 16))(v5 + 16, &v9);
}

uint64_t RFEnvironmentProbePlacementServiceSetLocalizedProbeEnabled(uint64_t result, char a2)
{
  v2 = *(result + 16);
  *(v2 + 40) = a2;
  *(v2 + 160) = a2;
  return result;
}

uint64_t RFEnvironmentProbePlacementServiceSetMaxLocalizedProbeCount(uint64_t result, int a2)
{
  v2 = *(result + 16);
  *(v2 + 44) = a2;
  *(v2 + 164) = a2;
  return result;
}

uint64_t RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCB(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v6[0] = &unk_287408758;
  v6[1] = MEMORY[0x26670D530](a2);
  v6[3] = v6;
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::__value_func[abi:ne200100](v5, v6);
  std::function<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::operator=((v2 + 96), v5);
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](v5);
  result = std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2617F00CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCB(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v6[0] = &unk_2874087E8;
  v6[1] = MEMORY[0x26670D530](a2);
  v6[3] = v6;
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::__value_func[abi:ne200100](v5, v6);
  std::function<void ()(rf::data_flow::EnvironmentProbe const&)>::operator=((v2 + 128), v5);
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](v5);
  result = std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2617F0198(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCallback(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v6[0] = &unk_287408878;
  v6[1] = MEMORY[0x26670D530](a2);
  v6[3] = v6;
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::__value_func[abi:ne200100](v5, v6);
  std::function<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::operator=((v2 + 96), v5);
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](v5);
  result = std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2617F0264(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCallback(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v6[0] = &unk_2874088F8;
  v6[1] = MEMORY[0x26670D530](a2);
  v6[3] = v6;
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::__value_func[abi:ne200100](v5, v6);
  std::function<void ()(rf::data_flow::EnvironmentProbe const&)>::operator=((v2 + 128), v5);
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](v5);
  result = std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2617F0330(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t RFEnvironmentProbePlacementServiceSetOnProbeDataCreatedCallback(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v6[0] = &unk_287408978;
  v6[1] = MEMORY[0x26670D530](a2);
  v6[3] = v6;
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::__value_func[abi:ne200100](v5, v6);
  std::function<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::operator=((v2 + 96), v5);
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](v5);
  result = std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2617F03FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t RFEnvironmentProbePlacementServiceSetOnProbeDataRemovedCallback(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v6[0] = &unk_2874089F8;
  v6[1] = MEMORY[0x26670D530](a2);
  v6[3] = v6;
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::__value_func[abi:ne200100](v5, v6);
  std::function<void ()(rf::data_flow::EnvironmentProbe const&)>::operator=((v2 + 128), v5);
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](v5);
  result = std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2617F04C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_9data_flow8consumer24EnvironmentProbeConsumerEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_4[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::data_flow::consumer::EnvironmentProbeConsumer]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C46C8 = 0u;
  xmmword_2810C46D8 = 0u;
  xmmword_2810C46E8 = 0u;
  unk_2810C46F8 = 0u;
  xmmword_2810C4708 = 0u;
  unk_2810C4718 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C46C8 + 1) = p_dst;
  *&xmmword_2810C46D8 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::EnvironmentProbeConsumer>>::initCallback;
  *&xmmword_2810C46E8 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::EnvironmentProbeConsumer>>::finalizeCallback;
  qword_2810C4700 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::EnvironmentProbeConsumer>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4708 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::EnvironmentProbeConsumer>>::copyDebugDescriptionCallback;
  _MergedGlobals_2 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2617F0694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<rf::CustomCFObject<rf::data_flow::consumer::EnvironmentProbeConsumer>::BridgableObject,std::default_delete<rf::CustomCFObject<rf::data_flow::consumer::EnvironmentProbeConsumer>::BridgableObject>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    rf::data_flow::consumer::EnvironmentProbeConsumer::~EnvironmentProbeConsumer((v2 + 16));

    JUMPOUT(0x26670D060);
  }

  return result;
}

void std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCB::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCB::$_0>,rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCB::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCB::$_0>,rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_287408758;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCB::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCB::$_0>,rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

double std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCB::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCB::$_0>,rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::operator()@<D0>(uint64_t a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v8 = *(a1 + 8);
  if (v8)
  {
    (*(v8 + 16))(v8, uu, *a2, a2[1], a2[2], a2[3], *a3);
  }

  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  uuid_clear(a4);
  result = *uu;
  *a4 = *uu;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCB::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCB::$_0>,rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCB::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCB::$_0>,void ()(rf::data_flow::EnvironmentProbe const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCB::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCB::$_0>,void ()(rf::data_flow::EnvironmentProbe const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2874087E8;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCB::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCB::$_0>,void ()(rf::data_flow::EnvironmentProbe const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCB::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCB::$_0>,void ()(rf::data_flow::EnvironmentProbe const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  memset(dst, 0, sizeof(dst));
  if (*(a2 + 16))
  {
    a2 = *a2;
  }

  uuid_copy(dst, a2);
  result = *(a1 + 8);
  if (result)
  {
    result = (*(result + 16))(result, dst);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCB::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCB::$_0>,void ()(rf::data_flow::EnvironmentProbe const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCallback::$_0>,rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCallback::$_0>,rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_287408878;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCallback::$_0>,rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCallback::$_0>,rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::operator()(uint64_t a1@<X0>, double *a2@<X1>, double *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  uuid_clear(a4);
  uuid_generate_random(a4);
  if (*(a1 + 8))
  {
    v8 = objc_alloc(MEMORY[0x277CE5260]);
    v9 = rf::data_flow::RFUUID::asNSUUID(a4);
    v10 = [v8 initWithIdentifier:v9 transform:*a2 extent:{a2[2], a2[4], a2[6], *a3}];

    (*(*(a1 + 8) + 16))();
  }
}

uint64_t std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorCreatedCallback::$_0>,rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

id rf::data_flow::RFUUID::asNSUUID(rf::data_flow::RFUUID *this)
{
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  if (*(this + 16) == 1)
  {
    this = *this;
  }

  v3 = [v2 initWithUUIDBytes:this];

  return v3;
}

void std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCallback::$_0>,void ()(rf::data_flow::EnvironmentProbe const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCallback::$_0>,void ()(rf::data_flow::EnvironmentProbe const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2874088F8;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCallback::$_0>,void ()(rf::data_flow::EnvironmentProbe const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCallback::$_0>,void ()(rf::data_flow::EnvironmentProbe const&)>::operator()(uint64_t a1, double *a2)
{
  if (*(a1 + 8))
  {
    v4 = objc_alloc(MEMORY[0x277CE5260]);
    v5 = rf::data_flow::RFUUID::asNSUUID(a2);
    v6 = [v4 initWithIdentifier:v5 transform:a2[4] extent:{a2[6], a2[8], a2[10], a2[12]}];

    (*(*(a1 + 8) + 16))();
  }
}

uint64_t std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeAnchorRemovedCallback::$_0>,void ()(rf::data_flow::EnvironmentProbe const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeDataCreatedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeDataCreatedCallback::$_0>,rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeDataCreatedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeDataCreatedCallback::$_0>,rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_287408978;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeDataCreatedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeDataCreatedCallback::$_0>,rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeDataCreatedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeDataCreatedCallback::$_0>,rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::operator()@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  *(a4 + 16) = 0;
  a4[3] = 0;
  uuid_clear(a4);
  uuid_generate_random(a4);
  result = *(a1 + 8);
  if (result)
  {
    if (*(a4 + 16))
    {
      v9 = *a4;
    }

    else
    {
      v9 = a4;
    }

    v10 = *a2;
    v11 = a2[1];
    v12 = a2[2];
    v13 = a2[3];
    v14 = *a3;
    v15[0] = v9;
    v15[1] = 0;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    return (*(result + 16))(result, v15);
  }

  return result;
}

uint64_t std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeDataCreatedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeDataCreatedCallback::$_0>,rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeDataRemovedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeDataRemovedCallback::$_0>,void ()(rf::data_flow::EnvironmentProbe const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeDataRemovedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeDataRemovedCallback::$_0>,void ()(rf::data_flow::EnvironmentProbe const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2874089F8;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeDataRemovedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeDataRemovedCallback::$_0>,void ()(rf::data_flow::EnvironmentProbe const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeDataRemovedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeDataRemovedCallback::$_0>,void ()(rf::data_flow::EnvironmentProbe const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 8);
  if (result)
  {
    if (*(a2 + 16))
    {
      v3 = *a2;
    }

    else
    {
      v3 = a2;
    }

    v4 = *(a2 + 2);
    v5 = *(a2 + 3);
    v6 = *(a2 + 4);
    v7 = *(a2 + 5);
    v8 = *(a2 + 6);
    v9[0] = v3;
    v9[1] = 0;
    v10 = v4;
    v11 = v5;
    v12 = v6;
    v13 = v7;
    v14 = v8;
    return (*(result + 16))(result, v9);
  }

  return result;
}

uint64_t std::__function::__func<RFEnvironmentProbePlacementServiceSetOnProbeDataRemovedCallback::$_0,std::allocator<RFEnvironmentProbePlacementServiceSetOnProbeDataRemovedCallback::$_0>,void ()(rf::data_flow::EnvironmentProbe const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void rf::data_flow::provider::CameraMetadataProvider::setCameraMetadataExposure(rf::data_flow::provider::CameraMetadataProvider *this, float a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = 0;
  memset(v4, 0, sizeof(v4));
  v5 = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 1065353216;
  v14 = 0;
  v34 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v39 = 0;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  v48 = a2;
  v49 = 1;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v2 = *(this + 1);
  if (v2)
  {
    rf::Session::consumeInputFromProvider(v2, v4);
  }

  rf::data_flow::provider::InputData::~InputData(v4);
  v3 = *MEMORY[0x277D85DE8];
}

void rf::data_flow::provider::CameraMetadataProvider::setClippingPointLux(rf::data_flow::provider::CameraMetadataProvider *this, float a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = 0;
  memset(v4, 0, sizeof(v4));
  v5 = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 1065353216;
  v14 = 0;
  v34 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v39 = 0;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  v50 = a2;
  v51 = 1;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v2 = *(this + 1);
  if (v2)
  {
    rf::Session::consumeInputFromProvider(v2, v4);
  }

  rf::data_flow::provider::InputData::~InputData(v4);
  v3 = *MEMORY[0x277D85DE8];
}

void RFQueryCreateEntityQueryUsingPredicate()
{
  v0 = *MEMORY[0x277CBECE8];
  if (qword_2810C4730 != -1)
  {
    dispatch_once(&qword_2810C4730, &__block_literal_global_2);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

void sub_2617F196C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectIN3csq5QueryINSt3__113unordered_mapINS_9data_flow6RFUUIDENS4_7variantIJNS2_19EntryWithPropertiesIJNS_5query16REEntityPropertyENSA_16PositionPropertyEEEEEEENS7_4HashENS7_8EqualityENS4_9allocatorINS4_4pairIKS7_SE_EEEEEEEEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 99; i != 91; i = aStdStringViewR_5[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "csq::Query<std::unordered_map<rf::data_flow::RFUUID, std::variant<csq::EntryWithProperties<rf::query::REEntityProperty, rf::query::PositionProperty>>, rf::data_flow::RFUUID::Hash, rf::data_flow::RFUUID::Equality>>]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4738 = 0u;
  xmmword_2810C4748 = 0u;
  xmmword_2810C4758 = 0u;
  unk_2810C4768 = 0u;
  xmmword_2810C4778 = 0u;
  unk_2810C4788 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4738 + 1) = p_dst;
  *&xmmword_2810C4748 = rf::ClassRegistration<rf::CustomCFObject<csq::Query<std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>>>::initCallback;
  *&xmmword_2810C4758 = rf::ClassRegistration<rf::CustomCFObject<csq::Query<std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>>>::finalizeCallback;
  qword_2810C4770 = rf::ClassRegistration<rf::CustomCFObject<csq::Query<std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4778 = rf::ClassRegistration<rf::CustomCFObject<csq::Query<std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>>>::copyDebugDescriptionCallback;
  _MergedGlobals_3 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2617F1B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::ClassRegistration<rf::CustomCFObject<csq::Query<std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>>>::finalizeCallback(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    std::default_delete<rf::CustomCFObject<csq::Query<std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>>::BridgableObject>::operator()[abi:ne200100](v2);
  }
}

void std::default_delete<rf::CustomCFObject<csq::Query<std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>>::BridgableObject>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  JUMPOUT(0x26670D060);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t rf::data_flow::consumer::LoggingConsumer::LoggingConsumer(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_287408AD8;
  *(a1 + 32) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 336) = 0;
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_attr_make_with_qos_class(v2, QOS_CLASS_USER_INITIATED, 0);
  *(a1 + 352) = dispatch_queue_create("RealityFusionLoggingConsumer", v3);

  *(a1 + 360) = dispatch_group_create();
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  return a1;
}

void rf::data_flow::consumer::LoggingConsumer::~LoggingConsumer(rf::data_flow::consumer::LoggingConsumer *this)
{
  *this = &unk_287408AD8;
  v2 = *(this + 45);
  if (v2)
  {
    dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
    v3 = *(this + 45);
    *(this + 45) = 0;
  }

  v4 = *(this + 44);
  *(this + 44) = 0;

  v5 = (this + 368);
  std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::__destroy_vector::operator()[abi:ne200100](&v5);

  if (*(this + 336) == 1)
  {
    std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](this + 288);
    if (*(this + 215) < 0)
    {
      operator delete(*(this + 24));
    }
  }

  if (*(this + 176) == 1)
  {
    std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](this + 128);
    if (*(this + 55) < 0)
    {
      operator delete(*(this + 4));
    }
  }
}

{
  rf::data_flow::consumer::LoggingConsumer::~LoggingConsumer(this);

  JUMPOUT(0x26670D060);
}

void rf::data_flow::consumer::LoggingConsumer::consumeLatestUpdate(uint64_t a1)
{
  v71 = *MEMORY[0x277D85DE8];
  v43 = *(a1 + 16);
  std::mutex::lock(v43);
  if (*(a1 + 176) == 1)
  {
    v3 = rf::realityFusionLogObject(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sig = v43[45].__m_.__sig;
      LODWORD(v62.__first_) = 134217984;
      *(&v62.__first_ + 4) = sig;
      _os_log_debug_impl(&dword_2617CB000, v3, OS_LOG_TYPE_DEBUG, "LoggingConsumer saveSnapshotRequested for frame %lu", &v62, 0xCu);
    }

    if (*(a1 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&__dst, *(a1 + 32), *(a1 + 40));
    }

    else
    {
      __dst = *(a1 + 32);
    }

    v4 = *(a1 + 80);
    v55 = *(a1 + 64);
    v56 = v4;
    v5 = *(a1 + 112);
    v57 = *(a1 + 96);
    v58 = v5;
    std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v59, a1 + 128);
    v60 = *(a1 + 160);
    v61 = *(a1 + 164);
    v44 = a1;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v46, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v46 = __dst;
    }

    v47 = v55;
    v48 = v56;
    v49 = v57;
    v50 = v58;
    std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v51, v59);
    v52 = v60;
    v53 = v61;
    v7 = *(a1 + 352);
    v6 = *(a1 + 360);
    v62.__first_ = MEMORY[0x277D85DD0];
    v62.__begin_ = 3321888768;
    v62.__end_ = ___ZZN2rf9data_flow8consumer15LoggingConsumer19consumeLatestUpdateERKNS_15ConsumerRequestEENK3__0cvU13block_pointerFvvEEv_block_invoke;
    v62.__end_cap_.__value_ = &__block_descriptor_192_ea16_32c96_ZTSKZN2rf9data_flow8consumer15LoggingConsumer19consumeLatestUpdateERKNS_15ConsumerRequestEE3__0_e5_v8__0l;
    v62.__end_cap_.__value_ = v44;
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v46;
    }

    v64 = v47;
    v65 = v48;
    v66 = v49;
    v67 = v50;
    std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v68, v51);
    v69 = v52;
    v70 = v53;
    v8 = MEMORY[0x26670D530](&v62);
    std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v68);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    dispatch_group_async(v6, v7, v8);

    std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v51);
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    v2 = std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v59);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  if (*(a1 + 336) == 1)
  {
    v9 = rf::realityFusionLogObject(v2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v42 = v43[45].__m_.__sig;
      LODWORD(v62.__first_) = 134217984;
      *(&v62.__first_ + 4) = v42;
      _os_log_debug_impl(&dword_2617CB000, v9, OS_LOG_TYPE_DEBUG, "LoggingConsumer saveFullSnapshotRequested for frame %lu", &v62, 0xCu);
    }

    if (*(a1 + 215) < 0)
    {
      std::string::__init_copy_ctor_external(&__dst, *(a1 + 192), *(a1 + 200));
    }

    else
    {
      __dst = *(a1 + 192);
    }

    v10 = *(a1 + 240);
    v55 = *(a1 + 224);
    v56 = v10;
    v11 = *(a1 + 272);
    v57 = *(a1 + 256);
    v58 = v11;
    std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v59, a1 + 288);
    v60 = *(a1 + 320);
    v61 = *(a1 + 324);
    v44 = a1;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v46, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v46 = __dst;
    }

    v47 = v55;
    v48 = v56;
    v49 = v57;
    v50 = v58;
    std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v51, v59);
    v52 = v60;
    v53 = v61;
    v13 = *(a1 + 352);
    v12 = *(a1 + 360);
    v62.__first_ = MEMORY[0x277D85DD0];
    v62.__begin_ = 3321888768;
    v62.__end_ = ___ZZN2rf9data_flow8consumer15LoggingConsumer19consumeLatestUpdateERKNS_15ConsumerRequestEENK3__1cvU13block_pointerFvvEEv_block_invoke;
    v62.__end_cap_.__value_ = &__block_descriptor_192_ea16_32c96_ZTSKZN2rf9data_flow8consumer15LoggingConsumer19consumeLatestUpdateERKNS_15ConsumerRequestEE3__1_e5_v8__0l;
    v62.__end_cap_.__value_ = v44;
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v46;
    }

    v64 = v47;
    v65 = v48;
    v66 = v49;
    v67 = v50;
    std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v68, v51);
    v69 = v52;
    v70 = v53;
    v14 = MEMORY[0x26670D530](&v62);
    std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v68);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    dispatch_group_async(v12, v13, v14);

    std::optional<rf::data_flow::consumer::LoggingConsumer::SaveSnapshotRequest>::operator=[abi:ne200100](a1 + 192);
    std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v51);
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v59);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  v15 = *(a1 + 368);
  v16 = *(a1 + 376);
  if (v16 != v15 && *&v43[49].__m_.__opaque[8])
  {
    v44 = 0;
    v45 = 0;
    v46.__r_.__value_.__r.__words[0] = 0;
    v17 = *v43[49].__m_.__opaque;
    if (v17)
    {
      do
      {
        v18 = v17[6];
        if ((*(v18 + 376) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v19 = *(v18 + 368);
        v20 = REAssetHandleCopyAssetIdentifierString();
        v21 = v20;
        v22 = [v20 UTF8String];
        v23 = strlen(v22);
        if (v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v24 = v23;
        if (v23 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v23;
        if (v23)
        {
          memmove(&__dst, v22, v23);
        }

        __dst.__r_.__value_.__s.__data_[v24] = 0;
        CFRelease(v20);
        v25 = v45;
        if (v45 >= v46.__r_.__value_.__r.__words[0])
        {
          v27 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 3);
          v28 = v27 + 1;
          if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v46.__r_.__value_.__r.__words[0] - v44) >> 3) > v28)
          {
            v28 = 0x5555555555555556 * ((v46.__r_.__value_.__r.__words[0] - v44) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v46.__r_.__value_.__r.__words[0] - v44) >> 3) >= 0x555555555555555)
          {
            v29 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v29 = v28;
          }

          v62.__end_cap_.__value_ = &v44;
          if (v29)
          {
            std::allocator<std::string>::allocate_at_least[abi:ne200100](&v44, v29);
          }

          begin = (8 * ((v45 - v44) >> 3));
          v62.__first_ = 0;
          v62.__begin_ = begin;
          value = 0;
          v62.__end_ = begin;
          v62.__end_cap_.__value_ = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(begin, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
            begin = v62.__begin_;
            end = v62.__end_;
            value = v62.__end_cap_.__value_;
          }

          else
          {
            *&begin->__r_.__value_.__l.__data_ = *&__dst.__r_.__value_.__l.__data_;
            *(24 * v27 + 0x10) = *(&__dst.__r_.__value_.__l + 2);
            end = (24 * v27);
          }

          v30 = end + 1;
          v34 = (begin - (v45 - v44));
          memcpy(v34, v44, v45 - v44);
          v35 = v44;
          v36 = v46.__r_.__value_.__r.__words[0];
          v44 = v34;
          v45 = v30;
          v46.__r_.__value_.__r.__words[0] = value;
          v62.__end_ = v35;
          v62.__end_cap_.__value_ = v36;
          v62.__first_ = v35;
          v62.__begin_ = v35;
          std::__split_buffer<std::string>::~__split_buffer(&v62);
          v26 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v26 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v45, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          }

          else
          {
            *&v45->__r_.__value_.__l.__data_ = *&__dst.__r_.__value_.__l.__data_;
            v25->__r_.__value_.__r.__words[2] = __dst.__r_.__value_.__r.__words[2];
          }

          v30 = v25 + 1;
        }

        v45 = v30;
        if (v26 < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v17 = *v17;
      }

      while (v17);
      v15 = *(a1 + 368);
      v16 = *(a1 + 376);
    }

    for (; v15 != v16; v15 += 2)
    {
      v37 = *v15;
      v38 = v15[1];
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v39 = *(v37 + 88);
      if (v39)
      {
        v62.__first_ = v43[45].__m_.__sig;
        (*(*v39 + 48))(v39, &v62, &v44);
      }

      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }
    }

    v62.__first_ = &v44;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v62);
  }

  std::mutex::unlock(v43);
  v40 = *MEMORY[0x277D85DE8];
}

void sub_2617F25E0(_Unwind_Exception *a1, std::mutex *a2, char a3, uint64_t a4, void *a5, uint64_t a6, int a7, __int16 a8, char a9, char a10, std::mutex *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::__split_buffer<std::string> *a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  rf::data_flow::consumer::LoggingConsumer::consumeLatestUpdate(rf::ConsumerRequest const&)::$_0::~$_0(&a12);
  rf::data_flow::consumer::LoggingConsumer::SaveSnapshotRequest::~SaveSnapshotRequest(&a35);
  std::mutex::unlock(a11);
  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::LoggingConsumer::consumeLatestUpdate(rf::ConsumerRequest const&)::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](a1 + 112);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void rf::data_flow::consumer::LoggingConsumer::SaveSnapshotRequest::~SaveSnapshotRequest(void **this)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100]((this + 12));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::optional<rf::data_flow::consumer::LoggingConsumer::SaveSnapshotRequest>::operator=[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](a1 + 96);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 144) = 0;
  }

  return a1;
}

double std::__fs::filesystem::path::stem[abi:ne200100](uint64_t a1, std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__stem(this);
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
  *a1 = __dst;
  *(a1 + 16) = v6;
  return result;
}

double std::__fs::filesystem::path::extension[abi:ne200100](uint64_t a1, std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__extension(this);
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
  *a1 = __dst;
  *(a1 + 16) = v6;
  return result;
}

std::string *rf::data_flow::consumer::LoggingConsumer::requestSaveFullSnapshot(std::string *this, std::string *a2)
{
  v4 = rf::realityFusionLogObject(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_2617CB000, v4, OS_LOG_TYPE_DEBUG, "LoggingConsumer::requestSaveFullSnapshot", v6, 2u);
  }

  return std::optional<rf::data_flow::consumer::LoggingConsumer::SaveSnapshotRequest>::operator=[abi:ne200100]<rf::data_flow::consumer::LoggingConsumer::SaveSnapshotRequest const&,void>(this + 8, a2);
}

std::string *std::optional<rf::data_flow::consumer::LoggingConsumer::SaveSnapshotRequest>::operator=[abi:ne200100]<rf::data_flow::consumer::LoggingConsumer::SaveSnapshotRequest const&,void>(std::string *this, std::string *__str)
{
  v20[3] = *MEMORY[0x277D85DE8];
  if (this[6].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(this, __str);
    v4 = *&__str[3].__r_.__value_.__r.__words[1];
    v6 = *&__str[1].__r_.__value_.__r.__words[1];
    v5 = *&__str[2].__r_.__value_.__l.__data_;
    *&this[2].__r_.__value_.__r.__words[2] = *&__str[2].__r_.__value_.__r.__words[2];
    *&this[3].__r_.__value_.__r.__words[1] = v4;
    *&this[1].__r_.__value_.__r.__words[1] = v6;
    *&this[2].__r_.__value_.__l.__data_ = v5;
    std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v18, &__str[4]);
    v7 = this + 4;
    if (v18 != &this[4])
    {
      v8 = v19;
      data = this[5].__r_.__value_.__l.__data_;
      if (v19 == v18)
      {
        if (data == v7)
        {
          (*(*v19 + 24))();
          (*(*v19 + 32))(v19);
          v19 = 0;
          (*(*this[5].__r_.__value_.__l.__data_ + 24))(this[5].__r_.__value_.__r.__words[0], v18);
          (*(*this[5].__r_.__value_.__l.__data_ + 32))(this[5].__r_.__value_.__r.__words[0]);
          this[5].__r_.__value_.__r.__words[0] = 0;
          v19 = v18;
          (*(v20[0] + 24))(v20, this + 4);
          (*(v20[0] + 32))(v20);
        }

        else
        {
          (*(*v19 + 24))();
          (*(*v19 + 32))(v19);
          v19 = this[5].__r_.__value_.__l.__data_;
        }

        this[5].__r_.__value_.__r.__words[0] = v7;
      }

      else if (data == v7)
      {
        (*(*data + 24))(this[5].__r_.__value_.__r.__words[0], v18);
        (*(*this[5].__r_.__value_.__l.__data_ + 32))(this[5].__r_.__value_.__r.__words[0]);
        this[5].__r_.__value_.__r.__words[0] = v19;
        v19 = v18;
      }

      else
      {
        v19 = this[5].__r_.__value_.__l.__data_;
        this[5].__r_.__value_.__r.__words[0] = v8;
      }
    }

    std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v18);
    v15 = __str[5].__r_.__value_.__r.__words[1];
    WORD2(this[5].__r_.__value_.__r.__words[1]) = WORD2(__str[5].__r_.__value_.__r.__words[1]);
    LODWORD(this[5].__r_.__value_.__r.__words[1]) = v15;
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v10 = *&__str->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v10;
    }

    v11 = *&__str[1].__r_.__value_.__r.__words[1];
    v12 = *&__str[2].__r_.__value_.__l.__data_;
    v13 = *&__str[3].__r_.__value_.__r.__words[1];
    *&this[2].__r_.__value_.__r.__words[2] = *&__str[2].__r_.__value_.__r.__words[2];
    *&this[3].__r_.__value_.__r.__words[1] = v13;
    *&this[1].__r_.__value_.__r.__words[1] = v11;
    *&this[2].__r_.__value_.__l.__data_ = v12;
    std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](&this[4], &__str[4]);
    v14 = __str[5].__r_.__value_.__r.__words[1];
    WORD2(this[5].__r_.__value_.__r.__words[1]) = WORD2(__str[5].__r_.__value_.__r.__words[1]);
    LODWORD(this[5].__r_.__value_.__r.__words[1]) = v14;
    this[6].__r_.__value_.__s.__data_[0] = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2617F2D24(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *rf::data_flow::consumer::LoggingConsumer::startSavingSnapshots(rf::data_flow::consumer::LoggingConsumer *this, std::string *a2)
{
  v4 = rf::realityFusionLogObject(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_2617CB000, v4, OS_LOG_TYPE_DEBUG, "LoggingConsumer::startSavingSnapshots", v6, 2u);
  }

  return std::optional<rf::data_flow::consumer::LoggingConsumer::SaveSnapshotRequest>::operator=[abi:ne200100]<rf::data_flow::consumer::LoggingConsumer::SaveSnapshotRequest const&,void>((this + 32), a2);
}

void std::vector<std::shared_ptr<rf::data_flow::consumer::LoggingCallbacks>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
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
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

void rf::data_flow::consumer::LoggingConsumer::removeCallbacks(uint64_t a1, void *a2)
{
  v4 = *(a1 + 368);
  v3 = *(a1 + 376);
  if (v4 != v3)
  {
    while (*v4 != *a2)
    {
      v4 += 16;
      if (v4 == v3)
      {
        v4 = *(a1 + 376);
        break;
      }
    }
  }

  if (v3 != v4)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<rf::data_flow::consumer::LoggingCallbacks> *,std::shared_ptr<rf::data_flow::consumer::LoggingCallbacks> *,std::shared_ptr<rf::data_flow::consumer::LoggingCallbacks> *>(&v9, (v4 + 16), v3, v4);
    v6 = v5;
    v7 = *(a1 + 376);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 376) = v6;
  }
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void ___ZZN2rf9data_flow8consumer15LoggingConsumer19consumeLatestUpdateERKNS_15ConsumerRequestEENK3__0cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v51 = *(a1 + 48);
  }

  v3 = *(a1 + 96);
  v52[0] = *(a1 + 80);
  v52[1] = v3;
  v4 = *(a1 + 128);
  v52[2] = *(a1 + 112);
  v52[3] = v4;
  std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v53, a1 + 144);
  v55 = *(a1 + 176);
  v56 = *(a1 + 180);
  v5 = v2[2];
  std::mutex::lock(v5);
  rf::synthetic::SyntheticUsdKitParser::SyntheticUsdKitParser(v50, 0);
  rf::synthetic::SyntheticUsdKitParser::setMetersPerUnitScale(v50, 1.0);
  if (v55 == 1)
  {
    if (*(v5 + 2912) || (v6 = *(v5 + 2952)) != 0)
    {
      for (i = *(v5 + 2904); i; i = *i)
      {
        __dst.__pn_.__r_.__value_.__s.__data_[0] = 3;
        rf::synthetic::SyntheticUsdKitParser::addMeshFromUpdateMesh(v50, i + 6, v52, &__dst);
      }

      for (j = *(v5 + 2944); j; j = *j)
      {
        __dst.__pn_.__r_.__value_.__s.__data_[0] = 3;
        rf::synthetic::SyntheticUsdKitParser::addMeshFromUpdateMesh(v50, j + 6, v52, &__dst);
      }

      LODWORD(v6) = 1;
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (HIBYTE(v56) == 1 && (*(v5 + 3032) || *(v5 + 3072)))
  {
    for (k = *(v5 + 3024); k; k = *k)
    {
      __dst.__pn_.__r_.__value_.__s.__data_[0] = 4;
      rf::synthetic::SyntheticUsdKitParser::addMeshFromUpdateMesh(v50, k + 6, v52, &__dst);
    }

    for (m = *(v5 + 3064); m; m = *m)
    {
      __dst.__pn_.__r_.__value_.__s.__data_[0] = 4;
      rf::synthetic::SyntheticUsdKitParser::addMeshFromUpdateMesh(v50, m + 6, v52, &__dst);
    }

    LODWORD(v6) = 1;
  }

  if (BYTE1(v55) == 1 && (*(v5 + 3392) || *(v5 + 3432)))
  {
    for (n = (v5 + 3384); ; rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(v50, n[6], v52))
    {
      n = *n;
      if (!n)
      {
        break;
      }
    }

    for (ii = (v5 + 3424); ; rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(v50, ii[6], v52))
    {
      ii = *ii;
      if (!ii)
      {
        break;
      }
    }

    LODWORD(v6) = 1;
  }

  if (HIBYTE(v55) == 1 && *(v5 + 3152))
  {
    for (jj = *(v5 + 3144); jj; jj = *jj)
    {
      __dst.__pn_.__r_.__value_.__s.__data_[0] = 3;
      rf::synthetic::SyntheticUsdKitParser::addMeshFromUpdateMesh(v50, jj + 6, v52, &__dst);
    }

    LODWORD(v6) = 1;
  }

  if (v56 == 1 && *(v5 + 3192))
  {
    for (kk = *(v5 + 3184); kk; kk = *kk)
    {
      __dst.__pn_.__r_.__value_.__s.__data_[0] = 3;
      rf::synthetic::SyntheticUsdKitParser::addMeshFromUpdateMesh(v50, kk + 6, v52, &__dst);
    }

    LODWORD(v6) = 1;
  }

  if (BYTE2(v55) == 1 && (*(v5 + 3592) || *(v5 + 3632)))
  {
    v15 = *(v5 + 3584);
    if (v15)
    {
      rf::synthetic::SyntheticUsdKitParser::addObjectFromInputObject(v50, *(v15 + 48));
    }

    v17 = *(v5 + 3624);
    if (v17)
    {
      rf::synthetic::SyntheticUsdKitParser::addObjectFromInputObject(v50, *(v17 + 48));
    }
  }

  else if (!v6)
  {
    goto LABEL_106;
  }

  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__dst.__pn_, &v51);
  std::__fs::filesystem::path::stem[abi:ne200100](&v44, &__dst);
  v16 = SHIBYTE(v44.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
  }

  else
  {
    v45 = v44;
  }

  v18 = std::string::append(&v45, "_", 1uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v57.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v57.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v43, *(v5 + 2880));
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v43;
  }

  else
  {
    v20 = v43.__r_.__value_.__r.__words[0];
  }

  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v43.__r_.__value_.__l.__size_;
  }

  v22 = std::string::append(&v57, v20, size);
  v23 = *&v22->__r_.__value_.__l.__data_;
  pn.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&pn.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  std::__fs::filesystem::path::extension[abi:ne200100](&__p, &__dst);
  v24 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v42 = __p;
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v42;
  }

  else
  {
    v25 = v42.__r_.__value_.__r.__words[0];
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v42.__r_.__value_.__l.__size_;
  }

  v27 = std::string::append(&pn, v25, v26);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v48 = v27->__r_.__value_.__r.__words[2];
  v47 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }
  }

  else if ((v24 & 0x80000000) == 0)
  {
    goto LABEL_69;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_69:
  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_82:
    operator delete(v44.__r_.__value_.__l.__data_);
    goto LABEL_77;
  }

  if (v16 < 0)
  {
    goto LABEL_82;
  }

LABEL_77:
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v57, &v47);
  std::__fs::filesystem::path::remove_filename[abi:ne200100](&__dst);
  std::__fs::filesystem::path::operator/=[abi:ne200100](&__dst, &v57);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&pn, __dst.__pn_.__r_.__value_.__l.__data_, __dst.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    pn = __dst.__pn_;
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  v29 = rf::synthetic::SyntheticUsdKitParser::save(v50, &pn);
  if (v29)
  {
    v30 = rf::realityFusionLogObject(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v39 = *(v5 + 2880);
      LODWORD(v57.__r_.__value_.__l.__data_) = 134217984;
      *(v57.__r_.__value_.__r.__words + 4) = v39;
      _os_log_debug_impl(&dword_2617CB000, v30, OS_LOG_TYPE_DEBUG, "LoggingConsumer: Saved snapshot for frame %lu", &v57, 0xCu);
    }

    v32 = rf::realityFusionLogObject(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      p_pn = &pn;
      if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_pn = pn.__r_.__value_.__r.__words[0];
      }

      LODWORD(v57.__r_.__value_.__l.__data_) = 136315138;
      *(v57.__r_.__value_.__r.__words + 4) = p_pn;
      _os_log_debug_impl(&dword_2617CB000, v32, OS_LOG_TYPE_DEBUG, "LoggingConsumer: Saved snapshot at path: %s", &v57, 0xCu);
    }

    if (v54)
    {
      (*(*v54 + 48))(v54, &pn);
    }

    v34 = v2[46];
    for (mm = v2[47]; v34 != mm; v34 += 2)
    {
      v35 = *v34;
      v36 = v34[1];
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v37 = *(v35 + 24);
      if (v37)
      {
        v57.__r_.__value_.__r.__words[0] = *(v5 + 2880);
        (*(*v37 + 48))(v37, &v57);
      }

      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }
    }
  }

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_106:

  std::mutex::unlock(v5);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v53);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void sub_2617F3738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, void *a58)
{
  operator delete(v59);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v61 - 73) < 0)
  {
    operator delete(*(v61 - 96));
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (v60 < 0)
  {
    operator delete(a26);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  std::mutex::unlock(v58);
  rf::data_flow::consumer::LoggingConsumer::SaveSnapshotRequest::~SaveSnapshotRequest((v61 - 240));
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea16_32c96_ZTSKZN2rf9data_flow8consumer15LoggingConsumer19consumeLatestUpdateERKNS_15ConsumerRequestEE3__0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v4;
  }

  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](a1 + 144, a2 + 144);
  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return result;
}

void sub_2617F3950(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea16_32c96_ZTSKZN2rf9data_flow8consumer15LoggingConsumer19consumeLatestUpdateERKNS_15ConsumerRequestEE3__0(uint64_t a1)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](a1 + 144);
  if (*(a1 + 71) < 0)
  {
    v2 = *(a1 + 48);

    operator delete(v2);
  }
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void ___ZZN2rf9data_flow8consumer15LoggingConsumer19consumeLatestUpdateERKNS_15ConsumerRequestEENK3__1cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v44, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v44 = *(a1 + 48);
  }

  v3 = *(a1 + 96);
  v45[0] = *(a1 + 80);
  v45[1] = v3;
  v4 = *(a1 + 128);
  v45[2] = *(a1 + 112);
  v45[3] = v4;
  std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v46, a1 + 144);
  v48 = *(a1 + 176);
  v49 = *(a1 + 180);
  v5 = v2[2];
  std::mutex::lock(v5);
  rf::synthetic::SyntheticUsdKitParser::SyntheticUsdKitParser(v43, 0);
  rf::synthetic::SyntheticUsdKitParser::setMetersPerUnitScale(v43, 1.0);
  if (v48 == 1)
  {
    for (i = *(v5 + 80); i; i = *i)
    {
      __dst.__pn_.__r_.__value_.__s.__data_[0] = 3;
      rf::synthetic::SyntheticUsdKitParser::addMeshFromUpdateMesh(v43, i + 6, v45, &__dst);
    }
  }

  if (HIBYTE(v49) == 1)
  {
    for (j = *(v5 + 120); j; j = *j)
    {
      __dst.__pn_.__r_.__value_.__s.__data_[0] = 4;
      rf::synthetic::SyntheticUsdKitParser::addMeshFromUpdateMesh(v43, j + 6, v45, &__dst);
    }
  }

  if (BYTE1(v48) == 1)
  {
    for (k = (v5 + 160); ; rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(v43, (k + 6), v45))
    {
      k = *k;
      if (!k)
      {
        break;
      }
    }
  }

  if (BYTE2(v48) == 1)
  {
    v9 = *(v5 + 1336);
    if (v9)
    {
      rf::synthetic::SyntheticUsdKitParser::addObjectFromInputObject(v43, v9 + 48);
    }
  }

  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__dst.__pn_, &v44);
  std::__fs::filesystem::path::stem[abi:ne200100](&v37, &__dst);
  v10 = SHIBYTE(v37.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    v38 = v37;
  }

  v11 = std::string::append(&v38, "_", 1uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v36, *(v5 + 2880));
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v36;
  }

  else
  {
    v13 = v36.__r_.__value_.__r.__words[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v36.__r_.__value_.__l.__size_;
  }

  v15 = std::string::append(&v50, v13, size);
  v16 = *&v15->__r_.__value_.__l.__data_;
  pn.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&pn.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  std::__fs::filesystem::path::extension[abi:ne200100](&__p, &__dst);
  v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v35 = __p;
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v35;
  }

  else
  {
    v18 = v35.__r_.__value_.__r.__words[0];
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v35.__r_.__value_.__l.__size_;
  }

  v20 = std::string::append(&pn, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v41 = v20->__r_.__value_.__r.__words[2];
  v40 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }
  }

  else if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_37;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_37:
  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_45;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  operator delete(v37.__r_.__value_.__l.__data_);
LABEL_45:
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v50, &v40);
  std::__fs::filesystem::path::remove_filename[abi:ne200100](&__dst);
  std::__fs::filesystem::path::operator/=[abi:ne200100](&__dst, &v50);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&pn, __dst.__pn_.__r_.__value_.__l.__data_, __dst.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    pn = __dst.__pn_;
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v22 = rf::synthetic::SyntheticUsdKitParser::save(v43, &pn);
  if (v22)
  {
    v23 = rf::realityFusionLogObject(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v32 = *(v5 + 2880);
      LODWORD(v50.__r_.__value_.__l.__data_) = 134217984;
      *(v50.__r_.__value_.__r.__words + 4) = v32;
      _os_log_debug_impl(&dword_2617CB000, v23, OS_LOG_TYPE_DEBUG, "LoggingConsumer: Saved full snapshot for frame %lu", &v50, 0xCu);
    }

    v25 = rf::realityFusionLogObject(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      p_pn = &pn;
      if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_pn = pn.__r_.__value_.__r.__words[0];
      }

      LODWORD(v50.__r_.__value_.__l.__data_) = 136315138;
      *(v50.__r_.__value_.__r.__words + 4) = p_pn;
      _os_log_debug_impl(&dword_2617CB000, v25, OS_LOG_TYPE_DEBUG, "LoggingConsumer: Saved snapshot at path: %s", &v50, 0xCu);
    }

    if (v47)
    {
      (*(*v47 + 48))(v47, &pn);
    }

    v27 = v2[46];
    for (m = v2[47]; v27 != m; v27 += 2)
    {
      v28 = *v27;
      v29 = v27[1];
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = *(v28 + 56);
      if (v30)
      {
        v50.__r_.__value_.__r.__words[0] = *(v5 + 2880);
        (*(*v30 + 48))(v30, &v50);
      }

      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }
    }
  }

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
  }

  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(v5);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v46);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_2617F3FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, void *a58)
{
  operator delete(v59);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v61 - 73) < 0)
  {
    operator delete(*(v61 - 96));
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (v60 < 0)
  {
    operator delete(a26);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  std::mutex::unlock(v58);
  rf::data_flow::consumer::LoggingConsumer::SaveSnapshotRequest::~SaveSnapshotRequest((v61 - 240));
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea16_32c96_ZTSKZN2rf9data_flow8consumer15LoggingConsumer19consumeLatestUpdateERKNS_15ConsumerRequestEE3__1(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v4;
  }

  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](a1 + 144, a2 + 144);
  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return result;
}

void sub_2617F41C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea16_32c96_ZTSKZN2rf9data_flow8consumer15LoggingConsumer19consumeLatestUpdateERKNS_15ConsumerRequestEE3__1(uint64_t a1)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](a1 + 144);
  if (*(a1 + 71) < 0)
  {
    v2 = *(a1 + 48);

    operator delete(v2);
  }
}

void std::allocator<std::string>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
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
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
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

uint64_t std::__fs::filesystem::path::remove_filename[abi:ne200100](uint64_t a1)
{
  v2 = std::__fs::filesystem::path::__filename(a1);
  if (v2.__size_)
  {
    v3 = *(a1 + 23);
    if ((v3 & 0x8000000000000000) != 0)
    {
      v5 = *a1;
      v4 = &v2.__data_[-*a1];
      if (*(a1 + 8) >= v4)
      {
        *(a1 + 8) = v4;
        goto LABEL_7;
      }
    }

    else
    {
      v4 = &v2.__data_[-a1];
      if (&v2.__data_[-a1] <= v3)
      {
        *(a1 + 23) = v4;
        v5 = a1;
LABEL_7:
        v4[v5] = 0;
        return a1;
      }
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }

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

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<rf::data_flow::consumer::LoggingCallbacks> *,std::shared_ptr<rf::data_flow::consumer::LoggingCallbacks> *,std::shared_ptr<rf::data_flow::consumer::LoggingCallbacks> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *__dst, std::string **a2)
{
  __dst->__r_.__value_.__r.__words[0] = 0;
  __dst->__r_.__value_.__l.__size_ = 0;
  __dst->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v5)
  {
    if (v4 >= __dst && (&__dst->__r_.__value_.__l.__data_ + 1) > v4)
    {
      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v5 > 0x16)
      {
        operator new();
      }

      v12 = v5;
      memcpy(__dsta, v4, v5);
      *(__dsta + v5) = 0;
      if ((v12 & 0x80u) == 0)
      {
        v8 = __dsta;
      }

      else
      {
        v8 = __dsta[0];
      }

      if ((v12 & 0x80u) == 0)
      {
        v9 = v12;
      }

      else
      {
        v9 = __dsta[1];
      }

      std::string::append(__dst, v8, v9);
      if (v12 < 0)
      {
        operator delete(__dsta[0]);
      }
    }

    else
    {
      v7 = __dst;
      if (v5 >= 0x17)
      {
        std::string::__grow_by(__dst, 0x16uLL, v5 - 22, 0, 0, 0, 0);
        __dst->__r_.__value_.__l.__size_ = 0;
        v7 = __dst;
        if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
        {
          v7 = __dst->__r_.__value_.__r.__words[0];
        }
      }

      memmove(v7, v4, v5);
      v7->__r_.__value_.__s.__data_[v5] = 0;
      if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
      {
        __dst->__r_.__value_.__l.__size_ = v5;
      }

      else
      {
        *(&__dst->__r_.__value_.__s + 23) = v5 & 0x7F;
      }
    }
  }

  return __dst;
}

void sub_2617F467C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t RFAnchorPtrGetIdentifierPtr(uint64_t a1)
{
  v1 = *(a1 + 256);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_287408B70[v1])(&v4, a1);
}

uint64_t RFAnchorPtrGetIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = &v5;
  v5 = a2;
  v2 = *(a1 + 256);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v6 = &v4;
  return (off_287408BA0[v2])(&v6, a1);
}

uint64_t RFAnchorPtrSetIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 256);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (off_287408BD0[v2])(&v5, a1);
}

uint64_t RFAnchorPtrGetType(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v5, a1);
  if (v6 == 5)
  {
    v1 = 5;
  }

  else
  {
    v1 = 0;
  }

  if (v6 >= 5)
  {
    v2 = v1;
  }

  else
  {
    v2 = v6;
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

CFStringRef RFAnchorPtrCopyDescription(uint64_t a1)
{
  v4[35] = *MEMORY[0x277D85DE8];
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v4, a1);
  DebugDescriptionForAnchor = rf::helpers::getDebugDescriptionForAnchor(v4);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
  v2 = *MEMORY[0x277D85DE8];
  return DebugDescriptionForAnchor;
}

uint64_t RFAnchorPtrGetTracked(uint64_t a1)
{
  v1 = *(a1 + 256);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_287408C00[v1])(&v4, a1);
}

uint64_t RFAnchorPtrSetTracked(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 256);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (off_287408C30[v2])(&v5, a1);
}

__n128 RFAnchorPtrGetTransform(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v7, a1);
  if (v8 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v6 = &v5;
  *&v1 = (off_287408C60[v8])(&v6, v7);
  v4 = v1;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v7);
  v2 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t RFAnchorPtrSetTransform(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v5 = *(a1 + 256);
  if (v5 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v8 = v7;
  return (off_287408C90[v5])(&v8, a1);
}

uint64_t RFAnchorPtrGetAlignment(uint64_t a1)
{
  if (*(a1 + 256) == 1)
  {
    v1 = *(a1 + 208);
    if (v1 == 1)
    {
      v2 = 2;
    }

    else
    {
      v2 = -1;
    }

    if (v1)
    {
      return v2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return -1;
  }
}

void RFAnchorPtrSetAlignment(uint64_t a1, int a2)
{
  if (a1 && *(a1 + 256) == 1)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        v3 = 1;
        goto LABEL_10;
      }

      v4 = rf::realityFusionLogObject(a1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_error_impl(&dword_2617CB000, v4, OS_LOG_TYPE_ERROR, "RFAnchorPtrSetAlignment: Setting kREAnchoringAlignmentAny to the anchor.", v5, 2u);
      }
    }

    v3 = 0;
LABEL_10:
    if (*(a1 + 208) != v3)
    {
      *(a1 + 208) = v3;
      *(a1 + 104) = 1;
    }
  }
}

uint64_t RFAnchorPtrGetClassification(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v4, a1);
  if (v6 == 1 && (v5 - 1) <= 4)
  {
    v1 = qword_2618622B8[v5 - 1];
  }

  else
  {
    v1 = -1;
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void RFAnchorPtrSetClassification(uint64_t a1, uint64_t a2)
{
  if (a1 && *(a1 + 256) == 1)
  {
    v3 = *(a1 + 212);
    if (a2 <= 3)
    {
      if (a2 == 1)
      {
        v4 = *(a1 + 212);
        v3 = 1;
      }

      else
      {
        if (a2 != 2)
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 212);
        v3 = 2;
      }
    }

    else
    {
      switch(a2)
      {
        case 4:
          v4 = *(a1 + 212);
          v3 = 3;
          break;
        case 8:
          v4 = *(a1 + 212);
          v3 = 4;
          break;
        case 16:
          v4 = *(a1 + 212);
          v3 = 5;
          break;
        default:
LABEL_14:
          v5 = rf::realityFusionLogObject(a1);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            *v6 = 0;
            _os_log_error_impl(&dword_2617CB000, v5, OS_LOG_TYPE_ERROR, "RFAnchorPtrSetClassification: Cannot recognize the classification.", v6, 2u);
          }

          v4 = *(a1 + 212);
          break;
      }
    }

    if (v4 != v3)
    {
      *(a1 + 212) = v3;
      *(a1 + 104) = 1;
    }
  }
}

__n128 RFAnchorPtrGetCenter(__n128 *a1)
{
  result.n128_u64[0] = 0;
  if (a1[16].n128_u32[0] == 1)
  {
    return a1[11];
  }

  return result;
}

float32x4_t *RFAnchorPtrSetCenter(float32x4_t *result, float32x4_t a2)
{
  if (result)
  {
    if (result[16].i32[0] == 1)
    {
      a2.i32[3] = 1.0;
      v2 = vaddq_f32(result[8], xmmword_261862280);
      v3 = vmulq_f32(v2, v2);
      if (fabsf(vaddv_f32(vadd_f32(*v3.i8, *&vextq_s8(v3, v3, 8uLL)))) >= 1.0e-10 || (v4 = vaddq_f32(result[9], xmmword_2618622A0), v5 = vmulq_f32(v4, v4), fabsf(vaddv_f32(vadd_f32(*v5.i8, *&vextq_s8(v5, v5, 8uLL)))) >= 1.0e-10) || (v6 = vaddq_f32(result[10], xmmword_261862290), v7 = vmulq_f32(v6, v6), fabsf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))) >= 1.0e-10) || (v8 = vsubq_f32(result[11], a2), v9 = vmulq_f32(v8, v8), fabsf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))) >= 1.0e-10))
      {
        result[8] = xmmword_26185DD00;
        result[9] = xmmword_26185DD10;
        result[10] = xmmword_26185DD20;
        result[11] = a2;
        result[6].i8[8] = 1;
      }
    }
  }

  return result;
}

__n128 RFAnchorPtrGetExtent(__n128 *a1)
{
  result.n128_u64[0] = 0;
  if (a1[16].n128_u32[0] == 1)
  {
    return a1[12];
  }

  return result;
}

float32x4_t *RFAnchorPtrSetExtent(float32x4_t *result, float32x4_t a2)
{
  if (result && result[16].i32[0] == 1)
  {
    v2 = vsubq_f32(a2, result[12]);
    v3 = vmulq_f32(v2, v2);
    if (fabsf(v3.f32[2] + vaddv_f32(*v3.f32)) >= 1.0e-10)
    {
      result[12] = a2;
      result[6].i8[8] = 1;
    }
  }

  return result;
}

CFStringRef RFAnchorPtrCopyReferenceName(uint64_t a1)
{
  v1 = *(a1 + 256);
  if (v1 == 3)
  {
    v2 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
LABEL_6:
      v2 = *v2;
    }
  }

  else
  {
    if (v1 != 2)
    {
      v2 = "";
      return CFStringCreateWithCString(*MEMORY[0x277CBECE8], v2, 0x8000100u);
    }

    v2 = (a1 + 136);
    if (*(a1 + 159) < 0)
    {
      goto LABEL_6;
    }
  }

  return CFStringCreateWithCString(*MEMORY[0x277CBECE8], v2, 0x8000100u);
}

void RFAnchorPtrSetReferenceName(uint64_t a1, const __CFString *a2)
{
  applesauce::CF::details::CFString_get_value<true>(a2, &__str);
  if (!a1)
  {
    goto LABEL_33;
  }

  v3 = *(a1 + 256);
  if (v3 == 3)
  {
    v9 = *(a1 + 151);
    if (v9 >= 0)
    {
      v10 = *(a1 + 151);
    }

    else
    {
      v10 = *(a1 + 136);
    }

    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (v10 != size || (v9 >= 0 ? (v12 = (a1 + 128)) : (v12 = *(a1 + 128)), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), memcmp(v12, p_str, v10)))
    {
      std::string::operator=((a1 + 128), &__str);
      goto LABEL_32;
    }
  }

  else if (v3 == 2)
  {
    v4 = *(a1 + 159);
    if (v4 >= 0)
    {
      v5 = *(a1 + 159);
    }

    else
    {
      v5 = *(a1 + 144);
    }

    v6 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = __str.__r_.__value_.__l.__size_;
    }

    if (v5 != v6 || (v4 >= 0 ? (v7 = (a1 + 136)) : (v7 = *(a1 + 136)), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v8 = &__str) : (v8 = __str.__r_.__value_.__r.__words[0]), memcmp(v7, v8, v5)))
    {
      std::string::operator=((a1 + 136), &__str);
LABEL_32:
      *(a1 + 104) = 1;
    }
  }

LABEL_33:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_2617F5028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef RFAnchorPtrCopyReferenceGroup(uint64_t a1)
{
  v1 = *(a1 + 256);
  if (v1 == 3)
  {
    v2 = (a1 + 152);
    if (*(a1 + 175) < 0)
    {
LABEL_6:
      v2 = *v2;
    }
  }

  else
  {
    if (v1 != 2)
    {
      v2 = "";
      return CFStringCreateWithCString(*MEMORY[0x277CBECE8], v2, 0x8000100u);
    }

    v2 = (a1 + 160);
    if (*(a1 + 183) < 0)
    {
      goto LABEL_6;
    }
  }

  return CFStringCreateWithCString(*MEMORY[0x277CBECE8], v2, 0x8000100u);
}

void RFAnchorPtrSetReferenceGroup(uint64_t a1, const __CFString *a2)
{
  applesauce::CF::details::CFString_get_value<true>(a2, &__str);
  if (!a1)
  {
    goto LABEL_33;
  }

  v3 = *(a1 + 256);
  if (v3 == 3)
  {
    v9 = *(a1 + 175);
    if (v9 >= 0)
    {
      v10 = *(a1 + 175);
    }

    else
    {
      v10 = *(a1 + 160);
    }

    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (v10 != size || (v9 >= 0 ? (v12 = (a1 + 152)) : (v12 = *(a1 + 152)), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), memcmp(v12, p_str, v10)))
    {
      std::string::operator=((a1 + 152), &__str);
      goto LABEL_32;
    }
  }

  else if (v3 == 2)
  {
    v4 = *(a1 + 183);
    if (v4 >= 0)
    {
      v5 = *(a1 + 183);
    }

    else
    {
      v5 = *(a1 + 168);
    }

    v6 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = __str.__r_.__value_.__l.__size_;
    }

    if (v5 != v6 || (v4 >= 0 ? (v7 = (a1 + 160)) : (v7 = *(a1 + 160)), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v8 = &__str) : (v8 = __str.__r_.__value_.__r.__words[0]), memcmp(v7, v8, v5)))
    {
      std::string::operator=((a1 + 160), &__str);
LABEL_32:
      *(a1 + 104) = 1;
    }
  }

LABEL_33:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_2617F51D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RFAnchorPtrGetPinnedGroupPtr(uint64_t a1)
{
  if (*(a1 + 256) || *(a1 + 200) != 1)
  {
    return 0;
  }

  result = a1 + 168;
  if (*(a1 + 184) == 1)
  {
    return *result;
  }

  return result;
}

_BYTE *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrGetIdentifierPtr::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, _BYTE *a2)
{
  if (a2[16])
  {
    return *a2;
  }

  else
  {
    return a2;
  }
}

_BYTE *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrGetIdentifierPtr::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, _BYTE *a2)
{
  if (a2[16])
  {
    return *a2;
  }

  else
  {
    return a2;
  }
}

_BYTE *std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrGetIdentifierPtr::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, _BYTE *a2)
{
  if (a2[16])
  {
    return *a2;
  }

  else
  {
    return a2;
  }
}

_BYTE *std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrGetIdentifierPtr::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, _BYTE *a2)
{
  if (a2[16])
  {
    return *a2;
  }

  else
  {
    return a2;
  }
}

_BYTE *std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrGetIdentifierPtr::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, _BYTE *a2)
{
  if (a2[16])
  {
    return *a2;
  }

  else
  {
    return a2;
  }
}

_BYTE *std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrGetIdentifierPtr::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, _BYTE *a2)
{
  if (a2[16])
  {
    return *a2;
  }

  else
  {
    return a2;
  }
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrGetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> const&>(__n128 ****a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *a2;
  }

  else
  {
    v2 = a2;
  }

  result = *v2;
  ****a1 = *v2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrGetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> const&>(__n128 ****a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *a2;
  }

  else
  {
    v2 = a2;
  }

  result = *v2;
  ****a1 = *v2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrGetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> const&>(__n128 ****a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *a2;
  }

  else
  {
    v2 = a2;
  }

  result = *v2;
  ****a1 = *v2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrGetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> const&>(__n128 ****a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *a2;
  }

  else
  {
    v2 = a2;
  }

  result = *v2;
  ****a1 = *v2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrGetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> const&>(__n128 ****a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *a2;
  }

  else
  {
    v2 = a2;
  }

  result = *v2;
  ****a1 = *v2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrGetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> const&>(__n128 ****a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *a2;
  }

  else
  {
    v2 = a2;
  }

  result = *v2;
  ****a1 = *v2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrSetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(__int128 ***a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  LOBYTE(v10) = 0;
  *(&v10 + 1) = 0;
  uuid_clear(&v9);
  v9 = *v3;
  if (*(a2 + 16))
  {
    v4 = *a2;
  }

  else
  {
    v4 = a2;
  }

  if (v10)
  {
    v5 = v9;
  }

  else
  {
    v5 = &v9;
  }

  result = uuid_compare(v4, v5);
  if (result)
  {
    v7 = v10;
    *a2 = v9;
    *(a2 + 16) = v7;
    *(a2 + 104) = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrSetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(__int128 ***a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  LOBYTE(v10) = 0;
  *(&v10 + 1) = 0;
  uuid_clear(&v9);
  v9 = *v3;
  if (*(a2 + 16))
  {
    v4 = *a2;
  }

  else
  {
    v4 = a2;
  }

  if (v10)
  {
    v5 = v9;
  }

  else
  {
    v5 = &v9;
  }

  result = uuid_compare(v4, v5);
  if (result)
  {
    v7 = v10;
    *a2 = v9;
    *(a2 + 16) = v7;
    *(a2 + 104) = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrSetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(__int128 ***a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  LOBYTE(v10) = 0;
  *(&v10 + 1) = 0;
  uuid_clear(&v9);
  v9 = *v3;
  if (*(a2 + 16))
  {
    v4 = *a2;
  }

  else
  {
    v4 = a2;
  }

  if (v10)
  {
    v5 = v9;
  }

  else
  {
    v5 = &v9;
  }

  result = uuid_compare(v4, v5);
  if (result)
  {
    v7 = v10;
    *a2 = v9;
    *(a2 + 16) = v7;
    *(a2 + 104) = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrSetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(__int128 ***a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  LOBYTE(v10) = 0;
  *(&v10 + 1) = 0;
  uuid_clear(&v9);
  v9 = *v3;
  if (*(a2 + 16))
  {
    v4 = *a2;
  }

  else
  {
    v4 = a2;
  }

  if (v10)
  {
    v5 = v9;
  }

  else
  {
    v5 = &v9;
  }

  result = uuid_compare(v4, v5);
  if (result)
  {
    v7 = v10;
    *a2 = v9;
    *(a2 + 16) = v7;
    *(a2 + 104) = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrSetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(__int128 ***a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  LOBYTE(v10) = 0;
  *(&v10 + 1) = 0;
  uuid_clear(&v9);
  v9 = *v3;
  if (*(a2 + 16))
  {
    v4 = *a2;
  }

  else
  {
    v4 = a2;
  }

  if (v10)
  {
    v5 = v9;
  }

  else
  {
    v5 = &v9;
  }

  result = uuid_compare(v4, v5);
  if (result)
  {
    v7 = v10;
    *a2 = v9;
    *(a2 + 16) = v7;
    *(a2 + 104) = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrSetIdentifier::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(__int128 ***a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  LOBYTE(v10) = 0;
  *(&v10 + 1) = 0;
  uuid_clear(&v9);
  v9 = *v3;
  if (*(a2 + 16))
  {
    v4 = *a2;
  }

  else
  {
    v4 = a2;
  }

  if (v10)
  {
    v5 = v9;
  }

  else
  {
    v5 = &v9;
  }

  result = uuid_compare(v4, v5);
  if (result)
  {
    v7 = v10;
    *a2 = v9;
    *(a2 + 16) = v7;
    *(a2 + 104) = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int8 **std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrSetTracked::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(unsigned __int8 **result, uint64_t a2)
{
  v2 = **result;
  if (*(a2 + 99) != v2)
  {
    *(a2 + 99) = v2;
    *(a2 + 104) = 1;
  }

  return result;
}

unsigned __int8 **std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrSetTracked::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(unsigned __int8 **result, uint64_t a2)
{
  v2 = **result;
  if (*(a2 + 99) != v2)
  {
    *(a2 + 99) = v2;
    *(a2 + 104) = 1;
  }

  return result;
}

unsigned __int8 **std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrSetTracked::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(unsigned __int8 **result, uint64_t a2)
{
  v2 = **result;
  if (*(a2 + 99) != v2)
  {
    *(a2 + 99) = v2;
    *(a2 + 104) = 1;
  }

  return result;
}

unsigned __int8 **std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrSetTracked::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(unsigned __int8 **result, uint64_t a2)
{
  v2 = **result;
  if (*(a2 + 99) != v2)
  {
    *(a2 + 99) = v2;
    *(a2 + 104) = 1;
  }

  return result;
}

unsigned __int8 **std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrSetTracked::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(unsigned __int8 **result, uint64_t a2)
{
  v2 = **result;
  if (*(a2 + 99) != v2)
  {
    *(a2 + 99) = v2;
    *(a2 + 104) = 1;
  }

  return result;
}

unsigned __int8 **std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrSetTracked::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(unsigned __int8 **result, uint64_t a2)
{
  v2 = **result;
  if (*(a2 + 99) != v2)
  {
    *(a2 + 99) = v2;
    *(a2 + 104) = 1;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrGetTransform::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrGetTransform::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrGetTransform::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrGetTransform::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrGetTransform::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrGetTransform::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  return result;
}

float32x4_t **std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<RFAnchorPtrSetTransform::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::PlaneAnchor,rf::ImageAnchor,rf::ObjectAnchor,rf::FaceAnchor,rf::BodyAnchor> &>(float32x4_t **result, float32x4_t *a2)
{
  v2 = **result;
  v3 = (*result)[1];
  v4 = (*result)[2];
  v5 = (*result)[3];
  v6 = vsubq_f32(a2[2], v2);
  v7 = vmulq_f32(v6, v6);
  if (fabsf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))) >= 1.0e-10 || (v8 = vsubq_f32(a2[3], v3), v9 = vmulq_f32(v8, v8), fabsf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))) >= 1.0e-10) || (v10 = vsubq_f32(a2[4], v4), v11 = vmulq_f32(v10, v10), fabsf(vaddv_f32(vadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL)))) >= 1.0e-10) || (v12 = vsubq_f32(a2[5], v5), v13 = vmulq_f32(v12, v12), fabsf(vaddv_f32(vadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL)))) >= 1.0e-10))
  {
    a2[2] = v2;
    a2[3] = v3;
    a2[4] = v4;
    a2[5] = v5;
    a2[6].i8[8] = 1;
  }

  return result;
}