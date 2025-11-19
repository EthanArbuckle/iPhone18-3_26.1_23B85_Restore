unsigned __int8 *std::__format_spec::__process_parsed_integer[abi:nn200100]<char>(unsigned __int8 *result)
{
  v1 = result[1];
  if ((v1 - 2) >= 6 && v1 != 0)
  {
    if (v1 == 10)
    {
      v3 = result;
      result = std::__format_spec::__parser<char>::__validate[abi:nn200100](result, "an integer");
      if ((*v3 & 7) == 0)
      {
        *v3 |= 1u;
      }
    }

    else
    {
      v4 = std::__format_spec::__throw_invalid_type_format_error[abi:nn200100]("an integer");
      return std::__format_spec::__throw_invalid_type_format_error[abi:nn200100](v4);
    }
  }

  return result;
}

uint64_t std::__format_spec::__throw_invalid_type_format_error[abi:nn200100](const char *a1)
{
  std::string::basic_string[abi:nn200100]<0>(&v10, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v10, a1, v2);
  v4 = v3->__r_.__value_.__r.__words[2];
  *&v11.__r_.__value_.__l.__data_ = *&v3->__r_.__value_.__l.__data_;
  v11.__r_.__value_.__r.__words[2] = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v11, " formatting argument", 0x14uLL);
  v6 = v5->__r_.__value_.__r.__words[2];
  v12 = *&v5->__r_.__value_.__l.__data_;
  v13 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (v13 >= 0)
  {
    v7 = &v12;
  }

  else
  {
    v7 = v12;
  }

  v8 = std::__throw_format_error[abi:nn200100](v7);
  return std::__formatter_string<char>::parse[abi:nn200100]<std::basic_format_parse_context<char>>(v8);
}

std::locale *std::__formatter_string<char>::parse[abi:nn200100]<std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:nn200100]<std::basic_format_parse_context<char>>(a1, a2, 40);
  v4 = *(a1 + 1);
  if (v4 >= 2 && v4 != 19)
  {
    v6 = std::__throw_format_error[abi:nn200100]("The type option contains an invalid value for a string formatting argument");
    return std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:nn200100](v6, v7);
  }

  return result;
}

std::locale *std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:nn200100](std::locale *this, uint64_t a2)
{
  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x1B8C61F50](&v6);
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

void *std::__formatter::__write_using_decimal_separators[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(void *a1, char *__src, unsigned __int8 *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
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
      std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a1, __src, v16);
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
      std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v20, SHIDWORD(a8));
      goto LABEL_16;
    }

    v20 = (a7 >> 32) - v18;
    v19 = 0;
    goto LABEL_15;
  }

  std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a1, __src, a3 - __src);
  if (v14 > v18)
  {
    std::__format::__output_buffer<char>::__fill[abi:nn200100](a1, v14 - v18, 48);
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
      std::__format::__output_buffer<char>::__transform[abi:nn200100]<char *,char (*)(char),char>(a1, v11, &v11[v29]);
      v11 = v31;
    }

    else
    {
      std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a1, v11, v29);
      v11 += *i;
    }

    if (v24 == v26)
    {
      break;
    }

    std::__format::__output_buffer<char>::push_back[abi:nn200100](a1, a6);
  }

  return std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v19, v15);
}

void *std::__formatter::__write_transformed[abi:nn200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
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
      v11 = std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v10, SHIDWORD(a5));
      std::__format::__output_buffer<char>::__transform[abi:nn200100]<char *,char (*)(char),char>(v11, a1, a2);
      std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v8, v9);
      return a3;
    }

    v10 = (a4 >> 32) - (a2 - a1);
    v8 = 0;
    goto LABEL_9;
  }

  std::__format::__output_buffer<char>::__transform[abi:nn200100]<char *,char (*)(char),char>(a3, a1, a2);
  return a3;
}

uint64_t std::__format::__output_buffer<char>::__transform[abi:nn200100]<char *,char (*)(char),char>(uint64_t result, unsigned __int8 *a2, uint64_t a3)
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
        v18 = *v16++;
        v17 = v18;
        v19 = v18 - 32;
        if ((v18 - 97) < 6)
        {
          v17 = v19;
        }

        *v14++ = v17;
        --v15;
      }

      while (v15);
      v11 = *(v4 + 16);
    }

    v3 += v13;
    v11 += v13;
    *(v4 + 16) = v11;
    v20 = v9 > v12;
    v9 -= v13;
  }

  while (v20);
  return result;
}

void *std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(void *a1, size_t a2, int a3)
{
  v3 = a2;
  __src = a3;
  v5 = __clz(~a3);
  v6 = v5 - 24;
  if (v5 == 24)
  {
    std::__format::__output_buffer<char>::__fill[abi:nn200100](a1, a2, a3);
  }

  else if (a2)
  {
    do
    {
      std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a1, &__src, v6);
      --v3;
    }

    while (v3);
  }

  return a1;
}

void *std::__format::__output_buffer<char>::__fill[abi:nn200100](void *result, size_t a2, int __c)
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

_WORD *std::__itoa::__append10[abi:nn200100]<unsigned long long>(_WORD *a1, unint64_t a2)
{
  *a1 = *(std::__itoa::__digits_base_10 + ((a2 / 0x2FAF080) & 0xFFFFFFFE));
  v2 = a2 % 0x5F5E100;
  a1[1] = std::__itoa::__digits_base_10[v2 / 0xF4240uLL];
  v2 %= 0xF4240u;
  a1[2] = std::__itoa::__digits_base_10[v2 / 0x2710uLL];
  LOWORD(v2) = v2 % 0x2710;
  a1[3] = std::__itoa::__digits_base_10[v2 / 0x64u];
  a1[4] = std::__itoa::__digits_base_10[v2 % 0x64u];
  return a1 + 5;
}

unint64_t std::__format_spec::__estimate_column_width[abi:nn200100]<char,char const*>(unsigned __int8 *a1, uint64_t a2, unint64_t a3, int a4)
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
  v33 = v8;
  v34 = &a1[a2];
  v11 = std::__unicode::__code_point_view<char>::__consume[abi:nn200100](&v33) & 0x7FFFFFFF;
  v35 = v11;
  v12 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:nn200100](v11);
  v36 = v12;
  v37 = 0;
  v38 = 0;
  if (v12 == 3)
  {
    v13 = 2;
    goto LABEL_16;
  }

  if (v12 == 9)
  {
    v13 = 3;
LABEL_16:
    LODWORD(v37) = v13;
    goto LABEL_17;
  }

  if (!std::__indic_conjunct_break::__get_property[abi:nn200100](v11))
  {
    v13 = 1;
    goto LABEL_16;
  }

LABEL_17:
  v31 = v8 - a1;
  if (v8 != v10)
  {
    v14 = 0;
    while (1)
    {
      v15 = v11;
      while (1)
      {
        v16 = v33;
        if (v33 == v34)
        {
          break;
        }

        v11 = std::__unicode::__code_point_view<char>::__consume[abi:nn200100](&v33) & 0x7FFFFFFF;
        v17 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:nn200100](v11);
        v18 = v17;
        if (v37 > 1)
        {
          if (v37 == 2)
          {
            if (HIDWORD(v37) == 2)
            {
              if (v17 == 3)
              {
                HIDWORD(v37) = 0;
                goto LABEL_44;
              }
            }

            else if (HIDWORD(v37) == 1)
            {
              if (v17 == 2)
              {
                goto LABEL_44;
              }

              if (v17 == 13)
              {
LABEL_40:
                HIDWORD(v37) = 2;
                goto LABEL_44;
              }
            }

            else
            {
              if (v17 == 13)
              {
                goto LABEL_40;
              }

              if (v17 == 2)
              {
                HIDWORD(v37) = 1;
                goto LABEL_44;
              }
            }

LABEL_45:
            LODWORD(v37) = 0;
            goto LABEL_46;
          }

          LODWORD(v37) = 0;
          if (v17 == 9)
          {
            goto LABEL_44;
          }

LABEL_46:
          v20 = std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:nn200100](&v35, v11, v18);
          v35 = v11;
          v36 = v18;
          if (v20)
          {
            break;
          }
        }

        else
        {
          if (!v37)
          {
            goto LABEL_46;
          }

          v19 = std::__indic_conjunct_break::__get_property[abi:nn200100](v11);
          if (v19 == 3)
          {
            goto LABEL_45;
          }

          if (!v38)
          {
            if (v19 == 1)
            {
              goto LABEL_44;
            }

            if (v19 == 2)
            {
              v38 = 1;
              goto LABEL_44;
            }

            goto LABEL_45;
          }

          if ((v19 - 1) >= 2)
          {
            v38 = 0;
          }

LABEL_44:
          v35 = v11;
          v36 = v18;
        }
      }

      if (v15 - 262142 < 0xFFFC1102)
      {
        goto LABEL_57;
      }

      v21 = &std::__width_estimation_table::__entries[abi:nn200100];
      v22 = 107;
      do
      {
        v23 = v22 >> 1;
        v24 = &v21[v22 >> 1];
        v26 = *v24;
        v25 = v24 + 1;
        v22 += ~(v22 >> 1);
        if (((v15 << 14) | 0x3FFF) >= v26)
        {
          v21 = v25;
        }

        else
        {
          v22 = v23;
        }
      }

      while (v22);
      if (v21 == &std::__width_estimation_table::__entries[abi:nn200100])
      {
LABEL_57:
        v28 = 1;
      }

      else
      {
        v27 = (*(v21 - 1) & 0x3FFF) + (*(v21 - 1) >> 14) >= v15;
        v28 = 1;
        if (v27)
        {
          v28 = 2;
        }
      }

      v29 = v14 + v28;
      if (a4 || v29 <= v6)
      {
        v30 = v16 == v10 || v29 > v6;
        v14 = v29;
        if (!v30)
        {
          continue;
        }
      }

      return v31 + v14;
    }
  }

  v14 = 0;
  return v31 + v14;
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:nn200100](unsigned __int8 **a1)
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

uint64_t std::__extended_grapheme_custer_property_boundary::__get_property[abi:nn200100](unsigned int a1)
{
  v1 = 1496;
  v2 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:nn200100];
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
  if (v2 != &std::__extended_grapheme_custer_property_boundary::__entries[abi:nn200100])
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

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:nn200100](uint64_t a1, unsigned int a2, unsigned int a3)
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
          if (std::__indic_conjunct_break::__get_property[abi:nn200100](a2))
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

uint64_t std::__indic_conjunct_break::__get_property[abi:nn200100](unsigned int a1)
{
  v1 = 201;
  v2 = &std::__indic_conjunct_break::__entries[abi:nn200100];
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
  if (v2 != &std::__indic_conjunct_break::__entries[abi:nn200100])
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

void *std::__formatter::__format_locale_specific_form[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(void *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, MEMORY[0x1E69E5368]);
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
    std::__format::__output_buffer<char>::push_back[abi:nn200100](a1, *v28);
  }

  v35 = v27 & 0xFFFFFF00 | v33;
  std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v32, v35);
  if (v31 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      std::__format::__output_buffer<char>::push_back[abi:nn200100](a1, *v36);
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
    std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a1, v13, v49);
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
    std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a1, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    std::__format::__output_buffer<char>::push_back[abi:nn200100](a1, v40);
  }

LABEL_61:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    std::__format::__output_buffer<char>::push_back[abi:nn200100](a1, v45);
    std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a1, a3[1] + 1, a3[2] - (a3[1] + 1));
    std::__format::__output_buffer<char>::__fill[abi:nn200100](a1, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a1, v46, v44 - v46);
  }

  std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, *v48, v35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1B2D82A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

void *std::__formatter::__write_using_trailing_zeros[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7, size_t a8)
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
  v16 = std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v14, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(v16, a1, a7 - a1);
  std::__format::__output_buffer<char>::__fill[abi:nn200100](a3, a8, 48);
  std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a3, a7, a2 - a7);

  return std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v13, v15);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:nn200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x1B8C62080](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
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

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:nn200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x1B8C62080](a5, v7, 4);
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

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:nn200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x1B8C62080](a5, a3 + a2, 1);
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

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:nn200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x1B8C62050](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
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

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:nn200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x1B8C62050](a5, v7, 4);
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

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:nn200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x1B8C62050](a5, a3 + a2, 1);
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

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:nn200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x1B8C620B0](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
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

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:nn200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x1B8C620B0](a5, v7, 4);
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

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:nn200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x1B8C620B0](a5, a3 + a2, 1);
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

