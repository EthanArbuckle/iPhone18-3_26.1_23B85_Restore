uint64_t std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  v8 = a1;
  v9 = a2 - a1;
  v10 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 > a2 - a1)
  {
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v27 = v10 >> 1;
        v10 -= v10 >> 1;
        *__c = HIDWORD(a5);
        v11 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v27, SHIDWORD(a5));
        v12 = *(v11 + 32);
        if (!v12)
        {
          goto LABEL_41;
        }

        goto LABEL_31;
      }
    }

    else if ((a4 & 7) != 0)
    {
      *__c = HIDWORD(a5);
      v11 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, 0, SHIDWORD(a5));
      v12 = *(v11 + 32);
      if (!v12)
      {
        goto LABEL_41;
      }

      goto LABEL_31;
    }

    v10 = 0;
    *__c = HIDWORD(a5);
    v11 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, (a4 >> 32) - (a2 - a1), SHIDWORD(a5));
    v12 = *(v11 + 32);
    if (!v12)
    {
LABEL_41:
      v32 = *(v11 + 16);
      do
      {
        v33 = *(v11 + 8) - v32;
        if (v33 < v9 + 1)
        {
          (*(v11 + 24))(v11, v9 + 2);
          v32 = *(v11 + 16);
          v33 = *(v11 + 8) - v32;
        }

        if (v33 >= v9)
        {
          v34 = v9;
        }

        else
        {
          v34 = v33;
        }

        if (v34)
        {
          v35 = (*v11 + v32);
          v36 = v34;
          v37 = v8;
          do
          {
            v38 = *v37++;
            *v35++ = a6(v38);
            --v36;
          }

          while (v36);
          v32 = *(v11 + 16);
        }

        v8 += v34;
        v32 += v34;
        *(v11 + 16) = v32;
        v20 = v9 > v33;
        v9 -= v34;
      }

      while (v20);
LABEL_38:

      return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, v10, __c[0]);
    }

LABEL_31:
    v29 = *v12;
    v28 = v12[1];
    v30 = v28 + v9;
    if (*v12 - v28 < v9)
    {
      v9 = *v12 - v28;
    }

    v12[1] = v30;
    if (v29 <= v28 || v9 == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_41;
  }

  v13 = *(a3 + 32);
  if (!v13)
  {
    goto LABEL_15;
  }

  v15 = *v13;
  v14 = v13[1];
  v16 = v14 + v9;
  if (*v13 - v14 < v9)
  {
    v9 = *v13 - v14;
  }

  v13[1] = v16;
  if (v15 > v14 && v9 != 0)
  {
LABEL_15:
    v19 = *(a3 + 16);
    do
    {
      v21 = *(a3 + 8) - v19;
      if (v21 < v9 + 1)
      {
        (*(a3 + 24))(a3, v9 + 2);
        v19 = *(a3 + 16);
        v21 = *(a3 + 8) - v19;
      }

      if (v21 >= v9)
      {
        v22 = v9;
      }

      else
      {
        v22 = v21;
      }

      if (v22)
      {
        v23 = (*a3 + v19);
        v24 = v22;
        v25 = v8;
        do
        {
          v26 = *v25++;
          *v23++ = a6(v26);
          --v24;
        }

        while (v24);
        v19 = *(a3 + 16);
      }

      v8 += v22;
      v19 += v22;
      *(a3 + 16) = v19;
      v20 = v9 > v21;
      v9 -= v22;
    }

    while (v20);
  }

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

char *std::__to_chars_integral[abi:ne200100]<unsigned int>(_WORD *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = a2;
  HIDWORD(v6) = a4 - 2;
  LODWORD(v6) = a4 - 2;
  v5 = v6 >> 1;
  if (v5 != 4)
  {
    if (!v5)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
    }

    if (v5 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
    }

    if (v5 != 7)
    {
      v10 = a2 - a1;
      v11 = std::__to_chars_integral_width[abi:ne200100]<unsigned int>(a3, a4);
      if (v10 < v11)
      {
        return a2;
      }

      v4 = a1 + v11;
      v12 = v4 - 1;
      v13 = a3;
      do
      {
        *v12-- = a0123456789abcd[v13 % a4];
        v14 = v13 >= a4;
        v13 /= a4;
      }

      while (v14);
      return v4;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
  }

  if (a2 - a1 > 9)
  {
    return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
  }

  v7 = (1233 * (32 - __clz(a3 | 1))) >> 12;
  if (a2 - a1 >= (((__PAIR64__(v7, a3) - std::__itoa::__pow10_32[v7]) >> 32) + 1))
  {
    return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
  }

  return v4;
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

_WORD *std::__itoa::__base_10_u32[abi:ne200100](_WORD *a1, unsigned int a2)
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
        return a1 + 5;
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
        return (a1 + 9);
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
        return a1 + 4;
      }

      else
      {
        *a1 = v3 + 48;
        v4 = (429497 * (a2 % 0xF4240)) >> 32;
        *(a1 + 1) = std::__itoa::__digits_base_10[v4];
        v5 = a2 % 0xF4240 - 10000 * v4;
        *(a1 + 3) = std::__itoa::__digits_base_10[v5 / 0x64u];
        *(a1 + 5) = std::__itoa::__digits_base_10[v5 % 0x64u];
        return (a1 + 7);
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
      return a1 + 3;
    }

    else
    {
      *a1 = v6 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[(5243 * (a2 % 0x2710)) >> 19];
      *(a1 + 3) = std::__itoa::__digits_base_10[(a2 % 0x2710 - 100 * (((5243 * (a2 % 0x2710)) >> 16) >> 3))];
      return (a1 + 5);
    }
  }

  else if (a2 > 0x63)
  {
    v10 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = std::__itoa::__digits_base_10[v10];
      a1[1] = std::__itoa::__digits_base_10[a2 % 0x64u];
      return a1 + 2;
    }

    else
    {
      *a1 = v10 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x64u];
      return (a1 + 3);
    }
  }

  else if (a2 > 9)
  {
    *a1 = std::__itoa::__digits_base_10[a2];
    return a1 + 1;
  }

  else
  {
    *a1 = a2 | 0x30;
    return (a1 + 1);
  }
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 32 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x11)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 4;
      *(v6 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v6 -= 4;
      v8 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v8);
  }

  v9 = (v6 - 1);
  do
  {
    *v9-- = a01[v7 & 1];
    v8 = v7 > 1;
    v7 >>= 1;
  }

  while (v8);
  return v5;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (86 * (34 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x41)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 6;
      *(v6 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v6 -= 2;
      a3 = v7;
    }

    while (v7 > 0x40);
  }

  v8 = (v6 - 1);
  do
  {
    *v8-- = a01234567[v7 & 7];
    v9 = v7 > 7;
    v7 >>= 3;
  }

  while (v9);
  return v5;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (35 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x101)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 8;
      *(v6 - 2) = std::__itoa::__base_16_lut[a3];
      v6 -= 2;
      a3 = v7;
    }

    while (v7 > 0x100);
  }

  v8 = (v6 - 1);
  do
  {
    *v8-- = a0123456789abcd_0[v7 & 0xF];
    v9 = v7 > 0xF;
    v7 >>= 4;
  }

  while (v9);
  return v5;
}

uint64_t std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<char>(uint64_t a1, unsigned __int8 a2)
{
  v16 = 0;
  v17 = -1;
  v18 = 32;
  v19 = 0;
  v20 = 0;
  if ((**(a1 + 16) & 1) == 0)
  {
    v7 = *(a1 + 8);
    goto LABEL_14;
  }

  v4 = *a1;
  v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v16, *a1, 311);
  v6 = BYTE1(v16);
  if (BYTE1(v16) - 2 >= 6)
  {
    if (BYTE1(v16) > 0x13u || ((1 << SBYTE1(v16)) & 0x80401) == 0)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a character");
    }

    v9 = v5;
    std::__format_spec::__parser<char>::__validate[abi:ne200100](&v16, 48, "a character", -1);
    if ((v16 & 7) == 0)
    {
      LOBYTE(v16) = v16 | 1;
    }

    v6 = BYTE1(v16);
    *v4 = v9;
    v7 = *(a1 + 8);
    if (v6 == 10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *v4 = v5;
    v7 = *(a1 + 8);
    if (v6 == 10)
    {
      goto LABEL_14;
    }
  }

  if (!v6)
  {
LABEL_14:
    v10 = *v7;
    v11 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v16, v7);
    __src = a2;
    result = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, v10, v11, v12, 1);
    *v7 = result;
    return result;
  }

  v14 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v16, v7);
  result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, v7, v14, v15, 0);
  *v7 = result;
  return result;
}

uint64_t std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<int>(uint64_t a1, int a2)
{
  v14 = 0;
  v15 = -1;
  v16 = 32;
  v17 = 0;
  v18 = 0;
  if (**(a1 + 16) == 1)
  {
    v4 = *a1;
    v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v14, *a1, 311);
    if (BYTE1(v14) - 2 >= 6 && BYTE1(v14) != 0)
    {
      if (BYTE1(v14) != 10)
      {
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("an integer");
      }

      v13 = v5;
      std::__format_spec::__parser<char>::__validate[abi:ne200100](&v14, 48, "an integer", -1);
      v5 = v13;
      if ((v14 & 7) == 0)
      {
        LOBYTE(v14) = v14 | 1;
      }
    }

    *v4 = v5;
  }

  v7 = *(a1 + 8);
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v14, v7);
  if ((v9 & 0xFF00) == 0xA00)
  {
    if (a2 != a2)
    {
      std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
    }

    v10 = *v7;
    __src = a2;
    result = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, v10, v9, v8, 1);
    *v7 = result;
  }

  else
  {
    if (a2 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = -a2;
    }

    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v12, v7, v9, v8, a2 < 0);
    *v7 = result;
  }

  return result;
}

uint64_t std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<long long>(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = -1;
  v16 = 32;
  v17 = 0;
  v18 = 0;
  if (**(a1 + 16) == 1)
  {
    v4 = *a1;
    v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v14, *a1, 311);
    if (BYTE1(v14) - 2 >= 6 && BYTE1(v14) != 0)
    {
      if (BYTE1(v14) != 10)
      {
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("an integer");
      }

      v13 = v5;
      std::__format_spec::__parser<char>::__validate[abi:ne200100](&v14, 48, "an integer", -1);
      v5 = v13;
      if ((v14 & 7) == 0)
      {
        LOBYTE(v14) = v14 | 1;
      }
    }

    *v4 = v5;
  }

  v7 = *(a1 + 8);
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v14, v7);
  if ((v9 & 0xFF00) == 0xA00)
  {
    if (a2 != a2)
    {
      std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
    }

    v10 = *v7;
    __src = a2;
    result = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, v10, v9, v8, 1);
    *v7 = result;
  }

  else
  {
    if (a2 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = -a2;
    }

    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v12, v7, v9, v8, a2 < 0);
    *v7 = result;
  }

  return result;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  *&v16[5] = *MEMORY[0x29EDCA608];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    *&v15[15] = -1431655766;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v7;
    *v15 = v7;
    *v13 = v7;
    *&v13[16] = v7;
    v12 = 2;
    if (BYTE1(a3) == 2)
    {
      v8 = "0b";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v8 = "0B";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v10 = v16;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v9, a4, a5, v13, v10, v8, v12);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    memset(v13, 170, 19);
    v12 = 16;
    if (BYTE1(a3) == 6)
    {
      v8 = "0x";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v8 = "0X";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v10 = &v13[19];
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    memset(v13, 170, 21);
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v13, &v13[21], 0, 10);
    goto LABEL_19;
  }

  *&v13[8] = 0xAAAAAAAAAAAAAAAALL;
  *&v13[16] = 0xAAAAAAAAAAAAAAAALL;
  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  *v13 = 0xAAAAAAAAAAAAAAAALL;
  result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v13, &v13[24], v5, 8);
LABEL_19:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
{
  v9 = a6;
  v10 = a3;
  v12 = a3;
  if (a5)
  {
    v13 = 45;
LABEL_7:
    *a6 = v13;
    v15 = a6 + 1;
    goto LABEL_8;
  }

  v14 = (a3 >> 3) & 3;
  if (v14 == 2)
  {
    v13 = 43;
    goto LABEL_7;
  }

  v15 = a6;
  if (v14 == 3)
  {
    v13 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v16 = *a8;
      if (*a8)
      {
        v17 = a8 + 1;
        do
        {
          *v15 = v16;
          v15 = (v15 + 1);
          v18 = *v17++;
          v16 = v18;
        }

        while (v18);
      }
    }
  }

  v19 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v15, a7, a1, a9);
  v87 = v10;
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_67;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x29C27AC20](v93);
    v20 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v20, v93);
    }

    else
    {
      std::locale::locale(v20, v93);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(v93);
  }

  std::locale::locale(&v90, (a2 + 32));
  v21 = std::locale::use_facet(&v90, MEMORY[0x29EDC93F8]);
  v22 = v19 - v15;
  std::locale::~locale(&v90);
  memset(v93, 170, sizeof(v93));
  (v21->__vftable[1].__on_zero_shared)(v93, v21);
  if ((SHIBYTE(v93[2].__locale_) & 0x8000000000000000) != 0)
  {
    locale = v93[0].__locale_;
    v24 = v93[1].__locale_;
    if (v93[1].__locale_ && v22 > *v93[0].__locale_)
    {
      v86 = v21;
      v25 = v93[0].__locale_;
      goto LABEL_26;
    }

    operator delete(v93[0].__locale_);
LABEL_67:
    v47 = v19;
    v48 = HIDWORD(v10);
    v49 = *a2;
    if ((v12 & 7) == 4)
    {
      v50 = v15 - v9;
      v51 = *(v49 + 32);
      v52 = v15 - v9;
      if (!v51 || ((v54 = *v51, v53 = v51[1], *v51 - v53 >= v50) ? (v52 = v15 - v9) : (v52 = *v51 - v53), (v51[1] = v53 + v50, v54 > v53) ? (v55 = v52 == 0) : (v55 = 1), !v55))
      {
        v63 = *(v49 + 16);
        do
        {
          v65 = *(v49 + 8) - v63;
          if (v65 < v52 + 1)
          {
            (*(v49 + 24))(v49, v52 + 2);
            v63 = *(v49 + 16);
            v65 = *(v49 + 8) - v63;
          }

          if (v65 >= v52)
          {
            v66 = v52;
          }

          else
          {
            v66 = v65;
          }

          if (v66)
          {
            memmove((*v49 + v63), v9, v66);
            v63 = *(v49 + 16);
          }

          v63 += v66;
          *(v49 + 16) = v63;
          v9 += v66;
          v64 = v52 > v65;
          v52 -= v66;
        }

        while (v64);
      }

      LODWORD(v10) = v87;
      v56 = a4;
      v57 = v87 & 0xF8 | 3;
      if (v48 >= v50)
      {
        v58 = v50;
      }

      else
      {
        v58 = v48;
      }

      v48 = (v48 - v58);
      v49 = *a2;
      v59 = 48;
    }

    else
    {
      v56 = a4;
      v59 = BYTE4(a4);
      v57 = v10;
      v15 = v9;
    }

    v60 = v48 << 32;
    v61 = v56 & 0xFFFFFF00FFFFFFFFLL | (v59 << 32);
    if ((v10 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v15, v47, v49, v10 & 0xFFFF0700 | v60 | v57, v61, std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v15, v47 - v15, v49, v60 | v10 & 0xFFFFFF00 | v57, v61, v47 - v15);
    }
  }

  if (!HIBYTE(v93[2].__locale_) || v22 <= SLOBYTE(v93[0].__locale_))
  {
    goto LABEL_67;
  }

  v86 = v21;
  locale = v93;
  v25 = v93[0].__locale_;
  v24 = v93[1].__locale_;
LABEL_26:
  v85 = *a2;
  v90.__locale_ = 0;
  v91 = 0;
  v92 = 0;
  v26 = v24 + v25;
  if (SHIBYTE(v93[2].__locale_) >= 0)
  {
    v27 = v93 + SHIBYTE(v93[2].__locale_);
  }

  else
  {
    v27 = v26;
  }

  v28 = *locale;
  v29 = *locale;
  v30 = v22 - v28;
  if (v22 <= v28)
  {
    v68 = 0;
    v67 = v29 + v30;
    v69 = v86;
    goto LABEL_99;
  }

  v84 = v19;
  v31 = v27 - 1;
  do
  {
    while (1)
    {
      v32 = HIBYTE(v92);
      if ((SHIBYTE(v92) & 0x80000000) == 0)
      {
        break;
      }

      v34 = (v92 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v91 != v34)
      {
        v40 = v90.__locale_;
        v34 = v91;
        goto LABEL_56;
      }

      if ((v92 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v33 = v90.__locale_;
      v89 = locale;
      if (v34 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_38;
      }

      v38 = 0;
      v37 = 0x7FFFFFFFFFFFFFF7;
LABEL_48:
      v39 = operator new(v37);
      v40 = v39;
      if (v34)
      {
        memmove(v39, v33, v34);
      }

      if (!v38)
      {
        operator delete(v33);
      }

      v90.__locale_ = v40;
      v92 = v37 | 0x8000000000000000;
      locale = v89;
LABEL_56:
      v91 = v34 + 1;
      v42 = v40 + v34;
      *v42 = v29;
      v42[1] = 0;
      if (locale != v31)
      {
        goto LABEL_57;
      }

LABEL_31:
      v29 = *locale;
      v30 -= *locale;
      if (v30 <= 0)
      {
        goto LABEL_95;
      }
    }

    if (HIBYTE(v92) == 22)
    {
      v89 = locale;
      v33 = &v90;
      v34 = 22;
LABEL_38:
      if (v34 + 1 > 2 * v34)
      {
        v35 = v34 + 1;
      }

      else
      {
        v35 = 2 * v34;
      }

      if ((v35 | 7) == 0x17)
      {
        v36 = 25;
      }

      else
      {
        v36 = (v35 | 7) + 1;
      }

      if (v35 >= 0x17)
      {
        v37 = v36;
      }

      else
      {
        v37 = 23;
      }

      v38 = v34 == 22;
      goto LABEL_48;
    }

    HIBYTE(v92) = (HIBYTE(v92) + 1) & 0x7F;
    v41 = &v90 + v32;
    *v41 = v29;
    v41[1] = 0;
    if (locale == v31)
    {
      goto LABEL_31;
    }

LABEL_57:
    v43 = (locale + 1);
    v44 = (locale + 1);
    do
    {
      v45 = *v44++;
      v29 = v45;
      if (v45)
      {
        v46 = 1;
      }

      else
      {
        v46 = v43 == v31;
      }

      v43 = v44;
    }

    while (!v46);
    locale = (v44 - 1);
    v30 -= v29;
  }

  while (v30 > 0);
LABEL_95:
  v67 = v29 + v30;
  if (SHIBYTE(v92) < 0)
  {
    v72 = (v92 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    LODWORD(v19) = v84;
    v69 = v86;
    if (v91 == v72)
    {
      if ((v92 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v71 = v90.__locale_;
      v70 = v86;
      if (v72 >= 0x3FFFFFFFFFFFFFF3)
      {
        v77 = 0;
        v76 = 0x7FFFFFFFFFFFFFF7;
      }

      else
      {
LABEL_103:
        if (v72 + 1 > 2 * v72)
        {
          v74 = v72 + 1;
        }

        else
        {
          v74 = 2 * v72;
        }

        if ((v74 | 7) == 0x17)
        {
          v75 = 25;
        }

        else
        {
          v75 = (v74 | 7) + 1;
        }

        if (v74 >= 0x17)
        {
          v76 = v75;
        }

        else
        {
          v76 = 23;
        }

        v77 = v72 == 22;
      }

      v78 = v76;
      v79 = operator new(v76);
      v73 = v79;
      if (v72)
      {
        memmove(v79, v71, v72);
      }

      if (!v77)
      {
        operator delete(v71);
      }

      v90.__locale_ = v73;
      v92 = v78 | 0x8000000000000000;
      v69 = v70;
    }

    else
    {
      v73 = v90.__locale_;
      v72 = v91;
    }

    v91 = v72 + 1;
  }

  else
  {
    v68 = HIBYTE(v92);
    LODWORD(v19) = v84;
    v69 = v86;
    if (HIBYTE(v92) == 22)
    {
      v70 = v86;
      v71 = &v90;
      v72 = 22;
      goto LABEL_103;
    }

LABEL_99:
    v72 = v68;
    HIBYTE(v92) = (v68 + 1) & 0x7F;
    v73 = &v90;
  }

  v80 = v73 + v72;
  *v80 = v67;
  v80[1] = 0;
  v81 = (v69->__vftable[1].~facet_0)(v69);
  result = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v85, v9, v15, v19, &v90, v81, v87, a4);
  if (SHIBYTE(v92) < 0)
  {
    v82 = result;
    operator delete(v90.__locale_);
    result = v82;
  }

  if (SHIBYTE(v93[2].__locale_) < 0)
  {
    v83 = result;
    operator delete(v93[0].__locale_);
    return v83;
  }

  return result;
}

void sub_297A70A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

_WORD *std::__to_chars_integral[abi:ne200100]<unsigned long long>(_WORD *a1, uint64_t a2, unint64_t a3, signed int a4)
{
  v4 = a2;
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
      v21 = a3;
      v13 = a1;
      v14 = a2 - a1;
      v16 = std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(a3, a4);
      if (v14 < v16)
      {
        return a2;
      }

      v4 = v13 + v16;
      v17 = (v4 - 1);
      v18 = v21;
      do
      {
        *v17-- = a0123456789abcd[(v18 % a4)];
        v19 = v18 >= a4;
        v18 /= a4;
      }

      while (v19);
      return v4;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
  }

  if (a2 - a1 > 19 || (v7 = (1233 * (64 - __clz(a3 | 1))) >> 12, a2 - a1 >= v7 - (std::__itoa::__pow10_64[v7] > a3) + 1))
  {
    if (HIDWORD(a3))
    {
      if (a3 > 0x2540BE3FFLL)
      {
        v8 = a3 / 0x2540BE400;
        v9 = a3;
        a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
        a3 = v9 - 10000000000 * v8;
      }

      *a1 = std::__itoa::__digits_base_10[a3 / 0x5F5E100];
      a1[1] = std::__itoa::__digits_base_10[a3 % 0x5F5E100 / 0xF4240];
      v10 = a3 % 0x5F5E100 % 0xF4240;
      a1[2] = std::__itoa::__digits_base_10[v10 / 0x2710uLL];
      v10 %= 0x2710u;
      a1[3] = std::__itoa::__digits_base_10[v10 / 0x64u];
      a1[4] = std::__itoa::__digits_base_10[v10 % 0x64u];
      return a1 + 5;
    }

    else
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }
  }

  return v4;
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

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 64 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x11)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 4;
      *(v6 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v6 -= 4;
      v8 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v8);
  }

  v9 = (v6 - 1);
  do
  {
    *v9-- = a01[v7 & 1];
    v8 = v7 > 1;
    v7 >>= 1;
  }

  while (v8);
  return v5;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (86 * (66 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x41)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 6;
      *(v6 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v6 -= 2;
      a3 = v7;
    }

    while (v7 > 0x40);
  }

  v8 = (v6 - 1);
  do
  {
    *v8-- = a01234567[v7 & 7];
    v9 = v7 > 7;
    v7 >>= 3;
  }

  while (v9);
  return v5;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (67 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x101)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 8;
      *(v6 - 2) = std::__itoa::__base_16_lut[a3];
      v6 -= 2;
      a3 = v7;
    }

    while (v7 > 0x100);
  }

  v8 = (v6 - 1);
  do
  {
    *v8-- = a0123456789abcd_0[v7 & 0xF];
    v9 = v7 > 0xF;
    v7 >>= 4;
  }

  while (v9);
  return v5;
}

