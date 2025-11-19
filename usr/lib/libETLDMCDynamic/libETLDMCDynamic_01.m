void sub_29776E480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29776E494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29776E4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception);
  __cxa_throw(exception, off_29EE6DDC8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "basic_string");
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v23[0] = 0xAAAAAAAAAAAAAAAALL;
  v23[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29C274D10](v23, a1);
  if (LOBYTE(v23[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v12 = std::locale::use_facet(__b, MEMORY[0x29EDC93D0]);
      v9 = (v12->__vftable[2].~facet_0)(v12, 32);
      std::locale::~locale(__b);
      *(v6 + 36) = v9;
      v10 = a2 + a3;
      if ((v8 & 0xB0) == 0x20)
      {
        v11 = a2 + a3;
      }

      else
      {
        v11 = a2;
      }

      if (!v7)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = a2 + a3;
      if ((*(v6 + 2) & 0xB0) == 0x20)
      {
        v11 = a2 + a3;
      }

      else
      {
        v11 = a2;
      }

      if (!v7)
      {
        goto LABEL_35;
      }
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    if (v11 - a2 < 1 || (*(*v7 + 96))(v7, a2, v11 - a2) == v11 - a2)
    {
      if (v16 >= 1)
      {
        memset(__b, 170, sizeof(__b));
        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v16 >= 0x17)
        {
          if ((v16 | 7) == 0x17)
          {
            v18 = 25;
          }

          else
          {
            v18 = (v16 | 7) + 1;
          }

          v17 = operator new(v18);
          __b[1].__locale_ = v16;
          __b[2].__locale_ = (v18 | 0x8000000000000000);
          __b[0].__locale_ = v17;
        }

        else
        {
          HIBYTE(__b[2].__locale_) = v16;
          v17 = __b;
        }

        memset(v17, v9, v16);
        *(v17 + v16) = 0;
        if (SHIBYTE(__b[2].__locale_) >= 0)
        {
          locale = __b;
        }

        else
        {
          locale = __b[0].__locale_;
        }

        v20 = (*(*v7 + 96))(v7, locale, v16);
        if (SHIBYTE(__b[2].__locale_) < 0)
        {
          v21 = v20;
          operator delete(__b[0].__locale_);
          if (v21 != v16)
          {
            goto LABEL_35;
          }
        }

        else if (v20 != v16)
        {
          goto LABEL_35;
        }
      }

      if (v10 - v11 < 1 || (*(*v7 + 96))(v7, v11, v10 - v11) == v10 - v11)
      {
        *(v6 + 3) = 0;
        goto LABEL_36;
      }
    }

LABEL_35:
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
  }

LABEL_36:
  MEMORY[0x29C274D20](v23);
  return a1;
}

void sub_29776E848(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C274D20](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x29776E81CLL);
}

uint64_t crc_16_calc(unsigned __int8 *a1, unsigned int a2)
{
  v2 = 0xFFFF;
  v3 = a2 - 8;
  if (a2 >= 8)
  {
    v4 = a1;
    do
    {
      v5 = *v4++;
      v2 = crc16_table[v5 ^ ((v2 & 0xFF00) >> 8)] ^ (v2 << 8);
      LOWORD(a2) = a2 - 8;
    }

    while (a2 > 7u);
    a1 += (v3 >> 3) + 1;
  }

  if (a2)
  {
    v6 = *a1 << 8;
    do
    {
      LOWORD(a2) = a2 - 1;
      v7 = v6 ^ v2;
      v2 *= 2;
      if (v7 < 0)
      {
        v2 ^= 0x1021u;
      }

      v6 = (2 * v6) & 0xFE00;
    }

    while (a2);
  }

  return ~v2;
}

uint64_t crc_16_l_calc(char *a1, unsigned int a2)
{
  LOWORD(v2) = -1;
  v3 = a2 - 8;
  if (a2 >= 8)
  {
    v4 = a1;
    do
    {
      v5 = *v4++;
      v2 = crc_16_l_table[(v5 ^ v2)] ^ ((v2 & 0xFF00) >> 8);
      LOWORD(a2) = a2 - 8;
    }

    while (a2 > 7u);
    a1 += (v3 >> 3) + 1;
  }

  if (a2)
  {
    v6 = *a1 << 8;
    do
    {
      LOWORD(a2) = a2 - 1;
      v7 = v6 ^ v2;
      LOWORD(v2) = v2 >> 1;
      if (v7)
      {
        LOWORD(v2) = v2 ^ 0x8408;
      }

      v6 >>= 1;
    }

    while (a2);
  }

  return ~v2;
}

uint64_t crc_30_calc(char *a1, unsigned int a2)
{
  v2 = 0x3FFFFFFF;
  v3 = a2 - 8;
  if (a2 >= 8)
  {
    v4 = a1;
    do
    {
      v5 = *v4++;
      v2 = crc30_table[(v5 ^ (v2 >> 22))] ^ (v2 << 8);
      LOWORD(a2) = a2 - 8;
    }

    while (a2 > 7u);
    a1 += (v3 >> 3) + 1;
  }

  if (a2)
  {
    v6 = *a1 << 22;
    do
    {
      LOWORD(a2) = a2 - 1;
      v7 = v6 ^ v2;
      v2 *= 2;
      if ((v7 & 0x20000000) != 0)
      {
        v2 ^= 0x6030B9C7u;
      }

      v6 *= 2;
    }

    while (a2);
  }

  return ~v2 & 0x3FFFFFFF;
}

uint64_t crc_30_step(int a1, char *a2, unsigned int a3)
{
  v3 = a1 ^ 0x3FFFFFFF;
  v4 = a3 - 8;
  if (a3 >= 8)
  {
    v5 = a2;
    do
    {
      v6 = *v5++;
      v3 = crc30_table[(v6 ^ (v3 >> 22))] ^ (v3 << 8);
      LOWORD(a3) = a3 - 8;
    }

    while (a3 > 7u);
    a2 += (v4 >> 3) + 1;
  }

  if (a3)
  {
    v7 = *a2 << 22;
    do
    {
      LOWORD(a3) = a3 - 1;
      v8 = v7 ^ v3;
      v3 *= 2;
      if ((v8 & 0x20000000) != 0)
      {
        v3 ^= 0x6030B9C7u;
      }

      v7 *= 2;
    }

    while (a3);
  }

  return ~v3 & 0x3FFFFFFF;
}

uint64_t crc_16_step(uint64_t result, unsigned __int8 *a2, int a3)
{
  if (a3)
  {
    v3 = ~result;
    do
    {
      v4 = *a2++;
      v3 = crc16_table[v4 ^ ((v3 & 0xFF00) >> 8)] ^ (v3 << 8);
      --a3;
    }

    while (a3);
    LOWORD(result) = ~v3;
  }

  return result;
}

uint64_t crc_16_l_step(uint64_t result, char *a2, int a3)
{
  if (a3)
  {
    LOWORD(v3) = ~result;
    do
    {
      v4 = *a2++;
      v3 = crc_16_l_table[(v4 ^ v3)] ^ ((v3 & 0xFF00) >> 8);
      --a3;
    }

    while (a3);
    LOWORD(result) = ~v3;
  }

  return result;
}

uint64_t crc_32_calc(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = a2 - 8;
  if (a2 >= 8)
  {
    v4 = a1;
    do
    {
      v5 = *v4++;
      a3 = (crc32_table[v5 ^ BYTE3(a3)] ^ (a3 << 8));
      LOWORD(a2) = a2 - 8;
    }

    while (a2 > 7u);
    a1 += (v3 >> 3) + 1;
  }

  if (a2)
  {
    v6 = *a1;
    a3 = (a3 ^ (v6 << 24)) >= 0 ? (2 * a3) : (2 * a3) ^ 0x4C11DB7u;
    if (a2 != 1)
    {
      a3 = (a3 ^ (v6 << 25)) >= 0 ? (2 * a3) : (2 * a3) ^ 0x4C11DB7u;
      if (a2 != 2)
      {
        a3 = (a3 ^ (v6 << 26)) >= 0 ? (2 * a3) : (2 * a3) ^ 0x4C11DB7u;
        if (a2 != 3)
        {
          a3 = (a3 ^ (v6 << 27)) >= 0 ? (2 * a3) : (2 * a3) ^ 0x4C11DB7u;
          if (a2 != 4)
          {
            a3 = (a3 ^ (v6 << 28)) >= 0 ? (2 * a3) : (2 * a3) ^ 0x4C11DB7u;
            if (a2 != 5)
            {
              if ((a3 ^ (v6 << 29)) >= 0)
              {
                a3 = (2 * a3);
              }

              else
              {
                a3 = (2 * a3) ^ 0x4C11DB7u;
              }

              if (a2 != 6)
              {
                if ((a3 ^ (v6 << 30)) >= 0)
                {
                  return (2 * a3);
                }

                else
                {
                  return (2 * a3) ^ 0x4C11DB7u;
                }
              }
            }
          }
        }
      }
    }
  }

  return a3;
}