unint64_t std::__visit_format_arg[abi:nn200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int *a1)
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
      goto LABEL_11;
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
        goto LABEL_12;
      }

      if (result >> 31)
      {
LABEL_10:
        std::__throw_format_error[abi:nn200100]("The value of the argument index exceeds its maximum value");
LABEL_11:
        std::__throw_format_error[abi:nn200100]("Replacement argument isn't a standard signed or unsigned integer type");
LABEL_12:
        std::__throw_format_error[abi:nn200100]("An argument index may not have a negative value");
LABEL_13:
        v2 = std::__throw_format_error[abi:nn200100]("The argument index value is too large for the number of arguments supplied");
        return std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v2);
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
      if (!(result >> 31))
      {
        return result;
      }

      goto LABEL_10;
    default:
      goto LABEL_13;
  }
}

void *std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6)
{
  v15 = *MEMORY[0x1E69E9840];
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      return std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, __src, &v13 + 5, 0, 0xAu);
    }

    v11 = 2;
    if (BYTE1(a4) == 2)
    {
      v10 = "0b";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v10 = "0B";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v15;
    return std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, __src, v9, v10, v11);
  }

  if (BYTE1(a4) > 5u)
  {
    v11 = 16;
    if (BYTE1(a4) == 6)
    {
      v10 = "0x";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v10 = "0X";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v13;
    return std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, __src, v9, v10, v11);
  }

  if (BYTE1(a4) != 4)
  {
    return std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, __src, &v13 + 5, 0, 0xAu);
  }

  if (a1 | a2)
  {
    v6 = "0";
  }

  else
  {
    v6 = 0;
  }

  return std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, __src, v14, v6, 8u);
}

void *std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6, char *__src, char *a8, _BYTE *a9, unsigned int a10)
{
  v10 = a8;
  v11 = __src;
  v12 = a5;
  v14 = a3;
  v15 = a2;
  v16 = a1;
  v17 = a4;
  if (a6)
  {
    v18 = 45;
LABEL_7:
    *__src = v18;
    v20 = __src + 1;
    goto LABEL_8;
  }

  v19 = (a4 >> 3) & 3;
  if (v19 == 2)
  {
    v18 = 43;
    goto LABEL_7;
  }

  v20 = __src;
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
        v97 = a5;
        v98 = a3;
        if (__PAIR128__(a2, a1) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
        {
          *v20 = __udivti3() | 0x30;
          v32 = __udivti3();
          v20[1] = ((1441151881 * v32) >> 57) + 48;
          *(v20 + 1) = std::__itoa::__digits_base_10[v32 % 0x5F5E100 / 0xF4240uLL];
          v33 = v32 % 0x5F5E100 % 0xF4240;
          *(v20 + 2) = std::__itoa::__digits_base_10[v33 / 0x2710uLL];
          LOWORD(v33) = v33 % 0x2710;
          *(v20 + 3) = std::__itoa::__digits_base_10[v33 / 0x64u];
          *(v20 + 4) = std::__itoa::__digits_base_10[v33 % 0x64u];
          v34 = __udivti3();
          v29 = std::__itoa::__append10[abi:nn200100]<unsigned long long>(v20 + 5, v34);
        }

        else
        {
          v28 = __udivti3();
          if (HIDWORD(v28))
          {
            v37 = v20;
            if (v28 > 0x2540BE3FFLL)
            {
              v37 = std::__itoa::__base_10_u32[abi:nn200100](v20, v28 / 0x2540BE400);
              v28 %= 0x2540BE400uLL;
            }

            v35 = std::__itoa::__append10[abi:nn200100]<unsigned long long>(v37, v28);
            goto LABEL_33;
          }

          v29 = std::__itoa::__base_10_u32[abi:nn200100](v20, v28);
        }

        v35 = v29;
LABEL_33:
        v38 = __umodti3();
        *v35 = v38 / 0x2540BE400 / 0x5F5E100 + 48;
        v39 = v38 / 0x2540BE400 % 0x5F5E100;
        *(v35 + 1) = std::__itoa::__digits_base_10[v39 / 0xF4240uLL];
        v39 %= 0xF4240u;
        *(v35 + 3) = std::__itoa::__digits_base_10[v39 / 0x2710uLL];
        LOWORD(v39) = v39 % 0x2710;
        *(v35 + 5) = std::__itoa::__digits_base_10[v39 / 0x64u];
        *(v35 + 7) = std::__itoa::__digits_base_10[v39 % 0x64u];
        v10 = std::__itoa::__append10[abi:nn200100]<unsigned long long>((v35 + 9), v38 % 0x2540BE400);
LABEL_34:
        v12 = v97;
        v14 = v98;
      }
    }

    else if (v26 > 19 || (v30 = (1233 * (64 - __clz(a1 | 1))) >> 12, v26 >= v30 - (std::__itoa::__pow10_64[v30] > a1) + 1))
    {
      if (HIDWORD(a1))
      {
        v36 = v20;
        if (v16 > 0x2540BE3FFLL)
        {
          v36 = std::__itoa::__base_10_u32[abi:nn200100](v20, v16 / 0x2540BE400);
          v16 %= 0x2540BE400uLL;
        }

        v31 = std::__itoa::__append10[abi:nn200100]<unsigned long long>(v36, v16);
      }

      else
      {
        v31 = std::__itoa::__base_10_u32[abi:nn200100](v20, a1);
      }

      v10 = v31;
    }
  }

  else if (v24)
  {
    if (v24 == 3)
    {
      v67 = __clz(a2);
      v68 = __clz(a1 | 1) | 0x40;
      if (a2)
      {
        v68 = v67;
      }

      v69 = (-126 - v68) / 3u;
      if (a8 - v20 >= v69)
      {
        v10 = &v20[v69];
        if (__PAIR128__(a2, a1) < 0x41)
        {
          v71 = a1;
          v70 = v10;
        }

        else
        {
          v70 = &v20[v69];
          do
          {
            *(&v72 + 1) = v15;
            *&v72 = v16;
            v71 = v72 >> 6;
            v15 >>= 6;
            *(v70 - 1) = std::__itoa::__base_8_lut[v16 & 0x3F];
            v70 -= 2;
            v16 = v71;
          }

          while (v71 > 0x40);
        }

        v84 = v70 - 1;
        do
        {
          v85 = v71 & 7;
          v80 = v71 <= 7;
          *(&v86 + 1) = v15;
          *&v86 = v71;
          v71 = v86 >> 3;
          v15 >>= 3;
          *v84-- = a01234567[v85];
        }

        while (!v80);
      }
    }

    else
    {
      if (v24 != 7)
      {
        v97 = a5;
        v98 = a3;
        v81 = a8 - v20;
        if (__PAIR128__(a2, a1) >= a10)
        {
          v96 = a8 - v20;
          v83 = 0;
          while (1)
          {
            if (__PAIR128__(a2, a1) < a10 * a10)
            {
              v82 = v83 | 2;
              goto LABEL_123;
            }

            if (__PAIR128__(a2, a1) < a10 * a10 * a10)
            {
              v82 = v83 | 3;
              goto LABEL_123;
            }

            if (__PAIR128__(a2, a1) < a10 * a10 * a10 * a10)
            {
              break;
            }

            a1 = __udivti3();
            v83 += 4;
            if (__PAIR128__(a2, a1) < a10)
            {
              v82 = v83 | 1;
              goto LABEL_123;
            }
          }

          v82 = v83 + 4;
LABEL_123:
          v81 = v96;
        }

        else
        {
          v82 = 1;
        }

        if (v81 >= v82)
        {
          v10 = &v20[v82];
          v93 = v10 - 1;
          do
          {
            v94 = __udivti3();
            v80 = __PAIR128__(v15, v16) >= a10;
            *v93-- = a0123456789abcd[v16 - v94 * a10];
            v16 = v94;
            v15 = v95;
          }

          while (v80);
        }

        goto LABEL_34;
      }

      v61 = __clz(a2);
      v62 = __clz(a1 | 1) | 0x40;
      if (a2)
      {
        v62 = v61;
      }

      v63 = 131 - v62;
      if (a8 - v20 >= (v63 >> 2))
      {
        v10 = &v20[v63 >> 2];
        if (__PAIR128__(a2, a1) < 0x101)
        {
          v65 = a1;
          v64 = v10;
        }

        else
        {
          v64 = &v20[v63 >> 2];
          do
          {
            *(&v66 + 1) = v15;
            *&v66 = v16;
            v65 = v66 >> 8;
            v15 >>= 8;
            *(v64 - 1) = std::__itoa::__base_16_lut[v16];
            v64 -= 2;
            v16 = v65;
          }

          while (v65 > 0x100);
        }

        v90 = v64 - 1;
        do
        {
          v91 = v65 & 0xF;
          v80 = v65 <= 0xF;
          *(&v92 + 1) = v15;
          *&v92 = v65;
          v65 = v92 >> 4;
          v15 >>= 4;
          *v90-- = a0123456789abcd_0[v91];
        }

        while (!v80);
      }
    }
  }

  else
  {
    v73 = __clz(a2);
    v74 = __clz(a1 | 1) | 0x40;
    if (a2)
    {
      v74 = v73;
    }

    v75 = 128 - v74;
    if (a8 - v20 >= v75)
    {
      v10 = &v20[v75];
      if (__PAIR128__(a2, a1) < 0x11)
      {
        v77 = a1;
        v79 = a2;
        v76 = v10;
      }

      else
      {
        v76 = &v20[v75];
        do
        {
          *(&v78 + 1) = v15;
          *&v78 = v16;
          v77 = v78 >> 4;
          v79 = v15 >> 4;
          *(v76 - 1) = std::__itoa::__base_2_lut[v16 & 0xF];
          v76 -= 4;
          v80 = v16 <= 0x10F;
          v16 = v77;
          v15 >>= 4;
        }

        while (!v80);
      }

      v87 = v76 - 1;
      do
      {
        v88 = v77 & 1;
        v80 = v77 <= 1;
        *(&v89 + 1) = v79;
        *&v89 = v77;
        v77 = v89 >> 1;
        v79 >>= 1;
        *v87-- = a01[v88];
      }

      while (!v80);
    }
  }

  v40 = v10 - v20;
  if ((v17 & 0x40) == 0)
  {
    goto LABEL_62;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:nn200100](&v100, v14);
  v41 = std::locale::use_facet(&v100, MEMORY[0x1E69E5368]);
  std::locale::~locale(&v100);
  (v41->__vftable[1].__on_zero_shared)(&v100, v41);
  if ((v102 & 0x8000000000000000) != 0)
  {
    locale = v100.__locale_;
    v43 = v101;
    if (v101 && v40 > *v100.__locale_)
    {
      v44 = v100.__locale_;
      goto LABEL_43;
    }

    operator delete(v100.__locale_);
LABEL_62:
    v56 = HIDWORD(a4);
    if ((v17 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(*v14, v11, v20 - v11);
      v57 = a4 & 0xF8 | 3;
      if (SHIDWORD(a4) >= v20 - v11)
      {
        LODWORD(v58) = v20 - v11;
      }

      else
      {
        LODWORD(v58) = HIDWORD(a4);
      }

      v56 = (HIDWORD(a4) - v58);
      LOBYTE(v58) = 48;
      v11 = v20;
    }

    else
    {
      v58 = HIDWORD(v12);
      v57 = a4;
    }

    v55 = *v14;
    v59 = v56 << 32;
    if ((a4 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:nn200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, v10, v55, v59 | a4 & 0xFFFF0000 | v57 | 0x700, v12 & 0xFFFFFF00FFFFFFFFLL | (v58 << 32));
    }

    else
    {
      std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, v10 - v11, v55, v59 | a4 & 0xFFFFFF00 | v57, v12 & 0xFFFFFF00FFFFFFFFLL | (v58 << 32), v10 - v11);
    }

    return v55;
  }

  if (!v102 || v40 <= SLOBYTE(v100.__locale_))
  {
    goto LABEL_62;
  }

  locale = &v100;
  v44 = v100.__locale_;
  v43 = v101;
LABEL_43:
  v45 = *v14;
  memset(&v99, 0, sizeof(v99));
  v46 = v44 + v43;
  if (v102 >= 0)
  {
    v46 = &v100 + v102;
  }

  v47 = *locale;
  v48 = v40 - *locale;
  if (v48 >= 1)
  {
    v49 = v46 - 1;
    do
    {
      std::string::push_back(&v99, v47);
      if (locale == v49)
      {
        v47 = *locale;
      }

      else
      {
        v50 = locale + 1;
        v51 = locale + 1;
        do
        {
          v52 = *v51++;
          v47 = v52;
          if (v52)
          {
            v53 = 1;
          }

          else
          {
            v53 = v50 == v49;
          }

          v50 = v51;
        }

        while (!v53);
        locale = v51 - 1;
      }

      v48 -= v47;
    }

    while (v48 > 0);
  }

  std::string::push_back(&v99, v47 + v48);
  v54 = (v41->__vftable[1].~facet_0)(v41);
  v55 = std::__formatter::__write_using_decimal_separators[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v45, v11, v20, v20 + v40, &v99, v54, a4, v12);
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (v102 < 0)
  {
    operator delete(v100.__locale_);
  }

  return v55;
}