uint64_t std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<__int128>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = -1;
  v17 = 32;
  v18 = 0;
  v19 = 0;
  if (**(a1 + 16) == 1)
  {
    v6 = *a1;
    v7 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v15, *a1, 311);
    if (BYTE1(v15) - 2 >= 6 && BYTE1(v15) != 0)
    {
      if (BYTE1(v15) != 10)
      {
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("an integer");
      }

      v14 = v7;
      std::__format_spec::__parser<char>::__validate[abi:ne200100](&v15, 48, "an integer", -1);
      v7 = v14;
      if ((v15 & 7) == 0)
      {
        LOBYTE(v15) = v15 | 1;
      }
    }

    *v6 = v7;
  }

  v9 = *(a1 + 8);
  v11 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v15, v9);
  if ((v11 & 0xFF00) == 0xA00)
  {
    if (__PAIR128__(-1, -257) >= __PAIR128__((a2 >= 0x80) + a3 - 1, a2 - 128))
    {
      std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
    }

    v12 = *v9;
    __src = a2;
    result = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, v12, v11, v10, 1);
  }

  else
  {
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>((a2 ^ (a3 >> 63)) - (a3 >> 63), (__PAIR128__(a3 ^ (a3 >> 63), a2 ^ (a3 >> 63)) - __PAIR128__(a3 >> 63, a3 >> 63)) >> 64, v9, v11, v10, a3 < 0);
  }

  *v9 = result;
  return result;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  *&v24[5] = *MEMORY[0x29EDCA608];
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      goto LABEL_11;
    }

    *&v23[15] = -1431655766;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22 = v9;
    *v23 = v9;
    v20 = v9;
    v21 = v9;
    *&v18[16] = v9;
    v19 = v9;
    v17 = v9;
    *v18 = v9;
    v16 = 2;
    if (BYTE1(a4) == 2)
    {
      v15 = "0b";
      v10 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v15 = "0B";
      v10 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v13 = v24;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v10, a5, a6, &v17, v13, v15, v16);
    goto LABEL_19;
  }

  if (BYTE1(a4) > 5u)
  {
    *&v18[15] = -1431655766;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v17 = v12;
    *v18 = v12;
    v16 = 16;
    if (BYTE1(a4) == 6)
    {
      v15 = "0x";
      v10 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v15 = "0X";
      v10 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v13 = &v18[19];
    goto LABEL_18;
  }

  if (BYTE1(a4) != 4)
  {
LABEL_11:
    *&v18[16] = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v17 = v11;
    *v18 = v11;
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, &v17, &v18[24], 0, 10);
    goto LABEL_19;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v18[13] = v6;
  v17 = v6;
  *v18 = v6;
  if (a1 | a2)
  {
    v7 = "0";
  }

  else
  {
    v7 = 0;
  }

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, &v17, &v18[29], v7, 8);
LABEL_19:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6, char *a7, uint64_t a8, _BYTE *a9, signed int a10)
{
  v10 = a7;
  v12 = a4;
  v14 = a4;
  if (a6)
  {
    v15 = 45;
LABEL_7:
    *a7 = v15;
    v17 = a7 + 1;
    goto LABEL_8;
  }

  v16 = (a4 >> 3) & 3;
  if (v16 == 2)
  {
    v15 = 43;
    goto LABEL_7;
  }

  v17 = a7;
  if (v16 == 3)
  {
    v15 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v18 = *a9;
      if (*a9)
      {
        v19 = a9 + 1;
        do
        {
          *v17 = v18;
          v17 = (v17 + 1);
          v20 = *v19++;
          v18 = v20;
        }

        while (v20);
      }
    }
  }

  v21 = std::__to_chars_integral[abi:ne200100]<unsigned __int128>(v17, a8, a1, a2, a10);
  v90 = v12;
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_67;
  }

  if ((*(a3 + 40) & 1) == 0)
  {
    MEMORY[0x29C27AC20](v95);
    v22 = (a3 + 32);
    if (*(a3 + 40) == 1)
    {
      std::locale::operator=(v22, v95);
    }

    else
    {
      std::locale::locale(v22, v95);
      *(a3 + 40) = 1;
    }

    std::locale::~locale(v95);
  }

  std::locale::locale(&v92, (a3 + 32));
  v23 = std::locale::use_facet(&v92, MEMORY[0x29EDC93F8]);
  v24 = v21 - v17;
  std::locale::~locale(&v92);
  memset(v95, 170, sizeof(v95));
  (v23->__vftable[1].__on_zero_shared)(v95, v23);
  if ((SHIBYTE(v95[2].__locale_) & 0x8000000000000000) != 0)
  {
    locale = v95[0].__locale_;
    v26 = v95[1].__locale_;
    if (v95[1].__locale_ && v24 > *v95[0].__locale_)
    {
      v88 = a5;
      v27 = v95[0].__locale_;
      goto LABEL_26;
    }

    operator delete(v95[0].__locale_);
LABEL_67:
    v50 = v21;
    v51 = HIDWORD(v12);
    v52 = *a3;
    if ((v14 & 7) == 4)
    {
      v89 = a5;
      v53 = v17 - v10;
      v54 = *(v52 + 32);
      v55 = v17 - v10;
      if (!v54 || ((v57 = *v54, v56 = v54[1], *v54 - v56 >= v53) ? (v55 = v17 - v10) : (v55 = *v54 - v56), (v54[1] = v56 + v53, v57 > v56) ? (v58 = v55 == 0) : (v58 = 1), !v58))
      {
        v65 = *(v52 + 16);
        do
        {
          v66 = *(v52 + 8) - v65;
          if (v66 < v55 + 1)
          {
            (*(v52 + 24))(v52, v55 + 2);
            v65 = *(v52 + 16);
            v66 = *(v52 + 8) - v65;
          }

          if (v66 >= v55)
          {
            v67 = v55;
          }

          else
          {
            v67 = v66;
          }

          if (v67)
          {
            memmove((*v52 + v65), v10, v67);
            v65 = *(v52 + 16);
          }

          v65 += v67;
          *(v52 + 16) = v65;
          v10 += v67;
          v32 = v55 > v66;
          v55 -= v67;
        }

        while (v32);
      }

      LODWORD(v12) = v90;
      v59 = v90 & 0xF8 | 3;
      if (v51 >= v53)
      {
        v60 = v53;
      }

      else
      {
        v60 = v51;
      }

      v51 = (v51 - v60);
      v52 = *a3;
      v61 = 48;
      a5 = v89;
    }

    else
    {
      v61 = BYTE4(a5);
      v59 = v12;
      v17 = v10;
    }

    v62 = v51 << 32;
    v63 = a5 & 0xFFFFFF00FFFFFFFFLL | (v61 << 32);
    if ((v12 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v17, v50, v52, v12 & 0xFFFF0700 | v62 | v59, v63, std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v17, v50 - v17, v52, v62 | v12 & 0xFFFFFF00 | v59, v63, v50 - v17);
    }
  }

  if (!HIBYTE(v95[2].__locale_) || v24 <= SLOBYTE(v95[0].__locale_))
  {
    goto LABEL_67;
  }

  v88 = a5;
  locale = v95;
  v27 = v95[0].__locale_;
  v26 = v95[1].__locale_;
LABEL_26:
  v86 = *a3;
  v87 = v23;
  v92.__locale_ = 0;
  v93 = 0;
  v94 = 0;
  v28 = v26 + v27;
  if (SHIBYTE(v95[2].__locale_) >= 0)
  {
    v29 = v95 + SHIBYTE(v95[2].__locale_);
  }

  else
  {
    v29 = v28;
  }

  v30 = *locale;
  v31 = *locale;
  v32 = v24 <= v30;
  v33 = v24 - v30;
  if (v32)
  {
    v69 = 0;
    v68 = v31 + v33;
    v70 = v88;
    goto LABEL_99;
  }

  v85 = v21;
  v34 = v29 - 1;
  do
  {
    while (1)
    {
      v35 = HIBYTE(v94);
      if ((SHIBYTE(v94) & 0x80000000) == 0)
      {
        break;
      }

      v37 = (v94 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v93 != v37)
      {
        v43 = v92.__locale_;
        v37 = v93;
        goto LABEL_56;
      }

      if ((v94 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v36 = v92.__locale_;
      v91 = locale;
      if (v37 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_38;
      }

      v41 = 0;
      v40 = 0x7FFFFFFFFFFFFFF7;
LABEL_48:
      v42 = operator new(v40);
      v43 = v42;
      if (v37)
      {
        memmove(v42, v36, v37);
      }

      if (!v41)
      {
        operator delete(v36);
      }

      v92.__locale_ = v43;
      v94 = v40 | 0x8000000000000000;
      locale = v91;
LABEL_56:
      v93 = v37 + 1;
      v45 = v43 + v37;
      *v45 = v31;
      v45[1] = 0;
      if (locale != v34)
      {
        goto LABEL_57;
      }

LABEL_31:
      v31 = *locale;
      v33 -= *locale;
      if (v33 <= 0)
      {
        goto LABEL_95;
      }
    }

    if (HIBYTE(v94) == 22)
    {
      v91 = locale;
      v36 = &v92;
      v37 = 22;
LABEL_38:
      if (v37 + 1 > 2 * v37)
      {
        v38 = v37 + 1;
      }

      else
      {
        v38 = 2 * v37;
      }

      if ((v38 | 7) == 0x17)
      {
        v39 = 25;
      }

      else
      {
        v39 = (v38 | 7) + 1;
      }

      if (v38 >= 0x17)
      {
        v40 = v39;
      }

      else
      {
        v40 = 23;
      }

      v41 = v37 == 22;
      goto LABEL_48;
    }

    HIBYTE(v94) = (HIBYTE(v94) + 1) & 0x7F;
    v44 = &v92 + v35;
    *v44 = v31;
    v44[1] = 0;
    if (locale == v34)
    {
      goto LABEL_31;
    }

LABEL_57:
    v46 = (locale + 1);
    v47 = (locale + 1);
    do
    {
      v48 = *v47++;
      v31 = v48;
      if (v48)
      {
        v49 = 1;
      }

      else
      {
        v49 = v46 == v34;
      }

      v46 = v47;
    }

    while (!v49);
    locale = (v47 - 1);
    v33 -= v31;
  }

  while (v33 > 0);
LABEL_95:
  v68 = v31 + v33;
  if (SHIBYTE(v94) < 0)
  {
    v73 = (v94 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v70 = v88;
    LODWORD(v21) = v85;
    if (v93 == v73)
    {
      if ((v94 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v72 = v92.__locale_;
      v75 = 0x7FFFFFFFFFFFFFF7;
      v71 = v88;
      if (v73 >= 0x3FFFFFFFFFFFFFF3)
      {
        v78 = 0;
      }

      else
      {
LABEL_103:
        if (v73 + 1 > 2 * v73)
        {
          v76 = v73 + 1;
        }

        else
        {
          v76 = 2 * v73;
        }

        if ((v76 | 7) == 0x17)
        {
          v77 = 25;
        }

        else
        {
          v77 = (v76 | 7) + 1;
        }

        if (v76 >= 0x17)
        {
          v75 = v77;
        }

        else
        {
          v75 = 23;
        }

        v78 = v73 == 22;
      }

      v79 = v75;
      v80 = operator new(v75);
      v74 = v80;
      if (v73)
      {
        memmove(v80, v72, v73);
      }

      if (!v78)
      {
        operator delete(v72);
      }

      v92.__locale_ = v74;
      v94 = v79 | 0x8000000000000000;
      v70 = v71;
    }

    else
    {
      v74 = v92.__locale_;
      v73 = v93;
    }

    v93 = v73 + 1;
  }

  else
  {
    v69 = HIBYTE(v94);
    v70 = v88;
    LODWORD(v21) = v85;
    if (HIBYTE(v94) == 22)
    {
      v71 = v88;
      v72 = &v92;
      v73 = 22;
      goto LABEL_103;
    }

LABEL_99:
    v73 = v69;
    HIBYTE(v94) = (v69 + 1) & 0x7F;
    v74 = &v92;
  }

  v81 = v74 + v73;
  *v81 = v68;
  v81[1] = 0;
  v82 = (v87->__vftable[1].~facet_0)(v87);
  result = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v86, v10, v17, v21, &v92, v82, v90, v70);
  if (SHIBYTE(v94) < 0)
  {
    v83 = result;
    operator delete(v92.__locale_);
    result = v83;
  }

  if (SHIBYTE(v95[2].__locale_) < 0)
  {
    v84 = result;
    operator delete(v95[0].__locale_);
    return v84;
  }

  return result;
}

void sub_297A7198C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

char *std::__to_chars_integral[abi:ne200100]<unsigned __int128>(_WORD *a1, uint64_t a2, unint64_t a3, unint64_t a4, signed int a5)
{
  v5 = a2;
  HIDWORD(v7) = a5 - 2;
  LODWORD(v7) = a5 - 2;
  v6 = v7 >> 1;
  if (v6 != 4)
  {
    if (!v6)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(a1, a2, a3, a4);
    }

    if (v6 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(a1, a2, a3, a4);
    }

    if (v6 != 7)
    {
      v18 = a1;
      v19 = a2 - a1;
      v27 = a3;
      v20 = std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(a3, a4, a5);
      if (v19 >= v20)
      {
        v5 = v18 + v20;
        v21 = (v5 - 1);
        v23 = a4;
        v22 = v27;
        do
        {
          v24 = v22;
          v25 = v23;
          v22 = __udivti3();
          *v21-- = a0123456789abcd[(v24 - v22 * a5)];
        }

        while (__PAIR128__(v25, v24) >= a5);
      }

      return v5;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(a1, a2, a3, a4);
  }

  v8 = a2 - a1;
  if (a4)
  {
    if (v8 <= 38)
    {
      v9 = (1233 * (128 - __clz(a4))) >> 12;
      if (v8 < v9 - (__PAIR128__(a4, a3) < std::__itoa::__pow10_128[v9]) + 1)
      {
        return v5;
      }
    }

    return std::__itoa::__base_10_u128[abi:ne200100](a1, a3, a4);
  }

  if (v8 > 19 || (v10 = (1233 * (64 - __clz(a3 | 1))) >> 12, v8 >= v10 - (std::__itoa::__pow10_64[v10] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      v12 = a3 / 0x2540BE400;
      v13 = a3;
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      a3 = v13 - 10000000000 * v12;
    }

    *a1 = std::__itoa::__digits_base_10[a3 / 0x5F5E100];
    a1[1] = std::__itoa::__digits_base_10[a3 % 0x5F5E100 / 0xF4240];
    v14 = a3 % 0x5F5E100 % 0xF4240;
    a1[2] = std::__itoa::__digits_base_10[v14 / 0x2710uLL];
    v14 %= 0x2710u;
    a1[3] = std::__itoa::__digits_base_10[v14 / 0x64u];
    a1[4] = std::__itoa::__digits_base_10[v14 % 0x64u];
    return (a1 + 5);
  }

  return v5;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (__PAIR128__(a2, a1) >= a3)
  {
    v6 = a3 * a3;
    v7 = a3 * a3 * a3;
    v3 = 4;
    while (1)
    {
      if (__PAIR128__(a2, a1) < v6)
      {
        return (v3 - 2);
      }

      if (__PAIR128__(a2, a1) < v7)
      {
        break;
      }

      if (__PAIR128__(a2, a1) < v6 * v6)
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

  else
  {
    return 1;
  }
}

char *std::__itoa::__base_10_u128[abi:ne200100](_BYTE *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1;
  if (__PAIR128__(a3, a2) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
  {
    *a1 = __udivti3() | 0x30;
    v7 = __udivti3();
    *(v3 + 1) = ((1441151881 * v7) >> 57) + 48;
    v3[1] = std::__itoa::__digits_base_10[v7 % 0x5F5E100 / 0xF4240uLL];
    v8 = v7 % 0x5F5E100 % 0xF4240;
    v3[2] = std::__itoa::__digits_base_10[v8 / 0x2710uLL];
    v8 %= 0x2710u;
    v3[3] = std::__itoa::__digits_base_10[v8 / 0x64u];
    v3[4] = std::__itoa::__digits_base_10[v8 % 0x64u];
    v9 = __udivti3();
    v3[5] = std::__itoa::__digits_base_10[v9 / 0x5F5E100];
    v10 = v9 % 0x5F5E100;
    v3[6] = std::__itoa::__digits_base_10[v10 / 0xF4240uLL];
    v10 %= 0xF4240u;
    v3[7] = std::__itoa::__digits_base_10[v10 / 0x2710uLL];
    LOWORD(v10) = v10 % 0x2710;
    v3[8] = std::__itoa::__digits_base_10[v10 / 0x64u];
    v3[9] = std::__itoa::__digits_base_10[v10 % 0x64u];
    v6 = v3 + 10;
  }

  else
  {
    v4 = __udivti3();
    v5 = v4;
    if (HIDWORD(v4))
    {
      if (v4 > 0x2540BE3FFLL)
      {
        v3 = std::__itoa::__base_10_u32[abi:ne200100](v3, v4 / 0x2540BE400);
        v5 %= 0x2540BE400uLL;
      }

      *v3 = std::__itoa::__digits_base_10[v5 / 0x5F5E100];
      v11 = v5 % 0x5F5E100;
      v3[1] = std::__itoa::__digits_base_10[v11 / 0xF4240uLL];
      v11 %= 0xF4240u;
      v3[2] = std::__itoa::__digits_base_10[v11 / 0x2710uLL];
      v11 %= 0x2710u;
      v3[3] = std::__itoa::__digits_base_10[v11 / 0x64u];
      v3[4] = std::__itoa::__digits_base_10[v11 % 0x64u];
      v6 = v3 + 5;
    }

    else
    {
      v6 = std::__itoa::__base_10_u32[abi:ne200100](v3, v4);
    }
  }

  v12 = __umodti3();
  *v6 = v12 / 0x2540BE400 / 0x5F5E100 + 48;
  v13 = v12 / 0x2540BE400 % 0x5F5E100;
  *(v6 + 1) = std::__itoa::__digits_base_10[v13 / 0xF4240uLL];
  v13 %= 0xF4240u;
  *(v6 + 3) = std::__itoa::__digits_base_10[v13 / 0x2710uLL];
  v13 %= 0x2710u;
  *(v6 + 5) = std::__itoa::__digits_base_10[v13 / 0x64u];
  *(v6 + 7) = std::__itoa::__digits_base_10[v13 % 0x64u];
  *(v6 + 9) = std::__itoa::__digits_base_10[v12 % 0x2540BE400 / 0x5F5E100];
  v14 = v12 % 0x2540BE400 % 0x5F5E100;
  *(v6 + 11) = std::__itoa::__digits_base_10[v14 / 0xF4240uLL];
  v14 %= 0xF4240u;
  *(v6 + 13) = std::__itoa::__digits_base_10[v14 / 0x2710uLL];
  v14 %= 0x2710u;
  *(v6 + 15) = std::__itoa::__digits_base_10[v14 / 0x64u];
  *(v6 + 17) = std::__itoa::__digits_base_10[v14 % 0x64u];
  return v6 + 19;
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
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v8 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x11)
  {
    v10 = a3;
    v12 = a4;
    v9 = v8;
  }

  else
  {
    v9 = a1 + v6;
    do
    {
      *(&v11 + 1) = a4;
      *&v11 = a3;
      v10 = v11 >> 4;
      v12 = a4 >> 4;
      *(v9 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v9 -= 4;
      v13 = a3 <= 0x10F;
      a3 = v10;
      a4 >>= 4;
    }

    while (!v13);
  }

  v14 = (v9 - 1);
  do
  {
    v15 = v10 & 1;
    v13 = v10 <= 1;
    *(&v16 + 1) = v12;
    *&v16 = v10;
    v10 = v16 >> 1;
    v12 >>= 1;
    *v14-- = a01[v15];
  }

  while (!v13);
  return v8;
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

  v8 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x41)
  {
    v10 = a3;
    v9 = v8;
  }

  else
  {
    v9 = a1 + v6;
    do
    {
      *(&v11 + 1) = a4;
      *&v11 = a3;
      v10 = v11 >> 6;
      a4 >>= 6;
      *(v9 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v9 -= 2;
      a3 = v10;
    }

    while (v10 > 0x40);
  }

  v12 = (v9 - 1);
  do
  {
    v13 = v10 & 7;
    v14 = v10 <= 7;
    *(&v15 + 1) = a4;
    *&v15 = v10;
    v10 = v15 >> 3;
    a4 >>= 3;
    *v12-- = a01234567[v13];
  }

  while (!v14);
  return v8;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (131 - v5) >> 2;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v8 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x101)
  {
    v10 = a3;
    v9 = v8;
  }

  else
  {
    v9 = a1 + v6;
    do
    {
      *(&v11 + 1) = a4;
      *&v11 = a3;
      v10 = v11 >> 8;
      a4 >>= 8;
      *(v9 - 2) = std::__itoa::__base_16_lut[a3];
      v9 -= 2;
      a3 = v10;
    }

    while (v10 > 0x100);
  }

  v12 = (v9 - 1);
  do
  {
    v13 = v10 & 0xF;
    v14 = v10 <= 0xF;
    *(&v15 + 1) = a4;
    *&v15 = v10;
    v10 = v15 >> 4;
    a4 >>= 4;
    *v12-- = a0123456789abcd_0[v13];
  }

  while (!v14);
  return v8;
}

uint64_t std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<unsigned int>(uint64_t a1, unsigned int a2)
{
  v13 = 0;
  v14 = -1;
  v15 = 32;
  v16 = 0;
  v17 = 0;
  if (**(a1 + 16) == 1)
  {
    v4 = *a1;
    v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v13, *a1, 311);
    if (BYTE1(v13) - 2 >= 6 && BYTE1(v13) != 0)
    {
      if (BYTE1(v13) != 10)
      {
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("an integer");
      }

      v12 = v5;
      std::__format_spec::__parser<char>::__validate[abi:ne200100](&v13, 48, "an integer", -1);
      v5 = v12;
      if ((v13 & 7) == 0)
      {
        LOBYTE(v13) = v13 | 1;
      }
    }

    *v4 = v5;
  }

  v7 = *(a1 + 8);
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v13, v7);
  if ((v9 & 0xFF00) == 0xA00)
  {
    if (a2 >= 0x80)
    {
      std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
    }

    v10 = *v7;
    __src = a2;
    result = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, v10, v9, v8, 1);
    *v7 = result;
  }

  else
  {
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, v7, v9, v8, 0);
    *v7 = result;
  }

  return result;
}

uint64_t std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<unsigned long long>(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v14 = -1;
  v15 = 32;
  v16 = 0;
  v17 = 0;
  if (**(a1 + 16) == 1)
  {
    v4 = *a1;
    v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v13, *a1, 311);
    if (BYTE1(v13) - 2 >= 6 && BYTE1(v13) != 0)
    {
      if (BYTE1(v13) != 10)
      {
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("an integer");
      }

      v12 = v5;
      std::__format_spec::__parser<char>::__validate[abi:ne200100](&v13, 48, "an integer", -1);
      v5 = v12;
      if ((v13 & 7) == 0)
      {
        LOBYTE(v13) = v13 | 1;
      }
    }

    *v4 = v5;
  }

  v7 = *(a1 + 8);
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v13, v7);
  if ((v9 & 0xFF00) == 0xA00)
  {
    if (a2 >= 0x80)
    {
      std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
    }

    v10 = *v7;
    __src = a2;
    result = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, v10, v9, v8, 1);
    *v7 = result;
  }

  else
  {
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, v7, v9, v8, 0);
    *v7 = result;
  }

  return result;
}

