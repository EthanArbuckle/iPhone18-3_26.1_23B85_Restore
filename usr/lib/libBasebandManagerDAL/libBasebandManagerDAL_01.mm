void sub_297295694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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
      *(v6 - 2) = *&std::__itoa::__base_16_lut[2 * a3];
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
    MEMORY[0x29C26EB90](v95);
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

void sub_297296598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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
      *(v9 - 2) = *&std::__itoa::__base_16_lut[2 * a3];
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
  v87 = *MEMORY[0x29EDCA608];
  if ((LODWORD(a4) & 0x7FFFFFFFu) < 0x7F800000)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v86[15] = v8;
    v86[14] = v8;
    v9 = a2 >> 8;
    v10 = fabsf(a4);
    v86[13] = v8;
    v86[12] = v8;
    v86[11] = v8;
    v86[10] = v8;
    v86[9] = v8;
    v86[8] = v8;
    v86[7] = v8;
    v86[6] = v8;
    v86[5] = v8;
    v86[4] = v8;
    v86[3] = v8;
    v86[2] = v8;
    v86[1] = v8;
    v86[0] = v8;
    *__src = v8;
    if (a3 == -1)
    {
      v11 = 149;
    }

    else
    {
      v11 = a3;
    }

    v83 = v11;
    v84 = 0;
    if (v11 < 150)
    {
      __src[0] = (v11 + 45);
      if ((v11 + 45) >= 0x101)
      {
        v12 = v10;
        v13 = operator new(v11 + 45);
        v10 = v12;
        goto LABEL_10;
      }
    }

    else
    {
      v83 = 149;
      v84 = v11 - 149;
      __src[0] = 194;
    }

    v13 = v86;
LABEL_10:
    __src[1] = v13;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v80 = v14;
    *v81 = v14;
    std::__formatter::__format_buffer[abi:ne200100]<float,float>(&v83, a4 < 0.0, ((a3 & 0x80000000) == 0), (v5 >> 3) & 3, v9, &v80, v10);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    v15 = *(&v80 + 1);
    v16 = v81[1];
    if (*(&v80 + 1) == v81[1])
    {
      ++v81[1];
      *v16 = 46;
      v17 = v81[0];
      v18 = v81[1] - 1;
      if (v81[0] != v81[1] - 1)
      {
        if (v81[0] + 1 == v18)
        {
          v20 = *v81[0];
          *v81[0] = *(v81[0] + 1);
          v17[1] = v20;
        }

        else
        {
          v19 = *(v81[1] - 1);
          memmove(v81[0] + 1, v81[0], v18 - v81[0]);
          *v17 = v19;
        }
      }

      v15 = v81[0];
      *(&v80 + 1) = v81[0]++;
      if ((BYTE1(v5) - 17) > 1u)
      {
LABEL_29:
        if ((v5 & 0x40) != 0)
        {
          v39 = *a1;
          if ((*(a1 + 40) & 1) == 0)
          {
            MEMORY[0x29C26EB90](&v82);
            v40 = (a1 + 32);
            if (*(a1 + 40) == 1)
            {
              std::locale::operator=(v40, &v82);
            }

            else
            {
              std::locale::locale(v40, &v82);
              *(a1 + 40) = 1;
            }

            std::locale::~locale(&v82);
          }

          std::locale::locale(&v79, (a1 + 32));
          v42 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,float,char>(v39, &v83, &v80, &v79, v5, a3);
          std::locale::~locale(&v79);
          goto LABEL_74;
        }

        v25 = v81[1];
        v26 = __src[1];
        v27 = v81[1] - __src[1];
        v28 = v84;
        if (v81[1] - __src[1] + v84 < v5 >> 32)
        {
          v29 = *a1;
          if ((v5 & 7) == 4)
          {
            if (__src[1] != v80)
            {
              v30 = *__src[1];
              v31 = *(v29 + 32);
              if (!v31 || (v33 = *v31, v32 = v31[1], v31[1] = v32 + 1, v32 < v33))
              {
                v34 = *v29;
                v35 = *(v29 + 16);
                *(v29 + 16) = v35 + 1;
                *(v34 + v35) = v30;
                if (*(v29 + 16) == *(v29 + 8))
                {
                  v36 = v29;
                  (*(v29 + 24))(v29, 2);
                  v29 = v36;
                }
              }

              ++v26;
              v25 = v81[1];
            }

            v5 = v5 & 0xFFFFFFFFFFFFFF00 | v5 & 0xB8 | 3;
            v37 = a3 & 0xFFFFFF00FFFFFFFFLL | 0x3000000000;
            if (!v28)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v37 = a3 & 0xFFFFFF00FFFFFFFFLL | (BYTE4(a3) << 32);
            if (!v84)
            {
LABEL_39:
              v38 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v26, v25 - v26, v29, v5, v37, v27);
LABEL_70:
              v42 = v38;
LABEL_74:
              if (__src[0] >= 0x101)
              {
                operator delete(__src[1]);
              }

              v58 = *MEMORY[0x29EDCA608];
              return v42;
            }
          }

          v38 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v26, v25, v29, v5, v37, v27, v81[0], v28);
          goto LABEL_70;
        }

        if (v84)
        {
          v41 = v81[0];
          if (v81[0] != v81[1])
          {
            v42 = *a1;
            v43 = v81[0] - __src[1];
            v44 = *(*a1 + 32);
            if (v44)
            {
              v45 = *v44;
              v46 = v44[1];
              if (*v44 - v46 >= v43)
              {
                v47 = v81[0] - __src[1];
              }

              else
              {
                v47 = *v44 - v46;
              }

              v48 = v46 + v43;
              v44[1] = v46 + v43;
              if (v45 <= v46 || !v47)
              {
                goto LABEL_108;
              }
            }

            else
            {
              v47 = v81[0] - __src[1];
            }

            v64 = *(v42 + 16);
            do
            {
              v65 = *(v42 + 8) - v64;
              if (v65 < v47 + 1)
              {
                (*(v42 + 24))(v42, v47 + 2);
                v64 = *(v42 + 16);
                v65 = *(v42 + 8) - v64;
              }

              if (v65 >= v47)
              {
                v66 = v47;
              }

              else
              {
                v66 = v65;
              }

              if (v66)
              {
                memmove((*v42 + v64), v26, v66);
                v64 = *(v42 + 16);
              }

              v64 += v66;
              *(v42 + 16) = v64;
              v26 += v66;
              v55 = v47 > v65;
              v47 -= v66;
            }

            while (v55);
            v44 = *(v42 + 32);
            if (!v44)
            {
              goto LABEL_115;
            }

            v45 = *v44;
            v48 = v44[1];
LABEL_108:
            v67 = v48 + v28;
            v44[1] = v48 + v28;
            v68 = v45 >= v48;
            v69 = v45 - v48;
            if (v69 == 0 || !v68)
            {
              v72 = v25 - v41;
              goto LABEL_124;
            }

            if (v69 < v28)
            {
              v28 = v69;
            }

            v64 = *(v42 + 16);
            do
            {
LABEL_115:
              v70 = *(v42 + 8) - v64;
              if (v70 < v28 + 1)
              {
                (*(v42 + 24))(v42, v28 + 2);
                v64 = *(v42 + 16);
                v70 = *(v42 + 8) - v64;
              }

              if (v70 >= v28)
              {
                v71 = v28;
              }

              else
              {
                v71 = v70;
              }

              if (v71)
              {
                memset((*v42 + v64), 48, v71);
                v64 = *(v42 + 16);
              }

              v64 += v71;
              *(v42 + 16) = v64;
              v55 = v28 > v70;
              v28 -= v71;
            }

            while (v55);
            v44 = *(v42 + 32);
            v72 = v25 - v41;
            if (!v44)
            {
              do
              {
LABEL_133:
                v75 = *(v42 + 8) - v64;
                if (v75 < v72 + 1)
                {
                  (*(v42 + 24))(v42, v72 + 2);
                  v64 = *(v42 + 16);
                  v75 = *(v42 + 8) - v64;
                }

                if (v75 >= v72)
                {
                  v76 = v72;
                }

                else
                {
                  v76 = v75;
                }

                if (v76)
                {
                  memmove((*v42 + v64), v41, v76);
                  v64 = *(v42 + 16);
                }

                v64 += v76;
                *(v42 + 16) = v64;
                v41 += v76;
                v55 = v72 > v75;
                v72 -= v76;
              }

              while (v55);
              goto LABEL_74;
            }

            v45 = *v44;
            v67 = v44[1];
LABEL_124:
            v73 = v45 - v67;
            if (v45 - v67 >= v72)
            {
              v73 = v72;
            }

            v44[1] = v67 + v72;
            if (v45 <= v67 || v73 == 0)
            {
              goto LABEL_74;
            }

            v64 = *(v42 + 16);
            v72 = v73;
            goto LABEL_133;
          }
        }

        v42 = *a1;
        v49 = *(*a1 + 32);
        if (!v49 || ((v50 = *v49, v51 = v49[1], *v49 - v51 >= v27) ? (v52 = v81[1] - __src[1]) : (v52 = *v49 - v51), (v53 = v51 + v27, v49[1] = v51 + v27, v50 > v51) && (v27 = v52) != 0))
        {
          v54 = *(v42 + 16);
          do
          {
            v56 = *(v42 + 8) - v54;
            if (v56 < v27 + 1)
            {
              (*(v42 + 24))(v42, v27 + 2);
              v54 = *(v42 + 16);
              v56 = *(v42 + 8) - v54;
            }

            if (v56 >= v27)
            {
              v57 = v27;
            }

            else
            {
              v57 = v56;
            }

            if (v57)
            {
              memmove((*v42 + v54), v26, v57);
              v54 = *(v42 + 16);
            }

            v54 += v57;
            *(v42 + 16) = v54;
            v26 += v57;
            v55 = v27 > v56;
            v27 -= v57;
          }

          while (v55);
          v49 = *(v42 + 32);
          if (!v49)
          {
            do
            {
LABEL_88:
              v62 = *(v42 + 8) - v54;
              if (v62 < v28 + 1)
              {
                (*(v42 + 24))(v42, v28 + 2);
                v54 = *(v42 + 16);
                v62 = *(v42 + 8) - v54;
              }

              if (v62 >= v28)
              {
                v63 = v28;
              }

              else
              {
                v63 = v62;
              }

              if (v63)
              {
                memset((*v42 + v54), 48, v63);
                v54 = *(v42 + 16);
              }

              v54 += v63;
              *(v42 + 16) = v54;
              v55 = v28 > v62;
              v28 -= v63;
            }

            while (v55);
            goto LABEL_74;
          }

          v50 = *v49;
          v53 = v49[1];
        }

        v60 = v50 - v53;
        if (v50 - v53 >= v28)
        {
          v60 = v28;
        }

        v49[1] = v53 + v28;
        if (v50 <= v53 || v60 == 0)
        {
          goto LABEL_74;
        }

        v54 = *(v42 + 16);
        v28 = v60;
        goto LABEL_88;
      }
    }

    else if ((BYTE1(v5) - 17) > 1u)
    {
      goto LABEL_29;
    }

    if (a3 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = a3;
    }

    if ((a3 & 0x80000000) != 0)
    {
      v21 = 6;
    }

    if (v81[0] == v81[1])
    {
      v22 = v80 - v15;
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 + v21;
    v24 = v81[0] + ~v15;
    if (v24 < v23)
    {
      v84 += v23 - v24;
    }

    goto LABEL_29;
  }

  v77 = *a1;
  v78 = *MEMORY[0x29EDCA608];

  return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v77, a2, a3, a4 < 0.0, 0);
}