void sub_1B2D83DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::locale a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21.__locale_);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v13 = *MEMORY[0x1E69E9840];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      return std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 0xAu);
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
    return std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
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
    return std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
    return std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 0xAu);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, &v12 + 5, v5, 8u);
}

void *std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, char *a7, _BYTE *a8, unsigned int a9)
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

  v20 = std::__to_chars_integral[abi:nn200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_40;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:nn200100](&v43, a2);
  v21 = std::locale::use_facet(&v43, MEMORY[0x1E69E5368]);
  v22 = v20 - v16;
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    v24 = v44;
    if (v44 && v22 > *v43.__locale_)
    {
      v25 = v43.__locale_;
      goto LABEL_21;
    }

    operator delete(v43.__locale_);
LABEL_40:
    v37 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(*a2, v9, v16 - v9);
      v38 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v39) = v16 - v9;
      }

      else
      {
        LODWORD(v39) = HIDWORD(a3);
      }

      v37 = (HIDWORD(a3) - v39);
      LOBYTE(v39) = 48;
      v9 = v16;
    }

    else
    {
      v39 = HIDWORD(a4);
      v38 = a3;
    }

    v36 = *a2;
    v40 = v37 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:nn200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, *a2, v40 | a3 & 0xFFFF0000 | v38 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v39 << 32));
    }

    else
    {
      std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, *a2, v40 | a3 & 0xFFFFFF00 | v38, a4 & 0xFFFFFF00FFFFFFFFLL | (v39 << 32), v20 - v9);
    }

    return v36;
  }

  if (!v45 || v22 <= SLOBYTE(v43.__locale_))
  {
    goto LABEL_40;
  }

  locale = &v43;
  v25 = v43.__locale_;
  v24 = v44;
LABEL_21:
  v26 = *a2;
  memset(&__p, 0, sizeof(__p));
  v27 = v25 + v24;
  if (v45 >= 0)
  {
    v27 = &v43 + v45;
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
  v36 = std::__formatter::__write_using_decimal_separators[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v26, v9, v16, v20, &__p, v35, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v36;
}

void sub_1B2D842C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

unsigned __int8 *std::__format_spec::__parser<char>::__validate[abi:nn200100](unsigned __int8 *result, const char *a2)
{
  if ((*result & 0x18) != 0)
  {
    v2 = "sign";
LABEL_11:
    std::__format_spec::__throw_invalid_option_format_error[abi:nn200100](a2, v2);
    goto LABEL_12;
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

  if (*(result + 2) != -1)
  {
    v2 = "precision";
    goto LABEL_11;
  }

  if (result[1] >= 0x20u)
  {
LABEL_12:
    v3 = std::__throw_format_error[abi:nn200100]("The type does not fit in the mask");
    return std::__format_spec::__throw_invalid_option_format_error[abi:nn200100](v3, v4);
  }

  return result;
}

unsigned __int8 *std::__format_spec::__throw_invalid_option_format_error[abi:nn200100](const char *a1, const char *a2)
{
  std::string::basic_string[abi:nn200100]<0>(&v19, "The format specifier for ");
  v4 = strlen(a1);
  v5 = std::string::append(&v19, a1, v4);
  v6 = v5->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = *&v5->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v20, " does not allow the ", 0x14uLL);
  v8 = v7->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = strlen(a2);
  v10 = std::string::append(&v21, a2, v9);
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v22, " option", 7uLL);
  v13 = v12->__r_.__value_.__r.__words[2];
  v23 = *&v12->__r_.__value_.__l.__data_;
  v24 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v24 >= 0)
  {
    v14 = &v23;
  }

  else
  {
    v14 = v23;
  }

  v15 = std::__throw_format_error[abi:nn200100](v14);
  return std::__format_spec::__parse_arg_id[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(v15, v16, v17);
}

unsigned __int8 *std::__format_spec::__parse_arg_id[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = std::__format::__parse_arg_id[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
    if (v4 != a2 && *v4 == 125)
    {
      return v4 + 1;
    }

    std::__throw_format_error[abi:nn200100]("The argument index is invalid");
  }

  v6 = std::__throw_format_error[abi:nn200100]("End of input while parsing an argument index");
  return std::__format::__parse_number[abi:nn200100]<char const*>(v6, v7);
}

unsigned __int8 *std::__format::__parse_number[abi:nn200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1;
  v3 = a1 + 9;
  if (a2 - a1 <= 9)
  {
    v3 = a2;
  }

  v5 = *a1;
  result = a1 + 1;
  v6 = v5 - 48;
  if (result != v3)
  {
    v2 = v3 - 1;
    while (1)
    {
      v7 = *result;
      if ((v7 - 58) < 0xFFFFFFF6)
      {
        return result;
      }

      v6 = v7 + 10 * v6 - 48;
      if (++result == v3)
      {
        goto LABEL_9;
      }
    }
  }

  v3 = result;
LABEL_9:
  if (v3 == a2)
  {
    return a2;
  }

  v8 = *v3;
  if ((v8 - 48) > 9)
  {
    return v3;
  }

  if ((v8 + 10 * v6 - 48) >> 31 || (result = v2 + 2, v2 + 2 != a2) && *result - 48 <= 9)
  {
    std::__throw_format_error[abi:nn200100]("The numeric value of the format specifier is too large");
    return a2;
  }

  return result;
}

uint64_t std::__format::__allocating_buffer<char>::__prepare_write[abi:nn200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  if (v4 >= 0x100)
  {
    operator new();
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RenderItemTypeID>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13ItemsPreparedEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ItemsPrepared>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ItemsPrepared>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ItemsPrepared>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ItemsPrepared>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ItemsPrepared,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A3F6C0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::ItemsPrepared,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::ItemsPrepared,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A3F6E0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::ItemsPrepared,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::ItemsPrepared,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ItemsPrepared,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A3F6C0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::ItemsPrepared,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderItemTypeID>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderItemTypeID>(void)::localId;
    *algn_1EB82D878 = 0xCC7861782DE34E23;
    qword_1EB82D880 = "md::ls::RenderItemTypeID]";
    qword_1EB82D888 = 24;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16RenderItemTypeIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemTypeID>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
        v18 = *(v17 + 16);
        v19 = *v17;
        v20 = *(v16 + 16);
        *v17 = *v16;
        *(v17 + 16) = v20;
        *v16 = v19;
        *(v16 + 16) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16RenderItemTypeIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4FF58;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderItemTypeID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FF18;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderItemTypeID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderItemTypeID,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A4FF38;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::RenderItemTypeID,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderItemTypeID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderItemTypeID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FF18;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderItemTypeID,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12RenderItemIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
        v18 = *(v17 + 16);
        v19 = *v17;
        v20 = *(v16 + 16);
        *v17 = *v16;
        *(v17 + 16) = v20;
        *v16 = v19;
        *(v16 + 16) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderItemID>();
    unk_1EB83DAB0 = 0xD68EA0DE832DEC03;
    qword_1EB83DAB8 = "md::ls::RenderItemID]";
    qword_1EB83DAC0 = 20;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderItemID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FDC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderItemID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderItemID,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A4FDE0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::RenderItemID,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderItemID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderItemID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FDC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderItemID,64ul>::~storage(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v53 = 0;
  v54 = 0uLL;
  if (a2 == 1)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v53, (*a1)[2]);
    v7 = (*a1 + 1);
    v8 = **a1;
    if (v8 != v7)
    {
      v9 = v54;
      do
      {
        if (v9 >= *(&v54 + 1))
        {
          v10 = (v9 - v53) >> 4;
          v11 = v10 + 1;
          if ((v10 + 1) >> 60)
          {
LABEL_72:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v12 = *(&v54 + 1) - v53;
          if ((*(&v54 + 1) - v53) >> 3 > v11)
          {
            v11 = v12 >> 3;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF0)
          {
            v13 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v11;
          }

          v58 = &v53;
          if (v13)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(v13);
          }

          v14 = 16 * v10;
          v55 = 0;
          v56 = v14;
          *(&v57 + 1) = 0;
          *v14 = *(v8 + 56);
          *(v14 + 8) = v8[8];
          *(v8 + 56) = 0;
          v8[8] = 0;
          *&v57 = 16 * v10 + 16;
          v15 = &v53[v56 - v54];
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(v53, v54, v15);
          v16 = v53;
          v17 = *(&v54 + 1);
          v53 = v15;
          v49 = v57;
          v54 = v57;
          *&v57 = v16;
          *(&v57 + 1) = v17;
          v55 = v16;
          v56 = v16;
          std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v55, v18, v19);
          v9 = v49;
        }

        else
        {
          *v9 = *(v8 + 56);
          *(v9 + 8) = v8[8];
          *(v8 + 56) = 0;
          v8[8] = 0;
          v9 += 16;
        }

        *&v54 = v9;
        v20 = v8[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v8[2];
            v22 = *v21 == v8;
            v8 = v21;
          }

          while (!v22);
        }

        v8 = v21;
      }

      while (v21 != v7);
    }
  }

  else if (a2 == 2)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v53, ((*a1)[1] - **a1) >> 4);
    v6 = **a1;
    v5 = (*a1)[1];
    while (v6 != v5)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:nn200100](&v53, v6);
      v6 += 16;
    }
  }

  v48 = a1;
  for (i = v54; v53 != v54; i = v54)
  {
    v24 = *(i - 16);
    v51 = *(i - 16);
    v25 = *(i - 8);
    v52 = v25;
    *(i - 16) = 0;
    *(i - 8) = 0;
    v26 = v54 - 16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v54 - 8, *(v54 - 16), a3);
    *&v54 = v26;
    if (v24 == 1)
    {
      v32 = *v25;
      if (*v25 == v25 + 1)
      {
        v24 = 1;
      }

      else
      {
        do
        {
          if (v26 >= *(&v54 + 1))
          {
            v33 = (v26 - v53) >> 4;
            if ((v33 + 1) >> 60)
            {
              goto LABEL_72;
            }

            v34 = (*(&v54 + 1) - v53) >> 3;
            if (v34 <= v33 + 1)
            {
              v34 = v33 + 1;
            }

            if (*(&v54 + 1) - v53 >= 0x7FFFFFFFFFFFFFF0uLL)
            {
              v35 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v34;
            }

            v58 = &v53;
            if (v35)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(v35);
            }

            v36 = 16 * v33;
            v55 = 0;
            v56 = v36;
            *(&v57 + 1) = 0;
            *v36 = *(v32 + 56);
            *(v36 + 8) = v32[8];
            *(v32 + 56) = 0;
            v32[8] = 0;
            *&v57 = 16 * v33 + 16;
            v37 = &v53[v56 - v54];
            std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(v53, v54, v37);
            v38 = v53;
            v39 = *(&v54 + 1);
            v53 = v37;
            v50 = v57;
            v54 = v57;
            *&v57 = v38;
            *(&v57 + 1) = v39;
            v55 = v38;
            v56 = v38;
            std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v55, v40, v41);
            v26 = v50;
          }

          else
          {
            *v26 = *(v32 + 56);
            *(v26 + 8) = v32[8];
            *(v32 + 56) = 0;
            v32[8] = 0;
            v26 += 16;
          }

          *&v54 = v26;
          v42 = v32[1];
          if (v42)
          {
            do
            {
              v43 = v42;
              v42 = *v42;
            }

            while (v42);
          }

          else
          {
            do
            {
              v43 = v32[2];
              v22 = *v43 == v32;
              v32 = v43;
            }

            while (!v22);
          }

          v32 = v43;
        }

        while (v43 != v25 + 1);
        v25 = v52;
        v24 = v51;
      }

      std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(v25[1]);
      *v25 = (v25 + 1);
      v25[2] = 0;
      v25[1] = 0;
    }

    else if (v24 == 2)
    {
      v29 = *v25;
      v28 = v25[1];
      if (*v25 != v28)
      {
        do
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:nn200100](&v53, v29);
          v29 += 16;
        }

        while (v29 != v28);
        v29 = *v25;
        v28 = v25[1];
      }

      if (v28 != v29)
      {
        v30 = v28 - 8;
        do
        {
          v31 = v30 - 8;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v30, *(v30 - 8), v27);
          v30 -= 16;
        }

        while (v31 != v29);
      }

      v25[1] = v29;
      v24 = 2;
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v52, v24, v27);
  }

  if (v3 > 2)
  {
    v44 = v48;
    if (v3 == 3)
    {
      v45 = *v48;
      if (*(*v48 + 23) < 0)
      {
        v47 = *v45;
        goto LABEL_68;
      }
    }

    else
    {
      if (v3 != 8)
      {
        goto LABEL_71;
      }

      v45 = *v48;
      v46 = **v48;
      if (v46)
      {
        v45[1] = v46;
        v47 = v46;
LABEL_68:
        operator delete(v47);
        goto LABEL_69;
      }
    }

LABEL_70:
    operator delete(v45);
    goto LABEL_71;
  }

  v44 = v48;
  if (v3 == 1)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*(*v48 + 1));
    goto LABEL_69;
  }

  if (v3 == 2)
  {
    v55 = *v48;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:nn200100](&v55, a2, a3);