uint64_t std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<unsigned __int128>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v15 = 0;
  v16 = -1;
  v17 = 32;
  v18 = 0;
  v19 = 0;
  if (**(a1 + 16) == 1)
  {
    v6 = *a1;
    v7 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v15, *a1, 311);
    if (BYTE1(v15) - 2 >= 6 && BYTE1(v15) != 0)
    {
      if (BYTE1(v15) != 10)
      {
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("an integer");
      }

      v14 = v7;
      std::__format_spec::__parser<char>::__validate[abi:ne200100](&v15, 48, "an integer", -1);
      v7 = v14;
      if ((v15 & 7) == 0)
      {
        LOBYTE(v15) = v15 | 1;
      }
    }

    *v6 = v7;
  }

  v9 = *(a1 + 8);
  v11 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v15, v9);
  if ((v11 & 0xFF00) == 0xA00)
  {
    if (__PAIR128__(a3, a2) >= 0x80)
    {
      std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
    }

    v12 = *v9;
    __src = a2;
    result = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, v12, v11, v10, 1);
  }

  else
  {
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v9, v11, v10, 0);
  }

  *v9 = result;
  return result;
}

uint64_t std::__formatter::__format_floating_point[abi:ne200100]<float,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t a2, unint64_t a3, float a4)
{
  v5 = a2;
  v86 = *MEMORY[0x29EDCA608];
  v8 = fabsf(a4);
  v9 = LODWORD(a4);
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v85[15] = v10;
  v85[14] = v10;
  v85[13] = v10;
  v85[12] = v10;
  v11 = a2 >> 8;
  v85[11] = v10;
  v85[10] = v10;
  v85[9] = v10;
  v85[8] = v10;
  v85[7] = v10;
  v85[6] = v10;
  v85[5] = v10;
  v85[4] = v10;
  v85[3] = v10;
  v85[2] = v10;
  v85[1] = v10;
  v85[0] = v10;
  *__src = v10;
  if (a3 == -1)
  {
    v12 = 149;
  }

  else
  {
    v12 = a3;
  }

  v82 = v12;
  v83 = 0;
  if (v12 < 150)
  {
    __src[0] = (v12 + 45);
    if ((v12 + 45) >= 0x101)
    {
      v13 = v8;
      v14 = operator new(v12 + 45);
      v8 = v13;
      goto LABEL_9;
    }
  }

  else
  {
    v82 = 149;
    v83 = v12 - 149;
    __src[0] = 194;
  }

  v14 = v85;
LABEL_9:
  __src[1] = v14;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v79 = v15;
  *v80 = v15;
  std::__formatter::__format_buffer[abi:ne200100]<float,float>(&v82, v9 < 0, ((a3 & 0x80000000) == 0), (v5 >> 3) & 3, v11, &v79, v8);
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_28;
  }

  v16 = *(&v79 + 1);
  v17 = v80[1];
  if (*(&v79 + 1) != v80[1])
  {
    if ((BYTE1(v5) - 17) > 1u)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  ++v80[1];
  *v17 = 46;
  v18 = v80[0];
  v19 = v80[1] - 1;
  if (v80[0] != v80[1] - 1)
  {
    if (v80[0] + 1 == v19)
    {
      v21 = *v80[0];
      *v80[0] = *(v80[0] + 1);
      v18[1] = v21;
    }

    else
    {
      v20 = *(v80[1] - 1);
      memmove(v80[0] + 1, v80[0], v19 - v80[0]);
      *v18 = v20;
    }
  }

  v16 = v80[0];
  *(&v79 + 1) = v80[0]++;
  if ((BYTE1(v5) - 17) <= 1u)
  {
LABEL_18:
    if (a3 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = a3;
    }

    if ((a3 & 0x80000000) != 0)
    {
      v22 = 6;
    }

    if (v80[0] == v80[1])
    {
      v23 = v79 - v16;
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 + v22;
    v25 = v80[0] + ~v16;
    if (v25 < v24)
    {
      v83 += v24 - v25;
    }
  }

LABEL_28:
  if ((v5 & 0x40) != 0)
  {
    v40 = *a1;
    if ((*(a1 + 40) & 1) == 0)
    {
      MEMORY[0x29C27AC20](&v81);
      v41 = (a1 + 32);
      if (*(a1 + 40) == 1)
      {
        std::locale::operator=(v41, &v81);
      }

      else
      {
        std::locale::locale(v41, &v81);
        *(a1 + 40) = 1;
      }

      std::locale::~locale(&v81);
    }

    std::locale::locale(&v78, (a1 + 32));
    v43 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,float,char>(v40, &v82, &v79, &v78, v5, a3);
    std::locale::~locale(&v78);
    goto LABEL_73;
  }

  v26 = v80[1];
  v27 = __src[1];
  v28 = v80[1] - __src[1];
  v29 = v83;
  if (v80[1] - __src[1] + v83 < v5 >> 32)
  {
    v30 = *a1;
    if ((v5 & 7) == 4)
    {
      if (__src[1] != v79)
      {
        v31 = *__src[1];
        v32 = *(v30 + 32);
        if (!v32 || (v34 = *v32, v33 = v32[1], v32[1] = v33 + 1, v33 < v34))
        {
          v35 = *v30;
          v36 = *(v30 + 16);
          *(v30 + 16) = v36 + 1;
          *(v35 + v36) = v31;
          if (*(v30 + 16) == *(v30 + 8))
          {
            v37 = v30;
            (*(v30 + 24))(v30, 2);
            v30 = v37;
          }
        }

        ++v27;
        v26 = v80[1];
      }

      v5 = v5 & 0xFFFFFFFFFFFFFF00 | v5 & 0xB8 | 3;
      v38 = a3 & 0xFFFFFF00FFFFFFFFLL | 0x3000000000;
      if (!v29)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v38 = a3 & 0xFFFFFF00FFFFFFFFLL | (BYTE4(a3) << 32);
      if (!v83)
      {
LABEL_38:
        v39 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v27, v26 - v27, v30, v5, v38, v28);
LABEL_69:
        v43 = v39;
        goto LABEL_73;
      }
    }

    v39 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v27, v26, v30, v5, v38, v28, v80[0], v29);
    goto LABEL_69;
  }

  if (!v83 || (v42 = v80[0], v80[0] == v80[1]))
  {
    v43 = *a1;
    v50 = *(*a1 + 32);
    if (!v50 || ((v51 = *v50, v52 = v50[1], *v50 - v52 >= v28) ? (v53 = v80[1] - __src[1]) : (v53 = *v50 - v52), (v54 = v52 + v28, v50[1] = v52 + v28, v51 > v52) && (v28 = v53) != 0))
    {
      v55 = *(v43 + 16);
      do
      {
        v57 = *(v43 + 8) - v55;
        if (v57 < v28 + 1)
        {
          (*(v43 + 24))(v43, v28 + 2);
          v55 = *(v43 + 16);
          v57 = *(v43 + 8) - v55;
        }

        if (v57 >= v28)
        {
          v58 = v28;
        }

        else
        {
          v58 = v57;
        }

        if (v58)
        {
          memmove((*v43 + v55), v27, v58);
          v55 = *(v43 + 16);
        }

        v55 += v58;
        *(v43 + 16) = v55;
        v27 += v58;
        v56 = v28 > v57;
        v28 -= v58;
      }

      while (v56);
      v50 = *(v43 + 32);
      if (!v50)
      {
        goto LABEL_87;
      }

      v51 = *v50;
      v54 = v50[1];
    }

    v61 = v51 - v54;
    if (v51 - v54 >= v29)
    {
      v61 = v29;
    }

    v50[1] = v54 + v29;
    if (v51 <= v54 || v61 == 0)
    {
      goto LABEL_73;
    }

    v55 = *(v43 + 16);
    v29 = v61;
    do
    {
LABEL_87:
      v63 = *(v43 + 8) - v55;
      if (v63 < v29 + 1)
      {
        (*(v43 + 24))(v43, v29 + 2);
        v55 = *(v43 + 16);
        v63 = *(v43 + 8) - v55;
      }

      if (v63 >= v29)
      {
        v64 = v29;
      }

      else
      {
        v64 = v63;
      }

      if (v64)
      {
        memset((*v43 + v55), 48, v64);
        v55 = *(v43 + 16);
      }

      v55 += v64;
      *(v43 + 16) = v55;
      v56 = v29 > v63;
      v29 -= v64;
    }

    while (v56);
    goto LABEL_73;
  }

  v43 = *a1;
  v44 = v80[0] - __src[1];
  v45 = *(*a1 + 32);
  if (v45)
  {
    v46 = *v45;
    v47 = v45[1];
    if (*v45 - v47 >= v44)
    {
      v48 = v80[0] - __src[1];
    }

    else
    {
      v48 = *v45 - v47;
    }

    v49 = v47 + v44;
    v45[1] = v47 + v44;
    if (v46 <= v47 || !v48)
    {
      goto LABEL_107;
    }
  }

  else
  {
    v48 = v80[0] - __src[1];
  }

  v65 = *(v43 + 16);
  do
  {
    v66 = *(v43 + 8) - v65;
    if (v66 < v48 + 1)
    {
      (*(v43 + 24))(v43, v48 + 2);
      v65 = *(v43 + 16);
      v66 = *(v43 + 8) - v65;
    }

    if (v66 >= v48)
    {
      v67 = v48;
    }

    else
    {
      v67 = v66;
    }

    if (v67)
    {
      memmove((*v43 + v65), v27, v67);
      v65 = *(v43 + 16);
    }

    v65 += v67;
    *(v43 + 16) = v65;
    v27 += v67;
    v56 = v48 > v66;
    v48 -= v67;
  }

  while (v56);
  v45 = *(v43 + 32);
  if (!v45)
  {
    goto LABEL_114;
  }

  v46 = *v45;
  v49 = v45[1];
LABEL_107:
  v68 = v49 + v29;
  v45[1] = v49 + v29;
  v69 = v46 >= v49;
  v70 = v46 - v49;
  if (v70 == 0 || !v69)
  {
    v73 = v26 - v42;
    goto LABEL_123;
  }

  if (v70 < v29)
  {
    v29 = v70;
  }

  v65 = *(v43 + 16);
  do
  {
LABEL_114:
    v71 = *(v43 + 8) - v65;
    if (v71 < v29 + 1)
    {
      (*(v43 + 24))(v43, v29 + 2);
      v65 = *(v43 + 16);
      v71 = *(v43 + 8) - v65;
    }

    if (v71 >= v29)
    {
      v72 = v29;
    }

    else
    {
      v72 = v71;
    }

    if (v72)
    {
      memset((*v43 + v65), 48, v72);
      v65 = *(v43 + 16);
    }

    v65 += v72;
    *(v43 + 16) = v65;
    v56 = v29 > v71;
    v29 -= v72;
  }

  while (v56);
  v45 = *(v43 + 32);
  v73 = v26 - v42;
  if (!v45)
  {
    goto LABEL_132;
  }

  v46 = *v45;
  v68 = v45[1];
LABEL_123:
  v74 = v46 - v68;
  if (v46 - v68 >= v73)
  {
    v74 = v73;
  }

  v45[1] = v68 + v73;
  if (v46 > v68 && v74 != 0)
  {
    v65 = *(v43 + 16);
    v73 = v74;
    do
    {
LABEL_132:
      v76 = *(v43 + 8) - v65;
      if (v76 < v73 + 1)
      {
        (*(v43 + 24))(v43, v73 + 2);
        v65 = *(v43 + 16);
        v76 = *(v43 + 8) - v65;
      }

      if (v76 >= v73)
      {
        v77 = v73;
      }

      else
      {
        v77 = v76;
      }

      if (v77)
      {
        memmove((*v43 + v65), v42, v77);
        v65 = *(v43 + 16);
      }

      v65 += v77;
      *(v43 + 16) = v65;
      v42 += v77;
      v56 = v73 > v76;
      v73 -= v77;
    }

    while (v56);
  }

LABEL_73:
  if (__src[0] >= 0x101)
  {
    operator delete(__src[1]);
  }

  v59 = *MEMORY[0x29EDCA608];
  return v43;
}