void sub_297297C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, void *__p)
{
  if (a18 >= 0x101)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(uint64_t a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  __src = -1431655766;
  if (a4)
  {
    p_src = (&__src + 1);
    LOBYTE(__src) = 45;
    if (BYTE1(a2) > 0x10u)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = (a2 >> 3) & 3;
    if (v6 == 2)
    {
      p_src = (&__src + 1);
      LOBYTE(__src) = 43;
      if (BYTE1(a2) > 0x10u)
      {
        goto LABEL_13;
      }
    }

    else if (v6 == 3)
    {
      p_src = (&__src + 1);
      LOBYTE(__src) = 32;
      if (BYTE1(a2) > 0x10u)
      {
        goto LABEL_13;
      }
    }

    else
    {
      p_src = &__src;
      if (BYTE1(a2) > 0x10u)
      {
        goto LABEL_13;
      }
    }
  }

  if (((1 << SBYTE1(a2)) & 0x15000) != 0)
  {
    v7 = 6;
    goto LABEL_15;
  }

LABEL_13:
  v7 = 6;
  if (BYTE1(a2) != 18)
  {
    v7 = 0;
  }

LABEL_15:
  v8 = 3;
  if (!a5)
  {
    v8 = 0;
  }

  v9 = &aInfnaninfnan[v7 + v8];
  *p_src = *v9;
  *(p_src + 2) = v9[2];
  if ((a2 & 7) == 4)
  {
    v10 = a2 & 0xF8 | 3;
  }

  else
  {
    v10 = a2;
  }

  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, p_src - &__src + 3, a1, a2 & 0xFFFFFFFFFFFFFF00 | v10, a3, p_src - &__src + 3);
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
        result = MEMORY[0x29C26EC80](v8, *(a1 + 2) + *(a1 + 1), 1, v10);
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
        result = MEMORY[0x29C26EC80](v8, *(a1 + 2) + *(a1 + 1), 1, v30);
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
        result = MEMORY[0x29C26EC80](v8, *(a1 + 2) + *(a1 + 1), 3, v22);
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
        result = MEMORY[0x29C26EC80](v8, *(a1 + 2) + *(a1 + 1), 4);
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
    result = MEMORY[0x29C26EC80](v8, *(a1 + 2) + *(a1 + 1), 2, v15);
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
    result = MEMORY[0x29C26EC80](v8, *(a1 + 2) + *(a1 + 1), 3, v17);
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
  result = MEMORY[0x29C26EC80](v8, *(a1 + 2) + *(a1 + 1), 3, v25);
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

void sub_297298E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
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
    result = MEMORY[0x29C26EC80](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
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
  v83[130] = *MEMORY[0x29EDCA608];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v8 = a2 >> 8;
    v9 = fabs(a4);
    memset(v83, 170, 0x410uLL);
    if (a3 == -1)
    {
      v10 = 1074;
    }

    else
    {
      v10 = a3;
    }

    v81 = v10;
    v82 = 0;
    if (v10 < 1075)
    {
      v83[0] = v10 + 316;
      if ((v10 + 316) < 0x401)
      {
        v11 = &v83[2];
      }

      else
      {
        v11 = operator new(v10 + 316);
      }
    }

    else
    {
      v81 = 1074;
      v82 = v10 - 1074;
      v83[0] = 1390;
      v11 = operator new(0x56EuLL);
    }

    v83[1] = v11;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v78 = v12;
    *v79 = v12;
    std::__formatter::__format_buffer[abi:ne200100]<double,double>(&v81, a4 < 0.0, ((a3 & 0x80000000) == 0), (v5 >> 3) & 3, v8, &v78, v9);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    v13 = *(&v78 + 1);
    v14 = v79[1];
    if (*(&v78 + 1) == v79[1])
    {
      ++v79[1];
      *v14 = 46;
      v15 = v79[0];
      v16 = v79[1] - 1;
      if (v79[0] != v79[1] - 1)
      {
        if (v79[0] + 1 == v16)
        {
          v18 = *v79[0];
          *v79[0] = *(v79[0] + 1);
          v15[1] = v18;
        }

        else
        {
          v17 = *(v79[1] - 1);
          memmove(v79[0] + 1, v79[0], v16 - v79[0]);
          *v15 = v17;
        }
      }

      v13 = v79[0];
      *(&v78 + 1) = v79[0]++;
      if ((BYTE1(v5) - 17) > 1u)
      {
LABEL_29:
        if ((v5 & 0x40) != 0)
        {
          v37 = *a1;
          if ((*(a1 + 40) & 1) == 0)
          {
            MEMORY[0x29C26EB90](&v80);
            v38 = (a1 + 32);
            if (*(a1 + 40) == 1)
            {
              std::locale::operator=(v38, &v80);
            }

            else
            {
              std::locale::locale(v38, &v80);
              *(a1 + 40) = 1;
            }

            std::locale::~locale(&v80);
          }

          std::locale::locale(&v77, (a1 + 32));
          v40 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v37, &v81, &v78, &v77, v5, a3);
          std::locale::~locale(&v77);
          goto LABEL_74;
        }

        v23 = v79[1];
        v24 = v83[1];
        v25 = v79[1] - v83[1];
        v26 = v82;
        if (v79[1] + v82 - v83[1] < v5 >> 32)
        {
          v27 = *a1;
          if ((v5 & 7) == 4)
          {
            if (v83[1] != v78)
            {
              v28 = *v83[1];
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
              v23 = v79[1];
            }

            v5 = v5 & 0xFFFFFFFFFFFFFF00 | v5 & 0xB8 | 3;
            v35 = a3 & 0xFFFFFF00FFFFFFFFLL | 0x3000000000;
            if (!v26)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v35 = a3 & 0xFFFFFF00FFFFFFFFLL | (BYTE4(a3) << 32);
            if (!v82)
            {
LABEL_39:
              v36 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, v23 - v24, v27, v5, v35, v25);
LABEL_70:
              v40 = v36;
LABEL_74:
              if (v83[0] >= 0x401uLL)
              {
                operator delete(v83[1]);
              }

              v56 = *MEMORY[0x29EDCA608];
              return v40;
            }
          }

          v36 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, v23, v27, v5, v35, v25, v79[0], v26);
          goto LABEL_70;
        }

        if (v82)
        {
          v39 = v79[0];
          if (v79[0] != v79[1])
          {
            v40 = *a1;
            v41 = v79[0] - v83[1];
            v42 = *(*a1 + 32);
            if (v42)
            {
              v43 = *v42;
              v44 = v42[1];
              if (*v42 - v44 >= v41)
              {
                v45 = v79[0] - v83[1];
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
              v45 = v79[0] - v83[1];
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
              goto LABEL_74;
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
            if (v43 <= v65 || v71 == 0)
            {
              goto LABEL_74;
            }

            v62 = *(v40 + 16);
            v70 = v71;
            goto LABEL_133;
          }
        }

        v40 = *a1;
        v47 = *(*a1 + 32);
        if (!v47 || ((v48 = *v47, v49 = v47[1], *v47 - v49 >= v25) ? (v50 = v79[1] - v83[1]) : (v50 = (*v47 - v49)), (v51 = &v25[v49], v47[1] = &v25[v49], v48 > v49) && (v25 = v50) != 0))
        {
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

          v48 = *v47;
          v51 = v47[1];
        }

        v58 = v48 - v51;
        if (v48 - v51 >= v26)
        {
          v58 = v26;
        }

        v47[1] = &v51[v26];
        if (v48 <= v51 || v58 == 0)
        {
          goto LABEL_74;
        }

        v52 = *(v40 + 16);
        v26 = v58;
        goto LABEL_88;
      }
    }

    else if ((BYTE1(v5) - 17) > 1u)
    {
      goto LABEL_29;
    }

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

    if (v79[0] == v79[1])
    {
      v20 = v78 - v13;
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 + v19;
    v22 = v79[0] + ~v13;
    if (v22 < v21)
    {
      v82 += v21 - v22;
    }

    goto LABEL_29;
  }

  v75 = *a1;
  v76 = *MEMORY[0x29EDCA608];

  return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v75, a2, a3, a4 < 0.0, 0);
}