LABEL_69:
    v45 = *v44;
    goto LABEL_70;
  }

LABEL_71:
  v55 = &v53;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:nn200100](&v55, a2, a3);
}

void sub_1B2D859D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, char a15)
{
  a13 = &a15;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:nn200100](&a13, a2, a3);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](unsigned __int8 *a1, void **a2)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = *a1;
    if (v6 > 9)
    {
      v7 = "number";
    }

    else
    {
      v7 = off_1E7B33C98[v6];
    }

    std::string::basic_string[abi:nn200100]<0>(&v10, v7);
    v8 = std::string::insert(&v10, 0, "cannot use operator[] with a string argument with ", 0x32uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    v11 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(exception, 305, &v11);
  }

  v3 = *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(*(a1 + 1), &v11, a2);
  if (!v3)
  {
    operator new();
  }

  return v3 + 56;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(uint64_t result, unsigned __int8 *a2)
{
  v2 = *a2;
  *result = v2;
  *(result + 8) = 0;
  if (v2 <= 4)
  {
    if (v2 <= 2)
    {
      if (v2 == 1)
      {
        operator new();
      }

      if (v2 == 2)
      {
        operator new();
      }

      return result;
    }

    if (v2 == 3)
    {
      operator new();
    }

    v3 = a2[8];
LABEL_12:
    *(result + 8) = v3;
    return result;
  }

  if (v2 < 8)
  {
    v3 = *(a2 + 1);
    goto LABEL_12;
  }

  if (v2 == 8)
  {
    operator new();
  }

  return result;
}