void sub_297A73010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, void *__p)
{
  if (a18 >= 0x101)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__formatter::__format_buffer[abi:ne200100]<float,float>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, char *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>, float a7@<S0>)
{
  v8 = *(a1 + 2);
  if (a2)
  {
    v9 = 45;
  }

  else if (a4 == 2)
  {
    v9 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v9 = 32;
  }

  *v8++ = v9;
LABEL_8:
  if (a5 <= 14)
  {
    if (a5 > 11)
    {
      if (a5 == 12)
      {
        if (a3)
        {
          v24 = *a1;
        }

        else
        {
          v24 = 0xFFFFFFFFLL;
        }

        return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<float,float>(a1, v24, v8, a6);
      }

      else if (a5 == 13)
      {
        v10 = *a1;
        *a6 = v8;
        result = MEMORY[0x29C27ACD0](v8, *(a1 + 2) + *(a1 + 1), 1, v10);
        *(a6 + 24) = result;
        v12 = v8 + 1;
        if (v8[1] == 46)
        {
          *(a6 + 8) = v12;
          v13 = result - v8 - 2;
          if (v13 < 4)
          {
LABEL_19:
            *(a6 + 16) = result;
          }

          else
          {
            if (v13 >= 6)
            {
              v13 = 6;
            }

            v14 = -v13;
            while (*(result + v14) != 101)
            {
              if (++v14 == -3)
              {
                goto LABEL_19;
              }
            }

            *(a6 + 16) = result + v14;
          }
        }

        else
        {
          *(a6 + 8) = result;
          *(a6 + 16) = v12;
        }
      }

      else
      {
        v30 = *a1;
        *a6 = v8;
        result = MEMORY[0x29C27ACD0](v8, *(a1 + 2) + *(a1 + 1), 1, v30);
        *(a6 + 24) = result;
        v31 = v8 + 1;
        if (v8[1] == 46)
        {
          *(a6 + 8) = v31;
          v32 = result - v8 - 2;
          if (v32 < 4)
          {
LABEL_68:
            v31 = result;
          }

          else
          {
            if (v32 >= 6)
            {
              v32 = 6;
            }

            v33 = -v32;
            while (*(result + v33) != 101)
            {
              if (++v33 == -3)
              {
                goto LABEL_68;
              }
            }

            v31 = (result + v33);
          }
        }

        else
        {
          *(a6 + 8) = result;
        }

        *(a6 + 16) = v31;
        *v31 = 69;
      }

      return result;
    }

    if (!a5)
    {
      if (a3)
      {
        v22 = *a1;
        a1[1] = 0;
        *(a6 + 8) = 0xAAAAAAAAAAAAAAAALL;
        *(a6 + 16) = 0xAAAAAAAAAAAAAAAALL;
        *a6 = v8;
        result = MEMORY[0x29C27ACD0](v8, *(a1 + 2) + *(a1 + 1), 3, v22);
        *(a6 + 24) = result;
        v18 = v8 + 1;
        if (v8 + 1 != result)
        {
          v19 = result - v18;
          if (result - v18 >= 4)
          {
            v23 = 6;
            if (v19 < 6)
            {
              v23 = result - v18;
            }

            v21 = -v23;
            while (*(result + v21) != 101)
            {
              if (++v21 == -3)
              {
                goto LABEL_57;
              }
            }

LABEL_89:
            v46 = result + v21;
            if (*v18 != 46)
            {
              v18 = result;
            }

            *(a6 + 8) = v18;
            *(a6 + 16) = v46;
            return result;
          }

          goto LABEL_57;
        }

        goto LABEL_72;
      }

      *a6 = v8;
      v36 = std::to_chars(v8, (*(a1 + 2) + *(a1 + 1)), a3, a7);
      v37 = v36;
      *(a6 + 24) = v36;
      v38 = v36 - v8;
      if (v36 - v8 < 4)
      {
LABEL_81:
        v40 = v36;
      }

      else
      {
        if (v38 >= 6)
        {
          v38 = 6;
        }

        v39 = -v38;
        while (*(v36 + v39) != 101)
        {
          if (++v39 == -3)
          {
            goto LABEL_81;
          }
        }

        v40 = v36 + v39;
      }

      *(a6 + 16) = v40;
      result = memchr(v8 + 1, 46, v40 - (v8 + 1));
      if (result)
      {
        v47 = result;
      }

      else
      {
        v47 = v40;
      }

      if (v47 == v40)
      {
        v47 = v37;
      }

      *(a6 + 8) = v47;
      return result;
    }

    if (a3)
    {
      v34 = *a1;
      *a6 = v8;
      v35 = (a6 + 24);
      if (v34 != -1)
      {
        result = MEMORY[0x29C27ACD0](v8, *(a1 + 2) + *(a1 + 1), 4);
LABEL_84:
        *v35 = result;
        v43 = v8[1];
        v42 = v8 + 1;
        if (v43 == 46)
        {
          v44 = result - 2;
          v45 = memchr((result - 5), 112, 3uLL);
          result = v42;
          if (v45)
          {
            v42 = v45;
          }

          else
          {
            v42 = v44;
          }
        }

        *(a6 + 8) = result;
        *(a6 + 16) = v42;
        return result;
      }
    }

    else
    {
      *a6 = v8;
      v35 = (a6 + 24);
      v41 = *(a1 + 2) + *(a1 + 1);
    }

    result = std::to_chars();
    goto LABEL_84;
  }

  if ((a5 - 15) < 2)
  {
    v15 = *a1;
    *a6 = v8;
    result = MEMORY[0x29C27ACD0](v8, *(a1 + 2) + *(a1 + 1), 2, v15);
    *(a6 + 16) = result;
    *(a6 + 24) = result;
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *(a6 + 8) = result - v16;
    return result;
  }

  if (a5 == 17)
  {
    v17 = *a1;
    a1[1] = 0;
    *(a6 + 8) = 0xAAAAAAAAAAAAAAAALL;
    *(a6 + 16) = 0xAAAAAAAAAAAAAAAALL;
    *a6 = v8;
    result = MEMORY[0x29C27ACD0](v8, *(a1 + 2) + *(a1 + 1), 3, v17);
    *(a6 + 24) = result;
    v18 = v8 + 1;
    if (v8 + 1 != result)
    {
      v19 = result - v18;
      if (result - v18 >= 4)
      {
        v20 = 6;
        if (v19 < 6)
        {
          v20 = result - v18;
        }

        v21 = -v20;
        while (*(result + v21) != 101)
        {
          if (++v21 == -3)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_89;
      }

LABEL_57:
      *(a6 + 16) = result;
      v28 = result;
      result = memchr(v18, 46, v19);
      if (result)
      {
        v29 = result;
      }

      else
      {
        v29 = v28;
      }

      *(a6 + 8) = v29;
      return result;
    }

LABEL_72:
    *(a6 + 8) = result;
    *(a6 + 16) = result;
    return result;
  }

  v25 = *a1;
  a1[1] = 0;
  *(a6 + 8) = 0xAAAAAAAAAAAAAAAALL;
  *(a6 + 16) = 0xAAAAAAAAAAAAAAAALL;
  *a6 = v8;
  result = MEMORY[0x29C27ACD0](v8, *(a1 + 2) + *(a1 + 1), 3, v25);
  *(a6 + 24) = result;
  v18 = v8 + 1;
  if (v8 + 1 == result)
  {
    goto LABEL_72;
  }

  v19 = result - v18;
  if (result - v18 < 4)
  {
    goto LABEL_57;
  }

  v26 = 6;
  if (v19 < 6)
  {
    v26 = result - v18;
  }

  v27 = -v26;
  while (*(result + v27) != 101)
  {
    if (++v27 == -3)
    {
      goto LABEL_57;
    }
  }

  if (*v18 != 46)
  {
    v18 = result;
  }

  *(a6 + 8) = v18;
  *(a6 + 16) = result + v27;
  *(result + v27) = 69;
  return result;
}

uint64_t std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,float,char>(uint64_t a1, uint64_t a2, void *a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  memset(__p, 170, 24);
  v143 = std::locale::use_facet(this, MEMORY[0x29EDC93F8]);
  (v143->__vftable[1].__on_zero_shared)(__p);
  v9 = a3[2];
  v10 = *a3;
  if (v9 >= a3[1])
  {
    v9 = a3[1];
  }

  v11 = v9 - v10;
  v144 = a3;
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    v12 = __p[1];
    if (!__p[1])
    {
      goto LABEL_59;
    }

    v15 = __p[0];
    v14 = *__p[0];
    v139 = v9 - v10;
    if ((v9 - v10) <= v14)
    {
      *__p[0] = 0;
      __p[1] = 0;
      v11 = v9 - v10;
      goto LABEL_59;
    }

    v137 = a5;
    v138 = a1;
    v16 = *__p[0];
    v13 = __p[0];
  }

  else
  {
    if (!HIBYTE(__p[2]))
    {
      goto LABEL_59;
    }

    if (v11 <= SLOBYTE(__p[0]))
    {
      LOBYTE(__p[0]) = 0;
      HIBYTE(__p[2]) = 0;
      goto LABEL_59;
    }

    v137 = a5;
    v138 = a1;
    v139 = v9 - v10;
    v13 = __p[0];
    v12 = __p[1];
    v14 = SLOBYTE(__p[0]);
    v15 = __p;
    v16 = __p[0];
  }

  v146 = 0uLL;
  v147 = 0;
  v17 = &v12[v13];
  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = __p + SHIBYTE(__p[2]);
  }

  else
  {
    v18 = v17;
  }

  v19 = v139 - v14;
  if (v139 <= v14)
  {
    v37 = 0;
    v36 = v16 + v19;
    a1 = v138;
    v11 = v139;
    a5 = v137;
    goto LABEL_56;
  }

  v20 = (v18 - 1);
  do
  {
    while (1)
    {
      v21 = HIBYTE(v147);
      if ((SHIBYTE(v147) & 0x80000000) == 0)
      {
        break;
      }

      v23 = (v147 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (*(&v146 + 1) != v23)
      {
        v23 = *(&v146 + 1);
        v29 = v146;
        goto LABEL_40;
      }

      if ((v147 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v22 = v146;
      if (v23 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_22;
      }

      v27 = 0;
      v26 = 0x7FFFFFFFFFFFFFF7;
LABEL_32:
      v28 = operator new(v26);
      v29 = v28;
      if (v23)
      {
        memmove(v28, v22, v23);
      }

      if (!v27)
      {
        operator delete(v22);
      }

      *&v146 = v29;
      v147 = v26 | 0x8000000000000000;
LABEL_40:
      *(&v146 + 1) = v23 + 1;
      v31 = &v29[v23];
      *v31 = v16;
      v31[1] = 0;
      if (v15 != v20)
      {
        goto LABEL_41;
      }

LABEL_15:
      v16 = *v15;
      v19 -= *v15;
      if (v19 <= 0)
      {
        goto LABEL_51;
      }
    }

    if (HIBYTE(v147) == 22)
    {
      v22 = &v146;
      v23 = 22;
LABEL_22:
      if (v23 + 1 > 2 * v23)
      {
        v24 = v23 + 1;
      }

      else
      {
        v24 = 2 * v23;
      }

      if ((v24 | 7) == 0x17)
      {
        v25 = 25;
      }

      else
      {
        v25 = (v24 | 7) + 1;
      }

      if (v24 >= 0x17)
      {
        v26 = v25;
      }

      else
      {
        v26 = 23;
      }

      v27 = v23 == 22;
      goto LABEL_32;
    }

    HIBYTE(v147) = (HIBYTE(v147) + 1) & 0x7F;
    v30 = &v146 + v21;
    *v30 = v16;
    v30[1] = 0;
    if (v15 == v20)
    {
      goto LABEL_15;
    }

LABEL_41:
    v32 = (v15 + 1);
    v33 = (v15 + 1);
    do
    {
      v34 = *v33;
      v33 = (v33 + 1);
      v16 = v34;
      if (v34)
      {
        v35 = 1;
      }

      else
      {
        v35 = v32 == v20;
      }

      v32 = v33;
    }

    while (!v35);
    v15 = (v33 - 1);
    v19 -= v16;
  }

  while (v19 > 0);
LABEL_51:
  v36 = v16 + v19;
  if (SHIBYTE(v147) < 0)
  {
    v38 = (v147 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    a3 = v144;
    a1 = v138;
    v11 = v139;
    a5 = v137;
    if (*(&v146 + 1) == v38)
    {
      if ((v147 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      __src = v146;
      v128 = 0x7FFFFFFFFFFFFFF7;
      if (v38 >= 0x3FFFFFFFFFFFFFF3)
      {
        v131 = 0;
      }

      else
      {
LABEL_205:
        if (v38 + 1 > 2 * v38)
        {
          v129 = v38 + 1;
        }

        else
        {
          v129 = 2 * v38;
        }

        if ((v129 | 7) == 0x17)
        {
          v130 = 25;
        }

        else
        {
          v130 = (v129 | 7) + 1;
        }

        if (v129 >= 0x17)
        {
          v128 = v130;
        }

        else
        {
          v128 = 23;
        }

        v131 = v38 == 22;
      }

      v132 = v128;
      v133 = operator new(v128);
      v134 = v133;
      if (v38)
      {
        memmove(v133, __src, v38);
      }

      if (!v131)
      {
        operator delete(__src);
      }

      *&v146 = v134;
      v147 = v132 | 0x8000000000000000;
    }

    else
    {
      v38 = *(&v146 + 1);
      v134 = v146;
    }

    *(&v146 + 1) = v38 + 1;
    v135 = &v134[v38];
    *v135 = v36;
    v135[1] = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v37 = HIBYTE(v147);
    a3 = v144;
    a1 = v138;
    v11 = v139;
    a5 = v137;
    if (HIBYTE(v147) == 22)
    {
      __src = &v146;
      v38 = 22;
      goto LABEL_205;
    }

LABEL_56:
    HIBYTE(v147) = (v37 + 1) & 0x7F;
    v39 = &v146 + v37;
    *v39 = v36;
    v39[1] = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
LABEL_57:
      operator delete(__p[0]);
    }
  }

  *__p = v146;
  __p[2] = v147;
LABEL_59:
  v40 = HIDWORD(a6);
  v41 = *(a2 + 16);
  v42 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    v42 = __p[1];
  }

  v43 = &v42[a3[3] - v41 + *(a2 + 4) - (v42 != 0)];
  v44 = a5 & 7;
  v45 = (a5 >> 32) - v43;
  if (a5 >> 32 <= v43)
  {
    v142 = 0;
    v45 = 0;
    LOBYTE(v46) = v40;
    if (v44 == 4)
    {
      goto LABEL_78;
    }

    goto LABEL_83;
  }

  if (v44 == 4)
  {
    LOBYTE(v46) = 48;
  }

  else
  {
    v46 = HIDWORD(a6);
  }

  if (v44 == 4)
  {
    v47 = 3;
  }

  else
  {
    v47 = v44;
  }

  if (v47 > 1)
  {
    if (v47 != 3)
    {
      v142 = v45 - (v45 >> 1);
      v45 >>= 1;
      if (v44 != 4)
      {
        goto LABEL_83;
      }

      goto LABEL_78;
    }

    goto LABEL_75;
  }

  if (!v47)
  {
LABEL_75:
    v142 = 0;
    if (v44 == 4)
    {
      goto LABEL_78;
    }

    goto LABEL_83;
  }

  v142 = v45;
  v45 = 0;
  if (v44 != 4)
  {
    goto LABEL_83;
  }

LABEL_78:
  if (v10 != v41)
  {
    v48 = *v41;
    v49 = *(a1 + 32);
    if (!v49 || (v51 = *v49, v50 = v49[1], v49[1] = v50 + 1, v50 < v51))
    {
      v52 = *a1;
      v53 = *(a1 + 16);
      *(a1 + 16) = v53 + 1;
      *(v52 + v53) = v48;
      if (*(a1 + 16) == *(a1 + 8))
      {
        v54 = v45;
        (*(a1 + 24))(a1, 2);
        v45 = v54;
      }
    }
  }

LABEL_83:
  v140 = v40 & 0xFFFFFF00 | v46;
  v55 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v45, v140);
  v56 = v55;
  if (v44 != 4)
  {
    v57 = *(a2 + 16);
    if (v10 != v57)
    {
      v58 = *v57;
      v59 = *(v55 + 32);
      if (!v59 || (v61 = *v59, v60 = v59[1], v59[1] = v60 + 1, v60 < v61))
      {
        v62 = *v55;
        v63 = *(v55 + 16);
        *(v55 + 16) = v63 + 1;
        *(v62 + v63) = v58;
        if (*(v55 + 16) == *(v55 + 8))
        {
          (*(v55 + 24))(v55, 2);
        }
      }
    }
  }

  v64 = SHIBYTE(__p[2]);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    v64 = __p[1];
    if (!__p[1])
    {
      goto LABEL_120;
    }

    v65 = __p[0];
LABEL_94:
    v66 = v64 + v65;
    v67 = (v143->__vftable[1].~facet_0)(v143);
    v68 = v65 + 1;
    while (1)
    {
      v70 = v66 - 1;
      v69 = *(v66 - 1);
      v71 = *(v56 + 32);
      if (v71)
      {
        v73 = *v71;
        v72 = v71[1];
        if (*v71 - v72 >= v69)
        {
          v74 = *(v66 - 1);
        }

        else
        {
          v74 = *v71 - v72;
        }

        v71[1] = v72 + v69;
        if (v73 <= v72 || v74 == 0)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v74 = *(v66 - 1);
      }

      v81 = *(v56 + 16);
      v82 = v10;
      do
      {
        v84 = *(v56 + 8) - v81;
        if (v84 < v74 + 1)
        {
          (*(v56 + 24))(v56, v74 + 2);
          v81 = *(v56 + 16);
          v84 = *(v56 + 8) - v81;
        }

        if (v84 >= v74)
        {
          v85 = v74;
        }

        else
        {
          v85 = v84;
        }

        if (v85)
        {
          memmove((*v56 + v81), v82, v85);
          v81 = *(v56 + 16);
        }

        v81 += v85;
        *(v56 + 16) = v81;
        v82 += v85;
        v83 = v74 > v84;
        v74 -= v85;
      }

      while (v83);
LABEL_104:
      if (v66 == v68)
      {
        goto LABEL_126;
      }

      v10 += *(v66 - 1);
      v76 = *(v56 + 32);
      if (v76)
      {
        v78 = *v76;
        v77 = v76[1];
        v76[1] = v77 + 1;
        --v66;
        if (v77 >= v78)
        {
          continue;
        }
      }

      v79 = *v56;
      v80 = *(v56 + 16);
      *(v56 + 16) = v80 + 1;
      *(v79 + v80) = v67;
      v66 = v70;
      if (*(v56 + 16) == *(v56 + 8))
      {
        (*(v56 + 24))(v56, 2);
        v66 = v70;
      }
    }
  }

  if (HIBYTE(__p[2]))
  {
    v65 = __p;
    goto LABEL_94;
  }

LABEL_120:
  v86 = *(v56 + 32);
  if (v86)
  {
    v88 = *v86;
    v87 = v86[1];
    if (*v86 - v87 >= v11)
    {
      v89 = v11;
    }

    else
    {
      v89 = *v86 - v87;
    }

    v86[1] = v87 + v11;
    if (v88 <= v87 || !v89)
    {
      goto LABEL_126;
    }
  }

  else
  {
    v89 = v11;
  }

  v125 = *(v56 + 16);
  do
  {
    v126 = *(v56 + 8) - v125;
    if (v126 < v89 + 1)
    {
      (*(v56 + 24))(v56, v89 + 2);
      v125 = *(v56 + 16);
      v126 = *(v56 + 8) - v125;
    }

    if (v126 >= v89)
    {
      v127 = v89;
    }

    else
    {
      v127 = v126;
    }

    if (v127)
    {
      memmove((*v56 + v125), v10, v127);
      v125 = *(v56 + 16);
    }

    v125 += v127;
    *(v56 + 16) = v125;
    v10 += v127;
    v83 = v89 > v126;
    v89 -= v127;
  }

  while (v83);
LABEL_126:
  if (v144[1] != v144[3])
  {
    v90 = (v143->__vftable[1].~facet)(v143);
    v91 = *(v56 + 32);
    if (!v91 || (v93 = *v91, v92 = v91[1], v91[1] = v92 + 1, v92 < v93))
    {
      v94 = *v56;
      v95 = *(v56 + 16);
      *(v56 + 16) = v95 + 1;
      *(v94 + v95) = v90;
      if (*(v56 + 16) == *(v56 + 8))
      {
        (*(v56 + 24))(v56, 2);
      }
    }

    v96 = v144[1];
    v97 = (v96 + 1);
    v98 = v144[2] - (v96 + 1);
    v99 = *(v56 + 32);
    if (v99)
    {
      v100 = *v99;
      v101 = v99[1];
      if (*v99 - v101 >= v98)
      {
        v102 = v98;
      }

      else
      {
        v102 = *v99 - v101;
      }

      v103 = v101 + v98;
      v99[1] = v103;
      if (v100 <= v101 || !v102)
      {
        v104 = *(a2 + 4);
        goto LABEL_151;
      }
    }

    else
    {
      v102 = v144[2] - (v96 + 1);
    }

    v105 = *(v56 + 16);
    do
    {
      v106 = *(v56 + 8) - v105;
      if (v106 < v102 + 1)
      {
        (*(v56 + 24))(v56, v102 + 2);
        v105 = *(v56 + 16);
        v106 = *(v56 + 8) - v105;
      }

      if (v106 >= v102)
      {
        v107 = v102;
      }

      else
      {
        v107 = v106;
      }

      if (v107)
      {
        memmove((*v56 + v105), v97, v107);
        v105 = *(v56 + 16);
      }

      v105 += v107;
      *(v56 + 16) = v105;
      v97 += v107;
      v83 = v102 > v106;
      v102 -= v107;
    }

    while (v83);
    v99 = *(v56 + 32);
    v104 = *(a2 + 4);
    if (v99)
    {
      v100 = *v99;
      v103 = v99[1];
LABEL_151:
      v108 = v100 - v103;
      if (v100 - v103 >= v104)
      {
        v108 = v104;
      }

      v99[1] = v103 + v104;
      if (v100 > v103 && v108 != 0)
      {
        v105 = *(v56 + 16);
        v104 = v108;
        goto LABEL_184;
      }
    }

    else
    {
      do
      {
LABEL_184:
        v123 = *(v56 + 8) - v105;
        if (v123 < v104 + 1)
        {
          (*(v56 + 24))(v56, v104 + 2);
          v105 = *(v56 + 16);
          v123 = *(v56 + 8) - v105;
        }

        if (v123 >= v104)
        {
          v124 = v104;
        }

        else
        {
          v124 = v123;
        }

        if (v124)
        {
          memset((*v56 + v105), 48, v124);
          v105 = *(v56 + 16);
        }

        v105 += v124;
        *(v56 + 16) = v105;
        v83 = v104 > v123;
        v104 -= v124;
      }

      while (v83);
    }
  }

  v111 = v144[2];
  v110 = v144[3];
  if (v111 != v110)
  {
    v112 = v110 - v111;
    v113 = *(v56 + 32);
    if (v113)
    {
      v115 = *v113;
      v114 = v113[1];
      if (*v113 - v114 >= v112)
      {
        v116 = v112;
      }

      else
      {
        v116 = *v113 - v114;
      }

      v113[1] = v114 + v112;
      if (v115 > v114 && v116 != 0)
      {
        goto LABEL_172;
      }
    }

    else
    {
      v116 = v112;
LABEL_172:
      v120 = *(v56 + 16);
      do
      {
        v121 = *(v56 + 8) - v120;
        if (v121 < v116 + 1)
        {
          (*(v56 + 24))(v56, v116 + 2);
          v120 = *(v56 + 16);
          v121 = *(v56 + 8) - v120;
        }

        if (v121 >= v116)
        {
          v122 = v116;
        }

        else
        {
          v122 = v121;
        }

        if (v122)
        {
          memmove((*v56 + v120), v111, v122);
          v120 = *(v56 + 16);
        }

        v120 += v122;
        *(v56 + 16) = v120;
        v111 += v122;
        v83 = v116 > v121;
        v116 -= v122;
      }

      while (v83);
    }
  }

  result = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v56, v142, v140);
  if (SHIBYTE(__p[2]) < 0)
  {
    v119 = result;
    operator delete(__p[0]);
    return v119;
  }

  return result;
}

void sub_297A74098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    v29 = a1;
    operator delete(__p);
    a1 = v29;
  }

  _Unwind_Resume(a1);
}