void sub_297299A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, void *__p)
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
        result = MEMORY[0x29C26EC20](v8, *(a1 + 2) + *(a1 + 1), 1, v10);
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
        result = MEMORY[0x29C26EC20](v8, *(a1 + 2) + *(a1 + 1), 1, v30);
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
        result = MEMORY[0x29C26EC20](v8, *(a1 + 2) + *(a1 + 1), 3, v22);
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
        result = MEMORY[0x29C26EC20](v8, *(a1 + 2) + *(a1 + 1), 4);
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
    result = MEMORY[0x29C26EC20](v8, *(a1 + 2) + *(a1 + 1), 2, v15);
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
    result = MEMORY[0x29C26EC20](v8, *(a1 + 2) + *(a1 + 1), 3, v17);
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
  result = MEMORY[0x29C26EC20](v8, *(a1 + 2) + *(a1 + 1), 3, v25);
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

void sub_29729AA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
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
    result = MEMORY[0x29C26EC20](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
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
  v83[130] = *MEMORY[0x29EDCA608];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v8 = a2 >> 8;
    v9 = fabs(a4);
    memset(v83, 170, 0x410uLL);
    if (a3 == -1)
    {
      v10 = 1074;
    }

    else
    {
      v10 = a3;
    }

    v81 = v10;
    v82 = 0;
    if (v10 < 1075)
    {
      v83[0] = v10 + 316;
      if ((v10 + 316) < 0x401)
      {
        v11 = &v83[2];
      }

      else
      {
        v11 = operator new(v10 + 316);
      }
    }

    else
    {
      v81 = 1074;
      v82 = v10 - 1074;
      v83[0] = 1390;
      v11 = operator new(0x56EuLL);
    }

    v83[1] = v11;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v78 = v12;
    *v79 = v12;
    std::__formatter::__format_buffer[abi:ne200100]<double,long double>(&v81, a4 < 0.0, ((a3 & 0x80000000) == 0), (v5 >> 3) & 3, v8, &v78, v9);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    v13 = *(&v78 + 1);
    v14 = v79[1];
    if (*(&v78 + 1) == v79[1])
    {
      ++v79[1];
      *v14 = 46;
      v15 = v79[0];
      v16 = v79[1] - 1;
      if (v79[0] != v79[1] - 1)
      {
        if (v79[0] + 1 == v16)
        {
          v18 = *v79[0];
          *v79[0] = *(v79[0] + 1);
          v15[1] = v18;
        }

        else
        {
          v17 = *(v79[1] - 1);
          memmove(v79[0] + 1, v79[0], v16 - v79[0]);
          *v15 = v17;
        }
      }

      v13 = v79[0];
      *(&v78 + 1) = v79[0]++;
      if ((BYTE1(v5) - 17) > 1u)
      {
LABEL_29:
        if ((v5 & 0x40) != 0)
        {
          v37 = *a1;
          if ((*(a1 + 40) & 1) == 0)
          {
            MEMORY[0x29C26EB90](&v80);
            v38 = (a1 + 32);
            if (*(a1 + 40) == 1)
            {
              std::locale::operator=(v38, &v80);
            }

            else
            {
              std::locale::locale(v38, &v80);
              *(a1 + 40) = 1;
            }

            std::locale::~locale(&v80);
          }

          std::locale::locale(&v77, (a1 + 32));
          v40 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v37, &v81, &v78, &v77, v5, a3);
          std::locale::~locale(&v77);
          goto LABEL_74;
        }

        v23 = v79[1];
        v24 = v83[1];
        v25 = v79[1] - v83[1];
        v26 = v82;
        if (v79[1] + v82 - v83[1] < v5 >> 32)
        {
          v27 = *a1;
          if ((v5 & 7) == 4)
          {
            if (v83[1] != v78)
            {
              v28 = *v83[1];
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
              v23 = v79[1];
            }

            v5 = v5 & 0xFFFFFFFFFFFFFF00 | v5 & 0xB8 | 3;
            v35 = a3 & 0xFFFFFF00FFFFFFFFLL | 0x3000000000;
            if (!v26)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v35 = a3 & 0xFFFFFF00FFFFFFFFLL | (BYTE4(a3) << 32);
            if (!v82)
            {
LABEL_39:
              v36 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, v23 - v24, v27, v5, v35, v25);
LABEL_70:
              v40 = v36;
LABEL_74:
              if (v83[0] >= 0x401uLL)
              {
                operator delete(v83[1]);
              }

              v56 = *MEMORY[0x29EDCA608];
              return v40;
            }
          }

          v36 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, v23, v27, v5, v35, v25, v79[0], v26);
          goto LABEL_70;
        }

        if (v82)
        {
          v39 = v79[0];
          if (v79[0] != v79[1])
          {
            v40 = *a1;
            v41 = v79[0] - v83[1];
            v42 = *(*a1 + 32);
            if (v42)
            {
              v43 = *v42;
              v44 = v42[1];
              if (*v42 - v44 >= v41)
              {
                v45 = v79[0] - v83[1];
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
              v45 = v79[0] - v83[1];
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
              goto LABEL_74;
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
            if (v43 <= v65 || v71 == 0)
            {
              goto LABEL_74;
            }

            v62 = *(v40 + 16);
            v70 = v71;
            goto LABEL_133;
          }
        }

        v40 = *a1;
        v47 = *(*a1 + 32);
        if (!v47 || ((v48 = *v47, v49 = v47[1], *v47 - v49 >= v25) ? (v50 = v79[1] - v83[1]) : (v50 = (*v47 - v49)), (v51 = &v25[v49], v47[1] = &v25[v49], v48 > v49) && (v25 = v50) != 0))
        {
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

          v48 = *v47;
          v51 = v47[1];
        }

        v58 = v48 - v51;
        if (v48 - v51 >= v26)
        {
          v58 = v26;
        }

        v47[1] = &v51[v26];
        if (v48 <= v51 || v58 == 0)
        {
          goto LABEL_74;
        }

        v52 = *(v40 + 16);
        v26 = v58;
        goto LABEL_88;
      }
    }

    else if ((BYTE1(v5) - 17) > 1u)
    {
      goto LABEL_29;
    }

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

    if (v79[0] == v79[1])
    {
      v20 = v78 - v13;
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 + v19;
    v22 = v79[0] + ~v13;
    if (v22 < v21)
    {
      v82 += v21 - v22;
    }

    goto LABEL_29;
  }

  v75 = *a1;
  v76 = *MEMORY[0x29EDCA608];

  return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v75, a2, a3, a4 < 0.0, 0);
}