uint64_t (****nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(uint64_t (****result)(void), unsigned __int8 *a2, unsigned int a3))(void)
{
  v5 = result;
  v6 = *a2;
  if (v6 > 4)
  {
    if (*a2 > 6u)
    {
      if (v6 != 7)
      {
        if (v6 != 8)
        {
          if (v6 != 9)
          {
            return result;
          }

          v7 = (**result)[1];
          goto LABEL_226;
        }

        (**result)[1]();
        v22 = a3 + 4;
        v9 = v5 + 76;
        v23 = *(v5 + 631);
        if ((v23 & 0x80000000) != 0)
        {
          v32 = v5[77];
          if (v32 >= v22)
          {
            v24 = *v5;
LABEL_55:
            v25 = *v9;
            goto LABEL_56;
          }
        }

        else
        {
          if (v22 <= v23)
          {
            v24 = *v5;
            v25 = v5 + 76;
LABEL_56:
            ((*v24)[1])(v24, v25, a3 + 4);
            ((**v5)[1])(*v5, "bytes: [", 10);
            v33 = *(*(a2 + 1) + 8);
            v34 = **(a2 + 1);
            if (v34 != v33)
            {
              for (; v34 != v33 - 1; v33 = *(*(a2 + 1) + 8))
              {
                v35 = *v34++;
                nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(v5, v35);
                ((**v5)[1])(*v5, ", ", 2);
              }

              nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(v5, *(v33 - 1));
            }

            ((**v5)[1])(*v5, "],\n", 3);
            v36 = v5 + 76;
            if (*(v5 + 631) < 0)
            {
              v36 = *v9;
            }

            ((**v5)[1])(*v5, v36, a3 + 4);
            ((**v5)[1])(*v5, "subtype: ", 11);
            v37 = *(a2 + 1);
            if (*(v37 + 25) == 1)
            {
              nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(v5, *(v37 + 24));
            }

            else
            {
              ((**v5)[1])(*v5, "null", 4);
            }

            (***v5)(*v5, 10);
            goto LABEL_81;
          }

          v32 = *(v5 + 631);
        }

        std::string::resize((v5 + 76), 2 * v32, 32);
        v24 = *v5;
        v25 = v5 + 76;
        if ((*(v5 + 631) & 0x80000000) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }

      v20 = *(a2 + 1);
      if ((*&v20 & 0x8000000000000000) != 0)
      {
        v20 = -v20;
        v21 = result + 17;
        *(result + 16) = 45;
      }

      else
      {
        v21 = result + 2;
      }

      if (v20 == 0.0)
      {
        *v21 = 11824;
        v21[2] = 48;
LABEL_225:
        v7 = (**v5)[1];
        goto LABEL_226;
      }

      v27 = *&v20 & 0xFFFFFFFFFFFFFLL;
      if (*&v20 >> 52)
      {
        v31 = (*&v20 >> 52) + 4294966221;
        v28 = 2 * (v27 | 0x10000000000000);
        v29 = (2 * (*&v20 & 0xFFFFFFFFFFFFFLL | 0x10000000000000)) | 1;
        LODWORD(v30) = (*&v20 >> 52) - 1076;
        if (*&v20 >> 53 && !v27)
        {
          v54 = (*&v20 >> 52) - 53;
          v55 = 0x3FFFFFFFFFFFFFLL;
          v27 = 0x10000000000000;
          goto LABEL_115;
        }

        v27 |= 0x10000000000000uLL;
      }

      else
      {
        v28 = 2 * *&v20;
        v29 = (2 * (*&v20 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
        LODWORD(v30) = -1075;
        v31 = 4294966222;
      }

      v55 = v28 - 1;
      v54 = v30;
      do
      {
LABEL_115:
        v56 = v30;
        v29 *= 2;
        v30 = (v30 - 1);
      }

      while ((v29 & 0x8000000000000000) == 0);
      do
      {
        v27 *= 2;
        v31 += 0xFFFFFFFFLL;
      }

      while ((v27 & 0x8000000000000000) == 0);
      v57 = v55 << (v54 - v30);
      if (-60 - v56 <= 0)
      {
        v58 = 78913 * (-60 - v56) / 0x40000;
      }

      else
      {
        v58 = 78913 * (-60 - v56) / 0x40000 + 1;
      }

      v59 = &nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(int)::kCachedPowers + 16 * (((v58 + 307 + (((v58 + 307) >> 28) & 7)) << 16) >> 19);
      v60 = *v59;
      v61 = *(v59 + 3);
      v62 = nlohmann::detail::dtoa_impl::diyfp::mul(v27, v31, *v59);
      v63 = nlohmann::detail::dtoa_impl::diyfp::mul(v57, v30, v60);
      v64 = nlohmann::detail::dtoa_impl::diyfp::mul(v29, v30, v60);
      v65 = -v61;
      v66 = v64 - 1 + ~v63;
      v67 = v64 - 1 - v62;
      v69 = -v68;
      v70 = 1 << -v68;
      v71 = (v64 - 1) >> -v68;
      v72 = (v70 - 1) & (v64 - 1);
      if (v71 <= 0x3B9AC9FF)
      {
        if (v71 <= 0x5F5E0FF)
        {
          if (v71 <= 0x98967F)
          {
            if (v71 <= 0xF423F)
            {
              v78 = v71 >> 5;
              v79 = v71 >> 4;
              if (v71 <= 9)
              {
                v80 = 1;
              }

              else
              {
                v80 = 10;
              }

              if (v71 <= 9)
              {
                v81 = 1;
              }

              else
              {
                v81 = 2;
              }

              if (v71 <= 0x63)
              {
                v82 = v80;
              }

              else
              {
                v82 = 100;
              }

              if (v71 <= 0x63)
              {
                v83 = v81;
              }

              else
              {
                v83 = 3;
              }

              if (v71 <= 0x3E7)
              {
                v84 = v82;
              }

              else
              {
                v84 = 1000;
              }

              if (v71 <= 0x3E7)
              {
                v85 = v83;
              }

              else
              {
                v85 = 4;
              }

              if (v79 <= 0x270)
              {
                v86 = v84;
              }

              else
              {
                v86 = 10000;
              }

              if (v79 <= 0x270)
              {
                v87 = v85;
              }

              else
              {
                v87 = 5;
              }

              v88 = v78 > 0xC34;
              if (v78 > 0xC34)
              {
                v73 = 100000;
              }

              else
              {
                v73 = v86;
              }

              if (v88)
              {
                v74 = 6;
              }

              else
              {
                v74 = v87;
              }
            }

            else
            {
              v73 = 1000000;
              v74 = 7;
            }
          }

          else
          {
            v73 = 10000000;
            v74 = 8;
          }
        }

        else
        {
          v73 = 100000000;
          v74 = 9;
        }
      }

      else
      {
        v73 = 1000000000;
        v74 = 10;
      }

      v89 = 0;
      v90 = ~v62 + v64;
      v91 = v64 - v63 - 2;
      v92 = v62 - v64 + 1;
      v93 = v21;
      v94 = v74;
      while (1)
      {
        v95 = v89;
        if (v89 == v94)
        {
          break;
        }

        v96 = v71 / v73;
        v71 = v71 % v73;
        v97 = v96 + 48;
        ++v89;
        v21[v95] = v96 + 48;
        --v74;
        v98 = (v71 << v69) + v72;
        if (v66 >= v98)
        {
          v65 += v74;
          v99 = v73 << v69;
          v100 = v98 < v67 && v66 - v98 >= v99;
          if (!v100)
          {
            goto LABEL_204;
          }

          v101 = v90 - v98;
          v102 = v72 + (v71 << v69) + v99;
          v103 = v91 - v102;
          do
          {
            if (v102 >= v67 && v101 <= v92 + v102)
            {
              break;
            }

            v21[v95] = --v97;
            if (v102 >= v67)
            {
              break;
            }

            v101 -= v99;
            v102 += v99;
            v100 = v103 >= v99;
            v103 -= v99;
          }

          while (v100);
        }

        else
        {
          v73 /= 0xAu;
        }

        ++v93;
        if (v66 >= v98)
        {
          goto LABEL_204;
        }
      }

      v104 = 0;
      do
      {
        v105 = v67;
        v106 = (10 * v72) >> v69;
        v72 = (v70 - 1) & (10 * v72);
        v107 = v106 + 48;
        *v93++ = v107;
        v66 *= 10;
        v67 *= 10;
        ++v104;
      }

      while (v66 < v72);
      LODWORD(v89) = v89 + v104;
      v65 -= v104;
      v108 = v67 - v72;
      if (v67 > v72 && v66 - v72 >= v70)
      {
        v109 = v70 + v72;
        v110 = v66 - v109;
        do
        {
          if (v109 >= v67 && v108 <= -10 * v105 + v109)
          {
            break;
          }

          v21[v89 - 1] = --v107;
          if (v109 >= v67)
          {
            break;
          }

          v108 -= v70;
          v109 += v70;
          v100 = v110 >= v70;
          v110 -= v70;
        }

        while (v100);
      }

LABEL_204:
      v111 = v65 + v89;
      if (v65 < 0 || v111 > 15)
      {
        if ((v111 - 16) >= 0xFFFFFFF1)
        {
          v112 = &v21[v111];
          memmove(v112 + 1, v112, v89 - v111);
          *v112 = 46;
        }

        else if (v111 != 0 && v111 < 0xFFFFFFFD)
        {
          if (v89 != 1)
          {
            memmove(v21 + 2, v21 + 1, v89 - 1);
            v21[1] = 46;
            v21 += v89;
          }

          v113 = v111 - 1;
          if (v111 >= 1)
          {
            v114 = 43;
          }

          else
          {
            v114 = 45;
          }

          v21[2] = v114;
          v21[1] = 101;
          if (v111 - 1 < 0)
          {
            v113 = 1 - v111;
          }

          if (v113 > 9)
          {
            if (v113 > 0x63)
            {
              v21[3] = v113 / 0x64 + 48;
              v113 += 156 * (v113 / 0x64);
              v116 = v113 / 0xAu;
              v115 = v21 + 5;
              v21[4] = (v113 / 0xAu) | 0x30;
            }

            else
            {
              v115 = v21 + 4;
              v116 = v113 / 0xAu;
              v21[3] = (v113 / 0xAu) | 0x30;
            }

            LOBYTE(v113) = v113 - 10 * v116;
          }

          else
          {
            v115 = v21 + 4;
            v21[3] = 48;
          }

          *v115 = v113 | 0x30;
        }

        else
        {
          memmove(&v21[-v111 + 2], v21, v89);
          *v21 = 11824;
          memset(v21 + 2, 48, -v111);
        }
      }

      else
      {
        memset(&v21[v89], 48, v111 - v89);
        *&v21[v111] = 12334;
      }

      goto LABEL_225;
    }

    if (v6 == 5)
    {
      v12 = *(a2 + 1);
      if (v12)
      {
        v15 = result + 2;
        if ((v12 & 0x8000000000000000) != 0)
        {
          *v15 = 45;
          v12 = -v12;
          v47 = 1;
          if (v12 >= 0xA)
          {
            v48 = v12;
            while (1)
            {
              if (v48 <= 0x63)
              {
                ++v47;
                goto LABEL_139;
              }

              if (v48 <= 0x3E7)
              {
                v47 += 2;
                goto LABEL_139;
              }

              if (v48 >> 4 <= 0x270)
              {
                break;
              }

              v47 += 4;
              v100 = v48 >= 0x186A0;
              v48 /= 0x2710uLL;
              if (!v100)
              {
                goto LABEL_139;
              }
            }

            v47 += 3;
          }
        }

        else
        {
          if (v12 < 0xA)
          {
            goto LABEL_31;
          }

          v47 = 1;
          v53 = *(a2 + 1);
          while (v53 > 0x63)
          {
            if (v53 <= 0x3E7)
            {
              v47 += 2;
              goto LABEL_140;
            }

            if (v53 >> 4 <= 0x270)
            {
              v47 += 3;
              goto LABEL_140;
            }

            v47 += 4;
            v100 = v53 >= 0x186A0;
            v53 /= 0x2710uLL;
            if (!v100)
            {
              goto LABEL_140;
            }
          }
        }

LABEL_139:
        ++v47;
LABEL_140:
        v16 = &v15[v47];
        if (v12 >= 0x64)
        {
          do
          {
            v75 = v12 / 0x64;
            *(v16 - 2) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[v12 % 0x64];
            v16 -= 2;
            v77 = v12 >> 4;
            v12 /= 0x64uLL;
          }

          while (v77 > 0x270);
          goto LABEL_144;
        }

        goto LABEL_143;
      }
    }

    else
    {
      if (v6 != 6)
      {
        return result;
      }

      v12 = *(a2 + 1);
      if (v12)
      {
        if (v12 >= 0xA)
        {
          v13 = 1;
          v14 = *(a2 + 1);
          while (1)
          {
            if (v14 <= 0x63)
            {
              ++v13;
              goto LABEL_129;
            }

            if (v14 <= 0x3E7)
            {
              v13 += 2;
              goto LABEL_129;
            }

            if (v14 >> 4 <= 0x270)
            {
              break;
            }

            v13 += 4;
            v100 = v14 >= 0x186A0;
            v14 /= 0x2710uLL;
            if (!v100)
            {
              goto LABEL_129;
            }
          }

          v13 += 3;
LABEL_129:
          v16 = result + v13 + 16;
          if (v12 >= 0x64)
          {
            do
            {
              v75 = v12 / 0x64;
              *(v16 - 2) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[v12 % 0x64];
              v16 -= 2;
              v76 = v12 >> 4;
              v12 /= 0x64uLL;
            }

            while (v76 > 0x270);
            goto LABEL_144;
          }

LABEL_143:
          v75 = v12;
LABEL_144:
          if (v75 >= 0xA)
          {
            *(v16 - 2) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[v75];
LABEL_148:
            v7 = (**result)[1];
            goto LABEL_226;
          }

          LOBYTE(v12) = v75;
LABEL_147:
          *(v16 - 1) = v12 | 0x30;
          goto LABEL_148;
        }

LABEL_31:
        v16 = result + 17;
        goto LABEL_147;
      }
    }

    v26 = ***result;

    return v26();
  }

  if (*a2 <= 1u)
  {
    if (!*a2)
    {
      v7 = (**result)[1];
      goto LABEL_226;
    }

    v7 = (**result)[1];
    if (!*(*(a2 + 1) + 16))
    {
LABEL_226:

      return v7();
    }

    v7();
    v8 = a3 + 4;
    v9 = v5 + 76;
    v10 = *(v5 + 631);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = v5[77];
      if (v11 < v8)
      {
        goto LABEL_229;
      }
    }

    else if (v8 > v10)
    {
      v11 = *(v5 + 631);
LABEL_229:
      std::string::resize((v5 + 76), 2 * v11, 32);
    }

    v38 = *(a2 + 1);
    v39 = *v38;
    if (v38[2] == 1)
    {
      v40 = *v38;
    }

    else
    {
      v41 = 0;
      do
      {
        v42 = v5 + 76;
        if (*(v5 + 631) < 0)
        {
          v42 = *v9;
        }

        ((**v5)[1])(*v5, v42, a3 + 4);
        (***v5)();
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(v5, v39 + 4);
        ((**v5)[1])(*v5, ": ", 3);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(v5, v39 + 7, a3 + 4);
        ((**v5)[1])(*v5, ",\n", 2);
        v43 = v39[1];
        if (v43)
        {
          do
          {
            v40 = v43;
            v43 = *v43;
          }

          while (v43);
        }

        else
        {
          do
          {
            v40 = v39[2];
            v44 = *v40 == v39;
            v39 = v40;
          }

          while (!v44);
        }

        ++v41;
        v39 = v40;
      }

      while (v41 < *(*(a2 + 1) + 16) - 1);
    }

    v45 = v5 + 76;
    if (*(v5 + 631) < 0)
    {
      v45 = *v9;
    }

    ((**v5)[1])(*v5, v45, a3 + 4);
    (***v5)();
    nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(v5, v40 + 4);
    ((**v5)[1])(*v5, ": ", 3);
    nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(v5, v40 + 7, a3 + 4);
    (***v5)();
LABEL_81:
    v46 = *v5;
    if (*(v5 + 631) < 0)
    {
      v9 = *v9;
    }

    goto LABEL_100;
  }

  switch(v6)
  {
    case 2u:
      v7 = (**result)[1];
      if (**(a2 + 1) != *(*(a2 + 1) + 8))
      {
        v7();
        v17 = a3 + 4;
        v9 = v5 + 76;
        v18 = *(v5 + 631);
        if ((v18 & 0x80000000) != 0)
        {
          v19 = v5[77];
          if (v19 < v17)
          {
            goto LABEL_230;
          }
        }

        else if (v17 > v18)
        {
          v19 = *(v5 + 631);
LABEL_230:
          std::string::resize((v5 + 76), 2 * v19, 32);
        }

        v49 = *(a2 + 1);
        v50 = *v49;
        if (*v49 != v49[1] - 16)
        {
          do
          {
            v51 = v5 + 76;
            if (*(v5 + 631) < 0)
            {
              v51 = *v9;
            }

            ((**v5)[1])(*v5, v51, a3 + 4);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(v5, v50, a3 + 4);
            ((**v5)[1])(*v5, ",\n", 2);
            v50 += 16;
          }

          while (v50 != *(*(a2 + 1) + 8) - 16);
        }

        v52 = v5 + 76;
        if (*(v5 + 631) < 0)
        {
          v52 = *v9;
        }

        ((**v5)[1])(*v5, v52, a3 + 4);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(v5, *(*(a2 + 1) + 8) - 16, a3 + 4);
        (***v5)();
        v46 = *v5;
        if (*(v5 + 631) < 0)
        {
          v9 = *v9;
        }

LABEL_100:
        ((*v46)[1])(v46, v9, a3);
        v7 = ***v5;
LABEL_101:

        return v7();
      }

      goto LABEL_226;
    case 3u:
      (***result)();
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(v5, *(a2 + 1));
      v7 = ***v5;
      goto LABEL_101;
    case 4u:
      v7 = (**result)[1];
      goto LABEL_226;
  }

  return result;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~serializer(uint64_t a1)
{
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(uint64_t result, uint64_t *a2)
{
  v2 = *(a2 + 23);
  v3 = a2[1];
  if ((v2 & 0x80000000) == 0)
  {
    v3 = *(a2 + 23);
  }

  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v2 >> 63;
  v13 = result + 90;
  do
  {
    v14 = *a2;
    if ((v12 & 1) == 0)
    {
      v14 = a2;
    }

    v15 = *(v14 + v7);
    if (v10)
    {
      v11 = v15 & 0x3F | (v11 << 6);
    }

    else
    {
      v11 = (0xFFu >> nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v15]) & v15;
    }

    v10 = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[16 * v10 + 256 + nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v15]];
    if (v10 != 1)
    {
      if (v10)
      {
        *(v13 + v6++) = v15;
        ++v8;
        goto LABEL_42;
      }

      if (v11 <= 11)
      {
        switch(v11)
        {
          case 8:
            v16 = 25180;
            goto LABEL_37;
          case 9:
            v16 = 29788;
            goto LABEL_37;
          case 10:
            v16 = 28252;
            goto LABEL_37;
        }
      }

      else if (v11 > 33)
      {
        if (v11 == 34)
        {
          v16 = 8796;
          goto LABEL_37;
        }

        if (v11 == 92)
        {
          v16 = 23644;
          goto LABEL_37;
        }
      }

      else
      {
        if (v11 == 12)
        {
          v16 = 26204;
          goto LABEL_37;
        }

        if (v11 == 13)
        {
          v16 = 29276;
LABEL_37:
          *(v13 + v6) = v16;
          v9 = v6 + 2;
          goto LABEL_38;
        }
      }

      if (v11 > 0x1F)
      {
        v9 = v6 + 1;
        *(v13 + v6) = v15;
      }

      else
      {
        result = snprintf((v13 + v6), 7uLL, "\\u%04x", v11);
        v9 = v6 + 6;
      }

LABEL_38:
      if ((v9 - 500) <= 0xC)
      {
        v19 = *(**v5 + 8);
LABEL_40:
        result = v19();
        v10 = 0;
        v9 = 0;
        v8 = 0;
        v6 = 0;
        goto LABEL_42;
      }

LABEL_41:
      v10 = 0;
      v8 = 0;
      v6 = v9;
      goto LABEL_42;
    }

    v17 = v5[158];
    if ((v17 - 1) < 2)
    {
      v7 -= v8 != 0;
      if (v17 == 1)
      {
        v18 = v13 + v9;
        v6 = v9 + 3;
        *v18 = -16401;
        *(v18 + 2) = -67;
        if ((v9 - 497) > 0xC)
        {
          v10 = 0;
          v8 = 0;
          v9 += 3;
          goto LABEL_42;
        }

        v19 = *(**v5 + 8);
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    if (!v17)
    {
      v42 = 3;
      *__str = 0;
      snprintf(__str, 3uLL, "%.2X", v15);
      exception = __cxa_allocate_exception(0x20uLL);
      std::to_string(&v35, v7);
      v25 = std::string::insert(&v35, 0, "invalid UTF-8 byte at index ", 0x1CuLL);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v36.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v36.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      v27 = std::string::append(&v36, ": 0x", 4uLL);
      v28 = v27->__r_.__value_.__r.__words[2];
      *&v37.__r_.__value_.__l.__data_ = *&v27->__r_.__value_.__l.__data_;
      v37.__r_.__value_.__r.__words[2] = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      if (v42 >= 0)
      {
        v29 = __str;
      }

      else
      {
        v29 = *__str;
      }

      if (v42 >= 0)
      {
        v30 = v42;
      }

      else
      {
        v30 = v41;
      }

      v31 = std::string::append(&v37, v29, v30);
      v32 = v31->__r_.__value_.__r.__words[2];
      v38 = *&v31->__r_.__value_.__l.__data_;
      v39 = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      nlohmann::detail::type_error::create(exception, 316, &v38);
    }

    v10 = 1;
LABEL_42:
    ++v7;
    v20 = *(a2 + 23);
    v12 = v20 >> 63;
    v21 = a2[1];
    if ((v20 & 0x80000000) == 0)
    {
      v21 = *(a2 + 23);
    }
  }

  while (v7 < v21);
  if (v10)
  {
    v23 = v5[158];
    switch(v23)
    {
      case 1:
        (*(**v5 + 8))(*v5, v13, v9);
        v22 = *(**v5 + 8);
        break;
      case 2:
        v22 = *(**v5 + 8);
        break;
      case 0:
        v42 = 3;
        *__str = 0;
        v33 = *a2;
        if ((v20 & 0x80000000) == 0)
        {
          v33 = a2;
        }

        snprintf(__str, 3uLL, "%.2X", *(v33 + v21 - 1));
        v34 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        nlohmann::detail::type_error::create(v34, 316, &v38);
      default:
        return result;
    }

LABEL_51:

    return v22();
  }

  if (v6)
  {
    v22 = *(**v5 + 8);
    goto LABEL_51;
  }

  return result;
}

void sub_1B2D87898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
    if ((v36 & 1) == 0)
    {
LABEL_6:
      if (*(v37 - 81) < 0)
      {
        operator delete(*(v37 - 104));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v35);
  goto LABEL_6;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(void *a1, unsigned int a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  if (a2 < 0xA)
  {
    v2 = 1;
LABEL_8:
    v5 = a2 | 0x30;
    goto LABEL_9;
  }

  if (a2 >= 0x64)
  {
    *(a1 + 17) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[(a2 - 100 * ((41 * a2) >> 12))];
    v2 = 3;
    a2 = (41 * a2) >> 12;
    goto LABEL_8;
  }

  v4 = &nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[a2];
  *(a1 + 17) = v4[1];
  v5 = *v4;
  v2 = 2;
LABEL_9:
  *(a1 + 16) = v5;
  return (*(**a1 + 8))(*a1, a1 + 2, v2);
}

void nlohmann::detail::type_error::create(uint64_t a1, int a2, uint64_t a3)
{
  std::string::basic_string[abi:nn200100]<0>(&__p, "type_error");
  std::operator+<char>();
  v6 = std::string::append(&v26, ".", 1uLL);
  v7 = v6->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v25, a2);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v25;
  }

  else
  {
    v8 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v27, v8, size);
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v28, "] ", 2uLL);
  v13 = v12->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = *(a3 + 8);
  }

  v17 = std::string::append(&v22, v15, v16);
  v18 = v17->__r_.__value_.__r.__words[2];
  *v23 = *&v17->__r_.__value_.__l.__data_;
  v24 = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (v24 >= 0)
  {
    v19 = v23;
  }

  else
  {
    v19 = v23[0];
  }

  *a1 = &unk_1F2A38610;
  *(a1 + 8) = a2;
  MEMORY[0x1B8C61A50](a1 + 16, v19);
  *a1 = &unk_1F2A38650;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_1B2D87C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  std::exception::~exception(v35);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void nlohmann::detail::type_error::~type_error(std::exception *this)
{
  this->__vftable = &unk_1F2A38610;
  MEMORY[0x1B8C61A60](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F2A38610;
  MEMORY[0x1B8C61A60](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x1B8C62190);
}

void nlohmann::detail::exception::~exception(std::exception *this)
{
  this->__vftable = &unk_1F2A38610;
  MEMORY[0x1B8C61A60](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x1B8C62190);
}

{
  this->__vftable = &unk_1F2A38610;
  MEMORY[0x1B8C61A60](&this[2]);

  std::exception::~exception(this);
}

void std::__shared_ptr_emplace<nlohmann::detail::output_string_adapter<char,std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A010B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

unsigned __int8 *std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    do
    {
      *a3 = *v4;
      *(a3 + 8) = *(v4 + 1);
      *v4 = 0;
      *(v4 + 1) = 0;
      v4 += 16;
      a3 += 16;
    }

    while (v4 != a2);
    v5 = result;
    do
    {
      v6 = *v5;
      v5 += 16;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(result + 8, v6, a3);
      result = v5;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  for (i = *(a1 + 16); i != v5; i = *(a1 + 16))
  {
    v7 = *(i - 16);
    v6 = i - 16;
    *(a1 + 16) = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6 + 8, v7, a3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<unsigned char>::__vallocate[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*(a1 + 1));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a1 + 64, a1[56], v2);
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:nn200100](char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a2 + 64), *(a2 + 56), a3);
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void sub_1B2D88224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va, a2, a3);
  _Unwind_Resume(a1);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    result = v3 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:nn200100](void ***a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = **a1;
  if (v4)
  {
    v6 = v3[1];
    v7 = **a1;
    if (v6 != v4)
    {
      v8 = v6 - 8;
      do
      {
        v9 = (v8 - 8);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v8, *(v8 - 8), a3);
        v8 -= 16;
      }

      while (v9 != v4);
      v7 = **a1;
    }

    v3[1] = v4;

    operator delete(v7);
  }
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v5 = *(a1 + 16) - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(v6);
  }

  v7 = 16 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  *&v18 = 16 * v2 + 16;
  v8 = *(a1 + 8);
  v9 = 16 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(*a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v10;
  *(&v18 + 1) = v11;
  v16 = v10;
  v17 = v10;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v16, v12, v13);
  return v15;
}