uint64_t std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, _BYTE *a7, size_t a8)
{
  v8 = a8;
  v12 = HIDWORD(a5);
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
  v15 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v14, SHIDWORD(a5));
  v16 = v15;
  v17 = a7 - a1;
  v18 = *(v15 + 32);
  if (v18)
  {
    v19 = *v18;
    v20 = v18[1];
    if (*v18 - v20 >= v17)
    {
      v21 = a7 - a1;
    }

    else
    {
      v21 = *v18 - v20;
    }

    v22 = v20 + v17;
    v18[1] = v22;
    if (v19 <= v20 || v21 == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v21 = a7 - a1;
  }

  v24 = *(v15 + 16);
  do
  {
    v26 = *(v16 + 8) - v24;
    if (v26 < v21 + 1)
    {
      (*(v16 + 24))(v16, v21 + 2);
      v24 = *(v16 + 16);
      v26 = *(v16 + 8) - v24;
    }

    if (v26 >= v21)
    {
      v27 = v21;
    }

    else
    {
      v27 = v26;
    }

    if (v27)
    {
      memmove((*v16 + v24), a1, v27);
      v24 = *(v16 + 16);
    }

    v24 += v27;
    *(v16 + 16) = v24;
    a1 += v27;
    v25 = v21 > v26;
    v21 -= v27;
  }

  while (v25);
  v18 = *(v16 + 32);
  if (!v18)
  {
    goto LABEL_40;
  }

  v19 = *v18;
  v22 = v18[1];
LABEL_30:
  v28 = v19 - v22;
  if (v19 - v22 >= v8)
  {
    v28 = v8;
  }

  v25 = v19 > v22;
  v29 = v22 + v8;
  v18[1] = v29;
  if (!v25 || v28 == 0)
  {
    v31 = a2 - a7;
    goto LABEL_49;
  }

  v24 = *(v16 + 16);
  v8 = v28;
  do
  {
LABEL_40:
    v32 = *(v16 + 8) - v24;
    if (v32 < v8 + 1)
    {
      (*(v16 + 24))(v16, v8 + 2);
      v24 = *(v16 + 16);
      v32 = *(v16 + 8) - v24;
    }

    if (v32 >= v8)
    {
      v33 = v8;
    }

    else
    {
      v33 = v32;
    }

    if (v33)
    {
      memset((*v16 + v24), 48, v33);
      v24 = *(v16 + 16);
    }

    v24 += v33;
    *(v16 + 16) = v24;
    v25 = v8 > v32;
    v8 -= v33;
  }

  while (v25);
  v18 = *(v16 + 32);
  v31 = a2 - a7;
  if (!v18)
  {
    goto LABEL_61;
  }

  v19 = *v18;
  v29 = v18[1];
LABEL_49:
  v34 = v19 - v29;
  if (v19 - v29 >= v31)
  {
    v34 = v31;
  }

  v18[1] = v29 + v31;
  if (v19 > v29 && v34 != 0)
  {
    v24 = *(v16 + 16);
    v31 = v34;
    do
    {
LABEL_61:
      v37 = *(v16 + 8) - v24;
      if (v37 < v31 + 1)
      {
        (*(v16 + 24))(v16, v31 + 2);
        v24 = *(v16 + 16);
        v37 = *(v16 + 8) - v24;
      }

      if (v37 >= v31)
      {
        v38 = v31;
      }

      else
      {
        v38 = v37;
      }

      if (v38)
      {
        memmove((*v16 + v24), a7, v38);
        v24 = *(v16 + 16);
      }

      v24 += v38;
      *(v16 + 16) = v24;
      a7 += v38;
      v25 = v31 > v37;
      v31 -= v38;
    }

    while (v25);
  }

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v16, v13, v12);
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 **a4@<X8>)
{
  v4 = a3;
  a4[1] = 0xAAAAAAAAAAAAAAAALL;
  a4[2] = 0xAAAAAAAAAAAAAAAALL;
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
LABEL_3:
      v8 = result - 2;
      result = memchr((result - 5), 112, 3uLL);
      if (result)
      {
        v9 = result;
      }

      else
      {
        v9 = v8;
      }

      a4[1] = v7;
      a4[2] = v9;
      v7 = v9;
      if (v9 == v4)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    result = MEMORY[0x29C27ACD0](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
      goto LABEL_3;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  do
  {
LABEL_10:
    v10 = *v4;
    if ((v10 - 97) < 6)
    {
      LOBYTE(v10) = v10 - 32;
    }

    *v4++ = v10;
  }

  while (v4 != v7);
LABEL_13:
  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_floating_point[abi:ne200100]<double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t a2, unint64_t a3, double a4)
{
  v5 = a2;
  v81[130] = *MEMORY[0x29EDCA608];
  v7 = a2 >> 8;
  v8 = fabs(a4);
  memset(v81, 170, 0x410uLL);
  if (a3 == -1)
  {
    v10 = 1074;
  }

  else
  {
    v10 = a3;
  }

  v79 = v10;
  v80 = 0;
  if (v10 < 1075)
  {
    v81[0] = v10 + 316;
    if ((v10 + 316) < 0x401)
    {
      v11 = &v81[2];
    }

    else
    {
      v11 = operator new(v10 + 316);
    }
  }

  else
  {
    v79 = 1074;
    v80 = v10 - 1074;
    v81[0] = 1390;
    v11 = operator new(0x56EuLL);
  }

  v81[1] = v11;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v76 = v12;
  *v77 = v12;
  std::__formatter::__format_buffer[abi:ne200100]<double,double>(&v79, a4 < 0.0, ((a3 & 0x80000000) == 0), (v5 >> 3) & 3, v7, &v76, v8);
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_28;
  }

  v13 = *(&v76 + 1);
  v14 = v77[1];
  if (*(&v76 + 1) != v77[1])
  {
    if ((BYTE1(v5) - 17) > 1u)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  ++v77[1];
  *v14 = 46;
  v15 = v77[0];
  v16 = v77[1] - 1;
  if (v77[0] != v77[1] - 1)
  {
    if (v77[0] + 1 == v16)
    {
      v18 = *v77[0];
      *v77[0] = *(v77[0] + 1);
      v15[1] = v18;
    }

    else
    {
      v17 = *(v77[1] - 1);
      memmove(v77[0] + 1, v77[0], v16 - v77[0]);
      *v15 = v17;
    }
  }

  v13 = v77[0];
  *(&v76 + 1) = v77[0]++;
  if ((BYTE1(v5) - 17) <= 1u)
  {
LABEL_18:
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

    if (v77[0] == v77[1])
    {
      v20 = v76 - v13;
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 + v19;
    v22 = v77[0] + ~v13;
    if (v22 < v21)
    {
      v80 += v21 - v22;
    }
  }

LABEL_28:
  if ((v5 & 0x40) != 0)
  {
    v37 = *a1;
    if ((*(a1 + 40) & 1) == 0)
    {
      MEMORY[0x29C27AC20](&v78);
      v38 = (a1 + 32);
      if (*(a1 + 40) == 1)
      {
        std::locale::operator=(v38, &v78);
      }

      else
      {
        std::locale::locale(v38, &v78);
        *(a1 + 40) = 1;
      }

      std::locale::~locale(&v78);
    }

    std::locale::locale(&v75, (a1 + 32));
    v40 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v37, &v79, &v76, &v75, v5, a3);
    std::locale::~locale(&v75);
    goto LABEL_74;
  }

  v23 = v77[1];
  v24 = v81[1];
  v25 = v77[1] - v81[1];
  v26 = v80;
  if (v77[1] + v80 - v81[1] < v5 >> 32)
  {
    v27 = *a1;
    if ((v5 & 7) == 4)
    {
      if (v81[1] != v76)
      {
        v28 = *v81[1];
        v29 = *(v27 + 32);
        if (!v29 || (v31 = *v29, v30 = v29[1], v29[1] = v30 + 1, v30 < v31))
        {
          v32 = *v27;
          v33 = *(v27 + 16);
          *(v27 + 16) = v33 + 1;
          *(v32 + v33) = v28;
          if (*(v27 + 16) == *(v27 + 8))
          {
            v34 = v27;
            (*(v27 + 24))(v27, 2);
            v27 = v34;
          }
        }

        ++v24;
        v23 = v77[1];
      }

      v5 = v5 & 0xFFFFFFFFFFFFFF00 | v5 & 0xB8 | 3;
      v35 = a3 & 0xFFFFFF00FFFFFFFFLL | 0x3000000000;
      if (!v26)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v35 = a3 & 0xFFFFFF00FFFFFFFFLL | (BYTE4(a3) << 32);
      if (!v80)
      {
LABEL_38:
        v36 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, v23 - v24, v27, v5, v35, v25);
LABEL_70:
        v40 = v36;
        goto LABEL_74;
      }
    }

    v36 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, v23, v27, v5, v35, v25, v77[0], v26);
    goto LABEL_70;
  }

  if (!v80 || (v39 = v77[0], v77[0] == v77[1]))
  {
    v40 = *a1;
    v47 = *(*a1 + 32);
    if (!v47)
    {
      goto LABEL_58;
    }

    v48 = *v47;
    v49 = v47[1];
    v50 = &v25[v49];
    if (*v47 - v49 < v25)
    {
      v25 = (*v47 - v49);
    }

    v47[1] = v50;
    if (v48 > v49 && v25 != 0)
    {
LABEL_58:
      v52 = *(v40 + 16);
      do
      {
        v54 = *(v40 + 8) - v52;
        if (v54 < (v25 + 1))
        {
          (*(v40 + 24))(v40, v25 + 2);
          v52 = *(v40 + 16);
          v54 = *(v40 + 8) - v52;
        }

        if (v54 >= v25)
        {
          v55 = v25;
        }

        else
        {
          v55 = v54;
        }

        if (v55)
        {
          memmove((*v40 + v52), v24, v55);
          v52 = *(v40 + 16);
        }

        v52 += v55;
        *(v40 + 16) = v52;
        v24 += v55;
        v53 = v25 > v54;
        v25 -= v55;
      }

      while (v53);
      v47 = *(v40 + 32);
      if (!v47)
      {
        goto LABEL_88;
      }

      v48 = *v47;
      v50 = v47[1];
    }

    v58 = v48 - v50;
    if (v48 - v50 >= v26)
    {
      v58 = v26;
    }

    v47[1] = &v50[v26];
    if (v48 <= v50 || v58 == 0)
    {
      goto LABEL_74;
    }

    v52 = *(v40 + 16);
    v26 = v58;
    do
    {
LABEL_88:
      v60 = *(v40 + 8) - v52;
      if (v60 < v26 + 1)
      {
        (*(v40 + 24))(v40, v26 + 2);
        v52 = *(v40 + 16);
        v60 = *(v40 + 8) - v52;
      }

      if (v60 >= v26)
      {
        v61 = v26;
      }

      else
      {
        v61 = v60;
      }

      if (v61)
      {
        memset((*v40 + v52), 48, v61);
        v52 = *(v40 + 16);
      }

      v52 += v61;
      *(v40 + 16) = v52;
      v53 = v26 > v60;
      v26 -= v61;
    }

    while (v53);
    goto LABEL_74;
  }

  v40 = *a1;
  v41 = v77[0] - v81[1];
  v42 = *(*a1 + 32);
  if (v42)
  {
    v43 = *v42;
    v44 = v42[1];
    if (*v42 - v44 >= v41)
    {
      v45 = v77[0] - v81[1];
    }

    else
    {
      v45 = (*v42 - v44);
    }

    v46 = &v41[v44];
    v42[1] = &v41[v44];
    if (v43 <= v44 || !v45)
    {
      goto LABEL_108;
    }
  }

  else
  {
    v45 = v77[0] - v81[1];
  }

  v62 = *(v40 + 16);
  do
  {
    v63 = *(v40 + 8) - v62;
    if (v63 < (v45 + 1))
    {
      (*(v40 + 24))(v40, v45 + 2);
      v62 = *(v40 + 16);
      v63 = *(v40 + 8) - v62;
    }

    if (v63 >= v45)
    {
      v64 = v45;
    }

    else
    {
      v64 = v63;
    }

    if (v64)
    {
      memmove((*v40 + v62), v24, v64);
      v62 = *(v40 + 16);
    }

    v62 += v64;
    *(v40 + 16) = v62;
    v24 += v64;
    v53 = v45 > v63;
    v45 -= v64;
  }

  while (v53);
  v42 = *(v40 + 32);
  if (!v42)
  {
    goto LABEL_115;
  }

  v43 = *v42;
  v46 = v42[1];
LABEL_108:
  v65 = &v46[v26];
  v42[1] = &v46[v26];
  v66 = v43 >= v46;
  v67 = v43 - v46;
  if (v67 == 0 || !v66)
  {
    v70 = v23 - v39;
    goto LABEL_124;
  }

  if (v67 < v26)
  {
    v26 = v67;
  }

  v62 = *(v40 + 16);
  do
  {
LABEL_115:
    v68 = *(v40 + 8) - v62;
    if (v68 < v26 + 1)
    {
      (*(v40 + 24))(v40, v26 + 2);
      v62 = *(v40 + 16);
      v68 = *(v40 + 8) - v62;
    }

    if (v68 >= v26)
    {
      v69 = v26;
    }

    else
    {
      v69 = v68;
    }

    if (v69)
    {
      memset((*v40 + v62), 48, v69);
      v62 = *(v40 + 16);
    }

    v62 += v69;
    *(v40 + 16) = v62;
    v53 = v26 > v68;
    v26 -= v69;
  }

  while (v53);
  v42 = *(v40 + 32);
  v70 = v23 - v39;
  if (!v42)
  {
    goto LABEL_133;
  }

  v43 = *v42;
  v65 = v42[1];
LABEL_124:
  v71 = v43 - v65;
  if (v43 - v65 >= v70)
  {
    v71 = v70;
  }

  v42[1] = &v65[v70];
  if (v43 > v65 && v71 != 0)
  {
    v62 = *(v40 + 16);
    v70 = v71;
    do
    {
LABEL_133:
      v73 = *(v40 + 8) - v62;
      if (v73 < v70 + 1)
      {
        (*(v40 + 24))(v40, v70 + 2);
        v62 = *(v40 + 16);
        v73 = *(v40 + 8) - v62;
      }

      if (v73 >= v70)
      {
        v74 = v70;
      }

      else
      {
        v74 = v73;
      }

      if (v74)
      {
        memmove((*v40 + v62), v39, v74);
        v62 = *(v40 + 16);
      }

      v62 += v74;
      *(v40 + 16) = v62;
      v39 += v74;
      v53 = v70 > v73;
      v70 -= v74;
    }

    while (v53);
  }

LABEL_74:
  if (v81[0] >= 0x401uLL)
  {
    operator delete(v81[1]);
  }

  v56 = *MEMORY[0x29EDCA608];
  return v40;
}