void sub_29729B378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, void *__p)
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
        result = MEMORY[0x29C26EC50](v8, *(a1 + 2) + *(a1 + 1), 1, v10);
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
        result = MEMORY[0x29C26EC50](v8, *(a1 + 2) + *(a1 + 1), 1, v30);
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
        result = MEMORY[0x29C26EC50](v8, *(a1 + 2) + *(a1 + 1), 3, v22);
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
        result = MEMORY[0x29C26EC50](v8, *(a1 + 2) + *(a1 + 1), 4);
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
    result = MEMORY[0x29C26EC50](v8, *(a1 + 2) + *(a1 + 1), 2, v15);
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
    result = MEMORY[0x29C26EC50](v8, *(a1 + 2) + *(a1 + 1), 3, v17);
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
  result = MEMORY[0x29C26EC50](v8, *(a1 + 2) + *(a1 + 1), 3, v25);
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
    result = MEMORY[0x29C26EC50](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
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
    MEMORY[0x29C26EB90](v93);
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

void sub_29729C38C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void ___ZN18HealthStoreManager16queryWorkoutInfoENSt3__18functionIFvN3abm11WorkoutTypeENS2_12WorkoutStateENS2_15WorkoutLocationENS2_12SwimLocationEEEE_block_invoke(void *a1, void *a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = a1[5];
  if (!v3)
  {
    goto LABEL_44;
  }

  v5 = std::__shared_weak_count::lock(v3);
  v22 = v5;
  if (!v5)
  {
    goto LABEL_44;
  }

  v6 = v5;
  v21 = a1[4];
  if (v21 && a1[9])
  {
    if (!a2)
    {
      ctu::OsLogContext::OsLogContext(buf, "com.apple.telephony.abm", "workout.mgr");
      v12 = *&v26[4];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_INFO, "Workout callback with no data", buf, 2u);
      }

      *buf = 0;
      v24 = 0;
      v23 = 0;
      v13 = a1[9];
      if (!v13)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      goto LABEL_41;
    }

    ctu::OsLogContext::OsLogContext(buf, "com.apple.telephony.abm", "workout.mgr");
    v7 = *&v26[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [objc_msgSend(a2 "configuration")];
      v9 = [a2 state];
      *buf = 134218240;
      *v26 = v8;
      *&v26[8] = 2048;
      *&v26[10] = v9;
      _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_INFO, "Workout callback; activity=%lu  session=%lu", buf, 0x16u);
    }

    v10 = [objc_msgSend(a2 configuration];
    if (v10 > 45)
    {
      if (v10 > 62)
      {
        if (v10 == 63)
        {
          v11 = 8;
          goto LABEL_32;
        }

        if (v10 == 68)
        {
          v11 = 5;
          goto LABEL_32;
        }
      }

      else
      {
        if (v10 == 46)
        {
          v11 = 1;
          goto LABEL_32;
        }

        if (v10 == 52)
        {
          v11 = 2;
          goto LABEL_32;
        }
      }
    }

    else if (v10 > 34)
    {
      if (v10 == 35)
      {
        v11 = 7;
        goto LABEL_32;
      }

      if (v10 == 37)
      {
        v11 = 6;
        goto LABEL_32;
      }
    }

    else
    {
      if (v10 == 13)
      {
        v11 = 4;
        goto LABEL_32;
      }

      if (v10 == 16)
      {
        v11 = 3;
LABEL_32:
        v14 = [a2 state];
        if (v14 == 2)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2 * (v14 == 4);
        }

        v16 = [objc_msgSend(a2 "configuration")];
        if ((v16 - 1) >= 3)
        {
          v17 = 3;
        }

        else
        {
          v17 = v16 - 1;
        }

        v18 = [objc_msgSend(a2 "configuration")];
        v19 = 3;
        if (v18 < 3)
        {
          v19 = v18;
        }

        *buf = v11;
        v23 = v19;
        v24 = __PAIR64__(v15, v17);
        v13 = a1[9];
        if (!v13)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

LABEL_41:
        (*(*v13 + 48))(v13, buf, &v24 + 4, &v24, &v23);
        goto LABEL_42;
      }
    }

    v11 = 9;
    goto LABEL_32;
  }

LABEL_42:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_44:
  v20 = *MEMORY[0x29EDCA608];
}

uint64_t __copy_helper_block_e8_32c43_ZTSNSt3__18weak_ptrI18HealthStoreManagerEE48c105_ZTSNSt3__18functionIFvN3abm11WorkoutTypeENS1_12WorkoutStateENS1_15WorkoutLocationENS1_12SwimLocationEEEE(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[9];
  if (!result)
  {
    goto LABEL_6;
  }

  if (result != a2 + 6)
  {
    result = (*(*result + 16))(result);
LABEL_6:
    a1[9] = result;
    return result;
  }

  a1[9] = a1 + 6;
  return (*(*a2[9] + 24))(a2[9], a1 + 6);
}

void sub_29729C884(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c43_ZTSNSt3__18weak_ptrI18HealthStoreManagerEE48c105_ZTSNSt3__18functionIFvN3abm11WorkoutTypeENS1_12WorkoutStateENS1_15WorkoutLocationENS1_12SwimLocationEEEE(uint64_t a1)
{
  v2 = a1 + 48;
  v3 = *(a1 + 72);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 40);
    if (!v4)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
LABEL_5:

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9540] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9428], MEMORY[0x29EDC9380]);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

void std::__shared_ptr_pointer<WorkoutModule *,std::shared_ptr<WorkoutModule> ctu::SharedSynchronizable<WorkoutModule>::make_shared_ptr<WorkoutModule>(WorkoutModule*)::{lambda(WorkoutModule *)#1},std::allocator<WorkoutModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<WorkoutModule *,std::shared_ptr<WorkoutModule> ctu::SharedSynchronizable<WorkoutModule>::make_shared_ptr<WorkoutModule>(WorkoutModule*)::{lambda(WorkoutModule *)#1},std::allocator<WorkoutModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI13WorkoutModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI13WorkoutModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI13WorkoutModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI13WorkoutModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<WorkoutModule> ctu::SharedSynchronizable<WorkoutModule>::make_shared_ptr<WorkoutModule>(WorkoutModule*)::{lambda(WorkoutModule*)#1}::operator() const(WorkoutModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = v2[2];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 128) == 1)
  {
    *(v3 + 128) = 0;
    *(v3 + 164) = 0;
    *(v3 + 156) = 0;
    v4 = *(v3 + 132);
    if (v4)
    {
      notify_cancel(v4);
      *(v3 + 132) = 0;
    }

    v5 = *(v3 + 104);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297288000, v5, OS_LOG_TYPE_DEFAULT, "#I Workout manager stopped", buf, 2u);
    }
  }

  v6 = v2[1];
  if (v6)
  {
    dispatch_group_leave(v6);
    v7 = v2[1];
    if (v7)
    {
      dispatch_release(v7);
    }
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

void sub_29729CC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v1[1];
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_1>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 120);
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = a1;
  }

  else
  {
    v8 = a1;
  }

  operator delete(v8);
}

void dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  WorkoutModule::registerCommandHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_29729CEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  WorkoutModule::registerEventHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_29729CFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13WorkoutModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xdict = v3;
  }

  else
  {
    v4 = xpc_null_create();
    xdict = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26F9F0](v4) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  xdict = v5;