void sub_1B2D88428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va, a2, a3);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12EnteringViewEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::EnteringView>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::EnteringView,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53368;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::EnteringView,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::EnteringView,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A53388;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::EnteringView,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::EnteringView,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::EnteringView,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53368;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::EnteringView,64ul>::~storage(a1);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::DetermineIfShouldRun_VLR_Rate>,std::allocator<ecs2::ForwardToExecute<md::DetermineIfShouldRun_VLR_Rate>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, void ***a2)
{
  *(a1 + 8) = a2;
  v3 = *ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(**a2, (*a2)[1]);
  v4 = (*v3)();
  md::LayoutContext::frameState(v4);
  v6 = *(v5 + 632);
  updated = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateProcessedStatusAtFrequencyRate>();
  result = ecs2::UtilityTaskContext::toggleTask(*(*(a1 + 8) + 16), ~updated, v6);
  *(a1 + 8) = 0;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateProcessedStatusAtFrequencyRate>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateProcessedStatusAtFrequencyRate>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[1372];
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::DetermineIfShouldRun_VLR_Rate>,std::allocator<ecs2::ForwardToExecute<md::DetermineIfShouldRun_VLR_Rate>>,void ()(ecs2::Runtime &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29FF2D0;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateProcessedStatusAtFrequencyRate>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateProcessedStatusAtFrequencyRate>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v5[0] = &unk_1F2A19C20;
  v8 = v7;
  v6 = v5;
  v7[0] = &unk_1F2A19C20;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  v5[0] = &unk_1F2A19C68;
  v8 = v7;
  v6 = v5;
  v7[0] = &unk_1F2A19C68;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  v5[0] = &unk_1F2A19CB0;
  v6 = v5;
  v8 = v7;
  v7[0] = &unk_1F2A19CB0;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  v5[0] = &unk_1F2A19D60;
  v8 = v7;
  v6 = v5;
  v7[0] = &unk_1F2A19D60;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  v5[0] = &unk_1F2A19DA8;
  v6 = v5;
  v8 = v7;
  v7[0] = &unk_1F2A19DA8;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  v5[0] = &unk_1F2A19DF0;
  v8 = v7;
  v6 = v5;
  v7[0] = &unk_1F2A19DF0;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  v5[0] = &unk_1F2A19E38;
  v6 = v5;
  v8 = v7;
  v7[0] = &unk_1F2A19E38;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  v5[0] = &unk_1F2A19EE8;
  v8 = v7;
  v6 = v5;
  v7[0] = &unk_1F2A19EE8;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  v5[0] = &unk_1F2A19F98;
  v6 = v5;
  v8 = v7;
  v7[0] = &unk_1F2A19F98;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  v5[0] = &unk_1F2A19FE0;
  v8 = v7;
  v6 = v5;
  v7[0] = &unk_1F2A19FE0;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  result = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  *(a1 + 8) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateProcessedStatusAtFrequencyRate>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateProcessedStatusAtFrequencyRate>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FF120;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

char *ecs2::Runtime::_entities<md::ita::PushRenderItems,md::ls::RenderItemID const&,md::ls::ItemsPrepared const&>(uint64_t a1, uint64_t **a2)
{
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(a1);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(a1);
  v5 = v4;
  if (*(v4 + 40) - *(v4 + 32) >= *(v3 + 40) - *(v3 + 32))
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(v6 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v63, *(v6 + 32), v7, v3, v4);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v62, v7, v7, v3, v5);
  v61 = v65;
  v59 = v63;
  v60 = v64;
  v56 = v63;
  v57 = v64;
  v58 = v65;
  v8 = v63;
  v54 = v62;
  if (v63 == v62)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v11 = 0;
  }

  else
  {
    v52 = *(&v57 + 1);
    v53 = v57;
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v11 = 0;
    v12 = *(&v56 + 1);
    v51 = result;
    do
    {
      v13 = v8[1];
      v14 = v13 & 0x3F;
      v15 = (v13 >> 3) & 0x1FF8;
      v16 = *(*(*(v53 + 8) + v15) + 4 * v14 + 2);
      v17 = (*(*(v53 + 56) + ((v16 >> 3) & 0x1FF8)) + 24 * (v16 & 0x3F));
      v18 = *(*(*(v52 + 8) + v15) + 4 * v14 + 2);
      v19 = v18 & 0x3F;
      v20 = *(*(v52 + 56) + ((v18 >> 3) & 0x1FF8));
      v21 = v10;
      *(v10 + 104 * *result + 24) = *v8;
      v22 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      v23 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a2);
      RenderItem = md::VKMRenderResourcesStore::getRenderItem(v22, *v17, v17[1]);
      v25 = (*(*v23 + 40))(v23, *(v20 + 8 * v19));
      v26 = v25;
      v28 = v25[10];
      v27 = v25[11];
      if (v28 >= v27)
      {
        v30 = v25[9];
        v31 = (v28 - v30) >> 3;
        if ((v31 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v32 = v27 - v30;
        v33 = v32 >> 2;
        if (v32 >> 2 <= (v31 + 1))
        {
          v33 = v31 + 1;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFF8)
        {
          v34 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v34 = v33;
        }

        v65 = v25 + 12;
        if (v34)
        {
          v35 = ggl::zone_mallocator::instance(v25);
          v36 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::RenderItem *>(v35, v34);
        }

        else
        {
          v36 = 0;
        }

        v37 = &v36[8 * v34];
        v38 = &v36[8 * v31];
        *v38 = RenderItem;
        v29 = v38 + 8;
        v39 = v26[9];
        v40 = v26[10] - v39;
        v41 = &v36[8 * v31 - v40];
        memcpy(v41, v39, v40);
        v42 = v26[9];
        v26[9] = v41;
        v26[10] = v29;
        v43 = v26[11];
        v26[11] = v37;
        *&v64 = v42;
        *(&v64 + 1) = v43;
        *&v63 = v42;
        *(&v63 + 1) = v42;
        std::__split_buffer<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator> &>::~__split_buffer(&v63);
      }

      else
      {
        *v28 = RenderItem;
        v29 = v28 + 1;
      }

      v26[10] = v29;
      ++v11;
      v44 = v8 + 2;
      do
      {
        v8 = v44;
        *&v56 = v44;
        if (v44 == v12)
        {
          break;
        }

        v45 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v56, *v44, v44[1]);
        v44 = v8 + 2;
      }

      while (!v45);
      v10 = v21;
      result = v51;
    }

    while (v8 != v54);
  }

  *(v10 + 104 * *result + 24) = -65536;
  v46 = v10 + 104 * *result;
  v47 = *(v46 + 92);
  *(v46 + 92) = v47 + 1;
  *(v46 + 4 * v47 + 28) = v11;
  v48 = v10 + 104 * *result;
  v50 = *(v48 + 92);
  v49 = (v48 + 92);
  if (v50 > 0xF)
  {
    *v49 = 0;
  }

  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PushRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::PushRenderItems>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FEDC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverNightTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverNightTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FEC58;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverAtmosphereTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverAtmosphereTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FEB80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverDiffuseTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverDiffuseTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FEAA8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignDiffuseTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignDiffuseTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FE160;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignGradient2TextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignGradient2TextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FE088;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignGradient1TextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignGradient1TextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FDFB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignTemperatureTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignTemperatureTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FDED8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignAridityTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignAridityTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FDE00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignOverlayTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignOverlayTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FDB78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignEmissiveTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignEmissiveTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FDAA0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignRouteMaskTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignRouteMaskTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FD9C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignOcclusionTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignOcclusionTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FD8F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignTexTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignTexTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FD818;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignShadowTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignShadowTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FD740;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignAmbientTextureIndexFiltered>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignAmbientTextureIndexFiltered>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FD668;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignAmbientTextureIndexAll>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignAmbientTextureIndexAll>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FD590;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleShadowConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleShadowConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FCED0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignRenderTargetSizeConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignRenderTargetSizeConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FCC48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleSSAOConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleSSAOConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FCB70;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleBlendConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleBlendConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FCA98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignGroundAtmosphereConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignGroundAtmosphereConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FC9C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignLightingDebugOptionsConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignLightingDebugOptionsConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FC588;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignLightingConfigurationVertexData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignLightingConfigurationVertexData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FC4B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleSunMatrixData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleSunMatrixData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FC3D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleTransitionToFlatData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleTransitionToFlatData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FC300;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignLightStylizedShadingSettings>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignLightStylizedShadingSettings>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FBD18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignLightSpecularConfiguration>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignLightSpecularConfiguration>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FBC40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void ecs2::Runtime::_entities<md::ita::DetermineIfShouldRender,md::ls::VisibilityGroupTest const&,md::ls::ShouldSkipRender const*,md::ls::DataForCommandBuffer const&>(uint64_t a1, uint64_t **a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::VisibilityGroupTest>(a1);
  ShouldSkip = ecs2::BasicRegistry<void>::storage<md::ls::ShouldSkipRender>(a1);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::DataForCommandBuffer>(a1);
  v6 = v5;
  if (*(v5 + 40) - *(v5 + 32) >= v3[5] - v3[4])
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  v9 = v7[4];
  v8 = v7[5];
  if (v9 != v8)
  {
    v10 = v3[1];
    v11 = v3[2];
    do
    {
      if (ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(v10, v11, v6, *v9, v9[1]))
      {
        break;
      }

      v9 += 2;
    }

    while (v9 != v8);
  }

  if (v9 == v8)
  {
    v12 = _ZTWN4ecs27Runtime11_localStateE();
    v13 = _ZTWN4ecs27Runtime11_stackIndexE();
    v35 = 0;
    goto LABEL_37;
  }

  v12 = _ZTWN4ecs27Runtime11_localStateE();
  v13 = _ZTWN4ecs27Runtime11_stackIndexE();
  v47 = 0;
  v46 = ShouldSkip;
LABEL_10:
  v14 = v9[1];
  v15 = v14 >> 6;
  v16 = v14 & 0x3F;
  v17 = ShouldSkip[1];
  if (v15 >= (ShouldSkip[2] - v17) >> 3)
  {
    goto LABEL_14;
  }

  v18 = *(v17 + 8 * v15);
  if (!v18)
  {
    goto LABEL_15;
  }

  if (*(v18 + 4 * v16) == *v9)
  {
    LOBYTE(v18) = ShouldSkip[4] + 4 * *(v18 + 4 * v16 + 2) != 0;
  }

  else
  {
LABEL_14:
    LOBYTE(v18) = 0;
  }

LABEL_15:
  v19 = *(*(v3[1] + 8 * v15) + 4 * v16 + 2);
  v20 = *(v3[7] + ((v19 >> 3) & 0x1FF8));
  v21 = *(*(*(v6 + 8) + 8 * v15) + 4 * v16 + 2);
  v22 = *(*(v6 + 56) + ((v21 >> 3) & 0x1FF8));
  *(v12 + 104 * *v13 + 24) = *v9;
  if ((v18 & 1) == 0)
  {
    v23 = v20 + 16 * (v19 & 0x3F);
    if (*(v23 + 12) == *(v23 + 8))
    {
      v45 = v22;
      v24 = a2[1];
      if (!v24)
      {
        v25 = **a2;
        v26 = *v25;
        v27 = *(v25 + 8);
        while (1)
        {
          if (v26 == v27)
          {
            goto LABEL_35;
          }

          if (*v26 == 0x22D45F5AAD4BF408)
          {
            break;
          }

          v26 += 5;
        }

        if (v26 == v27)
        {
LABEL_35:
          v24 = 0;
          goto LABEL_25;
        }

        v24 = v26[3];
        v28 = v26[4];
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v28);
        }

LABEL_25:
        a2[1] = v24;
      }

      v29 = (**v24)(v24);
      md::LayoutContext::frameState(v29);
      if (*(v30 + 624) == *(v23 + 8))
      {
        v31 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a2);
        v32 = (*(*v31 + 24))(v31, *(v45 + 24 * (v21 & 0x3F) + 8), *(v45 + 24 * (v21 & 0x3F)), *(v45 + 24 * (v21 & 0x3F) + 16));
        v33 = v32;
        if (v32)
        {
          v34 = ecs2::ExecutionTaskContext::currentEntity(v32);
          v50 = &unk_1F2A3F678;
          *&v51 = v33;
          *(&v51 + 1) = v34;
          v52 = &v50;
          v55 = &v53;
          v53 = &unk_1F2A3F678;
          v54 = v51;
          HIDWORD(v54) = 0;
          v56 = 0;
          ecs2::Runtime::queueCommand();
          if (v56 != -1)
          {
            (off_1F2A3F738[v56])(&v49, &v53);
          }

          v56 = -1;
          std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v50);
        }
      }
    }
  }

  v35 = v47 + 1;
  v36 = v3[1];
  v37 = v3[2];
  v38 = v9 + 2;
  while (v38 != v8)
  {
    v9 = v38;
    v39 = ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(v36, v37, v6, *v38, v38[1]);
    v38 = v9 + 2;
    if (v39)
    {
      ++v47;
      ShouldSkip = v46;
      goto LABEL_10;
    }
  }