void sub_297A74BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, void *__p)
{
  if (a18 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__formatter::__format_buffer[abi:ne200100]<double,double>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, char *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v8 = *(a1 + 2);
  if (a2)
  {
    v9 = 45;
  }

  else if (a4 == 2)
  {
    v9 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v9 = 32;
  }

  *v8++ = v9;
LABEL_8:
  if (a5 <= 14)
  {
    if (a5 > 11)
    {
      if (a5 == 12)
      {
        if (a3)
        {
          v24 = *a1;
        }

        else
        {
          v24 = 0xFFFFFFFFLL;
        }

        return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,double>(a1, v24, v8, a6);
      }

      else if (a5 == 13)
      {
        v10 = *a1;
        *a6 = v8;
        result = MEMORY[0x29C27AC70](v8, *(a1 + 2) + *(a1 + 1), 1, v10);
        *(a6 + 24) = result;
        v12 = v8 + 1;
        if (v8[1] == 46)
        {
          *(a6 + 8) = v12;
          v13 = result - v8 - 2;
          if (v13 < 4)
          {
LABEL_19:
            *(a6 + 16) = result;
          }

          else
          {
            if (v13 >= 6)
            {
              v13 = 6;
            }

            v14 = -v13;
            while (*(result + v14) != 101)
            {
              if (++v14 == -3)
              {
                goto LABEL_19;
              }
            }

            *(a6 + 16) = result + v14;
          }
        }

        else
        {
          *(a6 + 8) = result;
          *(a6 + 16) = v12;
        }
      }

      else
      {
        v30 = *a1;
        *a6 = v8;
        result = MEMORY[0x29C27AC70](v8, *(a1 + 2) + *(a1 + 1), 1, v30);
        *(a6 + 24) = result;
        v31 = v8 + 1;
        if (v8[1] == 46)
        {
          *(a6 + 8) = v31;
          v32 = result - v8 - 2;
          if (v32 < 4)
          {
LABEL_68:
            v31 = result;
          }

          else
          {
            if (v32 >= 6)
            {
              v32 = 6;
            }

            v33 = -v32;
            while (*(result + v33) != 101)
            {
              if (++v33 == -3)
              {
                goto LABEL_68;
              }
            }

            v31 = (result + v33);
          }
        }

        else
        {
          *(a6 + 8) = result;
        }

        *(a6 + 16) = v31;
        *v31 = 69;
      }

      return result;
    }

    if (!a5)
    {
      if (a3)
      {
        v22 = *a1;
        a1[1] = 0;
        *(a6 + 8) = 0xAAAAAAAAAAAAAAAALL;
        *(a6 + 16) = 0xAAAAAAAAAAAAAAAALL;
        *a6 = v8;
        result = MEMORY[0x29C27AC70](v8, *(a1 + 2) + *(a1 + 1), 3, v22);
        *(a6 + 24) = result;
        v18 = v8 + 1;
        if (v8 + 1 != result)
        {
          v19 = result - v18;
          if (result - v18 >= 4)
          {
            v23 = 6;
            if (v19 < 6)
            {
              v23 = result - v18;
            }

            v21 = -v23;
            while (*(result + v21) != 101)
            {
              if (++v21 == -3)
              {
                goto LABEL_57;
              }
            }

LABEL_89:
            v46 = result + v21;
            if (*v18 != 46)
            {
              v18 = result;
            }

            *(a6 + 8) = v18;
            *(a6 + 16) = v46;
            return result;
          }

          goto LABEL_57;
        }

        goto LABEL_72;
      }

      *a6 = v8;
      v36 = std::to_chars(v8, (*(a1 + 2) + *(a1 + 1)), a3, a7);
      v37 = v36;
      *(a6 + 24) = v36;
      v38 = v36 - v8;
      if (v36 - v8 < 4)
      {
LABEL_81:
        v40 = v36;
      }

      else
      {
        if (v38 >= 6)
        {
          v38 = 6;
        }

        v39 = -v38;
        while (*(v36 + v39) != 101)
        {
          if (++v39 == -3)
          {
            goto LABEL_81;
          }
        }

        v40 = v36 + v39;
      }

      *(a6 + 16) = v40;
      result = memchr(v8 + 1, 46, v40 - (v8 + 1));
      if (result)
      {
        v47 = result;
      }

      else
      {
        v47 = v40;
      }

      if (v47 == v40)
      {
        v47 = v37;
      }

      *(a6 + 8) = v47;
      return result;
    }

    if (a3)
    {
      v34 = *a1;
      *a6 = v8;
      v35 = (a6 + 24);
      if (v34 != -1)
      {
        result = MEMORY[0x29C27AC70](v8, *(a1 + 2) + *(a1 + 1), 4);
LABEL_84:
        *v35 = result;
        v43 = v8[1];
        v42 = v8 + 1;
        if (v43 == 46)
        {
          v44 = result - 2;
          v45 = memchr((result - 6), 112, 4uLL);
          result = v42;
          if (v45)
          {
            v42 = v45;
          }

          else
          {
            v42 = v44;
          }
        }

        *(a6 + 8) = result;
        *(a6 + 16) = v42;
        return result;
      }
    }

    else
    {
      *a6 = v8;
      v35 = (a6 + 24);
      v41 = *(a1 + 2) + *(a1 + 1);
    }

    result = std::to_chars();
    goto LABEL_84;
  }

  if ((a5 - 15) < 2)
  {
    v15 = *a1;
    *a6 = v8;
    result = MEMORY[0x29C27AC70](v8, *(a1 + 2) + *(a1 + 1), 2, v15);
    *(a6 + 16) = result;
    *(a6 + 24) = result;
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *(a6 + 8) = result - v16;
    return result;
  }

  if (a5 == 17)
  {
    v17 = *a1;
    a1[1] = 0;
    *(a6 + 8) = 0xAAAAAAAAAAAAAAAALL;
    *(a6 + 16) = 0xAAAAAAAAAAAAAAAALL;
    *a6 = v8;
    result = MEMORY[0x29C27AC70](v8, *(a1 + 2) + *(a1 + 1), 3, v17);
    *(a6 + 24) = result;
    v18 = v8 + 1;
    if (v8 + 1 != result)
    {
      v19 = result - v18;
      if (result - v18 >= 4)
      {
        v20 = 6;
        if (v19 < 6)
        {
          v20 = result - v18;
        }

        v21 = -v20;
        while (*(result + v21) != 101)
        {
          if (++v21 == -3)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_89;
      }

LABEL_57:
      *(a6 + 16) = result;
      v28 = result;
      result = memchr(v18, 46, v19);
      if (result)
      {
        v29 = result;
      }

      else
      {
        v29 = v28;
      }

      *(a6 + 8) = v29;
      return result;
    }

LABEL_72:
    *(a6 + 8) = result;
    *(a6 + 16) = result;
    return result;
  }

  v25 = *a1;
  a1[1] = 0;
  *(a6 + 8) = 0xAAAAAAAAAAAAAAAALL;
  *(a6 + 16) = 0xAAAAAAAAAAAAAAAALL;
  *a6 = v8;
  result = MEMORY[0x29C27AC70](v8, *(a1 + 2) + *(a1 + 1), 3, v25);
  *(a6 + 24) = result;
  v18 = v8 + 1;
  if (v8 + 1 == result)
  {
    goto LABEL_72;
  }

  v19 = result - v18;
  if (result - v18 < 4)
  {
    goto LABEL_57;
  }

  v26 = 6;
  if (v19 < 6)
  {
    v26 = result - v18;
  }

  v27 = -v26;
  while (*(result + v27) != 101)
  {
    if (++v27 == -3)
    {
      goto LABEL_57;
    }
  }

  if (*v18 != 46)
  {
    v18 = result;
  }

  *(a6 + 8) = v18;
  *(a6 + 16) = result + v27;
  *(result + v27) = 69;
  return result;
}

uint64_t std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(uint64_t a1, uint64_t a2, void *a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  memset(__p, 170, 24);
  v143 = std::locale::use_facet(this, MEMORY[0x29EDC93F8]);
  (v143->__vftable[1].__on_zero_shared)(__p);
  v9 = a3[2];
  v10 = *a3;
  if (v9 >= a3[1])
  {
    v9 = a3[1];
  }

  v11 = v9 - v10;
  v144 = a3;
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    v12 = __p[1];
    if (!__p[1])
    {
      goto LABEL_59;
    }

    v15 = __p[0];
    v14 = *__p[0];
    v139 = v9 - v10;
    if ((v9 - v10) <= v14)
    {
      *__p[0] = 0;
      __p[1] = 0;
      v11 = v9 - v10;
      goto LABEL_59;
    }

    v137 = a5;
    v138 = a1;
    v16 = *__p[0];
    v13 = __p[0];
  }

  else
  {
    if (!HIBYTE(__p[2]))
    {
      goto LABEL_59;
    }

    if (v11 <= SLOBYTE(__p[0]))
    {
      LOBYTE(__p[0]) = 0;
      HIBYTE(__p[2]) = 0;
      goto LABEL_59;
    }

    v137 = a5;
    v138 = a1;
    v139 = v9 - v10;
    v13 = __p[0];
    v12 = __p[1];
    v14 = SLOBYTE(__p[0]);
    v15 = __p;
    v16 = __p[0];
  }

  v146 = 0uLL;
  v147 = 0;
  v17 = &v12[v13];
  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = __p + SHIBYTE(__p[2]);
  }

  else
  {
    v18 = v17;
  }

  v19 = v139 - v14;
  if (v139 <= v14)
  {
    v37 = 0;
    v36 = v16 + v19;
    a1 = v138;
    v11 = v139;
    a5 = v137;
    goto LABEL_56;
  }

  v20 = (v18 - 1);
  do
  {
    while (1)
    {
      v21 = HIBYTE(v147);
      if ((SHIBYTE(v147) & 0x80000000) == 0)
      {
        break;
      }

      v23 = (v147 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (*(&v146 + 1) != v23)
      {
        v23 = *(&v146 + 1);
        v29 = v146;
        goto LABEL_40;
      }

      if ((v147 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v22 = v146;
      if (v23 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_22;
      }

      v27 = 0;
      v26 = 0x7FFFFFFFFFFFFFF7;
LABEL_32:
      v28 = operator new(v26);
      v29 = v28;
      if (v23)
      {
        memmove(v28, v22, v23);
      }

      if (!v27)
      {
        operator delete(v22);
      }

      *&v146 = v29;
      v147 = v26 | 0x8000000000000000;
LABEL_40:
      *(&v146 + 1) = v23 + 1;
      v31 = &v29[v23];
      *v31 = v16;
      v31[1] = 0;
      if (v15 != v20)
      {
        goto LABEL_41;
      }

LABEL_15:
      v16 = *v15;
      v19 -= *v15;
      if (v19 <= 0)
      {
        goto LABEL_51;
      }
    }

    if (HIBYTE(v147) == 22)
    {
      v22 = &v146;
      v23 = 22;
LABEL_22:
      if (v23 + 1 > 2 * v23)
      {
        v24 = v23 + 1;
      }

      else
      {
        v24 = 2 * v23;
      }

      if ((v24 | 7) == 0x17)
      {
        v25 = 25;
      }

      else
      {
        v25 = (v24 | 7) + 1;
      }

      if (v24 >= 0x17)
      {
        v26 = v25;
      }

      else
      {
        v26 = 23;
      }

      v27 = v23 == 22;
      goto LABEL_32;
    }

    HIBYTE(v147) = (HIBYTE(v147) + 1) & 0x7F;
    v30 = &v146 + v21;
    *v30 = v16;
    v30[1] = 0;
    if (v15 == v20)
    {
      goto LABEL_15;
    }

LABEL_41:
    v32 = (v15 + 1);
    v33 = (v15 + 1);
    do
    {
      v34 = *v33;
      v33 = (v33 + 1);
      v16 = v34;
      if (v34)
      {
        v35 = 1;
      }

      else
      {
        v35 = v32 == v20;
      }

      v32 = v33;
    }

    while (!v35);
    v15 = (v33 - 1);
    v19 -= v16;
  }

  while (v19 > 0);
LABEL_51:
  v36 = v16 + v19;
  if (SHIBYTE(v147) < 0)
  {
    v38 = (v147 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    a3 = v144;
    a1 = v138;
    v11 = v139;
    a5 = v137;
    if (*(&v146 + 1) == v38)
    {
      if ((v147 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      __src = v146;
      v128 = 0x7FFFFFFFFFFFFFF7;
      if (v38 >= 0x3FFFFFFFFFFFFFF3)
      {
        v131 = 0;
      }

      else
      {
LABEL_205:
        if (v38 + 1 > 2 * v38)
        {
          v129 = v38 + 1;
        }

        else
        {
          v129 = 2 * v38;
        }

        if ((v129 | 7) == 0x17)
        {
          v130 = 25;
        }

        else
        {
          v130 = (v129 | 7) + 1;
        }

        if (v129 >= 0x17)
        {
          v128 = v130;
        }

        else
        {
          v128 = 23;
        }

        v131 = v38 == 22;
      }

      v132 = v128;
      v133 = operator new(v128);
      v134 = v133;
      if (v38)
      {
        memmove(v133, __src, v38);
      }

      if (!v131)
      {
        operator delete(__src);
      }

      *&v146 = v134;
      v147 = v132 | 0x8000000000000000;
    }

    else
    {
      v38 = *(&v146 + 1);
      v134 = v146;
    }

    *(&v146 + 1) = v38 + 1;
    v135 = &v134[v38];
    *v135 = v36;
    v135[1] = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v37 = HIBYTE(v147);
    a3 = v144;
    a1 = v138;
    v11 = v139;
    a5 = v137;
    if (HIBYTE(v147) == 22)
    {
      __src = &v146;
      v38 = 22;
      goto LABEL_205;
    }

LABEL_56:
    HIBYTE(v147) = (v37 + 1) & 0x7F;
    v39 = &v146 + v37;
    *v39 = v36;
    v39[1] = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
LABEL_57:
      operator delete(__p[0]);
    }
  }

  *__p = v146;
  __p[2] = v147;
LABEL_59:
  v40 = HIDWORD(a6);
  v41 = *(a2 + 16);
  v42 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    v42 = __p[1];
  }

  v43 = &v42[a3[3] - v41 + *(a2 + 4) - (v42 != 0)];
  v44 = a5 & 7;
  v45 = (a5 >> 32) - v43;
  if (a5 >> 32 <= v43)
  {
    v142 = 0;
    v45 = 0;
    LOBYTE(v46) = v40;
    if (v44 == 4)
    {
      goto LABEL_78;
    }

    goto LABEL_83;
  }

  if (v44 == 4)
  {
    LOBYTE(v46) = 48;
  }

  else
  {
    v46 = HIDWORD(a6);
  }

  if (v44 == 4)
  {
    v47 = 3;
  }

  else
  {
    v47 = v44;
  }

  if (v47 > 1)
  {
    if (v47 != 3)
    {
      v142 = v45 - (v45 >> 1);
      v45 >>= 1;
      if (v44 != 4)
      {
        goto LABEL_83;
      }

      goto LABEL_78;
    }

    goto LABEL_75;
  }

  if (!v47)
  {
LABEL_75:
    v142 = 0;
    if (v44 == 4)
    {
      goto LABEL_78;
    }

    goto LABEL_83;
  }

  v142 = v45;
  v45 = 0;
  if (v44 != 4)
  {
    goto LABEL_83;
  }

LABEL_78:
  if (v10 != v41)
  {
    v48 = *v41;
    v49 = *(a1 + 32);
    if (!v49 || (v51 = *v49, v50 = v49[1], v49[1] = v50 + 1, v50 < v51))
    {
      v52 = *a1;
      v53 = *(a1 + 16);
      *(a1 + 16) = v53 + 1;
      *(v52 + v53) = v48;
      if (*(a1 + 16) == *(a1 + 8))
      {
        v54 = v45;
        (*(a1 + 24))(a1, 2);
        v45 = v54;
      }
    }
  }

LABEL_83:
  v140 = v40 & 0xFFFFFF00 | v46;
  v55 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v45, v140);
  v56 = v55;
  if (v44 != 4)
  {
    v57 = *(a2 + 16);
    if (v10 != v57)
    {
      v58 = *v57;
      v59 = *(v55 + 32);
      if (!v59 || (v61 = *v59, v60 = v59[1], v59[1] = v60 + 1, v60 < v61))
      {
        v62 = *v55;
        v63 = *(v55 + 16);
        *(v55 + 16) = v63 + 1;
        *(v62 + v63) = v58;
        if (*(v55 + 16) == *(v55 + 8))
        {
          (*(v55 + 24))(v55, 2);
        }
      }
    }
  }

  v64 = SHIBYTE(__p[2]);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    v64 = __p[1];
    if (!__p[1])
    {
      goto LABEL_120;
    }

    v65 = __p[0];
LABEL_94:
    v66 = v64 + v65;
    v67 = (v143->__vftable[1].~facet_0)(v143);
    v68 = v65 + 1;
    while (1)
    {
      v70 = v66 - 1;
      v69 = *(v66 - 1);
      v71 = *(v56 + 32);
      if (v71)
      {
        v73 = *v71;
        v72 = v71[1];
        if (*v71 - v72 >= v69)
        {
          v74 = *(v66 - 1);
        }

        else
        {
          v74 = *v71 - v72;
        }

        v71[1] = v72 + v69;
        if (v73 <= v72 || v74 == 0)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v74 = *(v66 - 1);
      }

      v81 = *(v56 + 16);
      v82 = v10;
      do
      {
        v84 = *(v56 + 8) - v81;
        if (v84 < v74 + 1)
        {
          (*(v56 + 24))(v56, v74 + 2);
          v81 = *(v56 + 16);
          v84 = *(v56 + 8) - v81;
        }

        if (v84 >= v74)
        {
          v85 = v74;
        }

        else
        {
          v85 = v84;
        }

        if (v85)
        {
          memmove((*v56 + v81), v82, v85);
          v81 = *(v56 + 16);
        }

        v81 += v85;
        *(v56 + 16) = v81;
        v82 += v85;
        v83 = v74 > v84;
        v74 -= v85;
      }

      while (v83);
LABEL_104:
      if (v66 == v68)
      {
        goto LABEL_126;
      }

      v10 += *(v66 - 1);
      v76 = *(v56 + 32);
      if (v76)
      {
        v78 = *v76;
        v77 = v76[1];
        v76[1] = v77 + 1;
        --v66;
        if (v77 >= v78)
        {
          continue;
        }
      }

      v79 = *v56;
      v80 = *(v56 + 16);
      *(v56 + 16) = v80 + 1;
      *(v79 + v80) = v67;
      v66 = v70;
      if (*(v56 + 16) == *(v56 + 8))
      {
        (*(v56 + 24))(v56, 2);
        v66 = v70;
      }
    }
  }

  if (HIBYTE(__p[2]))
  {
    v65 = __p;
    goto LABEL_94;
  }

LABEL_120:
  v86 = *(v56 + 32);
  if (v86)
  {
    v88 = *v86;
    v87 = v86[1];
    if (*v86 - v87 >= v11)
    {
      v89 = v11;
    }

    else
    {
      v89 = *v86 - v87;
    }

    v86[1] = v87 + v11;
    if (v88 <= v87 || !v89)
    {
      goto LABEL_126;
    }
  }

  else
  {
    v89 = v11;
  }

  v125 = *(v56 + 16);
  do
  {
    v126 = *(v56 + 8) - v125;
    if (v126 < v89 + 1)
    {
      (*(v56 + 24))(v56, v89 + 2);
      v125 = *(v56 + 16);
      v126 = *(v56 + 8) - v125;
    }

    if (v126 >= v89)
    {
      v127 = v89;
    }

    else
    {
      v127 = v126;
    }

    if (v127)
    {
      memmove((*v56 + v125), v10, v127);
      v125 = *(v56 + 16);
    }

    v125 += v127;
    *(v56 + 16) = v125;
    v10 += v127;
    v83 = v89 > v126;
    v89 -= v127;
  }

  while (v83);
LABEL_126:
  if (v144[1] != v144[3])
  {
    v90 = (v143->__vftable[1].~facet)(v143);
    v91 = *(v56 + 32);
    if (!v91 || (v93 = *v91, v92 = v91[1], v91[1] = v92 + 1, v92 < v93))
    {
      v94 = *v56;
      v95 = *(v56 + 16);
      *(v56 + 16) = v95 + 1;
      *(v94 + v95) = v90;
      if (*(v56 + 16) == *(v56 + 8))
      {
        (*(v56 + 24))(v56, 2);
      }
    }

    v96 = v144[1];
    v97 = (v96 + 1);
    v98 = v144[2] - (v96 + 1);
    v99 = *(v56 + 32);
    if (v99)
    {
      v100 = *v99;
      v101 = v99[1];
      if (*v99 - v101 >= v98)
      {
        v102 = v98;
      }

      else
      {
        v102 = *v99 - v101;
      }

      v103 = v101 + v98;
      v99[1] = v103;
      if (v100 <= v101 || !v102)
      {
        v104 = *(a2 + 4);
        goto LABEL_151;
      }
    }

    else
    {
      v102 = v144[2] - (v96 + 1);
    }

    v105 = *(v56 + 16);
    do
    {
      v106 = *(v56 + 8) - v105;
      if (v106 < v102 + 1)
      {
        (*(v56 + 24))(v56, v102 + 2);
        v105 = *(v56 + 16);
        v106 = *(v56 + 8) - v105;
      }

      if (v106 >= v102)
      {
        v107 = v102;
      }

      else
      {
        v107 = v106;
      }

      if (v107)
      {
        memmove((*v56 + v105), v97, v107);
        v105 = *(v56 + 16);
      }

      v105 += v107;
      *(v56 + 16) = v105;
      v97 += v107;
      v83 = v102 > v106;
      v102 -= v107;
    }

    while (v83);
    v99 = *(v56 + 32);
    v104 = *(a2 + 4);
    if (v99)
    {
      v100 = *v99;
      v103 = v99[1];
LABEL_151:
      v108 = v100 - v103;
      if (v100 - v103 >= v104)
      {
        v108 = v104;
      }

      v99[1] = v103 + v104;
      if (v100 > v103 && v108 != 0)
      {
        v105 = *(v56 + 16);
        v104 = v108;
        goto LABEL_184;
      }
    }

    else
    {
      do
      {
LABEL_184:
        v123 = *(v56 + 8) - v105;
        if (v123 < v104 + 1)
        {
          (*(v56 + 24))(v56, v104 + 2);
          v105 = *(v56 + 16);
          v123 = *(v56 + 8) - v105;
        }

        if (v123 >= v104)
        {
          v124 = v104;
        }

        else
        {
          v124 = v123;
        }

        if (v124)
        {
          memset((*v56 + v105), 48, v124);
          v105 = *(v56 + 16);
        }

        v105 += v124;
        *(v56 + 16) = v105;
        v83 = v104 > v123;
        v104 -= v124;
      }

      while (v83);
    }
  }

  v111 = v144[2];
  v110 = v144[3];
  if (v111 != v110)
  {
    v112 = v110 - v111;
    v113 = *(v56 + 32);
    if (v113)
    {
      v115 = *v113;
      v114 = v113[1];
      if (*v113 - v114 >= v112)
      {
        v116 = v112;
      }

      else
      {
        v116 = *v113 - v114;
      }

      v113[1] = v114 + v112;
      if (v115 > v114 && v116 != 0)
      {
        goto LABEL_172;
      }
    }

    else
    {
      v116 = v112;
LABEL_172:
      v120 = *(v56 + 16);
      do
      {
        v121 = *(v56 + 8) - v120;
        if (v121 < v116 + 1)
        {
          (*(v56 + 24))(v56, v116 + 2);
          v120 = *(v56 + 16);
          v121 = *(v56 + 8) - v120;
        }

        if (v121 >= v116)
        {
          v122 = v116;
        }

        else
        {
          v122 = v121;
        }

        if (v122)
        {
          memmove((*v56 + v120), v111, v122);
          v120 = *(v56 + 16);
        }

        v120 += v122;
        *(v56 + 16) = v120;
        v111 += v122;
        v83 = v116 > v121;
        v116 -= v122;
      }

      while (v83);
    }
  }

  result = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v56, v142, v140);
  if (SHIBYTE(__p[2]) < 0)
  {
    v119 = result;
    operator delete(__p[0]);
    return v119;
  }

  return result;
}

void sub_297A75C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    v29 = a1;
    operator delete(__p);
    a1 = v29;
  }

  _Unwind_Resume(a1);
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 **a4@<X8>)
{
  v4 = a3;
  a4[1] = 0xAAAAAAAAAAAAAAAALL;
  a4[2] = 0xAAAAAAAAAAAAAAAALL;
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
LABEL_3:
      v8 = result - 2;
      result = memchr((result - 6), 112, 4uLL);
      if (result)
      {
        v9 = result;
      }

      else
      {
        v9 = v8;
      }

      a4[1] = v7;
      a4[2] = v9;
      v7 = v9;
      if (v9 == v4)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    result = MEMORY[0x29C27AC70](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
      goto LABEL_3;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  do
  {
LABEL_10:
    v10 = *v4;
    if ((v10 - 97) < 6)
    {
      LOBYTE(v10) = v10 - 32;
    }

    *v4++ = v10;
  }

  while (v4 != v7);
LABEL_13:
  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_floating_point[abi:ne200100]<long double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t a2, unint64_t a3, double a4)
{
  v5 = a2;
  v81[130] = *MEMORY[0x29EDCA608];
  v7 = a2 >> 8;
  v8 = fabs(a4);
  memset(v81, 170, 0x410uLL);
  if (a3 == -1)
  {
    v10 = 1074;
  }

  else
  {
    v10 = a3;
  }

  v79 = v10;
  v80 = 0;
  if (v10 < 1075)
  {
    v81[0] = v10 + 316;
    if ((v10 + 316) < 0x401)
    {
      v11 = &v81[2];
    }

    else
    {
      v11 = operator new(v10 + 316);
    }
  }

  else
  {
    v79 = 1074;
    v80 = v10 - 1074;
    v81[0] = 1390;
    v11 = operator new(0x56EuLL);
  }

  v81[1] = v11;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v76 = v12;
  *v77 = v12;
  std::__formatter::__format_buffer[abi:ne200100]<double,long double>(&v79, a4 < 0.0, ((a3 & 0x80000000) == 0), (v5 >> 3) & 3, v7, &v76, v8);
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_28;
  }

  v13 = *(&v76 + 1);
  v14 = v77[1];
  if (*(&v76 + 1) != v77[1])
  {
    if ((BYTE1(v5) - 17) > 1u)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  ++v77[1];
  *v14 = 46;
  v15 = v77[0];
  v16 = v77[1] - 1;
  if (v77[0] != v77[1] - 1)
  {
    if (v77[0] + 1 == v16)
    {
      v18 = *v77[0];
      *v77[0] = *(v77[0] + 1);
      v15[1] = v18;
    }

    else
    {
      v17 = *(v77[1] - 1);
      memmove(v77[0] + 1, v77[0], v16 - v77[0]);
      *v15 = v17;
    }
  }

  v13 = v77[0];
  *(&v76 + 1) = v77[0]++;
  if ((BYTE1(v5) - 17) <= 1u)
  {
LABEL_18:
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

    if (v77[0] == v77[1])
    {
      v20 = v76 - v13;
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 + v19;
    v22 = v77[0] + ~v13;
    if (v22 < v21)
    {
      v80 += v21 - v22;
    }
  }

LABEL_28:
  if ((v5 & 0x40) != 0)
  {
    v37 = *a1;
    if ((*(a1 + 40) & 1) == 0)
    {
      MEMORY[0x29C27AC20](&v78);
      v38 = (a1 + 32);
      if (*(a1 + 40) == 1)
      {
        std::locale::operator=(v38, &v78);
      }

      else
      {
        std::locale::locale(v38, &v78);
        *(a1 + 40) = 1;
      }

      std::locale::~locale(&v78);
    }

    std::locale::locale(&v75, (a1 + 32));
    v40 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v37, &v79, &v76, &v75, v5, a3);
    std::locale::~locale(&v75);
    goto LABEL_74;
  }

  v23 = v77[1];
  v24 = v81[1];
  v25 = v77[1] - v81[1];
  v26 = v80;
  if (v77[1] + v80 - v81[1] < v5 >> 32)
  {
    v27 = *a1;
    if ((v5 & 7) == 4)
    {
      if (v81[1] != v76)
      {
        v28 = *v81[1];
        v29 = *(v27 + 32);
        if (!v29 || (v31 = *v29, v30 = v29[1], v29[1] = v30 + 1, v30 < v31))
        {
          v32 = *v27;
          v33 = *(v27 + 16);
          *(v27 + 16) = v33 + 1;
          *(v32 + v33) = v28;
          if (*(v27 + 16) == *(v27 + 8))
          {
            v34 = v27;
            (*(v27 + 24))(v27, 2);
            v27 = v34;
          }
        }

        ++v24;
        v23 = v77[1];
      }

      v5 = v5 & 0xFFFFFFFFFFFFFF00 | v5 & 0xB8 | 3;
      v35 = a3 & 0xFFFFFF00FFFFFFFFLL | 0x3000000000;
      if (!v26)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v35 = a3 & 0xFFFFFF00FFFFFFFFLL | (BYTE4(a3) << 32);
      if (!v80)
      {
LABEL_38:
        v36 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, v23 - v24, v27, v5, v35, v25);
LABEL_70:
        v40 = v36;
        goto LABEL_74;
      }
    }

    v36 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, v23, v27, v5, v35, v25, v77[0], v26);
    goto LABEL_70;
  }

  if (!v80 || (v39 = v77[0], v77[0] == v77[1]))
  {
    v40 = *a1;
    v47 = *(*a1 + 32);
    if (!v47)
    {
      goto LABEL_58;
    }

    v48 = *v47;
    v49 = v47[1];
    v50 = &v25[v49];
    if (*v47 - v49 < v25)
    {
      v25 = (*v47 - v49);
    }

    v47[1] = v50;
    if (v48 > v49 && v25 != 0)
    {
LABEL_58:
      v52 = *(v40 + 16);
      do
      {
        v54 = *(v40 + 8) - v52;
        if (v54 < (v25 + 1))
        {
          (*(v40 + 24))(v40, v25 + 2);
          v52 = *(v40 + 16);
          v54 = *(v40 + 8) - v52;
        }

        if (v54 >= v25)
        {
          v55 = v25;
        }

        else
        {
          v55 = v54;
        }

        if (v55)
        {
          memmove((*v40 + v52), v24, v55);
          v52 = *(v40 + 16);
        }

        v52 += v55;
        *(v40 + 16) = v52;
        v24 += v55;
        v53 = v25 > v54;
        v25 -= v55;
      }

      while (v53);
      v47 = *(v40 + 32);
      if (!v47)
      {
        goto LABEL_88;
      }

      v48 = *v47;
      v50 = v47[1];
    }

    v58 = v48 - v50;
    if (v48 - v50 >= v26)
    {
      v58 = v26;
    }

    v47[1] = &v50[v26];
    if (v48 <= v50 || v58 == 0)
    {
      goto LABEL_74;
    }

    v52 = *(v40 + 16);
    v26 = v58;
    do
    {
LABEL_88:
      v60 = *(v40 + 8) - v52;
      if (v60 < v26 + 1)
      {
        (*(v40 + 24))(v40, v26 + 2);
        v52 = *(v40 + 16);
        v60 = *(v40 + 8) - v52;
      }

      if (v60 >= v26)
      {
        v61 = v26;
      }

      else
      {
        v61 = v60;
      }

      if (v61)
      {
        memset((*v40 + v52), 48, v61);
        v52 = *(v40 + 16);
      }

      v52 += v61;
      *(v40 + 16) = v52;
      v53 = v26 > v60;
      v26 -= v61;
    }

    while (v53);
    goto LABEL_74;
  }

  v40 = *a1;
  v41 = v77[0] - v81[1];
  v42 = *(*a1 + 32);
  if (v42)
  {
    v43 = *v42;
    v44 = v42[1];
    if (*v42 - v44 >= v41)
    {
      v45 = v77[0] - v81[1];
    }

    else
    {
      v45 = (*v42 - v44);
    }

    v46 = &v41[v44];
    v42[1] = &v41[v44];
    if (v43 <= v44 || !v45)
    {
      goto LABEL_108;
    }
  }

  else
  {
    v45 = v77[0] - v81[1];
  }

  v62 = *(v40 + 16);
  do
  {
    v63 = *(v40 + 8) - v62;
    if (v63 < (v45 + 1))
    {
      (*(v40 + 24))(v40, v45 + 2);
      v62 = *(v40 + 16);
      v63 = *(v40 + 8) - v62;
    }

    if (v63 >= v45)
    {
      v64 = v45;
    }

    else
    {
      v64 = v63;
    }

    if (v64)
    {
      memmove((*v40 + v62), v24, v64);
      v62 = *(v40 + 16);
    }

    v62 += v64;
    *(v40 + 16) = v62;
    v24 += v64;
    v53 = v45 > v63;
    v45 -= v64;
  }

  while (v53);
  v42 = *(v40 + 32);
  if (!v42)
  {
    goto LABEL_115;
  }

  v43 = *v42;
  v46 = v42[1];
LABEL_108:
  v65 = &v46[v26];
  v42[1] = &v46[v26];
  v66 = v43 >= v46;
  v67 = v43 - v46;
  if (v67 == 0 || !v66)
  {
    v70 = v23 - v39;
    goto LABEL_124;
  }

  if (v67 < v26)
  {
    v26 = v67;
  }

  v62 = *(v40 + 16);
  do
  {
LABEL_115:
    v68 = *(v40 + 8) - v62;
    if (v68 < v26 + 1)
    {
      (*(v40 + 24))(v40, v26 + 2);
      v62 = *(v40 + 16);
      v68 = *(v40 + 8) - v62;
    }

    if (v68 >= v26)
    {
      v69 = v26;
    }

    else
    {
      v69 = v68;
    }

    if (v69)
    {
      memset((*v40 + v62), 48, v69);
      v62 = *(v40 + 16);
    }

    v62 += v69;
    *(v40 + 16) = v62;
    v53 = v26 > v68;
    v26 -= v69;
  }

  while (v53);
  v42 = *(v40 + 32);
  v70 = v23 - v39;
  if (!v42)
  {
    goto LABEL_133;
  }

  v43 = *v42;
  v65 = v42[1];
LABEL_124:
  v71 = v43 - v65;
  if (v43 - v65 >= v70)
  {
    v71 = v70;
  }

  v42[1] = &v65[v70];
  if (v43 > v65 && v71 != 0)
  {
    v62 = *(v40 + 16);
    v70 = v71;
    do
    {
LABEL_133:
      v73 = *(v40 + 8) - v62;
      if (v73 < v70 + 1)
      {
        (*(v40 + 24))(v40, v70 + 2);
        v62 = *(v40 + 16);
        v73 = *(v40 + 8) - v62;
      }

      if (v73 >= v70)
      {
        v74 = v70;
      }

      else
      {
        v74 = v73;
      }

      if (v74)
      {
        memmove((*v40 + v62), v39, v74);
        v62 = *(v40 + 16);
      }

      v62 += v74;
      *(v40 + 16) = v62;
      v39 += v74;
      v53 = v70 > v73;
      v70 -= v74;
    }

    while (v53);
  }