LABEL_9:
  xpc_release(v4);
  v6 = xpc_BOOL_create(BYTE1(v2[3].__on_zero_shared_weak));
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kKeyWorkoutInfoOverride", v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = 156;
  if (BYTE1(v2[3].__on_zero_shared_weak))
  {
    v8 = 172;
  }

  v9 = (v2 + v8);
  v10 = v9[1];
  v12 = v9[2];
  v11 = v9[3];
  v13 = xpc_int64_create(*v9);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kKeyWorkoutType", v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = xpc_int64_create(v10);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kKeyWorkoutState", v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = xpc_int64_create(v12);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kKeyWorkoutLocation", v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v19 = xpc_int64_create(v11);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kKeySwimLocation", v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  v26 = 0;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(&v1->__shared_owners_, &v26, &xdict);
  xpc_release(xdict);
  if (__p)
  {
    shared_owners = __p->__shared_owners_;
    if (shared_owners)
    {
      _Block_release(shared_owners);
    }

    operator delete(__p);
  }

  v22 = a1;
  if (a1)
  {
    v23 = a1[2];
    if (v23)
    {
      if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
        v22 = a1;
      }
    }

    operator delete(v22);
  }
}

void sub_29729D398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN13WorkoutModule28registerCommandHandlers_syncEvEUb_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **_ZNSt3__110unique_ptrIZZN13WorkoutModule28registerCommandHandlers_syncEvEUb_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(uint64_t *a1, unsigned int *a2, void **a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, v4, &object);
  xpc_release(object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13WorkoutModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v35 = *a1;
  v2 = **a1;
  value = xpc_dictionary_get_value(*(*a1 + 8), "kKeyWorkoutInfoOverride");
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  *(v2 + 153) = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  strcpy(__p, "kCommandSetWorkoutInfo");
  v39 = 22;
  v4 = *(v2 + 153);
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v6 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v6, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    object[0] = v6;
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A1E34960;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v6;
    v7 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v6;
    *(&xmmword_2A1399338 + 1) = v5;
    if (!v7)
    {
      *buf = v6;
      *&buf[8] = v5;
      goto LABEL_11;
    }

    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  v5 = *(&xmmword_2A1399338 + 1);
  v6 = xmmword_2A1399338;
  *buf = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_11:
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v8 = v39;
  if (v39 >= 0)
  {
    v9 = v39;
  }

  else
  {
    v9 = *&__p[8];
  }

  v10 = v9 + 9;
  if (v9 + 9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v10 < 0x17)
  {
    object[1] = 58;
    object[2] = 0;
    HIBYTE(object[2]) = v9 + 9;
    object[0] = *"workout::";
    v13 = &object[1] + 1;
    if (!v9)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v10 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v10 | 7) + 1;
    }

    v12 = operator new(v11);
    object[1] = (v9 + 9);
    object[2] = (v11 | 0x8000000000000000);
    object[0] = v12;
    v12[8] = 58;
    *v12 = *"workout::";
    v13 = v12 + 9;
  }

  if (v8 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = *__p;
  }

  memmove(v13, v14, v9);