uint64_t APPLIB_DIAG_GPS_SA_RF_VERIF_MODE_SWITCH(_DWORD *a1, int a2, int a3)
{
  v18 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x12)
  {
    goto LABEL_13;
  }

  bzero(a1, a2);
  *a1 = 6622539;
  *(a1 + 2) = 276;
  *(a1 + 6) = a3;
  v7 = crc_16_l_table[a3 ^ 0x3B] ^ 0xFFB0;
  *(a1 + 7) = crc_16_l_table[a3 ^ 0x3B] ^ 0xB0;
  v8 = HIBYTE(v7);
  *(a1 + 8) = HIBYTE(v7);
  if (a2 < 18)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  v9 = v7;
  bzero(v17, 0x7F9uLL);
  __src = 6622539;
  v15 = 276;
  if ((a3 - 125) <= 1)
  {
    v17[0] = a3 & 0x5F;
    v16 = 125;
    v10 = 8;
    v11 = 9;
    if ((v9 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v16 = a3;
  v10 = 7;
  v11 = 8;
  if ((v9 - 125) <= 1)
  {
LABEL_9:
    *(&__src + v11) = v9 & 0x5F;
    LOBYTE(v9) = 125;
    LODWORD(v11) = v10 + 2;
  }

LABEL_10:
  *(&__src + v10) = v9;
  v12 = v11 + 1;
  if ((v8 - 125) <= 1)
  {
    *(&__src + v12) = v8 & 0x5F;
    LOBYTE(v8) = 125;
    LODWORD(v12) = v11 + 2;
  }

  *(&__src + v11) = v8;
  memcpy(a1, &__src, v12);
  result = (v12 + 1);
  *(a1 + v12) = 126;
LABEL_13:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_GPS_GEN8_HW_CONFIG(char *a1, int a2, uint64_t a3)
{
  v38 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x16)
  {
    bzero(a1, a2);
    *a1 = 6622539;
    *(a1 + 2) = 12826;
    v7 = *(a3 + 4);
    *(a1 + 6) = *a3;
    a1[10] = v7;
    *(a1 + 11) = 0;
    a1[13] = 0;
    v8 = a1[6];
    v9 = crc_16_l_table[v8 ^ 0x33];
    v10 = crc_16_l_table[a1[7] ^ 0xD6 ^ v9];
    v11 = crc_16_l_table[(a1[8] ^ v10 ^ HIBYTE(v9))];
    v12 = crc_16_l_table[(a1[9] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[10] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[crc_16_l_table[(v14 ^ HIBYTE(v13))] ^ (v14 >> 8)];
    *(a1 + 7) = v16 ^ ~HIBYTE(crc_16_l_table[(v14 ^ HIBYTE(v13))]);
    if (a2 >= 32)
    {
      bzero(v37, 0x7FFuLL);
      v17 = *a1;
      if ((v17 - 125) > 1)
      {
        v18 = 1;
      }

      else
      {
        v37[0] = v17 & 0x5F;
        v18 = 2;
        LOBYTE(v17) = 125;
      }

      __src = v17;
      v19 = a1[1];
      v20 = v18 + 1;
      if ((v19 - 125) <= 1)
      {
        v37[v20 - 1] = v19 & 0x5F;
        LODWORD(v20) = v18 + 2;
        LOBYTE(v19) = 125;
      }

      v37[v18 - 1] = v19;
      *&v37[v20 - 1] = 840564837;
      v21 = v20 + 5;
      if ((v8 - 125) <= 1)
      {
        v37[v21 - 1] = v8 & 0x5F;
        LOBYTE(v8) = 125;
        LODWORD(v21) = v20 + 6;
      }

      v37[v20 + 3] = v8;
      v22 = a1[7];
      v23 = v21 + 1;
      if ((v22 - 125) <= 1)
      {
        v37[v23 - 1] = v22 & 0x5F;
        LOBYTE(v22) = 125;
        LODWORD(v23) = v21 + 2;
      }

      v37[v21 - 1] = v22;
      v24 = a1[8];
      v25 = v23 + 1;
      if ((v24 - 125) <= 1)
      {
        v37[v25 - 1] = v24 & 0x5F;
        LOBYTE(v24) = 125;
        LODWORD(v25) = v23 + 2;
      }

      v37[v23 - 1] = v24;
      v26 = a1[9];
      v27 = v25 + 1;
      if ((v26 - 125) <= 1)
      {
        v37[v27 - 1] = v26 & 0x5F;
        LOBYTE(v26) = 125;
        LODWORD(v27) = v25 + 2;
      }

      v37[v25 - 1] = v26;
      v28 = ~(v16 ^ BYTE1(v15));
      v29 = a1[10];
      v30 = v27 + 1;
      if ((v29 - 125) <= 1)
      {
        v37[v30 - 1] = v29 & 0x5F;
        LOBYTE(v29) = 125;
        LODWORD(v30) = v27 + 2;
      }

      v31 = ((v16 ^ ~(v15 >> 8)) >> 8);
      v37[v27 - 1] = v29;
      v32 = &v37[v30 - 1];
      *v32 = 0;
      v32[2] = 0;
      v33 = v30 + 4;
      if ((v28 - 125) <= 1)
      {
        v37[v33 - 1] = v28 & 0x5F;
        LOBYTE(v28) = 125;
        LODWORD(v33) = v30 + 5;
      }

      v37[v30 + 2] = v28;
      v34 = v33 + 1;
      if ((v31 - 125) <= 1)
      {
        v37[v34 - 1] = v31 & 0x5F;
        LOBYTE(v31) = 125;
        LODWORD(v34) = v33 + 2;
      }

      v37[v33 - 1] = v31;
      memcpy(a1, &__src, v34);
      result = (v34 + 1);
      a1[v34] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v35 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_FTM_GNSS_EXTERNAL_LNA(unsigned __int8 *a1, int a2, int a3)
{
  v32 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x11)
  {
    goto LABEL_21;
  }

  bzero(a1, a2);
  *a1 = 2231115;
  a1[4] = -3;
  a1[6] = a3;
  v7 = a1[5];
  v8 = crc_16_l_table[crc_16_l_table[v7 ^ 0xBA] ^ a3 ^ 0xEC];
  v9 = crc_16_l_table[(a1[7] ^ v8 ^ HIBYTE(crc_16_l_table[v7 ^ 0xBA]))];
  v10 = crc_16_l_table[(a1[8] ^ v9 ^ HIBYTE(v8))];
  v11 = crc_16_l_table[(a1[9] ^ v10 ^ HIBYTE(v9))];
  v12 = v11 ^ ~(v10 >> 8);
  *(a1 + 5) = v11 ^ ~HIBYTE(crc_16_l_table[(a1[8] ^ v9 ^ HIBYTE(v8))]);
  if (a2 < 24)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  bzero(v31, 0x7FAuLL);
  __src = 2231115;
  v29 = -3;
  if ((v7 - 125) <= 1)
  {
    v31[0] = v7 & 0x5F;
    v30 = 125;
    v13 = 7;
    v14 = 8;
    if ((a3 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v30 = v7;
  v13 = 6;
  v14 = 7;
  if ((a3 - 125) <= 1)
  {
LABEL_9:
    *(&__src + v14) = a3 & 0x5F;
    LOBYTE(a3) = 125;
    LODWORD(v14) = v13 + 2;
  }

LABEL_10:
  *(&__src + v13) = a3;
  v15 = a1[7];
  v16 = v14 + 1;
  if ((v15 - 125) <= 1)
  {
    *(&__src + v16) = v15 & 0x5F;
    LOBYTE(v15) = 125;
    LODWORD(v16) = v14 + 2;
  }

  *(&__src + v14) = v15;
  v17 = a1[8];
  v18 = v16 + 1;
  if ((v17 - 125) <= 1)
  {
    *(&__src + v18) = v17 & 0x5F;
    LOBYTE(v17) = 125;
    LODWORD(v18) = v16 + 2;
  }

  *(&__src + v16) = v17;
  v19 = ~(v11 ^ BYTE1(v10));
  v20 = a1[9];
  v21 = v18;
  v22 = v18 + 1;
  if ((v20 - 125) <= 1)
  {
    *(&__src + v22) = v20 & 0x5F;
    LOBYTE(v20) = 125;
    LODWORD(v22) = v21 + 2;
  }

  v23 = (v11 ^ ~(v10 >> 8)) >> 8;
  *(&__src + v21) = v20;
  v24 = v22;
  v25 = v22 + 1;
  if ((v19 - 125) <= 1)
  {
    *(&__src + v25) = v19 & 0x5F;
    LOBYTE(v19) = 125;
    LODWORD(v25) = v24 + 2;
  }

  *(&__src + v24) = v19;
  v26 = v25 + 1;
  if (BYTE1(v12) - 125 <= 1)
  {
    *(&__src + v26) = BYTE1(v12) & 0x5F;
    v23 = 125;
    LODWORD(v26) = v25 + 2;
  }

  *(&__src + v25) = v23;
  memcpy(a1, &__src, v26);
  result = (v26 + 1);
  a1[v26] = 126;
LABEL_21:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_GPS_GEN8_StartIQTest(unsigned __int8 *a1, int a2)
{
  v24 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 16)
  {
    bzero(a1, a2);
    *a1 = xmmword_29777F9C0;
    *(a1 + 8) = 2560;
    v5 = crc_16_l_table[a1[7] ^ 0x6DLL];
    v6 = crc_16_l_table[a1[8] ^ 0xA6 ^ v5];
    v7 = crc_16_l_table[(a1[9] ^ v6 ^ HIBYTE(v5))];
    v8 = crc_16_l_table[(a1[10] ^ v7 ^ HIBYTE(v6))];
    v9 = crc_16_l_table[(a1[11] ^ v8 ^ HIBYTE(v7))];
    v10 = crc_16_l_table[(a1[12] ^ v9 ^ HIBYTE(v8))];
    v11 = crc_16_l_table[(a1[13] ^ v10 ^ HIBYTE(v9))];
    v12 = crc_16_l_table[(a1[14] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[15] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(v13 ^ HIBYTE(v12))];
    LOWORD(v13) = crc_16_l_table[v14 ^ (v13 >> 8) ^ 0xA];
    v15 = crc_16_l_table[(a1[18] ^ v13 ^ HIBYTE(v14))];
    LOWORD(v13) = crc_16_l_table[(a1[19] ^ v15 ^ BYTE1(v13))];
    v16 = crc_16_l_table[(a1[20] ^ v13 ^ HIBYTE(v15))];
    *(a1 + 11) = crc_16_l_table[(a1[21] ^ v16 ^ BYTE1(v13))] ^ ~(v16 >> 8);
    if (a2 >= 0x30)
    {
      bzero(__src, 0x800uLL);
      v17 = 0;
      v18 = 0;
      do
      {
        while (1)
        {
          v19 = a1[v17];
          v20 = v18;
          v21 = v18 + 1;
          if ((v19 - 125) > 1)
          {
            break;
          }

          v18 += 2;
          __src[v21] = v19 & 0x5F;
          __src[v20] = 125;
          if (++v17 == 24)
          {
            goto LABEL_9;
          }
        }

        ++v18;
        __src[v20] = v19;
        ++v17;
      }

      while (v17 != 24);
LABEL_9:
      memcpy(a1, __src, v18);
      result = (v18 + 1);
      a1[v18] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_GPS_GEN8_SV_TRACK(char *a1, int a2, _DWORD *a3)
{
  v39 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x12)
  {
    bzero(a1, a2);
    *a1 = 6622539;
    *(a1 + 2) = 12827;
    v7 = *(a3 + 3);
    *(a1 + 6) = *a3;
    *(a1 + 9) = v7;
    v8 = a1[6];
    LOWORD(v7) = crc_16_l_table[v8 ^ 0xEB];
    v9 = crc_16_l_table[(a1[7] ^ v7) ^ 0xCF];
    LOWORD(v7) = crc_16_l_table[(a1[8] ^ v9 ^ BYTE1(v7))];
    v10 = crc_16_l_table[(a1[9] ^ v7 ^ HIBYTE(v9))];
    LOWORD(v7) = crc_16_l_table[(a1[10] ^ v10 ^ BYTE1(v7))];
    v11 = crc_16_l_table[(a1[11] ^ v7 ^ HIBYTE(v10))];
    v12 = crc_16_l_table[(a1[12] ^ v11 ^ BYTE1(v7))];
    *(a1 + 13) = v12 ^ ~HIBYTE(crc_16_l_table[(a1[11] ^ v7 ^ HIBYTE(v10))]);
    if (a2 >= 30)
    {
      bzero(v38, 0x7F9uLL);
      __src = 6622539;
      v36 = 12827;
      if ((v8 - 125) > 1)
      {
        v13 = 7;
      }

      else
      {
        v38[0] = v8 & 0x5F;
        v13 = 8;
        LOBYTE(v8) = 125;
      }

      v37 = v8;
      v14 = a1[7];
      v15 = v13 + 1;
      if ((v14 - 125) <= 1)
      {
        *(&__src + v15) = v14 & 0x5F;
        LOBYTE(v14) = 125;
        LODWORD(v15) = v13 + 2;
      }

      *(&__src + v13) = v14;
      v16 = a1[8];
      v17 = v15;
      v18 = v15 + 1;
      if ((v16 - 125) <= 1)
      {
        *(&__src + v18) = v16 & 0x5F;
        LODWORD(v18) = v17 + 2;
        LOBYTE(v16) = 125;
      }

      *(&__src + v17) = v16;
      v19 = a1[9];
      v20 = v18;
      v21 = v18 + 1;
      if ((v19 - 125) <= 1)
      {
        *(&__src + v21) = v19 & 0x5F;
        LOBYTE(v19) = 125;
        LODWORD(v21) = v20 + 2;
      }

      *(&__src + v20) = v19;
      v22 = a1[10];
      v23 = v21 + 1;
      if ((v22 - 125) <= 1)
      {
        *(&__src + v23) = v22 & 0x5F;
        LOBYTE(v22) = 125;
        LODWORD(v23) = v21 + 2;
      }

      *(&__src + v21) = v22;
      v24 = a1[11];
      v25 = v23 + 1;
      if ((v24 - 125) <= 1)
      {
        *(&__src + v25) = v24 & 0x5F;
        LOBYTE(v24) = 125;
        LODWORD(v25) = v23 + 2;
      }

      *(&__src + v23) = v24;
      v26 = ~(v12 ^ BYTE1(v11));
      v27 = a1[12];
      v28 = v25;
      v29 = v25 + 1;
      if ((v27 - 125) <= 1)
      {
        *(&__src + v29) = v27 & 0x5F;
        LOBYTE(v27) = 125;
        LODWORD(v29) = v28 + 2;
      }

      v30 = ((v12 ^ ~(v11 >> 8)) >> 8);
      *(&__src + v28) = v27;
      v31 = v29;
      v32 = v29 + 1;
      if ((v26 - 125) <= 1)
      {
        *(&__src + v32) = v26 & 0x5F;
        LOBYTE(v26) = 125;
        LODWORD(v32) = v31 + 2;
      }

      *(&__src + v31) = v26;
      v33 = v32 + 1;
      if ((v30 - 125) <= 1)
      {
        *(&__src + v33) = v30 & 0x5F;
        LOBYTE(v30) = 125;
        LODWORD(v33) = v32 + 2;
      }

      *(&__src + v32) = v30;
      memcpy(a1, &__src, v33);
      result = (v33 + 1);
      a1[v33] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v34 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_MemoryPoke_Byte(char *a1, int a2, int a3, void *__src, int a5)
{
  v24 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a5 && a3 && a1 && a2 >= 0xD && __src)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 5;
    *(a1 + 1) = a3;
    a1[5] = a5;
    memcpy(a1 + 6, __src, a5);
    v9 = 8 * (a5 + 6);
    if (8 * (a5 + 6))
    {
      LOWORD(v10) = -1;
      v11 = a1;
      do
      {
        v12 = *v11++;
        v10 = crc_16_l_table[(v12 ^ v10)] ^ ((v10 & 0xFF00) >> 8);
        v9 -= 8;
      }

      while (v9);
      v13 = ~v10;
      v14 = ~v10 >> 8;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    a1[a5 + 6] = v13;
    a1[a5 + 7] = v14;
    v15 = (a5 + 8);
    result = 0xFFFFFFFFLL;
    if (v15 <= 1024 && 2 * v15 <= a2)
    {
      bzero(__srca, 0x800uLL);
      if (v15 < 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        v17 = a1;
        do
        {
          while (1)
          {
            v19 = *v17++;
            v18 = v19;
            v20 = v16;
            v21 = v16 + 1;
            if ((v19 - 125) > 1)
            {
              break;
            }

            v16 += 2;
            __srca[v21] = v18 & 0x5F;
            __srca[v20] = 125;
            if (!--v15)
            {
              goto LABEL_20;
            }
          }

          ++v16;
          __srca[v20] = v18;
          --v15;
        }

        while (v15);
      }

LABEL_20:
      memcpy(a1, __srca, v16);
      result = (v16 + 1);
      a1[v16] = 126;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_MemoryPoke_Word(char *a1, int a2, int a3, void *__src, int a5)
{
  v24 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a5 && a3 && a1 && a2 >= 0xD && __src)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 6;
    *(a1 + 1) = a3;
    v8 = 2 * a5;
    a1[5] = a5;
    memcpy(a1 + 6, __src, 2 * a5);
    v9 = 8 * (v8 + 6);
    if ((v9 & 0xFFF0) != 0)
    {
      LOWORD(v10) = -1;
      v11 = a1;
      do
      {
        v12 = *v11++;
        v10 = crc_16_l_table[(v12 ^ v10)] ^ ((v10 & 0xFF00) >> 8);
        v9 -= 8;
      }

      while (v9);
      v13 = ~v10;
      v14 = ~v10 >> 8;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    a1[v8 + 6] = v13;
    a1[v8 + 7] = v14;
    v15 = (v8 + 8);
    result = 0xFFFFFFFFLL;
    if (v15 <= 1024 && 2 * v15 <= a2)
    {
      bzero(__srca, 0x800uLL);
      if (v15 < 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        v17 = a1;
        do
        {
          while (1)
          {
            v19 = *v17++;
            v18 = v19;
            v20 = v16;
            v21 = v16 + 1;
            if ((v19 - 125) > 1)
            {
              break;
            }

            v16 += 2;
            __srca[v21] = v18 & 0x5F;
            __srca[v20] = 125;
            if (!--v15)
            {
              goto LABEL_20;
            }
          }

          ++v16;
          __srca[v20] = v18;
          --v15;
        }

        while (v15);
      }

LABEL_20:
      memcpy(a1, __srca, v16);
      result = (v16 + 1);
      a1[v16] = 126;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_MemoryPoke_DWord(char *a1, int a2, int a3, void *__src, int a5)
{
  v22 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a5)
  {
    if (a3)
    {
      if (a1)
      {
        if (a2 >= 0xD)
        {
          if (__src)
          {
            *a1 = 0;
            *(a1 + 5) = 0;
            *a1 = 7;
            *(a1 + 1) = a3;
            v8 = 4 * a5;
            a1[5] = a5;
            memcpy(a1 + 6, __src, 4 * a5);
            v9 = 8 * (v8 + 6);
            LOWORD(v10) = -1;
            v11 = a1;
            do
            {
              v12 = *v11++;
              v10 = crc_16_l_table[(v12 ^ v10)] ^ ((v10 & 0xFF00) >> 8);
              v9 -= 8;
            }

            while (v9);
            a1[v8 + 6] = ~v10;
            a1[v8 + 7] = ~v10 >> 8;
            v13 = (v8 + 8);
            result = 0xFFFFFFFFLL;
            if (v13 <= 1024 && 2 * v13 <= a2)
            {
              bzero(__srca, 0x800uLL);
              if (v13 < 1)
              {
                v14 = 0;
              }

              else
              {
                v14 = 0;
                v15 = a1;
                do
                {
                  while (1)
                  {
                    v17 = *v15++;
                    v16 = v17;
                    v18 = v14;
                    v19 = v14 + 1;
                    if ((v17 - 125) > 1)
                    {
                      break;
                    }

                    v14 += 2;
                    __srca[v19] = v16 & 0x5F;
                    __srca[v18] = 125;
                    if (!--v13)
                    {
                      goto LABEL_17;
                    }
                  }

                  ++v14;
                  __srca[v18] = v16;
                  --v13;
                }

                while (v13);
              }

LABEL_17:
              memcpy(a1, __srca, v14);
              result = (v14 + 1);
              a1[v14] = 126;
            }
          }
        }
      }
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_GPS_SessionControl(char *a1, int a2, char a3, void *__src, int a5)
{
  v23 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 39 && __src && a5)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 108;
    a1[1] = a3;
    *(a1 + 1) = a5;
    memcpy(a1 + 4, __src, a5);
    v9 = a5 + 4;
    v10 = 8 * (a5 + 4);
    if (8 * (a5 + 4))
    {
      LOWORD(v11) = -1;
      v12 = a1;
      do
      {
        v13 = *v12++;
        v11 = crc_16_l_table[(v13 ^ v11)] ^ ((v11 & 0xFF00) >> 8);
        v10 -= 8;
      }

      while (v10);
      a1[v9] = ~v11;
      a1[a5 + 5] = ~v11 >> 8;
      result = 0xFFFFFFFFLL;
      if (a5 > 1018)
      {
        goto LABEL_20;
      }
    }

    else
    {
      a1[v9] = 0;
      a1[a5 + 5] = 0;
      result = 0xFFFFFFFFLL;
      if (a5 > 1018)
      {
        goto LABEL_20;
      }
    }

    v14 = (a5 + 6);
    if (2 * v14 <= a2)
    {
      bzero(__srca, 0x800uLL);
      if (a5 < -5)
      {
        v15 = 0;
      }

      else
      {
        v15 = 0;
        v16 = a1;
        do
        {
          while (1)
          {
            v18 = *v16++;
            v17 = v18;
            v19 = v15;
            v20 = v15 + 1;
            if ((v18 - 125) > 1)
            {
              break;
            }

            v15 += 2;
            __srca[v20] = v17 & 0x5F;
            __srca[v19] = 125;
            if (!--v14)
            {
              goto LABEL_19;
            }
          }

          ++v15;
          __srca[v19] = v17;
          --v14;
        }

        while (v14);
      }

LABEL_19:
      memcpy(a1, __srca, v15);
      result = (v15 + 1);
      a1[v15] = 126;
    }
  }

LABEL_20:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_CreateFile(char *a1, int a2, const void *a3, int a4)
{
  v47 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a4 <= 32 && a4 + 7 <= a2)
  {
    bzero(a1, a2);
    *a1 = 523851;
    memcpy(a1 + 4, a3, a4);
    v9 = crc_16_l_table[a1[4] ^ 0xA4];
    v10 = crc_16_l_table[(a1[5] ^ v9) ^ 4];
    v11 = crc_16_l_table[(a1[6] ^ v10 ^ HIBYTE(v9))];
    v12 = crc_16_l_table[(a1[7] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[8] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(a1[9] ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(a1[10] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[11] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a1[12] ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a1[13] ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a1[14] ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(a1[15] ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(a1[16] ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(a1[17] ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a1[18] ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(a1[19] ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a1[20] ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[21] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a1[22] ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a1[23] ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a1[24] ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a1[25] ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a1[26] ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(a1[27] ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(a1[28] ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a1[29] ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(a1[30] ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(a1[31] ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(a1[32] ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a1[33] ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(a1[34] ^ v38 ^ HIBYTE(v37))];
    *(a1 + 18) = crc_16_l_table[(a1[35] ^ v39 ^ HIBYTE(v38))] ^ ~(v39 >> 8);
    if (a2 >= 76)
    {
      bzero(__src, 0x800uLL);
      v40 = 0;
      v41 = 0;
      do
      {
        while (1)
        {
          v42 = a1[v40];
          v43 = v41;
          v44 = v41 + 1;
          if ((v42 - 125) > 1)
          {
            break;
          }

          v41 += 2;
          __src[v44] = v42 & 0x5F;
          __src[v43] = 125;
          if (++v40 == 38)
          {
            goto LABEL_10;
          }
        }

        ++v41;
        __src[v43] = v42;
        ++v40;
      }

      while (v40 != 38);
LABEL_10:
      memcpy(a1, __src, v41);
      result = (v41 + 1);
      a1[v41] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v45 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_GetFileInfo(char *a1, int a2, const void *a3, int a4)
{
  v47 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a4 <= 32 && a4 + 7 <= a2)
  {
    bzero(a1, a2);
    *a1 = 785995;
    memcpy(a1 + 4, a3, a4);
    v9 = crc_16_l_table[a1[4] ^ 4];
    v10 = crc_16_l_table[a1[5] ^ 0xAD ^ v9];
    v11 = crc_16_l_table[(a1[6] ^ v10 ^ HIBYTE(v9))];
    v12 = crc_16_l_table[(a1[7] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[8] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(a1[9] ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(a1[10] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[11] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a1[12] ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a1[13] ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a1[14] ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(a1[15] ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(a1[16] ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(a1[17] ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a1[18] ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(a1[19] ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a1[20] ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[21] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a1[22] ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a1[23] ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a1[24] ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a1[25] ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a1[26] ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(a1[27] ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(a1[28] ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a1[29] ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(a1[30] ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(a1[31] ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(a1[32] ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a1[33] ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(a1[34] ^ v38 ^ HIBYTE(v37))];
    *(a1 + 18) = crc_16_l_table[(a1[35] ^ v39 ^ HIBYTE(v38))] ^ ~(v39 >> 8);
    if (a2 >= 76)
    {
      bzero(__src, 0x800uLL);
      v40 = 0;
      v41 = 0;
      do
      {
        while (1)
        {
          v42 = a1[v40];
          v43 = v41;
          v44 = v41 + 1;
          if ((v42 - 125) > 1)
          {
            break;
          }

          v41 += 2;
          __src[v44] = v42 & 0x5F;
          __src[v43] = 125;
          if (++v40 == 38)
          {
            goto LABEL_10;
          }
        }

        ++v41;
        __src[v43] = v42;
        ++v40;
      }

      while (v40 != 38);
LABEL_10:
      memcpy(a1, __src, v41);
      result = (v41 + 1);
      a1[v41] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v45 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_DeleteFile(char *a1, int a2, const void *a3, int a4)
{
  v47 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a4 <= 32 && a4 + 7 <= a2)
  {
    bzero(a1, a2);
    *a1 = 589387;
    memcpy(a1 + 4, a3, a4);
    v9 = crc_16_l_table[a1[4] ^ 0x6CLL];
    v10 = crc_16_l_table[(a1[5] ^ v9) ^ 0x87];
    v11 = crc_16_l_table[(a1[6] ^ v10 ^ HIBYTE(v9))];
    v12 = crc_16_l_table[(a1[7] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[8] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(a1[9] ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(a1[10] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[11] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a1[12] ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a1[13] ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a1[14] ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(a1[15] ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(a1[16] ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(a1[17] ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a1[18] ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(a1[19] ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a1[20] ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[21] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a1[22] ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a1[23] ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a1[24] ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a1[25] ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a1[26] ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(a1[27] ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(a1[28] ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a1[29] ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(a1[30] ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(a1[31] ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(a1[32] ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a1[33] ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(a1[34] ^ v38 ^ HIBYTE(v37))];
    *(a1 + 18) = crc_16_l_table[(a1[35] ^ v39 ^ HIBYTE(v38))] ^ ~(v39 >> 8);
    if (a2 >= 76)
    {
      bzero(__src, 0x800uLL);
      v40 = 0;
      v41 = 0;
      do
      {
        while (1)
        {
          v42 = a1[v40];
          v43 = v41;
          v44 = v41 + 1;
          if ((v42 - 125) > 1)
          {
            break;
          }

          v41 += 2;
          __src[v44] = v42 & 0x5F;
          __src[v43] = 125;
          if (++v40 == 38)
          {
            goto LABEL_10;
          }
        }

        ++v41;
        __src[v43] = v42;
        ++v40;
      }

      while (v40 != 38);
LABEL_10:
      memcpy(a1, __src, v41);
      result = (v41 + 1);
      a1[v41] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v45 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_WriteFile(char *a1, int a2, const void *a3, int a4, int a5, _OWORD *a6)
{
  v30 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a4 <= 32 && a4 + 135 <= a2)
  {
    bzero(a1, a2);
    *a1 = 720459;
    *(a1 + 1) = a5;
    memcpy(a1 + 8, a3, a4);
    v13 = a6[2];
    v14 = a6[3];
    v15 = a6[1];
    *(a1 + 40) = *a6;
    *(a1 + 88) = v14;
    *(a1 + 72) = v13;
    *(a1 + 56) = v15;
    v16 = a6[6];
    v17 = a6[7];
    v18 = a6[5];
    *(a1 + 104) = a6[4];
    *(a1 + 152) = v17;
    *(a1 + 136) = v16;
    *(a1 + 120) = v18;
    v19 = 1344;
    LOWORD(v20) = -1;
    v21 = a1;
    do
    {
      v22 = *v21++;
      v20 = crc_16_l_table[(v22 ^ v20)] ^ ((v20 & 0xFF00) >> 8);
      v19 -= 8;
    }

    while (v19);
    *(a1 + 84) = ~v20;
    if (a2 >= 340)
    {
      bzero(__src, 0x800uLL);
      v23 = 0;
      v24 = 0;
      do
      {
        while (1)
        {
          v25 = a1[v23];
          v26 = v24;
          v27 = v24 + 1;
          if ((v25 - 125) > 1)
          {
            break;
          }

          v24 += 2;
          __src[v27] = v25 & 0x5F;
          __src[v26] = 125;
          if (++v23 == 170)
          {
            goto LABEL_12;
          }
        }

        ++v24;
        __src[v26] = v25;
        ++v23;
      }

      while (v23 != 170);
LABEL_12:
      memcpy(a1, __src, v24);
      result = (v24 + 1);
      a1[v24] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_ReadFile(char *a1, int a2, const void *a3, int a4, int a5)
{
  v53 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a4 <= 32 && a4 + 135 <= a2)
  {
    bzero(a1, a2);
    *a1 = 654923;
    *(a1 + 1) = a5;
    memcpy(a1 + 8, a3, a4);
    v11 = crc_16_l_table[a5 ^ 0xB4];
    v12 = crc_16_l_table[(v11 ^ BYTE1(a5)) ^ 0x9E];
    v13 = crc_16_l_table[(v12 ^ HIBYTE(v11) ^ BYTE2(a5))];
    v14 = crc_16_l_table[(a1[7] ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(a1[8] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[9] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a1[10] ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a1[11] ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a1[12] ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(a1[13] ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(a1[14] ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(a1[15] ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a1[16] ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(a1[17] ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a1[18] ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[19] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a1[20] ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a1[21] ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a1[22] ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a1[23] ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a1[24] ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(a1[25] ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(a1[26] ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a1[27] ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(a1[28] ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(a1[29] ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(a1[30] ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a1[31] ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(a1[32] ^ v38 ^ HIBYTE(v37))];
    v40 = crc_16_l_table[(a1[33] ^ v39 ^ HIBYTE(v38))];
    v41 = crc_16_l_table[(a1[34] ^ v40 ^ HIBYTE(v39))];
    v42 = crc_16_l_table[(a1[35] ^ v41 ^ HIBYTE(v40))];
    v43 = crc_16_l_table[(a1[36] ^ v42 ^ HIBYTE(v41))];
    v44 = crc_16_l_table[(a1[37] ^ v43 ^ HIBYTE(v42))];
    v45 = crc_16_l_table[(a1[38] ^ v44 ^ HIBYTE(v43))];
    *(a1 + 20) = crc_16_l_table[(a1[39] ^ v45 ^ HIBYTE(v44))] ^ ~(v45 >> 8);
    if (a2 >= 84)
    {
      bzero(__src, 0x800uLL);
      v46 = 0;
      v47 = 0;
      do
      {
        while (1)
        {
          v48 = a1[v46];
          v49 = v47;
          v50 = v47 + 1;
          if ((v48 - 125) > 1)
          {
            break;
          }

          v47 += 2;
          __src[v50] = v48 & 0x5F;
          __src[v49] = 125;
          if (++v46 == 42)
          {
            goto LABEL_10;
          }
        }

        ++v47;
        __src[v49] = v48;
        ++v46;
      }

      while (v46 != 42);
LABEL_10:
      memcpy(a1, __src, v47);
      result = (v47 + 1);
      a1[v47] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v51 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_ReadICCID_EFS_File(void *a1, int a2)
{
  v46 = *MEMORY[0x29EDCA608];
  if (a2 >= 512 && (memset(v44, 0, 25), v3 = a2, bzero(a1, a2), a1))
  {
    bzero(a1, v3);
    *a1 = 654923;
    *(a1 + 2) = 778922355;
    *(a1 + 6) = 30836;
    *(a1 + 14) = 116;
    *(a1 + 15) = v44[0];
    *(a1 + 3) = *(v44 + 9);
    v4 = crc_16_l_table[*(a1 + 7) ^ 0x6ELL];
    v5 = crc_16_l_table[*(a1 + 8) ^ 0x6A ^ v4];
    v6 = crc_16_l_table[(*(a1 + 9) ^ v5 ^ HIBYTE(v4))];
    v7 = crc_16_l_table[(*(a1 + 10) ^ v6 ^ HIBYTE(v5))];
    v8 = crc_16_l_table[(*(a1 + 11) ^ v7 ^ HIBYTE(v6))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v7)) ^ 0x74];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8)) ^ 0x78];
    v11 = crc_16_l_table[(v10 ^ HIBYTE(v9)) ^ 0x74];
    v12 = crc_16_l_table[(*(a1 + 15) ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(*(a1 + 16) ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(*(a1 + 17) ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(*(a1 + 18) ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(*(a1 + 19) ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(*(a1 + 20) ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(*(a1 + 21) ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(*(a1 + 22) ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(*(a1 + 23) ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(*(a1 + 24) ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(*(a1 + 25) ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(*(a1 + 26) ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(*(a1 + 27) ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(*(a1 + 28) ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(*(a1 + 29) ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(*(a1 + 30) ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(*(a1 + 31) ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(*(a1 + 32) ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(*(a1 + 33) ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(*(a1 + 34) ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(*(a1 + 35) ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(*(a1 + 36) ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(*(a1 + 37) ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(*(a1 + 38) ^ v34 ^ HIBYTE(v33))];
    *(a1 + 20) = crc_16_l_table[(*(a1 + 39) ^ v35 ^ HIBYTE(v34))] ^ ~(v35 >> 8);
    bzero(__src, 0x800uLL);
    v36 = 0;
    v37 = 0;
    do
    {
      while (1)
      {
        v38 = *(a1 + v36);
        v39 = v37;
        v40 = v37 + 1;
        if ((v38 - 125) > 1)
        {
          break;
        }

        v37 += 2;
        __src[v40] = v38 & 0x5F;
        __src[v39] = 125;
        if (++v36 == 42)
        {
          goto LABEL_7;
        }
      }

      ++v37;
      __src[v39] = v38;
      ++v36;
    }

    while (v36 != 42);
LABEL_7:
    memcpy(a1, __src, v37);
    result = (v37 + 1);
    *(a1 + v37) = 126;
    v42 = *MEMORY[0x29EDCA608];
  }

  else
  {
    result = 0xFFFFFFFFLL;
    v43 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t ETLDMCViewLoadMessagesFromMaskArray(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *a1 = a3;
  if (!a3)
  {
    return 1;
  }

  v6 = 16 * a3;
  v7 = malloc(v6);
  *(a1 + 8) = v7;
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  bzero(v7, v6);
  v9 = 0;
  v10 = 0;
  v11 = a3;
  do
  {
    v12 = v10 + 1;
    do
    {
      v13 = v12;
      v14 = *(a2 + 4 * v10++);
      ++v12;
    }

    while (!v14);
    v15 = &v8[16 * v9];
    v16 = v10 - 1;
    *v15 = v10 - 1;
    do
    {
      v10 = v13;
      if (v13 >> 12 > 0xC)
      {
        break;
      }

      ++v13;
    }

    while (*(a2 + 4 * v10));
    *(v15 + 1) = v10 - 1;
    v17 = v16;
    v18 = malloc(4 * ((v10 - 1) - v16 + 1));
    *(v15 + 1) = v18;
    v19 = v18 != 0;
    if (!v18)
    {
      break;
    }

    memcpy(v18, (a2 + 4 * v17), 4 * ((v10 - 1) - v17 + 1));
    ++v9;
  }

  while (v9 != v11);
  return v19;
}

uint64_t ETLDMCViewCopyMasksToMaskArray(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2)
  {
    v3 = 0;
    v4 = *(a1 + 1);
    do
    {
      v5 = (v4 + 16 * v3);
      v6 = *v5;
      v7 = v5[1] - v6 + 1;
      v8 = v7;
      if (v5[1] - v6 == -1)
      {
        goto LABEL_4;
      }

      v9 = *(v5 + 1);
      if (v7 >= 8uLL)
      {
        v10 = 0;
        if (__CFADD__(v6, v7 - 1) || (v7 - 1) >> 32)
        {
          goto LABEL_8;
        }

        v15 = a2 + 4 * v6;
        if (v9 >= v15 + 4 * v7 || v15 >= v9 + 4 * v7)
        {
          v17 = v7 & 7;
          v10 = v8 - v17;
          v18 = v9 + 1;
          v19 = v8 - v17;
          v20 = v6;
          do
          {
            v21 = (a2 + 4 * v20);
            v22 = vorrq_s8(v21[1], *v18);
            *v21 = vorrq_s8(*v21, v18[-1]);
            v21[1] = v22;
            v20 += 8;
            v18 += 2;
            v19 -= 8;
          }

          while (v19);
          if (!v17)
          {
            goto LABEL_3;
          }

          goto LABEL_8;
        }
      }

      v10 = 0;
LABEL_8:
      v11 = v8 - v10;
      v12 = &v9->i32[v10];
      v13 = v10 + v6;
      do
      {
        v14 = *v12++;
        *(a2 + 4 * v13++) |= v14;
        --v11;
      }

      while (v11);
LABEL_3:
      v2 = *a1;
LABEL_4:
      ++v3;
    }

    while (v3 < v2);
  }

  return 1;
}

uint64_t ETLDMCLoadEventRangesFromEventsArray(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (!a4)
  {
    return 1;
  }

  result = malloc(4 * a3);
  *(a1 + 32) = result;
  if (result)
  {
    *(a1 + 24) = a3;
    *(a1 + 40) = a4;
    if (a3)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v13 = (a2 + 2 * v10);
        v11 = a4 - v10;
        v14 = *v13;
        if (a4 - v10 < 2)
        {
          v11 = 1;
        }

        else
        {
          v15 = v14 + 1;
          v16 = 1;
          while (v15 == v13[v16])
          {
            ++v16;
            ++v15;
            if (v11 == v16)
            {
              goto LABEL_6;
            }
          }

          v11 = v16;
        }

LABEL_6:
        v12 = (result + 4 * v9);
        *v12 = v14;
        v12[1] = v14 + v11 - 1;
        v10 += v11;
        ++v9;
      }

      while (v9 != a3);
    }

    return 1;
  }

  return result;
}

void ETLDMCViewFree(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      v3 = a1[1];
      if (v3)
      {
        v4 = 1;
        v5 = 8;
LABEL_6:
        v6 = *(v3 + v5);
        if (v6)
        {
          free(v6);
          *(v3 + v5) = 0;
          v2 = *a1;
        }

        while (v4 < v2)
        {
          v3 = a1[1];
          ++v4;
          v5 += 16;
          if (v3)
          {
            goto LABEL_6;
          }
        }
      }
    }

    v7 = a1[1];
    if (v7)
    {
      free(v7);
    }

    *a1 = 0;
    a1[1] = 0;
  }

  v8 = (a1 + 2);
  v9 = a1[2];
  if (v9)
  {
    free(*(v9 + 8));
    *(v9 + 8) = 0;
    v10 = *v8;
    if (!*v8)
    {
      goto LABEL_29;
    }

    free(v10[3]);
    v10[3] = 0;
    v11 = *v8;
    if (!*v8)
    {
      goto LABEL_29;
    }

    free(v11[5]);
    v11[5] = 0;
    v12 = *v8;
    if (!*v8)
    {
      goto LABEL_29;
    }

    free(v12[7]);
    v12[7] = 0;
    v13 = *v8;
    if (!*v8)
    {
      goto LABEL_29;
    }

    free(v13[9]);
    v13[9] = 0;
    v14 = *v8;
    if (!*v8)
    {
      goto LABEL_29;
    }

    free(v14[11]);
    v14[11] = 0;
    v15 = *v8;
    if (!*v8)
    {
      goto LABEL_29;
    }

    free(v15[13]);
    v15[13] = 0;
    v16 = *v8;
    if (!*v8)
    {
      goto LABEL_29;
    }

    free(v16[15]);
    v16[15] = 0;
    v17 = *v8;
    if (!*v8)
    {
      goto LABEL_29;
    }

    free(v17[17]);
    v17[17] = 0;
    v18 = *v8;
    if (!*v8)
    {
      goto LABEL_29;
    }

    free(v18[19]);
    v18[19] = 0;
    v19 = *v8;
    if (!*v8)
    {
      goto LABEL_29;
    }

    free(v19[21]);
    v19[21] = 0;
    v20 = *v8;
    if (!*v8)
    {
      goto LABEL_29;
    }

    free(v20[23]);
    v20[23] = 0;
    v21 = *v8;
    if (!*v8)
    {
      goto LABEL_29;
    }

    free(v21[25]);
    v21[25] = 0;
    v22 = *v8;
    if (!*v8)
    {
      goto LABEL_29;
    }

    free(v22[27]);
    v22[27] = 0;
    v23 = *v8;
    if (*v8 && (free(v23[29]), v23[29] = 0, (v24 = *v8) != 0))
    {
      free(v24[31]);
      v24[31] = 0;
      v25 = *v8;
    }

    else
    {
LABEL_29:
      v25 = 0;
    }

    free(v25);
  }

  *v8 = 0;
  a1[3] = 0;
  v26 = a1[4];
  if (v26)
  {
    free(v26);
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v27 = a1[7];
  if (v27)
  {
    free(v27);
  }

  a1[6] = 0;
  a1[7] = 0;
}

uint64_t ETLDMCViewMerge(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = *a2;
  v7 = *a3;
  if (!v6)
  {
    if (!v7 || (_ETLDMCViewCopyMessageMasks(a1, a3) & 1) != 0)
    {
      goto LABEL_46;
    }

    return 0;
  }

  if (!v7)
  {
    if (_ETLDMCViewCopyMessageMasks(a1, a2))
    {
      goto LABEL_46;
    }

    return 0;
  }

  result = malloc(0x34000uLL);
  if (!result)
  {
    return result;
  }

  v9 = result;
  bzero(result, 0x34000uLL);
  v10 = 0;
  v11 = *(a2 + 1);
  do
  {
    v12 = (v11 + 16 * v10);
    v13 = *v12;
    v14 = v12[1] - v13 + 1;
    v15 = v14;
    if (v12[1] - v13 == -1)
    {
      goto LABEL_5;
    }

    v16 = *(v12 + 1);
    if (v14 < 8uLL)
    {
      v17 = 0;
LABEL_14:
      v24 = v15 - v17;
      v25 = &v16->i32[v17];
      v26 = v17 + v13;
      do
      {
        v27 = *v25++;
        v9[v26++] |= v27;
        --v24;
      }

      while (v24);
      goto LABEL_5;
    }

    v17 = 0;
    if (__CFADD__(v13, v14 - 1))
    {
      goto LABEL_14;
    }

    if ((v14 - 1) >> 32)
    {
      goto LABEL_14;
    }

    v18 = v14 & 7;
    v17 = v15 - v18;
    v19 = v16 + 1;
    v20 = v15 - v18;
    v21 = v13;
    do
    {
      v22 = &v9[v21];
      v23 = vorrq_s8(v22[1], *v19);
      *v22 = vorrq_s8(*v22, v19[-1]);
      v22[1] = v23;
      v21 += 8;
      v19 += 2;
      v20 -= 8;
    }

    while (v20);
    if (v18)
    {
      goto LABEL_14;
    }

LABEL_5:
    ++v10;
  }

  while (v10 != v6);
  v28 = 0;
  v29 = *(a3 + 1);
  do
  {
    v30 = (v29 + 16 * v28);
    v31 = *v30;
    v32 = v30[1] - v31 + 1;
    v33 = v32;
    if (v30[1] - v31 == -1)
    {
      goto LABEL_21;
    }

    v34 = *(v30 + 1);
    if (v32 < 8uLL)
    {
      v35 = 0;
LABEL_30:
      v42 = v33 - v35;
      v43 = &v34->i32[v35];
      v44 = v35 + v31;
      do
      {
        v45 = *v43++;
        v9[v44++] |= v45;
        --v42;
      }

      while (v42);
      goto LABEL_21;
    }

    v35 = 0;
    if (__CFADD__(v31, v32 - 1))
    {
      goto LABEL_30;
    }

    if ((v32 - 1) >> 32)
    {
      goto LABEL_30;
    }

    v36 = v32 & 7;
    v35 = v33 - v36;
    v37 = v34 + 1;
    v38 = v33 - v36;
    v39 = v31;
    do
    {
      v40 = &v9[v39];
      v41 = vorrq_s8(v40[1], *v37);
      *v40 = vorrq_s8(*v40, v37[-1]);
      v40[1] = v41;
      v39 += 8;
      v37 += 2;
      v38 -= 8;
    }

    while (v38);
    if (v36)
    {
      goto LABEL_30;
    }

LABEL_21:
    ++v28;
  }

  while (v28 != v7);
  v46 = 0;
  v47 = 0;
  v48 = 0;
  do
  {
    if ((v46 - v47) > 1 || v48 == 0)
    {
      v50 = v48 + 1;
    }

    else
    {
      v50 = v48;
    }

    if (v9[v46])
    {
      v48 = v50;
      v47 = v46;
    }

    ++v46;
  }

  while (v46 != 53248);
  MessagesFromMaskArray = ETLDMCViewLoadMessagesFromMaskArray(a1, v9, v48);
  free(v9);
  if (!MessagesFromMaskArray)
  {
    return 0;
  }

LABEL_46:
  v52 = *(a3 + 2);
  if (!*(a2 + 2))
  {
    if (!v52 || (_ETLDMCViewCopyLogMasks(a1, a3) & 1) != 0)
    {
      goto LABEL_68;
    }

    return 0;
  }

  if (!v52)
  {
    if (_ETLDMCViewCopyLogMasks(a1, a2))
    {
      goto LABEL_68;
    }

    return 0;
  }

  result = malloc(0x100uLL);
  *(a1 + 16) = result;
  if (!result)
  {
    return result;
  }

  v53 = 0;
  *(result + 224) = 0u;
  *(result + 240) = 0u;
  *(result + 192) = 0u;
  *(result + 208) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  do
  {
    v54 = *(a2 + 2) + 16 * v53;
    v55 = *(a3 + 2) + 16 * v53;
    if (*v54 || *v55)
    {
      v56 = *(a1 + 16) + 16 * v53;
      result = malloc(0x200uLL);
      *(v56 + 8) = result;
      if (!result)
      {
        return result;
      }

      v57 = *(v54 + 8);
      if (v57)
      {
        memcpy(result, v57, 0x200uLL);
        v58 = *v54;
        *v56 = *v54;
        if (*(v55 + 8))
        {
          v59 = *v55;
          if (*v55 > v58)
          {
            *v56 = v59;
          }

          v60 = v59 + 7;
          if ((v59 + 7) >= 8)
          {
            v61 = 0;
            v62 = v60 >> 3;
            do
            {
              *(*(v56 + 8) + v61) |= *(*(v55 + 8) + v61);
              ++v61;
            }

            while (v62 != v61);
          }
        }
      }

      else
      {
        v63 = *(v55 + 8);
        if (v63)
        {
          memcpy(result, v63, 0x200uLL);
          *v56 = *v55;
        }
      }
    }

    ++v53;
  }

  while (v53 != 14);
LABEL_68:
  v64 = a2[6];
  v65 = a3[6];
  if (!v64)
  {
    if (!v65)
    {
      goto LABEL_130;
    }

    result = malloc(4 * v65);
    *(a1 + 32) = result;
    if (result)
    {
      bzero(result, 4 * v65);
      v93 = 0;
      *(a1 + 24) = v65;
      *(a1 + 40) = a3[10];
      do
      {
        *(*(a1 + 32) + 4 * v93) = *(*(a3 + 4) + 4 * v93);
        ++v93;
      }

      while (v93 < *(a1 + 24));
      goto LABEL_130;
    }

    return result;
  }

  if (!v65)
  {
    result = malloc(4 * v64);
    *(a1 + 32) = result;
    if (result)
    {
      bzero(result, 4 * v64);
      v94 = 0;
      *(a1 + 24) = v64;
      *(a1 + 40) = a2[10];
      do
      {
        *(*(a1 + 32) + 4 * v94) = *(*(a2 + 4) + 4 * v94);
        ++v94;
      }

      while (v94 < *(a1 + 24));
      goto LABEL_130;
    }

    return result;
  }

  v66 = 2 * (a3[10] + a2[10]);
  result = malloc(v66);
  if (!result)
  {
    return result;
  }

  v67 = result;
  bzero(result, v66);
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  while (2)
  {
    v83 = -1;
    if (v69 == 0xFFFF)
    {
      v84 = -1;
      if (v71 == 0xFFFF)
      {
        goto LABEL_94;
      }

LABEL_97:
      v84 = *(*(a3 + 4) + 4 * v71) + v70;
      if (v83 == 0xFFFF)
      {
        goto LABEL_98;
      }

LABEL_99:
      if (v83 == v84)
      {
        v67[v72] = v83;
        v75 = (*(a2 + 4) + 4 * v69);
        v76 = v75[1] - *v75;
        if (v69 + 1 == v64)
        {
          v77 = 0xFFFF;
        }

        else
        {
          v77 = v69 + 1;
        }

        v78 = v68 == v76;
        if (v68 == v76)
        {
          v68 = 0;
        }

        else
        {
          ++v68;
        }

        if (v78)
        {
          v69 = v77;
        }

        v79 = (*(a3 + 4) + 4 * v71);
        v80 = v79[1] - *v79;
        if (v71 + 1 == v65)
        {
          v81 = 0xFFFF;
        }

        else
        {
          v81 = v71 + 1;
        }

        v82 = v70 == v80;
        if (v70 == v80)
        {
          v70 = 0;
        }

        else
        {
          ++v70;
        }

        if (v82)
        {
          v71 = v81;
        }
      }

      else if (v83 >= v84)
      {
        v67[v72] = v84;
        v89 = (*(a3 + 4) + 4 * v71);
        v90 = v89[1] - *v89;
        if (v71 + 1 == v65)
        {
          v91 = 0xFFFF;
        }

        else
        {
          v91 = v71 + 1;
        }

        v92 = v70 == v90;
        if (v70 == v90)
        {
          v70 = 0;
        }

        else
        {
          ++v70;
        }

        if (v92)
        {
          v71 = v91;
        }

        v83 = v84;
      }

      else
      {
        v67[v72] = v83;
        v85 = (*(a2 + 4) + 4 * v69);
        v86 = v85[1] - *v85;
        if (v69 + 1 == v64)
        {
          v87 = 0xFFFF;
        }

        else
        {
          v87 = v69 + 1;
        }

        v88 = v68 == v86;
        if (v68 == v86)
        {
          v68 = 0;
        }

        else
        {
          ++v68;
        }

        if (v88)
        {
          v69 = v87;
        }
      }

      if (v83 - v74 > 1)
      {
        ++v73;
      }

      ++v72;
      v74 = v83;
      continue;
    }

    break;
  }

  v83 = *(*(a2 + 4) + 4 * v69) + v68;
  v84 = -1;
  if (v71 != 0xFFFF)
  {
    goto LABEL_97;
  }

LABEL_94:
  if (v83 != 0xFFFF)
  {
    goto LABEL_99;
  }

LABEL_98:
  if (v84 != 0xFFFF)
  {
    goto LABEL_99;
  }

  if (v72 == -1)
  {
    goto LABEL_126;
  }

  v105 = malloc(4 * v73);
  *(a1 + 32) = v105;
  if (!v105)
  {
    free(v67);
    return 0;
  }

  *(a1 + 24) = v73;
  *(a1 + 40) = v72 + 1;
  if (v73)
  {
    v106 = 0;
    v107 = 0;
    do
    {
      v110 = &v67[v107];
      v108 = v72 - v107 + 1;
      v111 = *v110;
      if (v108 < 2)
      {
        v108 = 1;
      }

      else
      {
        v112 = v111 + 1;
        v113 = v107 - v72;
        v114 = 1;
        while (v112 == v110[v114])
        {
          ++v112;
          ++v114;
          if (__CFADD__(v113++, 1))
          {
            goto LABEL_145;
          }
        }

        v108 = v114;
      }

LABEL_145:
      v109 = &v105[4 * v106];
      *v109 = v111;
      *(v109 + 1) = v111 + v108 - 1;
      v107 += v108;
      ++v106;
    }

    while (v106 != v73);
  }

LABEL_126:
  free(v67);
LABEL_130:
  v95 = a2[12];
  v96 = a3[12];
  if (!v95)
  {
    if (!v96)
    {
      return 1;
    }

    v101 = malloc((4 * v96));
    *(a1 + 56) = v101;
    if (v101)
    {
      v102 = v101;
      bzero(v101, (4 * v96));
      memcpy(v102, *(a3 + 7), (4 * v96));
      *(a1 + 48) = v96;
      return 1;
    }

    goto LABEL_153;
  }

  if (!v96)
  {
    v103 = malloc((4 * v95));
    *(a1 + 56) = v103;
    if (v103)
    {
      v104 = v103;
      bzero(v103, (4 * v95));
      memcpy(v104, *(a2 + 7), (4 * v95));
      *(a1 + 48) = v95;
      return 1;
    }

    goto LABEL_153;
  }

  v97 = malloc(0x20000uLL);
  if (!v97)
  {
    goto LABEL_153;
  }

  v98 = v97;
  bzero(v97, 0x20000uLL);
  v99 = *(a2 + 7);
  if (v95 == 1)
  {
    v100 = 0;
    goto LABEL_157;
  }

  v100 = v95 & 0xFFFFFFFE;
  v116 = (v99 + 4);
  v117 = v100;
  do
  {
    v118 = *(v116 - 1);
    v119 = v116[1];
    v120 = *(v116 - 2);
    v121 = *v116;
    v116 += 4;
    v98[v120] = v118;
    v98[v121] = v119;
    v117 -= 2;
  }

  while (v117);
  if (v100 != v95)
  {
LABEL_157:
    v122 = v95 - v100;
    v123 = (v99 + 4 * v100 + 2);
    do
    {
      v98[*(v123 - 1)] = *v123;
      v123 += 2;
      --v122;
    }

    while (v122);
  }

  v124 = (*(a3 + 7) + 2);
  do
  {
    v125 = *(v124 - 1);
    v126 = *v124;
    v124 += 2;
    v98[v125] |= v126;
    --v96;
  }

  while (v96);
  v127 = 0;
  v128 = 0uLL;
  v129.i64[0] = 0x100000001;
  v129.i64[1] = 0x100000001;
  v130 = 0uLL;
  v131 = 0uLL;
  v132 = 0uLL;
  do
  {
    v133 = vtstq_s16(*&v98[v127], *&v98[v127]);
    v134 = vtstq_s16(*&v98[v127 + 8], *&v98[v127 + 8]);
    v130 = vaddq_s32(v130, vandq_s8(vmovl_high_u16(v133), v129));
    v128 = vaddq_s32(v128, vandq_s8(vmovl_u16(*v133.i8), v129));
    v132 = vaddq_s32(v132, vandq_s8(vmovl_high_u16(v134), v129));
    v131 = vaddq_s32(v131, vandq_s8(vmovl_u16(*v134.i8), v129));
    v127 += 16;
  }

  while (v127 != 0x10000);
  v135 = vaddvq_s32(vaddq_s32(vaddq_s32(v131, v128), vaddq_s32(v132, v130)));
  v136 = v135;
  *(a1 + 48) = v135;
  v137 = malloc(4 * v135);
  *(a1 + 56) = v137;
  if (!v137)
  {
LABEL_153:
    _ETLDebugPrint();
    return 0;
  }

  v138 = v137;
  bzero(v137, 2 * v136);
  v139 = 0;
  v140 = 0;
  do
  {
    v141 = v98[v139];
    if (v141)
    {
      v142 = &v138[4 * v140];
      *v142 = v139;
      ++v140;
      *(v142 + 1) = v141;
    }

    ++v139;
  }

  while (v139 != 0x10000);
  free(v98);
  return 1;
}

uint64_t _ETLDMCViewCopyMessageMasks(unsigned int *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = malloc((16 * *a2));
  *(a1 + 1) = v5;
  if (v5)
  {
    bzero(v5, 16 * v4);
    *a1 = v4;
    if (!v4)
    {
      return 1;
    }

    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *(a1 + 1);
      v9 = (*(a2 + 8) + v6);
      v10 = 4 * (*(v9 + 1) - *v9) + 4;
      v11 = malloc(v10);
      *(v8 + v6 + 8) = v11;
      if (!v11)
      {
        break;
      }

      memcpy(v11, v9[1], v10);
      *(v8 + v6) = *v9;
      ++v7;
      v6 += 16;
      if (v7 >= *a1)
      {
        return 1;
      }
    }
  }

  _ETLDebugPrint();
  return 0;
}

uint64_t _ETLDMCViewCopyLogMasks(uint64_t a1, uint64_t a2)
{
  result = malloc(0x100uLL);
  *(a1 + 16) = result;
  if (result)
  {
    v5 = result;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    v6 = *(a2 + 16);
    if (*v6)
    {
      result = malloc(0x200uLL);
      *(v5 + 8) = result;
      if (!result)
      {
        return result;
      }

      memcpy(result, *(v6 + 8), 0x200uLL);
      *v5 = *v6;
    }

    if (*(v6 + 16))
    {
      result = malloc(0x200uLL);
      *(v5 + 24) = result;
      if (!result)
      {
        return result;
      }

      memcpy(result, *(v6 + 24), 0x200uLL);
      *(v5 + 16) = *(v6 + 16);
    }

    if (*(v6 + 32))
    {
      result = malloc(0x200uLL);
      *(v5 + 40) = result;
      if (!result)
      {
        return result;
      }

      memcpy(result, *(v6 + 40), 0x200uLL);
      *(v5 + 32) = *(v6 + 32);
    }

    if (*(v6 + 48))
    {
      result = malloc(0x200uLL);
      *(v5 + 56) = result;
      if (!result)
      {
        return result;
      }

      memcpy(result, *(v6 + 56), 0x200uLL);
      *(v5 + 48) = *(v6 + 48);
    }

    v7 = *(v6 + 64);
    if (v7)
    {
      result = malloc(0x200uLL);
      *(v5 + 72) = result;
      if (!result)
      {
        return result;
      }

      memcpy(result, *(v6 + 72), 0x200uLL);
      *(v5 + 64) = v7;
    }

    v8 = *(v6 + 80);
    if (v8)
    {
      result = malloc(0x200uLL);
      *(v5 + 88) = result;
      if (!result)
      {
        return result;
      }

      memcpy(result, *(v6 + 88), 0x200uLL);
      *(v5 + 80) = v8;
    }

    v9 = *(v6 + 96);
    if (v9)
    {
      result = malloc(0x200uLL);
      *(v5 + 104) = result;
      if (!result)
      {
        return result;
      }

      memcpy(result, *(v6 + 104), 0x200uLL);
      *(v5 + 96) = v9;
    }

    v10 = *(v6 + 112);
    if (v10)
    {
      result = malloc(0x200uLL);
      *(v5 + 120) = result;
      if (!result)
      {
        return result;
      }

      memcpy(result, *(v6 + 120), 0x200uLL);
      *(v5 + 112) = v10;
    }

    v11 = *(v6 + 128);
    if (v11)
    {
      result = malloc(0x200uLL);
      *(v5 + 136) = result;
      if (!result)
      {
        return result;
      }

      memcpy(result, *(v6 + 136), 0x200uLL);
      *(v5 + 128) = v11;
    }

    v12 = *(v6 + 144);
    if (v12)
    {
      result = malloc(0x200uLL);
      *(v5 + 152) = result;
      if (!result)
      {
        return result;
      }

      memcpy(result, *(v6 + 152), 0x200uLL);
      *(v5 + 144) = v12;
    }

    v13 = *(v6 + 160);
    if (v13)
    {
      result = malloc(0x200uLL);
      *(v5 + 168) = result;
      if (!result)
      {
        return result;
      }

      memcpy(result, *(v6 + 168), 0x200uLL);
      *(v5 + 160) = v13;
    }

    v14 = *(v6 + 176);
    if (v14)
    {
      result = malloc(0x200uLL);
      *(v5 + 184) = result;
      if (!result)
      {
        return result;
      }

      memcpy(result, *(v6 + 184), 0x200uLL);
      *(v5 + 176) = v14;
    }

    v15 = *(v6 + 192);
    if (v15)
    {
      result = malloc(0x200uLL);
      *(v5 + 200) = result;
      if (!result)
      {
        return result;
      }

      memcpy(result, *(v6 + 200), 0x200uLL);
      *(v5 + 192) = v15;
    }

    v16 = *(v6 + 208);
    if (v16)
    {
      result = malloc(0x200uLL);
      *(v5 + 216) = result;
      if (!result)
      {
        return result;
      }

      memcpy(result, *(v6 + 216), 0x200uLL);
      *(v5 + 208) = v16;
    }

    return 1;
  }

  return result;
}

uint64_t ETLDMCViewMergeInto(uint64_t a1, unsigned int *a2)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = ETLDMCViewMerge(&v7, a1, a2);
  if (v3)
  {
    ETLDMCViewFree(a1);
    v4 = v8;
    *a1 = v7;
    *(a1 + 16) = v4;
    v5 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v5;
  }

  else
  {
    ETLDMCViewFree(&v7);
  }

  return v3;
}

const char *ETLDMCViewGetAsString(unsigned int a1)
{
  if (a1 <= 3)
  {
    return (&ETLDMCViewGetAsString_kViewStrings)[a1];
  }

  else
  {
    return "Unknown";
  }
}

uint64_t ETLDMCViewLoadQTraces(uint64_t a1, int16x8_t *a2, unsigned int a3)
{
  if (a3)
  {
    if (a3 < 4)
    {
      v6 = 0;
      v7 = 0;
      goto LABEL_14;
    }

    if (a3 >= 0x10)
    {
      v6 = a3 & 0xFFFFFFF0;
      v8 = a2 + 1;
      v9 = 0uLL;
      v10.i64[0] = 0x100000001;
      v10.i64[1] = 0x100000001;
      v11 = v6;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      do
      {
        v15 = vtstq_s16(v8[-1], v8[-1]);
        v16 = vtstq_s16(*v8, *v8);
        v12 = vaddq_s32(v12, vandq_s8(vmovl_high_u16(v15), v10));
        v9 = vaddq_s32(v9, vandq_s8(vmovl_u16(*v15.i8), v10));
        v14 = vaddq_s32(v14, vandq_s8(vmovl_high_u16(v16), v10));
        v13 = vaddq_s32(v13, vandq_s8(vmovl_u16(*v16.i8), v10));
        v8 += 2;
        v11 -= 16;
      }

      while (v11);
      v7 = vaddvq_s32(vaddq_s32(vaddq_s32(v13, v9), vaddq_s32(v14, v12)));
      if (v6 == a3)
      {
        goto LABEL_18;
      }

      if ((a3 & 0xC) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v17 = v6;
    v6 = a3 & 0xFFFFFFFC;
    v18 = v7;
    v19 = (a2 + 2 * v17);
    v20 = v17 - v6;
    v21.i64[0] = 0x100000001;
    v21.i64[1] = 0x100000001;
    do
    {
      v22 = *v19++;
      v18 = vaddq_s32(v18, vandq_s8(vmovl_u16(vtst_s16(v22, v22)), v21));
      v20 += 4;
    }

    while (v20);
    v7 = vaddvq_s32(v18);
    if (v6 != a3)
    {
LABEL_14:
      v23 = a3 - v6;
      v24 = a2 + v6;
      do
      {
        if (*v24++)
        {
          ++v7;
        }

        --v23;
      }

      while (v23);
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_18:
  *(a1 + 48) = v7;
  v26 = malloc(4 * v7);
  *(a1 + 56) = v26;
  if (!a3)
  {
    return 0;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  while (1)
  {
    v30 = a2->i16[v27];
    if (!v30)
    {
      goto LABEL_21;
    }

    v31 = &v26[4 * v28];
    *v31 = v27;
    ++v28;
    *(v31 + 1) = v30;
    if (v28 > v7)
    {
      break;
    }

    v29 = 1;
LABEL_21:
    if (a3 == ++v27)
    {
      return v29 & 1;
    }
  }

  _ETLDebugPrint();
  v29 = 0;
  return v29 & 1;
}

uint64_t APPLIB_DIAG_FTM_SetRFMode(unsigned __int8 *a1, int a2, __int16 a3)
{
  v31 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xF)
  {
    goto LABEL_21;
  }

  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 7;
  *(a1 + 3) = a3;
  v9 = HIBYTE(a3);
  v10 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 7];
  v11 = a1[5];
  v12 = crc_16_l_table[(v11 ^ v10 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]))];
  v13 = crc_16_l_table[(v12 ^ HIBYTE(v10) ^ a3)];
  v14 = crc_16_l_table[HIBYTE(a3) ^ crc_16_l_table[(v12 ^ HIBYTE(v10) ^ a3)] ^ (v12 >> 8)];
  *(a1 + 4) = v14 ^ ~HIBYTE(crc_16_l_table[(v12 ^ HIBYTE(v10) ^ a3)]);
  if (a2 < 20)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  bzero(v30, 0x7FDuLL);
  v28 = 2891;
  if ((v7 - 125) <= 1)
  {
    v30[0] = v7 & 0x5F;
    v29 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v29 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v28 + v16) = v8 & 0x5F;
    LOBYTE(v8) = 125;
    LODWORD(v16) = v15 + 2;
  }

LABEL_10:
  v17 = a3;
  *(&v28 + v15) = v8;
  *(&v28 + v16) = 7;
  v18 = v16 + 2;
  if ((v11 - 125) <= 1)
  {
    *(&v28 + v18) = v11 & 0x5F;
    LOBYTE(v11) = 125;
    LODWORD(v18) = v16 + 3;
  }

  *(&v28 + v16 + 1) = v11;
  v19 = v18;
  v20 = v18 + 1;
  if (a3 - 125 <= 1)
  {
    *(&v28 + v20) = a3 & 0x5F;
    v17 = 125;
    LODWORD(v20) = v19 + 2;
  }

  v21 = ~(v14 ^ BYTE1(v13));
  *(&v28 + v19) = v17;
  v22 = v20 + 1;
  if (HIBYTE(a3) - 125 <= 1)
  {
    *(&v28 + v22) = HIBYTE(a3) & 0x5F;
    v9 = 125;
    LODWORD(v22) = v20 + 2;
  }

  v23 = ((v14 ^ ~(v13 >> 8)) >> 8);
  *(&v28 + v20) = v9;
  v24 = v22;
  v25 = v22 + 1;
  if ((v21 - 125) <= 1)
  {
    *(&v28 + v25) = v21 & 0x5F;
    LOBYTE(v21) = 125;
    LODWORD(v25) = v24 + 2;
  }

  *(&v28 + v24) = v21;
  v26 = v25 + 1;
  if ((v23 - 125) <= 1)
  {
    *(&v28 + v26) = v23 & 0x5F;
    LOBYTE(v23) = 125;
    LODWORD(v26) = v25 + 2;
  }

  *(&v28 + v25) = v23;
  memcpy(a1, &v28, v26);
  result = (v26 + 1);
  a1[v26] = 126;
LABEL_21:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetChannel(unsigned __int8 *a1, int a2, __int16 a3)
{
  v31 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xF)
  {
    goto LABEL_21;
  }

  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 8;
  *(a1 + 3) = a3;
  v9 = HIBYTE(a3);
  v10 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 8];
  v11 = a1[5];
  v12 = crc_16_l_table[(v11 ^ v10 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]))];
  v13 = crc_16_l_table[(v12 ^ HIBYTE(v10) ^ a3)];
  v14 = crc_16_l_table[HIBYTE(a3) ^ crc_16_l_table[(v12 ^ HIBYTE(v10) ^ a3)] ^ (v12 >> 8)];
  *(a1 + 4) = v14 ^ ~HIBYTE(crc_16_l_table[(v12 ^ HIBYTE(v10) ^ a3)]);
  if (a2 < 20)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  bzero(v30, 0x7FDuLL);
  v28 = 2891;
  if ((v7 - 125) <= 1)
  {
    v30[0] = v7 & 0x5F;
    v29 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v29 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v28 + v16) = v8 & 0x5F;
    LOBYTE(v8) = 125;
    LODWORD(v16) = v15 + 2;
  }

LABEL_10:
  v17 = a3;
  *(&v28 + v15) = v8;
  *(&v28 + v16) = 8;
  v18 = v16 + 2;
  if ((v11 - 125) <= 1)
  {
    *(&v28 + v18) = v11 & 0x5F;
    LOBYTE(v11) = 125;
    LODWORD(v18) = v16 + 3;
  }

  *(&v28 + v16 + 1) = v11;
  v19 = v18;
  v20 = v18 + 1;
  if (a3 - 125 <= 1)
  {
    *(&v28 + v20) = a3 & 0x5F;
    v17 = 125;
    LODWORD(v20) = v19 + 2;
  }

  v21 = ~(v14 ^ BYTE1(v13));
  *(&v28 + v19) = v17;
  v22 = v20 + 1;
  if (HIBYTE(a3) - 125 <= 1)
  {
    *(&v28 + v22) = HIBYTE(a3) & 0x5F;
    v9 = 125;
    LODWORD(v22) = v20 + 2;
  }

  v23 = ((v14 ^ ~(v13 >> 8)) >> 8);
  *(&v28 + v20) = v9;
  v24 = v22;
  v25 = v22 + 1;
  if ((v21 - 125) <= 1)
  {
    *(&v28 + v25) = v21 & 0x5F;
    LOBYTE(v21) = 125;
    LODWORD(v25) = v24 + 2;
  }

  *(&v28 + v24) = v21;
  v26 = v25 + 1;
  if ((v23 - 125) <= 1)
  {
    *(&v28 + v26) = v23 & 0x5F;
    LOBYTE(v23) = 125;
    LODWORD(v26) = v25 + 2;
  }

  *(&v28 + v25) = v23;
  memcpy(a1, &v28, v26);
  result = (v26 + 1);
  a1[v26] = 126;
LABEL_21:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_Tx_On(unsigned __int8 *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0xD)
  {
    bzero(a1, a2);
    *a1 = 2891;
    v5 = gModeId;
    a1[2] = gModeId;
    v6 = HIBYTE(gModeId);
    a1[3] = HIBYTE(gModeId);
    a1[4] = 2;
    v7 = crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC];
    v8 = crc_16_l_table[v7 ^ HIBYTE(crc_16_l_table[v5 ^ 0xA5]) ^ 2];
    v9 = a1[5];
    v10 = crc_16_l_table[(v9 ^ v8 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC]))];
    v11 = v10 ^ ~(v8 >> 8);
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[v7 ^ HIBYTE(crc_16_l_table[v5 ^ 0xA5]) ^ 2]);
    if (a2 >= 16)
    {
      bzero(v25, 0x7FDuLL);
      __src = 2891;
      if ((v5 - 125) > 1)
      {
        v12 = 3;
      }

      else
      {
        v25[0] = v5 & 0x5F;
        v12 = 4;
        LOBYTE(v5) = 125;
      }

      v24 = v5;
      v13 = v12;
      v14 = v12 + 1;
      if ((v6 - 125) <= 1)
      {
        *(&__src + v14) = v6 & 0x5F;
        LODWORD(v14) = v13 + 2;
        LOBYTE(v6) = 125;
      }

      v15 = ~(v10 ^ BYTE1(v8));
      *(&__src + v13) = v6;
      v16 = v14 + 1;
      *(&__src + v14) = 2;
      v17 = v14 + 2;
      if ((v9 - 125) <= 1)
      {
        *(&__src + v17) = v9 & 0x5F;
        LOBYTE(v9) = 125;
        LODWORD(v17) = v14 + 3;
      }

      v18 = (v10 ^ ~(v8 >> 8)) >> 8;
      *(&__src + v16) = v9;
      v19 = v17;
      v20 = v17 + 1;
      if ((v15 - 125) <= 1)
      {
        *(&__src + v20) = v15 & 0x5F;
        LOBYTE(v15) = 125;
        LODWORD(v20) = v19 + 2;
      }

      *(&__src + v19) = v15;
      v21 = v20 + 1;
      if (BYTE1(v11) - 125 <= 1)
      {
        *(&__src + v21) = BYTE1(v11) & 0x5F;
        v18 = 125;
        LODWORD(v21) = v20 + 2;
      }

      *(&__src + v20) = v18;
      memcpy(a1, &__src, v21);
      result = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_Tx_Off(unsigned __int8 *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0xD)
  {
    bzero(a1, a2);
    *a1 = 2891;
    v5 = gModeId;
    a1[2] = gModeId;
    v6 = HIBYTE(gModeId);
    a1[3] = HIBYTE(gModeId);
    a1[4] = 3;
    v7 = crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC];
    v8 = crc_16_l_table[v7 ^ HIBYTE(crc_16_l_table[v5 ^ 0xA5]) ^ 3];
    v9 = a1[5];
    v10 = crc_16_l_table[(v9 ^ v8 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC]))];
    v11 = v10 ^ ~(v8 >> 8);
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[v7 ^ HIBYTE(crc_16_l_table[v5 ^ 0xA5]) ^ 3]);
    if (a2 >= 16)
    {
      bzero(v25, 0x7FDuLL);
      __src = 2891;
      if ((v5 - 125) > 1)
      {
        v12 = 3;
      }

      else
      {
        v25[0] = v5 & 0x5F;
        v12 = 4;
        LOBYTE(v5) = 125;
      }

      v24 = v5;
      v13 = v12;
      v14 = v12 + 1;
      if ((v6 - 125) <= 1)
      {
        *(&__src + v14) = v6 & 0x5F;
        LODWORD(v14) = v13 + 2;
        LOBYTE(v6) = 125;
      }

      v15 = ~(v10 ^ BYTE1(v8));
      *(&__src + v13) = v6;
      v16 = v14 + 1;
      *(&__src + v14) = 3;
      v17 = v14 + 2;
      if ((v9 - 125) <= 1)
      {
        *(&__src + v17) = v9 & 0x5F;
        LOBYTE(v9) = 125;
        LODWORD(v17) = v14 + 3;
      }

      v18 = (v10 ^ ~(v8 >> 8)) >> 8;
      *(&__src + v16) = v9;
      v19 = v17;
      v20 = v17 + 1;
      if ((v15 - 125) <= 1)
      {
        *(&__src + v20) = v15 & 0x5F;
        LOBYTE(v15) = 125;
        LODWORD(v20) = v19 + 2;
      }

      *(&__src + v19) = v15;
      v21 = v20 + 1;
      if (BYTE1(v11) - 125 <= 1)
      {
        *(&__src + v21) = BYTE1(v11) & 0x5F;
        v18 = 125;
        LODWORD(v21) = v20 + 2;
      }

      *(&__src + v20) = v18;
      memcpy(a1, &__src, v21);
      result = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetWaveForm(unsigned __int8 *a1, int a2, int a3, int a4)
{
  v28 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xF)
  {
    goto LABEL_20;
  }

  bzero(a1, a2);
  *a1 = 2891;
  *(a1 + 1) = gModeId;
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_14;
    }

    if (a4)
    {
      if (a4 == 1)
      {
        a1[4] = -120;
        v9 = 10;
        v10 = 64;
        v11 = 1;
        v12 = 9;
        v13 = 8;
        v14 = 7;
        v15 = 6;
        v16 = 1;
        goto LABEL_11;
      }

LABEL_14:
      result = 0xFFFFFFFFLL;
      v20 = *MEMORY[0x29EDCA608];
      return result;
    }

    v9 = 9;
    v10 = 56;
    v16 = 1;
  }

  else
  {
    v16 = 0;
    v9 = 9;
    v10 = 56;
  }

  v11 = 50;
  v12 = 8;
  v13 = 7;
  v14 = 6;
  v15 = 4;
LABEL_11:
  a1[v15] = v11;
  a1[v14] = v16;
  LOWORD(v17) = -1;
  v18 = a1;
  do
  {
    v19 = *v18++;
    v17 = crc_16_l_table[(v19 ^ v17)] ^ ((v17 & 0xFF00) >> 8);
    v10 -= 8;
  }

  while (v10);
  a1[v13] = ~v17;
  a1[v12] = ~v17 >> 8;
  if (a2 < 2 * v9)
  {
    goto LABEL_14;
  }

  bzero(__src, 0x800uLL);
  v21 = 0;
  v22 = 0;
  do
  {
    while (1)
    {
      v23 = a1[v21];
      v24 = v22;
      v25 = v22 + 1;
      if ((v23 - 125) > 1)
      {
        break;
      }

      v22 += 2;
      __src[v25] = v23 & 0x5F;
      __src[v24] = 125;
      if (v9 == ++v21)
      {
        goto LABEL_19;
      }
    }

    ++v22;
    __src[v24] = v23;
    ++v21;
  }

  while (v9 != v21);
LABEL_19:
  memcpy(a1, __src, v22);
  result = (v22 + 1);
  a1[v22] = 126;
LABEL_20:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetPARange(unsigned __int8 *a1, int a2, unsigned __int8 a3)
{
  v32 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xF)
  {
    goto LABEL_21;
  }

  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 54;
  a1[6] = a3;
  v9 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 0x36];
  v10 = a1[5];
  v11 = crc_16_l_table[(v10 ^ v9 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]))];
  v12 = crc_16_l_table[(v11 ^ HIBYTE(v9) ^ a3)];
  v13 = crc_16_l_table[(a1[7] ^ v12 ^ HIBYTE(v11))];
  v14 = v13 ^ ~(v12 >> 8);
  *(a1 + 4) = v13 ^ ~HIBYTE(crc_16_l_table[(v11 ^ HIBYTE(v9) ^ a3)]);
  if (a2 < 20)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  bzero(v31, 0x7FDuLL);
  v29 = 2891;
  if ((v7 - 125) <= 1)
  {
    v31[0] = v7 & 0x5F;
    v30 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v30 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v29 + v16) = v8 & 0x5F;
    LOBYTE(v8) = 125;
    LODWORD(v16) = v15 + 2;
  }

LABEL_10:
  v17 = a3;
  *(&v29 + v15) = v8;
  *(&v29 + v16) = 54;
  v18 = v16 + 2;
  if ((v10 - 125) <= 1)
  {
    *(&v29 + v18) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v18) = v16 + 3;
  }

  *(&v29 + v16 + 1) = v10;
  v19 = v18;
  v20 = v18 + 1;
  if (a3 - 125 <= 1)
  {
    *(&v29 + v20) = a3 & 0x5F;
    v17 = 125;
    LODWORD(v20) = v19 + 2;
  }

  *(&v29 + v19) = v17;
  v21 = ~(v13 ^ BYTE1(v12));
  v22 = a1[7];
  v23 = v20;
  v24 = v20 + 1;
  if ((v22 - 125) <= 1)
  {
    *(&v29 + v24) = v22 & 0x5F;
    LOBYTE(v22) = 125;
    LODWORD(v24) = v23 + 2;
  }

  v25 = (v13 ^ ~(v12 >> 8)) >> 8;
  *(&v29 + v23) = v22;
  v26 = v24 + 1;
  if ((v21 - 125) <= 1)
  {
    *(&v29 + v26) = v21 & 0x5F;
    LOBYTE(v21) = 125;
    LODWORD(v26) = v24 + 2;
  }

  *(&v29 + v24) = v21;
  v27 = v26 + 1;
  if (BYTE1(v14) - 125 <= 1)
  {
    *(&v29 + v27) = BYTE1(v14) & 0x5F;
    v25 = 125;
    LODWORD(v27) = v26 + 2;
  }

  *(&v29 + v26) = v25;
  memcpy(a1, &v29, v27);
  result = (v27 + 1);
  a1[v27] = 126;
LABEL_21:
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetPDM(unsigned __int8 *a1, int a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v39 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x11)
  {
    goto LABEL_25;
  }

  bzero(a1, a2);
  *a1 = 2891;
  v9 = gModeId;
  a1[2] = gModeId;
  v10 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 0;
  a1[6] = a3;
  a1[8] = a4;
  v11 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v9 ^ 0xA5])];
  v12 = a1[5];
  v13 = crc_16_l_table[(v12 ^ v11 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC]))];
  v14 = crc_16_l_table[(v13 ^ HIBYTE(v11) ^ a3)];
  v15 = crc_16_l_table[(a1[7] ^ v14 ^ HIBYTE(v13))];
  v16 = crc_16_l_table[(v15 ^ HIBYTE(v14) ^ a4)];
  v17 = crc_16_l_table[(a1[9] ^ v16 ^ HIBYTE(v15))];
  *(a1 + 5) = v17 ^ ~HIBYTE(crc_16_l_table[(v15 ^ HIBYTE(v14) ^ a4)]);
  if (a2 < 24)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_25;
  }

  v18 = v17 ^ ~(v16 >> 8);
  bzero(v38, 0x7FDuLL);
  v36 = 2891;
  if ((v9 - 125) <= 1)
  {
    v38[0] = v9 & 0x5F;
    v37 = 125;
    v19 = 4;
    v20 = 5;
    if ((v10 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v37 = v9;
  v19 = 3;
  v20 = 4;
  if ((v10 - 125) <= 1)
  {
LABEL_9:
    *(&v36 + v20) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v20) = v19 + 2;
  }

LABEL_10:
  v21 = a3;
  *(&v36 + v19) = v10;
  *(&v36 + v20) = 0;
  v22 = v20 + 2;
  if ((v12 - 125) <= 1)
  {
    *(&v36 + v22) = v12 & 0x5F;
    LOBYTE(v12) = 125;
    LODWORD(v22) = v20 + 3;
  }

  *(&v36 + v20 + 1) = v12;
  v23 = v22 + 1;
  if (a3 - 125 <= 1)
  {
    *(&v36 + v23) = a3 & 0x5F;
    LODWORD(v23) = v22 + 2;
    v21 = 125;
  }

  *(&v36 + v22) = v21;
  v24 = a4;
  v25 = a1[7];
  v26 = v23 + 1;
  if ((v25 - 125) <= 1)
  {
    *(&v36 + v26) = v25 & 0x5F;
    LOBYTE(v25) = 125;
    LODWORD(v26) = v23 + 2;
  }

  *(&v36 + v23) = v25;
  v27 = v26 + 1;
  if (a4 - 125 <= 1)
  {
    *(&v36 + v27) = a4 & 0x5F;
    v24 = 125;
    LODWORD(v27) = v26 + 2;
  }

  *(&v36 + v26) = v24;
  v28 = ~(v17 ^ BYTE1(v16));
  v29 = a1[9];
  v30 = v27;
  v31 = v27 + 1;
  if ((v29 - 125) <= 1)
  {
    *(&v36 + v31) = v29 & 0x5F;
    LOBYTE(v29) = 125;
    LODWORD(v31) = v30 + 2;
  }

  v32 = (v17 ^ ~(v16 >> 8)) >> 8;
  *(&v36 + v30) = v29;
  v33 = v31 + 1;
  if ((v28 - 125) <= 1)
  {
    *(&v36 + v33) = v28 & 0x5F;
    LOBYTE(v28) = 125;
    LODWORD(v33) = v31 + 2;
  }

  *(&v36 + v31) = v28;
  v34 = v33 + 1;
  if (BYTE1(v18) - 125 <= 1)
  {
    *(&v36 + v34) = BYTE1(v18) & 0x5F;
    v32 = 125;
    LODWORD(v34) = v33 + 2;
  }

  *(&v36 + v33) = v32;
  memcpy(a1, &v36, v34);
  result = (v34 + 1);
  a1[v34] = 126;
LABEL_25:
  v35 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_ExecuteTxSweep(unsigned __int8 *a1, int a2, unsigned __int8 a3)
{
  v28 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xE)
  {
    goto LABEL_19;
  }

  v6 = a3;
  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 116;
  a1[6] = v6;
  v9 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 0x74];
  v10 = a1[5];
  v11 = (v10 ^ v9 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]));
  v12 = crc_16_l_table[v11];
  v13 = crc_16_l_table[(v12 ^ HIBYTE(v9)) ^ v6];
  v14 = v13 ^ ~(v12 >> 8);
  *(a1 + 7) = v13 ^ ~HIBYTE(crc_16_l_table[v11]);
  if (a2 < 18)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  bzero(v27, 0x7FDuLL);
  v25 = 2891;
  if ((v7 - 125) <= 1)
  {
    v27[0] = v7 & 0x5F;
    v26 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v26 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v25 + v16) = v8 & 0x5F;
    LODWORD(v16) = v15 + 2;
    LOBYTE(v8) = 125;
  }

LABEL_10:
  *(&v25 + v15) = v8;
  *(&v25 + v16) = 116;
  v17 = v16 + 2;
  if ((v10 - 125) <= 1)
  {
    *(&v25 + v17) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v17) = v16 + 3;
  }

  v18 = ~(v13 ^ BYTE1(v12));
  *(&v25 + v16 + 1) = v10;
  v19 = v17 + 1;
  if ((v6 - 125) <= 1)
  {
    *(&v25 + v19) = v6 & 0x5F;
    LOBYTE(v6) = 125;
    LODWORD(v19) = v17 + 2;
  }

  v20 = (v13 ^ ~(v12 >> 8)) >> 8;
  *(&v25 + v17) = v6;
  v21 = v19;
  v22 = v19 + 1;
  if ((v18 - 125) <= 1)
  {
    *(&v25 + v22) = v18 & 0x5F;
    LODWORD(v22) = v21 + 2;
    LOBYTE(v18) = 125;
  }

  *(&v25 + v21) = v18;
  v23 = v22 + 1;
  if (BYTE1(v14) - 125 <= 1)
  {
    *(&v25 + v23) = BYTE1(v14) & 0x5F;
    v20 = 125;
    LODWORD(v23) = v22 + 2;
  }

  *(&v25 + v22) = v20;
  memcpy(a1, &v25, v23);
  result = (v23 + 1);
  a1[v23] = 126;
LABEL_19:
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetPDMStepSize(unsigned __int8 *a1, int a2, unsigned __int8 a3)
{
  v28 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xE)
  {
    goto LABEL_19;
  }

  v6 = a3;
  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = -127;
  a1[6] = v6;
  v9 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 0x81];
  v10 = a1[5];
  v11 = (v10 ^ v9 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]));
  v12 = crc_16_l_table[v11];
  v13 = crc_16_l_table[(v12 ^ HIBYTE(v9)) ^ v6];
  v14 = v13 ^ ~(v12 >> 8);
  *(a1 + 7) = v13 ^ ~HIBYTE(crc_16_l_table[v11]);
  if (a2 < 18)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  bzero(v27, 0x7FDuLL);
  v25 = 2891;
  if ((v7 - 125) <= 1)
  {
    v27[0] = v7 & 0x5F;
    v26 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v26 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v25 + v16) = v8 & 0x5F;
    LODWORD(v16) = v15 + 2;
    LOBYTE(v8) = 125;
  }

LABEL_10:
  *(&v25 + v15) = v8;
  *(&v25 + v16) = -127;
  v17 = v16 + 2;
  if ((v10 - 125) <= 1)
  {
    *(&v25 + v17) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v17) = v16 + 3;
  }

  v18 = ~(v13 ^ BYTE1(v12));
  *(&v25 + v16 + 1) = v10;
  v19 = v17 + 1;
  if ((v6 - 125) <= 1)
  {
    *(&v25 + v19) = v6 & 0x5F;
    LOBYTE(v6) = 125;
    LODWORD(v19) = v17 + 2;
  }

  v20 = (v13 ^ ~(v12 >> 8)) >> 8;
  *(&v25 + v17) = v6;
  v21 = v19;
  v22 = v19 + 1;
  if ((v18 - 125) <= 1)
  {
    *(&v25 + v22) = v18 & 0x5F;
    LODWORD(v22) = v21 + 2;
    LOBYTE(v18) = 125;
  }

  *(&v25 + v21) = v18;
  v23 = v22 + 1;
  if (BYTE1(v14) - 125 <= 1)
  {
    *(&v25 + v23) = BYTE1(v14) & 0x5F;
    v20 = 125;
    LODWORD(v23) = v22 + 2;
  }

  *(&v25 + v22) = v20;
  memcpy(a1, &v25, v23);
  result = (v23 + 1);
  a1[v23] = 126;
LABEL_19:
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_ConfigTxSweep(unsigned __int8 *a1, int a2, __int16 a3, __int16 a4)
{
  v45 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x11)
  {
    bzero(a1, a2);
    *a1 = 2891;
    v9 = gModeId;
    a1[2] = gModeId;
    v10 = HIBYTE(gModeId);
    a1[3] = HIBYTE(gModeId);
    a1[4] = 125;
    *(a1 + 3) = a3;
    v11 = HIBYTE(a3);
    *(a1 + 4) = a4;
    v12 = HIBYTE(a4);
    v13 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v9 ^ 0xA5]) ^ 0x7D];
    v14 = a1[5];
    v15 = crc_16_l_table[(v14 ^ v13 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC]))];
    v16 = crc_16_l_table[(v15 ^ HIBYTE(v13) ^ a3)];
    v17 = crc_16_l_table[(HIBYTE(a3) ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[HIBYTE(a4) ^ crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))] ^ (v17 >> 8)];
    *(a1 + 5) = v19 ^ ~(v18 >> 8);
    if (a2 >= 24)
    {
      v20 = v19;
      v42 = v19 ^ ~(v18 >> 8);
      bzero(v44, 0x7FFuLL);
      v21 = *a1;
      if ((v21 - 125) > 1)
      {
        v22 = 1;
      }

      else
      {
        v44[0] = v21 & 0x5F;
        v22 = 2;
        LOBYTE(v21) = 125;
      }

      __src = v21;
      v23 = a1[1];
      v24 = v22 + 1;
      if ((v23 - 125) <= 1)
      {
        v44[v24 - 1] = v23 & 0x5F;
        LOBYTE(v23) = 125;
        LODWORD(v24) = v22 + 2;
      }

      v44[v22 - 1] = v23;
      v25 = v24 + 1;
      if ((v9 - 125) <= 1)
      {
        v44[v25 - 1] = v9 & 0x5F;
        LODWORD(v25) = v24 + 2;
        LOBYTE(v9) = 125;
      }

      v44[v24 - 1] = v9;
      v26 = v25 + 1;
      if ((v10 - 125) <= 1)
      {
        v44[v26 - 1] = v10 & 0x5F;
        LOBYTE(v10) = 125;
        LODWORD(v26) = v25 + 2;
      }

      v27 = a3;
      v44[v25 - 1] = v10;
      *&v44[v26 - 1] = 23933;
      v28 = v26 + 3;
      if ((v14 - 125) <= 1)
      {
        v44[v28 - 1] = v14 & 0x5F;
        LOBYTE(v14) = 125;
        LODWORD(v28) = v26 + 4;
      }

      v44[v26 + 1] = v14;
      v29 = v28;
      v30 = v28 + 1;
      if (a3 - 125 <= 1)
      {
        v44[v30 - 1] = a3 & 0x5F;
        v27 = 125;
        LODWORD(v30) = v29 + 2;
      }

      v31 = a4;
      v44[v29 - 1] = v27;
      v32 = v30 + 1;
      if (HIBYTE(a3) - 125 <= 1)
      {
        v44[v32 - 1] = HIBYTE(a3) & 0x5F;
        v11 = 125;
        LODWORD(v32) = v30 + 2;
      }

      v44[v30 - 1] = v11;
      v33 = v32;
      v34 = v32 + 1;
      if (a4 - 125 <= 1)
      {
        v44[v34 - 1] = a4 & 0x5F;
        v31 = 125;
        LODWORD(v34) = v33 + 2;
      }

      v35 = ~(v20 ^ BYTE1(v18));
      v44[v33 - 1] = v31;
      v36 = v34 + 1;
      if (HIBYTE(a4) - 125 <= 1)
      {
        v44[v36 - 1] = HIBYTE(a4) & 0x5F;
        v12 = 125;
        LODWORD(v36) = v34 + 2;
      }

      v37 = BYTE1(v42);
      v44[v34 - 1] = v12;
      v38 = v36;
      v39 = v36 + 1;
      if ((v35 - 125) <= 1)
      {
        v44[v39 - 1] = v35 & 0x5F;
        LOBYTE(v35) = 125;
        LODWORD(v39) = v38 + 2;
      }

      v44[v38 - 1] = v35;
      v40 = v39 + 1;
      if (BYTE1(v42) - 125 <= 1)
      {
        v44[v40 - 1] = BYTE1(v42) & 0x5F;
        v37 = 125;
        LODWORD(v40) = v39 + 2;
      }

      v44[v39 - 1] = v37;
      memcpy(a1, &__src, v40);
      result = (v40 + 1);
      a1[v40] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v41 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_GetAllHDETValues(unsigned __int8 *a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x2D)
  {
    bzero(a1, a2);
    *a1 = 2891;
    *(a1 + 1) = gModeId;
    a1[4] = -112;
    v5 = 560;
    LOWORD(v6) = -1;
    v7 = a1;
    do
    {
      v8 = *v7++;
      v6 = crc_16_l_table[(v8 ^ v6)] ^ ((v6 & 0xFF00) >> 8);
      v5 -= 8;
    }

    while (v5);
    *(a1 + 35) = ~v6;
    if (a2 >= 144)
    {
      bzero(__src, 0x800uLL);
      v9 = 0;
      v10 = 0;
      do
      {
        while (1)
        {
          v11 = a1[v9];
          v12 = v10;
          v13 = v10 + 1;
          if ((v11 - 125) > 1)
          {
            break;
          }

          v10 += 2;
          __src[v13] = v11 & 0x5F;
          __src[v12] = 125;
          if (++v9 == 72)
          {
            goto LABEL_11;
          }
        }

        ++v10;
        __src[v12] = v11;
        ++v9;
      }

      while (v9 != 72);
LABEL_11:
      memcpy(a1, __src, v10);
      result = (v10 + 1);
      a1[v10] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_GetADCValue(unsigned __int8 *a1, int a2, unsigned __int8 a3)
{
  v32 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x11)
  {
    goto LABEL_21;
  }

  v6 = a3;
  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 59;
  a1[6] = v6;
  *(a1 + 4) = -14636;
  v9 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 0x3B];
  v10 = a1[5];
  v11 = crc_16_l_table[(v10 ^ v9 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]))];
  v12 = crc_16_l_table[(v11 ^ HIBYTE(v9)) ^ v6];
  v13 = crc_16_l_table[(a1[7] ^ v12 ^ HIBYTE(v11))];
  v14 = crc_16_l_table[(v13 ^ HIBYTE(v12)) ^ 0xD4];
  v15 = crc_16_l_table[crc_16_l_table[(v13 ^ HIBYTE(v12)) ^ 0xD4] ^ (v13 >> 8) ^ 0xC6];
  v16 = v15 ^ ~(v14 >> 8);
  *(a1 + 5) = v15 ^ ~HIBYTE(crc_16_l_table[(v13 ^ HIBYTE(v12)) ^ 0xD4]);
  if (a2 < 24)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  bzero(v31, 0x7FDuLL);
  v29 = 2891;
  if ((v7 - 125) <= 1)
  {
    v31[0] = v7 & 0x5F;
    v30 = 125;
    v17 = 4;
    v18 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v30 = v7;
  v17 = 3;
  v18 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v29 + v18) = v8 & 0x5F;
    LODWORD(v18) = v17 + 2;
    LOBYTE(v8) = 125;
  }

LABEL_10:
  *(&v29 + v17) = v8;
  *(&v29 + v18) = 59;
  v19 = v18 + 2;
  if ((v10 - 125) <= 1)
  {
    *(&v29 + v19) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v19) = v18 + 3;
  }

  *(&v29 + v18 + 1) = v10;
  v20 = v19;
  v21 = v19 + 1;
  if ((v6 - 125) <= 1)
  {
    *(&v29 + v21) = v6 & 0x5F;
    LOBYTE(v6) = 125;
    LODWORD(v21) = v20 + 2;
  }

  *(&v29 + v20) = v6;
  v22 = ~(v15 ^ BYTE1(v14));
  v23 = a1[7];
  v24 = v21 + 1;
  if ((v23 - 125) <= 1)
  {
    *(&v29 + v24) = v23 & 0x5F;
    LOBYTE(v23) = 125;
    LODWORD(v24) = v21 + 2;
  }

  v25 = (v15 ^ ~(v14 >> 8)) >> 8;
  *(&v29 + v21) = v23;
  *(&v29 + v24) = -14636;
  v26 = v24 + 3;
  if ((v22 - 125) <= 1)
  {
    *(&v29 + v26) = v22 & 0x5F;
    LOBYTE(v22) = 125;
    LODWORD(v26) = v24 + 4;
  }

  *(&v29 + v24 + 2) = v22;
  v27 = v26 + 1;
  if (BYTE1(v16) - 125 <= 1)
  {
    *(&v29 + v27) = BYTE1(v16) & 0x5F;
    v25 = 125;
    LODWORD(v27) = v26 + 2;
  }

  *(&v29 + v26) = v25;
  memcpy(a1, &v29, v27);
  result = (v27 + 1);
  a1[v27] = 126;
LABEL_21:
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetHDETTracking(unsigned __int8 *a1, int a2, __int16 a3, __int16 a4)
{
  v45 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x11)
  {
    bzero(a1, a2);
    *a1 = 2891;
    v9 = gModeId;
    a1[2] = gModeId;
    v10 = HIBYTE(gModeId);
    a1[3] = HIBYTE(gModeId);
    a1[4] = 124;
    *(a1 + 3) = a3;
    v11 = HIBYTE(a3);
    *(a1 + 4) = a4;
    v12 = HIBYTE(a4);
    v13 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v9 ^ 0xA5]) ^ 0x7C];
    v14 = a1[5];
    v15 = crc_16_l_table[(v14 ^ v13 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC]))];
    v16 = crc_16_l_table[(v15 ^ HIBYTE(v13) ^ a3)];
    v17 = crc_16_l_table[(HIBYTE(a3) ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[HIBYTE(a4) ^ crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))] ^ (v17 >> 8)];
    *(a1 + 5) = v19 ^ ~HIBYTE(crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))]);
    if (a2 >= 24)
    {
      v20 = v19;
      v42 = v19 ^ ~(v18 >> 8);
      bzero(v44, 0x7FFuLL);
      v21 = *a1;
      if ((v21 - 125) > 1)
      {
        v22 = 1;
      }

      else
      {
        v44[0] = v21 & 0x5F;
        v22 = 2;
        LOBYTE(v21) = 125;
      }

      __src = v21;
      v23 = a1[1];
      v24 = v22 + 1;
      if ((v23 - 125) <= 1)
      {
        v44[v24 - 1] = v23 & 0x5F;
        LOBYTE(v23) = 125;
        LODWORD(v24) = v22 + 2;
      }

      v44[v22 - 1] = v23;
      v25 = v24 + 1;
      if ((v9 - 125) <= 1)
      {
        v44[v25 - 1] = v9 & 0x5F;
        LODWORD(v25) = v24 + 2;
        LOBYTE(v9) = 125;
      }

      v44[v24 - 1] = v9;
      v26 = v25 + 1;
      if ((v10 - 125) <= 1)
      {
        v44[v26 - 1] = v10 & 0x5F;
        LOBYTE(v10) = 125;
        LODWORD(v26) = v25 + 2;
      }

      v27 = a3;
      v44[v25 - 1] = v10;
      v44[v26 - 1] = 124;
      v28 = v26 + 2;
      if ((v14 - 125) <= 1)
      {
        v44[v28 - 1] = v14 & 0x5F;
        LOBYTE(v14) = 125;
        LODWORD(v28) = v26 + 3;
      }

      v44[v26] = v14;
      v29 = v28;
      v30 = v28 + 1;
      if (a3 - 125 <= 1)
      {
        v44[v30 - 1] = a3 & 0x5F;
        v27 = 125;
        LODWORD(v30) = v29 + 2;
      }

      v31 = a4;
      v44[v29 - 1] = v27;
      v32 = v30 + 1;
      if (HIBYTE(a3) - 125 <= 1)
      {
        v44[v32 - 1] = HIBYTE(a3) & 0x5F;
        v11 = 125;
        LODWORD(v32) = v30 + 2;
      }

      v44[v30 - 1] = v11;
      v33 = v32;
      v34 = v32 + 1;
      if (a4 - 125 <= 1)
      {
        v44[v34 - 1] = a4 & 0x5F;
        v31 = 125;
        LODWORD(v34) = v33 + 2;
      }

      v35 = ~(v20 ^ BYTE1(v18));
      v44[v33 - 1] = v31;
      v36 = v34 + 1;
      if (HIBYTE(a4) - 125 <= 1)
      {
        v44[v36 - 1] = HIBYTE(a4) & 0x5F;
        v12 = 125;
        LODWORD(v36) = v34 + 2;
      }

      v37 = BYTE1(v42);
      v44[v34 - 1] = v12;
      v38 = v36;
      v39 = v36 + 1;
      if ((v35 - 125) <= 1)
      {
        v44[v39 - 1] = v35 & 0x5F;
        LOBYTE(v35) = 125;
        LODWORD(v39) = v38 + 2;
      }

      v44[v38 - 1] = v35;
      v40 = v39 + 1;
      if (BYTE1(v42) - 125 <= 1)
      {
        v44[v40 - 1] = BYTE1(v42) & 0x5F;
        v37 = 125;
        LODWORD(v40) = v39 + 2;
      }

      v44[v39 - 1] = v37;
      memcpy(a1, &__src, v40);
      result = (v40 + 1);
      a1[v40] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v41 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_GetThermistorValue(_DWORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = -2115764917;
    if (a2 >= 8)
    {
      *a1 = -2115764917;
      *(a1 + 4) = 126;
      return 5;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_GetRxAGC(unsigned __int8 *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0xF)
  {
    bzero(a1, a2);
    *a1 = 2891;
    v5 = gModeId;
    a1[2] = gModeId;
    v6 = HIBYTE(gModeId);
    a1[3] = HIBYTE(gModeId);
    a1[4] = 53;
    *(a1 + 3) = 0;
    v7 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v5 ^ 0xA5]) ^ 0x35];
    v8 = a1[5];
    v9 = crc_16_l_table[(v8 ^ v7 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC]))];
    v10 = crc_16_l_table[v9 ^ (v7 >> 8)];
    v11 = crc_16_l_table[crc_16_l_table[v9 ^ (v7 >> 8)] ^ HIBYTE(crc_16_l_table[(v8 ^ v7 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC]))])];
    v12 = v11 ^ ~(v10 >> 8);
    *(a1 + 4) = v11 ^ ~HIBYTE(crc_16_l_table[v9 ^ (v7 >> 8)]);
    if (a2 >= 20)
    {
      bzero(v25, 0x7FDuLL);
      __src = 2891;
      if ((v5 - 125) > 1)
      {
        v13 = 3;
      }

      else
      {
        v25[0] = v5 & 0x5F;
        v13 = 4;
        LOBYTE(v5) = 125;
      }

      v24 = v5;
      v14 = v13;
      v15 = v13 + 1;
      if ((v6 - 125) <= 1)
      {
        *(&__src + v15) = v6 & 0x5F;
        LODWORD(v15) = v14 + 2;
        LOBYTE(v6) = 125;
      }

      v16 = ~(v11 ^ BYTE1(v10));
      *(&__src + v14) = v6;
      v17 = v15 + 1;
      *(&__src + v15) = 53;
      v18 = v15 + 2;
      if ((v8 - 125) <= 1)
      {
        *(&__src + v18) = v8 & 0x5F;
        LOBYTE(v8) = 125;
        LODWORD(v18) = v15 + 3;
      }

      v19 = (v11 ^ ~(v10 >> 8)) >> 8;
      *(&__src + v17) = v8;
      *(&__src + v18) = 0;
      v20 = v18 + 3;
      if ((v16 - 125) <= 1)
      {
        *(&__src + v20) = v16 & 0x5F;
        LOBYTE(v16) = 125;
        LODWORD(v20) = v18 + 4;
      }

      *(&__src + v18 + 2) = v16;
      v21 = v20 + 1;
      if (BYTE1(v12) - 125 <= 1)
      {
        *(&__src + v21) = BYTE1(v12) & 0x5F;
        v19 = 125;
        LODWORD(v21) = v20 + 2;
      }

      *(&__src + v20) = v19;
      memcpy(a1, &__src, v21);
      result = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_GetSynthState(unsigned __int8 *a1, int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0xF)
  {
    bzero(a1, a2);
    *a1 = 2891;
    v5 = gModeId;
    a1[2] = gModeId;
    v6 = HIBYTE(gModeId);
    a1[3] = HIBYTE(gModeId);
    a1[4] = 16;
    a1[6] = -8;
    v7 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v5 ^ 0xA5]) ^ 0x10];
    v8 = a1[5];
    v9 = crc_16_l_table[(v8 ^ v7 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC]))];
    v10 = crc_16_l_table[crc_16_l_table[(v8 ^ v7 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC]))] ^ (v7 >> 8) ^ 0xF8];
    v11 = v10 ^ ~(v9 >> 8);
    *(a1 + 7) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ v7 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v5 ^ 0xA5] ^ v6 ^ 0xEC]))]);
    if (a2 >= 18)
    {
      bzero(v24, 0x7FDuLL);
      __src = 2891;
      if ((v5 - 125) > 1)
      {
        v12 = 3;
      }

      else
      {
        v24[0] = v5 & 0x5F;
        v12 = 4;
        LOBYTE(v5) = 125;
      }

      v23 = v5;
      v13 = v12;
      v14 = v12 + 1;
      if ((v6 - 125) <= 1)
      {
        *(&__src + v14) = v6 & 0x5F;
        LODWORD(v14) = v13 + 2;
        LOBYTE(v6) = 125;
      }

      v15 = ~(v10 ^ BYTE1(v9));
      *(&__src + v13) = v6;
      v16 = v14 + 1;
      *(&__src + v14) = 16;
      v17 = v14 + 2;
      if ((v8 - 125) <= 1)
      {
        *(&__src + v17) = v8 & 0x5F;
        LOBYTE(v8) = 125;
        LODWORD(v17) = v14 + 3;
      }

      v18 = (v10 ^ ~(v9 >> 8)) >> 8;
      *(&__src + v16) = v8;
      *(&__src + v17) = -8;
      v19 = v17 + 2;
      if ((v15 - 125) <= 1)
      {
        *(&__src + v19) = v15 & 0x5F;
        LOBYTE(v15) = 125;
        LODWORD(v19) = v17 + 3;
      }

      *(&__src + v17 + 1) = v15;
      v20 = v19 + 1;
      if (BYTE1(v11) - 125 <= 1)
      {
        *(&__src + v20) = BYTE1(v11) & 0x5F;
        v18 = 125;
        LODWORD(v20) = v19 + 2;
      }

      *(&__src + v19) = v18;
      memcpy(a1, &__src, v20);
      result = (v20 + 1);
      a1[v20] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetLNARange(unsigned __int8 *a1, int a2, unsigned __int8 a3)
{
  v32 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xF)
  {
    goto LABEL_21;
  }

  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 58;
  a1[6] = a3;
  v9 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 0x3A];
  v10 = a1[5];
  v11 = crc_16_l_table[(v10 ^ v9 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]))];
  v12 = crc_16_l_table[(v11 ^ HIBYTE(v9) ^ a3)];
  v13 = crc_16_l_table[(a1[7] ^ v12 ^ HIBYTE(v11))];
  v14 = v13 ^ ~(v12 >> 8);
  *(a1 + 4) = v13 ^ ~HIBYTE(crc_16_l_table[(v11 ^ HIBYTE(v9) ^ a3)]);
  if (a2 < 20)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  bzero(v31, 0x7FDuLL);
  v29 = 2891;
  if ((v7 - 125) <= 1)
  {
    v31[0] = v7 & 0x5F;
    v30 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v30 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v29 + v16) = v8 & 0x5F;
    LOBYTE(v8) = 125;
    LODWORD(v16) = v15 + 2;
  }

LABEL_10:
  v17 = a3;
  *(&v29 + v15) = v8;
  *(&v29 + v16) = 58;
  v18 = v16 + 2;
  if ((v10 - 125) <= 1)
  {
    *(&v29 + v18) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v18) = v16 + 3;
  }

  *(&v29 + v16 + 1) = v10;
  v19 = v18;
  v20 = v18 + 1;
  if (a3 - 125 <= 1)
  {
    *(&v29 + v20) = a3 & 0x5F;
    v17 = 125;
    LODWORD(v20) = v19 + 2;
  }

  *(&v29 + v19) = v17;
  v21 = ~(v13 ^ BYTE1(v12));
  v22 = a1[7];
  v23 = v20;
  v24 = v20 + 1;
  if ((v22 - 125) <= 1)
  {
    *(&v29 + v24) = v22 & 0x5F;
    LOBYTE(v22) = 125;
    LODWORD(v24) = v23 + 2;
  }

  v25 = (v13 ^ ~(v12 >> 8)) >> 8;
  *(&v29 + v23) = v22;
  v26 = v24 + 1;
  if ((v21 - 125) <= 1)
  {
    *(&v29 + v26) = v21 & 0x5F;
    LOBYTE(v21) = 125;
    LODWORD(v26) = v24 + 2;
  }

  *(&v29 + v24) = v21;
  v27 = v26 + 1;
  if (BYTE1(v14) - 125 <= 1)
  {
    *(&v29 + v27) = BYTE1(v14) & 0x5F;
    v25 = 125;
    LODWORD(v27) = v26 + 2;
  }

  *(&v29 + v26) = v25;
  memcpy(a1, &v29, v27);
  result = (v27 + 1);
  a1[v27] = 126;
LABEL_21:
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_GetDVGAOffset(unsigned __int8 *a1, int a2, __int16 a3)
{
  v31 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xF)
  {
    goto LABEL_21;
  }

  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 117;
  *(a1 + 3) = a3;
  v9 = HIBYTE(a3);
  v10 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 0x75];
  v11 = a1[5];
  v12 = crc_16_l_table[(v11 ^ v10 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]))];
  v13 = crc_16_l_table[(v12 ^ HIBYTE(v10) ^ a3)];
  v14 = crc_16_l_table[HIBYTE(a3) ^ crc_16_l_table[(v12 ^ HIBYTE(v10) ^ a3)] ^ (v12 >> 8)];
  *(a1 + 4) = v14 ^ ~HIBYTE(crc_16_l_table[(v12 ^ HIBYTE(v10) ^ a3)]);
  if (a2 < 20)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  bzero(v30, 0x7FDuLL);
  v28 = 2891;
  if ((v7 - 125) <= 1)
  {
    v30[0] = v7 & 0x5F;
    v29 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v29 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v28 + v16) = v8 & 0x5F;
    LOBYTE(v8) = 125;
    LODWORD(v16) = v15 + 2;
  }

LABEL_10:
  v17 = a3;
  *(&v28 + v15) = v8;
  *(&v28 + v16) = 117;
  v18 = v16 + 2;
  if ((v11 - 125) <= 1)
  {
    *(&v28 + v18) = v11 & 0x5F;
    LOBYTE(v11) = 125;
    LODWORD(v18) = v16 + 3;
  }

  *(&v28 + v16 + 1) = v11;
  v19 = v18;
  v20 = v18 + 1;
  if (a3 - 125 <= 1)
  {
    *(&v28 + v20) = a3 & 0x5F;
    v17 = 125;
    LODWORD(v20) = v19 + 2;
  }

  v21 = ~(v14 ^ BYTE1(v13));
  *(&v28 + v19) = v17;
  v22 = v20 + 1;
  if (HIBYTE(a3) - 125 <= 1)
  {
    *(&v28 + v22) = HIBYTE(a3) & 0x5F;
    v9 = 125;
    LODWORD(v22) = v20 + 2;
  }

  v23 = ((v14 ^ ~(v13 >> 8)) >> 8);
  *(&v28 + v20) = v9;
  v24 = v22;
  v25 = v22 + 1;
  if ((v21 - 125) <= 1)
  {
    *(&v28 + v25) = v21 & 0x5F;
    LOBYTE(v21) = 125;
    LODWORD(v25) = v24 + 2;
  }

  *(&v28 + v24) = v21;
  v26 = v25 + 1;
  if ((v23 - 125) <= 1)
  {
    *(&v28 + v26) = v23 & 0x5F;
    LOBYTE(v23) = 125;
    LODWORD(v26) = v25 + 2;
  }

  *(&v28 + v25) = v23;
  memcpy(a1, &v28, v26);
  result = (v26 + 1);
  a1[v26] = 126;
LABEL_21:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetDVGAOffset(unsigned __int8 *a1, int a2, unsigned __int8 a3)
{
  v32 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xF)
  {
    goto LABEL_21;
  }

  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 111;
  a1[6] = a3;
  v9 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 0x6F];
  v10 = a1[5];
  v11 = crc_16_l_table[(v10 ^ v9 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]))];
  v12 = crc_16_l_table[(v11 ^ HIBYTE(v9) ^ a3)];
  v13 = crc_16_l_table[(a1[7] ^ v12 ^ HIBYTE(v11))];
  v14 = v13 ^ ~(v12 >> 8);
  *(a1 + 4) = v13 ^ ~HIBYTE(crc_16_l_table[(v11 ^ HIBYTE(v9) ^ a3)]);
  if (a2 < 20)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  bzero(v31, 0x7FDuLL);
  v29 = 2891;
  if ((v7 - 125) <= 1)
  {
    v31[0] = v7 & 0x5F;
    v30 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v30 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v29 + v16) = v8 & 0x5F;
    LOBYTE(v8) = 125;
    LODWORD(v16) = v15 + 2;
  }

LABEL_10:
  v17 = a3;
  *(&v29 + v15) = v8;
  *(&v29 + v16) = 111;
  v18 = v16 + 2;
  if ((v10 - 125) <= 1)
  {
    *(&v29 + v18) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v18) = v16 + 3;
  }

  *(&v29 + v16 + 1) = v10;
  v19 = v18;
  v20 = v18 + 1;
  if (a3 - 125 <= 1)
  {
    *(&v29 + v20) = a3 & 0x5F;
    v17 = 125;
    LODWORD(v20) = v19 + 2;
  }

  *(&v29 + v19) = v17;
  v21 = ~(v13 ^ BYTE1(v12));
  v22 = a1[7];
  v23 = v20;
  v24 = v20 + 1;
  if ((v22 - 125) <= 1)
  {
    *(&v29 + v24) = v22 & 0x5F;
    LOBYTE(v22) = 125;
    LODWORD(v24) = v23 + 2;
  }

  v25 = (v13 ^ ~(v12 >> 8)) >> 8;
  *(&v29 + v23) = v22;
  v26 = v24 + 1;
  if ((v21 - 125) <= 1)
  {
    *(&v29 + v26) = v21 & 0x5F;
    LOBYTE(v21) = 125;
    LODWORD(v26) = v24 + 2;
  }

  *(&v29 + v24) = v21;
  v27 = v26 + 1;
  if (BYTE1(v14) - 125 <= 1)
  {
    *(&v29 + v27) = BYTE1(v14) & 0x5F;
    v25 = 125;
    LODWORD(v27) = v26 + 2;
  }

  *(&v29 + v26) = v25;
  memcpy(a1, &v29, v27);
  result = (v27 + 1);
  a1[v27] = 126;
LABEL_21:
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_GetLNAOffset(unsigned __int8 *a1, int a2, __int16 a3, __int16 a4)
{
  v45 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x11)
  {
    bzero(a1, a2);
    *a1 = 2891;
    v9 = gModeId;
    a1[2] = gModeId;
    v10 = HIBYTE(gModeId);
    a1[3] = HIBYTE(gModeId);
    a1[4] = 118;
    *(a1 + 3) = a3;
    v11 = HIBYTE(a3);
    *(a1 + 4) = a4;
    v12 = HIBYTE(a4);
    v13 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v9 ^ 0xA5]) ^ 0x76];
    v14 = a1[5];
    v15 = crc_16_l_table[(v14 ^ v13 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC]))];
    v16 = crc_16_l_table[(v15 ^ HIBYTE(v13) ^ a3)];
    v17 = crc_16_l_table[(HIBYTE(a3) ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[HIBYTE(a4) ^ crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))] ^ (v17 >> 8)];
    *(a1 + 5) = v19 ^ ~(v18 >> 8);
    if (a2 >= 24)
    {
      v20 = v19;
      v42 = v19 ^ ~(v18 >> 8);
      bzero(v44, 0x7FFuLL);
      v21 = *a1;
      if ((v21 - 125) > 1)
      {
        v22 = 1;
      }

      else
      {
        v44[0] = v21 & 0x5F;
        v22 = 2;
        LOBYTE(v21) = 125;
      }

      __src = v21;
      v23 = a1[1];
      v24 = v22 + 1;
      if ((v23 - 125) <= 1)
      {
        v44[v24 - 1] = v23 & 0x5F;
        LOBYTE(v23) = 125;
        LODWORD(v24) = v22 + 2;
      }

      v44[v22 - 1] = v23;
      v25 = v24 + 1;
      if ((v9 - 125) <= 1)
      {
        v44[v25 - 1] = v9 & 0x5F;
        LODWORD(v25) = v24 + 2;
        LOBYTE(v9) = 125;
      }

      v44[v24 - 1] = v9;
      v26 = v25 + 1;
      if ((v10 - 125) <= 1)
      {
        v44[v26 - 1] = v10 & 0x5F;
        LOBYTE(v10) = 125;
        LODWORD(v26) = v25 + 2;
      }

      v27 = a3;
      v44[v25 - 1] = v10;
      v44[v26 - 1] = 118;
      v28 = v26 + 2;
      if ((v14 - 125) <= 1)
      {
        v44[v28 - 1] = v14 & 0x5F;
        LOBYTE(v14) = 125;
        LODWORD(v28) = v26 + 3;
      }

      v44[v26] = v14;
      v29 = v28;
      v30 = v28 + 1;
      if (a3 - 125 <= 1)
      {
        v44[v30 - 1] = a3 & 0x5F;
        v27 = 125;
        LODWORD(v30) = v29 + 2;
      }

      v31 = a4;
      v44[v29 - 1] = v27;
      v32 = v30 + 1;
      if (HIBYTE(a3) - 125 <= 1)
      {
        v44[v32 - 1] = HIBYTE(a3) & 0x5F;
        v11 = 125;
        LODWORD(v32) = v30 + 2;
      }

      v44[v30 - 1] = v11;
      v33 = v32;
      v34 = v32 + 1;
      if (a4 - 125 <= 1)
      {
        v44[v34 - 1] = a4 & 0x5F;
        v31 = 125;
        LODWORD(v34) = v33 + 2;
      }

      v35 = ~(v20 ^ BYTE1(v18));
      v44[v33 - 1] = v31;
      v36 = v34 + 1;
      if (HIBYTE(a4) - 125 <= 1)
      {
        v44[v36 - 1] = HIBYTE(a4) & 0x5F;
        v12 = 125;
        LODWORD(v36) = v34 + 2;
      }

      v37 = BYTE1(v42);
      v44[v34 - 1] = v12;
      v38 = v36;
      v39 = v36 + 1;
      if ((v35 - 125) <= 1)
      {
        v44[v39 - 1] = v35 & 0x5F;
        LOBYTE(v35) = 125;
        LODWORD(v39) = v38 + 2;
      }

      v44[v38 - 1] = v35;
      v40 = v39 + 1;
      if (BYTE1(v42) - 125 <= 1)
      {
        v44[v40 - 1] = BYTE1(v42) & 0x5F;
        v37 = 125;
        LODWORD(v40) = v39 + 2;
      }

      v44[v39 - 1] = v37;
      memcpy(a1, &__src, v40);
      result = (v40 + 1);
      a1[v40] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v41 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetLNAOffset(unsigned __int8 *a1, int a2, __int16 a3, __int16 a4)
{
  v45 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x11)
  {
    bzero(a1, a2);
    *a1 = 2891;
    v9 = gModeId;
    a1[2] = gModeId;
    v10 = HIBYTE(gModeId);
    a1[3] = HIBYTE(gModeId);
    a1[4] = 81;
    *(a1 + 3) = a3;
    v11 = HIBYTE(a3);
    *(a1 + 4) = a4;
    v12 = HIBYTE(a4);
    v13 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v9 ^ 0xA5]) ^ 0x51];
    v14 = a1[5];
    v15 = crc_16_l_table[(v14 ^ v13 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC]))];
    v16 = crc_16_l_table[(v15 ^ HIBYTE(v13) ^ a3)];
    v17 = crc_16_l_table[(HIBYTE(a3) ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[HIBYTE(a4) ^ crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))] ^ (v17 >> 8)];
    *(a1 + 5) = v19 ^ ~(v18 >> 8);
    if (a2 >= 24)
    {
      v20 = v19;
      v42 = v19 ^ ~(v18 >> 8);
      bzero(v44, 0x7FFuLL);
      v21 = *a1;
      if ((v21 - 125) > 1)
      {
        v22 = 1;
      }

      else
      {
        v44[0] = v21 & 0x5F;
        v22 = 2;
        LOBYTE(v21) = 125;
      }

      __src = v21;
      v23 = a1[1];
      v24 = v22 + 1;
      if ((v23 - 125) <= 1)
      {
        v44[v24 - 1] = v23 & 0x5F;
        LOBYTE(v23) = 125;
        LODWORD(v24) = v22 + 2;
      }

      v44[v22 - 1] = v23;
      v25 = v24 + 1;
      if ((v9 - 125) <= 1)
      {
        v44[v25 - 1] = v9 & 0x5F;
        LODWORD(v25) = v24 + 2;
        LOBYTE(v9) = 125;
      }

      v44[v24 - 1] = v9;
      v26 = v25 + 1;
      if ((v10 - 125) <= 1)
      {
        v44[v26 - 1] = v10 & 0x5F;
        LOBYTE(v10) = 125;
        LODWORD(v26) = v25 + 2;
      }

      v27 = a3;
      v44[v25 - 1] = v10;
      v44[v26 - 1] = 81;
      v28 = v26 + 2;
      if ((v14 - 125) <= 1)
      {
        v44[v28 - 1] = v14 & 0x5F;
        LOBYTE(v14) = 125;
        LODWORD(v28) = v26 + 3;
      }

      v44[v26] = v14;
      v29 = v28;
      v30 = v28 + 1;
      if (a3 - 125 <= 1)
      {
        v44[v30 - 1] = a3 & 0x5F;
        v27 = 125;
        LODWORD(v30) = v29 + 2;
      }

      v31 = a4;
      v44[v29 - 1] = v27;
      v32 = v30 + 1;
      if (HIBYTE(a3) - 125 <= 1)
      {
        v44[v32 - 1] = HIBYTE(a3) & 0x5F;
        v11 = 125;
        LODWORD(v32) = v30 + 2;
      }

      v44[v30 - 1] = v11;
      v33 = v32;
      v34 = v32 + 1;
      if (a4 - 125 <= 1)
      {
        v44[v34 - 1] = a4 & 0x5F;
        v31 = 125;
        LODWORD(v34) = v33 + 2;
      }

      v35 = ~(v20 ^ BYTE1(v18));
      v44[v33 - 1] = v31;
      v36 = v34 + 1;
      if (HIBYTE(a4) - 125 <= 1)
      {
        v44[v36 - 1] = HIBYTE(a4) & 0x5F;
        v12 = 125;
        LODWORD(v36) = v34 + 2;
      }

      v37 = BYTE1(v42);
      v44[v34 - 1] = v12;
      v38 = v36;
      v39 = v36 + 1;
      if ((v35 - 125) <= 1)
      {
        v44[v39 - 1] = v35 & 0x5F;
        LOBYTE(v35) = 125;
        LODWORD(v39) = v38 + 2;
      }

      v44[v38 - 1] = v35;
      v40 = v39 + 1;
      if (BYTE1(v42) - 125 <= 1)
      {
        v44[v40 - 1] = BYTE1(v42) & 0x5F;
        v37 = 125;
        LODWORD(v40) = v39 + 2;
      }

      v44[v39 - 1] = v37;
      memcpy(a1, &__src, v40);
      result = (v40 + 1);
      a1[v40] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v41 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetgModeId(unsigned int a1)
{
  if (a1 > 0x8002)
  {
    return 0xFFFFFFFFLL;
  }

  gModeId = a1;
  return 1;
}

uint64_t APPLIB_DIAG_FTM_CDMA_API2_CALIBRATE_DVGA(char *a1, int a2, int a3, __int16 a4)
{
  v47 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x14)
  {
    bzero(a1, a2);
    *a1 = 1182539;
    a1[4] = 1;
    a1[10] = a3;
    *(a1 + 11) = a4;
    v9 = HIBYTE(a4);
    v10 = a1[5];
    v11 = crc_16_l_table[v10 ^ 0xF7];
    v12 = a1[6];
    v13 = crc_16_l_table[(v12 ^ v11) ^ 0x57];
    v14 = crc_16_l_table[(a1[7] ^ v13 ^ HIBYTE(v11))];
    v15 = crc_16_l_table[(a1[8] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[9] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a3 ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[HIBYTE(a4) ^ crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))] ^ (v17 >> 8)];
    v20 = v19 ^ ~(v18 >> 8);
    *(a1 + 13) = v19 ^ ~HIBYTE(crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))]);
    if (a2 >= 30)
    {
      bzero(v46, 0x7FFuLL);
      v21 = *a1;
      if ((v21 - 125) > 1)
      {
        v22 = 1;
      }

      else
      {
        v46[0] = v21 & 0x5F;
        v22 = 2;
        LOBYTE(v21) = 125;
      }

      v45 = v21;
      *&v46[v22 - 1] = 16781835;
      v23 = v22 + 5;
      if ((v10 - 125) <= 1)
      {
        v46[v23 - 1] = v10 & 0x5F;
        LOBYTE(v10) = 125;
        LODWORD(v23) = v22 + 6;
      }

      v46[(v22 | 4) - 1] = v10;
      v24 = v23;
      v25 = v23 + 1;
      if ((v12 - 125) <= 1)
      {
        v46[v25 - 1] = v12 & 0x5F;
        LODWORD(v25) = v24 + 2;
        LOBYTE(v12) = 125;
      }

      v46[v24 - 1] = v12;
      v26 = a1[7];
      v27 = v25;
      v28 = v25 + 1;
      if ((v26 - 125) <= 1)
      {
        v46[v28 - 1] = v26 & 0x5F;
        LOBYTE(v26) = 125;
        LODWORD(v28) = v27 + 2;
      }

      v46[v27 - 1] = v26;
      v29 = a1[8];
      v30 = v28 + 1;
      if ((v29 - 125) <= 1)
      {
        v46[v30 - 1] = v29 & 0x5F;
        LOBYTE(v29) = 125;
        LODWORD(v30) = v28 + 2;
      }

      v46[v28 - 1] = v29;
      v31 = a1[9];
      v32 = v30;
      v33 = v30 + 1;
      if ((v31 - 125) <= 1)
      {
        v46[v33 - 1] = v31 & 0x5F;
        LOBYTE(v31) = 125;
        LODWORD(v33) = v32 + 2;
      }

      v34 = a4;
      v46[v32 - 1] = v31;
      v35 = v33 + 1;
      if ((a3 - 125) <= 1)
      {
        v46[v35 - 1] = a3 & 0x5F;
        LOBYTE(a3) = 125;
        LODWORD(v35) = v33 + 2;
      }

      v46[v33 - 1] = a3;
      v36 = v35 + 1;
      if (a4 - 125 <= 1)
      {
        v46[v36 - 1] = a4 & 0x5F;
        LODWORD(v36) = v35 + 2;
        v34 = 125;
      }

      v37 = ~(v19 ^ BYTE1(v18));
      v46[v35 - 1] = v34;
      v38 = v36;
      v39 = v36 + 1;
      if (HIBYTE(a4) - 125 <= 1)
      {
        v46[v39 - 1] = HIBYTE(a4) & 0x5F;
        v9 = 125;
        LODWORD(v39) = v38 + 2;
      }

      v40 = (v19 ^ ~(v18 >> 8)) >> 8;
      v46[v38 - 1] = v9;
      v41 = v39;
      v42 = v39 + 1;
      if ((v37 - 125) <= 1)
      {
        v46[v42 - 1] = v37 & 0x5F;
        LOBYTE(v37) = 125;
        LODWORD(v42) = v41 + 2;
      }

      v46[v41 - 1] = v37;
      v43 = v42 + 1;
      if (BYTE1(v20) - 125 <= 1)
      {
        v46[v43 - 1] = BYTE1(v20) & 0x5F;
        v40 = 125;
        LODWORD(v43) = v42 + 2;
      }

      v46[v42 - 1] = v40;
      memcpy(a1, &v45, v43);
      result = (v43 + 1);
      a1[v43] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v44 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA_API2_CALIBRATE_LNA(unsigned __int8 *a1, int a2, unsigned __int8 a3, __int16 a4, unsigned __int8 a5)
{
  v66 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x14)
  {
    bzero(a1, a2);
    *a1 = 1182539;
    a1[4] = 2;
    a1[10] = a3;
    a1[11] = a5;
    *(a1 + 6) = a4;
    v11 = HIBYTE(a4);
    v12 = a1[5];
    v13 = crc_16_l_table[v12 ^ 0x6C];
    v14 = a1[6];
    v15 = crc_16_l_table[(v14 ^ v13) ^ 0x65];
    v16 = crc_16_l_table[(a1[7] ^ v15 ^ HIBYTE(v13))];
    v17 = crc_16_l_table[(a1[8] ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a1[9] ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a3 ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(a5 ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(a4 ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[HIBYTE(a4) ^ crc_16_l_table[(a4 ^ v20 ^ HIBYTE(v19))] ^ (v20 >> 8)];
    v23 = v22 ^ ~(v21 >> 8);
    *(a1 + 7) = v22 ^ ~HIBYTE(crc_16_l_table[(a4 ^ v20 ^ HIBYTE(v19))]);
    if (a2 >= 32)
    {
      bzero(v65, 0x7FFuLL);
      v24 = *a1;
      if ((v24 - 125) > 1)
      {
        v25 = 1;
      }

      else
      {
        v65[0] = v24 & 0x5F;
        v25 = 2;
        LOBYTE(v24) = 125;
      }

      __src = v24;
      v26 = a1[1];
      v27 = v25 + 1;
      if ((v26 - 125) <= 1)
      {
        v65[v27 - 1] = v26 & 0x5F;
        LOBYTE(v26) = 125;
        LODWORD(v27) = v25 + 2;
      }

      v65[v25 - 1] = v26;
      v28 = a1[2];
      v29 = v27;
      v30 = v27 + 1;
      if ((v28 - 125) <= 1)
      {
        v65[v30 - 1] = v28 & 0x5F;
        LODWORD(v30) = v29 + 2;
        LOBYTE(v28) = 125;
      }

      v65[v29 - 1] = v28;
      v31 = a1[3];
      v32 = v30;
      v33 = v30 + 1;
      if ((v31 - 125) <= 1)
      {
        v65[v33 - 1] = v31 & 0x5F;
        LOBYTE(v31) = 125;
        LODWORD(v33) = v32 + 2;
      }

      v65[v32 - 1] = v31;
      v34 = a1[4];
      v35 = v33;
      v36 = v33 + 1;
      if ((v34 - 125) <= 1)
      {
        v65[v36 - 1] = v34 & 0x5F;
        LODWORD(v36) = v35 + 2;
        LOBYTE(v34) = 125;
      }

      v65[v35 - 1] = v34;
      v37 = v36;
      v38 = v36 + 1;
      if ((v12 - 125) <= 1)
      {
        v65[v38 - 1] = v12 & 0x5F;
        LOBYTE(v12) = 125;
        LODWORD(v38) = v37 + 2;
      }

      v65[v37 - 1] = v12;
      v39 = v38;
      v40 = v38 + 1;
      if ((v14 - 125) <= 1)
      {
        v65[v40 - 1] = v14 & 0x5F;
        LODWORD(v40) = v39 + 2;
        LOBYTE(v14) = 125;
      }

      v65[v39 - 1] = v14;
      v41 = a1[7];
      v42 = v40;
      v43 = v40 + 1;
      if ((v41 - 125) <= 1)
      {
        v65[v43 - 1] = v41 & 0x5F;
        LOBYTE(v41) = 125;
        LODWORD(v43) = v42 + 2;
      }

      v65[v42 - 1] = v41;
      v44 = a1[8];
      v45 = v43;
      v46 = v43 + 1;
      if ((v44 - 125) <= 1)
      {
        v65[v46 - 1] = v44 & 0x5F;
        LODWORD(v46) = v45 + 2;
        LOBYTE(v44) = 125;
      }

      v65[v45 - 1] = v44;
      v47 = a1[9];
      v48 = v46;
      v49 = v46 + 1;
      if ((v47 - 125) <= 1)
      {
        v65[v49 - 1] = v47 & 0x5F;
        LOBYTE(v47) = 125;
        LODWORD(v49) = v48 + 2;
      }

      v65[v48 - 1] = v47;
      v50 = a1[10];
      v51 = v49;
      v52 = v49 + 1;
      if ((v50 - 125) <= 1)
      {
        v65[v52 - 1] = v50 & 0x5F;
        LODWORD(v52) = v51 + 2;
        LOBYTE(v50) = 125;
      }

      v65[v51 - 1] = v50;
      v53 = a4;
      v54 = a1[11];
      v55 = v52 + 1;
      if ((v54 - 125) <= 1)
      {
        v65[v55 - 1] = v54 & 0x5F;
        LOBYTE(v54) = 125;
        LODWORD(v55) = v52 + 2;
      }

      v65[v52 - 1] = v54;
      v56 = v55 + 1;
      if (a4 - 125 <= 1)
      {
        v65[v56 - 1] = a4 & 0x5F;
        LODWORD(v56) = v55 + 2;
        v53 = 125;
      }

      v57 = ~(v22 ^ BYTE1(v21));
      v65[v55 - 1] = v53;
      v58 = v56 + 1;
      if (HIBYTE(a4) - 125 <= 1)
      {
        v65[v58 - 1] = HIBYTE(a4) & 0x5F;
        v11 = 125;
        LODWORD(v58) = v56 + 2;
      }

      v59 = (v22 ^ ~(v21 >> 8)) >> 8;
      v65[v56 - 1] = v11;
      v60 = v58;
      v61 = v58 + 1;
      if ((v57 - 125) <= 1)
      {
        v65[v61 - 1] = v57 & 0x5F;
        LODWORD(v61) = v60 + 2;
        LOBYTE(v57) = 125;
      }

      v65[v60 - 1] = v57;
      v62 = v61 + 1;
      if (BYTE1(v23) - 125 <= 1)
      {
        v65[v62 - 1] = BYTE1(v23) & 0x5F;
        v59 = 125;
        LODWORD(v62) = v61 + 2;
      }

      v65[v61 - 1] = v59;
      memcpy(a1, &__src, v62);
      result = (v62 + 1);
      a1[v62] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v63 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_SecondChainTestCall(unsigned __int8 *a1, int a2, unsigned __int8 a3)
{
  v29 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xE)
  {
    goto LABEL_19;
  }

  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 123;
  a1[6] = a3;
  v9 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 0x7B];
  v10 = a1[5];
  v11 = (v10 ^ v9 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]));
  v12 = crc_16_l_table[v11];
  v13 = crc_16_l_table[(v12 ^ HIBYTE(v9) ^ a3)];
  v14 = v13 ^ ~(v12 >> 8);
  *(a1 + 7) = v13 ^ ~HIBYTE(crc_16_l_table[v11]);
  if (a2 < 18)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  bzero(v28, 0x7FDuLL);
  v26 = 2891;
  if ((v7 - 125) <= 1)
  {
    v28[0] = v7 & 0x5F;
    v27 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v27 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v26 + v16) = v8 & 0x5F;
    LOBYTE(v8) = 125;
    LODWORD(v16) = v15 + 2;
  }

LABEL_10:
  v17 = a3;
  *(&v26 + v15) = v8;
  v18 = v16 + 1;
  *(&v26 + v16) = 123;
  v19 = v16 + 2;
  if ((v10 - 125) <= 1)
  {
    *(&v26 + v19) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v19) = v16 + 3;
  }

  v20 = ~(v13 ^ BYTE1(v12));
  *(&v26 + v18) = v10;
  v21 = v19 + 1;
  if (a3 - 125 <= 1)
  {
    *(&v26 + v21) = a3 & 0x5F;
    v17 = 125;
    LODWORD(v21) = v19 + 2;
  }

  v22 = (v13 ^ ~(v12 >> 8)) >> 8;
  *(&v26 + v19) = v17;
  v23 = v21 + 1;
  if ((v20 - 125) <= 1)
  {
    *(&v26 + v23) = v20 & 0x5F;
    LODWORD(v23) = v21 + 2;
    LOBYTE(v20) = 125;
  }

  *(&v26 + v21) = v20;
  v24 = v23 + 1;
  if (BYTE1(v14) - 125 <= 1)
  {
    *(&v26 + v24) = BYTE1(v14) & 0x5F;
    v22 = 125;
    LODWORD(v24) = v23 + 2;
  }

  *(&v26 + v23) = v22;
  memcpy(a1, &v26, v24);
  result = (v24 + 1);
  a1[v24] = 126;
LABEL_19:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetSecondaryChain(unsigned __int8 *a1, int a2, unsigned __int8 a3)
{
  v29 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0xE)
  {
    goto LABEL_19;
  }

  bzero(a1, a2);
  *a1 = 2891;
  v7 = gModeId;
  a1[2] = gModeId;
  v8 = HIBYTE(gModeId);
  a1[3] = HIBYTE(gModeId);
  a1[4] = 121;
  a1[6] = a3;
  v9 = crc_16_l_table[crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC] ^ HIBYTE(crc_16_l_table[v7 ^ 0xA5]) ^ 0x79];
  v10 = a1[5];
  v11 = (v10 ^ v9 ^ HIBYTE(crc_16_l_table[crc_16_l_table[v7 ^ 0xA5] ^ v8 ^ 0xEC]));
  v12 = crc_16_l_table[v11];
  v13 = crc_16_l_table[(v12 ^ HIBYTE(v9) ^ a3)];
  v14 = v13 ^ ~(v12 >> 8);
  *(a1 + 7) = v13 ^ ~HIBYTE(crc_16_l_table[v11]);
  if (a2 < 18)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  bzero(v28, 0x7FDuLL);
  v26 = 2891;
  if ((v7 - 125) <= 1)
  {
    v28[0] = v7 & 0x5F;
    v27 = 125;
    v15 = 4;
    v16 = 5;
    if ((v8 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v27 = v7;
  v15 = 3;
  v16 = 4;
  if ((v8 - 125) <= 1)
  {
LABEL_9:
    *(&v26 + v16) = v8 & 0x5F;
    LOBYTE(v8) = 125;
    LODWORD(v16) = v15 + 2;
  }

LABEL_10:
  v17 = a3;
  *(&v26 + v15) = v8;
  v18 = v16 + 1;
  *(&v26 + v16) = 121;
  v19 = v16 + 2;
  if ((v10 - 125) <= 1)
  {
    *(&v26 + v19) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v19) = v16 + 3;
  }

  v20 = ~(v13 ^ BYTE1(v12));
  *(&v26 + v18) = v10;
  v21 = v19 + 1;
  if (a3 - 125 <= 1)
  {
    *(&v26 + v21) = a3 & 0x5F;
    v17 = 125;
    LODWORD(v21) = v19 + 2;
  }

  v22 = (v13 ^ ~(v12 >> 8)) >> 8;
  *(&v26 + v19) = v17;
  v23 = v21 + 1;
  if ((v20 - 125) <= 1)
  {
    *(&v26 + v23) = v20 & 0x5F;
    LODWORD(v23) = v21 + 2;
    LOBYTE(v20) = 125;
  }

  *(&v26 + v21) = v20;
  v24 = v23 + 1;
  if (BYTE1(v14) - 125 <= 1)
  {
    *(&v26 + v24) = BYTE1(v14) & 0x5F;
    v22 = 125;
    LODWORD(v24) = v23 + 2;
  }

  *(&v26 + v23) = v22;
  memcpy(a1, &v26, v24);
  result = (v24 + 1);
  a1[v24] = 126;
LABEL_19:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_ChangeFTM_BootMode(char *a1, int a2, char a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = -15065;
    a1[2] = 1;
    v4 = 1064;
    a1[3] = a3;
    LOWORD(v5) = -1;
    v6 = a1;
    do
    {
      v7 = *v6++;
      v5 = crc_16_l_table[(v7 ^ v5)] ^ ((v5 & 0xFF00) >> 8);
      v4 -= 8;
    }

    while (v4);
    *(a1 + 133) = ~v5;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v9 = 0;
      v10 = 0;
      do
      {
        while (1)
        {
          v11 = a1[v9];
          v12 = v10;
          v13 = v10 + 1;
          if ((v11 - 125) > 1)
          {
            break;
          }

          v10 += 2;
          __src[v13] = v11 & 0x5F;
          __src[v12] = 125;
          if (++v9 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v10;
        __src[v12] = v11;
        ++v9;
      }

      while (v9 != 135);
LABEL_11:
      memcpy(a1, __src, v10);
      v3 = (v10 + 1);
      a1[v10] = 126;
    }

    else
    {
      v3 = 0xFFFFFFFFLL;
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t APPLIB_DIAG_FTM_CDMA_API2_CALIBRATE_IM2(unsigned __int8 *a1, int a2, int a3)
{
  v40 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x14)
  {
    goto LABEL_25;
  }

  bzero(a1, a2);
  *a1 = 1182539;
  a1[4] = 3;
  a1[10] = a3;
  v7 = a1[5];
  v8 = crc_16_l_table[v7 ^ 0xE5];
  v9 = a1[6];
  v10 = crc_16_l_table[(v9 ^ v8) ^ 0x74];
  v11 = crc_16_l_table[(a1[7] ^ v10 ^ HIBYTE(v8))];
  v12 = crc_16_l_table[(a1[8] ^ v11 ^ HIBYTE(v10))];
  v13 = crc_16_l_table[(a1[9] ^ v12 ^ HIBYTE(v11))];
  v14 = crc_16_l_table[(v13 ^ HIBYTE(v12)) ^ a3];
  v15 = v14 ^ ~(v13 >> 8);
  *(a1 + 6) = v14 ^ ~HIBYTE(crc_16_l_table[(a1[9] ^ v12 ^ HIBYTE(v11))]);
  if (a2 < 28)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_25;
  }

  bzero(v39, 0x7FAuLL);
  __src = 1182539;
  v37 = 3;
  if ((v7 - 125) <= 1)
  {
    v39[0] = v7 & 0x5F;
    v38 = 125;
    v16 = 7;
    v17 = 8;
    if ((v9 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v38 = v7;
  v16 = 6;
  v17 = 7;
  if ((v9 - 125) <= 1)
  {
LABEL_9:
    *(&__src + v17) = v9 & 0x5F;
    LOBYTE(v9) = 125;
    LODWORD(v17) = v16 + 2;
  }

LABEL_10:
  *(&__src + v16) = v9;
  v18 = a1[7];
  v19 = v17;
  v20 = v17 + 1;
  if ((v18 - 125) <= 1)
  {
    *(&__src + v20) = v18 & 0x5F;
    LODWORD(v20) = v19 + 2;
    LOBYTE(v18) = 125;
  }

  *(&__src + v19) = v18;
  v21 = a1[8];
  v22 = v20;
  v23 = v20 + 1;
  if ((v21 - 125) <= 1)
  {
    *(&__src + v23) = v21 & 0x5F;
    LOBYTE(v21) = 125;
    LODWORD(v23) = v22 + 2;
  }

  *(&__src + v22) = v21;
  v24 = a1[9];
  v25 = v23 + 1;
  if ((v24 - 125) <= 1)
  {
    *(&__src + v25) = v24 & 0x5F;
    LOBYTE(v24) = 125;
    LODWORD(v25) = v23 + 2;
  }

  *(&__src + v23) = v24;
  v26 = v25 + 1;
  if ((a3 - 125) <= 1)
  {
    *(&__src + v26) = a3 & 0x5F;
    LOBYTE(a3) = 125;
    LODWORD(v26) = v25 + 2;
  }

  *(&__src + v25) = a3;
  v27 = ~(v14 ^ BYTE1(v13));
  v28 = a1[11];
  v29 = v26;
  v30 = v26 + 1;
  if ((v28 - 125) <= 1)
  {
    *(&__src + v30) = v28 & 0x5F;
    LOBYTE(v28) = 125;
    LODWORD(v30) = v29 + 2;
  }

  v31 = (v14 ^ ~(v13 >> 8)) >> 8;
  *(&__src + v29) = v28;
  v32 = v30;
  v33 = v30 + 1;
  if ((v27 - 125) <= 1)
  {
    *(&__src + v33) = v27 & 0x5F;
    LOBYTE(v27) = 125;
    LODWORD(v33) = v32 + 2;
  }

  *(&__src + v32) = v27;
  v34 = v33 + 1;
  if (BYTE1(v15) - 125 <= 1)
  {
    *(&__src + v34) = BYTE1(v15) & 0x5F;
    v31 = 125;
    LODWORD(v34) = v33 + 2;
  }

  *(&__src + v33) = v31;
  memcpy(a1, &__src, v34);
  result = (v34 + 1);
  a1[v34] = 126;
LABEL_25:
  v35 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA_API2_CALIBRATE_INTELLICEIVER(char *a1, int a2, int a3, __int16 a4)
{
  v47 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x14)
  {
    bzero(a1, a2);
    *a1 = 1182539;
    a1[4] = 4;
    a1[10] = a3;
    *(a1 + 11) = a4;
    v9 = HIBYTE(a4);
    v10 = a1[5];
    v11 = crc_16_l_table[v10 ^ 0x5A];
    v12 = a1[6];
    v13 = crc_16_l_table[(v12 ^ v11)];
    v14 = crc_16_l_table[(a1[7] ^ v13 ^ HIBYTE(v11))];
    v15 = crc_16_l_table[(a1[8] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[9] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a3 ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[HIBYTE(a4) ^ crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))] ^ (v17 >> 8)];
    v20 = v19 ^ ~(v18 >> 8);
    *(a1 + 13) = v19 ^ ~HIBYTE(crc_16_l_table[(a4 ^ v17 ^ HIBYTE(v16))]);
    if (a2 >= 30)
    {
      bzero(v46, 0x7FFuLL);
      v21 = *a1;
      if ((v21 - 125) > 1)
      {
        v22 = 1;
      }

      else
      {
        v46[0] = v21 & 0x5F;
        v22 = 2;
        LOBYTE(v21) = 125;
      }

      v45 = v21;
      *&v46[v22 - 1] = 67113483;
      v23 = v22 + 5;
      if ((v10 - 125) <= 1)
      {
        v46[v23 - 1] = v10 & 0x5F;
        LOBYTE(v10) = 125;
        LODWORD(v23) = v22 + 6;
      }

      v46[(v22 | 4) - 1] = v10;
      v24 = v23;
      v25 = v23 + 1;
      if ((v12 - 125) <= 1)
      {
        v46[v25 - 1] = v12 & 0x5F;
        LODWORD(v25) = v24 + 2;
        LOBYTE(v12) = 125;
      }

      v46[v24 - 1] = v12;
      v26 = a1[7];
      v27 = v25;
      v28 = v25 + 1;
      if ((v26 - 125) <= 1)
      {
        v46[v28 - 1] = v26 & 0x5F;
        LOBYTE(v26) = 125;
        LODWORD(v28) = v27 + 2;
      }

      v46[v27 - 1] = v26;
      v29 = a1[8];
      v30 = v28 + 1;
      if ((v29 - 125) <= 1)
      {
        v46[v30 - 1] = v29 & 0x5F;
        LOBYTE(v29) = 125;
        LODWORD(v30) = v28 + 2;
      }

      v46[v28 - 1] = v29;
      v31 = a1[9];
      v32 = v30;
      v33 = v30 + 1;
      if ((v31 - 125) <= 1)
      {
        v46[v33 - 1] = v31 & 0x5F;
        LOBYTE(v31) = 125;
        LODWORD(v33) = v32 + 2;
      }

      v34 = a4;
      v46[v32 - 1] = v31;
      v35 = v33 + 1;
      if ((a3 - 125) <= 1)
      {
        v46[v35 - 1] = a3 & 0x5F;
        LOBYTE(a3) = 125;
        LODWORD(v35) = v33 + 2;
      }

      v46[v33 - 1] = a3;
      v36 = v35 + 1;
      if (a4 - 125 <= 1)
      {
        v46[v36 - 1] = a4 & 0x5F;
        LODWORD(v36) = v35 + 2;
        v34 = 125;
      }

      v37 = ~(v19 ^ BYTE1(v18));
      v46[v35 - 1] = v34;
      v38 = v36;
      v39 = v36 + 1;
      if (HIBYTE(a4) - 125 <= 1)
      {
        v46[v39 - 1] = HIBYTE(a4) & 0x5F;
        v9 = 125;
        LODWORD(v39) = v38 + 2;
      }

      v40 = (v19 ^ ~(v18 >> 8)) >> 8;
      v46[v38 - 1] = v9;
      v41 = v39;
      v42 = v39 + 1;
      if ((v37 - 125) <= 1)
      {
        v46[v42 - 1] = v37 & 0x5F;
        LOBYTE(v37) = 125;
        LODWORD(v42) = v41 + 2;
      }

      v46[v41 - 1] = v37;
      v43 = v42 + 1;
      if (BYTE1(v20) - 125 <= 1)
      {
        v46[v43 - 1] = BYTE1(v20) & 0x5F;
        v40 = 125;
        LODWORD(v43) = v42 + 2;
      }

      v46[v42 - 1] = v40;
      memcpy(a1, &v45, v43);
      result = (v43 + 1);
      a1[v43] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v44 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_DO_ENH_XO_DC_CAL(char *a1, int a2, __int128 *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x33)
  {
    bzero(a1, a2);
    *a1 = 1313611;
    a1[4] = -102;
    a1[8] = 12;
    v7 = *a3;
    v8 = a3[1];
    *(a1 + 40) = *(a3 + 30);
    *(a1 + 26) = v8;
    *(a1 + 10) = v7;
    v9 = 448;
    LOWORD(v10) = -1;
    v11 = a1;
    do
    {
      v12 = *v11++;
      v10 = crc_16_l_table[(v12 ^ v10)] ^ ((v10 & 0xFF00) >> 8);
      v9 -= 8;
    }

    while (v9);
    *(a1 + 28) = ~v10;
    if (a2 >= 116)
    {
      bzero(__src, 0x800uLL);
      v13 = 0;
      v14 = 0;
      do
      {
        while (1)
        {
          v15 = a1[v13];
          v16 = v14;
          v17 = v14 + 1;
          if ((v15 - 125) > 1)
          {
            break;
          }

          v14 += 2;
          __src[v17] = v15 & 0x5F;
          __src[v16] = 125;
          if (++v13 == 58)
          {
            goto LABEL_11;
          }
        }

        ++v14;
        __src[v16] = v15;
        ++v13;
      }

      while (v13 != 58);
LABEL_11:
      memcpy(a1, __src, v14);
      result = (v14 + 1);
      a1[v14] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_DO_ENH_XO_FT_CURVE_CAL(char *a1, int a2, __int128 *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x33)
  {
    bzero(a1, a2);
    *a1 = 1313611;
    a1[4] = -101;
    a1[8] = 12;
    v7 = *a3;
    v8 = a3[1];
    *(a1 + 40) = *(a3 + 30);
    *(a1 + 26) = v8;
    *(a1 + 10) = v7;
    v9 = 448;
    LOWORD(v10) = -1;
    v11 = a1;
    do
    {
      v12 = *v11++;
      v10 = crc_16_l_table[(v12 ^ v10)] ^ ((v10 & 0xFF00) >> 8);
      v9 -= 8;
    }

    while (v9);
    *(a1 + 28) = ~v10;
    if (a2 >= 116)
    {
      bzero(__src, 0x800uLL);
      v13 = 0;
      v14 = 0;
      do
      {
        while (1)
        {
          v15 = a1[v13];
          v16 = v14;
          v17 = v14 + 1;
          if ((v15 - 125) > 1)
          {
            break;
          }

          v14 += 2;
          __src[v17] = v15 & 0x5F;
          __src[v16] = 125;
          if (++v13 == 58)
          {
            goto LABEL_11;
          }
        }

        ++v14;
        __src[v16] = v15;
        ++v13;
      }

      while (v13 != 58);
LABEL_11:
      memcpy(a1, __src, v14);
      result = (v14 + 1);
      a1[v14] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA2000_PILOT_ACQ(char *a1, int a2, int a3, __int16 a4, int a5)
{
  v88 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1F)
  {
    bzero(a1, a2);
    *a1 = 461643;
    *(a1 + 2) = 100;
    *(a1 + 10) = a3;
    *(a1 + 7) = a4;
    v11 = crc_16_l_table[a1[6] ^ 0x7CLL];
    v12 = crc_16_l_table[a1[7] ^ 0x35 ^ v11];
    v13 = crc_16_l_table[(a1[8] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(a1[9] ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(a3 ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(BYTE1(a3) ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(BYTE2(a3) ^ v16 ^ HIBYTE(v15))];
    *(a1 + 4) = a5;
    v18 = crc_16_l_table[(HIBYTE(a3) ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a4 ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(HIBYTE(a4) ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(v20 ^ HIBYTE(v19) ^ a5)];
    v22 = crc_16_l_table[(BYTE1(a5) ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a1[18] ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(a1[19] ^ v23 ^ HIBYTE(v22))];
    *(a1 + 10) = v24 ^ ~HIBYTE(crc_16_l_table[(a1[18] ^ v22 ^ HIBYTE(v21))]);
    if (a2 >= 44)
    {
      bzero(v87, 0x7FFuLL);
      v25 = *a1;
      if ((v25 - 125) > 1)
      {
        v26 = 1;
      }

      else
      {
        v87[0] = v25 & 0x5F;
        v26 = 2;
        LOBYTE(v25) = 125;
      }

      __src = v25;
      v27 = a1[1];
      v28 = v26 + 1;
      if ((v27 - 125) <= 1)
      {
        v87[v28 - 1] = v27 & 0x5F;
        LOBYTE(v27) = 125;
        LODWORD(v28) = v26 + 2;
      }

      v87[v26 - 1] = v27;
      v29 = a1[2];
      v30 = v28;
      v31 = v28 + 1;
      if ((v29 - 125) <= 1)
      {
        v87[v31 - 1] = v29 & 0x5F;
        LODWORD(v31) = v30 + 2;
        LOBYTE(v29) = 125;
      }

      v87[v30 - 1] = v29;
      v32 = a1[3];
      v33 = v31;
      v34 = v31 + 1;
      if ((v32 - 125) <= 1)
      {
        v87[v34 - 1] = v32 & 0x5F;
        LOBYTE(v32) = 125;
        LODWORD(v34) = v33 + 2;
      }

      v87[v33 - 1] = v32;
      v35 = a1[4];
      v36 = v34;
      v37 = v34 + 1;
      if ((v35 - 125) <= 1)
      {
        v87[v37 - 1] = v35 & 0x5F;
        LODWORD(v37) = v36 + 2;
        LOBYTE(v35) = 125;
      }

      v87[v36 - 1] = v35;
      v38 = a1[5];
      v39 = v37;
      v40 = v37 + 1;
      if ((v38 - 125) <= 1)
      {
        v87[v40 - 1] = v38 & 0x5F;
        LOBYTE(v38) = 125;
        LODWORD(v40) = v39 + 2;
      }

      v87[v39 - 1] = v38;
      v41 = a1[6];
      v42 = v40;
      v43 = v40 + 1;
      if ((v41 - 125) <= 1)
      {
        v87[v43 - 1] = v41 & 0x5F;
        LODWORD(v43) = v42 + 2;
        LOBYTE(v41) = 125;
      }

      v87[v42 - 1] = v41;
      v44 = a1[7];
      v45 = v43;
      v46 = v43 + 1;
      if ((v44 - 125) <= 1)
      {
        v87[v46 - 1] = v44 & 0x5F;
        LOBYTE(v44) = 125;
        LODWORD(v46) = v45 + 2;
      }

      v87[v45 - 1] = v44;
      v47 = a1[8];
      v48 = v46;
      v49 = v46 + 1;
      if ((v47 - 125) <= 1)
      {
        v87[v49 - 1] = v47 & 0x5F;
        LODWORD(v49) = v48 + 2;
        LOBYTE(v47) = 125;
      }

      v87[v48 - 1] = v47;
      v50 = a1[9];
      v51 = v49;
      v52 = v49 + 1;
      if ((v50 - 125) <= 1)
      {
        v87[v52 - 1] = v50 & 0x5F;
        LOBYTE(v50) = 125;
        LODWORD(v52) = v51 + 2;
      }

      v87[v51 - 1] = v50;
      v53 = a1[10];
      v54 = v52;
      v55 = v52 + 1;
      if ((v53 - 125) <= 1)
      {
        v87[v55 - 1] = v53 & 0x5F;
        LODWORD(v55) = v54 + 2;
        LOBYTE(v53) = 125;
      }

      v87[v54 - 1] = v53;
      v56 = a1[11];
      v57 = v55;
      v58 = v55 + 1;
      if ((v56 - 125) <= 1)
      {
        v87[v58 - 1] = v56 & 0x5F;
        LOBYTE(v56) = 125;
        LODWORD(v58) = v57 + 2;
      }

      v87[v57 - 1] = v56;
      v59 = a1[12];
      v60 = v58;
      v61 = v58 + 1;
      if ((v59 - 125) <= 1)
      {
        v87[v61 - 1] = v59 & 0x5F;
        LODWORD(v61) = v60 + 2;
        LOBYTE(v59) = 125;
      }

      v87[v60 - 1] = v59;
      v62 = a1[13];
      v63 = v61;
      v64 = v61 + 1;
      if ((v62 - 125) <= 1)
      {
        v87[v64 - 1] = v62 & 0x5F;
        LOBYTE(v62) = 125;
        LODWORD(v64) = v63 + 2;
      }

      v87[v63 - 1] = v62;
      v65 = a1[14];
      v66 = v64;
      v67 = v64 + 1;
      if ((v65 - 125) <= 1)
      {
        v87[v67 - 1] = v65 & 0x5F;
        LODWORD(v67) = v66 + 2;
        LOBYTE(v65) = 125;
      }

      v87[v66 - 1] = v65;
      v68 = a1[15];
      v69 = v67;
      v70 = v67 + 1;
      if ((v68 - 125) <= 1)
      {
        v87[v70 - 1] = v68 & 0x5F;
        LOBYTE(v68) = 125;
        LODWORD(v70) = v69 + 2;
      }

      v87[v69 - 1] = v68;
      v71 = a1[16];
      v72 = v70;
      v73 = v70 + 1;
      if ((v71 - 125) <= 1)
      {
        v87[v73 - 1] = v71 & 0x5F;
        LODWORD(v73) = v72 + 2;
        LOBYTE(v71) = 125;
      }

      v87[v72 - 1] = v71;
      v74 = a1[17];
      v75 = v73 + 1;
      if ((v74 - 125) <= 1)
      {
        v87[v75 - 1] = v74 & 0x5F;
        LOBYTE(v74) = 125;
        LODWORD(v75) = v73 + 2;
      }

      v87[v73 - 1] = v74;
      v76 = a1[18];
      v77 = v75 + 1;
      if ((v76 - 125) <= 1)
      {
        v87[v77 - 1] = v76 & 0x5F;
        LODWORD(v77) = v75 + 2;
        LOBYTE(v76) = 125;
      }

      v87[v75 - 1] = v76;
      v78 = ~(v24 ^ BYTE1(v23));
      v79 = a1[19];
      v80 = v77;
      v81 = v77 + 1;
      if ((v79 - 125) <= 1)
      {
        v87[v81 - 1] = v79 & 0x5F;
        LOBYTE(v79) = 125;
        LODWORD(v81) = v80 + 2;
      }

      v82 = ((v24 ^ ~(v23 >> 8)) >> 8);
      v87[v80 - 1] = v79;
      v83 = v81 + 1;
      if ((v78 - 125) <= 1)
      {
        v87[v83 - 1] = v78 & 0x5F;
        LODWORD(v83) = v81 + 2;
        LOBYTE(v78) = 125;
      }

      v87[v81 - 1] = v78;
      v84 = v83 + 1;
      if ((v82 - 125) <= 1)
      {
        v87[v84 - 1] = v82 & 0x5F;
        LOBYTE(v82) = 125;
        LODWORD(v84) = v83 + 2;
      }

      v87[v83 - 1] = v82;
      memcpy(a1, &__src, v84);
      result = (v84 + 1);
      a1[v84] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v85 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA2000_DEMOD_SYNC(unsigned __int8 *a1, int a2)
{
  v31 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x15)
  {
    goto LABEL_21;
  }

  bzero(a1, a2);
  *a1 = 461643;
  a1[4] = 101;
  v5 = a1[5];
  v6 = crc_16_l_table[v5 ^ 0xFD];
  v7 = a1[6];
  v8 = crc_16_l_table[(v7 ^ v6) ^ 0xCE];
  v9 = crc_16_l_table[(a1[7] ^ v8 ^ HIBYTE(v6))];
  v10 = crc_16_l_table[(a1[8] ^ v9 ^ HIBYTE(v8))];
  v11 = crc_16_l_table[(a1[9] ^ v10 ^ HIBYTE(v9))];
  *(a1 + 5) = v11 ^ ~HIBYTE(crc_16_l_table[(a1[8] ^ v9 ^ HIBYTE(v8))]);
  if (a2 < 24)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  bzero(v30, 0x7FAuLL);
  __src = 461643;
  v28 = 101;
  if ((v5 - 125) <= 1)
  {
    v30[0] = v5 & 0x5F;
    v29 = 125;
    v12 = 7;
    v13 = 8;
    if ((v7 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v29 = v5;
  v12 = 6;
  v13 = 7;
  if ((v7 - 125) <= 1)
  {
LABEL_9:
    *(&__src + v13) = v7 & 0x5F;
    LOBYTE(v7) = 125;
    LODWORD(v13) = v12 + 2;
  }

LABEL_10:
  *(&__src + v12) = v7;
  v14 = a1[7];
  v15 = v13 + 1;
  if ((v14 - 125) <= 1)
  {
    *(&__src + v15) = v14 & 0x5F;
    LOBYTE(v14) = 125;
    LODWORD(v15) = v13 + 2;
  }

  *(&__src + v13) = v14;
  v16 = a1[8];
  v17 = v15 + 1;
  if ((v16 - 125) <= 1)
  {
    *(&__src + v17) = v16 & 0x5F;
    LOBYTE(v16) = 125;
    LODWORD(v17) = v15 + 2;
  }

  *(&__src + v15) = v16;
  v18 = ~(v11 ^ BYTE1(v10));
  v19 = a1[9];
  v20 = v17;
  v21 = v17 + 1;
  if ((v19 - 125) <= 1)
  {
    *(&__src + v21) = v19 & 0x5F;
    LOBYTE(v19) = 125;
    LODWORD(v21) = v20 + 2;
  }

  v22 = ((v11 ^ ~(v10 >> 8)) >> 8);
  *(&__src + v20) = v19;
  v23 = v21;
  v24 = v21 + 1;
  if ((v18 - 125) <= 1)
  {
    *(&__src + v24) = v18 & 0x5F;
    LOBYTE(v18) = 125;
    LODWORD(v24) = v23 + 2;
  }

  *(&__src + v23) = v18;
  v25 = v24 + 1;
  if ((v22 - 125) <= 1)
  {
    *(&__src + v25) = v22 & 0x5F;
    LOBYTE(v22) = 125;
    LODWORD(v25) = v24 + 2;
  }

  *(&__src + v24) = v22;
  memcpy(a1, &__src, v25);
  result = (v25 + 1);
  a1[v25] = 126;
LABEL_21:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA2000_DEMOD_FCH(char *a1, int a2, int a3, char a4, char a5, char a6, char a7, char a8, char a9, uint64_t a10, char a11, char a12, char a13, char a14)
{
  v51 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1F)
  {
    bzero(a1, a2);
    *a1 = 461643;
    *(a1 + 2) = 102;
    *(a1 + 10) = a3;
    v23 = crc_16_l_table[a1[6] ^ 0xCCLL];
    v24 = crc_16_l_table[(a1[7] ^ v23) ^ 6];
    v25 = crc_16_l_table[(a1[8] ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[9] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a3 ^ v26 ^ HIBYTE(v25))];
    a1[14] = a4;
    v28 = crc_16_l_table[(BYTE1(a3) ^ v27 ^ HIBYTE(v26))];
    a1[15] = a5;
    v29 = crc_16_l_table[(BYTE2(a3) ^ v28 ^ HIBYTE(v27))];
    a1[16] = a6;
    v30 = crc_16_l_table[(HIBYTE(a3) ^ v29 ^ HIBYTE(v28))];
    a1[17] = a7;
    v31 = crc_16_l_table[(a4 ^ v30 ^ HIBYTE(v29))];
    a1[18] = a8;
    v32 = crc_16_l_table[(a5 ^ v31 ^ HIBYTE(v30))];
    a1[19] = a9;
    v33 = crc_16_l_table[(a6 ^ v32 ^ HIBYTE(v31))];
    *(a1 + 5) = a10;
    v34 = crc_16_l_table[(a7 ^ v33 ^ HIBYTE(v32))];
    a1[24] = a11;
    v35 = crc_16_l_table[(a8 ^ v34 ^ HIBYTE(v33))];
    a1[25] = a12;
    v36 = crc_16_l_table[(a9 ^ v35 ^ HIBYTE(v34))];
    a1[26] = a13;
    v37 = crc_16_l_table[(a10 ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a1[21] ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(a1[22] ^ v38 ^ HIBYTE(v37))];
    v40 = crc_16_l_table[(a1[23] ^ v39 ^ HIBYTE(v38))];
    a1[27] = a14;
    v41 = crc_16_l_table[(a11 ^ v40 ^ HIBYTE(v39))];
    v42 = crc_16_l_table[(a12 ^ v41 ^ HIBYTE(v40))];
    v43 = crc_16_l_table[(a13 ^ v42 ^ HIBYTE(v41))];
    *(a1 + 14) = crc_16_l_table[(v43 ^ HIBYTE(v42) ^ a14)] ^ ~(v43 >> 8);
    if (a2 >= 60)
    {
      bzero(__src, 0x800uLL);
      v44 = 0;
      v45 = 0;
      do
      {
        while (1)
        {
          v46 = a1[v44];
          v47 = v45;
          v48 = v45 + 1;
          if ((v46 - 125) > 1)
          {
            break;
          }

          v45 += 2;
          __src[v48] = v46 & 0x5F;
          __src[v47] = 125;
          if (++v44 == 30)
          {
            goto LABEL_9;
          }
        }

        ++v45;
        __src[v47] = v46;
        ++v44;
      }

      while (v44 != 30);
LABEL_9:
      memcpy(a1, __src, v45);
      result = (v45 + 1);
      a1[v45] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v49 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA2000_MOD_FCH(char *a1, int a2, int a3, char a4, int a5, char a6, __int16 a7, int a8)
{
  v45 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1F)
  {
    bzero(a1, a2);
    *a1 = 461643;
    *(a1 + 2) = 104;
    *(a1 + 10) = a3;
    *(a1 + 15) = a5;
    *(a1 + 10) = a7;
    v17 = crc_16_l_table[a1[6] ^ 0xDCLL];
    v18 = crc_16_l_table[a1[7] ^ 0x9C ^ v17];
    v19 = crc_16_l_table[(a1[8] ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(a1[9] ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(a3 ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(BYTE1(a3) ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(BYTE2(a3) ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(HIBYTE(a3) ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a4 ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a5 ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(BYTE1(a5) ^ v26 ^ HIBYTE(v25))];
    a1[14] = a4;
    v28 = crc_16_l_table[(BYTE2(a5) ^ v27 ^ HIBYTE(v26))];
    a1[19] = a6;
    v29 = crc_16_l_table[(HIBYTE(a5) ^ v28 ^ HIBYTE(v27))];
    *(a1 + 6) = a8;
    v30 = crc_16_l_table[(a6 ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a7 ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(HIBYTE(a7) ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(a1[22] ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a1[23] ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(a8 ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(a1[25] ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(a1[26] ^ v36 ^ HIBYTE(v35))];
    *(a1 + 14) = crc_16_l_table[(a1[27] ^ v37 ^ HIBYTE(v36))] ^ ~(v37 >> 8);
    if (a2 >= 60)
    {
      bzero(__src, 0x800uLL);
      v38 = 0;
      v39 = 0;
      do
      {
        while (1)
        {
          v40 = a1[v38];
          v41 = v39;
          v42 = v39 + 1;
          if ((v40 - 125) > 1)
          {
            break;
          }

          v39 += 2;
          __src[v42] = v40 & 0x5F;
          __src[v41] = 125;
          if (++v38 == 30)
          {
            goto LABEL_9;
          }
        }

        ++v39;
        __src[v41] = v40;
        ++v38;
      }

      while (v38 != 30);
LABEL_9:
      memcpy(a1, __src, v39);
      result = (v39 + 1);
      a1[v39] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v43 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA2000_FTM_FWD_HHO_SC(char *a1, int a2, int a3, __int16 a4, __int16 a5)
{
  v80 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1F)
  {
    bzero(a1, a2);
    *a1 = 461643;
    *(a1 + 2) = 128;
    *(a1 + 10) = a3;
    *(a1 + 7) = a4;
    *(a1 + 8) = a5;
    v11 = crc_16_l_table[a1[6] ^ 0x85];
    v12 = crc_16_l_table[(a1[7] ^ v11) ^ 0xBB];
    v13 = crc_16_l_table[(a1[8] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(a1[9] ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(a3 ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(BYTE1(a3) ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(BYTE2(a3) ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(HIBYTE(a3) ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a4 ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(HIBYTE(a4) ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(v20 ^ HIBYTE(v19) ^ a5)];
    v22 = crc_16_l_table[(a1[17] ^ v21 ^ HIBYTE(v20))];
    *(a1 + 9) = v22 ^ ~HIBYTE(crc_16_l_table[(v20 ^ HIBYTE(v19) ^ a5)]);
    if (a2 >= 40)
    {
      bzero(v79, 0x7FFuLL);
      v23 = *a1;
      if ((v23 - 125) > 1)
      {
        v24 = 1;
      }

      else
      {
        v79[0] = v23 & 0x5F;
        v24 = 2;
        LOBYTE(v23) = 125;
      }

      __src = v23;
      v25 = a1[1];
      v26 = v24 + 1;
      if ((v25 - 125) <= 1)
      {
        v79[v26 - 1] = v25 & 0x5F;
        LOBYTE(v25) = 125;
        LODWORD(v26) = v24 + 2;
      }

      v79[v24 - 1] = v25;
      v27 = a1[2];
      v28 = v26;
      v29 = v26 + 1;
      if ((v27 - 125) <= 1)
      {
        v79[v29 - 1] = v27 & 0x5F;
        LODWORD(v29) = v28 + 2;
        LOBYTE(v27) = 125;
      }

      v79[v28 - 1] = v27;
      v30 = a1[3];
      v31 = v29;
      v32 = v29 + 1;
      if ((v30 - 125) <= 1)
      {
        v79[v32 - 1] = v30 & 0x5F;
        LOBYTE(v30) = 125;
        LODWORD(v32) = v31 + 2;
      }

      v79[v31 - 1] = v30;
      v33 = a1[4];
      v34 = v32;
      v35 = v32 + 1;
      if ((v33 - 125) <= 1)
      {
        v79[v35 - 1] = v33 & 0x5F;
        LODWORD(v35) = v34 + 2;
        LOBYTE(v33) = 125;
      }

      v79[v34 - 1] = v33;
      v36 = a1[5];
      v37 = v35;
      v38 = v35 + 1;
      if ((v36 - 125) <= 1)
      {
        v79[v38 - 1] = v36 & 0x5F;
        LOBYTE(v36) = 125;
        LODWORD(v38) = v37 + 2;
      }

      v79[v37 - 1] = v36;
      v39 = a1[6];
      v40 = v38;
      v41 = v38 + 1;
      if ((v39 - 125) <= 1)
      {
        v79[v41 - 1] = v39 & 0x5F;
        LODWORD(v41) = v40 + 2;
        LOBYTE(v39) = 125;
      }

      v79[v40 - 1] = v39;
      v42 = a1[7];
      v43 = v41;
      v44 = v41 + 1;
      if ((v42 - 125) <= 1)
      {
        v79[v44 - 1] = v42 & 0x5F;
        LOBYTE(v42) = 125;
        LODWORD(v44) = v43 + 2;
      }

      v79[v43 - 1] = v42;
      v45 = a1[8];
      v46 = v44;
      v47 = v44 + 1;
      if ((v45 - 125) <= 1)
      {
        v79[v47 - 1] = v45 & 0x5F;
        LODWORD(v47) = v46 + 2;
        LOBYTE(v45) = 125;
      }

      v79[v46 - 1] = v45;
      v48 = a1[9];
      v49 = v47;
      v50 = v47 + 1;
      if ((v48 - 125) <= 1)
      {
        v79[v50 - 1] = v48 & 0x5F;
        LOBYTE(v48) = 125;
        LODWORD(v50) = v49 + 2;
      }

      v79[v49 - 1] = v48;
      v51 = a1[10];
      v52 = v50;
      v53 = v50 + 1;
      if ((v51 - 125) <= 1)
      {
        v79[v53 - 1] = v51 & 0x5F;
        LODWORD(v53) = v52 + 2;
        LOBYTE(v51) = 125;
      }

      v79[v52 - 1] = v51;
      v54 = a1[11];
      v55 = v53;
      v56 = v53 + 1;
      if ((v54 - 125) <= 1)
      {
        v79[v56 - 1] = v54 & 0x5F;
        LOBYTE(v54) = 125;
        LODWORD(v56) = v55 + 2;
      }

      v79[v55 - 1] = v54;
      v57 = a1[12];
      v58 = v56;
      v59 = v56 + 1;
      if ((v57 - 125) <= 1)
      {
        v79[v59 - 1] = v57 & 0x5F;
        LODWORD(v59) = v58 + 2;
        LOBYTE(v57) = 125;
      }

      v79[v58 - 1] = v57;
      v60 = a1[13];
      v61 = v59;
      v62 = v59 + 1;
      if ((v60 - 125) <= 1)
      {
        v79[v62 - 1] = v60 & 0x5F;
        LOBYTE(v60) = 125;
        LODWORD(v62) = v61 + 2;
      }

      v79[v61 - 1] = v60;
      v63 = a1[14];
      v64 = v62;
      v65 = v62 + 1;
      if ((v63 - 125) <= 1)
      {
        v79[v65 - 1] = v63 & 0x5F;
        LODWORD(v65) = v64 + 2;
        LOBYTE(v63) = 125;
      }

      v79[v64 - 1] = v63;
      v66 = a1[15];
      v67 = v65 + 1;
      if ((v66 - 125) <= 1)
      {
        v79[v67 - 1] = v66 & 0x5F;
        LOBYTE(v66) = 125;
        LODWORD(v67) = v65 + 2;
      }

      v79[v65 - 1] = v66;
      v68 = a1[16];
      v69 = v67 + 1;
      if ((v68 - 125) <= 1)
      {
        v79[v69 - 1] = v68 & 0x5F;
        LODWORD(v69) = v67 + 2;
        LOBYTE(v68) = 125;
      }

      v79[v67 - 1] = v68;
      v70 = ~(v22 ^ BYTE1(v21));
      v71 = a1[17];
      v72 = v69;
      v73 = v69 + 1;
      if ((v71 - 125) <= 1)
      {
        v79[v73 - 1] = v71 & 0x5F;
        LOBYTE(v71) = 125;
        LODWORD(v73) = v72 + 2;
      }

      v74 = ((v22 ^ ~(v21 >> 8)) >> 8);
      v79[v72 - 1] = v71;
      v75 = v73 + 1;
      if ((v70 - 125) <= 1)
      {
        v79[v75 - 1] = v70 & 0x5F;
        LODWORD(v75) = v73 + 2;
        LOBYTE(v70) = 125;
      }

      v79[v73 - 1] = v70;
      v76 = v75 + 1;
      if ((v74 - 125) <= 1)
      {
        v79[v76 - 1] = v74 & 0x5F;
        LOBYTE(v74) = 125;
        LODWORD(v76) = v75 + 2;
      }

      v79[v75 - 1] = v74;
      memcpy(a1, &__src, v76);
      result = (v76 + 1);
      a1[v76] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v77 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA2000_CMD_RELEASE(unsigned __int8 *a1, int a2)
{
  v31 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x33)
  {
    goto LABEL_21;
  }

  bzero(a1, a2);
  *a1 = 461643;
  a1[4] = 108;
  v5 = a1[5];
  v6 = crc_16_l_table[v5 ^ 0x3C];
  v7 = a1[6];
  v8 = crc_16_l_table[(v7 ^ v6) ^ 0x53];
  v9 = crc_16_l_table[(a1[7] ^ v8 ^ HIBYTE(v6))];
  v10 = crc_16_l_table[(a1[8] ^ v9 ^ HIBYTE(v8))];
  v11 = crc_16_l_table[(a1[9] ^ v10 ^ HIBYTE(v9))];
  *(a1 + 5) = v11 ^ ~HIBYTE(crc_16_l_table[(a1[8] ^ v9 ^ HIBYTE(v8))]);
  if (a2 < 24)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  bzero(v30, 0x7FAuLL);
  __src = 461643;
  v28 = 108;
  if ((v5 - 125) <= 1)
  {
    v30[0] = v5 & 0x5F;
    v29 = 125;
    v12 = 7;
    v13 = 8;
    if ((v7 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v29 = v5;
  v12 = 6;
  v13 = 7;
  if ((v7 - 125) <= 1)
  {
LABEL_9:
    *(&__src + v13) = v7 & 0x5F;
    LOBYTE(v7) = 125;
    LODWORD(v13) = v12 + 2;
  }

LABEL_10:
  *(&__src + v12) = v7;
  v14 = a1[7];
  v15 = v13 + 1;
  if ((v14 - 125) <= 1)
  {
    *(&__src + v15) = v14 & 0x5F;
    LOBYTE(v14) = 125;
    LODWORD(v15) = v13 + 2;
  }

  *(&__src + v13) = v14;
  v16 = a1[8];
  v17 = v15 + 1;
  if ((v16 - 125) <= 1)
  {
    *(&__src + v17) = v16 & 0x5F;
    LOBYTE(v16) = 125;
    LODWORD(v17) = v15 + 2;
  }

  *(&__src + v15) = v16;
  v18 = ~(v11 ^ BYTE1(v10));
  v19 = a1[9];
  v20 = v17;
  v21 = v17 + 1;
  if ((v19 - 125) <= 1)
  {
    *(&__src + v21) = v19 & 0x5F;
    LOBYTE(v19) = 125;
    LODWORD(v21) = v20 + 2;
  }

  v22 = ((v11 ^ ~(v10 >> 8)) >> 8);
  *(&__src + v20) = v19;
  v23 = v21;
  v24 = v21 + 1;
  if ((v18 - 125) <= 1)
  {
    *(&__src + v24) = v18 & 0x5F;
    LOBYTE(v18) = 125;
    LODWORD(v24) = v23 + 2;
  }

  *(&__src + v23) = v18;
  v25 = v24 + 1;
  if ((v22 - 125) <= 1)
  {
    *(&__src + v25) = v22 & 0x5F;
    LOBYTE(v22) = 125;
    LODWORD(v25) = v24 + 2;
  }

  *(&__src + v24) = v22;
  memcpy(a1, &__src, v25);
  result = (v25 + 1);
  a1[v25] = 126;
LABEL_21:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_PILOT_ACQ(char *a1, int a2, int a3, __int16 a4, int a5, int a6)
{
  v37 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x23)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 113;
    *(a1 + 10) = a3;
    *(a1 + 7) = a4;
    v13 = crc_16_l_table[a1[6] ^ 0xACLL];
    v14 = crc_16_l_table[a1[7] ^ 0x6C ^ v13];
    v15 = crc_16_l_table[(a1[8] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[9] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a3 ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(BYTE1(a3) ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(BYTE2(a3) ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(HIBYTE(a3) ^ v19 ^ HIBYTE(v18))];
    *(a1 + 4) = a5;
    *(a1 + 5) = a6;
    v21 = crc_16_l_table[(a4 ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(HIBYTE(a4) ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a5 ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(BYTE1(a5) ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(BYTE2(a5) ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[19] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a6 ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a1[21] ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a1[22] ^ v28 ^ HIBYTE(v27))];
    *(a1 + 12) = crc_16_l_table[(a1[23] ^ v29 ^ HIBYTE(v28))] ^ ~(v29 >> 8);
    if (a2 >= 52)
    {
      bzero(__src, 0x800uLL);
      v30 = 0;
      v31 = 0;
      do
      {
        while (1)
        {
          v32 = a1[v30];
          v33 = v31;
          v34 = v31 + 1;
          if ((v32 - 125) > 1)
          {
            break;
          }

          v31 += 2;
          __src[v34] = v32 & 0x5F;
          __src[v33] = 125;
          if (++v30 == 26)
          {
            goto LABEL_9;
          }
        }

        ++v31;
        __src[v33] = v32;
        ++v30;
      }

      while (v30 != 26);
LABEL_9:
      memcpy(a1, __src, v31);
      result = (v31 + 1);
      a1[v31] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v35 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_SYS_TIME_ACQ(unsigned __int8 *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1F)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 114;
    a1[6] = 10;
    v5 = crc_16_l_table[a1[7] ^ 0x34];
    v6 = crc_16_l_table[a1[8] ^ 0x2F ^ v5];
    v7 = crc_16_l_table[(a1[9] ^ v6 ^ HIBYTE(v5))];
    *(a1 + 5) = v7 ^ ~HIBYTE(crc_16_l_table[a1[8] ^ 0x2F ^ v5]);
    if (a2 >= 24)
    {
      bzero(v25, 0x7F8uLL);
      __src = 527179;
      v22 = 114;
      v23 = 10;
      v8 = a1[7];
      if ((v8 - 125) > 1)
      {
        v9 = 8;
      }

      else
      {
        v25[0] = v8 & 0x5F;
        v9 = 9;
        LOBYTE(v8) = 125;
      }

      v24 = v8;
      v10 = a1[8];
      v11 = v9 + 1;
      if ((v10 - 125) <= 1)
      {
        *(&__src + v11) = v10 & 0x5F;
        LOBYTE(v10) = 125;
        LODWORD(v11) = v9 | 2;
      }

      *(&__src + v9) = v10;
      v12 = ~(v7 ^ BYTE1(v6));
      v13 = a1[9];
      v14 = v11;
      v15 = v11 + 1;
      if ((v13 - 125) <= 1)
      {
        *(&__src + v15) = v13 & 0x5F;
        LOBYTE(v13) = 125;
        LODWORD(v15) = v14 + 2;
      }

      v16 = ((v7 ^ ~(v6 >> 8)) >> 8);
      *(&__src + v14) = v13;
      v17 = v15;
      v18 = v15 + 1;
      if ((v12 - 125) <= 1)
      {
        *(&__src + v18) = v12 & 0x5F;
        LOBYTE(v12) = 125;
        LODWORD(v18) = v17 + 2;
      }

      *(&__src + v17) = v12;
      v19 = v18 + 1;
      if ((v16 - 125) <= 1)
      {
        *(&__src + v19) = v16 & 0x5F;
        LOBYTE(v16) = 125;
        LODWORD(v19) = v18 + 2;
      }

      *(&__src + v18) = v16;
      memcpy(a1, &__src, v19);
      result = (v19 + 1);
      a1[v19] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_DEMOD_CC_MAC_FTC(unsigned __int8 *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7, unsigned __int8 a8)
{
  v76 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1B)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 115;
    a1[10] = a3;
    a1[11] = a4;
    a1[12] = a5;
    v17 = a1[6];
    v18 = crc_16_l_table[v17 ^ 0x1C];
    v19 = crc_16_l_table[a1[7] ^ 0x5F ^ v18];
    v20 = crc_16_l_table[(a1[8] ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(a1[9] ^ v20 ^ HIBYTE(v19))];
    a1[13] = a6;
    v22 = crc_16_l_table[(a3 ^ v21 ^ HIBYTE(v20))];
    a1[14] = a7;
    v23 = crc_16_l_table[(a4 ^ v22 ^ HIBYTE(v21))];
    a1[15] = a8;
    v24 = crc_16_l_table[(a5 ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a6 ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a7 ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(v26 ^ HIBYTE(v25) ^ a8)];
    v28 = v27 ^ ~(v26 >> 8);
    *(a1 + 8) = v27 ^ ~(v26 >> 8);
    if (a2 >= 36)
    {
      bzero(v75, 0x7FFuLL);
      v29 = *a1;
      if ((v29 - 125) > 1)
      {
        v30 = 1;
      }

      else
      {
        v75[0] = v29 & 0x5F;
        v30 = 2;
        LOBYTE(v29) = 125;
      }

      __src = v29;
      v31 = a1[1];
      v32 = v30 + 1;
      if ((v31 - 125) <= 1)
      {
        v75[v32 - 1] = v31 & 0x5F;
        LOBYTE(v31) = 125;
        LODWORD(v32) = v30 + 2;
      }

      v75[v30 - 1] = v31;
      v33 = a1[2];
      v34 = v32;
      v35 = v32 + 1;
      if ((v33 - 125) <= 1)
      {
        v75[v35 - 1] = v33 & 0x5F;
        LODWORD(v35) = v34 + 2;
        LOBYTE(v33) = 125;
      }

      v75[v34 - 1] = v33;
      v36 = a1[3];
      v37 = v35;
      v38 = v35 + 1;
      if ((v36 - 125) <= 1)
      {
        v75[v38 - 1] = v36 & 0x5F;
        LOBYTE(v36) = 125;
        LODWORD(v38) = v37 + 2;
      }

      v75[v37 - 1] = v36;
      v39 = a1[4];
      v40 = v38 + 1;
      if ((v39 - 125) <= 1)
      {
        v75[v40 - 1] = v39 & 0x5F;
        LOBYTE(v39) = 125;
        LODWORD(v40) = v38 + 2;
      }

      v75[v38 - 1] = v39;
      v41 = a1[5];
      v42 = v40 + 1;
      if ((v41 - 125) <= 1)
      {
        v75[v42 - 1] = v41 & 0x5F;
        LOBYTE(v41) = 125;
        LODWORD(v42) = v40 + 2;
      }

      v75[v40 - 1] = v41;
      v43 = v42 + 1;
      if ((v17 - 125) <= 1)
      {
        v75[v43 - 1] = v17 & 0x5F;
        LODWORD(v43) = v42 + 2;
        LOBYTE(v17) = 125;
      }

      v75[v42 - 1] = v17;
      v44 = a1[7];
      v45 = v43;
      v46 = v43 + 1;
      if ((v44 - 125) <= 1)
      {
        v75[v46 - 1] = v44 & 0x5F;
        LOBYTE(v44) = 125;
        LODWORD(v46) = v45 + 2;
      }

      v75[v45 - 1] = v44;
      v47 = a1[8];
      v48 = v46;
      v49 = v46 + 1;
      if ((v47 - 125) <= 1)
      {
        v75[v49 - 1] = v47 & 0x5F;
        LODWORD(v49) = v48 + 2;
        LOBYTE(v47) = 125;
      }

      v75[v48 - 1] = v47;
      v50 = a1[9];
      v51 = v49;
      v52 = v49 + 1;
      if ((v50 - 125) <= 1)
      {
        v75[v52 - 1] = v50 & 0x5F;
        LOBYTE(v50) = 125;
        LODWORD(v52) = v51 + 2;
      }

      v75[v51 - 1] = v50;
      v53 = a1[10];
      v54 = v52;
      v55 = v52 + 1;
      if ((v53 - 125) <= 1)
      {
        v75[v55 - 1] = v53 & 0x5F;
        LODWORD(v55) = v54 + 2;
        LOBYTE(v53) = 125;
      }

      v75[v54 - 1] = v53;
      v56 = a1[11];
      v57 = v55;
      v58 = v55 + 1;
      if ((v56 - 125) <= 1)
      {
        v75[v58 - 1] = v56 & 0x5F;
        LOBYTE(v56) = 125;
        LODWORD(v58) = v57 + 2;
      }

      v75[v57 - 1] = v56;
      v59 = a1[12];
      v60 = v58;
      v61 = v58 + 1;
      if ((v59 - 125) <= 1)
      {
        v75[v61 - 1] = v59 & 0x5F;
        LODWORD(v61) = v60 + 2;
        LOBYTE(v59) = 125;
      }

      v75[v60 - 1] = v59;
      v62 = a1[13];
      v63 = v61 + 1;
      if ((v62 - 125) <= 1)
      {
        v75[v63 - 1] = v62 & 0x5F;
        LOBYTE(v62) = 125;
        LODWORD(v63) = v61 + 2;
      }

      v75[v61 - 1] = v62;
      v64 = a1[14];
      v65 = v63 + 1;
      if ((v64 - 125) <= 1)
      {
        v75[v65 - 1] = v64 & 0x5F;
        LODWORD(v65) = v63 + 2;
        LOBYTE(v64) = 125;
      }

      v75[v63 - 1] = v64;
      v66 = ~(v27 ^ BYTE1(v26));
      v67 = a1[15];
      v68 = v65;
      v69 = v65 + 1;
      if ((v67 - 125) <= 1)
      {
        v75[v69 - 1] = v67 & 0x5F;
        LOBYTE(v67) = 125;
        LODWORD(v69) = v68 + 2;
      }

      v70 = (v27 ^ ~(v26 >> 8)) >> 8;
      v75[v68 - 1] = v67;
      v71 = v69 + 1;
      if ((v66 - 125) <= 1)
      {
        v75[v71 - 1] = v66 & 0x5F;
        LODWORD(v71) = v69 + 2;
        LOBYTE(v66) = 125;
      }

      v75[v69 - 1] = v66;
      v72 = v71 + 1;
      if (BYTE1(v28) - 125 <= 1)
      {
        v75[v72 - 1] = BYTE1(v28) & 0x5F;
        v70 = 125;
        LODWORD(v72) = v71 + 2;
      }

      v75[v71 - 1] = v70;
      memcpy(a1, &__src, v72);
      result = (v72 + 1);
      a1[v72] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v73 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_MOD_ACC(char *a1, int a2, int a3, int a4, int a5, int a6, int a7, char a8, char a9, char a10, char a11, char a12, char a13)
{
  v58 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x2F)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 116;
    *(a1 + 10) = a3;
    *(a1 + 14) = a4;
    *(a1 + 18) = a5;
    *(a1 + 22) = a6;
    *(a1 + 26) = a7;
    v22 = crc_16_l_table[a1[6] ^ 0x14];
    v23 = crc_16_l_table[a1[7] ^ 0x12 ^ v22];
    v24 = crc_16_l_table[(a1[8] ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a1[9] ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[10] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a1[11] ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a1[12] ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a1[13] ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a1[14] ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a1[15] ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(a1[16] ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(HIBYTE(a4) ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a5 ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(BYTE1(a5) ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(BYTE2(a5) ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(HIBYTE(a5) ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a6 ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(BYTE1(a6) ^ v38 ^ HIBYTE(v37))];
    v40 = crc_16_l_table[(BYTE2(a6) ^ v39 ^ HIBYTE(v38))];
    v41 = crc_16_l_table[(HIBYTE(a6) ^ v40 ^ HIBYTE(v39))];
    v42 = crc_16_l_table[(a7 ^ v41 ^ HIBYTE(v40))];
    a1[30] = a8;
    v43 = crc_16_l_table[(BYTE1(a7) ^ v42 ^ HIBYTE(v41))];
    a1[31] = a9;
    v44 = crc_16_l_table[(BYTE2(a7) ^ v43 ^ HIBYTE(v42))];
    a1[32] = a10;
    v45 = crc_16_l_table[(HIBYTE(a7) ^ v44 ^ HIBYTE(v43))];
    a1[33] = a11;
    v46 = crc_16_l_table[(a8 ^ v45 ^ HIBYTE(v44))];
    a1[34] = a12;
    v47 = crc_16_l_table[(a9 ^ v46 ^ HIBYTE(v45))];
    a1[35] = a13;
    v48 = crc_16_l_table[(a10 ^ v47 ^ HIBYTE(v46))];
    v49 = crc_16_l_table[(a11 ^ v48 ^ HIBYTE(v47))];
    v50 = crc_16_l_table[(a12 ^ v49 ^ HIBYTE(v48))];
    *(a1 + 18) = crc_16_l_table[(v50 ^ HIBYTE(v49) ^ a13)] ^ ~(v50 >> 8);
    if (a2 >= 76)
    {
      bzero(__src, 0x800uLL);
      v51 = 0;
      v52 = 0;
      do
      {
        while (1)
        {
          v53 = a1[v51];
          v54 = v52;
          v55 = v52 + 1;
          if ((v53 - 125) > 1)
          {
            break;
          }

          v52 += 2;
          __src[v55] = v53 & 0x5F;
          __src[v54] = 125;
          if (++v51 == 38)
          {
            goto LABEL_9;
          }
        }

        ++v52;
        __src[v54] = v53;
        ++v51;
      }

      while (v51 != 38);
LABEL_9:
      memcpy(a1, __src, v52);
      result = (v52 + 1);
      a1[v52] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v56 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_REV_A_CONF_MAC_FOR_FWD_CC_MAC_FTC(unsigned __int8 *a1, int a2, int a3, int a4)
{
  v38 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1B)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 124;
    a1[10] = a3;
    a1[11] = a4;
    v9 = a1[6];
    v10 = crc_16_l_table[v9 ^ 0xD4];
    v11 = crc_16_l_table[a1[7] ^ 0xDC ^ v10];
    v12 = crc_16_l_table[(a1[8] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[9] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(a3 ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(v14 ^ HIBYTE(v13)) ^ a4];
    v16 = v15 ^ ~(v14 >> 8);
    *(a1 + 6) = v15 ^ ~HIBYTE(crc_16_l_table[(a3 ^ v13 ^ HIBYTE(v12))]);
    if (a2 >= 28)
    {
      bzero(v37, 0x7F9uLL);
      __src = 527179;
      v35 = 124;
      if ((v9 - 125) > 1)
      {
        v17 = 7;
      }

      else
      {
        v37[0] = v9 & 0x5F;
        v17 = 8;
        LOBYTE(v9) = 125;
      }

      v36 = v9;
      v18 = a1[7];
      v19 = v17 + 1;
      if ((v18 - 125) <= 1)
      {
        *(&__src + v19) = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v19) = v17 + 2;
      }

      *(&__src + v17) = v18;
      v20 = a1[8];
      v21 = v19;
      v22 = v19 + 1;
      if ((v20 - 125) <= 1)
      {
        *(&__src + v22) = v20 & 0x5F;
        LODWORD(v22) = v21 + 2;
        LOBYTE(v20) = 125;
      }

      *(&__src + v21) = v20;
      v23 = a1[9];
      v24 = v22 + 1;
      if ((v23 - 125) <= 1)
      {
        *(&__src + v24) = v23 & 0x5F;
        LOBYTE(v23) = 125;
        LODWORD(v24) = v22 + 2;
      }

      *(&__src + v22) = v23;
      v25 = v24 + 1;
      if ((a3 - 125) <= 1)
      {
        *(&__src + v25) = a3 & 0x5F;
        LODWORD(v25) = v24 + 2;
        LOBYTE(a3) = 125;
      }

      v26 = ~(v15 ^ BYTE1(v14));
      *(&__src + v24) = a3;
      v27 = v25;
      v28 = v25 + 1;
      if ((a4 - 125) <= 1)
      {
        *(&__src + v28) = a4 & 0x5F;
        LOBYTE(a4) = 125;
        LODWORD(v28) = v27 + 2;
      }

      v29 = (v15 ^ ~(v14 >> 8)) >> 8;
      *(&__src + v27) = a4;
      v30 = v28;
      v31 = v28 + 1;
      if ((v26 - 125) <= 1)
      {
        *(&__src + v31) = v26 & 0x5F;
        LODWORD(v31) = v30 + 2;
        LOBYTE(v26) = 125;
      }

      *(&__src + v30) = v26;
      v32 = v31 + 1;
      if (BYTE1(v16) - 125 <= 1)
      {
        *(&__src + v32) = BYTE1(v16) & 0x5F;
        v29 = 125;
        LODWORD(v32) = v31 + 2;
      }

      *(&__src + v31) = v29;
      memcpy(a1, &__src, v32);
      result = (v32 + 1);
      a1[v32] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v33 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_REV_A_MOD_ACC(char *a1, int a2, int a3, int a4, int a5, int a6, int a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18)
{
  v74 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x35)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 125;
    *(a1 + 10) = a3;
    *(a1 + 14) = a4;
    *(a1 + 18) = a5;
    *(a1 + 22) = a6;
    *(a1 + 26) = a7;
    v27 = crc_16_l_table[~*a1];
    v28 = crc_16_l_table[(a1[1] ^ ~v27)];
    v29 = crc_16_l_table[(a1[2] ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a1[3] ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a1[4] ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(a1[5] ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(a1[6] ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a1[7] ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(a1[8] ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(a1[9] ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(a1[10] ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a1[11] ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(a1[12] ^ v38 ^ HIBYTE(v37))];
    v40 = crc_16_l_table[(a1[13] ^ v39 ^ HIBYTE(v38))];
    v41 = crc_16_l_table[(a1[14] ^ v40 ^ HIBYTE(v39))];
    v42 = crc_16_l_table[(a1[15] ^ v41 ^ HIBYTE(v40))];
    v43 = crc_16_l_table[(a1[16] ^ v42 ^ HIBYTE(v41))];
    v44 = crc_16_l_table[(a1[17] ^ v43 ^ HIBYTE(v42))];
    v45 = crc_16_l_table[(a1[18] ^ v44 ^ HIBYTE(v43))];
    v46 = crc_16_l_table[(a1[19] ^ v45 ^ HIBYTE(v44))];
    v47 = crc_16_l_table[(a1[20] ^ v46 ^ HIBYTE(v45))];
    v48 = crc_16_l_table[(a1[21] ^ v47 ^ HIBYTE(v46))];
    v49 = crc_16_l_table[(a6 ^ v48 ^ HIBYTE(v47))];
    v50 = crc_16_l_table[(BYTE1(a6) ^ v49 ^ HIBYTE(v48))];
    v51 = crc_16_l_table[(BYTE2(a6) ^ v50 ^ HIBYTE(v49))];
    v52 = crc_16_l_table[(HIBYTE(a6) ^ v51 ^ HIBYTE(v50))];
    v53 = crc_16_l_table[(a7 ^ v52 ^ HIBYTE(v51))];
    a1[30] = a8;
    v54 = crc_16_l_table[(BYTE1(a7) ^ v53 ^ HIBYTE(v52))];
    a1[31] = a9;
    v55 = crc_16_l_table[(BYTE2(a7) ^ v54 ^ HIBYTE(v53))];
    a1[32] = a10;
    v56 = crc_16_l_table[(HIBYTE(a7) ^ v55 ^ HIBYTE(v54))];
    a1[33] = a11;
    v57 = crc_16_l_table[(a8 ^ v56 ^ HIBYTE(v55))];
    a1[34] = a12;
    v58 = crc_16_l_table[(a9 ^ v57 ^ HIBYTE(v56))];
    a1[35] = a13;
    v59 = crc_16_l_table[(a10 ^ v58 ^ HIBYTE(v57))];
    a1[36] = a14;
    v60 = crc_16_l_table[(a11 ^ v59 ^ HIBYTE(v58))];
    a1[37] = a15;
    v61 = crc_16_l_table[(a12 ^ v60 ^ HIBYTE(v59))];
    a1[38] = a16;
    v62 = crc_16_l_table[(a13 ^ v61 ^ HIBYTE(v60))];
    a1[39] = a17;
    v63 = crc_16_l_table[(a14 ^ v62 ^ HIBYTE(v61))];
    a1[40] = a18;
    v64 = crc_16_l_table[(a15 ^ v63 ^ HIBYTE(v62))];
    v65 = crc_16_l_table[(a16 ^ v64 ^ HIBYTE(v63))];
    v66 = crc_16_l_table[(a17 ^ v65 ^ HIBYTE(v64))];
    *(a1 + 41) = crc_16_l_table[(v66 ^ HIBYTE(v65) ^ a18)] ^ ~(v66 >> 8);
    if (a2 >= 86)
    {
      bzero(__src, 0x800uLL);
      v67 = 0;
      v68 = 0;
      do
      {
        while (1)
        {
          v69 = a1[v67];
          v70 = v68;
          v71 = v68 + 1;
          if ((v69 - 125) > 1)
          {
            break;
          }

          v68 += 2;
          __src[v71] = v69 & 0x5F;
          __src[v70] = 125;
          if (++v67 == 43)
          {
            goto LABEL_9;
          }
        }

        ++v68;
        __src[v70] = v69;
        ++v67;
      }

      while (v67 != 43);
LABEL_9:
      memcpy(a1, __src, v68);
      result = (v68 + 1);
      a1[v68] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v72 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_REV_A_DEMOD_FWD_WITH_NO_REV(unsigned __int8 *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7, unsigned __int8 a8, char a9, char a10, char a11)
{
  v95 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x35)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 127;
    a1[10] = a3;
    a1[11] = a4;
    a1[12] = a5;
    v20 = crc_16_l_table[a1[6] ^ 0xBCLL];
    v21 = crc_16_l_table[a1[7] ^ 0xF6 ^ v20];
    v22 = crc_16_l_table[(a1[8] ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a1[9] ^ v22 ^ HIBYTE(v21))];
    a1[13] = a6;
    v24 = crc_16_l_table[(a3 ^ v23 ^ HIBYTE(v22))];
    a1[14] = a7;
    v25 = crc_16_l_table[(a4 ^ v24 ^ HIBYTE(v23))];
    a1[15] = a8;
    v26 = crc_16_l_table[(a5 ^ v25 ^ HIBYTE(v24))];
    a1[16] = a9;
    v27 = crc_16_l_table[(a6 ^ v26 ^ HIBYTE(v25))];
    a1[17] = a10;
    v28 = crc_16_l_table[(a7 ^ v27 ^ HIBYTE(v26))];
    a1[18] = a11;
    v29 = crc_16_l_table[(a8 ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a9 ^ v29 ^ HIBYTE(v28))];
    v31 = (a10 ^ v30 ^ HIBYTE(v29));
    v32 = crc_16_l_table[v31];
    v33 = crc_16_l_table[(v32 ^ HIBYTE(v30) ^ a11)];
    *(a1 + 19) = v33 ^ ~HIBYTE(crc_16_l_table[v31]);
    if (a2 >= 42)
    {
      bzero(v94, 0x7FFuLL);
      v34 = *a1;
      if ((v34 - 125) > 1)
      {
        v35 = 1;
      }

      else
      {
        v94[0] = v34 & 0x5F;
        v35 = 2;
        LOBYTE(v34) = 125;
      }

      __src = v34;
      v36 = a1[1];
      v37 = v35 + 1;
      if ((v36 - 125) <= 1)
      {
        v94[v37 - 1] = v36 & 0x5F;
        LOBYTE(v36) = 125;
        LODWORD(v37) = v35 + 2;
      }

      v94[v35 - 1] = v36;
      v38 = a1[2];
      v39 = v37;
      v40 = v37 + 1;
      if ((v38 - 125) <= 1)
      {
        v94[v40 - 1] = v38 & 0x5F;
        LODWORD(v40) = v39 + 2;
        LOBYTE(v38) = 125;
      }

      v94[v39 - 1] = v38;
      v41 = a1[3];
      v42 = v40;
      v43 = v40 + 1;
      if ((v41 - 125) <= 1)
      {
        v94[v43 - 1] = v41 & 0x5F;
        LOBYTE(v41) = 125;
        LODWORD(v43) = v42 + 2;
      }

      v94[v42 - 1] = v41;
      v44 = a1[4];
      v45 = v43;
      v46 = v43 + 1;
      if ((v44 - 125) <= 1)
      {
        v94[v46 - 1] = v44 & 0x5F;
        LODWORD(v46) = v45 + 2;
        LOBYTE(v44) = 125;
      }

      v94[v45 - 1] = v44;
      v47 = a1[5];
      v48 = v46;
      v49 = v46 + 1;
      if ((v47 - 125) <= 1)
      {
        v94[v49 - 1] = v47 & 0x5F;
        LOBYTE(v47) = 125;
        LODWORD(v49) = v48 + 2;
      }

      v94[v48 - 1] = v47;
      v50 = a1[6];
      v51 = v49;
      v52 = v49 + 1;
      if ((v50 - 125) <= 1)
      {
        v94[v52 - 1] = v50 & 0x5F;
        LODWORD(v52) = v51 + 2;
        LOBYTE(v50) = 125;
      }

      v94[v51 - 1] = v50;
      v53 = a1[7];
      v54 = v52;
      v55 = v52 + 1;
      if ((v53 - 125) <= 1)
      {
        v94[v55 - 1] = v53 & 0x5F;
        LOBYTE(v53) = 125;
        LODWORD(v55) = v54 + 2;
      }

      v94[v54 - 1] = v53;
      v56 = a1[8];
      v57 = v55;
      v58 = v55 + 1;
      if ((v56 - 125) <= 1)
      {
        v94[v58 - 1] = v56 & 0x5F;
        LODWORD(v58) = v57 + 2;
        LOBYTE(v56) = 125;
      }

      v94[v57 - 1] = v56;
      v59 = a1[9];
      v60 = v58;
      v61 = v58 + 1;
      if ((v59 - 125) <= 1)
      {
        v94[v61 - 1] = v59 & 0x5F;
        LOBYTE(v59) = 125;
        LODWORD(v61) = v60 + 2;
      }

      v94[v60 - 1] = v59;
      v62 = a1[10];
      v63 = v61;
      v64 = v61 + 1;
      if ((v62 - 125) <= 1)
      {
        v94[v64 - 1] = v62 & 0x5F;
        LODWORD(v64) = v63 + 2;
        LOBYTE(v62) = 125;
      }

      v94[v63 - 1] = v62;
      v65 = a1[11];
      v66 = v64;
      v67 = v64 + 1;
      if ((v65 - 125) <= 1)
      {
        v94[v67 - 1] = v65 & 0x5F;
        LOBYTE(v65) = 125;
        LODWORD(v67) = v66 + 2;
      }

      v94[v66 - 1] = v65;
      v68 = a1[12];
      v69 = v67;
      v70 = v67 + 1;
      if ((v68 - 125) <= 1)
      {
        v94[v70 - 1] = v68 & 0x5F;
        LODWORD(v70) = v69 + 2;
        LOBYTE(v68) = 125;
      }

      v94[v69 - 1] = v68;
      v71 = a1[13];
      v72 = v70;
      v73 = v70 + 1;
      if ((v71 - 125) <= 1)
      {
        v94[v73 - 1] = v71 & 0x5F;
        LOBYTE(v71) = 125;
        LODWORD(v73) = v72 + 2;
      }

      v94[v72 - 1] = v71;
      v74 = a1[14];
      v75 = v73;
      v76 = v73 + 1;
      if ((v74 - 125) <= 1)
      {
        v94[v76 - 1] = v74 & 0x5F;
        LODWORD(v76) = v75 + 2;
        LOBYTE(v74) = 125;
      }

      v94[v75 - 1] = v74;
      v77 = a1[15];
      v78 = v76;
      v79 = v76 + 1;
      if ((v77 - 125) <= 1)
      {
        v94[v79 - 1] = v77 & 0x5F;
        LOBYTE(v77) = 125;
        LODWORD(v79) = v78 + 2;
      }

      v94[v78 - 1] = v77;
      v80 = a1[16];
      v81 = v79 + 1;
      if ((v80 - 125) <= 1)
      {
        v94[v81 - 1] = v80 & 0x5F;
        LOBYTE(v80) = 125;
        LODWORD(v81) = v79 + 2;
      }

      v94[v79 - 1] = v80;
      v82 = a1[17];
      v83 = v81 + 1;
      if ((v82 - 125) <= 1)
      {
        v94[v83 - 1] = v82 & 0x5F;
        LOBYTE(v82) = 125;
        LODWORD(v83) = v81 + 2;
      }

      v94[v81 - 1] = v82;
      v84 = ~(v33 ^ BYTE1(v32));
      v85 = a1[18];
      v86 = v83;
      v87 = v83 + 1;
      if ((v85 - 125) <= 1)
      {
        v94[v87 - 1] = v85 & 0x5F;
        LOBYTE(v85) = 125;
        LODWORD(v87) = v86 + 2;
      }

      v88 = ((v33 ^ ~(v32 >> 8)) >> 8);
      v94[v86 - 1] = v85;
      v89 = v87;
      v90 = v87 + 1;
      if ((v84 - 125) <= 1)
      {
        v94[v90 - 1] = v84 & 0x5F;
        LOBYTE(v84) = 125;
        LODWORD(v90) = v89 + 2;
      }

      v94[v89 - 1] = v84;
      v91 = v90 + 1;
      if ((v88 - 125) <= 1)
      {
        v94[v91 - 1] = v88 & 0x5F;
        LOBYTE(v88) = 125;
        LODWORD(v91) = v90 + 2;
      }

      v94[v90 - 1] = v88;
      memcpy(a1, &__src, v91);
      result = (v91 + 1);
      a1[v91] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v92 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_DEMOD_FWD_WITH_NO_REV(unsigned __int8 *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7, unsigned __int8 a8, char a9, char a10)
{
  v88 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x35)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 122;
    a1[10] = a3;
    a1[11] = a4;
    a1[12] = a5;
    v19 = crc_16_l_table[a1[6] ^ 4];
    v20 = crc_16_l_table[(a1[7] ^ v19) ^ 0x88];
    v21 = crc_16_l_table[(a1[8] ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(a1[9] ^ v21 ^ HIBYTE(v20))];
    a1[13] = a6;
    v23 = crc_16_l_table[(a3 ^ v22 ^ HIBYTE(v21))];
    a1[14] = a7;
    v24 = crc_16_l_table[(a4 ^ v23 ^ HIBYTE(v22))];
    a1[15] = a8;
    v25 = crc_16_l_table[(a5 ^ v24 ^ HIBYTE(v23))];
    a1[16] = a9;
    v26 = crc_16_l_table[(a6 ^ v25 ^ HIBYTE(v24))];
    a1[17] = a10;
    v27 = crc_16_l_table[(a7 ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a8 ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a9 ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(v29 ^ HIBYTE(v28) ^ a10)];
    *(a1 + 9) = v30 ^ ~HIBYTE(crc_16_l_table[(a9 ^ v28 ^ HIBYTE(v27))]);
    if (a2 >= 40)
    {
      bzero(v87, 0x7FFuLL);
      v31 = *a1;
      if ((v31 - 125) > 1)
      {
        v32 = 1;
      }

      else
      {
        v87[0] = v31 & 0x5F;
        v32 = 2;
        LOBYTE(v31) = 125;
      }

      v86 = v31;
      v33 = a1[1];
      v34 = v32 + 1;
      if ((v33 - 125) <= 1)
      {
        v87[v34 - 1] = v33 & 0x5F;
        LOBYTE(v33) = 125;
        LODWORD(v34) = v32 + 2;
      }

      v87[v32 - 1] = v33;
      v35 = a1[2];
      v36 = v34;
      v37 = v34 + 1;
      if ((v35 - 125) <= 1)
      {
        v87[v37 - 1] = v35 & 0x5F;
        LODWORD(v37) = v36 + 2;
        LOBYTE(v35) = 125;
      }

      v87[v36 - 1] = v35;
      v38 = a1[3];
      v39 = v37;
      v40 = v37 + 1;
      if ((v38 - 125) <= 1)
      {
        v87[v40 - 1] = v38 & 0x5F;
        LOBYTE(v38) = 125;
        LODWORD(v40) = v39 + 2;
      }

      v87[v39 - 1] = v38;
      v41 = a1[4];
      v42 = v40;
      v43 = v40 + 1;
      if ((v41 - 125) <= 1)
      {
        v87[v43 - 1] = v41 & 0x5F;
        LODWORD(v43) = v42 + 2;
        LOBYTE(v41) = 125;
      }

      v87[v42 - 1] = v41;
      v44 = a1[5];
      v45 = v43;
      v46 = v43 + 1;
      if ((v44 - 125) <= 1)
      {
        v87[v46 - 1] = v44 & 0x5F;
        LOBYTE(v44) = 125;
        LODWORD(v46) = v45 + 2;
      }

      v87[v45 - 1] = v44;
      v47 = a1[6];
      v48 = v46;
      v49 = v46 + 1;
      if ((v47 - 125) <= 1)
      {
        v87[v49 - 1] = v47 & 0x5F;
        LODWORD(v49) = v48 + 2;
        LOBYTE(v47) = 125;
      }

      v87[v48 - 1] = v47;
      v50 = a1[7];
      v51 = v49;
      v52 = v49 + 1;
      if ((v50 - 125) <= 1)
      {
        v87[v52 - 1] = v50 & 0x5F;
        LOBYTE(v50) = 125;
        LODWORD(v52) = v51 + 2;
      }

      v87[v51 - 1] = v50;
      v53 = a1[8];
      v54 = v52;
      v55 = v52 + 1;
      if ((v53 - 125) <= 1)
      {
        v87[v55 - 1] = v53 & 0x5F;
        LODWORD(v55) = v54 + 2;
        LOBYTE(v53) = 125;
      }

      v87[v54 - 1] = v53;
      v56 = a1[9];
      v57 = v55;
      v58 = v55 + 1;
      if ((v56 - 125) <= 1)
      {
        v87[v58 - 1] = v56 & 0x5F;
        LOBYTE(v56) = 125;
        LODWORD(v58) = v57 + 2;
      }

      v87[v57 - 1] = v56;
      v59 = a1[10];
      v60 = v58;
      v61 = v58 + 1;
      if ((v59 - 125) <= 1)
      {
        v87[v61 - 1] = v59 & 0x5F;
        LODWORD(v61) = v60 + 2;
        LOBYTE(v59) = 125;
      }

      v87[v60 - 1] = v59;
      v62 = a1[11];
      v63 = v61;
      v64 = v61 + 1;
      if ((v62 - 125) <= 1)
      {
        v87[v64 - 1] = v62 & 0x5F;
        LOBYTE(v62) = 125;
        LODWORD(v64) = v63 + 2;
      }

      v87[v63 - 1] = v62;
      v65 = a1[12];
      v66 = v64;
      v67 = v64 + 1;
      if ((v65 - 125) <= 1)
      {
        v87[v67 - 1] = v65 & 0x5F;
        LODWORD(v67) = v66 + 2;
        LOBYTE(v65) = 125;
      }

      v87[v66 - 1] = v65;
      v68 = a1[13];
      v69 = v67;
      v70 = v67 + 1;
      if ((v68 - 125) <= 1)
      {
        v87[v70 - 1] = v68 & 0x5F;
        LOBYTE(v68) = 125;
        LODWORD(v70) = v69 + 2;
      }

      v87[v69 - 1] = v68;
      v71 = a1[14];
      v72 = v70;
      v73 = v70 + 1;
      if ((v71 - 125) <= 1)
      {
        v87[v73 - 1] = v71 & 0x5F;
        LODWORD(v73) = v72 + 2;
        LOBYTE(v71) = 125;
      }

      v87[v72 - 1] = v71;
      v74 = a1[15];
      v75 = v73 + 1;
      if ((v74 - 125) <= 1)
      {
        v87[v75 - 1] = v74 & 0x5F;
        LOBYTE(v74) = 125;
        LODWORD(v75) = v73 + 2;
      }

      v87[v73 - 1] = v74;
      v76 = a1[16];
      v77 = v75 + 1;
      if ((v76 - 125) <= 1)
      {
        v87[v77 - 1] = v76 & 0x5F;
        LODWORD(v77) = v75 + 2;
        LOBYTE(v76) = 125;
      }

      v87[v75 - 1] = v76;
      v78 = ~(v30 ^ BYTE1(v29));
      v79 = a1[17];
      v80 = v77;
      v81 = v77 + 1;
      if ((v79 - 125) <= 1)
      {
        v87[v81 - 1] = v79 & 0x5F;
        LOBYTE(v79) = 125;
        LODWORD(v81) = v80 + 2;
      }

      v82 = ((v30 ^ ~(v29 >> 8)) >> 8);
      v87[v80 - 1] = v79;
      v83 = v81 + 1;
      if ((v78 - 125) <= 1)
      {
        v87[v83 - 1] = v78 & 0x5F;
        LODWORD(v83) = v81 + 2;
        LOBYTE(v78) = 125;
      }

      v87[v81 - 1] = v78;
      v84 = v83 + 1;
      if ((v82 - 125) <= 1)
      {
        v87[v84 - 1] = v82 & 0x5F;
        LOBYTE(v82) = 125;
        LODWORD(v84) = v83 + 2;
      }

      v87[v83 - 1] = v82;
      memcpy(a1, &v86, v84);
      result = (v84 + 1);
      a1[v84] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v85 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_REV_A_MOD_TRA(char *a1, int a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30)
{
  v50 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x3D)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 126;
    a1[6] = 42;
    a1[10] = a3;
    a1[11] = a4;
    a1[12] = a5;
    a1[13] = a6;
    a1[14] = a7;
    a1[15] = a8;
    a1[16] = a9;
    a1[17] = a10;
    a1[18] = a11;
    a1[19] = a12;
    a1[20] = a13;
    a1[21] = a14;
    *(a1 + 22) = a15;
    *(a1 + 26) = a16;
    *(a1 + 30) = a17;
    *(a1 + 34) = a18;
    *(a1 + 38) = a19;
    a1[42] = a20;
    a1[43] = a21;
    a1[44] = a22;
    a1[45] = a23;
    a1[46] = a24;
    a1[47] = a25;
    a1[48] = a26;
    a1[49] = a27;
    a1[50] = a28;
    a1[51] = a29;
    v38 = 424;
    a1[52] = a30;
    LOWORD(v39) = -1;
    v40 = a1;
    do
    {
      v41 = *v40++;
      v39 = crc_16_l_table[(v41 ^ v39)] ^ ((v39 & 0xFF00) >> 8);
      v38 -= 8;
    }

    while (v38);
    *(a1 + 53) = ~v39;
    if (a2 >= 110)
    {
      bzero(__src, 0x800uLL);
      v42 = 0;
      v43 = 0;
      do
      {
        while (1)
        {
          v44 = a1[v42];
          v45 = v43;
          v46 = v43 + 1;
          if ((v44 - 125) > 1)
          {
            break;
          }

          v43 += 2;
          __src[v46] = v44 & 0x5F;
          __src[v45] = 125;
          if (++v42 == 55)
          {
            goto LABEL_11;
          }
        }

        ++v43;
        __src[v45] = v44;
        ++v42;
      }

      while (v42 != 55);
LABEL_11:
      memcpy(a1, __src, v43);
      result = (v43 + 1);
      a1[v43] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v47 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_MOD_REVERSE_TRA(char *a1, int a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, char a25)
{
  v45 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x3B)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 117;
    a1[6] = 47;
    a1[10] = a3;
    a1[11] = a4;
    a1[12] = a5;
    a1[13] = a6;
    a1[14] = a7;
    a1[15] = a8;
    a1[16] = a9;
    a1[17] = a10;
    a1[18] = a11;
    a1[19] = a12;
    a1[20] = a13;
    a1[21] = a14;
    a1[22] = a15;
    a1[23] = a16;
    a1[24] = a17;
    a1[25] = a18;
    *(a1 + 26) = a19;
    *(a1 + 30) = a20;
    *(a1 + 34) = a21;
    *(a1 + 38) = a22;
    *(a1 + 42) = a23;
    a1[46] = a24;
    v33 = 384;
    a1[47] = a25;
    LOWORD(v34) = -1;
    v35 = a1;
    do
    {
      v36 = *v35++;
      v34 = crc_16_l_table[(v36 ^ v34)] ^ ((v34 & 0xFF00) >> 8);
      v33 -= 8;
    }

    while (v33);
    *(a1 + 24) = ~v34;
    if (a2 >= 100)
    {
      bzero(__src, 0x800uLL);
      v37 = 0;
      v38 = 0;
      do
      {
        while (1)
        {
          v39 = a1[v37];
          v40 = v38;
          v41 = v38 + 1;
          if ((v39 - 125) > 1)
          {
            break;
          }

          v38 += 2;
          __src[v41] = v39 & 0x5F;
          __src[v40] = 125;
          if (++v37 == 50)
          {
            goto LABEL_11;
          }
        }

        ++v38;
        __src[v40] = v39;
        ++v37;
      }

      while (v37 != 50);
LABEL_11:
      memcpy(a1, __src, v38);
      result = (v38 + 1);
      a1[v38] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v42 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_CMD_RELEASE(unsigned __int8 *a1, int a2)
{
  v27 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x33)
  {
    bzero(a1, a2);
    *a1 = 527179;
    a1[4] = 118;
    a1[6] = 10;
    v5 = a1[5];
    v6 = crc_16_l_table[crc_16_l_table[v5 ^ 0x20] ^ 0xAC];
    v7 = crc_16_l_table[(a1[7] ^ v6 ^ HIBYTE(crc_16_l_table[v5 ^ 0x20]))];
    v8 = crc_16_l_table[(a1[8] ^ v7 ^ HIBYTE(v6))];
    v9 = crc_16_l_table[(a1[9] ^ v8 ^ HIBYTE(v7))];
    *(a1 + 5) = v9 ^ ~HIBYTE(crc_16_l_table[(a1[8] ^ v7 ^ HIBYTE(v6))]);
    if (a2 >= 24)
    {
      bzero(v26, 0x7FAuLL);
      __src = 527179;
      v24 = 118;
      if ((v5 - 125) > 1)
      {
        v10 = 6;
      }

      else
      {
        v26[0] = v5 & 0x5F;
        v10 = 7;
        LOBYTE(v5) = 125;
      }

      v25 = v5;
      *(&__src + v10) = 10;
      v11 = a1[7];
      v12 = v10 + 2;
      if ((v11 - 125) <= 1)
      {
        *(&__src + v12) = v11 & 0x5F;
        LOBYTE(v11) = 125;
        LODWORD(v12) = v10 + 3;
      }

      *(&__src + v10 + 1) = v11;
      v13 = a1[8];
      v14 = v12 + 1;
      if ((v13 - 125) <= 1)
      {
        *(&__src + v14) = v13 & 0x5F;
        LODWORD(v14) = v12 + 2;
        LOBYTE(v13) = 125;
      }

      *(&__src + v12) = v13;
      v15 = ~(v9 ^ BYTE1(v8));
      v16 = a1[9];
      v17 = v14;
      v18 = v14 + 1;
      if ((v16 - 125) <= 1)
      {
        *(&__src + v18) = v16 & 0x5F;
        LOBYTE(v16) = 125;
        LODWORD(v18) = v17 + 2;
      }

      v19 = ((v9 ^ ~(v8 >> 8)) >> 8);
      *(&__src + v17) = v16;
      v20 = v18 + 1;
      if ((v15 - 125) <= 1)
      {
        *(&__src + v20) = v15 & 0x5F;
        LODWORD(v20) = v18 + 2;
        LOBYTE(v15) = 125;
      }

      *(&__src + v18) = v15;
      v21 = v20 + 1;
      if ((v19 - 125) <= 1)
      {
        *(&__src + v21) = v19 & 0x5F;
        LOBYTE(v19) = 125;
        LODWORD(v21) = v20 + 2;
      }

      *(&__src + v20) = v19;
      memcpy(a1, &__src, v21);
      result = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetPA_DCDC_Levels(unsigned __int8 *a1, int a2, __int16 a3, __int16 a4)
{
  v43 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x11)
  {
    bzero(a1, a2);
    *a1 = 2891;
    v9 = gModeId;
    a1[2] = gModeId;
    v10 = HIBYTE(gModeId);
    a1[3] = HIBYTE(gModeId);
    *(a1 + 2) = 183;
    *(a1 + 3) = a3;
    v11 = HIBYTE(a3);
    *(a1 + 4) = a4;
    v12 = HIBYTE(a4);
    v13 = crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC];
    v14 = crc_16_l_table[crc_16_l_table[v13 ^ HIBYTE(crc_16_l_table[v9 ^ 0xA5]) ^ 0xB7] ^ HIBYTE(crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC])];
    v15 = crc_16_l_table[(v14 ^ HIBYTE(crc_16_l_table[v13 ^ HIBYTE(crc_16_l_table[v9 ^ 0xA5]) ^ 0xB7]) ^ a3)];
    v16 = crc_16_l_table[(HIBYTE(a3) ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a4 ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[HIBYTE(a4) ^ crc_16_l_table[(a4 ^ v16 ^ HIBYTE(v15))] ^ (v16 >> 8)];
    *(a1 + 5) = v18 ^ ~HIBYTE(crc_16_l_table[(a4 ^ v16 ^ HIBYTE(v15))]);
    if (a2 >= 24)
    {
      v19 = v18 ^ ~(v17 >> 8);
      bzero(v42, 0x7FFuLL);
      v20 = *a1;
      if ((v20 - 125) > 1)
      {
        v21 = 1;
      }

      else
      {
        v42[0] = v20 & 0x5F;
        v21 = 2;
        LOBYTE(v20) = 125;
      }

      v41 = v20;
      v22 = a1[1];
      v23 = v21 + 1;
      if ((v22 - 125) <= 1)
      {
        v42[v23 - 1] = v22 & 0x5F;
        LOBYTE(v22) = 125;
        LODWORD(v23) = v21 + 2;
      }

      v42[v21 - 1] = v22;
      v24 = v23;
      v25 = v23 + 1;
      if ((v9 - 125) <= 1)
      {
        v42[v25 - 1] = v9 & 0x5F;
        LOBYTE(v9) = 125;
        LODWORD(v25) = v24 + 2;
      }

      v26 = a3;
      v42[v24 - 1] = v9;
      v27 = v25 + 1;
      if ((v10 - 125) <= 1)
      {
        v42[v27 - 1] = v10 & 0x5F;
        LODWORD(v27) = v25 + 2;
        LOBYTE(v10) = 125;
      }

      v42[v25 - 1] = v10;
      *&v42[v27 - 1] = 183;
      v28 = v27 + 2;
      v29 = v27 + 3;
      if (a3 - 125 <= 1)
      {
        v42[v29 - 1] = a3 & 0x5F;
        v26 = 125;
        LODWORD(v29) = v27 + 4;
      }

      v30 = a4;
      v42[v28 - 1] = v26;
      v31 = v29 + 1;
      if (HIBYTE(a3) - 125 <= 1)
      {
        v42[v31 - 1] = HIBYTE(a3) & 0x5F;
        v11 = 125;
        LODWORD(v31) = v29 + 2;
      }

      v42[v29 - 1] = v11;
      v32 = v31;
      v33 = v31 + 1;
      if (a4 - 125 <= 1)
      {
        v42[v33 - 1] = a4 & 0x5F;
        LODWORD(v33) = v32 + 2;
        v30 = 125;
      }

      v34 = ~(v18 ^ BYTE1(v17));
      v42[v32 - 1] = v30;
      v35 = v33 + 1;
      if (HIBYTE(a4) - 125 <= 1)
      {
        v42[v35 - 1] = HIBYTE(a4) & 0x5F;
        v12 = 125;
        LODWORD(v35) = v33 + 2;
      }

      v36 = (v18 ^ ~(v17 >> 8)) >> 8;
      v42[v33 - 1] = v12;
      v37 = v35;
      v38 = v35 + 1;
      if ((v34 - 125) <= 1)
      {
        v42[v38 - 1] = v34 & 0x5F;
        LODWORD(v38) = v37 + 2;
        LOBYTE(v34) = 125;
      }

      v42[v37 - 1] = v34;
      v39 = v38 + 1;
      if (BYTE1(v19) - 125 <= 1)
      {
        v42[v39 - 1] = BYTE1(v19) & 0x5F;
        v36 = 125;
        LODWORD(v39) = v38 + 2;
      }

      v42[v38 - 1] = v36;
      memcpy(a1, &v41, v39);
      result = (v39 + 1);
      a1[v39] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v40 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_TX_RX_FREQ_CAL_SWEEP(char *a1, int a2, char *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x5D2)
  {
    goto LABEL_41;
  }

  bzero(a1, a2);
  *a1 = 0xA8008200140B4BLL;
  *(a1 + 4) = 12;
  a1[10] = *a3;
  a1[11] = a3[1];
  a1[12] = a3[2];
  a1[13] = a3[3];
  a1[14] = a3[4];
  a1[15] = a3[5];
  if (a3[2])
  {
    v7 = 0;
    v8 = a1 + 17;
    v9 = 16;
    do
    {
      v10 = &a3[2 * v7 + 6];
      *(v8 - 1) = *v10;
      *v8 = *(v10 + 1);
      v8 += 2;
      ++v7;
      v9 += 2;
    }

    while (v7 < a3[2]);
    if (!a3[3])
    {
      goto LABEL_26;
    }

LABEL_9:
    v11 = 0;
    v12 = &a1[v9];
    do
    {
      v13 = &a3[2 * v11 + 38];
      *v12 = *v13;
      v12[1] = *(v13 + 1);
      ++v11;
      v9 += 2;
      v12 += 2;
    }

    while (v11 < a3[3]);
    if (a3[3])
    {
      v14 = 0;
      do
      {
        v15 = &a3[2 * v14 + 78];
        *v12 = *v15;
        v12[1] = *(v15 + 1);
        ++v14;
        v12 += 2;
        v9 += 2;
      }

      while (v14 < a3[3]);
      if (a3[3])
      {
        v16 = 0;
        do
        {
          *v12++ = a3[v16++ + 118];
          ++v9;
        }

        while (v16 < a3[3]);
        if (a3[3])
        {
          v17 = 0;
          do
          {
            *v12++ = a3[v17++ + 138];
            ++v9;
          }

          while (v17 < a3[3]);
          if (a3[3])
          {
            v18 = 0;
            do
            {
              *v12++ = a3[v18++ + 158];
              ++v9;
            }

            while (v18 < a3[3]);
            if (a3[3])
            {
              v19 = 0;
              do
              {
                *v12++ = a3[v19++ + 178];
                ++v9;
              }

              while (v19 < a3[3]);
            }
          }
        }
      }
    }

    goto LABEL_26;
  }

  v9 = 16;
  if (a3[3])
  {
    goto LABEL_9;
  }

LABEL_26:
  v20 = 8 * v9;
  if (((8 * v9) & 0xFFF8) != 0)
  {
    LOWORD(v21) = -1;
    v22 = a1;
    do
    {
      v23 = *v22++;
      v21 = crc_16_l_table[(v23 ^ v21)] ^ ((v21 & 0xFF00) >> 8);
      v20 -= 8;
    }

    while (v20);
    *&a1[v9] = ~v21;
    result = 0xFFFFFFFFLL;
    if (v9 > 1022)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v24 = &a1[v9];
    *v24 = 0;
    v24[1] = 0;
    result = 0xFFFFFFFFLL;
    if (v9 > 1022)
    {
      goto LABEL_41;
    }
  }

  v25 = (v9 + 2);
  if (2 * v25 <= a2)
  {
    bzero(__src, 0x800uLL);
    if (v9 < -1)
    {
      v26 = 0;
    }

    else
    {
      v26 = 0;
      v27 = a1;
      do
      {
        while (1)
        {
          v29 = *v27++;
          v28 = v29;
          v30 = v26;
          v31 = v26 + 1;
          if ((v29 - 125) > 1)
          {
            break;
          }

          v26 += 2;
          __src[v31] = v28 & 0x5F;
          __src[v30] = 125;
          if (!--v25)
          {
            goto LABEL_40;
          }
        }

        ++v26;
        __src[v30] = v28;
        --v25;
      }

      while (v25);
    }

LABEL_40:
    memcpy(a1, __src, v26);
    result = (v26 + 1);
    a1[v26] = 126;
  }

LABEL_41:
  v32 = *MEMORY[0x29EDCA608];
  return result;
}