LABEL_37:
  *(v12 + 104 * *v13 + 24) = -65536;
  v40 = v12 + 104 * *v13;
  v41 = *(v40 + 92);
  *(v40 + 92) = v41 + 1;
  *(v40 + 4 * v41 + 28) = v35;
  v42 = v12 + 104 * *v13;
  v44 = *(v42 + 92);
  v43 = (v42 + 92);
  if (v44 > 0xF)
  {
    *v43 = 0;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20DataForCommandBufferEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataForCommandBuffer>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataForCommandBuffer>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::DataForCommandBuffer>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
        v18 = *(v17 + 16);
        v19 = *v17;
        v20 = *(v16 + 16);
        *v17 = *v16;
        *(v17 + 16) = v20;
        *v16 = v19;
        *(v16 + 16) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataForCommandBuffer>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataForCommandBuffer>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::DataForCommandBuffer,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FFA0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::DataForCommandBuffer,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::DataForCommandBuffer,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A4FFC0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::DataForCommandBuffer,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::DataForCommandBuffer,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::DataForCommandBuffer,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FFA0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::DataForCommandBuffer,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16ShouldSkipRenderEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShouldSkipRender>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShouldSkipRender>(void)::metadata;
  ShouldSkip = ecs2::BasicRegistry<void>::storage<md::ls::ShouldSkipRender>(v3);
  v6 = ShouldSkip[1];
  if (v2 >> 22 < (ShouldSkip[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = ShouldSkip;
        v9 = ShouldSkip[25];
        v10 = ShouldSkip[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShouldSkipRender>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShouldSkipRender>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ShouldSkipRender,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A35120;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ShouldSkipRender,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A35120;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19VisibilityGroupTestEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupTest>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupTest>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::VisibilityGroupTest>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupTest>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupTest>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupTest,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A500B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupTest,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupTest,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A500D0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupTest,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupTest,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupTest,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A500B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupTest,64ul>::~storage(a1);
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::PendingRenderItemSetup const&,md::ls::RenderItemID &,md::ls::RenderOrderToUse const*,md::ls::InstanceCount const*,md::ls::StencilRefValueToUse const*,md::ls::IndexRange const&,md::ls::HasMeshHandle const&>,std::tuple<>>::containsAll<md::ls::PendingRenderItemSetup const,md::ls::RenderItemID,md::ls::IndexRange const,md::ls::HasMeshHandle const>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[7] + 8), v3 < (*(a1[7] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[8] + 8), v3 < (*(a1[8] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0)
  {
    return *(v11 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13HasMeshHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>(void)::metadata;
  HasMesh = ecs2::BasicRegistry<void>::storage<md::ls::HasMeshHandle>(v3);
  v6 = v2 >> 22;
  v7 = HasMesh[1];
  if (v2 >> 22 < (HasMesh[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = HasMesh;
        v11 = HasMesh[31];
        v12 = HasMesh[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasMeshHandle>();
    *algn_1EB83DA68 = 0xCD844FF303308290;
    qword_1EB83DA70 = "md::ls::HasMeshHandle]";
    qword_1EB83DA78 = 21;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasMeshHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50840;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::HasMeshHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::HasMeshHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50860;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::HasMeshHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::HasMeshHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasMeshHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50840;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::HasMeshHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10IndexRangeEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IndexRange>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IndexRange>();
    unk_1EB83DCC0 = 0x71CBA64B1A9CA230;
    qword_1EB83DCC8 = "md::ls::IndexRange]";
    qword_1EB83DCD0 = 18;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IndexRange,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50F90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::IndexRange,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::IndexRange,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50FB0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::IndexRange,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::IndexRange,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IndexRange,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50F90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::IndexRange,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20StencilRefValueToUseEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StencilRefValueToUse>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StencilRefValueToUse,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A0E020;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::StencilRefValueToUse,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::StencilRefValueToUse,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A0E040;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::StencilRefValueToUse,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::StencilRefValueToUse,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StencilRefValueToUse,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A0E020;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::StencilRefValueToUse,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13InstanceCountEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceCount>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::InstanceCount>();
    *algn_1EB83DA18 = 0xE53EF176130D7769;
    qword_1EB83DA20 = "md::ls::InstanceCount]";
    qword_1EB83DA28 = 21;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::InstanceCount,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51680;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::InstanceCount,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::InstanceCount,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A516A0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::InstanceCount,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::InstanceCount,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::InstanceCount,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51680;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::InstanceCount,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16RenderOrderToUseEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderOrderToUse>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderOrderToUse,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50290;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderOrderToUse,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderOrderToUse,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A502B0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::RenderOrderToUse,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderOrderToUse,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderOrderToUse,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50290;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderOrderToUse,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22PendingRenderItemSetupEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingRenderItemSetup>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingRenderItemSetup>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingRenderItemSetup>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingRenderItemSetup>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingRenderItemSetup,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FE48;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingRenderItemSetup,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FE48;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15ColorDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ColorDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ColorDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50DF0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::ColorDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::ColorDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50E10;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::ColorDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::ColorDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ColorDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50DF0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::ColorDataHandle,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateStyleColorConstantDataHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateStyleColorConstantDataHandle>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FB658;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17FunctionConstantsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
    unk_1EB83D2C0 = 0xC62D89929260CB56;
    qword_1EB83D2C8 = "md::ls::FunctionConstants]";
    qword_1EB83D2D0 = 25;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v12 = v5[31];
        v11 = v5[32];
        if (v12 != v11)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v12 + 24), v2);
            v12 += 32;
          }

          while (v12 != v11);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 70 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 70 * (v13 & 0x3F);
        v18 = *v17;
        v19 = *(v17 + 16);
        v20 = *(v17 + 32);
        v21 = *(v17 + 33);
        v22 = *(v17 + 34);
        v23 = *(v17 + 50);
        v24 = *(v17 + 66);
        v25 = *(v17 + 67);
        v26 = *(v17 + 68);
        if (v17 != v16)
        {
          *v17 = *v16;
          *(v17 + 16) = *(v16 + 16);
          *(v17 + 32) = *(v16 + 32);
          *(v17 + 34) = *(v16 + 34);
          *(v17 + 50) = *(v16 + 50);
          *(v17 + 66) = *(v16 + 66);
        }

        *(v17 + 68) = *(v16 + 68);
        *v16 = v18;
        *(v16 + 16) = v19;
        *(v16 + 32) = v20;
        *(v16 + 33) = v21;
        *(v16 + 34) = v22;
        *(v16 + 50) = v23;
        *(v16 + 66) = v24;
        *(v16 + 67) = v25;
        *(v16 + 68) = v26;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
    unk_1EB83D2C0 = 0xC62D89929260CB56;
    qword_1EB83D2C8 = "md::ls::FunctionConstants]";
    qword_1EB83D2D0 = 25;
  }

  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FunctionConstants,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A501A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FunctionConstants,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FunctionConstants,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A501C0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::FunctionConstants,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FunctionConstants,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FunctionConstants,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A501A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FunctionConstants,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22RequiredPipelinePoolIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiredPipelinePoolID>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiredPipelinePoolID>();
    *algn_1EB83CAD8 = 0xE54E641F7C1F9B89;
    qword_1EB83CAE0 = "md::ls::RequiredPipelinePoolID]";
    qword_1EB83CAE8 = 30;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiredPipelinePoolID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50028;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiredPipelinePoolID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiredPipelinePoolID,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50048;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::RequiredPipelinePoolID,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiredPipelinePoolID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiredPipelinePoolID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50028;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiredPipelinePoolID,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7Flyover12NightTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::NightTexture>>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::NightTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52680;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::NightTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::NightTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A526A0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::NightTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::NightTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::NightTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52680;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::NightTexture>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15FlyoverInstanceEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverInstance>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverInstance>();
    *algn_1EB83D708 = 0x69465F3BE0BF85FBLL;
    qword_1EB83D710 = "md::ls::FlyoverInstance]";
    qword_1EB83D718 = 23;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverInstance,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F730;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverInstance,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F730;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10IsMercatorEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsMercator>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsMercator>();
    *algn_1EB83DC58 = 0x237F9D3BCC905318;
    qword_1EB83DC60 = "md::ls::IsMercator]";
    qword_1EB83DC68 = 18;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsMercator,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FA30;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsMercator,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FA30;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls4IsS2EEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsS2>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsS2>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsS2>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsS2>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsS2>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsS2,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FB90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::IsS2,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::IsS2,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A4FBB0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::IsS2,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::IsS2,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsS2,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FB90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::IsS2,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls7IsDecalEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDecal>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDecal>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsDecal>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDecal>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDecal>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDecal>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDecal>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsDecal>();
    unk_1EB83B920 = 0x76B9BA390004E44ELL;
    qword_1EB83B928 = "md::ls::IsDecal]";
    qword_1EB83B930 = 15;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsDecal,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51750;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsDecal,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51750;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12MainPassItemEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MainPassItem>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MainPassItem>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MainPassItem>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MainPassItem>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MainPassItem>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MainPassItem>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MainPassItem>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MainPassItem>();
    unk_1EB83DAF0 = 0xDB4F0ABC43345F6ALL;
    qword_1EB83DAF8 = "md::ls::MainPassItem]";
    qword_1EB83DB00 = 20;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MainPassItem,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FEB0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MainPassItem,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FEB0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16NeedsRenderStateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsRenderState>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsRenderState>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsRenderState>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsRenderState>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsRenderState>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsRenderState>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsRenderState>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsRenderState>();
    unk_1EB83D580 = 0x1E85A99FD528C623;
    qword_1EB83D588 = "md::ls::NeedsRenderState]";
    qword_1EB83D590 = 24;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsRenderState,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F980;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsRenderState,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F980;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21PredefinedRenderStateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PredefinedRenderState>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PredefinedRenderState>();
    *algn_1EB83CCA8 = 0xCB8AA7FBA6BCD25CLL;
    qword_1EB83CCB0 = "md::ls::PredefinedRenderState]";
    qword_1EB83CCB8 = 29;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PredefinedRenderState,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F8B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PredefinedRenderState,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PredefinedRenderState,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A4F8D0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::PredefinedRenderState,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PredefinedRenderState,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PredefinedRenderState,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F8B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PredefinedRenderState,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19NeedsNewRenderStateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsNewRenderState>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsNewRenderState>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsNewRenderState>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = (*(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) - (v14 & 0x3F) + 8 * (v14 & 0x3F));
        v17 = (*(v15 + ((v13 >> 3) & 0x1FF8)) - (v13 & 0x3F) + 8 * (v13 & 0x3F));
        LODWORD(v19) = *v17;
        *(&v19 + 3) = *(v17 + 3);
        v18 = *(v16 + 3);
        *v17 = *v16;
        *(v17 + 3) = v18;
        *(v16 + 3) = *(&v19 + 3);
        *v16 = v19;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsNewRenderState>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsNewRenderState>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsNewRenderState,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29FAF10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::NeedsNewRenderState,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::NeedsNewRenderState,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29FAF30;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::NeedsNewRenderState,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::NeedsNewRenderState,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsNewRenderState,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29FAF10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::NeedsNewRenderState,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13IsTransparentEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsTransparent>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsTransparent>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsTransparent>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 4 * v18);
        *(v19 + 4 * v18) = *(v17 + 4 * v15);
        *(v17 + 4 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsTransparent>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsTransparent>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsTransparent,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51450;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::IsTransparent,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::IsTransparent,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51470;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::IsTransparent,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::IsTransparent,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsTransparent,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51450;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::IsTransparent,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22IntendedSceneLayerTypeILNS6_10SceneLayerE3EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F520;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F520;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17CustomRenderStateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomRenderState>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomRenderState>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::CustomRenderState>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
        v19 = *v17;
        v18 = *(v17 + 8);
        *v17 = 0;
        *(v17 + 8) = 0;
        v23 = *(v17 + 16);
        v20 = *v16;
        *v16 = 0;
        *(v16 + 8) = 0;
        v21 = *(v17 + 8);
        *v17 = v20;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v21);
        }

        *(v17 + 16) = *(v16 + 16);
        v22 = *(v16 + 8);
        *v16 = v19;
        *(v16 + 8) = v18;
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v22);
          v18 = *(v16 + 8);
        }

        *(v16 + 16) = v23;
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v18);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomRenderState>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomRenderState>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomRenderState>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomRenderState>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CustomRenderState>();
    unk_1EB83D300 = 0xA0C97F52893883B7;
    qword_1EB83D308 = "md::ls::CustomRenderState]";
    qword_1EB83D310 = 25;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CustomRenderState,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F7E0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::CustomRenderState,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::CustomRenderState,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A4F800;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[7];
  v7 = a1[8];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[10];
  if (v8)
  {
    a1[11] = v8;
    operator delete(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    a1[8] = v9;
    operator delete(v9);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::CustomRenderState,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::CustomRenderState,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CustomRenderState,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F7E0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::CustomRenderState,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22IntendedSceneLayerTypeILNS6_10SceneLayerE4EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F5D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F5D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorBlendedWater>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorBlendedWater>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FA9B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorRoutelineMask>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorRoutelineMask>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FA730;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10NeedsZBiasEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsZBias>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsZBias>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsZBias>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsZBias>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsZBias>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsZBias>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsZBias>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsZBias>();
    *algn_1EB83DC18 = 0x499CE17DBD9A1615;
    qword_1EB83DC20 = "md::ls::NeedsZBias]";
    qword_1EB83DC28 = 18;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsZBias,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51520;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsZBias,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51520;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci10TexTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::TexTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::TexTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::TexTexture>>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::TexTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::TexTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::TexTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::TexTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::TexTexture>>();
    *algn_1EB83CE78 = 0x1D932F2BF291491;
    qword_1EB83CE80 = "md::ls::TextureHandleForType<DaVinci::TexTexture>]";
    qword_1EB83CE88 = 49;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::TexTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50EC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::TexTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::TexTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50EE0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::TexTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::TexTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::TexTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50EC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::TexTexture>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorTextureEnabled>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorTextureEnabled>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FA580;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci15EmissiveTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>();
    unk_1EB83CE10 = 0xCE03281732FA0019;
    qword_1EB83CE18 = "md::ls::TextureHandleForType<DaVinci::EmissiveTexture>]";
    qword_1EB83CE20 = 54;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51D90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51DB0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51D90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorEmissiveTextureEnabled>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorEmissiveTextureEnabled>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FA4A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26StyleEmissiveDataKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleEmissiveDataKeyHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleEmissiveDataKeyHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleEmissiveDataKeyHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleEmissiveDataKeyHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleEmissiveDataKeyHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleEmissiveDataKeyHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleEmissiveDataKeyHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleEmissiveDataKeyHandle>();
    unk_1EB83C540 = 0xA50DD2A5BD75DBD6;
    qword_1EB83C548 = "md::ls::StyleEmissiveDataKeyHandle]";
    qword_1EB83C550 = 34;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleEmissiveDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50C50;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::StyleEmissiveDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::StyleEmissiveDataKeyHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50C70;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::StyleEmissiveDataKeyHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::StyleEmissiveDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleEmissiveDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50C50;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::StyleEmissiveDataKeyHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14PreserveHeightEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreserveHeight>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreserveHeight>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PreserveHeight>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreserveHeight>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreserveHeight>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreserveHeight>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreserveHeight>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PreserveHeight>();
    unk_1EB83D820 = 0x98A9F01DBB8BCCCELL;
    qword_1EB83D828 = "md::ls::PreserveHeight]";
    qword_1EB83D830 = 22;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PreserveHeight,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A515D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PreserveHeight,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A515D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

double ecs2::View<void,md::ls::FunctionConstants,md::ls::HasMaterialRasterRenderItem const>::each<md::ls::FunctionConstants&,md::ls::HasMaterialRasterRenderItem const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 40) - *(a3 + 32) >= *(a2 + 40) - *(a2 + 32))
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  v7 = *(v6 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v10, *(v6 + 32), v7, a2, a3);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator((a1 + 40), v7, v7, a2, a3);
  result = *v10;
  v9 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v9;
  *(a1 + 32) = v11;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27HasMaterialRasterRenderItemEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRasterRenderItem>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRasterRenderItem>(void)::metadata;
  HasMaterialRasterRender = ecs2::BasicRegistry<void>::storage<md::ls::HasMaterialRasterRenderItem>(v3);
  v6 = v2 >> 22;
  v7 = HasMaterialRasterRender[1];
  if (v2 >> 22 < (HasMaterialRasterRender[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = HasMaterialRasterRender;
        v11 = HasMaterialRasterRender[31];
        v12 = HasMaterialRasterRender[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRasterRenderItem>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRasterRenderItem>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRasterRenderItem>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRasterRenderItem>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasMaterialRasterRenderItem>();
    unk_1EB83C470 = 0xD5B48B62BD07EF80;
    qword_1EB83C478 = "md::ls::HasMaterialRasterRenderItem]";
    qword_1EB83C480 = 35;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasMaterialRasterRenderItem,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F0A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::HasMaterialRasterRenderItem,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::HasMaterialRasterRenderItem,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A4F0C0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::HasMaterialRasterRenderItem,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::HasMaterialRasterRenderItem,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasMaterialRasterRenderItem,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F0A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::HasMaterialRasterRenderItem,64ul>::~storage(a1);
}

void ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorPlanar,md::ls::FunctionConstants &,md::ls::PlanarParametersCacheKeyHandle const&,md::ls::TriPlanar const*>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v2);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PlanarParametersCacheKeyHandle>(v2);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TriPlanar>(v2);
  if (*(v4 + 40) - *(v4 + 32) >= v3[5] - v3[4])
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6[4];
  v8 = v6[5];
  if (v7 != v8)
  {
    v9 = v3[1];
    v10 = v3[2];
    do
    {
      if (ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(v9, v10, v4, *v7, v7[1]))
      {
        break;
      }

      v7 += 2;
    }

    while (v7 != v8);
  }

  if (v7 == v8)
  {
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
    goto LABEL_22;
  }

  v35 = a1;
  v11 = _ZTWN4ecs27Runtime11_localStateE();
  v12 = _ZTWN4ecs27Runtime11_stackIndexE();
  v13 = 0;
  v34 = v5;
LABEL_10:
  v14 = v7[1];
  v15 = v14 >> 6;
  v16 = v14 & 0x3F;
  v17 = v5[1];
  if (v15 >= (v5[2] - v17) >> 3)
  {
    goto LABEL_14;
  }

  v18 = *(v17 + 8 * v15);
  if (!v18)
  {
    goto LABEL_15;
  }

  if (*(v18 + 4 * v16) == *v7)
  {
    LOBYTE(v18) = v5[4] + 4 * *(v18 + 4 * v16 + 2) != 0;
  }

  else
  {
LABEL_14:
    LOBYTE(v18) = 0;
  }

LABEL_15:
  v19 = *(*(v3[1] + 8 * v15) + 4 * v16 + 2);
  v20 = *(v3[7] + ((v19 >> 3) & 0x1FF8)) + 70 * (v19 & 0x3F);
  v22 = *v7;
  v21 = v7 + 2;
  *(v11 + 104 * *v12 + 24) = v22;
  *(v20 + 2) = 1;
  *(v20 + 3) = v18;
  ++v13;
  v23 = v3[1];
  v24 = v3[2];
  while (v21 != v8)
  {
    v25 = v21;
    v26 = v21[1];
    v27 = *v21;
    v21 += 2;
    if (ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(v23, v24, v4, v27, v26))
    {
      v7 = v25;
      v5 = v34;
      goto LABEL_10;
    }
  }

  v28 = *(v35 + 8);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
    unk_1EB83D2C0 = 0xC62D89929260CB56;
    qword_1EB83D2C8 = "md::ls::FunctionConstants]";
    qword_1EB83D2D0 = 25;
  }

  *(v28 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v28 + 4096);
LABEL_22:
  *(v11 + 104 * *v12 + 24) = -65536;
  v29 = v11 + 104 * *v12;
  v30 = *(v29 + 92);
  *(v29 + 92) = v30 + 1;
  *(v29 + 4 * v30 + 28) = v13;
  v31 = v11 + 104 * *v12;
  v33 = *(v31 + 92);
  v32 = (v31 + 92);
  if (v33 >= 0x10)
  {
    *v32 = 0;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PlanarParametersCacheKeyHandle>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TriPlanar>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TriPlanar>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TriPlanar>(void)::localId;
    unk_1EB82B360 = 0x1223E23132DA4D6ALL;
    qword_1EB82B368 = "md::ls::TriPlanar]";
    qword_1EB82B370 = 17;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls9TriPlanarEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TriPlanar>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls9TriPlanarEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A518F0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TriPlanar,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A518D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TriPlanar,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A518D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PlanarParametersCacheKeyHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PlanarParametersCacheKeyHandle>(void)::localId;
    unk_1EB82B3D0 = 0xD02B5FD100F36AA2;
    qword_1EB82B3D8 = "md::ls::PlanarParametersCacheKeyHandle]";
    qword_1EB82B3E0 = 38;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls30PlanarParametersCacheKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PlanarParametersCacheKeyHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls30PlanarParametersCacheKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A51C30;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PlanarParametersCacheKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51BF0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PlanarParametersCacheKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PlanarParametersCacheKeyHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51C10;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::PlanarParametersCacheKeyHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PlanarParametersCacheKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PlanarParametersCacheKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51BF0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PlanarParametersCacheKeyHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls30IntendedStandardPassSceneDepthEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassSceneDepth>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassSceneDepth>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedStandardPassSceneDepth>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassSceneDepth>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassSceneDepth>(void)::metadata) = *(v3 + 4096);
}