LABEL_74:
  if (v81[0] >= 0x401uLL)
  {
    operator delete(v81[1]);
  }

  v56 = *MEMORY[0x29EDCA608];
  return v40;
}

void sub_297A764CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, void *__p)
{
  if (a18 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__formatter::__format_buffer[abi:ne200100]<double,long double>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, char *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v8 = *(a1 + 2);
  if (a2)
  {
    v9 = 45;
  }

  else if (a4 == 2)
  {
    v9 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v9 = 32;
  }

  *v8++ = v9;
LABEL_8:
  if (a5 <= 14)
  {
    if (a5 > 11)
    {
      if (a5 == 12)
      {
        if (a3)
        {
          v24 = *a1;
        }

        else
        {
          v24 = 0xFFFFFFFFLL;
        }

        return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,long double>(a1, v24, v8, a6);
      }

      else if (a5 == 13)
      {
        v10 = *a1;
        *a6 = v8;
        result = MEMORY[0x29C27ACA0](v8, *(a1 + 2) + *(a1 + 1), 1, v10);
        *(a6 + 24) = result;
        v12 = v8 + 1;
        if (v8[1] == 46)
        {
          *(a6 + 8) = v12;
          v13 = result - v8 - 2;
          if (v13 < 4)
          {
LABEL_19:
            *(a6 + 16) = result;
          }

          else
          {
            if (v13 >= 6)
            {
              v13 = 6;
            }

            v14 = -v13;
            while (*(result + v14) != 101)
            {
              if (++v14 == -3)
              {
                goto LABEL_19;
              }
            }

            *(a6 + 16) = result + v14;
          }
        }

        else
        {
          *(a6 + 8) = result;
          *(a6 + 16) = v12;
        }
      }

      else
      {
        v30 = *a1;
        *a6 = v8;
        result = MEMORY[0x29C27ACA0](v8, *(a1 + 2) + *(a1 + 1), 1, v30);
        *(a6 + 24) = result;
        v31 = v8 + 1;
        if (v8[1] == 46)
        {
          *(a6 + 8) = v31;
          v32 = result - v8 - 2;
          if (v32 < 4)
          {
LABEL_68:
            v31 = result;
          }

          else
          {
            if (v32 >= 6)
            {
              v32 = 6;
            }

            v33 = -v32;
            while (*(result + v33) != 101)
            {
              if (++v33 == -3)
              {
                goto LABEL_68;
              }
            }

            v31 = (result + v33);
          }
        }

        else
        {
          *(a6 + 8) = result;
        }

        *(a6 + 16) = v31;
        *v31 = 69;
      }

      return result;
    }

    if (!a5)
    {
      if (a3)
      {
        v22 = *a1;
        a1[1] = 0;
        *(a6 + 8) = 0xAAAAAAAAAAAAAAAALL;
        *(a6 + 16) = 0xAAAAAAAAAAAAAAAALL;
        *a6 = v8;
        result = MEMORY[0x29C27ACA0](v8, *(a1 + 2) + *(a1 + 1), 3, v22);
        *(a6 + 24) = result;
        v18 = v8 + 1;
        if (v8 + 1 != result)
        {
          v19 = result - v18;
          if (result - v18 >= 4)
          {
            v23 = 6;
            if (v19 < 6)
            {
              v23 = result - v18;
            }

            v21 = -v23;
            while (*(result + v21) != 101)
            {
              if (++v21 == -3)
              {
                goto LABEL_57;
              }
            }

LABEL_89:
            v46 = result + v21;
            if (*v18 != 46)
            {
              v18 = result;
            }

            *(a6 + 8) = v18;
            *(a6 + 16) = v46;
            return result;
          }

          goto LABEL_57;
        }

        goto LABEL_72;
      }

      *a6 = v8;
      v36 = std::to_chars(v8, (*(a1 + 2) + *(a1 + 1)), a3, a7);
      v37 = v36;
      *(a6 + 24) = v36;
      v38 = v36 - v8;
      if (v36 - v8 < 4)
      {
LABEL_81:
        v40 = v36;
      }

      else
      {
        if (v38 >= 6)
        {
          v38 = 6;
        }

        v39 = -v38;
        while (*(v36 + v39) != 101)
        {
          if (++v39 == -3)
          {
            goto LABEL_81;
          }
        }

        v40 = v36 + v39;
      }

      *(a6 + 16) = v40;
      result = memchr(v8 + 1, 46, v40 - (v8 + 1));
      if (result)
      {
        v47 = result;
      }

      else
      {
        v47 = v40;
      }

      if (v47 == v40)
      {
        v47 = v37;
      }

      *(a6 + 8) = v47;
      return result;
    }

    if (a3)
    {
      v34 = *a1;
      *a6 = v8;
      v35 = (a6 + 24);
      if (v34 != -1)
      {
        result = MEMORY[0x29C27ACA0](v8, *(a1 + 2) + *(a1 + 1), 4);
LABEL_84:
        *v35 = result;
        v43 = v8[1];
        v42 = v8 + 1;
        if (v43 == 46)
        {
          v44 = result - 2;
          v45 = memchr((result - 6), 112, 4uLL);
          result = v42;
          if (v45)
          {
            v42 = v45;
          }

          else
          {
            v42 = v44;
          }
        }

        *(a6 + 8) = result;
        *(a6 + 16) = v42;
        return result;
      }
    }

    else
    {
      *a6 = v8;
      v35 = (a6 + 24);
      v41 = *(a1 + 2) + *(a1 + 1);
    }

    result = std::to_chars();
    goto LABEL_84;
  }

  if ((a5 - 15) < 2)
  {
    v15 = *a1;
    *a6 = v8;
    result = MEMORY[0x29C27ACA0](v8, *(a1 + 2) + *(a1 + 1), 2, v15);
    *(a6 + 16) = result;
    *(a6 + 24) = result;
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *(a6 + 8) = result - v16;
    return result;
  }

  if (a5 == 17)
  {
    v17 = *a1;
    a1[1] = 0;
    *(a6 + 8) = 0xAAAAAAAAAAAAAAAALL;
    *(a6 + 16) = 0xAAAAAAAAAAAAAAAALL;
    *a6 = v8;
    result = MEMORY[0x29C27ACA0](v8, *(a1 + 2) + *(a1 + 1), 3, v17);
    *(a6 + 24) = result;
    v18 = v8 + 1;
    if (v8 + 1 != result)
    {
      v19 = result - v18;
      if (result - v18 >= 4)
      {
        v20 = 6;
        if (v19 < 6)
        {
          v20 = result - v18;
        }

        v21 = -v20;
        while (*(result + v21) != 101)
        {
          if (++v21 == -3)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_89;
      }

LABEL_57:
      *(a6 + 16) = result;
      v28 = result;
      result = memchr(v18, 46, v19);
      if (result)
      {
        v29 = result;
      }

      else
      {
        v29 = v28;
      }

      *(a6 + 8) = v29;
      return result;
    }

LABEL_72:
    *(a6 + 8) = result;
    *(a6 + 16) = result;
    return result;
  }

  v25 = *a1;
  a1[1] = 0;
  *(a6 + 8) = 0xAAAAAAAAAAAAAAAALL;
  *(a6 + 16) = 0xAAAAAAAAAAAAAAAALL;
  *a6 = v8;
  result = MEMORY[0x29C27ACA0](v8, *(a1 + 2) + *(a1 + 1), 3, v25);
  *(a6 + 24) = result;
  v18 = v8 + 1;
  if (v8 + 1 == result)
  {
    goto LABEL_72;
  }

  v19 = result - v18;
  if (result - v18 < 4)
  {
    goto LABEL_57;
  }

  v26 = 6;
  if (v19 < 6)
  {
    v26 = result - v18;
  }

  v27 = -v26;
  while (*(result + v27) != 101)
  {
    if (++v27 == -3)
    {
      goto LABEL_57;
    }
  }

  if (*v18 != 46)
  {
    v18 = result;
  }

  *(a6 + 8) = v18;
  *(a6 + 16) = result + v27;
  *(result + v27) = 69;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 **a4@<X8>)
{
  v4 = a3;
  a4[1] = 0xAAAAAAAAAAAAAAAALL;
  a4[2] = 0xAAAAAAAAAAAAAAAALL;
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
LABEL_3:
      v8 = result - 2;
      result = memchr((result - 6), 112, 4uLL);
      if (result)
      {
        v9 = result;
      }

      else
      {
        v9 = v8;
      }

      a4[1] = v7;
      a4[2] = v9;
      v7 = v9;
      if (v9 == v4)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    result = MEMORY[0x29C27ACA0](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
      goto LABEL_3;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  do
  {
LABEL_10:
    v10 = *v4;
    if ((v10 - 97) < 6)
    {
      LOBYTE(v10) = v10 - 32;
    }

    *v4++ = v10;
  }

  while (v4 != v7);
LABEL_13:
  *v7 = 80;
  return result;
}

uint64_t std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, char *a2, size_t a3, uint64_t *a4)
{
  v6 = *a4;
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  v9 = v7;
  if ((v7 & 0x80000000) == 0)
  {
    v10 = 0;
    v11 = a2;
    if (a3 && v9)
    {
      v12 = v9 & 0x7FFFFFFF;
      if (*a2 < 0)
      {
        v14 = a2;
      }

      else
      {
        v13 = 0;
        v11 = &a2[v12];
        v14 = &a2[v12 - 1];
        while (1)
        {
          if (a3 - 1 == v13)
          {
            v10 = a3;
            v11 = &a2[a3];
            goto LABEL_18;
          }

          if (v12 - 1 == v13)
          {
            break;
          }

          v15 = a2[++v13];
          if (v15 < 0)
          {
            v12 = v12 - v13 + 1;
            v14 = &a2[v13 - 1];
            goto LABEL_14;
          }
        }

        if ((*v11 & 0x80000000) == 0)
        {
          v10 = v9 & 0x7FFFFFFF;
          goto LABEL_18;
        }

        v12 = 1;
      }

LABEL_14:
      v10 = v14 - a2 + std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(v14, &a2[a3], v12, 0);
    }

LABEL_18:
    v17 = v11 - a2;

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v17, v6, v8, v9, v10);
  }

  return std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v6, v8, v7);
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  *&v16[5] = *MEMORY[0x29EDCA608];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    *&v15[15] = -1431655766;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v7;
    *v15 = v7;
    *v13 = v7;
    *&v13[16] = v7;
    v12 = 2;
    if (BYTE1(a3) == 2)
    {
      v8 = "0b";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v8 = "0B";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v10 = v16;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v9, a4, a5, v13, v10, v8, v12);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    memset(v13, 170, 19);
    v12 = 16;
    if (BYTE1(a3) == 6)
    {
      v8 = "0x";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v8 = "0X";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v10 = &v13[19];
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    memset(v13, 170, 21);
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v13, &v13[21], 0, 10);
    goto LABEL_19;
  }

  *&v13[8] = 0xAAAAAAAAAAAAAAAALL;
  *&v13[16] = 0xAAAAAAAAAAAAAAAALL;
  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  *v13 = 0xAAAAAAAAAAAAAAAALL;
  result = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v13, &v13[24], v5, 8);
LABEL_19:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
{
  v9 = a6;
  v10 = a3;
  v12 = a3;
  if (a5)
  {
    v13 = 45;
LABEL_7:
    *a6 = v13;
    v15 = a6 + 1;
    goto LABEL_8;
  }

  v14 = (a3 >> 3) & 3;
  if (v14 == 2)
  {
    v13 = 43;
    goto LABEL_7;
  }

  v15 = a6;
  if (v14 == 3)
  {
    v13 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v16 = *a8;
      if (*a8)
      {
        v17 = a8 + 1;
        do
        {
          *v15 = v16;
          v15 = (v15 + 1);
          v18 = *v17++;
          v16 = v18;
        }

        while (v18);
      }
    }
  }

  v19 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v15, a7, a1, a9);
  v87 = v10;
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_67;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x29C27AC20](v93);
    v20 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v20, v93);
    }

    else
    {
      std::locale::locale(v20, v93);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(v93);
  }

  std::locale::locale(&v90, (a2 + 32));
  v21 = std::locale::use_facet(&v90, MEMORY[0x29EDC93F8]);
  v22 = v19 - v15;
  std::locale::~locale(&v90);
  memset(v93, 170, sizeof(v93));
  (v21->__vftable[1].__on_zero_shared)(v93, v21);
  if ((SHIBYTE(v93[2].__locale_) & 0x8000000000000000) != 0)
  {
    locale = v93[0].__locale_;
    v24 = v93[1].__locale_;
    if (v93[1].__locale_ && v22 > *v93[0].__locale_)
    {
      v86 = v21;
      v25 = v93[0].__locale_;
      goto LABEL_26;
    }

    operator delete(v93[0].__locale_);
LABEL_67:
    v47 = v19;
    v48 = HIDWORD(v10);
    v49 = *a2;
    if ((v12 & 7) == 4)
    {
      v50 = v15 - v9;
      v51 = *(v49 + 32);
      v52 = v15 - v9;
      if (!v51 || ((v54 = *v51, v53 = v51[1], *v51 - v53 >= v50) ? (v52 = v15 - v9) : (v52 = *v51 - v53), (v51[1] = v53 + v50, v54 > v53) ? (v55 = v52 == 0) : (v55 = 1), !v55))
      {
        v63 = *(v49 + 16);
        do
        {
          v65 = *(v49 + 8) - v63;
          if (v65 < v52 + 1)
          {
            (*(v49 + 24))(v49, v52 + 2);
            v63 = *(v49 + 16);
            v65 = *(v49 + 8) - v63;
          }

          if (v65 >= v52)
          {
            v66 = v52;
          }

          else
          {
            v66 = v65;
          }

          if (v66)
          {
            memmove((*v49 + v63), v9, v66);
            v63 = *(v49 + 16);
          }

          v63 += v66;
          *(v49 + 16) = v63;
          v9 += v66;
          v64 = v52 > v65;
          v52 -= v66;
        }

        while (v64);
      }

      LODWORD(v10) = v87;
      v56 = a4;
      v57 = v87 & 0xF8 | 3;
      if (v48 >= v50)
      {
        v58 = v50;
      }

      else
      {
        v58 = v48;
      }

      v48 = (v48 - v58);
      v49 = *a2;
      v59 = 48;
    }

    else
    {
      v56 = a4;
      v59 = BYTE4(a4);
      v57 = v10;
      v15 = v9;
    }

    v60 = v48 << 32;
    v61 = v56 & 0xFFFFFF00FFFFFFFFLL | (v59 << 32);
    if ((v10 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v15, v47, v49, v10 & 0xFFFF0700 | v60 | v57, v61, std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v15, v47 - v15, v49, v60 | v10 & 0xFFFFFF00 | v57, v61, v47 - v15);
    }
  }

  if (!HIBYTE(v93[2].__locale_) || v22 <= SLOBYTE(v93[0].__locale_))
  {
    goto LABEL_67;
  }

  v86 = v21;
  locale = v93;
  v25 = v93[0].__locale_;
  v24 = v93[1].__locale_;
LABEL_26:
  v85 = *a2;
  v90.__locale_ = 0;
  v91 = 0;
  v92 = 0;
  v26 = v24 + v25;
  if (SHIBYTE(v93[2].__locale_) >= 0)
  {
    v27 = v93 + SHIBYTE(v93[2].__locale_);
  }

  else
  {
    v27 = v26;
  }

  v28 = *locale;
  v29 = *locale;
  v30 = v22 - v28;
  if (v22 <= v28)
  {
    v68 = 0;
    v67 = v29 + v30;
    v69 = v86;
    goto LABEL_99;
  }

  v84 = v19;
  v31 = v27 - 1;
  do
  {
    while (1)
    {
      v32 = HIBYTE(v92);
      if ((SHIBYTE(v92) & 0x80000000) == 0)
      {
        break;
      }

      v34 = (v92 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v91 != v34)
      {
        v40 = v90.__locale_;
        v34 = v91;
        goto LABEL_56;
      }

      if ((v92 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v33 = v90.__locale_;
      v89 = locale;
      if (v34 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_38;
      }

      v38 = 0;
      v37 = 0x7FFFFFFFFFFFFFF7;
LABEL_48:
      v39 = operator new(v37);
      v40 = v39;
      if (v34)
      {
        memmove(v39, v33, v34);
      }

      if (!v38)
      {
        operator delete(v33);
      }

      v90.__locale_ = v40;
      v92 = v37 | 0x8000000000000000;
      locale = v89;
LABEL_56:
      v91 = v34 + 1;
      v42 = v40 + v34;
      *v42 = v29;
      v42[1] = 0;
      if (locale != v31)
      {
        goto LABEL_57;
      }

LABEL_31:
      v29 = *locale;
      v30 -= *locale;
      if (v30 <= 0)
      {
        goto LABEL_95;
      }
    }

    if (HIBYTE(v92) == 22)
    {
      v89 = locale;
      v33 = &v90;
      v34 = 22;
LABEL_38:
      if (v34 + 1 > 2 * v34)
      {
        v35 = v34 + 1;
      }

      else
      {
        v35 = 2 * v34;
      }

      if ((v35 | 7) == 0x17)
      {
        v36 = 25;
      }

      else
      {
        v36 = (v35 | 7) + 1;
      }

      if (v35 >= 0x17)
      {
        v37 = v36;
      }

      else
      {
        v37 = 23;
      }

      v38 = v34 == 22;
      goto LABEL_48;
    }

    HIBYTE(v92) = (HIBYTE(v92) + 1) & 0x7F;
    v41 = &v90 + v32;
    *v41 = v29;
    v41[1] = 0;
    if (locale == v31)
    {
      goto LABEL_31;
    }

LABEL_57:
    v43 = (locale + 1);
    v44 = (locale + 1);
    do
    {
      v45 = *v44++;
      v29 = v45;
      if (v45)
      {
        v46 = 1;
      }

      else
      {
        v46 = v43 == v31;
      }

      v43 = v44;
    }

    while (!v46);
    locale = (v44 - 1);
    v30 -= v29;
  }

  while (v30 > 0);
LABEL_95:
  v67 = v29 + v30;
  if (SHIBYTE(v92) < 0)
  {
    v72 = (v92 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    LODWORD(v19) = v84;
    v69 = v86;
    if (v91 == v72)
    {
      if ((v92 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v71 = v90.__locale_;
      v70 = v86;
      if (v72 >= 0x3FFFFFFFFFFFFFF3)
      {
        v77 = 0;
        v76 = 0x7FFFFFFFFFFFFFF7;
      }

      else
      {
LABEL_103:
        if (v72 + 1 > 2 * v72)
        {
          v74 = v72 + 1;
        }

        else
        {
          v74 = 2 * v72;
        }

        if ((v74 | 7) == 0x17)
        {
          v75 = 25;
        }

        else
        {
          v75 = (v74 | 7) + 1;
        }

        if (v74 >= 0x17)
        {
          v76 = v75;
        }

        else
        {
          v76 = 23;
        }

        v77 = v72 == 22;
      }

      v78 = v76;
      v79 = operator new(v76);
      v73 = v79;
      if (v72)
      {
        memmove(v79, v71, v72);
      }

      if (!v77)
      {
        operator delete(v71);
      }

      v90.__locale_ = v73;
      v92 = v78 | 0x8000000000000000;
      v69 = v70;
    }

    else
    {
      v73 = v90.__locale_;
      v72 = v91;
    }

    v91 = v72 + 1;
  }

  else
  {
    v68 = HIBYTE(v92);
    LODWORD(v19) = v84;
    v69 = v86;
    if (HIBYTE(v92) == 22)
    {
      v70 = v86;
      v71 = &v90;
      v72 = 22;
      goto LABEL_103;
    }

LABEL_99:
    v72 = v68;
    HIBYTE(v92) = (v68 + 1) & 0x7F;
    v73 = &v90;
  }

  v80 = v73 + v72;
  *v80 = v67;
  v80[1] = 0;
  v81 = (v69->__vftable[1].~facet_0)(v69);
  result = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v85, v9, v15, v19, &v90, v81, v87, a4);
  if (SHIBYTE(v92) < 0)
  {
    v82 = result;
    operator delete(v90.__locale_);
    result = v82;
  }

  if (SHIBYTE(v93[2].__locale_) < 0)
  {
    v83 = result;
    operator delete(v93[0].__locale_);
    return v83;
  }

  return result;
}

void sub_297A774E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void std::__memberwise_copy_assign[abi:ne200100]<std::tuple<mipc::ErrorCode,std::string,std::shared_ptr<std::vector<unsigned char>>>,std::tuple<mipc::ErrorCode,std::string,std::shared_ptr<std::vector<unsigned char>>>,0ul,1ul,2ul>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  if (a1 != a2)
  {
    v5 = *(a2 + 31);
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      if ((*(a2 + 31) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v4, *(a2 + 8), *(a2 + 16));
        v8 = *(a2 + 32);
        v7 = *(a2 + 40);
        if (!v7)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v6 = *(a2 + 8);
        v4[2] = *(a2 + 24);
        *v4 = v6;
        v8 = *(a2 + 32);
        v7 = *(a2 + 40);
        if (!v7)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_14;
    }

    if (v5 >= 0)
    {
      v9 = (a2 + 8);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    if (v5 >= 0)
    {
      v10 = *(a2 + 31);
    }

    else
    {
      v10 = *(a2 + 16);
    }

    std::string::__assign_no_alias<false>(v4, v9, v10);
  }

  v8 = *(a2 + 32);
  v7 = *(a2 + 40);
  if (v7)
  {
LABEL_14:
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_15:
  v11 = *(a1 + 40);
  *(a1 + 32) = v8;
  *(a1 + 40) = v7;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);

    std::__shared_weak_count::__release_weak(v11);
  }
}

void *std::string::__assign_no_alias<true>(void *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 <= 0x800000000000001ELL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = 44;
    if (__len > 0x2C)
    {
      v7 = __len;
    }

    v8 = (v7 | 7) + 1;
    v5 = operator new(v8);
    memcpy(v5, a2, __len);
    __dst[1] = __len;
    __dst[2] = v8 | 0x8000000000000000;
    *__dst = v5;
  }

  else
  {
    *(__dst + 23) = __len;
    v5 = __dst;
    if (__len)
    {
      memmove(__dst, a2, __len);
      v5 = __dst;
    }
  }

  *(v5 + __len) = 0;
  return __dst;
}

void **std::string::__assign_no_alias<false>(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  v6 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 < __len - v6 + 1)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v6 - 1;
    v10 = a1;
    if ((v5 & 0x8000000000000000) != 0)
    {
      v10 = *a1;
    }

    v11 = 2 * v9;
    if (__len > 2 * v9)
    {
      v11 = __len;
    }

    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = v11 >= 0x17;
    v14 = 23;
    if (v13)
    {
      v14 = v12;
    }

    if (v9 <= 0x3FFFFFFFFFFFFFF2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFF7;
    }

    v16 = operator new(v15);
    v7 = v16;
    if (__len)
    {
      memcpy(v16, a2, __len);
    }

    if (v9 != 22)
    {
      operator delete(v10);
    }

    a1[1] = __len;
    a1[2] = (v15 | 0x8000000000000000);
    *a1 = v7;
  }

  else
  {
    v7 = *a1;
    a1[1] = __len;
    if (__len)
    {
      memmove(v7, a2, __len);
    }
  }

  *(v7 + __len) = 0;
  return a1;
}