LABEL_26:
  v13[v9] = 0;
  if (SHIBYTE(object[2]) >= 0)
  {
    v15 = object;
  }

  else
  {
    v15 = object[0];
  }

  ctu::cf::MakeCFString::MakeCFString(key, v15);
  v16 = MEMORY[0x29EDB8F00];
  if (!v4)
  {
    v16 = MEMORY[0x29EDB8EF8];
  }

  v17 = *v16;
  key[1] = v17;
  if (v17)
  {
    v18 = *MEMORY[0x29EDB8FA8];
    CFPreferencesSetValue(key[0], v17, v6[1], v6[2], *MEMORY[0x29EDB8FA8]);
    v19 = CFPreferencesSynchronize(v6[1], v6[2], v18) != 0;
    CFRelease(v17);
    MEMORY[0x29C26DF80](key);
    if ((SHIBYTE(object[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v19 = 0;
    MEMORY[0x29C26DF80](key);
    if ((SHIBYTE(object[2]) & 0x80000000) == 0)
    {
LABEL_33:
      v20 = *&buf[8];
      if (!*&buf[8])
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  operator delete(object[0]);
  v20 = *&buf[8];
  if (!*&buf[8])
  {
    goto LABEL_38;
  }

LABEL_37:
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
    if (v19)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_38:
  if (v19)
  {
    goto LABEL_40;
  }

LABEL_39:
  v21 = *(v2 + 104);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    HIBYTE(object[2]) = 9;
    strcpy(object, "workout::");
    v33 = __p;
    if (v39 < 0)
    {
      v33 = *__p;
    }

    *buf = 136315394;
    *&buf[4] = object;
    *&buf[12] = 2080;
    *&buf[14] = v33;
    _os_log_error_impl(&dword_297288000, v21, OS_LOG_TYPE_ERROR, "Failed to set property with %s%s", buf, 0x16u);
    if (SHIBYTE(object[2]) < 0)
    {
      operator delete(object[0]);
    }
  }

LABEL_40:
  if (v39 < 0)
  {
    operator delete(*__p);
    if (*(v2 + 153) != 1)
    {
      goto LABEL_73;
    }
  }

  else if (*(v2 + 153) != 1)
  {
    goto LABEL_73;
  }

  v22 = xpc_dictionary_get_value(v1[1], "kKeyWorkoutType");
  object[0] = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  *(v2 + 172) = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  HIBYTE(object[2]) = 15;
  strcpy(object, "kKeyWorkoutType");
  WorkoutModule::setPreference_sync<unsigned int>(v2, object, *(v2 + 172));
  if (SHIBYTE(object[2]) < 0)
  {
    operator delete(object[0]);
  }

  v23 = xpc_dictionary_get_value(v1[1], "kKeyWorkoutState");
  object[0] = v23;
  if (v23)
  {
    xpc_retain(v23);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  *(v2 + 176) = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  HIBYTE(object[2]) = 16;
  strcpy(object, "kKeyWorkoutState");
  WorkoutModule::setPreference_sync<unsigned int>(v2, object, *(v2 + 176));
  if (SHIBYTE(object[2]) < 0)
  {
    operator delete(object[0]);
  }

  v24 = xpc_dictionary_get_value(v1[1], "kKeyWorkoutLocation");
  object[0] = v24;
  if (v24)
  {
    xpc_retain(v24);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  *(v2 + 180) = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  HIBYTE(object[2]) = 19;
  strcpy(object, "kKeyWorkoutLocation");
  WorkoutModule::setPreference_sync<unsigned int>(v2, object, *(v2 + 180));
  if (SHIBYTE(object[2]) < 0)
  {
    operator delete(object[0]);
  }

  v25 = xpc_dictionary_get_value(v1[1], "kKeySwimLocation");
  object[0] = v25;
  if (v25)
  {
    xpc_retain(v25);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  *(v2 + 184) = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  HIBYTE(object[2]) = 16;
  strcpy(object, "kKeySwimLocation");
  WorkoutModule::setPreference_sync<unsigned int>(v2, object, *(v2 + 184));
  if (SHIBYTE(object[2]) < 0)
  {
    operator delete(object[0]);
    v26 = *(v2 + 104);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }
  }

  else
  {
    v26 = *(v2 + 104);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }
  }

  WorkoutModule::WorkoutStatus::to_string(object, (v2 + 172));
  if (SHIBYTE(object[2]) >= 0)
  {
    v27 = object;
  }

  else
  {
    v27 = object[0];
  }

  *__p = 136315138;
  *&__p[4] = v27;
  _os_log_impl(&dword_297288000, v26, OS_LOG_TYPE_DEFAULT, "#I Received workout override; %s", __p, 0xCu);
  if (SHIBYTE(object[2]) < 0)
  {
    operator delete(object[0]);
  }

LABEL_73:
  WorkoutModule::sendWorkoutInfo_sync(v2);
  v28 = v1[2];
  object[0] = xpc_null_create();
  (*(v28 + 16))(v28, 0, object);
  xpc_release(object[0]);
  if (v35)
  {
    v29 = v35[2];
    if (v29)
    {
      _Block_release(v29);
    }

    xpc_release(v35[1]);
    operator delete(v35);
  }

  v30 = a1;
  if (a1)
  {
    v31 = *(a1 + 16);
    if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
      v30 = a1;
    }

    operator delete(v30);
  }

  v32 = *MEMORY[0x29EDCA608];
}

void sub_29729DC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&object);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _ZNSt3__110unique_ptrIZZN13WorkoutModule28registerCommandHandlers_syncEvEUb0_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN13WorkoutModule28registerCommandHandlers_syncEvEUb0_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void WorkoutModule::setPreference_sync<unsigned int>(uint64_t a1, char *a2, unsigned int a3)
{
  v27 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v7 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v7, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    *&__p = v7;
    v6 = operator new(0x20uLL);
    *v6 = &unk_2A1E34960;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v7;
    v8 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v7;
    *(&xmmword_2A1399338 + 1) = v6;
    if (!v8)
    {
      *buf = v7;
      *&buf[8] = v6;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v6 = *(&xmmword_2A1399338 + 1);
  v7 = xmmword_2A1399338;
  *buf = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_8:
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v9 = a2[23];
  if (v9 >= 0)
  {
    v10 = a2[23];
  }

  else
  {
    v10 = *(a2 + 1);
  }

  v11 = v10 + 9;
  if (v10 + 9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 < 0x17)
  {
    *(&__p + 1) = 58;
    v24 = 0;
    HIBYTE(v24) = v10 + 9;
    *&__p = *"workout::";
    v14 = &__p + 9;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = operator new(v12);
    *(&__p + 1) = v10 + 9;
    v24 = v12 | 0x8000000000000000;
    *&__p = v13;
    v13[8] = 58;
    *v13 = *"workout::";
    v14 = v13 + 9;
  }

  v15 = *a2;
  if (v9 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  memmove(v14, v16, v10);
LABEL_23:
  v14[v10] = 0;
  if (v24 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  ctu::cf::MakeCFString::MakeCFString(&v25, p_p);
  v18 = ctu::cf::plist_adapter::set<unsigned int>(v7, a3, v25, 1);
  MEMORY[0x29C26DF80](&v25);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  v19 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    if (v18)
    {
      goto LABEL_32;
    }
  }

  else if (v18)
  {
    goto LABEL_32;
  }

  v20 = *(a1 + 104);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    HIBYTE(v24) = 9;
    strcpy(&__p, "workout::");
    if (a2[23] >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    *buf = 136315394;
    *&buf[4] = &__p;
    *&buf[12] = 2080;
    *&buf[14] = v22;
    _os_log_error_impl(&dword_297288000, v20, OS_LOG_TYPE_ERROR, "Failed to set property with %s%s", buf, 0x16u);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_32:
  v21 = *MEMORY[0x29EDCA608];
}

void sub_29729E1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&__p);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  _Unwind_Resume(a1);
}

void ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL ctu::cf::plist_adapter::set<unsigned int>(uint64_t a1, unsigned int a2, const __CFString *a3, int a4)
{
  v7 = *MEMORY[0x29EDB8ED8];
  valuePtr = a2;
  v8 = CFNumberCreate(v7, kCFNumberLongLongType, &valuePtr);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *MEMORY[0x29EDB8FA8];
  CFPreferencesSetValue(a3, v8, *(a1 + 8), *(a1 + 16), *MEMORY[0x29EDB8FA8]);
  if (a4)
  {
    v11 = CFPreferencesSynchronize(*(a1 + 8), *(a1 + 16), v10) != 0;
  }

  else
  {
    v11 = 1;
  }

  CFRelease(v9);
  return v11;
}

uint64_t std::__function::__func<WorkoutModule::registerEventHandlers_sync(void)::$_0,std::allocator<WorkoutModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E348E0;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<WorkoutModule::registerEventHandlers_sync(void)::$_0,std::allocator<WorkoutModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E348E0;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<WorkoutModule::registerEventHandlers_sync(void)::$_0,std::allocator<WorkoutModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E348E0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<WorkoutModule::registerEventHandlers_sync(void)::$_0,std::allocator<WorkoutModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E348E0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<WorkoutModule::registerEventHandlers_sync(void)::$_0,std::allocator<WorkoutModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<WorkoutModule::registerEventHandlers_sync(void)::$_0,std::allocator<WorkoutModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<WorkoutModule::registerEventHandlers_sync(void)::$_0,std::allocator<WorkoutModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    v19 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[2] || MEMORY[0x29C26F9F0](v5) != MEMORY[0x29EDCAA00])
      {
        goto LABEL_25;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      if (v5)
      {
        xpc_retain(v5);
        v10 = v5;
        v11 = v7[10];
        if (!v11)
        {
LABEL_22:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v11 = v7[10];
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      v12 = v7[9];
      v13 = std::__shared_weak_count::lock(v11);
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = v13;
      v15 = operator new(0x18uLL);
      *v15 = v7;
      v15[1] = v4;
      v15[2] = v10;
      v16 = xpc_null_create();
      v17 = v7[11];
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = operator new(0x18uLL);
      *v18 = v15;
      v18[1] = v12;
      v18[2] = v14;
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      xpc_release(v16);
      v9 = v19;
      if (v19)
      {
LABEL_25:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }
  }

  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

void sub_29729E734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  xpc_release(v10);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<WorkoutModule::registerEventHandlers_sync(void)::$_0,std::allocator<WorkoutModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13WorkoutModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13WorkoutModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13WorkoutModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13WorkoutModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(v2[2], *MEMORY[0x29EDBEAF8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  xpc_release(object);
  v5 = *MEMORY[0x29EDBEFB8];
  v6 = strlen(*MEMORY[0x29EDBEFB8]);
  v7 = HIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    if (v6 != __s1[1])
    {
      goto LABEL_13;
    }

    if (v6 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (memcmp(__s1[0], v5, v6))
    {
      goto LABEL_7;
    }

LABEL_12:
    WorkoutModule::sendWorkoutInfo_sync(v3);
    if ((HIBYTE(__s1[2]) & 0x80) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    operator delete(__s1[0]);
    goto LABEL_14;
  }

  if (v6 != SHIBYTE(__s1[2]))
  {
    goto LABEL_14;
  }

  if (!memcmp(__s1, v5, v6))
  {
    goto LABEL_12;
  }

LABEL_7:
  if (v7 < 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  xpc_release(v2[2]);
  v2[2] = 0;
  v8 = v2[1];
  if (v8)
  {
    dispatch_group_leave(v8);
    v9 = v2[1];
    if (v9)
    {
      dispatch_release(v9);
    }
  }

  operator delete(v2);
  v10 = *(a1 + 2);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  operator delete(a1);
}

void sub_29729E988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    std::unique_ptr<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
    std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE673A8, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

uint64_t std::function<void ()(dispatch::group_session,xpc::dict)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::start(dispatch::group_session)::$_0>(WorkoutModule::start(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::start(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<WorkoutModule::start(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  WorkoutModule::start_sync(**a1);
  operator delete(v2);
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1;
  }

  else
  {
    v4 = a1;
  }

  operator delete(v4);
}

void sub_29729EC4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<ABMProperties *,std::shared_ptr<ABMProperties>::__shared_ptr_default_delete<ABMProperties,ABMProperties>,std::allocator<ABMProperties>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ABMProperties *,std::shared_ptr<ABMProperties>::__shared_ptr_default_delete<ABMProperties,ABMProperties>,std::allocator<ABMProperties>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = MEMORY[0x29C26DFE0]();

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ABMProperties *,std::shared_ptr<ABMProperties>::__shared_ptr_default_delete<ABMProperties,ABMProperties>,std::allocator<ABMProperties>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029742ED66)
  {
    if (((v2 & 0x800000029742ED66 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029742ED66))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029742ED66 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x29C26DFE0]();
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t std::__function::__func<WorkoutModule::start_sync(void)::$_0,std::allocator<WorkoutModule::start_sync(void)::$_0>,void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::~__func(uint64_t result)
{
  *result = &unk_2A1E349B0;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<WorkoutModule::start_sync(void)::$_0,std::allocator<WorkoutModule::start_sync(void)::$_0>,void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E349B0;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<WorkoutModule::start_sync(void)::$_0,std::allocator<WorkoutModule::start_sync(void)::$_0>,void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E349B0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<WorkoutModule::start_sync(void)::$_0,std::allocator<WorkoutModule::start_sync(void)::$_0>,void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E349B0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<WorkoutModule::start_sync(void)::$_0,std::allocator<WorkoutModule::start_sync(void)::$_0>,void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<WorkoutModule::start_sync(void)::$_0,std::allocator<WorkoutModule::start_sync(void)::$_0>,void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<WorkoutModule::start_sync(void)::$_0,std::allocator<WorkoutModule::start_sync(void)::$_0>,void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::operator()(void *a1, int *a2, int *a3, int *a4, int *a5)
{
  v6 = a1[3];
  if (v6)
  {
    v7 = *a2;
    v8 = *a3;
    v9 = *a4;
    v10 = *a5;
    v11 = a1[1];
    v12 = std::__shared_weak_count::lock(v6);
    if (v12)
    {
      v13 = v12;
      v14 = a1[2];
      if (!v14)
      {
        goto LABEL_16;
      }

      v15 = v14[10];
      if (!v15 || (v16 = v14[9], (v17 = std::__shared_weak_count::lock(v15)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v18 = v17;
      v19 = operator new(0x18uLL);
      *v19 = v11;
      v19[2] = v7;
      v19[3] = v8;
      v19[4] = v9;
      v19[5] = v10;
      v20 = v14[11];
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = operator new(0x18uLL);
      *v21 = v19;
      v21[1] = v16;
      v21[2] = v18;
      dispatch_async_f(v20, v21, dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::start_sync(void)::$_0::operator() const(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)::{lambda(void)#1}>(WorkoutModule::start_sync(void)::$_0::operator() const(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::start_sync(void)::$_0::operator() const(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)::{lambda(void)#1},dispatch_queue_s *::default_delete<WorkoutModule::start_sync(void)::$_0::operator() const(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
        if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      else
      {
LABEL_16:
        if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      (v13->__on_zero_shared)(v13);

      std::__shared_weak_count::__release_weak(v13);
    }
  }
}

uint64_t std::__function::__func<WorkoutModule::start_sync(void)::$_0,std::allocator<WorkoutModule::start_sync(void)::$_0>,void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13WorkoutModule10start_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13WorkoutModule10start_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13WorkoutModule10start_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13WorkoutModule10start_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::start_sync(void)::$_0::operator() const(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)::{lambda(void)#1}>(WorkoutModule::start_sync(void)::$_0::operator() const(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::start_sync(void)::$_0::operator() const(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)::{lambda(void)#1},dispatch_queue_s *::default_delete<WorkoutModule::start_sync(void)::$_0::operator() const(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  *(v3 + 156) = *(*a1 + 1);
  v4 = *(v3 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WorkoutModule::WorkoutStatus::to_string(__p, (v3 + 156));
    v5 = v9 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v11 = v5;
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Received workout status update; %s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
      if (*(v3 + 153))
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  if ((*(v3 + 153) & 1) == 0)
  {
LABEL_7:
    WorkoutModule::sendWorkoutInfo_sync(v3);
  }

LABEL_8:
  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete(a1);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29729F388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  operator delete(v9);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<WorkoutModule::sendWorkoutInfo_sync(void)::$_0,std::allocator<WorkoutModule::sendWorkoutInfo_sync(void)::$_0>,void ()(BOOL)>::~__func(uint64_t result)
{
  *result = &unk_2A1E34A40;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<WorkoutModule::sendWorkoutInfo_sync(void)::$_0,std::allocator<WorkoutModule::sendWorkoutInfo_sync(void)::$_0>,void ()(BOOL)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E34A40;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<WorkoutModule::sendWorkoutInfo_sync(void)::$_0,std::allocator<WorkoutModule::sendWorkoutInfo_sync(void)::$_0>,void ()(BOOL)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E34A40;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<WorkoutModule::sendWorkoutInfo_sync(void)::$_0,std::allocator<WorkoutModule::sendWorkoutInfo_sync(void)::$_0>,void ()(BOOL)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E34A40;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<WorkoutModule::sendWorkoutInfo_sync(void)::$_0,std::allocator<WorkoutModule::sendWorkoutInfo_sync(void)::$_0>,void ()(BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<WorkoutModule::sendWorkoutInfo_sync(void)::$_0,std::allocator<WorkoutModule::sendWorkoutInfo_sync(void)::$_0>,void ()(BOOL)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<WorkoutModule::sendWorkoutInfo_sync(void)::$_0,std::allocator<WorkoutModule::sendWorkoutInfo_sync(void)::$_0>,void ()(BOOL)>::operator()(void *a1, unsigned __int8 *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = a1[3];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        v8 = *(v5 + 104);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = "update failed";
          if (v4)
          {
            v9 = "updated";
          }

          v11 = 136315138;
          v12 = v9;
          _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I Workout info %s", &v11, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t std::__function::__func<WorkoutModule::sendWorkoutInfo_sync(void)::$_0,std::allocator<WorkoutModule::sendWorkoutInfo_sync(void)::$_0>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13WorkoutModule20sendWorkoutInfo_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13WorkoutModule20sendWorkoutInfo_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13WorkoutModule20sendWorkoutInfo_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13WorkoutModule20sendWorkoutInfo_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::function<void ()(BOOL)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t __cxx_global_var_init_7()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297288000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_8()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_297288000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297288000);
  }

  return result;
}

lcdm::CrashDB *lcdm::CrashDB::CrashDB(lcdm::CrashDB *this)
{
  *this = 0;
  *(this + 1) = 0;
  ctu::OsLogContext::OsLogContext(v4, "com.apple.telephony.abm", "crash.db");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](this + 16, v5);
  MEMORY[0x29C26DE80](v5);
  ctu::OsLogContext::~OsLogContext(v4);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = capabilities::abs::LCDMPurgeAge(v2);
  return this;
}

void sub_29729F87C(_Unwind_Exception *a1)
{
  v3 = v2;
  std::deque<lcdm::CrashEntry>::~deque[abi:ne200100](v3);
  MEMORY[0x29C26DE80](v1 + 16);
  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

lcdm::CrashDB *lcdm::CrashDB::create@<X0>(lcdm::CrashDB *this@<X0>, lcdm::CrashDB **a2@<X8>)
{
  result = capabilities::abs::supportsLCDM(this);
  if (result)
  {
    v4 = operator new(0x50uLL);
    lcdm::CrashDB::CrashDB(v4);
    *a2 = v4;
    result = operator new(0x20uLL);
    *result = &unk_2A1E34B70;
    *(result + 1) = 0;
    *(result + 2) = 0;
    *(result + 3) = v4;
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void sub_29729F95C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<lcdm::CrashDB>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t lcdm::CrashDB::emplaceCrashEntry(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4)
{
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v5;
  v21 = v5;
  v18 = v5;
  v19 = v5;
  lcdm::CrashEntry::CrashEntry(&v18, a2, a3, a4);
  v6 = v19;
  if (v19)
  {
    v14 = v18;
    v15 = v19;
    memset(v16, 0, sizeof(v16));
    v7 = (*(&v21 + 1) >> 4) & 0xFFFFFFFFFFFFFF8;
    if (*(&v20 + 1) == v20)
    {
      v8 = 0;
    }

    else
    {
      v8 = (*(v20 + v7) + 32 * (BYTE8(v21) & 0x7F));
      v9 = ((v22 + *(&v21 + 1)) >> 4) & 0xFFFFFFFFFFFFFF8;
      v10 = (v22 + BYTE8(v21)) & 0x7F;
      if ((*(v20 + v9) + 32 * v10) != v8)
      {
        v11 = v10 - (BYTE8(v21) & 0x7F) + 16 * (v9 - v7);
LABEL_9:
        std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(v16, (v20 + v7), v8, v11);
        lcdm::CrashDB::addCrashEntry(a1, &v14);
        lcdm::CrashEntry::~CrashEntry(&v14);
        goto LABEL_10;
      }
    }

    v11 = 0;
    goto LABEL_9;
  }

  v12 = *(a1 + 16);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "#I Not adding crash entry because it is invalid", buf, 2u);
  }

LABEL_10:
  lcdm::CrashEntry::~CrashEntry(&v18);
  return v6;
}

void sub_29729FAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  lcdm::CrashEntry::~CrashEntry(&a9);
  lcdm::CrashEntry::~CrashEntry(&a21);
  _Unwind_Resume(a1);
}

void sub_29729FADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a14 == a13)
  {
    v22 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = __p;
    if (!__p)
    {
LABEL_3:
      lcdm::CrashEntry::~CrashEntry(&a21);
      _Unwind_Resume(a1);
    }
  }

  operator delete(v22);
  lcdm::CrashEntry::~CrashEntry(&a21);
  _Unwind_Resume(a1);
}

void lcdm::CrashDB::addCrashEntry(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 64) >= 5uLL)
  {
    v4 = *(a1 + 16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v80 = 0;
      _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Evicting oldest crash entry", v80, 2u);
    }

    lcdm::CrashEntry::~CrashEntry((*(*(a1 + 32) + 8 * (*(a1 + 56) / 0x38uLL)) + 72 * (*(a1 + 56) % 0x38uLL)));
    v5 = vaddq_s64(*(a1 + 56), xmmword_29742F000);
    *(a1 + 56) = v5;
    if (v5.i64[0] >= 0x70uLL)
    {
      operator delete(**(a1 + 32));
      *(a1 + 32) += 8;
      *(a1 + 56) -= 56;
    }
  }

  v6 = *(a1 + 16);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v80 = 0;
    _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Adding new crash entry", v80, 2u);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v8 - v9;
  if (v8 == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 56 * ((v8 - v9) >> 3) - 1;
  }

  v12 = *(a1 + 56);
  v13 = *(a1 + 64) + v12;
  if (v11 == v13)
  {
    if (v12 >= 0x38)
    {
      *(a1 + 56) = v12 - 56;
      *v80 = *v9;
      *(a1 + 32) = v9 + 8;
LABEL_14:
      std::__split_buffer<lcdm::SubTLV *>::emplace_back<lcdm::SubTLV *&>((a1 + 24), v80);
LABEL_28:
      v9 = *(a1 + 32);
      v13 = *(a1 + 64) + *(a1 + 56);
      goto LABEL_29;
    }

    v14 = *(a1 + 48);
    v15 = *(a1 + 24);
    if (v10 < (v14 - v15))
    {
      v16 = operator new(0xFC0uLL);
      if (v14 != v8)
      {
        *v8 = v16;
        *(a1 + 40) = v8 + 8;
        goto LABEL_28;
      }

      if (v9 != v15)
      {
        v40 = v9;
LABEL_75:
        *(v40 - 1) = v16;
        *v80 = v16;
        *(a1 + 32) = v40;
        goto LABEL_14;
      }

      v63 = (v14 - v9) >> 2;
      if (v8 == v9)
      {
        v63 = 1;
      }

      if (!(v63 >> 61))
      {
        v64 = v16;
        v65 = (v63 + 3) >> 2;
        v66 = 8 * v63;
        v67 = operator new(8 * v63);
        v40 = &v67[8 * v65];
        v68 = v40;
        v16 = v64;
        if (v8 != v9)
        {
          v68 = &v40[v10];
          v69 = v8 - v9 - 8;
          v70 = &v67[8 * v65];
          v71 = v9;
          if (v69 < 0x38)
          {
            goto LABEL_81;
          }

          v72 = &v67[8 * v65];
          v70 = v72;
          v71 = v9;
          if ((v72 - v9) < 0x20)
          {
            goto LABEL_81;
          }

          v73 = (v69 >> 3) + 1;
          v74 = 8 * (v73 & 0x3FFFFFFFFFFFFFFCLL);
          v70 = &v40[v74];
          v71 = &v9[v74];
          v75 = (v9 + 16);
          v76 = v72 + 16;
          v77 = v73 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v78 = *v75;
            *(v76 - 1) = *(v75 - 1);
            *v76 = v78;
            v75 += 2;
            v76 += 2;
            v77 -= 4;
          }

          while (v77);
          if (v73 != (v73 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_81:
            do
            {
              v79 = *v71;
              v71 += 8;
              *v70 = v79;
              v70 += 8;
            }

            while (v70 != v68);
          }
        }

        *(a1 + 24) = v67;
        *(a1 + 32) = v40;
        *(a1 + 40) = v68;
        *(a1 + 48) = &v67[v66];
        if (v9)
        {
          operator delete(v15);
          v16 = v64;
          v40 = *(a1 + 32);
        }

        goto LABEL_75;
      }

LABEL_77:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = (v14 - v15) >> 2;
    if (v14 == v15)
    {
      v17 = 1;
    }

    if (v17 >> 61)
    {
      goto LABEL_77;
    }

    v18 = 8 * v17;
    v19 = operator new(8 * v17);
    v20 = operator new(0xFC0uLL);
    v21 = v20;
    v22 = &v19[v10];
    v23 = &v19[v18];
    if (v10 != v18)
    {
      goto LABEL_24;
    }

    if (v10 >= 1)
    {
      v22 -= ((v10 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_24:
      *v22 = v20;
      v24 = v22 + 8;
      if (v8 != v9)
      {
        goto LABEL_45;
      }

LABEL_25:
      v25 = v22;
LABEL_26:
      v26 = *(a1 + 24);
      *(a1 + 24) = v19;
      *(a1 + 32) = v25;
      *(a1 + 40) = v24;
      *(a1 + 48) = v23;
      if (v26)
      {
        operator delete(v26);
      }

      goto LABEL_28;
    }

    if (v8 == v9)
    {
      v41 = 1;
    }

    else
    {
      v41 = v10 >> 2;
    }

    if (v41 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v22 = operator new(8 * v41);
    v23 = &v22[8 * v41];
    operator delete(v19);
    v42 = *(a1 + 32);
    v8 = *(a1 + 40);
    v19 = v22;
    *v22 = v21;
    v24 = v22 + 8;
    if (v8 == v42)
    {
      goto LABEL_25;
    }

LABEL_45:
    while (v22 != v19)
    {
      v43 = v22;
LABEL_44:
      v44 = *(v8 - 1);
      v8 -= 8;
      *(v43 - 1) = v44;
      v25 = v43 - 8;
      v22 = v25;
      if (v8 == *(a1 + 32))
      {
        goto LABEL_26;
      }
    }

    if (v24 < v23)
    {
      v43 = &v19[8 * ((((v23 - v24) >> 3) + 1 + ((((v23 - v24) >> 3) + 1) >> 63)) >> 1)];
      v46 = v24 - v19;
      v45 = v24 == v19;
      v24 += 8 * ((((v23 - v24) >> 3) + 1 + ((((v23 - v24) >> 3) + 1) >> 63)) >> 1);
      if (!v45)
      {
        memmove(v43, v22, v46);
      }

      goto LABEL_44;
    }

    if (v23 == v19)
    {
      v47 = 1;
    }

    else
    {
      v47 = (v23 - v19) >> 2;
    }

    if (v47 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v48 = operator new(8 * v47);
    v49 = v48;
    v50 = (v47 + 3) >> 2;
    v43 = &v48[8 * v50];
    v51 = v24 - v19;
    v45 = v24 == v19;
    v24 = v43;
    if (!v45)
    {
      v24 = &v43[v51];
      v52 = v51 - 8;
      if (v52 >= 0x18 && (v53 = 8 * v50, (&v48[8 * v50] - v22) >= 0x20))
      {
        v57 = (v52 >> 3) + 1;
        v58 = 8 * (v57 & 0x3FFFFFFFFFFFFFFCLL);
        v54 = &v43[v58];
        v55 = &v22[v58];
        v59 = (v22 + 16);
        v60 = &v48[v53 + 16];
        v61 = v57 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v62 = *v59;
          *(v60 - 1) = *(v59 - 1);
          *v60 = v62;
          v59 += 2;
          v60 += 32;
          v61 -= 4;
        }

        while (v61);
        if (v57 == (v57 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_58;
        }
      }

      else
      {
        v54 = &v48[8 * v50];
        v55 = v22;
      }

      do
      {
        v56 = *v55;
        v55 += 8;
        *v54 = v56;
        v54 += 8;
      }

      while (v54 != v24);
    }

LABEL_58:
    v23 = &v48[8 * v47];
    operator delete(v19);
    v19 = v49;
    goto LABEL_44;
  }

LABEL_29:
  v27 = *&v9[8 * (v13 / 0x38)] + 72 * (v13 % 0x38);
  v28 = *a2;
  *(v27 + 16) = *(a2 + 16);
  *v27 = v28;
  *(v27 + 40) = 0u;
  *(v27 + 56) = 0u;
  *(v27 + 24) = 0u;
  v29 = (v27 + 24);
  v30 = *(a2 + 7);
  v31 = (v30 >> 4) & 0xFFFFFFFFFFFFFF8;
  v32 = *(a2 + 4);
  if (*(a2 + 5) == v32)
  {
    v38 = 0;
    v39 = 0;
  }

  else
  {
    v33 = *(a2 + 8) + v30;
    v34 = (v33 >> 4) & 0xFFFFFFFFFFFFFF8;
    v35 = v33 & 0x7F;
    v36 = *(v32 + v34) + 32 * v35;
    v37 = v35 - (*(a2 + 7) & 0x7FLL) + 16 * (v34 - v31);
    v38 = (*(v32 + v31) + 32 * (*(a2 + 7) & 0x7FLL));
    if (v36 == v38)
    {
      v39 = 0;
    }

    else
    {
      v39 = v37;
    }
  }

  std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(v29, (v32 + v31), v38, v39);
  ++*(a1 + 64);
}