void std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(size_t *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0;
  *v4 = &unk_2A1E64738;
  v5 = *a1;
  v4[4] = 0;
  v4[5] = 0;
  if (v5)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v5);
    v4[3] = v6;
    v7 = &v6[v5];
    v4[5] = &v6[v5];
    bzero(v6, v5);
    v4[4] = v7;
  }

  *a2 = v4 + 3;
  a2[1] = v4;
}

void sub_297A778B0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[1].__shared_owners_ = v4;
    operator delete(v4);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E64738;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>@<X0>(char **a1@<X1>, char **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x30uLL);
  v7 = result;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  v8 = result + 3;
  *result = &unk_2A1E64738;
  v9 = *a1;
  v10 = *a2;
  result[4] = 0;
  result[5] = 0;
  v11 = v10 - v9;
  if (v10 != v9)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    result = operator new(v10 - v9);
    v7[3] = result;
    v7[4] = result;
    v7[5] = result + v11;
    if (v11 < 0x20)
    {
      goto LABEL_8;
    }

    if ((result - v9) < 0x20)
    {
      goto LABEL_8;
    }

    v12 = result + (v11 & 0x7FFFFFFFFFFFFFE0);
    v13 = result + 2;
    v14 = (v9 + 16);
    v15 = v11 & 0x7FFFFFFFFFFFFFE0;
    do
    {
      v16 = *v14;
      *(v13 - 1) = *(v14 - 1);
      *v13 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 32;
    }

    while (v15);
    v9 += v11 & 0x7FFFFFFFFFFFFFE0;
    result = (result + (v11 & 0x7FFFFFFFFFFFFFE0));
    if (v11 != (v11 & 0x7FFFFFFFFFFFFFE0))
    {
LABEL_8:
      v12 = result;
      do
      {
        v17 = *v9++;
        *v12++ = v17;
      }

      while (v9 != v10);
    }

    v7[4] = v12;
  }

  *a3 = v8;
  a3[1] = v7;
  return result;
}

void sub_297A77A70(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[1].__shared_owners_ = v4;
    operator delete(v4);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void *std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,0>@<X0>(char **a1@<X1>, char **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x30uLL);
  v7 = result;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  v8 = result + 3;
  *result = &unk_2A1E64738;
  v9 = *a1;
  v10 = *a2;
  result[4] = 0;
  result[5] = 0;
  v11 = v10 - v9;
  if (v10 != v9)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    result = operator new(v10 - v9);
    v7[3] = result;
    v7[4] = result;
    v7[5] = result + v11;
    if (v11 < 0x20)
    {
      goto LABEL_8;
    }

    if ((result - v9) < 0x20)
    {
      goto LABEL_8;
    }

    v12 = result + (v11 & 0x7FFFFFFFFFFFFFE0);
    v13 = result + 2;
    v14 = (v9 + 16);
    v15 = v11 & 0x7FFFFFFFFFFFFFE0;
    do
    {
      v16 = *v14;
      *(v13 - 1) = *(v14 - 1);
      *v13 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 32;
    }

    while (v15);
    v9 += v11 & 0x7FFFFFFFFFFFFFE0;
    result = (result + (v11 & 0x7FFFFFFFFFFFFFE0));
    if (v11 != (v11 & 0x7FFFFFFFFFFFFFE0))
    {
LABEL_8:
      v12 = result;
      do
      {
        v17 = *v9++;
        *v12++ = v17;
      }

      while (v9 != v10);
    }

    v7[4] = v12;
  }

  *a3 = v8;
  a3[1] = v7;
  return result;
}

void sub_297A77BA8(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[1].__shared_owners_ = v4;
    operator delete(v4);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void mipc::Message::handle<(mipc::Error::Type)2>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*a2)
  {
    std::__memberwise_copy_assign[abi:ne200100]<std::tuple<mipc::ErrorCode,std::string,std::shared_ptr<std::vector<unsigned char>>>,std::tuple<mipc::ErrorCode,std::string,std::shared_ptr<std::vector<unsigned char>>>,0ul,1ul,2ul>(a1 + 32, a2);
    v6 = mipc::Message::sDeserializeErrHandler;
    v7 = *(a1 + 8);
    v11 = *a2;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
      v8 = *(a2 + 40);
      v13 = *(a2 + 32);
      v14 = v8;
      if (!v8)
      {
LABEL_5:
        v6(v7, &v11);
      }
    }

    else
    {
      __p = *(a2 + 8);
      v8 = *(a2 + 40);
      v13 = *(a2 + 32);
      v14 = v8;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    goto LABEL_5;
  }

  *a3 = *a2;
  v9 = (a3 + 1);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v9, *(a2 + 8), *(a2 + 16));
    v10 = *(a2 + 40);
    a3[4] = *(a2 + 32);
    a3[5] = v10;
    if (!v10)
    {
      return;
    }
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *(a2 + 8);
    a3[3] = *(a2 + 24);
    v10 = *(a2 + 40);
    a3[4] = *(a2 + 32);
    a3[5] = v10;
    if (!v10)
    {
      return;
    }
  }

  atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
}

void mipc::Message::handle<(mipc::Error::Type)2>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(a7 + 16) = v10;
  *(a7 + 32) = v10;
  *a7 = v10;
  v11 = *(a1 + 8);
  v12 = *a4;
  v13 = a4[1];
  v23 = v12;
  v24 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v30 = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v30 = 0;
  }

  v29 = v12;
  mipc::Error::Error<>(&v25, 2u, a2, v11, a3, &v29, a5, a6);
  v14 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = v24;
  *a7 = v25;
  *(a7 + 8) = v26;
  *(a7 + 24) = v27;
  v26 = 0uLL;
  *(a7 + 32) = v28;
  v27 = 0;
  v28 = 0uLL;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    if (*a7)
    {
LABEL_10:
      std::__memberwise_copy_assign[abi:ne200100]<std::tuple<mipc::ErrorCode,std::string,std::shared_ptr<std::vector<unsigned char>>>,std::tuple<mipc::ErrorCode,std::string,std::shared_ptr<std::vector<unsigned char>>>,0ul,1ul,2ul>(a1 + 32, a7);
      v16 = mipc::Message::sDeserializeErrHandler;
      v17 = *(a1 + 8);
      v19 = *(a1 + 32);
      if (*(a1 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
      }

      else
      {
        __p = *(a1 + 40);
      }

      v18 = *(a1 + 72);
      v21 = *(a1 + 64);
      v22 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      v16(v17, &v19);
    }
  }

  else if (*a7)
  {
    goto LABEL_10;
  }
}

void sub_297A77FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::Error::~Error(v9);
  _Unwind_Resume(a1);
}

void sub_297A77FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](v7 - 48);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result >= a4)
  {
    v15 = result[1];
    v16 = v15 - v8;
    if (v15 - v8 >= a4)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      v21 = v8 + v20;
      goto LABEL_29;
    }

    v17 = &__src[v16];
    if (v15 == v8)
    {
      v18 = result[1];
      v19 = v18;
      if (v17 == a3)
      {
        goto LABEL_28;
      }
    }

    else
    {
      result = memmove(*result, __src, v16);
      v18 = v6[1];
      v19 = v18;
      if (v17 == a3)
      {
        goto LABEL_28;
      }
    }

    v22 = &a3[v8] - &__src[v15];
    if (v22 >= 0x20)
    {
      v19 = v18;
      if (v8 + v18 - &__src[v15] >= 0x20)
      {
        v17 += v22 & 0xFFFFFFFFFFFFFFE0;
        v19 = (v18 + (v22 & 0xFFFFFFFFFFFFFFE0));
        v23 = (v18 + 16);
        v24 = &__src[v15 - v8 + 16];
        v25 = v22 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v26 = *v24;
          *(v23 - 1) = *(v24 - 1);
          *v23 = v26;
          v23 += 2;
          v24 += 32;
          v25 -= 32;
        }

        while (v25);
        if (v22 == (v22 & 0xFFFFFFFFFFFFFFE0))
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v19 = v18;
    }

    do
    {
      v27 = *v17++;
      *v19++ = v27;
    }

    while (v17 != a3);
LABEL_28:
    v21 = v19;
LABEL_29:
    v6[1] = v21;
    return result;
  }

  if (v8)
  {
    result[1] = v8;
    v9 = v8;
    v10 = a4;
    operator delete(v9);
    a4 = v10;
    v7 = 0;
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = 2 * v7;
  if (2 * v7 <= a4)
  {
    v11 = a4;
  }

  if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v11;
  }

  result = operator new(v12);
  v13 = result;
  *v6 = result;
  v6[1] = result;
  v6[2] = result + v12;
  if (__src != a3)
  {
    v14 = a3 - __src;
    result = memcpy(result, __src, v14);
    v13 += v14;
  }

  v6[1] = v13;
  return result;
}

void std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(void **a1, uint64_t a2, char *a3, unint64_t a4)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v8 = a1;
    if (a4 < 0x17)
    {
      goto LABEL_23;
    }

    if (a4 - 0x7FFFFFFFFFFFFFF8 >= 0x800000000000001ELL)
    {
      v9 = 22;
      v10 = a1;
      goto LABEL_8;
    }

    goto LABEL_36;
  }

  v11 = a1[2];
  v9 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (a4 > v9)
  {
    if (0x7FFFFFFFFFFFFFF8 - (v11 & 0x7FFFFFFFFFFFFFFFLL) >= a4 - v9)
    {
      v10 = *a1;
      if (v9 >= 0x3FFFFFFFFFFFFFF3)
      {
        v14 = 0x7FFFFFFFFFFFFFF7;
        v8 = operator new(0x7FFFFFFFFFFFFFF7uLL);
LABEL_21:
        operator delete(v10);
LABEL_22:
        a1[1] = 0;
        a1[2] = (v14 | 0x8000000000000000);
        *a1 = v8;
        goto LABEL_23;
      }

LABEL_8:
      v12 = 2 * v9;
      if (a4 > 2 * v9)
      {
        v12 = a4;
      }

      if ((v12 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v12 | 7) + 1;
      }

      if (v12 >= 0x17)
      {
        v14 = v13;
      }

      else
      {
        v14 = 23;
      }

      v8 = operator new(v14);
      if (v9 == 22)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

LABEL_36:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = a1;
  if ((v11 & 0x8000000000000000) != 0)
  {
    v8 = *a1;
  }

LABEL_23:
  if (a2 == a3)
  {
    v16 = v8;
  }

  else
  {
    v15 = &a3[-a2];
    if (&a3[-a2] < 0x20 || &v8[-a2] < 0x20)
    {
      v16 = v8;
      v17 = a2;
    }

    else
    {
      v16 = &v8[v15 & 0xFFFFFFFFFFFFFFE0];
      v17 = (a2 + (v15 & 0xFFFFFFFFFFFFFFE0));
      v18 = (a2 + 16);
      v19 = v8 + 16;
      v20 = v15 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 32;
      }

      while (v20);
      if (v15 == (v15 & 0xFFFFFFFFFFFFFFE0))
      {
        goto LABEL_33;
      }
    }

    do
    {
      v22 = *v17++;
      *v16++ = v22;
    }

    while (v17 != a3);
  }

LABEL_33:
  *v16 = 0;
  if (*(a1 + 23) < 0)
  {
    a1[1] = a4;
  }

  else
  {
    *(a1 + 23) = a4 & 0x7F;
  }
}

void *std::vector<mipc::mipc_byte_array_t<256ul,false>>::__emplace_back_slow_path<>(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = v2 - *a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3) + 1;
  if (v4 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - v1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = operator new(24 * v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[8 * (v3 >> 3)];
  v9 = &v7[24 * v6];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  v10 = v8 + 24;
  v11 = &v8[-v3];
  if (v1 != v2)
  {
    v12 = v1;
    v13 = v11;
    do
    {
      *v13 = *v12;
      *(v13 + 2) = v12[2];
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      v12 += 3;
      v13 += 24;
    }

    while (v12 != v2);
    do
    {
      v14 = *v1;
      if (*v1)
      {
        v1[1] = v14;
        operator delete(v14);
      }

      v1 += 3;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v11;
  *(a1 + 8) = v10;
  *(a1 + 16) = v9;
  if (v1)
  {
    operator delete(v1);
  }

  return v10;
}

uint64_t mipc::tlv<mipc::mipc_byte_array_t<256ul,false>,false>::deserialize(void **a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      v4[1] = v5;
      operator delete(v5);
    }

    operator delete(v4);
  }

  if (*a2)
  {
    if (*a2 == 0x10000000ELL)
    {
      return 0;
    }

    else
    {
      return *a2;
    }
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    v9 = operator new(0x18uLL);
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    v10 = *a1;
    *a1 = v9;
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        v10[1] = v11;
        operator delete(v11);
      }

      operator delete(v10);
      v9 = *a1;
    }

    if (v7)
    {
      if (v7 <= 0x100)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v9, v8, &v8[v7], v7);
        return 0;
      }

      else
      {
        return 0x100000010;
      }
    }

    else
    {
      return 0x100000003;
    }
  }
}

uint64_t mipc::tlv<mipc::mipc_byte_array_t<256ul,false>,true>::deserialize(void **a1, uint64_t a2, int a3)
{
  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      v6[1] = v7;
      operator delete(v7);
    }

    operator delete(v6);
  }

  if (*a2)
  {
    v8 = 0x10000000FLL;
    if (!a3)
    {
      v8 = 0;
    }

    if (*a2 == 0x10000000ELL)
    {
      return v8;
    }

    else
    {
      return *a2;
    }
  }

  else
  {
    v10 = *(a2 + 8);
    v11 = *(a2 + 16);
    v12 = operator new(0x18uLL);
    v12[1] = 0;
    v12[2] = 0;
    *v12 = 0;
    v13 = *a1;
    *a1 = v12;
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v13[1] = v14;
        operator delete(v14);
      }

      operator delete(v13);
      v12 = *a1;
    }

    if (v10)
    {
      if (v10 <= 0x100)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v12, v11, &v11[v10], v10);
        return 0;
      }

      else
      {
        return 0x100000010;
      }
    }

    else
    {
      return 0x100000003;
    }
  }
}

uint64_t mipc::tlv<mipc::mipc_byte_array_t<65535ul,false>,false>::deserialize(void ***a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      v4[1] = v5;
      operator delete(v5);
    }

    operator delete(v4);
  }

  if (*a2)
  {
    if (*a2 == 0x10000000ELL)
    {
      return 0;
    }

    else
    {
      return *a2;
    }
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    v9 = operator new(0x18uLL);
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    v10 = *a1;
    *a1 = v9;
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        v10[1] = v11;
        operator delete(v11);
      }

      operator delete(v10);
    }

    if (v7)
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(*a1, v8, &v8[v7], v7);
      return 0;
    }

    else
    {
      return 0x100000003;
    }
  }
}

double mipc::sim::Pin_Protect_Req::Pin_Protect_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1281;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E64788;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 80) = 1;
  return result;
}

{
  *(a1 + 8) = 1281;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E64788;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 80) = 1;
  return result;
}

void mipc::sim::Pin_Protect_Req::~Pin_Protect_Req(mipc::sim::Pin_Protect_Req *this)
{
  *this = &unk_2A1E64788;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete(v3);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  *this = &unk_2A1E85968;
  v6 = *(this + 9);
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  if (*(this + 63) < 0)
  {
LABEL_14:
    operator delete(*(this + 5));
  }

LABEL_15:
  v7 = *(this + 3);
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

{
  mipc::sim::Pin_Protect_Req::~Pin_Protect_Req(this);

  operator delete(v1);
}

void mipc::sim::Pin_Protect_Req::serialize(mipc::sim::Pin_Protect_Req *this@<X0>, uint64_t a2@<X8>)
{
  v5 = (this + 104);
  v4 = *(this + 13);
  if (v4)
  {
    v6 = *(v4 + 23);
    v7 = *(v4 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v8 = __CFADD__(v7 - 65531, 0x10000);
    v4 = (v7 + 12) & 0xFFF8;
    if (!v8)
    {
      v4 = 0;
    }
  }

  v9 = vceqzq_s64(*(this + 88));
  v10 = vbslq_s8(v9, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + v4 + vbicq_s8(xmmword_297DCA380, v9).i64[1] + 8 * (*(this + 14) != 0);
  v49[0] = operator new(v10);
  v50 = v49[0] + v10;
  bzero(v49[0], v10);
  v49[1] = v49[0] + v10;
  v48 = v49[0];
  v47 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v42, this, &v48);
  v11 = v45;
  *&__p[1] = *v43;
  __p[3] = v44;
  __p[0] = v42;
  v47 = v45;
  if (v42)
  {
    *a2 = v42;
    *(a2 + 8) = *&__p[1];
    v12 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v12;
    *(a2 + 32) = v11;
LABEL_83:
    *(a2 + 48) = 1;
    goto LABEL_84;
  }

  if (*(this + 11))
  {
    *v48 = 256;
    v13 = v48++;
    v13[1] = 1;
    v14 = v48++;
    *(v14 + 2) = **(this + 11);
    v48 += 2;
  }

  else if (!*(this + 4))
  {
    v15 = 0x10000000FLL;
    goto LABEL_12;
  }

  v15 = 0;
LABEL_12:
  v51 = 0;
  v52 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v15, 0x100u, &v51, "", 0, &v42);
  v16 = v52;
  if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    __p[0] = v42;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  __p[0] = v42;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_15:
    operator delete(__p[1]);
  }

LABEL_16:
  *&__p[1] = *v43;
  __p[3] = v44;
  HIBYTE(v44) = 0;
  LOBYTE(v43[0]) = 0;
  v17 = v45;
  v45 = 0uLL;
  v18 = *(&v47 + 1);
  v47 = v17;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v19 = *(&v45 + 1);
    v20 = __p[0];
    if (!*(&v45 + 1))
    {
LABEL_20:
      if ((SHIBYTE(v44) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_28:
      operator delete(v43[0]);
      if (v20)
      {
        goto LABEL_82;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v19 = *(&v45 + 1);
    v20 = __p[0];
    if (!*(&v45 + 1))
    {
      goto LABEL_20;
    }
  }

  if (atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_20;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (SHIBYTE(v44) < 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (v20)
  {
    goto LABEL_82;
  }

LABEL_29:
  if (*(this + 12))
  {
    *v48 = 257;
    v21 = v48++;
    v21[1] = 1;
    v22 = v48++;
    *(v22 + 2) = **(this + 12);
    v48 += 2;
  }

  else if (!*(this + 4))
  {
    v23 = 0x10000000FLL;
    goto LABEL_34;
  }

  v23 = 0;
LABEL_34:
  v51 = 0;
  v52 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v23, 0x101u, &v51, "", 0, &v42);
  v24 = v52;
  if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  __p[0] = v42;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v43;
  __p[3] = v44;
  HIBYTE(v44) = 0;
  LOBYTE(v43[0]) = 0;
  v25 = v45;
  v45 = 0uLL;
  v26 = *(&v47 + 1);
  v47 = v25;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = *(&v45 + 1);
  v28 = __p[0];
  if (*(&v45 + 1) && !atomic_fetch_add((*(&v45 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
    if (!v28)
    {
      goto LABEL_49;
    }

LABEL_82:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v47;
    goto LABEL_83;
  }

  if (v28)
  {
    goto LABEL_82;
  }

LABEL_49:
  mipc::Message::serializeTlv<mipc::mipc_string_t<16ul,false>,true>(&v42, this, v5, 0x102u, &v48);
  __p[0] = v42;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v43;
  __p[3] = v44;
  HIBYTE(v44) = 0;
  LOBYTE(v43[0]) = 0;
  v29 = v45;
  v45 = 0uLL;
  v30 = *(&v47 + 1);
  v47 = v29;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  v31 = *(&v45 + 1);
  v32 = __p[0];
  if (*(&v45 + 1) && !atomic_fetch_add((*(&v45 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  if (v32)
  {
    goto LABEL_82;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 14, 259, &v48, &v42);
  __p[0] = v42;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v43;
  __p[3] = v44;
  HIBYTE(v44) = 0;
  LOBYTE(v43[0]) = 0;
  v33 = v45;
  v45 = 0uLL;
  v34 = *(&v47 + 1);
  v47 = v33;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  v35 = *(&v45 + 1);
  v36 = __p[0];
  if (*(&v45 + 1) && !atomic_fetch_add((*(&v45 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  if (v36)
  {
    goto LABEL_82;
  }

  (*(*this + 32))(&v42, this, v49);
  __p[0] = v42;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v43;
  __p[3] = v44;
  HIBYTE(v44) = 0;
  LOBYTE(v43[0]) = 0;
  v37 = v45;
  v45 = 0uLL;
  v38 = *(&v47 + 1);
  v47 = v37;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  v39 = *(&v45 + 1);
  v40 = __p[0];
  if (*(&v45 + 1) && !atomic_fetch_add((*(&v45 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  if (v40)
  {
    goto LABEL_82;
  }

  *a2 = *v49;
  *(a2 + 16) = v50;
  v49[1] = 0;
  v50 = 0;
  v49[0] = 0;
  *(a2 + 48) = 0;
  v41 = *(&v47 + 1);
  if (*(&v47 + 1) && !atomic_fetch_add((*(&v47 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_84:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v49[0])
  {
    v49[1] = v49[0];
    operator delete(v49[0]);
  }
}