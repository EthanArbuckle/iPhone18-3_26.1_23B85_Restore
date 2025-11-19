float sub_29AB5D91C(float *a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8)
{
  v8 = *a1 + *a8;
  v9 = *a1 - *a8;
  v10 = *a2 + *a7;
  v11 = *a2 - *a7;
  v12 = *a3 + *a6;
  v13 = *a3 - *a6;
  v14 = *a4 + *a5;
  v15 = v14 + v8;
  v16 = v8 - v14;
  v17 = v12 + v10;
  v18 = v10 - v12;
  v19 = v17 + v15;
  v20 = v15 - v17;
  v21 = (v18 + v16) * 0.70711;
  v22 = (*a4 - *a5) + v13;
  v23 = v13 + v11;
  v24 = v11 + v9;
  v25 = (v22 - v24) * 0.38268;
  v26 = (v22 * 0.5412) + v25;
  v27 = (v24 * 1.3066) + v25;
  v28 = v23 * 0.70711;
  v29 = v9 + v28;
  v30 = v9 - v28;
  *a6 = v30 + v26;
  *a4 = v30 - v26;
  *a2 = v29 + v27;
  *a8 = v29 - v27;
  *a1 = v19;
  *a3 = v16 + v21;
  result = v16 - v21;
  *a5 = v20;
  *a7 = v16 - v21;
  return result;
}

uint64_t sub_29AB5DA08(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, char *__dst)
{
  v8 = a2;
  v9 = &unk_29B6C4EB8;
  if (!a5)
  {
    v9 = &unk_29B6C4ECC;
  }

  v10 = v9[a7];
  if (dword_2A17482F4)
  {
    v11 = ~a5 + a4;
  }

  else
  {
    v11 = a5;
  }

  v12 = v11 * a2;
  v13 = (result + v12);
  if (dword_2A17482F4)
  {
    v8 = -v8;
  }

  if (!v10)
  {
    return memcpy(__dst, v13, a6 * a3);
  }

  if (a6 >= 1)
  {
    v14 = a6;
    v15 = (result + v12);
    v16 = __dst;
    while (v10 <= 3)
    {
      switch(v10)
      {
        case 1:
          goto LABEL_19;
        case 2:
          goto LABEL_20;
        case 3:
          v17 = *v15 - (v15[-v8] >> 1);
          goto LABEL_21;
      }

LABEL_22:
      ++v16;
      ++v15;
      if (!--v14)
      {
        goto LABEL_23;
      }
    }

    if (v10 == 4)
    {
LABEL_20:
      LOBYTE(v17) = *v15 - v15[-v8];
    }

    else
    {
      if (v10 != 5 && v10 != 6)
      {
        goto LABEL_22;
      }

LABEL_19:
      LOBYTE(v17) = *v15;
    }

LABEL_21:
    *v16 = v17;
    goto LABEL_22;
  }

LABEL_23:
  v18 = v12;
  if (v10 > 3)
  {
    switch(v10)
    {
      case 4:
        if (a6 * a3 > a6)
        {
          v27 = 0;
          v28 = result + v12 - v8;
          v29 = v18 + a6;
          v30 = result + v29 - v8;
          v31 = result + v29;
          v32 = a6 * a3 - a6;
          do
          {
            v33 = v13[v27];
            v34 = *(v30 + v27);
            v35 = *(v28 + v27);
            v36 = v34 - v35;
            if (v34 - v35 < 0)
            {
              v36 = v35 - v34;
            }

            v37 = v33 - v35;
            if (v33 - v35 < 0)
            {
              v37 = v35 - v33;
            }

            LODWORD(result) = v34 + v33 - v35 - v35;
            if (result >= 0)
            {
              result = result;
            }

            else
            {
              result = (v35 - (v34 + v33 - v35));
            }

            if (v37 > result)
            {
              LOBYTE(v34) = *(v28 + v27);
            }

            if (v36 > result || v36 > v37)
            {
              LOBYTE(v33) = v34;
            }

            __dst[a6 + v27] = *(v31 + v27) - v33;
            ++v27;
          }

          while (v32 != v27);
        }

        break;
      case 5:
        LODWORD(v45) = a6 * a3;
        if (a6 * a3 > a6)
        {
          v45 = v45;
          do
          {
            v46 = v13[a6];
            v47 = *v13++;
            __dst[a6] = v46 - (v47 >> 1);
            ++__dst;
            --v45;
          }

          while (a6 != v45);
        }

        break;
      case 6:
        LODWORD(v21) = a6 * a3;
        if (a6 * a3 > a6)
        {
          v21 = v21;
          do
          {
            v22 = v13[a6];
            v23 = *v13++;
            __dst[a6] = v22 - v23;
            ++__dst;
            --v21;
          }

          while (a6 != v21);
        }

        break;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        LODWORD(v24) = a6 * a3;
        if (a6 * a3 > a6)
        {
          v24 = v24;
          do
          {
            v25 = v13[a6];
            v26 = *v13++;
            __dst[a6] = v25 - v26;
            ++__dst;
            --v24;
          }

          while (a6 != v24);
        }

        break;
      case 2:
        if (a6 * a3 > a6)
        {
          v39 = -v8;
          v40 = (result + v12 + a6);
          v41 = &__dst[a6];
          v42 = a6 * a3 - a6;
          do
          {
            v43 = v40[v39];
            v44 = *v40++;
            *v41++ = v44 - v43;
            --v42;
          }

          while (v42);
        }

        break;
      case 3:
        LODWORD(v19) = a6 * a3;
        if (a6 * a3 > a6)
        {
          v19 = v19;
          v20 = a6 - v8;
          do
          {
            __dst[a6] = v13[a6] - ((v13[v20] + *v13) >> 1);
            ++v13;
            ++__dst;
            --v19;
          }

          while (a6 != v19);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_29AB5DCEC(uint64_t result, int a2)
{
  v2 = *result;
  if (a2 < -3)
  {
    v7 = 0;
  }

  else
  {
    v3 = &v2[-a2 - 4];
    v4 = (a2 + 4);
    v5 = -1;
    do
    {
      v6 = *v3++;
      v5 = dword_29B6C4F98[v5 ^ v6] ^ (v5 >> 8);
      --v4;
    }

    while (v4);
    v7 = ~v5;
  }

  *v2 = HIBYTE(v7);
  *(*result + 1) = BYTE2(v7);
  *(*result + 2) = BYTE1(v7);
  *(*result + 3) = v7;
  *result += 4;
  return result;
}

_DWORD *sub_29AB5DD70(uint64_t *a1, int a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = (2 * *(v3 - 8)) | 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    v5 = (v3 - 8);
  }

  else
  {
    v5 = 0;
  }

  result = realloc(v5, v4 * a2 + 8);
  if (result)
  {
    if (!*a1)
    {
      result[1] = 0;
    }

    *result = v4;
    result += 2;
    *a1 = result;
  }

  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_29AB5DDE0(uint64_t a1, int *a2, int *a3)
{
  if (*a3 >= 8)
  {
    do
    {
      if (!a1 || (v5 = *(a1 - 4), v6 = v5 + 1, v5 + 1 >= *(a1 - 8)))
      {
        sub_29AB5DD70(&v9, 1);
        a1 = v9;
        v5 = *(v9 - 4);
        v6 = v5 + 1;
      }

      v7 = *a2;
      *(a1 - 4) = v6;
      *(a1 + v5) = v7;
      *a2 = *a2 >> 8;
      v8 = *a3;
      *a3 -= 8;
    }

    while (v8 > 15);
  }
}

uint64_t sub_29AB5DE78(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, _BYTE *a11, ...)
{
  va_start(va, a11);
  if ((a5 | a4) < 0)
  {
    return 0;
  }

  sub_29AB5DFC0(a1, a11, va);
  v26 = 0;
  if (a5 >= 1)
  {
    if (dword_2A17482F4)
    {
      v15 = 1;
    }

    else
    {
      v15 = -1;
    }

    if (dword_2A17482F4)
    {
      v16 = 0;
    }

    else
    {
      v16 = (a5 - 1);
    }

    if (dword_2A17482F4)
    {
      v17 = a5;
    }

    else
    {
      v17 = -1;
    }

    v24 = v17;
    v18 = a6 * a4;
    v19 = (a8 + v18 * v16);
    v20 = v18 * v15;
    do
    {
      if (a4 >= 1)
      {
        v21 = v19;
        v22 = a4;
        do
        {
          sub_29AB5E094(a1, a6, a9, 1, v21);
          v21 += a6;
          --v22;
        }

        while (v22);
      }

      if (*(a1 + 80))
      {
        (*a1)(*(a1 + 8), a1 + 16);
        *(a1 + 80) = 0;
      }

      (*a1)(*(a1 + 8), &v26, a10);
      v16 += v15;
      v19 += v20;
    }

    while (v24 != v16);
  }

  return 1;
}

uint64_t sub_29AB5DFC0(uint64_t result, _BYTE *a2, _DWORD *a3)
{
  v13 = a3;
  v3 = *a2;
  if (*a2)
  {
    v4 = result;
    v5 = a2 + 1;
    do
    {
      if (v3 > 49)
      {
        if (v3 == 50)
        {
          v8 = v13;
          v13 += 2;
          v11 = *v8;
          result = (*v4)(*(v4 + 8), &v11, 2);
        }

        else
        {
          if (v3 != 52)
          {
            return result;
          }

          v7 = v13;
          v13 += 2;
          v10 = *v7;
          result = (*v4)(*(v4 + 8), &v10, 4);
        }
      }

      else if (v3 != 32)
      {
        if (v3 != 49)
        {
          return result;
        }

        v6 = v13;
        v13 += 2;
        v12 = *v6;
        result = (*v4)(*(v4 + 8), &v12, 1);
      }

      v9 = *v5++;
      v3 = v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_29AB5E094(uint64_t result, int a2, int a3, int a4, char *a5)
{
  v8 = result;
  if ((a2 - 1) >= 2)
  {
    if (a2 == 3)
    {
      goto LABEL_5;
    }

    if (a2 != 4)
    {
      goto LABEL_10;
    }

    if (a3)
    {
LABEL_5:
      v9 = a5[2];
      v10 = a5[1];
      v11 = *a5;
    }

    else
    {
      v16 = 0;
      v17 = a5[3];
      do
      {
        v18[v16] = byte_29B6C5398[v16] - (a5[v16] - byte_29B6C5398[v16]) * v17;
        ++v16;
      }

      while (v16 != 3);
      v9 = v18[2];
      v10 = v18[1];
      v11 = v18[0];
    }

    goto LABEL_9;
  }

  v12 = *a5;
  if (a4)
  {
    v9 = *a5;
    v10 = *a5;
    v11 = *a5;
LABEL_9:
    result = sub_29AB5E200(result, v9, v10, v11);
    goto LABEL_10;
  }

  v15 = *(result + 80);
  if ((v15 + 1) >= 0x41)
  {
    result = (*result)(*(result + 8), result + 16);
    LODWORD(v15) = 0;
  }

  *(v8 + 80) = v15 + 1;
  *(v8 + v15 + 16) = v12;
LABEL_10:
  if (a3 >= 1)
  {
    v13 = a5[a2 - 1];
    v14 = *(v8 + 80);
    if ((v14 + 1) >= 0x41)
    {
      result = (*v8)(*(v8 + 8), v8 + 16);
      LODWORD(v14) = 0;
    }

    *(v8 + 80) = v14 + 1;
    *(v8 + v14 + 16) = v13;
  }

  return result;
}

uint64_t sub_29AB5E200(uint64_t result, char a2, char a3, char a4)
{
  v7 = result;
  v8 = *(result + 80);
  if ((v8 + 3) >= 0x41)
  {
    result = (*result)(*(result + 8), result + 16);
    LODWORD(v8) = 0;
  }

  *(v7 + 80) = v8 + 3;
  v9 = (v7 + v8);
  v9[16] = a2;
  v9[17] = a3;
  v9[18] = a4;
  return result;
}

void sub_29AB5E2A0(_BYTE *a1, float *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3 <= a2[2])
  {
    v3 = a2[2];
  }

  if (v4 <= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = *a2;
  }

  if (v5 >= 1.0e-32)
  {
    v9 = (frexpf(v5, &v11) * 256.0) / v5;
    v10 = v11;
    *a1 = (v4 * v9);
    a1[1] = (v9 * a2[1]);
    v7 = (v9 * a2[2]);
    v6 = v10 ^ 0x80;
  }

  else
  {
    v6 = 0;
    LOBYTE(v7) = 0;
    *a1 = 0;
  }

  a1[3] = v6;
  a1[2] = v7;
}

void sub_29AB5E360()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20723C0, 0, "HIO_DEBUG_GLSLFX", 0);
  v0 = sub_29AB5E428();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0, "HIO_DEBUG_GLSLFX", "Hio GLSLFX info");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20723C0, 1, "HIO_DEBUG_TEXTURE_IMAGE_PLUGINS", 0);
  v1 = sub_29AB5E428();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v1 + 4, "HIO_DEBUG_TEXTURE_IMAGE_PLUGINS", "Hio image texture plugin registration and loading");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20723C0, 2, "HIO_DEBUG_FIELD_TEXTURE_DATA_PLUGINS", 0);
  v2 = sub_29AB5E428() + 8;

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v2, "HIO_DEBUG_FIELD_TEXTURE_DATA_PLUGINS", "Hio field texture data plugin registration and loading");
}

uint64_t sub_29AB5E428()
{
  if ((atomic_load_explicit(&qword_2A14F9430, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F9430))
  {
    v1 = operator new(0xCuLL);
    v1[2] = 0;
    *v1 = 0;
    qword_2A14F9428 = v1;
    __cxa_guard_release(&qword_2A14F9430);
  }

  return qword_2A14F9428;
}

void sub_29AB5E4A8()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20723D0, 0, "HIO_DEBUG_DICTIONARY", 0);
  v0 = sub_29AB5E99C();

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0, "HIO_DEBUG_DICTIONARY", "glslfx dictionary parsing");
}

void pxrInternal__aapl__pxrReserved__::Hio_GetDictionaryFromInput(std::string *a1@<X0>, std::string *a2@<X2>, void *a3@<X8>)
{
  v42 = *MEMORY[0x29EDCA608];
  memset(&v34, 0, sizeof(v34));
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    sub_29A008E78(__p, "\n");
    pxrInternal__aapl__pxrReserved__::TfStringSplit(a1, __p, &v39);
    if (SBYTE7(v38) < 0)
    {
      operator delete(__p[0]);
    }

    v7 = v39;
    v8 = v40;
    while (v7 != v8)
    {
      v9 = std::string::find(v7, 35, 0);
      v10 = SHIBYTE(v7->__r_.__value_.__r.__words[2]);
      if (v10 < 0)
      {
        v11 = v7->__r_.__value_.__r.__words[0];
        v12 = v7->__r_.__value_.__l.__size_;
        if (v12)
        {
LABEL_11:
          v13 = 0;
          do
          {
            v14 = v11->__r_.__value_.__s.__data_[v13];
            v15 = v14 > 0x23;
            v16 = (1 << v14) & 0x900000200;
            if (v15 || v16 == 0)
            {
              goto LABEL_18;
            }
          }

          while (v12 != ++v13);
        }
      }

      else
      {
        v11 = v7;
        v12 = SHIBYTE(v7->__r_.__value_.__r.__words[2]);
        if (*(&v7->__r_.__value_.__s + 23))
        {
          goto LABEL_11;
        }
      }

      v13 = -1;
LABEL_18:
      if (v9 < v13)
      {
        if ((v10 & 0x80000000) != 0)
        {
          *v7->__r_.__value_.__l.__data_ = 0;
          v7->__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          v7->__r_.__value_.__s.__data_[0] = 0;
          *(&v7->__r_.__value_.__s + 23) = 0;
        }
      }

      ++v7;
    }

    *__p = 0u;
    v38 = 0u;
    pxrInternal__aapl__pxrReserved__::TfStringJoin("\n", &v39, &__str);
    pxrInternal__aapl__pxrReserved__::JsParseString(&__str, __p, v18, v35);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (pxrInternal__aapl__pxrReserved__::JsValue::IsNull(v35))
    {
      v21 = &__p[1];
      if (v38 < 0)
      {
        v21 = __p[1];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to extract dictionary from input (line %d, col %d): %s", v19, v20, LODWORD(__p[0]), HIDWORD(__p[0]), v21);
      std::string::operator=(&v34, &__str);
      if (!sub_29AB5EA18(0))
      {
        goto LABEL_47;
      }

      p_str = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      if (pxrInternal__aapl__pxrReserved__::JsValue::IsObject(v35))
      {
        sub_29AB5EA78(v35, &__str);
        if (sub_29A185258(&__str))
        {
          if ((__str.__r_.__value_.__s.__data_[8] & 4) != 0)
          {
            v29 = (*((__str.__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFF8) + 168))(&__str);
          }

          else
          {
            v29 = __str.__r_.__value_.__r.__words[0];
          }

          pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(&v33, v29);
        }

        else
        {
          v33 = 0;
        }

        sub_29A186B14(&__str);
LABEL_52:
        if (v36)
        {
          sub_29A014BEC(v36);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(__p[1]);
        }

        __p[0] = &v39;
        sub_29A012C90(__p);
        goto LABEL_57;
      }

      if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = a1;
      }

      else
      {
        v30 = a1->__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Input string did not evaluate to a JSON dictionary:\n%s\n", v27, v28, v30);
      std::string::operator=(&v34, &__str);
      if (!sub_29AB5EA18(0))
      {
LABEL_47:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v33 = 0;
        goto LABEL_52;
      }

      p_str = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s", v22, v23, p_str);
    goto LABEL_47;
  }

  if (sub_29AB5EA18(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s", v25, v26, "Cannot create VtDictionary from empty string");
  }

  MEMORY[0x29C2C1A60](&v34, "Cannot create VtDictionary from empty string");
  v33 = 0;
LABEL_57:
  v31 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v31 = v34.__r_.__value_.__l.__size_;
  }

  if (v31)
  {
    if (a2)
    {
      std::string::operator=(a2, &v34);
    }

    v32 = 0;
  }

  else
  {
    v32 = v33;
    v33 = 0;
  }

  *a3 = v32;
  sub_29A184A10(&v33, 0);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }
}

void sub_29AB5E8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, char *a22, void *__p, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a21)
  {
    sub_29A014BEC(a21);
  }

  if (a31 < 0)
  {
    operator delete(__p);
  }

  a22 = &a33;
  sub_29A012C90(&a22);
  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AB5E99C()
{
  if ((atomic_load_explicit(&qword_2A14F9440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F9440))
  {
    v1 = operator new(4uLL);
    *v1 = 0;
    qword_2A14F9438 = v1;
    __cxa_guard_release(&qword_2A14F9440);
  }

  return qword_2A14F9438;
}

BOOL sub_29AB5EA18(int a1)
{
  v2 = sub_29AB5E99C();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29AB5E99C();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), "HIO_DEBUG_DICTIONARY");
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

void sub_29AB5EA78(pxrInternal__aapl__pxrReserved__::JsValue *a1@<X0>, uint64_t a2@<X8>)
{
  Type = pxrInternal__aapl__pxrReserved__::JsValue::GetType(a1);
  if (Type > 2)
  {
    if (Type <= 4)
    {
      if (Type == 3)
      {
        Bool = pxrInternal__aapl__pxrReserved__::JsValue::GetBool(a1);
        *(a2 + 8) = &unk_2A20443C3;
        *a2 = Bool;
      }

      else
      {
        Int = pxrInternal__aapl__pxrReserved__::JsValue::GetInt(a1);
        *(a2 + 8) = &unk_2A204475B;
        *a2 = Int;
      }

      return;
    }

    if (Type == 5)
    {
      Real = pxrInternal__aapl__pxrReserved__::JsValue::GetReal(a1);
      *(a2 + 8) = &unk_2A2044D1B;
      *a2 = Real;
      return;
    }

    if (Type == 6)
    {
LABEL_14:
      *(a2 + 8) = 0;
      return;
    }

LABEL_13:
    v11[0] = "js/converter.h";
    v11[1] = "_ToValueType";
    v11[2] = 92;
    v11[3] = "static ValueType pxrInternal__aapl__pxrReserved__::JsValueTypeConverter<pxrInternal__aapl__pxrReserved__::VtValue, pxrInternal__aapl__pxrReserved__::VtDictionary, false>::_ToValueType(const JsValue &) [ValueType = pxrInternal__aapl__pxrReserved__::VtValue, MapType = pxrInternal__aapl__pxrReserved__::VtDictionary, UseInt64 = false]";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "unknown value type");
    goto LABEL_14;
  }

  if (!Type)
  {
    JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(a1);
    sub_29AB5EC68(JsObject, v11);
    *(a2 + 8) = &off_2A2042030;
    sub_29A187864(a2, v11);
    sub_29A184A10(v11, 0);
    return;
  }

  if (Type == 1)
  {
    JsArray = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(a1);
    sub_29AB5ED60(JsArray, v11);
    *(a2 + 8) = &off_2A2046490;
    sub_29A1D1398(a2, v11);
    v13 = v11;
    sub_29A1D0D38(&v13);
    return;
  }

  if (Type != 2)
  {
    goto LABEL_13;
  }

  String = pxrInternal__aapl__pxrReserved__::JsValue::GetString(a1);
  *(a2 + 8) = &off_2A2044DD0;

  sub_29A1B01B8(a2, String);
}

void sub_29AB5EC3C(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  sub_29A1D0D38((v2 - 24));
  _Unwind_Resume(a1);
}

void *sub_29AB5EC68@<X0>(void *result@<X0>, pxrInternal__aapl__pxrReserved__::VtDictionary *a2@<X8>)
{
  v9[2] = *MEMORY[0x29EDCA608];
  *a2 = 0;
  v3 = (result + 1);
  v4 = *result;
  if (*result != result + 1)
  {
    do
    {
      sub_29AB5EA78(v9, v4 + 56);
      v5 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, v4 + 2);
      sub_29A18606C(v5, v9);
      result = sub_29A186B14(v9);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v3);
  }

  return result;
}

uint64_t sub_29AB5ED60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v7[2] = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A4C81F0(a2, (a1[1] - *a1) >> 4);
  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    sub_29AB5EA78(v7, v5);
    sub_29AB5EE3C(a2, v7);
    result = sub_29A186B14(v7);
    v5 += 16;
  }

  return result;
}

void sub_29AB5EE10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1D0D38(va);
  _Unwind_Resume(a1);
}

void *sub_29AB5EE3C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A45B704(a1, a2);
  }

  else
  {
    result = sub_29A186A3C(v3, a2) + 2;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_29AB5EE84()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HIO_FIELD_TEXTURE_DATA_PLUGIN_RESTRICTION))
  {
    sub_29B2C2150();
  }
}

void pxrInternal__aapl__pxrReserved__::HioFieldTextureData::New(pxrInternal__aapl__pxrReserved__ *a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  v4 = atomic_load(&qword_2A17482F8);
  if (!v4)
  {
    a1 = sub_29AB5F2F8();
    v4 = a1;
  }

  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  pxrInternal__aapl__pxrReserved__::ArResolver::GetExtension(Resolver);
  pxrInternal__aapl__pxrReserved__::TfStringToLowerAscii(&v23, &__p);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v26);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v23);
  }

  v6 = sub_29AB5F250(v4, &v26);
  v23 = v6;
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&__p);
  if (__p == v6)
  {
    __p = "hio/fieldTextureData.cpp";
    v19 = "GetFactory";
    v20 = 58;
    v21 = "const HioFieldTextureDataFactoryBase *pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_FieldTextureDataFactoryRegistry::GetFactory(const std::string &) const";
    v22 = 0;
    v12 = v26 & 0xFFFFFFFFFFFFFFF8;
    if ((v26 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = (v12 + 16);
      if (*(v12 + 39) < 0)
      {
        v13 = *v13;
      }
    }

    else
    {
      v13 = "";
    }

    if (*(v2 + 23) >= 0)
    {
      v14 = v2;
    }

    else
    {
      v14 = *v2;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "[PluginLoad] Unknown field data type '%s' for file '%s'\n", v13, v14);
  }

  else
  {
    v7 = sub_29AB5F288(&v23);
    if (v7)
    {
      goto LABEL_29;
    }

    __p = "hio/fieldTextureData.cpp";
    v19 = "GetFactory";
    v20 = 69;
    v21 = "const HioFieldTextureDataFactoryBase *pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_FieldTextureDataFactoryRegistry::GetFactory(const std::string &) const";
    v22 = 0;
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v23);
    if (*(TypeName + 23) >= 0)
    {
      v9 = TypeName;
    }

    else
    {
      v9 = *TypeName;
    }

    v10 = v26 & 0xFFFFFFFFFFFFFFF8;
    if ((v26 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v11 = (v10 + 16);
      if (*(v10 + 39) < 0)
      {
        v11 = *v11;
      }
    }

    else
    {
      v11 = "";
    }

    if (*(v2 + 23) >= 0)
    {
      v15 = v2;
    }

    else
    {
      v15 = *v2;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "[PluginLoad] Cannot get factory for type '%s' for field data type '%s' for file '%s'\n", v9, v11, v15);
  }

  v7 = 0;
LABEL_29:
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v7)
  {
    (*(*v7 + 16))(&v23);
    if (v23)
    {
      v16 = v24;
      *a2 = v23;
      a2[1] = v16;
    }

    else
    {
      __p = "hio/fieldTextureData.cpp";
      v19 = "New";
      v20 = 114;
      v21 = "static HioFieldTextureDataSharedPtr pxrInternal__aapl__pxrReserved__::HioFieldTextureData::New(const std::string &, const std::string &, int, const std::string &, size_t)";
      v22 = 0;
      if (*(v2 + 23) >= 0)
      {
        v17 = v2;
      }

      else
      {
        v17 = *v2;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Cannot get construct field texture data for file '%s'\n", v17);
      *a2 = 0;
      a2[1] = 0;
      if (v24)
      {
        sub_29A014BEC(v24);
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_29AB5F1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, std::__shared_weak_count *a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21)
  {
    sub_29A014BEC(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AB5F250(void *a1, void *a2)
{
  v2 = sub_29A16039C(a1, a2);
  if (v2)
  {
    return v2[3];
  }

  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v4);
  return v4;
}

void *sub_29AB5F288(pxrInternal__aapl__pxrReserved__::TfType *a1)
{
  result = pxrInternal__aapl__pxrReserved__::TfType::_GetFactory(a1);
  if (result)
  {
  }

  return result;
}

unint64_t sub_29AB5F2F8()
{
  v0 = operator new(0x28uLL);
  *v0 = 0u;
  v0[1] = 0u;
  *(v0 + 8) = 1065353216;
  sub_29A008E78(__p, "fieldDataTypes");
  v3 = atomic_load(pxrInternal__aapl__pxrReserved__::HIO_FIELD_TEXTURE_DATA_PLUGIN_RESTRICTION);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<std::string>();
  }

  sub_29AB5F40C(v0, v2, __p, 2, v3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = 0;
  atomic_compare_exchange_strong(&qword_2A17482F8, &v4, v0);
  if (v4)
  {
    v5 = sub_29A155EF4(v0);
    operator delete(v5);
    return atomic_load(&qword_2A17482F8);
  }

  return v0;
}

void sub_29AB5F3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = sub_29A155EF4(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_29AB5F40C(pxrInternal__aapl__pxrReserved__::PlugRegistry *a1, uint64_t *a2, uint64_t a3, int a4, std::string *a5)
{
  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(a1);
  v40[0] = 0;
  v40[1] = 0;
  v39 = v40;
  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetAllDerivedTypes(*a2, &v39);
  sub_29A008E78(__p, ",");
  pxrInternal__aapl__pxrReserved__::TfStringSplit(a5, __p, &v37);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = v39;
  if (v39 != v40)
  {
    do
    {
      v36 = v8[4];
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginForType(v36, &v34);
      v9 = sub_29B290C20(&v34);
      if (v10 & 1 | v9)
      {
        v11 = v37;
        v12 = v38;
        if (v37 == v38)
        {
          goto LABEL_21;
        }

        v13 = 0;
        do
        {
          TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v36);
          v15 = *(TypeName + 23);
          if (v15 >= 0)
          {
            v16 = *(TypeName + 23);
          }

          else
          {
            v16 = TypeName[1];
          }

          v17 = *(v11 + 23);
          v18 = v17;
          if (v17 < 0)
          {
            v17 = v11[1];
          }

          if (v16 == v17)
          {
            if (v15 < 0)
            {
              TypeName = *TypeName;
            }

            if (v18 >= 0)
            {
              v19 = v11;
            }

            else
            {
              v19 = *v11;
            }

            v13 |= memcmp(TypeName, v19, v16) == 0;
          }

          v11 += 3;
        }

        while (v11 != v12);
        if (v13)
        {
LABEL_21:
          sub_29A17F138(&v34);
        }

        if (sub_29AB5FADC(a4))
        {
          v24 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v36);
          if (*(v24 + 23) >= 0)
          {
            v27 = v24;
          }

          else
          {
            v27 = *v24;
          }

          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[PluginDiscover] Skipping restricted plugin: '%s'\n", v25, v26, v27);
        }
      }

      else if (sub_29AB5FADC(a4))
      {
        v20 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v36);
        if (*(v20 + 23) >= 0)
        {
          v23 = v20;
        }

        else
        {
          v23 = *v20;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[PluginDiscover] Plugin could not be loaded for TfType '%s'\n", v21, v22, v23);
      }

      v28 = v35;
      if (v35 && atomic_fetch_add_explicit((v35 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v28 + 8))(v28);
      }

      v29 = v8[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v8[2];
          v31 = *v30 == v8;
          v8 = v30;
        }

        while (!v31);
      }

      v8 = v30;
    }

    while (v30 != v40);
  }

  __p[0] = &v37;
  sub_29A012C90(__p);
  sub_29A082B84(&v39, v40[0]);
}

void sub_29AB5F978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_29A082B84(v30 - 120, *(v30 - 112));
  _Unwind_Resume(a1);
}

BOOL sub_29AB5FADC(int a1)
{
  v2 = sub_29AB5E428();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29AB5E428();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), off_29F296448[a1]);
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

void *sub_29AB5FB40(void *a1, uint64_t *a2, uint64_t **a3, int a4)
{
  result = pxrInternal__aapl__pxrReserved__::TfType::TfType(&v10);
  if (*a3 != v10)
  {
    result = sub_29A160470(a1, a2);
    if (!result || *(result + 8) < a4)
    {
      v9 = *a3;
      v10 = a2;
      result = sub_29AB5FBDC(a1, a2, &unk_29B4D6118, &v10);
      result[3] = v9;
      *(result + 8) = a4;
    }
  }

  return result;
}

void *sub_29AB5FBDC(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29AB5FE24(a1, v6, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29AB5FE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v11 = __p;
  __p = 0;
  if (v11)
  {
    sub_29B28FB14(&__p, v11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AB5FE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x28uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29AB5FEA8(v8 + 2, &v10);
  *(a4 + 16) = 1;
  return result;
}

void *sub_29AB5FEA8(void *a1, uint64_t **a2)
{
  v3 = **a2;
  *a1 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  a1[1] = 0;
  a1[2] = 0;
  pxrInternal__aapl__pxrReserved__::TfType::TfType((a1 + 1));
  return a1;
}

void sub_29AB5FF24(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    if (*(a1 + 16) == 1)
    {
      v4 = v3[2];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    operator delete(v3);
  }
}

void pxrInternal__aapl__pxrReserved__::HioGlslfxTokens_StaticTokenType::~HioGlslfxTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HioGlslfxTokens_StaticTokenType *this)
{
  v16 = (this + 120);
  sub_29A124AB0(&v16);
  v2 = *(this + 14);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 13);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 12);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 11);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 10);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 9);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 8);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 7);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 6);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 5);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 4);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 3);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 2);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 1);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HioGlslfxTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HioGlslfxTokens_StaticTokenType::HioGlslfxTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HioGlslfxTokens_StaticTokenType *this)
{
  v37 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "glslfx", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "fragmentShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "geometryShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "geometryShaderInjection", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "preamble", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "tessControlShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "tessEvalShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "postTessControlShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "postTessVertexShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "vertexShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "vertexShaderInjection", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "surfaceShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "displacementShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "volumeShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "default", 0);
  v3 = (this + 120);
  v4 = *this;
  v22 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v23 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v24 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v25 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v26 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v27 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v28 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v29 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v30 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v31 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v32 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v33 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v34 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v35 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v36 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  sub_29A12EF7C(v3, &v22, &v37, 0xFuLL);
  for (i = 112; i != -8; i -= 8)
  {
    v20 = *(&v22 + i);
    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AB60564(_Unwind_Exception *a1)
{
  v3 = 112;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[14];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[13];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[12];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[11];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[10];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[9];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[8];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[7];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[6];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[5];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[4];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[3];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[2];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[1];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

double pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(pxrInternal__aapl__pxrReserved__::HioGlslfx *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 18) = 0;
  *(this + 17) = this + 144;
  *(this + 21) = 0;
  *(this + 120) = 0u;
  *(this + 19) = 0;
  *(this + 20) = this + 168;
  *(this + 24) = 0;
  *(this + 22) = 0;
  *(this + 23) = this + 192;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 30) = 0;
  *(this + 29) = this + 240;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 272) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  return result;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 18) = 0;
  *(this + 17) = this + 144;
  *(this + 21) = 0;
  *(this + 120) = 0u;
  *(this + 19) = 0;
  *(this + 20) = this + 168;
  *(this + 24) = 0;
  *(this + 22) = 0;
  *(this + 23) = this + 192;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 30) = 0;
  *(this + 29) = this + 240;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 272) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0u;
  v5 = (a1 + 40);
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 136) = a1 + 144;
  v6 = a1 + 136;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  *(a1 + 192) = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 184) = a1 + 192;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  v7 = *a3;
  *(a1 + 264) = *a3;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 264) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 272) = 1;
  *(a1 + 280) = 0uLL;
  *(a1 + 296) = 0uLL;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  __dst[0] = 0;
  __dst[1] = 0;
  v19 = 0;
  sub_29AB60CC8(__dst, a2, &v27, &v25);
  if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    if (HIBYTE(v26))
    {
      v17 = v6;
      *__dst = v25;
      v19 = v26;
      goto LABEL_9;
    }

LABEL_32:
    v14 = HIBYTE(v29);
    if (v29 < 0)
    {
      v14 = v28;
    }

    if (v14)
    {
      __dst[0] = "hio/glslfx.cpp";
      __dst[1] = "HioGlslfx";
      v19 = 187;
      *&v20 = "pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(const string &, const TfToken &)";
      BYTE8(v20) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__dst, 3, &v27);
    }

    else
    {
      __dst[0] = "hio/glslfx.cpp";
      __dst[1] = "HioGlslfx";
      v19 = 189;
      *&v20 = "pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(const string &, const TfToken &)";
      BYTE8(v20) = 0;
      if (*(a2 + 23) >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(__dst, "File doesn't exist: %s\n", v8, v15);
    }

    v13 = 0;
    goto LABEL_41;
  }

  v8 = *(&v25 + 1);
  if (!*(&v25 + 1))
  {
    goto LABEL_32;
  }

  v17 = v6;
  sub_29A008D14(__dst, v25, *(&v25 + 1));
LABEL_9:
  LODWORD(v20) = 0;
  *(&v20 + 1) = 0xBFF0000000000000;
  *v21 = 0u;
  memset(v22, 0, sizeof(v22));
  *__p = 0u;
  memset(v24, 0, sizeof(v24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = *__dst;
  *(a1 + 16) = v19;
  HIBYTE(v19) = 0;
  LOBYTE(__dst[0]) = 0;
  *(a1 + 24) = v20;
  if (*(a1 + 63) < 0)
  {
    operator delete(*v5);
  }

  *v5 = *v21;
  v5[2] = v22[0];
  HIBYTE(v22[0]) = 0;
  LOBYTE(v21[0]) = 0;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *(a1 + 64) = *&v22[1];
  *(a1 + 80) = v22[3];
  HIBYTE(v22[3]) = 0;
  LOBYTE(v22[1]) = 0;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 88) = *__p;
  *(a1 + 104) = *&v24[0];
  BYTE7(v24[0]) = 0;
  LOBYTE(__p[0]) = 0;
  sub_29A095FDC(a1 + 112);
  *(a1 + 112) = *(v24 + 8);
  *(a1 + 128) = *(&v24[1] + 1);
  memset(v24 + 8, 0, 24);
  v30 = v24 + 1;
  sub_29A012C90(&v30);
  if (SBYTE7(v24[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22[3]) < 0)
  {
    operator delete(v22[1]);
  }

  if (SHIBYTE(v22[0]) < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__dst[0]);
  }

  if (sub_29AB5FADC(0))
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Creating GLSLFX data from %s\n", v9, v10, v11, v17);
  }

  v12 = pxrInternal__aapl__pxrReserved__::HioGlslfx::_ProcessFile(a1, a1, a1);
  *(a1 + 272) = v12;
  if (v12)
  {
    v13 = pxrInternal__aapl__pxrReserved__::HioGlslfx::_ComposeConfiguration(a1, a1 + 280);
LABEL_41:
    *(a1 + 272) = v13;
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v27);
  }

  return a1;
}

void sub_29AB60BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v10 - 121) < 0)
  {
    operator delete(*(v10 - 144));
  }

  if (*(v10 - 97) < 0)
  {
    operator delete(*(v10 - 120));
  }

  if (*(v3 + 303) < 0)
  {
    operator delete(*v9);
  }

  v12 = *(v3 + 264);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *v8;
  *v8 = 0;
  if (v13)
  {
    sub_29AB64520(v8, v13);
  }

  sub_29A019EE8(v7, *(v3 + 240));
  sub_29A012C90(va);
  sub_29A01752C(v6, *(v3 + 192));
  sub_29A01752C(v5, *(v3 + 168));
  sub_29A01752C(v4, *(v3 + 144));
  sub_29AB61260(v3);
  _Unwind_Resume(a1);
}

void sub_29AB60CC8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = atomic_load(&qword_2A1748300);
  if (!v8)
  {
    v8 = sub_29AB6406C();
  }

  if ((*(v8 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v8 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  if (*(EmptyString + 23) >= 0)
  {
    v10 = *(EmptyString + 23);
  }

  else
  {
    v10 = EmptyString[1];
  }

  sub_29A022DE0(&v44, v10 + 1);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v44;
  }

  else
  {
    v11 = v44.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if (*(EmptyString + 23) >= 0)
    {
      v12 = EmptyString;
    }

    else
    {
      v12 = *EmptyString;
    }

    memmove(v11, v12, v10);
  }

  *(&v11->__r_.__value_.__l.__data_ + v10) = 47;
  v13 = SHIBYTE(v44.__r_.__value_.__r.__words[2]);
  v14 = v44.__r_.__value_.__r.__words[0];
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v44;
  }

  else
  {
    v15 = v44.__r_.__value_.__r.__words[0];
  }

  v16 = *(a2 + 23);
  if (v16 >= 0)
  {
    v17 = *(a2 + 23);
  }

  else
  {
    v17 = *(a2 + 8);
  }

  v18 = strlen(v15);
  if (v17 >= v18)
  {
    v20 = v18;
    if (v16 >= 0)
    {
      v21 = a2;
    }

    else
    {
      v21 = *a2;
    }

    v18 = strncmp(v21, v15, v20);
    v19 = v18 == 0;
    if (v13 < 0)
    {
LABEL_38:
      operator delete(v14);
      if (!v19)
      {
        goto LABEL_39;
      }

LABEL_31:
      pxrInternal__aapl__pxrReserved__::TfStringTokenize(a2, "/", __p);
      v24 = __p[0];
      v23 = __p[1];
      if (0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3) <= 2)
      {
        if (a3)
        {
          v25 = atomic_load(&qword_2A1748300);
          if (!v25)
          {
            v25 = sub_29AB6406C();
          }

          v26 = *(v25 + 64) & 0xFFFFFFFFFFFFFFF8;
          if (v26)
          {
            v27 = (v26 + 16);
            if (*(v26 + 39) < 0)
            {
              v27 = *v27;
            }
          }

          else
          {
            v27 = "";
          }

          pxrInternal__aapl__pxrReserved__::TfStringPrintf("Expected line of the form %s/<packageName>/path", v22, v23, v27);
          if (*(a3 + 23) < 0)
          {
            operator delete(*a3);
          }

          *a3 = v44;
        }

        sub_29A008E78(a4, "");
LABEL_89:
        v44.__r_.__value_.__r.__words[0] = __p;
        sub_29A012C90(&v44);
        return;
      }

      if (*(__p[0] + 47) < 0)
      {
        sub_29A008D14(__dst, *(__p[0] + 3), *(__p[0] + 4));
        v24 = __p[0];
        v23 = __p[1];
      }

      else
      {
        *__dst = *(__p[0] + 24);
        v41 = *(__p[0] + 5);
      }

      memset(&v44, 0, sizeof(v44));
      sub_29AB63D0C(&v44, (v24 + 72), v23, 0xAAAAAAAAAAAAAAABLL * ((v23 - (v24 + 72)) >> 3));
      pxrInternal__aapl__pxrReserved__::TfStringJoin("/", &v44, &v39);
      v37[0] = &v44;
      sub_29A012C90(v37);
      v31 = atomic_load(&qword_2A1748308);
      if (!v31)
      {
        v31 = sub_29AB63D94();
      }

      memset(&v44, 0, sizeof(v44));
      v34 = sub_29A8877BC(v31, __dst);
      if (v34)
      {
        std::string::operator=(&v44, (v34 + 5));
        pxrInternal__aapl__pxrReserved__::TfStringCatPaths(&v44.__r_.__value_.__l.__data_, &v39, v37);
        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v37[0] = 0;
        v37[1] = 0;
        v38 = 0;
      }

      v35 = HIBYTE(v38);
      if (v38 < 0)
      {
        v35 = v37[1];
      }

      if (a3 && !v35)
      {
        v36 = __dst;
        if (v41 < 0)
        {
          v36 = __dst[0];
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("Can't find resource dir to resolve tools path substitution on %s", v32, v33, v36);
        if (*(a3 + 23) < 0)
        {
          operator delete(*a3);
        }

        *a3 = v44;
      }

      if (pxrInternal__aapl__pxrReserved__::TfPathExists(v37, 0))
      {
        if ((SHIBYTE(v38) & 0x80000000) == 0)
        {
          *a4 = *v37;
          a4[2] = v38;
LABEL_85:
          if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v39.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v41) < 0)
          {
            operator delete(__dst[0]);
          }

          goto LABEL_89;
        }

        sub_29A008D14(a4, v37[0], v37[1]);
      }

      else
      {
        sub_29A008E78(a4, "");
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(v37[0]);
      }

      goto LABEL_85;
    }
  }

  else
  {
    v19 = 0;
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_38;
    }
  }

  if (v19)
  {
    goto LABEL_31;
  }

LABEL_39:
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(v18);
  if (*(a1 + 23) < 0)
  {
    sub_29A008D14(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v43 = *(a1 + 16);
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::CreateIdentifier(Resolver);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
  }

  size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  v30 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v44.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    if ((v30 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_56;
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::Resolve(Resolver);
  if (SHIBYTE(v43) < 0)
  {
    sub_29A008D14(a4, __p[0], __p[1]);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a4 = *__p;
    a4[2] = v43;
  }

  if ((*(&v44.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_56:
    operator delete(v44.__r_.__value_.__l.__data_);
  }
}

void sub_29AB61184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  *(v35 - 104) = &a30;
  sub_29A012C90((v35 - 104));
  _Unwind_Resume(a1);
}

uint64_t sub_29AB61260(uint64_t a1)
{
  v3 = (a1 + 112);
  sub_29A012C90(&v3);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGlslfx::_ProcessFile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_29A00AF58(a1 + 232, a2))
  {
    if (sub_29AB5FADC(0))
    {
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Multiple import of %s\n", v6, v7, v8);
    }

    return 1;
  }

  else
  {
    sub_29A095658((a1 + 232), a2, a2);
    sub_29AB62170(a2, &v15);
    v10 = v15;
    if (v15)
    {
      v9 = pxrInternal__aapl__pxrReserved__::HioGlslfx::_ProcessInput(a1, v15, a3);
      (*(*v10 + 8))(v10);
    }

    else
    {
      v13[0] = "hio/glslfx.cpp";
      v13[1] = "_ProcessFile";
      v13[2] = 265;
      v13[3] = "BOOL pxrInternal__aapl__pxrReserved__::HioGlslfx::_ProcessFile(const string &, _ParseContext &)";
      v14 = 0;
      if (*(a2 + 23) >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 3, "Could not open %s", v11);
      return 0;
    }
  }

  return v9;
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGlslfx::_ComposeConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 208);
  v3 = *(a1 + 216);
  if (v2 == v3)
  {
    return 1;
  }

  v6 = a1 + 192;
  while (1)
  {
    if (v6 == sub_29A01BCCC(a1 + 184, v2))
    {
      sub_29B2C2184(__p, v7, v8);
    }

    if (sub_29AB5FADC(0))
    {
      pxrInternal__aapl__pxrReserved__::TfGetBaseName(v2, __p);
      v11 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("    Parsing config for %s\n", v9, v10, v11);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    memset(__p, 0, 24);
    *&v18 = v2;
    v12 = sub_29A00B038((a1 + 184), v2, &unk_29B4D6118, &v18);
    v13 = pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Read((a1 + 264), (v12 + 7), v2, __p);
    v15 = *(a1 + 256);
    *(a1 + 256) = v13;
    if (v15)
    {
      sub_29AB64520(a1 + 256, v15);
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      break;
    }

    if (*(&__p[0].__r_.__value_.__s + 23))
    {
      goto LABEL_19;
    }

LABEL_17:
    v2 += 24;
    if (v2 == v3)
    {
      return 1;
    }
  }

  if (!__p[0].__r_.__value_.__l.__size_)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

LABEL_19:
  if (*(v2 + 23) < 0)
  {
    v2 = *v2;
  }

  v17 = __p;
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v17 = __p[0].__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Error parsing configuration section of %s: %s.", v15, v14, v2, v17);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v18;
  *(a2 + 16) = v19;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29AB615F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(uint64_t a1, void *a2, uint64_t *a3)
{
  sub_29A008E78(__p, "istream");
  if (SHIBYTE(v13) < 0)
  {
    sub_29A008D14(a1, __p[0], __p[1]);
    v6 = SHIBYTE(v13);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0xBFF0000000000000;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a1 = *__p;
    *(a1 + 16) = v13;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0xBFF0000000000000;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
  }

  *(a1 + 144) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  v7 = *a3;
  *(a1 + 264) = *a3;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 264) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 272) = 1;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  if (sub_29AB5FADC(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Creating GLSLFX data from istream\n", v8, v9);
  }

  v10 = pxrInternal__aapl__pxrReserved__::HioGlslfx::_ProcessInput(a1, a2, a1);
  *(a1 + 272) = v10;
  if (v10)
  {
    *(a1 + 272) = pxrInternal__aapl__pxrReserved__::HioGlslfx::_ComposeConfiguration(a1, a1 + 280);
  }

  return a1;
}

void sub_29AB617EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGlslfx::_ProcessInput(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = (a3 + 40);
  v78 = (a3 + 88);
LABEL_2:
  while (1)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v7 = std::locale::use_facet(&__dst, MEMORY[0x29EDC93D0]);
    v8 = (v7->__vftable[2].~facet_0)(v7, 10);
    std::locale::~locale(&__dst);
    v9 = sub_29A0DE07C(a2, v6, v8);
    if ((*(v9 + *(*v9 - 24) + 32) & 5) != 0)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::TfStringTrimRight(" \n\t\r", v6, &__dst);
    if (*(a3 + 63) < 0)
    {
      operator delete(v6->__r_.__value_.__l.__data_);
    }

    *v6 = __dst;
    ++*(a3 + 24);
    __dst.__r_.__value_.__r.__words[0] = 0;
    __dst.__r_.__value_.__s.__data_[8] = 0;
    sub_29A55E7D4(&__dst, (a1 + 304), v6);
    *(a1 + 304) = bswap64(0x9E3779B97F4A7C55 * __dst.__r_.__value_.__r.__words[0]);
    if (*(a3 + 24) >= 2 && *(a3 + 32) < 0.0)
    {
      __dst.__r_.__value_.__r.__words[0] = "hio/glslfx.cpp";
      __dst.__r_.__value_.__l.__size_ = "_ProcessInput";
      __dst.__r_.__value_.__r.__words[2] = 309;
      v80 = "BOOL pxrInternal__aapl__pxrReserved__::HioGlslfx::_ProcessInput(std::istream *, _ParseContext &)";
      v81 = 0;
      if (*(a3 + 23) >= 0)
      {
        v76 = a3;
      }

      else
      {
        v76 = *a3;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Syntax Error on line 1 of %s. First line in file must be version info.", v76);
      return 0;
    }

    v10 = atomic_load(&qword_2A1748300);
    if (!v10)
    {
      v10 = sub_29AB6406C();
    }

    v11 = *(v10 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v11)
    {
      v12 = (v11 + 16);
      if (*(v11 + 39) < 0)
      {
        v12 = *v12;
      }
    }

    else
    {
      v12 = "";
    }

    v13 = *(a3 + 63);
    if (v13 >= 0)
    {
      v14 = v6;
    }

    else
    {
      v14 = *(a3 + 40);
    }

    if (v13 >= 0)
    {
      v15 = *(a3 + 63);
    }

    else
    {
      v15 = *(a3 + 48);
    }

    v16 = strlen(v12);
    if (v16)
    {
      v17 = v16;
      if (v15 >= v16)
      {
        v21 = (v14 + v15);
        v22 = *v12;
        v23 = v14;
        do
        {
          if (v15 - v17 == -1)
          {
            break;
          }

          v24 = memchr(v23, v22, v15 - v17 + 1);
          if (!v24)
          {
            break;
          }

          v25 = v24;
          if (!memcmp(v24, v12, v17))
          {
            if (v25 != v21 && v25 == v14)
            {
              goto LABEL_2;
            }

            break;
          }

          v23 = (&v25->__r_.__value_.__l.__data_ + 1);
          v15 = v21 - (&v25->__r_.__value_.__l.__data_ + 1);
        }

        while (v15 >= v17);
      }

      v18 = atomic_load(&qword_2A1748300);
      if (!v18)
      {
        v18 = sub_29AB6406C();
      }

      v19 = *v18 & 0xFFFFFFFFFFFFFFF8;
      if (v19)
      {
        v20 = (v19 + 16);
        if (*(v19 + 39) < 0)
        {
          v20 = *v20;
        }
      }

      else
      {
        v20 = "";
      }

      v26 = *(a3 + 63);
      if (v26 >= 0)
      {
        v27 = v6;
      }

      else
      {
        v27 = *(a3 + 40);
      }

      if (v26 >= 0)
      {
        v28 = *(a3 + 63);
      }

      else
      {
        v28 = *(a3 + 48);
      }

      v29 = strlen(v20);
      if (v29)
      {
        v30 = v29;
        if (v28 >= v29)
        {
          v35 = (v27 + v28);
          v36 = *v20;
          v37 = v27;
          do
          {
            if (v28 - v30 == -1)
            {
              break;
            }

            v38 = memchr(v37, v36, v28 - v30 + 1);
            if (!v38)
            {
              break;
            }

            v39 = v38;
            if (!memcmp(v38, v20, v30))
            {
              if (v39 == v35 || v39 != v27)
              {
                break;
              }

              goto LABEL_136;
            }

            v37 = (&v39->__r_.__value_.__l.__data_ + 1);
            v28 = v35 - (&v39->__r_.__value_.__l.__data_ + 1);
          }

          while (v28 >= v30);
        }

        v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
        if (!v31)
        {
          v31 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
        }

        if (pxrInternal__aapl__pxrReserved__::TfToken::operator==(v31, (a3 + 64)))
        {
          v32 = atomic_load(&qword_2A1748300);
          if (!v32)
          {
            v32 = sub_29AB6406C();
          }

          v33 = *(v32 + 48) & 0xFFFFFFFFFFFFFFF8;
          if (v33)
          {
            v34 = (v33 + 16);
            if (*(v33 + 39) < 0)
            {
              v34 = *v34;
            }
          }

          else
          {
            v34 = "";
          }

          v40 = *(a3 + 63);
          if (v40 >= 0)
          {
            v41 = v6;
          }

          else
          {
            v41 = *(a3 + 40);
          }

          if (v40 >= 0)
          {
            v42 = *(a3 + 63);
          }

          else
          {
            v42 = *(a3 + 48);
          }

          v43 = strlen(v34);
          if (v43)
          {
            v44 = v43;
            if (v42 >= v43)
            {
              v60 = (v41 + v42);
              v61 = *v34;
              v62 = v41;
              while (v42 - v44 != -1)
              {
                v63 = memchr(v62, v61, v42 - v44 + 1);
                if (!v63)
                {
                  break;
                }

                v64 = v63;
                v43 = memcmp(v63, v34, v44);
                if (!v43)
                {
                  if (v64 == v60 || v64 != v41)
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_148;
                }

                v62 = (&v64->__r_.__value_.__l.__data_ + 1);
                v42 = v60 - (&v64->__r_.__value_.__l.__data_ + 1);
                if (v42 < v44)
                {
                  goto LABEL_67;
                }
              }
            }

            goto LABEL_67;
          }

LABEL_148:
          if (!pxrInternal__aapl__pxrReserved__::HioGlslfx::_ProcessImport(v43, a3))
          {
            return 0;
          }
        }

        else
        {
LABEL_67:
          v45 = atomic_load(&qword_2A1748300);
          if (!v45)
          {
            v45 = sub_29AB6406C();
          }

          if (pxrInternal__aapl__pxrReserved__::TfToken::operator==((v45 + 32), (a3 + 64)))
          {
            __dst.__r_.__value_.__r.__words[0] = v78;
            v46 = sub_29A00B038((a1 + 136), v78, &unk_29B4D6118, &__dst);
            if (*(a3 + 63) >= 0)
            {
              v47 = *(a3 + 63);
            }

            else
            {
              v47 = *(a3 + 48);
            }

            sub_29A022DE0(&__dst, v47 + 1);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            if (v47)
            {
              if (*(a3 + 63) >= 0)
              {
                v49 = v6;
              }

              else
              {
                v49 = *(a3 + 40);
              }

              memmove(p_dst, v49, v47);
            }

            *(&p_dst->__r_.__value_.__l.__data_ + v47) = 10;
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v50 = &__dst;
            }

            else
            {
              v50 = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __dst.__r_.__value_.__l.__size_;
            }

LABEL_127:
            std::string::append((v46 + 7), v50, size);
            goto LABEL_144;
          }

          v52 = atomic_load(&qword_2A1748300);
          if (!v52)
          {
            v52 = sub_29AB6406C();
          }

          if (pxrInternal__aapl__pxrReserved__::TfToken::operator==((v52 + 40), (a3 + 64)))
          {
            __dst.__r_.__value_.__r.__words[0] = v78;
            v46 = sub_29A00B038((a1 + 160), v78, &unk_29B4D6118, &__dst);
            if (*(a3 + 63) >= 0)
            {
              v53 = *(a3 + 63);
            }

            else
            {
              v53 = *(a3 + 48);
            }

            sub_29A022DE0(&__dst, v53 + 1);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v54 = &__dst;
            }

            else
            {
              v54 = __dst.__r_.__value_.__r.__words[0];
            }

            if (v53)
            {
              if (*(a3 + 63) >= 0)
              {
                v55 = v6;
              }

              else
              {
                v55 = *(a3 + 40);
              }

              memmove(v54, v55, v53);
            }

            *(&v54->__r_.__value_.__l.__data_ + v53) = 10;
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v50 = &__dst;
            }

            else
            {
              v50 = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __dst.__r_.__value_.__l.__size_;
            }

            goto LABEL_127;
          }

          v56 = atomic_load(&qword_2A1748300);
          if (!v56)
          {
            v56 = sub_29AB6406C();
          }

          if (pxrInternal__aapl__pxrReserved__::TfToken::operator==((v56 + 24), (a3 + 64)))
          {
            __dst.__r_.__value_.__r.__words[0] = a3;
            v46 = sub_29A00B038((a1 + 184), a3, &unk_29B4D6118, &__dst);
            if (*(a3 + 63) >= 0)
            {
              v57 = *(a3 + 63);
            }

            else
            {
              v57 = *(a3 + 48);
            }

            sub_29A022DE0(&__dst, v57 + 1);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v58 = &__dst;
            }

            else
            {
              v58 = __dst.__r_.__value_.__r.__words[0];
            }

            if (v57)
            {
              if (*(a3 + 63) >= 0)
              {
                v59 = v6;
              }

              else
              {
                v59 = *(a3 + 40);
              }

              memmove(v58, v59, v57);
            }

            *(&v58->__r_.__value_.__l.__data_ + v57) = 10;
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v50 = &__dst;
            }

            else
            {
              v50 = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __dst.__r_.__value_.__l.__size_;
            }

            goto LABEL_127;
          }
        }
      }

      else
      {
LABEL_136:
        if (!pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseSectionLine(a1, a3))
        {
          return 0;
        }

        if (sub_29AB5FADC(0))
        {
          pxrInternal__aapl__pxrReserved__::TfGetBaseName(a3, &__dst);
          v67 = &__dst;
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v67 = __dst.__r_.__value_.__r.__words[0];
          }

          if (*(a3 + 63) >= 0)
          {
            v68 = v6;
          }

          else
          {
            v68 = *(a3 + 40);
          }

          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  %s : %d : %s\n", v65, v66, v67, *(a3 + 24), v68);
LABEL_144:
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  if (*(a3 + 32) < 0.0)
  {
    return 0;
  }

  v69 = *(a3 + 112);
  v70 = *(a3 + 120);
  if (v69 == v70)
  {
    return 1;
  }

  do
  {
    if (sub_29AB5FADC(0))
    {
      v73 = v69;
      if (*(v69 + 23) < 0)
      {
        v73 = *v69;
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" Importing File : %s\n", v71, v72, v73);
    }

    sub_29AB63FF4(&__dst, v69);
    v74 = pxrInternal__aapl__pxrReserved__::HioGlslfx::_ProcessFile(a1, v69, &__dst);
    v89 = &v88;
    sub_29A012C90(&v89);
    if (v87 < 0)
    {
      operator delete(__p);
    }

    if (v85 < 0)
    {
      operator delete(v84);
    }

    if (v83 < 0)
    {
      operator delete(v82);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v69 = (v69 + 24);
    if (v69 == v70)
    {
      v75 = 0;
    }

    else
    {
      v75 = v74;
    }
  }

  while ((v75 & 1) != 0);
  return v74;
}

void sub_29AB620E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGlslfx::IsValid(uint64_t a1, std::string *this)
{
  if (this && (*(a1 + 272) & 1) == 0)
  {
    std::string::operator=(this, (a1 + 280));
  }

  return *(a1 + 272);
}

void sub_29AB62170(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  IsFile = pxrInternal__aapl__pxrReserved__::TfIsFile(a1, 0);
  if (IsFile)
  {
    v5 = operator new(0x240uLL);
    sub_29A8CC8D8(v5);
    *a2 = v5;
    return;
  }

  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(IsFile);
  if (*(a1 + 23) < 0)
  {
    sub_29A008D14(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset(Resolver);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v13)
  {
    (*(*v13 + 24))(&v10);
    v7 = v10;
    if (v10)
    {
      v8 = (*(*v13 + 16))(v13);
      sub_29A02887C(&__p, v7, v8);
      v9 = operator new(0x110uLL);
      sub_29A5DB8D8(v9, &__p, 8);
      *a2 = v9;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v11)
      {
        sub_29A014BEC(v11);
      }

      goto LABEL_17;
    }

    if (v11)
    {
      sub_29A014BEC(v11);
    }
  }

  *a2 = 0;
LABEL_17:
  if (v14)
  {
    sub_29A014BEC(v14);
  }
}

void sub_29AB622E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  operator delete(v19);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HioGlslfx::ExtractImports(uint64_t a1@<X0>, const void **a2@<X8>)
{
  sub_29AB62170(a1, &v28);
  v3 = v28;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v24 = a2;
  if (v3)
  {
    memset(&__str, 0, sizeof(__str));
    v4 = MEMORY[0x29EDC93D0];
    while (1)
    {
      std::ios_base::getloc((v3 + *(*v3 - 24)));
      v5 = std::locale::use_facet(&v26, v4);
      v6 = (v5->__vftable[2].~facet_0)(v5, 10);
      std::locale::~locale(&v26);
      v7 = sub_29A0DE07C(v3, &__str, v6);
      if ((*(v7 + *(*v7 - 24) + 32) & 5) != 0)
      {
        break;
      }

      v8 = atomic_load(&qword_2A1748300);
      if (!v8)
      {
        v8 = sub_29AB6406C();
      }

      if ((*(v8 + 6) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*(v8 + 6) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
      }

      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      v12 = *(EmptyString + 23);
      if (v12 >= 0)
      {
        v13 = EmptyString;
      }

      else
      {
        v13 = *EmptyString;
      }

      if (v12 >= 0)
      {
        v14 = *(EmptyString + 23);
      }

      else
      {
        v14 = EmptyString[1];
      }

      if (v14)
      {
        if (size >= v14)
        {
          v15 = (p_str + size);
          v16 = *v13;
          v17 = p_str;
          do
          {
            v18 = size - v14;
            if (v18 == -1)
            {
              break;
            }

            v19 = memchr(v17, v16, v18 + 1);
            if (!v19)
            {
              break;
            }

            v20 = v19;
            if (!memcmp(v19, v13, v14))
            {
              if (v20 == v15 || v20 != p_str)
              {
                break;
              }

              goto LABEL_30;
            }

            v17 = (&v20->__r_.__value_.__l.__data_ + 1);
            size = v15 - (&v20->__r_.__value_.__l.__data_ + 1);
          }

          while (size >= v14);
        }
      }

      else
      {
LABEL_30:
        v21 = atomic_load(&qword_2A1748300);
        if (!v21)
        {
          v21 = sub_29AB6406C();
        }

        v22 = *(v21 + 48) & 0xFFFFFFFFFFFFFFF8;
        if (v22)
        {
          v23 = *(v22 + 39);
          if ((v23 & 0x8000000000000000) != 0)
          {
            v23 = *(v22 + 24);
          }
        }

        else
        {
          v23 = 0;
        }

        std::string::basic_string(&v25, &__str, v23, 0xFFFFFFFFFFFFFFFFLL, &v29);
        pxrInternal__aapl__pxrReserved__::TfStringTrim(" \n\t\r", &v25, &v26);
        sub_29A091654(v24, &v26);
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }
      }

      v3 = v28;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v28)
    {
      (*(*v28 + 8))(v28);
    }
  }
}

void sub_29AB62600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  a22 = a9;
  sub_29A012C90(&a22);
  if (a28)
  {
    (*(*a28 + 8))(a28);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseSectionLine(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfStringTokenize((a2 + 40), " \t\n", v44);
  if (v44[1] - v44[0] != 24)
  {
    v5 = (a2 + 64);
    std::string::operator=((a2 + 64), (v44[0] + 24));
    if (*(a2 + 111) < 0)
    {
      **(a2 + 88) = 0;
      *(a2 + 96) = 0;
    }

    else
    {
      *(a2 + 88) = 0;
      *(a2 + 111) = 0;
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    if (!v6)
    {
      v6 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    }

    v7 = *v6 & 0xFFFFFFFFFFFFFFF8;
    if (v7)
    {
      v8 = (v7 + 16);
      if (*(v7 + 39) < 0)
      {
        v8 = *v8;
      }
    }

    else
    {
      v8 = "";
    }

    v9 = strlen(v8);
    v10 = v9;
    v11 = *(a2 + 87);
    if (v11 < 0)
    {
      if (v9 != *(a2 + 72))
      {
        goto LABEL_22;
      }

      if (v9 == -1)
      {
        sub_29A0F26CC();
      }

      v12 = *v5;
    }

    else
    {
      v12 = (a2 + 64);
      if (v10 != v11)
      {
        goto LABEL_22;
      }
    }

    if (!memcmp(v12, v8, v10))
    {
      v37 = pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseVersionLine(a1, v44, a2);
      goto LABEL_72;
    }

LABEL_22:
    v13 = atomic_load(&qword_2A1748300);
    if (!v13)
    {
      v13 = sub_29AB6406C();
    }

    v14 = *(v13 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v14)
    {
      v15 = (v14 + 16);
      if (*(v14 + 39) < 0)
      {
        v15 = *v15;
      }
    }

    else
    {
      v15 = "";
    }

    v16 = strlen(v15);
    v17 = v16;
    v18 = *(a2 + 87);
    if (v18 < 0)
    {
      if (v16 != *(a2 + 72))
      {
        goto LABEL_35;
      }

      if (v16 == -1)
      {
        sub_29A0F26CC();
      }

      v19 = *v5;
    }

    else
    {
      v19 = (a2 + 64);
      if (v17 != v18)
      {
        goto LABEL_35;
      }
    }

    if (!memcmp(v19, v15, v17))
    {
      v37 = pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseConfigurationLine(a1, a2);
      goto LABEL_72;
    }

LABEL_35:
    v20 = atomic_load(&qword_2A1748300);
    if (!v20)
    {
      v20 = sub_29AB6406C();
    }

    v21 = *(v20 + 32) & 0xFFFFFFFFFFFFFFF8;
    if (v21)
    {
      v22 = (v21 + 16);
      if (*(v21 + 39) < 0)
      {
        v22 = *v22;
      }
    }

    else
    {
      v22 = "";
    }

    v23 = strlen(v22);
    v24 = v23;
    v25 = *(a2 + 87);
    if (v25 < 0)
    {
      if (v23 != *(a2 + 72))
      {
LABEL_48:
        v27 = atomic_load(&qword_2A1748300);
        if (!v27)
        {
          v27 = sub_29AB6406C();
        }

        v28 = *(v27 + 40) & 0xFFFFFFFFFFFFFFF8;
        if (v28)
        {
          v29 = (v28 + 16);
          if (*(v28 + 39) < 0)
          {
            v29 = *v29;
          }
        }

        else
        {
          v29 = "";
        }

        v30 = strlen(v29);
        v31 = v30;
        v32 = *(a2 + 87);
        if (v32 < 0)
        {
          if (v30 != *(a2 + 72))
          {
LABEL_61:
            v39 = "hio/glslfx.cpp";
            v40 = "_ParseSectionLine";
            v41 = 433;
            v42 = "BOOL pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseSectionLine(_ParseContext &)";
            v43 = 0;
            if (*(a2 + 23) >= 0)
            {
              v34 = a2;
            }

            else
            {
              v34 = *a2;
            }

            v35 = *(a2 + 64);
            if (v32 >= 0)
            {
              v35 = (a2 + 64);
            }

            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v39, 3, "Syntax Error on line %d of %s. Unknown section tag %s", *(a2 + 24), v34, v35);
            goto LABEL_67;
          }

          if (v30 == -1)
          {
            sub_29A0F26CC();
          }

          v33 = *v5;
        }

        else
        {
          v33 = (a2 + 64);
          if (v31 != v32)
          {
            goto LABEL_61;
          }
        }

        if (memcmp(v33, v29, v31))
        {
          goto LABEL_61;
        }

        v37 = pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseLayoutSectionLine(a1, v44, a2);
LABEL_72:
        v36 = v37;
        goto LABEL_73;
      }

      if (v23 == -1)
      {
        sub_29A0F26CC();
      }

      v26 = *v5;
    }

    else
    {
      v26 = (a2 + 64);
      if (v24 != v25)
      {
        goto LABEL_48;
      }
    }

    if (!memcmp(v26, v22, v24))
    {
      v37 = pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseGLSLSectionLine(a1, v44, a2);
      goto LABEL_72;
    }

    goto LABEL_48;
  }

  v39 = "hio/glslfx.cpp";
  v40 = "_ParseSectionLine";
  v41 = 412;
  v42 = "BOOL pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseSectionLine(_ParseContext &)";
  v43 = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v39, 3, "Syntax Error on line %d of %s. Section delimiter must be followed by a valid token.", *(a2 + 24), v4);
LABEL_67:
  v36 = 0;
LABEL_73:
  v39 = v44;
  sub_29A012C90(&v39);
  return v36;
}

void sub_29AB62A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  a13 = &a18;
  sub_29A012C90(&a13);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HioGlslfx::_ProcessImport(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfStringTokenize((a2 + 40), " \t\n", v22);
  if (v22[1] - v22[0] == 48)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_29AB60CC8(a2, v22[0] + 24, &v14, __p);
    v4 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v4 = __p[1];
    }

    v5 = v4 != 0;
    if (v4)
    {
      sub_29A070BA0(a2 + 112);
    }

    v7 = HIBYTE(v16);
    if (v16 < 0)
    {
      v7 = v15;
    }

    if (v7)
    {
      v17 = "hio/glslfx.cpp";
      v18 = "_ProcessImport";
      v19 = 390;
      v20 = "BOOL pxrInternal__aapl__pxrReserved__::HioGlslfx::_ProcessImport(_ParseContext &)";
      v21 = 0;
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      v9 = &v14;
      if (v16 < 0)
      {
        v9 = v14;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 3, "Syntax Error on line %d of %s. %s", *(a2 + 24), v8, v9);
    }

    else
    {
      v17 = "hio/glslfx.cpp";
      v18 = "_ProcessImport";
      v19 = 394;
      v20 = "BOOL pxrInternal__aapl__pxrReserved__::HioGlslfx::_ProcessImport(_ParseContext &)";
      v21 = 0;
      v10 = (v22[0] + 24);
      if (*(v22[0] + 47) < 0)
      {
        v10 = *v10;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v17, "File doesn't exist: %s\n", v3, v10);
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v14);
    }
  }

  else
  {
    v17 = "hio/glslfx.cpp";
    v18 = "_ProcessImport";
    v19 = 379;
    v20 = "BOOL pxrInternal__aapl__pxrReserved__::HioGlslfx::_ProcessImport(_ParseContext &)";
    v21 = 0;
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 3, "Syntax Error on line %d of %s. #import declaration must be followed by a valid file path.", *(a2 + 24), v6);
    v5 = 0;
  }

  v17 = v22;
  sub_29A012C90(&v17);
  return v5;
}

void sub_29AB62CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  a25 = v25 - 40;
  sub_29A012C90(&a25);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseVersionLine(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 24) != 1)
  {
    v16 = "hio/glslfx.cpp";
    v17 = "_ParseVersionLine";
    v18 = 514;
    v19 = "BOOL pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseVersionLine(const vector<string> &, _ParseContext &)";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Syntax Error on line %d of %s. Version specifier must be on the first line.");
    return 0;
  }

  v5 = *a2;
  if (a2[1] - *a2 != 96)
  {
    goto LABEL_17;
  }

  v7 = atomic_load(&qword_2A1748300);
  if (!v7)
  {
    v7 = sub_29AB6406C();
  }

  v8 = *(v7 + 16) & 0xFFFFFFFFFFFFFFF8;
  if (v8)
  {
    v9 = (v8 + 16);
    if (*(v8 + 39) < 0)
    {
      v9 = *v9;
    }
  }

  else
  {
    v9 = "";
  }

  v10 = (v5 + 48);
  v11 = strlen(v9);
  v12 = *(v5 + 71);
  if (v12 < 0)
  {
    if (v11 == *(v5 + 56))
    {
      if (v11 == -1)
      {
        sub_29A0F26CC();
      }

      v10 = *v10;
      goto LABEL_16;
    }

LABEL_17:
    v16 = "hio/glslfx.cpp";
    v17 = "_ParseVersionLine";
    v18 = 521;
    v19 = "BOOL pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseVersionLine(const vector<string> &, _ParseContext &)";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Syntax Error on line %d of %s. Invalid version specifier.");
    return 0;
  }

  if (v11 != v12)
  {
    goto LABEL_17;
  }

LABEL_16:
  if (memcmp(v10, v9, v11))
  {
    goto LABEL_17;
  }

  v15 = pxrInternal__aapl__pxrReserved__::TfStringToDouble((*a2 + 72), v13);
  *(a3 + 32) = v15;
  if (v15 != *(a1 + 32))
  {
    v16 = "hio/glslfx.cpp";
    v17 = "_ParseVersionLine";
    v18 = 532;
    v19 = "BOOL pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseVersionLine(const vector<string> &, _ParseContext &)";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Version mismatch. %s specifies %2.2f, but %s specifies %2.2f");
    return 0;
  }

  return 1;
}

BOOL pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseConfigurationLine(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A01BCCC(a1 + 184, a2);
  if (a1 + 192 == v4)
  {
    sub_29A426914((a1 + 208), *(a1 + 208), a2);
    v8[0] = a2;
    v6 = sub_29A00B038((a1 + 184), a2, &unk_29B4D6118, v8);
    MEMORY[0x29C2C1A60](v6 + 7, "");
  }

  else
  {
    v8[0] = "hio/glslfx.cpp";
    v8[1] = "_ParseConfigurationLine";
    v8[2] = 546;
    v8[3] = "BOOL pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseConfigurationLine(_ParseContext &)";
    v9 = 0;
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 3, "Syntax Error on line %d of %s. configuration for this file has already been defined", *(a2 + 24), v5);
  }

  return a1 + 192 == v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseGLSLSectionLine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3) <= 2)
  {
    __p = "hio/glslfx.cpp";
    v15 = "_ParseGLSLSectionLine";
    v16 = 445;
    v17 = "BOOL pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseGLSLSectionLine(const vector<string> &, _ParseContext &)";
    v18 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Syntax Error on line %d of %s. glsl tag mustbe followed by a valid identifier.");
    return 0;
  }

  std::string::operator=((a3 + 88), (*a2 + 48));
  if (a1 + 144 != sub_29A01BCCC(a1 + 136, (a3 + 88)))
  {
    __p = "hio/glslfx.cpp";
    v15 = "_ParseGLSLSectionLine";
    v16 = 458;
    v17 = "BOOL pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseGLSLSectionLine(const vector<string> &, _ParseContext &)";
    v18 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Syntax Error on line %d of %s. Source for %s has already been defined");
    return 0;
  }

  __p = (a3 + 88);
  v6 = sub_29A00B038((a1 + 136), (a3 + 88), &unk_29B4D6118, &__p);
  v7 = *(a3 + 24);
  pxrInternal__aapl__pxrReserved__::TfGetBaseName(a3, &v13);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v13;
  }

  else
  {
    v10 = v13.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("// line %d %s\n", v8, v9, v7, v10);
  if (v16 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v16 >= 0)
  {
    v12 = HIBYTE(v16);
  }

  else
  {
    v12 = v15;
  }

  std::string::append((v6 + 7), p_p, v12);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_29AB631EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseLayoutSectionLine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3) <= 2)
  {
    v6 = "hio/glslfx.cpp";
    v7 = "_ParseLayoutSectionLine";
    v8 = 485;
    v9 = "BOOL pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseLayoutSectionLine(const vector<string> &, _ParseContext &)";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v6, 3, "Syntax Error on line %d of %s. layout tag must be followed by a valid identifier.");
    return 0;
  }

  std::string::operator=((a3 + 88), (*a2 + 48));
  if (a1 + 168 != sub_29A01BCCC(a1 + 160, (a3 + 88)))
  {
    v6 = "hio/glslfx.cpp";
    v7 = "_ParseLayoutSectionLine";
    v8 = 500;
    v9 = "BOOL pxrInternal__aapl__pxrReserved__::HioGlslfx::_ParseLayoutSectionLine(const vector<string> &, _ParseContext &)";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v6, 3, "Syntax Error on line %d of %s. Layout for %s has already been defined");
    return 0;
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGlslfx::GetParameters@<X0>(pxrInternal__aapl__pxrReserved__::HioGlslfx *this@<X0>, void *a1@<X8>)
{
  result = *(this + 32);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::GetParameters(a1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGlslfx::GetTextures@<X0>(pxrInternal__aapl__pxrReserved__::HioGlslfx *this@<X0>, void *a1@<X8>)
{
  result = *(this + 32);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::GetTextures(a1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGlslfx::GetAttributes@<X0>(pxrInternal__aapl__pxrReserved__::HioGlslfx *this@<X0>, void *a1@<X8>)
{
  result = *(this + 32);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::GetAttributes(a1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

pxrInternal__aapl__pxrReserved__::HioGlslfxConfig *pxrInternal__aapl__pxrReserved__::HioGlslfx::GetMetadata@<X0>(pxrInternal__aapl__pxrReserved__::HioGlslfx *this@<X0>, pxrInternal__aapl__pxrReserved__::VtDictionary *a2@<X8>)
{
  result = *(this + 32);
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::GetMetadata(result, a2);
  }

  *a2 = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HioGlslfx::_GetLayout(pxrInternal__aapl__pxrReserved__::HioGlslfx *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 32);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::GetSourceKeys(v5, a2, &v17);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v6 = v17;
    for (i = v18; v6 != i; v6 += 3)
    {
      v8 = sub_29A01BCCC(this + 160, v6);
      if ((this + 168) != v8)
      {
        v9 = *(a3 + 23);
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(a3 + 8);
        }

        if (v9)
        {
          std::string::append(a3, ",\n");
        }

        if (*(v8 + 79) >= 0)
        {
          v10 = *(v8 + 79);
        }

        else
        {
          v10 = *(v8 + 64);
        }

        sub_29A022DE0(__p, v10 + 1);
        if ((v16 & 0x80u) == 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        if (v10)
        {
          if (*(v8 + 79) >= 0)
          {
            v12 = (v8 + 56);
          }

          else
          {
            v12 = *(v8 + 56);
          }

          memmove(v11, v12, v10);
        }

        *(v11 + v10) = 10;
        if ((v16 & 0x80u) == 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        if ((v16 & 0x80u) == 0)
        {
          v14 = v16;
        }

        else
        {
          v14 = __p[1];
        }

        std::string::append(a3, v13, v14);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    __p[0] = &v17;
    sub_29A012C90(__p);
  }

  else
  {

    sub_29A008E78(a3, "");
  }
}

void sub_29AB63558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 + 23) < 0)
  {
    operator delete(*v16);
  }

  __p = &a16;
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HioGlslfx::_GetLayoutAsString(std::string *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken **a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = a1;
    do
    {
      v7 = *(a3 + 23);
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(a3 + 8);
      }

      if (v7)
      {
        a1 = std::string::append(a3, ", ");
      }

      if ((*v4 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
      }

      std::operator+<char>();
      v8 = std::string::append(&v24, " : [ ");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v25.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      pxrInternal__aapl__pxrReserved__::HioGlslfx::_GetLayout(v6, v4, v22);
      if ((v23 & 0x80u) == 0)
      {
        v10 = v22;
      }

      else
      {
        v10 = v22[0];
      }

      if ((v23 & 0x80u) == 0)
      {
        v11 = v23;
      }

      else
      {
        v11 = v22[1];
      }

      v12 = std::string::append(&v25, v10, v11);
      v13 = *&v12->__r_.__value_.__l.__data_;
      v27.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v27.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      v14 = std::string::append(&v27, " ]");
      v15 = *&v14->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
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

      a1 = std::string::append(a3, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      v4 = (v4 + 8);
    }

    while (v4 != v5);
  }

  std::operator+<char>();
  v18 = std::string::append(&__p, " }");
  v19 = v18->__r_.__value_.__r.__words[0];
  v27.__r_.__value_.__r.__words[0] = v18->__r_.__value_.__l.__size_;
  *(v27.__r_.__value_.__r.__words + 7) = *(&v18->__r_.__value_.__r.__words[1] + 7);
  v20 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  v21 = v27.__r_.__value_.__r.__words[0];
  *a3 = v19;
  *(a3 + 8) = v21;
  *(a3 + 15) = *(v27.__r_.__value_.__r.__words + 7);
  *(a3 + 23) = v20;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29AB63820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 + 23) < 0)
  {
    operator delete(*v40);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HioGlslfx::GetLayoutAsDictionary(std::string *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken **a2@<X1>, std::string *a3@<X2>, void *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HioGlslfx::_GetLayoutAsString(a1, a2, &v8);
  sub_29A008E78(&__p, "no filename");
  pxrInternal__aapl__pxrReserved__::Hio_GetDictionaryFromInput(&v8, a3, a4);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_29AB63948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void pxrInternal__aapl__pxrReserved__::HioGlslfx::_GetSource(pxrInternal__aapl__pxrReserved__::HioGlslfx *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, std::string *a3@<X8>)
{
  v5 = *(this + 32);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::GetSourceKeys(v5, a2, &v24);
    memset(&v23, 0, sizeof(v23));
    v6 = v24;
    v7 = v25;
    if (v24 == v25)
    {
LABEL_24:
      *a3 = v23;
    }

    else
    {
      while (1)
      {
        v8 = sub_29A01BCCC(this + 136, v6);
        v9 = v8;
        if ((this + 144) == v8)
        {
          break;
        }

        if (*(v8 + 79) >= 0)
        {
          v10 = *(v8 + 79);
        }

        else
        {
          v10 = *(v8 + 64);
        }

        sub_29A022DE0(&__p, v10 + 1);
        if (v20 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v10)
        {
          if (*(v9 + 79) >= 0)
          {
            v12 = (v9 + 56);
          }

          else
          {
            v12 = *(v9 + 56);
          }

          memmove(p_p, v12, v10);
        }

        *&p_p[v10] = 10;
        if (v20 >= 0)
        {
          v13 = &__p;
        }

        else
        {
          v13 = __p;
        }

        if (v20 >= 0)
        {
          v14 = HIBYTE(v20);
        }

        else
        {
          v14 = v19;
        }

        std::string::append(&v23, v13, v14);
        if (SHIBYTE(v20) < 0)
        {
          operator delete(__p);
        }

        v6 += 3;
        if (v6 == v7)
        {
          goto LABEL_24;
        }
      }

      __p = "hio/glslfx.cpp";
      v19 = "_GetSource";
      v20 = 715;
      v21 = "string pxrInternal__aapl__pxrReserved__::HioGlslfx::_GetSource(const TfToken &) const";
      v22 = 0;
      v15 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v15)
      {
        v16 = (v15 + 16);
        if (*(v15 + 39) < 0)
        {
          v16 = *v16;
        }
      }

      else
      {
        v16 = "";
      }

      if (*(v6 + 23) < 0)
      {
        v6 = *v6;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Can't find shader source for <%s> with the key <%s>", v16, v6);
      a3->__r_.__value_.__r.__words[0] = 0;
      a3->__r_.__value_.__l.__size_ = 0;
      a3->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }
    }

    __p = &v24;
    sub_29A012C90(&__p);
  }

  else
  {

    sub_29A008E78(a3, "");
  }
}

void sub_29AB63B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  a13 = &a27;
  sub_29A012C90(&a13);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSurfaceSource(pxrInternal__aapl__pxrReserved__::HioGlslfx *this@<X0>, std::string *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v4)
  {
    v4 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::_GetSource(this, (v4 + 88), a2);
}

void pxrInternal__aapl__pxrReserved__::HioGlslfx::GetDisplacementSource(pxrInternal__aapl__pxrReserved__::HioGlslfx *this@<X0>, std::string *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v4)
  {
    v4 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::_GetSource(this, (v4 + 96), a2);
}

void pxrInternal__aapl__pxrReserved__::HioGlslfx::GetVolumeSource(pxrInternal__aapl__pxrReserved__::HioGlslfx *this@<X0>, std::string *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v4)
  {
    v4 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::_GetSource(this, (v4 + 104), a2);
}

char *sub_29AB63D0C(char *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A012BFC(result, a4);
    result = sub_29A280CD0(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AB63D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A012C90(&a9);
  _Unwind_Resume(a1);
}

unint64_t sub_29AB63D94()
{
  v0 = operator new(0x28uLL);
  *v0 = 0u;
  v0[1] = 0u;
  *(v0 + 8) = 1065353216;
  Instance = pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(v0);
  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetAllPlugins(v6, Instance);
  if (v6[0] != v6[1])
  {
    sub_29A17F138(v6[0]);
  }

  __dst[0] = v6;
  sub_29A17DEA8(__dst);
  v2 = 0;
  atomic_compare_exchange_strong(&qword_2A1748308, &v2, v0);
  if (v2)
  {
    v3 = sub_29A89AD9C(v0);
    operator delete(v3);
    return atomic_load(&qword_2A1748308);
  }

  return v0;
}

void sub_29AB63F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  v28 = sub_29A89AD9C(v26);
  operator delete(v28);
  _Unwind_Resume(a1);
}

char *sub_29AB63FF4(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v3;
  }

  *(__dst + 6) = 0;
  *(__dst + 4) = 0xBFF0000000000000;
  *(__dst + 40) = 0u;
  *(__dst + 56) = 0u;
  *(__dst + 72) = 0u;
  *(__dst + 88) = 0u;
  *(__dst + 104) = 0u;
  *(__dst + 120) = 0u;
  return __dst;
}

unint64_t sub_29AB6406C()
{
  v34 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x60uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "--", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "---", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "version", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "configuration", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "glsl", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "layout", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "#import", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "ShaderResources", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "$TOOLS", 0);
  v1 = v0 + 9;
  v2 = *v0;
  v25 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v3;
    }
  }

  v4 = v0[1];
  v26 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v5;
    }
  }

  v6 = v0[2];
  v27 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v7;
    }
  }

  v8 = v0[3];
  v28 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v9;
    }
  }

  v10 = v0[4];
  v29 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v11;
    }
  }

  v12 = v0[5];
  v30 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v13;
    }
  }

  v14 = v0[6];
  v31 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v31 = v15;
    }
  }

  v16 = v0[7];
  v32 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v32 = v17;
    }
  }

  v18 = v0[8];
  v33 = v18;
  if ((v18 & 7) != 0)
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
    {
      v33 = v19;
    }
  }

  *v1 = 0;
  v0[10] = 0;
  v0[11] = 0;
  sub_29A12EF7C(v1, &v25, &v34, 9uLL);
  for (i = 64; i != -8; i -= 8)
  {
    v21 = *(&v25 + i);
    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v22 = 0;
  atomic_compare_exchange_strong(&qword_2A1748300, &v22, v0);
  if (v22)
  {
    v23 = sub_29A7FB35C(v0);
    operator delete(v23);
    return atomic_load(&qword_2A1748300);
  }

  return v0;
}

void sub_29AB64338(_Unwind_Exception *a1)
{
  v4 = 64;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[8];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[7];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[6];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[5];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[4];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[3];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[2];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[1];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

pxrInternal__aapl__pxrReserved__::HioGlslfxTokens_StaticTokenType *sub_29AB64494(atomic_ullong *a1)
{
  result = sub_29AB644DC();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HioGlslfxTokens_StaticTokenType::~HioGlslfxTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HioGlslfxTokens_StaticTokenType *sub_29AB644DC()
{
  v0 = operator new(0x90uLL);
  pxrInternal__aapl__pxrReserved__::HioGlslfxTokens_StaticTokenType::HioGlslfxTokens_StaticTokenType(v0);
  return v0;
}

void sub_29AB64520(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_29A43A2CC((a2 + 88), *(a2 + 12));
    sub_29A184A10(a2 + 10, 0);
    v3 = (a2 + 56);
    sub_29AB645B8(&v3);
    v3 = (a2 + 32);
    sub_29AB645B8(&v3);
    v3 = (a2 + 8);
    sub_29AB646A0(&v3);
    if ((*a2 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

void sub_29AB645B8(void ***a1)
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
        sub_29AB64640(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29AB64640(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  sub_29A186B14(a2 + 24);
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_29AB646A0(void ***a1)
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
        v4 -= 72;
        sub_29AB64640(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29AB64728()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HIO_GLSLFX_DEFAULT_VALUE_VALIDATION))
  {
    sub_29B2C21DC();
  }
}

void *pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Read(uint64_t *a1, std::string *a2, uint64_t a3, std::string *a4)
{
  v7 = operator new(0x70uLL);
  pxrInternal__aapl__pxrReserved__::Hio_GetDictionaryFromInput(a2, a4, &v9);
  pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::HioGlslfxConfig(v7, a1, &v9, a4);
  sub_29A184A10(&v9, 0);
  return v7;
}

void sub_29AB647E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A184A10(va, 0);
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::HioGlslfxConfig(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t a4)
{
  v5 = *a2;
  *a1 = *a2;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 8) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::_Init(a1, a3, a4);
  return a1;
}

void sub_29AB648B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  sub_29A43A2CC(v12, *(v10 + 96));
  sub_29A184A10((v10 + 80), 0);
  a10 = (v10 + 56);
  sub_29AB645B8(&a10);
  a10 = (v10 + 32);
  sub_29AB645B8(&a10);
  sub_29AB646A0(&a10);
  if ((*v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::_Init(uint64_t a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3)
{
  pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::_GetParameters(a2, a3, &v11);
  sub_29AB67DB0((a1 + 8));
  *(a1 + 8) = v11;
  *(a1 + 24) = v12;
  v12 = 0;
  v11 = 0uLL;
  v13 = &v11;
  sub_29AB646A0(&v13);
  pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::_GetTextures(a2, a3, &v11);
  sub_29AB67E1C((a1 + 32));
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  v12 = 0;
  v11 = 0uLL;
  v13 = &v11;
  sub_29AB645B8(&v13);
  pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::_GetAttributes(a2, a3, &v11);
  sub_29AB67E1C((a1 + 56));
  *(a1 + 56) = v11;
  *(a1 + 72) = v12;
  v12 = 0;
  v11 = 0uLL;
  v13 = &v11;
  sub_29AB645B8(&v13);
  pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::_GetMetadata(a2, a3, &v11);
  v6 = v11;
  *&v11 = 0;
  sub_29A184A10((a1 + 80), v6);
  sub_29A184A10(&v11, 0);
  pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::_GetSourceKeyMap(a1, a2, a3, &v11);
  v8 = *(a1 + 96);
  v7 = (a1 + 96);
  sub_29A43A2CC((v7 - 1), v8);
  v9 = *(&v11 + 1);
  *(v7 - 1) = v11;
  *v7 = v9;
  v10 = v12;
  v7[1] = v12;
  if (v10)
  {
    v9[2] = v7;
    *&v11 = &v11 + 8;
    *(&v11 + 1) = 0;
    v12 = 0;
    v9 = 0;
  }

  else
  {
    *(v7 - 1) = v7;
  }

  sub_29A43A2CC(&v11, v9);
}

void pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::_GetParameters(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v40 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v39 = 0;
  v5 = atomic_load(&qword_2A1748310);
  if (!v5)
  {
    v5 = sub_29AB67638();
  }

  if (sub_29AB67D24(a1, (v5 + 24), &v38))
  {
    if (sub_29A185258(&v38))
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v37 = 0;
      v8 = atomic_load(&qword_2A1748310);
      if (!v8)
      {
        v8 = sub_29AB67638();
      }

      sub_29AB67D24(a1, (v8 + 32), &v36);
      if (v37)
      {
        if ((sub_29A1D0DBC(&v36) & 1) == 0)
        {
          v26 = atomic_load(&qword_2A1748310);
          if (!v26)
          {
            v26 = sub_29AB67638();
          }

          v27 = *(v26 + 32) & 0xFFFFFFFFFFFFFFF8;
          if (v27)
          {
            v28 = (v27 + 16);
            if (*(v27 + 39) < 0)
            {
              v28 = *v28;
            }
          }

          else
          {
            v28 = "";
          }

LABEL_51:
          pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s declaration expects a list of strings", v9, v10, v28);
          if (*(a2 + 23) < 0)
          {
            operator delete(*a2);
          }

          *a2 = *__dst;
          *(a2 + 16) = v35;
          goto LABEL_62;
        }

        if ((v37 & 4) != 0)
        {
          v11 = (*((v37 & 0xFFFFFFFFFFFFFFF8) + 168))(&v36);
        }

        else
        {
          v11 = v36;
        }

        v12 = *v11;
        v13 = *(v11 + 8);
        while (v12 != v13)
        {
          if ((sub_29A1EFC10(v12) & 1) == 0)
          {
            v29 = atomic_load(&qword_2A1748310);
            if (!v29)
            {
              v29 = sub_29AB67638();
            }

            v30 = *(v29 + 32) & 0xFFFFFFFFFFFFFFF8;
            if (v30)
            {
              v28 = (v30 + 16);
              if (*(v30 + 39) < 0)
              {
                v28 = *v28;
              }
            }

            else
            {
              v28 = "";
            }

            goto LABEL_51;
          }

          v14 = *(v12 + 1);
          if ((v14 & 4) != 0)
          {
            v15 = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(v12);
          }

          else
          {
            v15 = *v12;
          }

          if (sub_29A22B430(v31, v32, v15) == v32)
          {
            sub_29A070BA0(&v31);
          }

          v12 = (v12 + 16);
        }
      }

      if ((v39 & 4) != 0)
      {
        v19 = (*((v39 & 0xFFFFFFFFFFFFFFF8) + 168))(&v38);
      }

      else
      {
        v19 = v38;
      }

      __dst[0] = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(v19);
      __dst[1] = v20;
      v22 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v19);
      if (v21)
      {
        v23 = __dst[0] == v22;
      }

      else
      {
        v23 = 1;
      }

      v24 = v23;
      if (__dst[1] != v21 || v24 == 0)
      {
        if (sub_29A22B430(v31, v32, __dst[0] + 4) == v32)
        {
          sub_29A070BA0(&v31);
        }

        pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
      }

LABEL_62:
      sub_29A186B14(&v36);
      __dst[0] = &v31;
      sub_29A012C90(__dst);
      goto LABEL_63;
    }

    v16 = atomic_load(&qword_2A1748310);
    if (!v16)
    {
      v16 = sub_29AB67638();
    }

    v17 = *(v16 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v17)
    {
      v18 = (v17 + 16);
      if (*(v17 + 39) < 0)
      {
        v18 = *v18;
      }
    }

    else
    {
      v18 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s declaration expects a dictionary value", v6, v7, v18);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = *__dst;
    *(a2 + 16) = v35;
  }

LABEL_63:
  sub_29A186B14(&v38);
}

void sub_29AB652C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, char a32)
{
  sub_29A186B14(v32 - 128);
  __p = &a18;
  sub_29A012C90(&__p);
  sub_29A186B14(v32 - 112);
  sub_29AB646A0(&a18);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::_GetTextures(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v53 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v52 = 0;
  v6 = atomic_load(&qword_2A1748310);
  if (!v6)
  {
    v6 = sub_29AB67638();
  }

  if ((sub_29AB67D24(a1, (v6 + 40), &v51) & 1) == 0)
  {
    goto LABEL_74;
  }

  if ((sub_29A185258(&v51) & 1) == 0)
  {
    v34 = atomic_load(&qword_2A1748310);
    if (!v34)
    {
      v34 = sub_29AB67638();
    }

    v35 = *(v34 + 40) & 0xFFFFFFFFFFFFFFF8;
    if (v35)
    {
      v36 = (v35 + 16);
      if (*(v35 + 39) < 0)
      {
        v36 = *v36;
      }
    }

    else
    {
      v36 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s declaration expects a dictionary value", v7, v8, v36);
    goto LABEL_71;
  }

  if ((v52 & 4) != 0)
  {
    v9 = (*((v52 & 0xFFFFFFFFFFFFFFF8) + 168))(&v51);
  }

  else
  {
    v9 = v51;
  }

  v41 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(v9);
  v42 = v10;
  v12 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v9);
  v13 = 0;
  v14 = v41;
  if (v11)
  {
    v15 = v41 == v12;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15;
  if (v42 == v11 && (v16 & 1) != 0)
  {
LABEL_74:
    sub_29A186B14(&v51);
    return;
  }

  v19 = (v41 + 32);
  if ((sub_29A185258((v41 + 56)) & 1) == 0)
  {
    v37 = atomic_load(&qword_2A1748310);
    if (!v37)
    {
      v37 = sub_29AB67638();
    }

    v38 = *(v37 + 40) & 0xFFFFFFFFFFFFFFF8;
    if (v38)
    {
      v39 = (v38 + 16);
      if (*(v38 + 39) < 0)
      {
        v39 = *v39;
      }
    }

    else
    {
      v39 = "";
    }

    if (*(v41 + 55) < 0)
    {
      v19 = *v19;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s declaration for %s expects a dictionary value", v17, v18, v39, v19);
LABEL_71:
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = *__dst;
    *(a2 + 16) = v44;
    goto LABEL_74;
  }

  v20 = *(v41 + 64);
  if ((v20 & 4) != 0)
  {
    v21 = (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(v41 + 56);
  }

  else
  {
    v21 = *(v41 + 56);
  }

  v50[1] = 0;
  v22 = atomic_load(&qword_2A1748310);
  if (!v22)
  {
    v22 = sub_29AB67638();
  }

  sub_29AB67D24(v21, (v22 + 72), v50);
  v49 = 0;
  memset(&v40, 0, sizeof(v40));
  v23 = atomic_load(&qword_2A1748310);
  if (!v23)
  {
    v23 = sub_29AB67638();
  }

  if (sub_29AB67D24(v21, (v23 + 48), &__str))
  {
    if ((sub_29A1EFC10(&__str) & 1) == 0)
    {
      v31 = atomic_load(&qword_2A1748310);
      if (!v31)
      {
        v31 = sub_29AB67638();
      }

      v32 = *(v31 + 48) & 0xFFFFFFFFFFFFFFF8;
      if (v32)
      {
        v33 = (v32 + 16);
        if (*(v32 + 39) < 0)
        {
          v33 = *v33;
        }
      }

      else
      {
        v33 = "";
      }

      if (*(v41 + 55) < 0)
      {
        v19 = *v19;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Value for %s for %s is not a string", v24, v25, v33, v19);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      v30 = 0;
      *a2 = *__dst;
      *(a2 + 16) = v44;
      v13 = 1;
      goto LABEL_47;
    }

    if ((v49 & 4) != 0)
    {
      v26 = (*((v49 & 0xFFFFFFFFFFFFFFF8) + 168))(&__str);
    }

    else
    {
      v26 = __str;
    }

    std::string::operator=(&v40, v26);
  }

  if (sub_29AB5FADC(0))
  {
    v29 = (v14 + 32);
    if (*(v14 + 55) < 0)
    {
      v29 = *v19;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("        texture: %s\n", v27, v28, v29);
  }

  sub_29AB671CC(__dst, (v14 + 32), v50, &v40);
  sub_29AB66FC0(a3, __dst);
  if (v47 < 0)
  {
    operator delete(__p);
  }

  sub_29A186B14(&v45);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst[0]);
  }

  v30 = 1;
LABEL_47:
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  sub_29A186B14(&__str);
  sub_29A186B14(v50);
  if (v30)
  {
    pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
  }

  sub_29A186B14(&v51);
  if ((v13 & 1) == 0)
  {
    __dst[0] = a3;
    sub_29AB645B8(__dst);
  }
}

void sub_29AB657AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_29A186B14(v28 - 112);
  sub_29AB645B8(&a20);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::_GetAttributes(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a3;
  v88[2] = *MEMORY[0x29EDCA608];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v82 = 0;
  v6 = atomic_load(&qword_2A1748310);
  if (!v6)
  {
    v6 = sub_29AB67638();
  }

  if ((sub_29AB67D24(a1, v6, &v81) & 1) == 0)
  {
    goto LABEL_148;
  }

  if ((sub_29A185258(&v81) & 1) == 0)
  {
    v57 = atomic_load(&qword_2A1748310);
    if (!v57)
    {
      v57 = sub_29AB67638();
    }

    v58 = *v57 & 0xFFFFFFFFFFFFFFF8;
    if (v58)
    {
      v59 = (v58 + 16);
      if (*(v58 + 39) < 0)
      {
        v59 = *v59;
      }
    }

    else
    {
      v59 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s declaration expects a dictionary value", v7, v8, v59);
    goto LABEL_145;
  }

  if ((v82 & 4) != 0)
  {
    v9 = (*((v82 & 0xFFFFFFFFFFFFFFF8) + 168))(&v81);
  }

  else
  {
    v9 = v81;
  }

  v65 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(v9);
  v66 = v10;
  v11 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v9);
  v63 = 0;
  v13 = v65;
  if (v12)
  {
    v14 = v65 == v11;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  if (v66 == v12 && (v15 & 1) != 0)
  {
LABEL_148:
    sub_29A186B14(&v81);
    return;
  }

  v18 = (v65 + 32);
  if ((sub_29A185258((v65 + 56)) & 1) == 0)
  {
    v60 = atomic_load(&qword_2A1748310);
    if (!v60)
    {
      v60 = sub_29AB67638();
    }

    v61 = *v60 & 0xFFFFFFFFFFFFFFF8;
    if (v61)
    {
      v62 = (v61 + 16);
      if (*(v61 + 39) < 0)
      {
        v62 = *v62;
      }
    }

    else
    {
      v62 = "";
    }

    if (*(v65 + 55) < 0)
    {
      v18 = *v18;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s declaration for %s expects a dictionary value", v16, v17, v62, v18);
LABEL_145:
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = __dst;
    *(a2 + 16) = v75;
    goto LABEL_148;
  }

  v19 = *(v65 + 64);
  if ((v19 & 4) != 0)
  {
    v20 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(v65 + 56);
  }

  else
  {
    v20 = *(v65 + 56);
  }

  v80 = 0;
  memset(&v64, 0, sizeof(v64));
  v21 = atomic_load(&qword_2A1748310);
  if (!v21)
  {
    v21 = sub_29AB67638();
  }

  if (sub_29AB67D24(v20, (v21 + 48), &v79))
  {
    if ((sub_29A1EFC10(&v79) & 1) == 0)
    {
      v48 = atomic_load(&qword_2A1748310);
      if (!v48)
      {
        v48 = sub_29AB67638();
      }

      v49 = *(v48 + 48) & 0xFFFFFFFFFFFFFFF8;
      if (v49)
      {
        v50 = (v49 + 16);
        if (*(v49 + 39) < 0)
        {
          v50 = *v50;
        }
      }

      else
      {
        v50 = "";
      }

      if (*(v65 + 55) < 0)
      {
        v18 = *v18;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Value for %s for %s is not a string", v22, v23, v50, v18);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      v52 = 0;
      *a2 = __dst;
      *(a2 + 16) = v75;
      v63 = 1;
      goto LABEL_117;
    }

    if ((v80 & 4) != 0)
    {
      v24 = (*((v80 & 0xFFFFFFFFFFFFFFF8) + 168))(&v79);
    }

    else
    {
      v24 = v79;
    }

    std::string::operator=(&v64, v24);
  }

  if (sub_29AB5FADC(0))
  {
    v27 = (v13 + 32);
    if (*(v13 + 55) < 0)
    {
      v27 = *v18;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("        attribute: %s\n", v25, v26, v27);
  }

  v88[1] = 0;
  v28 = atomic_load(&qword_2A1748310);
  if (!v28)
  {
    v28 = sub_29AB67638();
  }

  v29 = sub_29AB67D24(v20, (v28 + 72), v88);
  if (!v29)
  {
    goto LABEL_34;
  }

  v30 = atomic_load(pxrInternal__aapl__pxrReserved__::HIO_GLSLFX_DEFAULT_VALUE_VALIDATION);
  if (!v30)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  if (*v30)
  {
LABEL_34:
    v87 = 0;
    v31 = atomic_load(&qword_2A1748310);
    if (!v31)
    {
      v31 = sub_29AB67638();
    }

    if (sub_29AB67D24(v20, (v31 + 88), &v86))
    {
      if (sub_29A1EFC10(&v86))
      {
        if ((atomic_load_explicit(&qword_2A1748438, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748438))
        {
          sub_29A008E78(&qword_2A1748318, "float");
          dword_2A1748330 = 0;
          qword_2A1748338 = &unk_2A2044C63;
          qword_2A1748340 = sub_29AB6728C;
          sub_29A008E78(qword_2A1748348, "double");
          qword_2A1748360 = 0;
          *algn_2A1748368 = &unk_2A2044D1B;
          qword_2A1748370 = sub_29AB6728C;
          sub_29A008E78(qword_2A1748378, "int");
          dword_2A1748390 = 0;
          qword_2A1748398 = &unk_2A204475B;
          unk_2A17483A0 = sub_29AB672D8;
          sub_29A008E78(&qword_2A17483A8, "vec2");
          v85[1] = &unk_2A2044C63;
          LODWORD(v85[0]) = 0;
          sub_29AB674D0(__p, 2uLL, v85);
          qword_2A17483C8 = &off_2A2046490;
          sub_29A1D1398(&qword_2A17483C0, __p);
          qword_2A17483D0 = sub_29AB672DC;
          sub_29A008E78(&qword_2A17483D8, "vec3");
          v84[1] = &unk_2A2044C63;
          LODWORD(v84[0]) = 0;
          sub_29AB674D0(v68, 3uLL, v84);
          qword_2A17483F8 = &off_2A2046490;
          sub_29A1D1398(&qword_2A17483F0, v68);
          qword_2A1748400 = sub_29AB67398;
          sub_29A008E78(&qword_2A1748408, "vec4");
          v83[1] = &unk_2A2044C63;
          LODWORD(v83[0]) = 0;
          sub_29AB674D0(v67, 4uLL, v83);
          qword_2A1748428 = &off_2A2046490;
          sub_29A1D1398(&qword_2A1748420, v67);
          qword_2A1748430 = sub_29AB67434;
          v71 = v67;
          sub_29A1D0D38(&v71);
          sub_29A186B14(v83);
          v67[0] = v68;
          sub_29A1D0D38(v67);
          sub_29A186B14(v84);
          v68[0] = __p;
          sub_29A1D0D38(v68);
          sub_29A186B14(v85);
          __cxa_atexit(sub_29AB68A3C, 0, &dword_299FE7000);
          __cxa_guard_release(&qword_2A1748438);
        }

        if ((v87 & 4) != 0)
        {
          v37 = (*((v87 & 0xFFFFFFFFFFFFFFF8) + 168))(&v86);
          v36 = v5;
        }

        else
        {
          v36 = v5;
          v37 = v86;
        }

        v38 = *(v37 + 23);
        if (v38 >= 0)
        {
          v39 = *(v37 + 23);
        }

        else
        {
          v39 = *(v37 + 8);
        }

        v40 = &qword_2A1748318;
        v41 = 288;
        do
        {
          v42 = *(v40 + 23);
          v43 = v42;
          if ((v42 & 0x80u) != 0)
          {
            v42 = v40[1];
          }

          if (v42 == v39)
          {
            v44 = v43 >= 0 ? v40 : *v40;
            v45 = v38 >= 0 ? v37 : *v37;
            if (!memcmp(v44, v45, v39))
            {
              v5 = v36;
              if (v29)
              {
                if ((v40[5])(v88))
                {
                  goto LABEL_84;
                }

                if (*(v13 + 55) >= 0)
                {
                  v55 = v13 + 32;
                }

                else
                {
                  v55 = *(v13 + 32);
                }

                if (*(v37 + 23) < 0)
                {
                  v37 = *v37;
                }

                pxrInternal__aapl__pxrReserved__::TfStringPrintf("Default value for %s is not of type %s", v53, v54, v55, v37);
                if (*(a2 + 23) < 0)
                {
                  operator delete(*a2);
                }

                *a2 = *__p;
                *(a2 + 16) = v70;
              }

              sub_29A186EF4(&v72, v40 + 3);
              goto LABEL_111;
            }
          }

          v40 += 6;
          v41 -= 48;
        }

        while (v41);
        if (v29)
        {
          v5 = v36;
          if (v38 < 0)
          {
            v37 = *v37;
          }

          if (*(v13 + 55) >= 0)
          {
            v46 = v13 + 32;
          }

          else
          {
            v46 = *(v13 + 32);
          }

          pxrInternal__aapl__pxrReserved__::TfStringPrintf("Invalid type %s for %s", v34, v35, v37, v46);
          if (*(a2 + 23) < 0)
          {
            operator delete(*a2);
          }

          *a2 = *__p;
          *(a2 + 16) = v70;
          goto LABEL_84;
        }

        if (*(v13 + 55) >= 0)
        {
          v56 = v13 + 32;
        }

        else
        {
          v56 = *(v13 + 32);
        }

        v5 = v36;
        pxrInternal__aapl__pxrReserved__::TfStringPrintf("Invalid type and no default value for %s", v34, v35, v56);
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        goto LABEL_108;
      }

      if (*(v13 + 55) >= 0)
      {
        v51 = v13 + 32;
      }

      else
      {
        v51 = *(v13 + 32);
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Type name for %s is not a string", v34, v35, v51);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = *__p;
      *(a2 + 16) = v70;
      if (!v29)
      {
        LODWORD(v68[0]) = 0;
        sub_29AA7BAE8(__p, 4uLL, v68);
        v73 = &off_2A20719C8;
        sub_29AB15C3C(&v72, __p);
        goto LABEL_109;
      }
    }

    else if (!v29)
    {
      if (*(v13 + 55) >= 0)
      {
        v47 = v13 + 32;
      }

      else
      {
        v47 = *(v13 + 32);
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("No type or default value for %s", v32, v33, v47);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

LABEL_108:
      *a2 = *__p;
      *(a2 + 16) = v70;
      LODWORD(v68[0]) = 0;
      sub_29AA7BAE8(__p, 4uLL, v68);
      v73 = &off_2A20719C8;
      sub_29AB15C3C(&v72, __p);
LABEL_109:
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      goto LABEL_111;
    }

LABEL_84:
    sub_29A186A3C(&v72, v88);
LABEL_111:
    sub_29A186B14(&v86);
    goto LABEL_112;
  }

  sub_29A186A3C(&v72, v88);
LABEL_112:
  sub_29A186B14(v88);
  sub_29AB67578(&__dst, (v13 + 32), &v72, &v64);
  sub_29AB67068(v5, &__dst);
  if (v78 < 0)
  {
    operator delete(v77);
  }

  sub_29A186B14(&v76);
  if (SHIBYTE(v75) < 0)
  {
    operator delete(__dst);
  }

  sub_29A186B14(&v72);
  v52 = 1;
LABEL_117:
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  sub_29A186B14(&v79);
  if (v52)
  {
    pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
  }

  sub_29A186B14(&v81);
  if ((v63 & 1) == 0)
  {
    *&__dst = v5;
    sub_29AB645B8(&__dst);
  }
}

void sub_29AB6626C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38)
{
  sub_29A186B14(v38 - 192);
  sub_29AB645B8(&a38);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::_GetMetadata(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, uint64_t a2@<X2>, pxrInternal__aapl__pxrReserved__::VtDictionary *a3@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  v16 = 0;
  v18 = 0;
  v6 = atomic_load(&qword_2A1748310);
  if (!v6)
  {
    v6 = sub_29AB67638();
  }

  if ((sub_29AB67D24(a1, (v6 + 16), &v17) & 1) == 0)
  {
    goto LABEL_17;
  }

  if ((sub_29A185258(&v17) & 1) == 0)
  {
    v10 = atomic_load(&qword_2A1748310);
    if (!v10)
    {
      v10 = sub_29AB67638();
    }

    v11 = *(v10 + 16) & 0xFFFFFFFFFFFFFFF8;
    if (v11)
    {
      v12 = (v11 + 16);
      if (*(v11 + 39) < 0)
      {
        v12 = *v12;
      }
    }

    else
    {
      v12 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s declaration expects a dictionary value", v7, v8, v12);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v14;
    *(a2 + 16) = v15;
LABEL_17:
    v13 = v16;
    v16 = 0;
    *a3 = v13;
    goto LABEL_18;
  }

  if ((v18 & 4) != 0)
  {
    v9 = (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(&v17);
  }

  else
  {
    v9 = v17;
  }

  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(a3, v9);
LABEL_18:
  sub_29A186B14(&v17);
  sub_29A184A10(&v16, 0);
}

void sub_29AB66618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_29A186B14(va1);
  sub_29A184A10(va, 0);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::_GetSourceKeyMap(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v92 = *MEMORY[0x29EDCA608];
  a4[1] = 0;
  a4[2] = 0;
  *a4 = a4 + 1;
  v91 = 0;
  v8 = atomic_load(&qword_2A1748310);
  if (!v8)
  {
    v8 = sub_29AB67638();
  }

  if ((sub_29AB67D24(a2, (v8 + 8), &v90) & 1) == 0)
  {
    v18 = atomic_load(&qword_2A1748310);
    if (!v18)
    {
      v18 = sub_29AB67638();
    }

    v19 = *(v18 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v19)
    {
      v20 = (v19 + 16);
      if (*(v19 + 39) < 0)
      {
        v20 = *v20;
      }
    }

    else
    {
      v20 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Configuration does not specify %s", v9, v10, v20);
    goto LABEL_99;
  }

  if ((sub_29A185258(&v90) & 1) == 0)
  {
    v21 = atomic_load(&qword_2A1748310);
    if (!v21)
    {
      v21 = sub_29AB67638();
    }

    v22 = *(v21 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v22)
    {
      v23 = (v22 + 16);
      if (*(v22 + 39) < 0)
      {
        v23 = *v23;
      }
    }

    else
    {
      v23 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s declaration expects a dictionary value", v11, v12, v23);
    goto LABEL_99;
  }

  if ((v91 & 4) != 0)
  {
    v13 = (*((v91 & 0xFFFFFFFFFFFFFFF8) + 168))(&v90);
  }

  else
  {
    v13 = v90;
  }

  v14 = pxrInternal__aapl__pxrReserved__::VtDictionary::size(v13);
  if (!v14)
  {
    v24 = atomic_load(&qword_2A1748310);
    if (!v24)
    {
      v24 = sub_29AB67638();
    }

    v25 = *(v24 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v25)
    {
      v26 = (v25 + 16);
      if (*(v25 + 39) < 0)
      {
        v26 = *v26;
      }
    }

    else
    {
      v26 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("No %s specified", v15, v16, v26);
    goto LABEL_99;
  }

  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
  }

  v78 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(v13, EmptyString);
  v28 = v27;
  v29 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v13);
  if (v28 == v30 && (!v28 || v78 == v29))
  {
    v63 = atomic_load(&qword_2A1748310);
    if (!v63)
    {
      v63 = sub_29AB67638();
    }

    v64 = *(v63 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v64)
    {
      v65 = (v64 + 16);
      if (*(v64 + 39) < 0)
      {
        v65 = *v65;
      }
    }

    else
    {
      v65 = "";
    }

    v66 = *a1 & 0xFFFFFFFFFFFFFFF8;
    if (v66)
    {
      v67 = (v66 + 16);
      if (*(v66 + 39) < 0)
      {
        v67 = *v67;
      }
    }

    else
    {
      v67 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("No entry for %s: %s", v30, v31, v65, v67);
LABEL_99:
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v83;
    *(a3 + 16) = v84;
    goto LABEL_102;
  }

  v32 = sub_29A186EF4(&v88, (v78 + 56));
  v33 = sub_29A185258(v32);
  v36 = (v78 + 32);
  if ((v33 & 1) == 0)
  {
    v60 = atomic_load(&qword_2A1748310);
    if (!v60)
    {
      v60 = sub_29AB67638();
      v36 = (v78 + 32);
    }

    v61 = *(v60 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v61)
    {
      v62 = (v61 + 16);
      if (*(v61 + 39) < 0)
      {
        v62 = *v62;
      }
    }

    else
    {
      v62 = "";
    }

    if (*(v78 + 55) < 0)
    {
      v36 = *v36;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s spec for %s expects a dictionary value", v34, v35, v62, v36);
    goto LABEL_90;
  }

  v76 = (v78 + 32);
  if ((v89 & 4) != 0)
  {
    v37 = (*((v89 & 0xFFFFFFFFFFFFFFF8) + 168))(&v88);
  }

  else
  {
    v37 = v88;
  }

  v81 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(v37);
  v82 = v38;
  v77 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v37);
  v75 = 0;
  if (v39)
  {
    v40 = v81 == v77;
  }

  else
  {
    v40 = 1;
  }

  v41 = v40;
  if (v82 == v39 && (v41 & 1) != 0)
  {
LABEL_137:
    sub_29A186B14(&v88);
LABEL_102:
    sub_29A186B14(&v90);
    return;
  }

  v44 = (v81 + 32);
  if ((sub_29A185258((v81 + 56)) & 1) == 0)
  {
    if (*(v78 + 55) < 0)
    {
      v76 = *v76;
    }

    if (*(v81 + 55) < 0)
    {
      v44 = *v44;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s spec for %s expects a dictionary value", v42, v43, v76, v44);
LABEL_90:
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v83;
    *(a3 + 16) = v84;
    goto LABEL_137;
  }

  v45 = *(v81 + 64);
  if ((v45 & 4) != 0)
  {
    v46 = (*((v45 & 0xFFFFFFFFFFFFFFF8) + 168))(v81 + 56);
  }

  else
  {
    v46 = *(v81 + 56);
  }

  v87 = 0;
  v47 = atomic_load(&qword_2A1748310);
  if (!v47)
  {
    v47 = sub_29AB67638();
  }

  if ((sub_29AB67D24(v46, (v47 + 80), &v86) & 1) == 0)
  {
    if (*(v78 + 55) < 0)
    {
      v76 = *v76;
    }

    v68 = atomic_load(&qword_2A1748310);
    if (!v68)
    {
      v68 = sub_29AB67638();
    }

    v69 = *(v68 + 80) & 0xFFFFFFFFFFFFFFF8;
    if (v69)
    {
      v70 = (v69 + 16);
      if (*(v69 + 39) < 0)
      {
        v70 = *v70;
      }
    }

    else
    {
      v70 = "";
    }

    if (*(v81 + 55) < 0)
    {
      v44 = *v44;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s spec doesn't define %s for %s", v48, v49, v76, v70, v44);
    goto LABEL_134;
  }

  if ((sub_29A1D0DBC(&v86) & 1) == 0)
  {
    v71 = atomic_load(&qword_2A1748310);
    if (!v71)
    {
      v71 = sub_29AB67638();
    }

    v72 = *(v71 + 80) & 0xFFFFFFFFFFFFFFF8;
    if (v72)
    {
      v73 = (v72 + 16);
      if (*(v72 + 39) < 0)
      {
        v73 = *v73;
      }
    }

    else
    {
      v73 = "";
    }

    if (*(v81 + 55) < 0)
    {
      v44 = *v44;
    }

    if (*(v78 + 55) < 0)
    {
      v74 = *v76;
    }

    else
    {
      v74 = (v78 + 32);
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s of %s for spec %s expects a list", v50, v51, v73, v44, v74);
LABEL_134:
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v83;
    *(a3 + 16) = v84;
    sub_29A186B14(&v86);
    goto LABEL_137;
  }

  if ((v87 & 4) != 0)
  {
    v52 = (*((v87 & 0xFFFFFFFFFFFFFFF8) + 168))(&v86);
  }

  else
  {
    v52 = v86;
  }

  v83 = 0uLL;
  v84 = 0;
  sub_29A1D128C(&v83, *v52, v52[1], (v52[1] - *v52) >> 4);
  if (v83 == *(&v83 + 1))
  {
    v55 = 1;
  }

  else
  {
    if (sub_29A1EFC10(v83))
    {
      v85 = v81 + 32;
      sub_29A65A6C0();
    }

    v56 = atomic_load(&qword_2A1748310);
    if (!v56)
    {
      v56 = sub_29AB67638();
    }

    v57 = *(v56 + 80) & 0xFFFFFFFFFFFFFFF8;
    if (v57)
    {
      v58 = (v57 + 16);
      if (*(v57 + 39) < 0)
      {
        v58 = *v58;
      }
    }

    else
    {
      v58 = "";
    }

    if (*(v81 + 55) < 0)
    {
      v44 = *v44;
    }

    v59 = (v78 + 32);
    if (*(v78 + 55) < 0)
    {
      v59 = *v76;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s of %s for spec %s expects a list of strings", v53, v54, v58, v44, v59);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    v55 = 0;
    *a3 = v79;
    *(a3 + 16) = v80;
    v75 = 1;
  }

  *&v79 = &v83;
  sub_29A1D0D38(&v79);
  sub_29A186B14(&v86);
  if (v55)
  {
    pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
  }

  sub_29A186B14(&v88);
  sub_29A186B14(&v90);
  if ((v75 & 1) == 0)
  {
    sub_29A43A2CC(a4, a4[1]);
  }
}

void sub_29AB66D98(_Unwind_Exception *a1)
{
  sub_29A186B14(v2 - 128);
  sub_29A186B14(v2 - 112);
  sub_29A43A2CC(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::GetSourceKeys@<W0>(pxrInternal__aapl__pxrReserved__::HioGlslfxConfig *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return sub_29AB67E88((this + 88), a2, a3);
}

void sub_29AB66E7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::GetParameters(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter*>();
}

uint64_t sub_29AB66EC4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_29AB68050(a1, a2);
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 16);
    *v4 = v5;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    sub_29A186A3C((v4 + 24), (a2 + 24));
    v6 = *(a2 + 40);
    *(v4 + 56) = *(a2 + 56);
    *(v4 + 40) = v6;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(v4 + 64) = *(a2 + 64);
    result = v4 + 72;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29AB66F58(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  sub_29A186B14(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::GetTextures(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture*>();
}

uint64_t sub_29AB66FC0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_29AB6847C(a1, a2);
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 16);
    *v4 = v5;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    sub_29A186A3C((v4 + 24), (a2 + 24));
    v6 = *(a2 + 40);
    *(v4 + 56) = *(a2 + 56);
    *(v4 + 40) = v6;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    result = v4 + 64;
  }

  a1[1] = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::GetAttributes(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute*>();
}

uint64_t sub_29AB67068(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_29AB6880C(a1, a2);
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 16);
    *v4 = v5;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    sub_29A186A3C((v4 + 24), (a2 + 24));
    v6 = *(a2 + 40);
    *(v4 + 56) = *(a2 + 56);
    *(v4 + 40) = v6;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    result = v4 + 64;
  }

  a1[1] = result;
  return result;
}

char *sub_29AB67100(char *__dst, __int128 *a2, void *a3, __int128 *a4, _DWORD *a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v9;
  }

  sub_29A186EF4(__dst + 3, a3);
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14(__dst + 40, *a4, *(a4 + 1));
  }

  else
  {
    v10 = *a4;
    *(__dst + 7) = *(a4 + 2);
    *(__dst + 40) = v10;
  }

  *(__dst + 16) = *a5;
  return __dst;
}

void sub_29AB671A0(_Unwind_Exception *a1)
{
  sub_29A186B14(v1 + 24);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

char *sub_29AB671CC(char *__dst, __int128 *a2, void *a3, __int128 *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v7;
  }

  sub_29A186EF4(__dst + 3, a3);
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14(__dst + 40, *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(__dst + 7) = *(a4 + 2);
    *(__dst + 40) = v8;
  }

  return __dst;
}

void sub_29AB67260(_Unwind_Exception *a1)
{
  sub_29A186B14(v1 + 24);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AB6728C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3F9DF4(a1))
  {
    return 1;
  }

  return sub_29A346994(a1);
}

uint64_t sub_29AB672DC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  result = sub_29A1D0DBC(a1);
  if (result)
  {
    v3 = *(a1 + 1);
    if ((v3 & 4) != 0)
    {
      v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
    }

    else
    {
      v4 = *a1;
    }

    if (v4[1] - *v4 == 32)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        while (1)
        {
          v7 = v6;
          v8 = (*v4 + 16 * v5);
          if (sub_29A3F9DF4(v8))
          {
            break;
          }

          result = sub_29A346994(v8);
          v6 = 0;
          v5 = 1;
          if ((result & v7 & 1) == 0)
          {
            return result;
          }
        }

        v6 = 0;
        v5 = 1;
      }

      while ((v7 & 1) != 0);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29AB67398(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  result = sub_29A1D0DBC(a1);
  if (result)
  {
    v3 = *(a1 + 1);
    if ((v3 & 4) != 0)
    {
      v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
    }

    else
    {
      v4 = *a1;
    }

    if (v4[1] - *v4 == 48)
    {
      v5 = 0;
      while (1)
      {
        v6 = *v4;
        if ((sub_29A3F9DF4((*v4 + v5)) & 1) == 0)
        {
          result = sub_29A346994((v6 + v5));
          if (!result)
          {
            break;
          }
        }

        v5 += 16;
        if (v5 == 48)
        {
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29AB67434(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  result = sub_29A1D0DBC(a1);
  if (result)
  {
    v3 = *(a1 + 1);
    if ((v3 & 4) != 0)
    {
      v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
    }

    else
    {
      v4 = *a1;
    }

    if (v4[1] - *v4 == 64)
    {
      v5 = 0;
      while (1)
      {
        v6 = *v4;
        if ((sub_29A3F9DF4((*v4 + v5)) & 1) == 0)
        {
          result = sub_29A346994((v6 + v5));
          if (!result)
          {
            break;
          }
        }

        v5 += 16;
        if (v5 == 64)
        {
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_29AB674D0(void *a1, unint64_t a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0D0518(a1, a2);
    v6 = a1[1];
    v7 = &v6[2 * a2];
    v8 = 16 * a2;
    do
    {
      sub_29A186EF4(v6, a3);
      v6 += 2;
      v8 -= 16;
    }

    while (v8);
    a1[1] = v7;
  }

  return a1;
}

char *sub_29AB67578(char *__dst, __int128 *a2, void *a3, __int128 *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v7;
  }

  sub_29A186EF4(__dst + 3, a3);
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14(__dst + 40, *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(__dst + 7) = *(a4 + 2);
    *(__dst + 40) = v8;
  }

  return __dst;
}

void sub_29AB6760C(_Unwind_Exception *a1)
{
  sub_29A186B14(v1 + 24);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_29AB67638()
{
  v31 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x78uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "attributes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "techniques", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "metadata", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "parameters", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "parameterOrder", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "textures", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "documentation", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "role", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "color", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "default", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "source", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 11, "type", 0);
  v1 = v0 + 12;
  v2 = *v0;
  v19 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = v0[1];
  v20 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = v0[2];
  v21 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v0[3];
  v22 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v0[4];
  v23 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = v0[5];
  v24 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v0[6];
  v25 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = v0[7];
  v26 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v0[8];
  v27 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = v0[9];
  v28 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = v0[10];
  v29 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v0[11];
  v30 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v1 = 0;
  v0[13] = 0;
  v0[14] = 0;
  sub_29A12EF7C(v1, &v19, &v31, 0xCuLL);
  for (i = 88; i != -8; i -= 8)
  {
    v15 = *(&v19 + i);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v16 = 0;
  atomic_compare_exchange_strong(&qword_2A1748310, &v16, v0);
  if (v16)
  {
    v17 = sub_29AB67BC8(v0);
    operator delete(v17);
    return atomic_load(&qword_2A1748310);
  }

  return v0;
}

void sub_29AB67A0C(_Unwind_Exception *a1)
{
  v4 = 88;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[11];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[10];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[9];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[8];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[7];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[6];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[5];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[4];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[3];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[2];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[1];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AB67BC8(uint64_t a1)
{
  v14 = (a1 + 96);
  sub_29A124AB0(&v14);
  v2 = *(a1 + 88);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 80);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 72);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 64);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 56);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 48);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 40);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 32);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 24);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 16);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(a1 + 8);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t sub_29AB67D24(pxrInternal__aapl__pxrReserved__::TfToken *a1, void *a2, void *a3)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  v6 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a1, EmptyString);
  v8 = v7;
  v9 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v8 == v10 && (!v8 || v6 == v9))
  {
    return 0;
  }

  sub_29A1854E8(a3, (v6 + 56));
  return 1;
}

void sub_29AB67DB0(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 72;
        sub_29AB64640(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_29AB67E1C(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 64;
        sub_29AB64640(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

BOOL sub_29AB67E88(pxrInternal__aapl__pxrReserved__::TfToken *a1, void *a2, uint64_t a3)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  v6 = sub_29A01BCCC(a1, EmptyString);
  v7 = v6;
  v8 = a1 + 8;
  if (v8 != v6 && v6 + 56 != a3)
  {
    sub_29A095E3C(a3, *(v6 + 56), *(v6 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 64) - *(v6 + 56)) >> 3));
  }

  return v8 != v7;
}

uint64_t sub_29AB67F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Parameter&>();
  }

  v7 = 1;
  sub_29AB67FC4(v6);
  return a4;
}

uint64_t sub_29AB67FC4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AB67FFC(a1);
  }

  return a1;
}

void sub_29AB67FFC(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 72;
      sub_29AB64640(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_29AB68050(uint64_t *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_29A00C9A4();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    v7 = sub_29A09C03C(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[72 * v2];
  v17 = v7;
  v18 = v8;
  *(&v19 + 1) = &v7[72 * v6];
  v9 = *a2;
  *(v8 + 2) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  sub_29A186A3C(v8 + 3, a2 + 3);
  v10 = *(a2 + 40);
  *(v8 + 7) = *(a2 + 7);
  *(v8 + 40) = v10;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 5) = 0;
  *(v8 + 16) = *(a2 + 16);
  *&v19 = v8 + 72;
  v11 = a1[1];
  v12 = &v8[*a1 - v11];
  sub_29AB681CC(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29AB682C8(&v17);
  return v16;
}

void sub_29AB681B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB682C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AB681CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 24;
    do
    {
      v9 = *(v8 - 24);
      *(v4 + 16) = *(v8 - 8);
      *v4 = v9;
      *(v8 - 16) = 0;
      *(v8 - 8) = 0;
      *(v8 - 24) = 0;
      sub_29A186A3C((v4 + 24), v8);
      v10 = *(v8 + 16);
      *(v4 + 56) = *(v8 + 32);
      *(v4 + 40) = v10;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v4 + 64) = *(v8 + 40);
      v4 = v16 + 72;
      v16 += 72;
      v11 = v8 + 48;
      v8 += 72;
    }

    while (v11 != a3);
    v14 = 1;
    while (v6 != a3)
    {
      sub_29AB64640(a1, v6);
      v6 += 72;
    }
  }

  return sub_29AB67FC4(v13);
}

void **sub_29AB682C8(void **a1)
{
  sub_29AB682FC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AB682FC(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 72;
    sub_29AB64640(v4, i - 72);
  }
}

uint64_t sub_29AB68344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Texture&>();
  }

  v7 = 1;
  sub_29AB683F0(v6);
  return a4;
}

uint64_t sub_29AB683F0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AB68428(a1);
  }

  return a1;
}

void sub_29AB68428(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 64;
      sub_29AB64640(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_29AB6847C(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v21 = a1;
  if (v7)
  {
    v8 = sub_29A0BE3C0(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[64 * v2];
  v18 = v8;
  v19 = v9;
  *(&v20 + 1) = &v8[64 * v7];
  v10 = *a2;
  *(v9 + 2) = *(a2 + 2);
  *v9 = v10;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  sub_29A186A3C(v9 + 3, a2 + 3);
  v11 = *(a2 + 40);
  *(v9 + 7) = *(a2 + 7);
  *(v9 + 40) = v11;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *&v20 = v9 + 64;
  v12 = a1[1];
  v13 = &v9[*a1 - v12];
  sub_29AB685B8(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_29AB686AC(&v18);
  return v17;
}

void sub_29AB685A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB686AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AB685B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 24;
    do
    {
      v9 = *(v8 - 24);
      *(v4 + 16) = *(v8 - 8);
      *v4 = v9;
      *(v8 - 16) = 0;
      *(v8 - 8) = 0;
      *(v8 - 24) = 0;
      sub_29A186A3C((v4 + 24), v8);
      v10 = *(v8 + 16);
      *(v4 + 56) = *(v8 + 32);
      *(v4 + 40) = v10;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      v4 = v16 + 64;
      v16 += 64;
      v11 = v8 + 40;
      v8 += 64;
    }

    while (v11 != a3);
    v14 = 1;
    while (v6 != a3)
    {
      sub_29AB64640(a1, v6);
      v6 += 64;
    }
  }

  return sub_29AB683F0(v13);
}

void **sub_29AB686AC(void **a1)
{
  sub_29AB686E0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AB686E0(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 64;
    sub_29AB64640(v4, i - 64);
  }
}

uint64_t sub_29AB68728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute&>();
  }

  v7 = 1;
  sub_29AB687D4(v6);
  return a4;
}

uint64_t sub_29AB687D4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AB68428(a1);
  }

  return a1;
}

uint64_t sub_29AB6880C(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v21 = a1;
  if (v7)
  {
    v8 = sub_29A0BE3C0(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[64 * v2];
  v18 = v8;
  v19 = v9;
  *(&v20 + 1) = &v8[64 * v7];
  v10 = *a2;
  *(v9 + 2) = *(a2 + 2);
  *v9 = v10;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  sub_29A186A3C(v9 + 3, a2 + 3);
  v11 = *(a2 + 40);
  *(v9 + 7) = *(a2 + 7);
  *(v9 + 40) = v11;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *&v20 = v9 + 64;
  v12 = a1[1];
  v13 = &v9[*a1 - v12];
  sub_29AB68948(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_29AB686AC(&v18);
  return v17;
}

void sub_29AB68934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB686AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AB68948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 24;
    do
    {
      v9 = *(v8 - 24);
      *(v4 + 16) = *(v8 - 8);
      *v4 = v9;
      *(v8 - 16) = 0;
      *(v8 - 8) = 0;
      *(v8 - 24) = 0;
      sub_29A186A3C((v4 + 24), v8);
      v10 = *(v8 + 16);
      *(v4 + 56) = *(v8 + 32);
      *(v4 + 40) = v10;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      v4 = v16 + 64;
      v16 += 64;
      v11 = v8 + 40;
      v8 += 64;
    }

    while (v11 != a3);
    v14 = 1;
    while (v6 != a3)
    {
      sub_29AB64640(a1, v6);
      v6 += 64;
    }
  }

  return sub_29AB687D4(v13);
}

void sub_29AB68A3C()
{
  v0 = &unk_2A1748420;
  v1 = -288;
  do
  {
    sub_29A186B14(v0);
    if (*(v0 - 1) < 0)
    {
      operator delete(*(v0 - 3));
    }

    v0 -= 6;
    v1 += 48;
  }

  while (v1);
}

void pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens_StaticTokenType::~HioGlslfxResourceLayoutTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens_StaticTokenType *this)
{
  v19 = (this + 144);
  sub_29A124AB0(&v19);
  v2 = *(this + 17);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 15);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 14);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 13);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 12);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 11);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 10);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 9);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 8);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 7);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 6);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 5);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 4);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 3);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 2);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 1);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens_StaticTokenType::HioGlslfxResourceLayoutTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens_StaticTokenType *this)
{
  v43 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "unknown", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "block", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "in", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "out", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "in block", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "out block", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "in array", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "out array", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "in block array", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "out block array", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "uniform block", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "buffer readOnly", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "buffer readWrite", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "centroid", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "sample", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "smooth", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "flat", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "noperspective", 0);
  v3 = (this + 144);
  v4 = *this;
  v25 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v26 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v27 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v28 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v29 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v30 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v31 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v32 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v33 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v34 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v35 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v36 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v37 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v38 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v39 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v40 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v41 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 17);
  v42 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  sub_29A12EF7C(v3, &v25, &v43, 0x12uLL);
  for (i = 136; i != -8; i -= 8)
  {
    v23 = *(&v25 + i);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AB69194(_Unwind_Exception *a1)
{
  v3 = 136;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[17];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[16];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[15];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[14];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[13];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[12];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[11];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[10];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[9];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[8];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[7];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[6];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[5];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[4];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[3];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[2];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[1];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayout::ParseLayout(uint64_t a1, void *a2, pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v5[1] = 0;
  if (sub_29AB67D24(a3, a2, v5))
  {
    sub_29AB6945C(a1, v5);
  }

  return sub_29A186B14(v5);
}

void sub_29AB69448(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29AB6945C(uint64_t a1, uint64_t *a2)
{
  sub_29AB6B850(a2, &v92);
  v3 = v92;
  v74 = v93;
  if (v92 != v93)
  {
    do
    {
      v75 = v3;
      sub_29AB6B850(v3, v91);
      v5 = v91[0];
      v4 = v91[1];
      while (v5 != v4)
      {
        sub_29AB6B850(v5, &v89);
        v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
        if (!v6)
        {
          v6 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
        }

        v7 = *v6;
        v79 = v7;
        if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v79 &= 0xFFFFFFFFFFFFFFF8;
        }

        v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
        if (!v8)
        {
          v8 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
        }

        v9 = *v8;
        v78 = v9;
        if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v78 &= 0xFFFFFFFFFFFFFFF8;
        }

        v76 = 0;
        v77 = 0;
        sub_29AB6BAC8(&v80, 0, 0, &v79, &v78, &v77, &v76);
        if ((v76 & 7) != 0)
        {
          atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v77 & 7) != 0)
        {
          atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v78 & 7) != 0)
        {
          atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v79 & 7) != 0)
        {
          atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v10 = v89;
        v11 = v90;
        if ((((v90 - v89) >> 4) - 3) <= 1)
        {
          sub_29AB6BB90(v89, &v102);
          v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          if (!v12)
          {
            v12 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          }

          v13 = v102;
          v14 = *(v12 + 2);
          if ((v102 & 7) != 0)
          {
            atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v14 ^ v13) <= 7)
          {
            sub_29AB6BB90((v89 + 2), &v101);
            sub_29AB6BB90((v89 + 4), &v100);
            v98 = 0;
            v99 = 0;
            sub_29AB6BAC8(&v102, 1, 1, &v101, &v100, &v99, &v98);
            v80 = v102;
            v81 = DWORD2(v102);
            if ((v82 & 7) != 0)
            {
              atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v82 = v103;
            v103 = 0;
            if ((v83 & 7) != 0)
            {
              atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v83 = v104;
            v104 = 0;
            if ((v84 & 7) != 0)
            {
              atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v84 = v105;
            v105 = 0;
            if ((v85 & 7) != 0)
            {
              atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v85 = v106;
            v106 = 0;
            if ((v86 & 7) != 0)
            {
              atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v86 = v107;
            v107 = 0;
            sub_29AB6BCD8(&v87);
            v87 = v108;
            v88 = v109;
            v109 = 0;
            v108 = 0uLL;
            v110[0] = &v108;
            sub_29AB6C500(v110);
            if ((v107 & 7) != 0)
            {
              atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v106 & 7) != 0)
            {
              atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v105 & 7) != 0)
            {
              atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v104 & 7) != 0)
            {
              atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v103 & 7) != 0)
            {
              atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v98 & 7) != 0)
            {
              atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v99 & 7) != 0)
            {
              atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v100 & 7) != 0)
            {
              atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v101 & 7) != 0)
            {
              atomic_fetch_add_explicit((v101 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (v90 - v89 != 64)
            {
              goto LABEL_546;
            }

LABEL_57:
            sub_29AB6BB90((v89 + 6), &v102);
LABEL_377:
            if ((v84 & 7) != 0)
            {
              atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v84 = v102;
            goto LABEL_546;
          }

          sub_29AB6BB90(v89, &v102);
          v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          if (!v15)
          {
            v15 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          }

          v16 = v102;
          v17 = *(v15 + 3);
          if ((v102 & 7) != 0)
          {
            atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v17 ^ v16) < 8)
          {
            sub_29AB6BB90((v89 + 2), &v97);
            sub_29AB6BB90((v89 + 4), &v96);
            v94 = 0;
            v95 = 0;
            sub_29AB6BAC8(&v102, 2, 1, &v97, &v96, &v95, &v94);
            v80 = v102;
            v81 = DWORD2(v102);
            if ((v82 & 7) != 0)
            {
              atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v82 = v103;
            v103 = 0;
            if ((v83 & 7) != 0)
            {
              atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v83 = v104;
            v104 = 0;
            if ((v84 & 7) != 0)
            {
              atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v84 = v105;
            v105 = 0;
            if ((v85 & 7) != 0)
            {
              atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v85 = v106;
            v106 = 0;
            if ((v86 & 7) != 0)
            {
              atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v86 = v107;
            v107 = 0;
            sub_29AB6BCD8(&v87);
            v87 = v108;
            v88 = v109;
            v109 = 0;
            v108 = 0uLL;
            v110[0] = &v108;
            sub_29AB6C500(v110);
            if ((v107 & 7) != 0)
            {
              atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v106 & 7) != 0)
            {
              atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v105 & 7) != 0)
            {
              atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v104 & 7) != 0)
            {
              atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v103 & 7) != 0)
            {
              atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v94 & 7) != 0)
            {
              atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v95 & 7) != 0)
            {
              atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v96 & 7) != 0)
            {
              atomic_fetch_add_explicit((v96 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v97 & 7) != 0)
            {
              atomic_fetch_add_explicit((v97 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (v90 - v89 != 64)
            {
              goto LABEL_546;
            }

            goto LABEL_57;
          }

          v10 = v89;
          v11 = v90;
        }

        v18 = v11 - v10;
        if (v11 - v10 == 64)
        {
          sub_29AB6BB90(v10, &v102);
          v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          if (!v19)
          {
            v19 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          }

          v20 = v102;
          v21 = *(v19 + 6);
          if ((v102 & 7) != 0)
          {
            atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v21 ^ v20) <= 7)
          {
            sub_29AB6BB90((v89 + 2), &v101);
            sub_29AB6BB90((v89 + 4), &v100);
            sub_29AB6BB90((v89 + 6), &v99);
            v98 = 0;
            sub_29AB6BAC8(&v102, 1, 1, &v101, &v100, &v99, &v98);
            v80 = v102;
            v81 = DWORD2(v102);
            if ((v82 & 7) != 0)
            {
              atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v82 = v103;
            v103 = 0;
            if ((v83 & 7) != 0)
            {
              atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v83 = v104;
            v104 = 0;
            if ((v84 & 7) != 0)
            {
              atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v84 = v105;
            v105 = 0;
            if ((v85 & 7) != 0)
            {
              atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v85 = v106;
            v106 = 0;
            if ((v86 & 7) != 0)
            {
              atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v86 = v107;
            v107 = 0;
            sub_29AB6BCD8(&v87);
            v87 = v108;
            v88 = v109;
            v109 = 0;
            v108 = 0uLL;
            v110[0] = &v108;
            sub_29AB6C500(v110);
            if ((v107 & 7) != 0)
            {
              atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v106 & 7) != 0)
            {
              atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v105 & 7) != 0)
            {
              atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v104 & 7) != 0)
            {
              atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v103 & 7) != 0)
            {
              atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v98 & 7) != 0)
            {
              atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v99 & 7) != 0)
            {
              atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v100 & 7) != 0)
            {
              atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v22 = v101;
LABEL_159:
            if ((v22 & 7) != 0)
            {
              atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            goto LABEL_546;
          }

          sub_29AB6BB90(v89, &v102);
          v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          if (!v23)
          {
            v23 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          }

          v24 = v102;
          v25 = *(v23 + 7);
          if ((v102 & 7) != 0)
          {
            atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v25 ^ v24) < 8)
          {
            sub_29AB6BB90((v89 + 2), &v97);
            sub_29AB6BB90((v89 + 4), &v96);
            sub_29AB6BB90((v89 + 6), &v95);
            v94 = 0;
            sub_29AB6BAC8(&v102, 2, 1, &v97, &v96, &v95, &v94);
            v80 = v102;
            v81 = DWORD2(v102);
            if ((v82 & 7) != 0)
            {
              atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v82 = v103;
            v103 = 0;
            if ((v83 & 7) != 0)
            {
              atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v83 = v104;
            v104 = 0;
            if ((v84 & 7) != 0)
            {
              atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v84 = v105;
            v105 = 0;
            if ((v85 & 7) != 0)
            {
              atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v85 = v106;
            v106 = 0;
            if ((v86 & 7) != 0)
            {
              atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v86 = v107;
            v107 = 0;
            sub_29AB6BCD8(&v87);
            v87 = v108;
            v88 = v109;
            v109 = 0;
            v108 = 0uLL;
            v110[0] = &v108;
            sub_29AB6C500(v110);
            if ((v107 & 7) != 0)
            {
              atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v106 & 7) != 0)
            {
              atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v105 & 7) != 0)
            {
              atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v104 & 7) != 0)
            {
              atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v103 & 7) != 0)
            {
              atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v94 & 7) != 0)
            {
              atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v95 & 7) != 0)
            {
              atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v96 & 7) != 0)
            {
              atomic_fetch_add_explicit((v96 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v22 = v97;
            goto LABEL_159;
          }

          v10 = v89;
          v11 = v90;
          v18 = v90 - v89;
        }

        if (v18 > 0x3F)
        {
          sub_29AB6BB90(v10, &v102);
          v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          if (!v32)
          {
            v32 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          }

          v33 = v102;
          v34 = *(v32 + 4);
          if ((v102 & 7) != 0)
          {
            atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v34 ^ v33) <= 7)
          {
            v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            if (!v35)
            {
              v35 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            }

            v36 = *(v35 + 1);
            v101 = v36;
            if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v101 &= 0xFFFFFFFFFFFFFFF8;
            }

            sub_29AB6BB90((v89 + 4), &v100);
            v98 = 0;
            v99 = 0;
            sub_29AB6BAC8(&v102, 1, 2, &v101, &v100, &v99, &v98);
            v80 = v102;
            v81 = DWORD2(v102);
            if ((v82 & 7) != 0)
            {
              atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v82 = v103;
            v103 = 0;
            if ((v83 & 7) != 0)
            {
              atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v83 = v104;
            v104 = 0;
            if ((v84 & 7) != 0)
            {
              atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v84 = v105;
            v105 = 0;
            if ((v85 & 7) != 0)
            {
              atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v85 = v106;
            v106 = 0;
            if ((v86 & 7) != 0)
            {
              atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v86 = v107;
            v107 = 0;
            sub_29AB6BCD8(&v87);
            v87 = v108;
            v88 = v109;
            v109 = 0;
            v108 = 0uLL;
            v110[0] = &v108;
            sub_29AB6C500(v110);
            if ((v107 & 7) != 0)
            {
              atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v106 & 7) != 0)
            {
              atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v105 & 7) != 0)
            {
              atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v104 & 7) != 0)
            {
              atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v103 & 7) != 0)
            {
              atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v98 & 7) != 0)
            {
              atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v99 & 7) != 0)
            {
              atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v100 & 7) != 0)
            {
              atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v101 & 7) != 0)
            {
              atomic_fetch_add_explicit((v101 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            sub_29AB6BB90((v89 + 2), &v102);
            if ((v86 & 7) != 0)
            {
              atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            goto LABEL_545;
          }

          sub_29AB6BB90(v89, &v102);
          v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          if (!v37)
          {
            v37 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          }

          v38 = v102;
          v39 = *(v37 + 5);
          if ((v102 & 7) != 0)
          {
            atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v39 ^ v38) <= 7)
          {
            v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            if (!v40)
            {
              v40 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            }

            v41 = *(v40 + 1);
            v97 = v41;
            if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v97 &= 0xFFFFFFFFFFFFFFF8;
            }

            sub_29AB6BB90((v89 + 4), &v96);
            v94 = 0;
            v95 = 0;
            sub_29AB6BAC8(&v102, 2, 2, &v97, &v96, &v95, &v94);
            v80 = v102;
            v81 = DWORD2(v102);
            if ((v82 & 7) != 0)
            {
              atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v82 = v103;
            v103 = 0;
            if ((v83 & 7) != 0)
            {
              atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v83 = v104;
            v104 = 0;
            if ((v84 & 7) != 0)
            {
              atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v84 = v105;
            v105 = 0;
            if ((v85 & 7) != 0)
            {
              atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v85 = v106;
            v106 = 0;
            if ((v86 & 7) != 0)
            {
              atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v86 = v107;
            v107 = 0;
            sub_29AB6BCD8(&v87);
            v87 = v108;
            v88 = v109;
            v109 = 0;
            v108 = 0uLL;
            v110[0] = &v108;
            sub_29AB6C500(v110);
            if ((v107 & 7) != 0)
            {
              atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v106 & 7) != 0)
            {
              atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v105 & 7) != 0)
            {
              atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v104 & 7) != 0)
            {
              atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v103 & 7) != 0)
            {
              atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v94 & 7) != 0)
            {
              atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v95 & 7) != 0)
            {
              atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v96 & 7) != 0)
            {
              atomic_fetch_add_explicit((v96 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v97 & 7) != 0)
            {
              atomic_fetch_add_explicit((v97 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            sub_29AB6BB90((v89 + 2), &v102);
            if ((v86 & 7) != 0)
            {
              atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            goto LABEL_545;
          }

          v10 = v89;
          v11 = v90;
          if ((v90 - v89) >= 0x41)
          {
            sub_29AB6BB90(v89, &v102);
            v54 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            if (!v54)
            {
              v54 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            }

            v55 = v102;
            v56 = *(v54 + 8);
            if ((v102 & 7) != 0)
            {
              atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v56 ^ v55) <= 7)
            {
              v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
              if (!v57)
              {
                v57 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
              }

              v58 = *(v57 + 1);
              v101 = v58;
              if ((v58 & 7) != 0 && (atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                v101 &= 0xFFFFFFFFFFFFFFF8;
              }

              sub_29AB6BB90((v89 + 4), &v100);
              sub_29AB6BB90((v89 + 6), &v99);
              v98 = 0;
              sub_29AB6BAC8(&v102, 1, 2, &v101, &v100, &v99, &v98);
              v80 = v102;
              v81 = DWORD2(v102);
              if ((v82 & 7) != 0)
              {
                atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v82 = v103;
              v103 = 0;
              if ((v83 & 7) != 0)
              {
                atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v83 = v104;
              v104 = 0;
              if ((v84 & 7) != 0)
              {
                atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v84 = v105;
              v105 = 0;
              if ((v85 & 7) != 0)
              {
                atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v85 = v106;
              v106 = 0;
              if ((v86 & 7) != 0)
              {
                atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v86 = v107;
              v107 = 0;
              sub_29AB6BCD8(&v87);
              v87 = v108;
              v88 = v109;
              v109 = 0;
              v108 = 0uLL;
              v110[0] = &v108;
              sub_29AB6C500(v110);
              if ((v107 & 7) != 0)
              {
                atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v106 & 7) != 0)
              {
                atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v105 & 7) != 0)
              {
                atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v104 & 7) != 0)
              {
                atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v103 & 7) != 0)
              {
                atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v98 & 7) != 0)
              {
                atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v99 & 7) != 0)
              {
                atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v100 & 7) != 0)
              {
                atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v101 & 7) != 0)
              {
                atomic_fetch_add_explicit((v101 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              sub_29AB6BB90((v89 + 2), &v102);
              if ((v86 & 7) != 0)
              {
                atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              goto LABEL_545;
            }

            sub_29AB6BB90(v89, &v102);
            v64 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            if (!v64)
            {
              v64 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            }

            v65 = v102;
            v66 = *(v64 + 9);
            if ((v102 & 7) != 0)
            {
              atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v66 ^ v65) < 8)
            {
              v67 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
              if (!v67)
              {
                v67 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
              }

              v68 = *(v67 + 1);
              v97 = v68;
              if ((v68 & 7) != 0 && (atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                v97 &= 0xFFFFFFFFFFFFFFF8;
              }

              sub_29AB6BB90((v89 + 4), &v96);
              sub_29AB6BB90((v89 + 6), &v95);
              v94 = 0;
              sub_29AB6BAC8(&v102, 2, 2, &v97, &v96, &v95, &v94);
              v80 = v102;
              v81 = DWORD2(v102);
              if ((v82 & 7) != 0)
              {
                atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v82 = v103;
              v103 = 0;
              if ((v83 & 7) != 0)
              {
                atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v83 = v104;
              v104 = 0;
              if ((v84 & 7) != 0)
              {
                atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v84 = v105;
              v105 = 0;
              if ((v85 & 7) != 0)
              {
                atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v85 = v106;
              v106 = 0;
              if ((v86 & 7) != 0)
              {
                atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v86 = v107;
              v107 = 0;
              sub_29AB6BCD8(&v87);
              v87 = v108;
              v88 = v109;
              v109 = 0;
              v108 = 0uLL;
              v110[0] = &v108;
              sub_29AB6C500(v110);
              if ((v107 & 7) != 0)
              {
                atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v106 & 7) != 0)
              {
                atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v105 & 7) != 0)
              {
                atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v104 & 7) != 0)
              {
                atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v103 & 7) != 0)
              {
                atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v94 & 7) != 0)
              {
                atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v95 & 7) != 0)
              {
                atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v96 & 7) != 0)
              {
                atomic_fetch_add_explicit((v96 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v97 & 7) != 0)
              {
                atomic_fetch_add_explicit((v97 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              sub_29AB6BB90((v89 + 2), &v102);
              if ((v86 & 7) != 0)
              {
                atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              goto LABEL_545;
            }

            v10 = v89;
            v11 = v90;
          }
        }

        v26 = v11 - v10;
        if (v26 == 32)
        {
          sub_29AB6BB90(v10, &v102);
          v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          if (!v27)
          {
            v27 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          }

          v28 = v102;
          v29 = *(v27 + 2);
          if ((v102 & 7) != 0)
          {
            atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v29 ^ v28) > 7)
          {
            sub_29AB6BB90(v89, &v102);
            v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            if (!v47)
            {
              v47 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            }

            v48 = v102;
            v49 = *(v47 + 3);
            if ((v102 & 7) != 0)
            {
              atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v49 ^ v48) > 7)
            {
              goto LABEL_546;
            }

            v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            if (!v50)
            {
              v50 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            }

            v51 = *v50;
            v97 = v51;
            if ((v51 & 7) != 0 && (atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v97 &= 0xFFFFFFFFFFFFFFF8;
            }

            v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            if (!v52)
            {
              v52 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            }

            v53 = *v52;
            v96 = v53;
            if ((v53 & 7) != 0 && (atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v96 &= 0xFFFFFFFFFFFFFFF8;
            }

            v94 = 0;
            v95 = 0;
            sub_29AB6BAC8(&v102, 2, 3, &v97, &v96, &v95, &v94);
            v80 = v102;
            v81 = DWORD2(v102);
            if ((v82 & 7) != 0)
            {
              atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v82 = v103;
            v103 = 0;
            if ((v83 & 7) != 0)
            {
              atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v83 = v104;
            v104 = 0;
            if ((v84 & 7) != 0)
            {
              atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v84 = v105;
            v105 = 0;
            if ((v85 & 7) != 0)
            {
              atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v85 = v106;
            v106 = 0;
            if ((v86 & 7) != 0)
            {
              atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v86 = v107;
            v107 = 0;
            sub_29AB6BCD8(&v87);
            v87 = v108;
            v88 = v109;
            v109 = 0;
            v108 = 0uLL;
            v110[0] = &v108;
            sub_29AB6C500(v110);
            if ((v107 & 7) != 0)
            {
              atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v106 & 7) != 0)
            {
              atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v105 & 7) != 0)
            {
              atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v104 & 7) != 0)
            {
              atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v103 & 7) != 0)
            {
              atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v94 & 7) != 0)
            {
              atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v95 & 7) != 0)
            {
              atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v96 & 7) != 0)
            {
              atomic_fetch_add_explicit((v96 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v97 & 7) != 0)
            {
              atomic_fetch_add_explicit((v97 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          else
          {
            v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            if (!v30)
            {
              v30 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            }

            v101 = *v30;
            if ((v101 & 7) != 0 && (atomic_fetch_add_explicit((v101 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v101 &= 0xFFFFFFFFFFFFFFF8;
            }

            v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            if (!v31)
            {
              v31 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            }

            v100 = *v31;
            if ((v100 & 7) != 0 && (atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v100 &= 0xFFFFFFFFFFFFFFF8;
            }

            v98 = 0;
            v99 = 0;
            sub_29AB6BAC8(&v102, 1, 3, &v101, &v100, &v99, &v98);
            v80 = v102;
            v81 = DWORD2(v102);
            if ((v82 & 7) != 0)
            {
              atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v82 = v103;
            v103 = 0;
            if ((v83 & 7) != 0)
            {
              atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v83 = v104;
            v104 = 0;
            if ((v84 & 7) != 0)
            {
              atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v84 = v105;
            v105 = 0;
            if ((v85 & 7) != 0)
            {
              atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v85 = v106;
            v106 = 0;
            if ((v86 & 7) != 0)
            {
              atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v86 = v107;
            v107 = 0;
            sub_29AB6BCD8(&v87);
            v87 = v108;
            v88 = v109;
            v109 = 0;
            v108 = 0uLL;
            v110[0] = &v108;
            sub_29AB6C500(v110);
            if ((v107 & 7) != 0)
            {
              atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v106 & 7) != 0)
            {
              atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v105 & 7) != 0)
            {
              atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v104 & 7) != 0)
            {
              atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v103 & 7) != 0)
            {
              atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v98 & 7) != 0)
            {
              atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v99 & 7) != 0)
            {
              atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v100 & 7) != 0)
            {
              atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v101 & 7) != 0)
            {
              atomic_fetch_add_explicit((v101 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          sub_29AB6BB90((v89 + 2), &v102);
          goto LABEL_377;
        }

        if (v26 <= 0x3F)
        {
          goto LABEL_250;
        }

        sub_29AB6BB90(v10, &v102);
        v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
        if (!v42)
        {
          v42 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
        }

        v43 = v102;
        v44 = *(v42 + 10);
        if ((v102 & 7) != 0)
        {
          atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v44 ^ v43) > 7)
        {
          if ((v90 - v89) < 0x40)
          {
            goto LABEL_250;
          }

          sub_29AB6BB90(v89, &v102);
          v59 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          if (!v59)
          {
            v59 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          }

          v60 = v102;
          v61 = *(v59 + 11);
          if ((v102 & 7) != 0)
          {
            atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v61 ^ v60) > 7)
          {
            sub_29AB6BB90(v89, &v102);
            v69 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            if (!v69)
            {
              v69 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            }

            v70 = v102;
            v71 = *(v69 + 12);
            if ((v102 & 7) != 0)
            {
              atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v71 ^ v70) > 7)
            {
LABEL_250:
              *&v102 = "hio/glslfxResourceLayout.cpp";
              *(&v102 + 1) = "_ParsePerStageLayout";
              v103 = 288;
              v104 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ParsePerStageLayout(ElementVector *, const VtValue &)";
              LOBYTE(v105) = 0;
              pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v102, 1, "Error parsing PerStageLayout");
              goto LABEL_547;
            }

            v72 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            if (!v72)
            {
              v72 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            }

            v73 = *(v72 + 12);
            v97 = v73;
            if ((v73 & 7) != 0 && (atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v97 &= 0xFFFFFFFFFFFFFFF8;
            }

            sub_29AB6BB90((v89 + 4), &v96);
            v94 = 0;
            v95 = 0;
            sub_29AB6BAC8(&v102, 0, 8, &v97, &v96, &v95, &v94);
            v80 = v102;
            v81 = DWORD2(v102);
            if ((v82 & 7) != 0)
            {
              atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v82 = v103;
            v103 = 0;
            if ((v83 & 7) != 0)
            {
              atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v83 = v104;
            v104 = 0;
            if ((v84 & 7) != 0)
            {
              atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v84 = v105;
            v105 = 0;
            if ((v85 & 7) != 0)
            {
              atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v85 = v106;
            v106 = 0;
            if ((v86 & 7) != 0)
            {
              atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v86 = v107;
            v107 = 0;
            sub_29AB6BCD8(&v87);
            v87 = v108;
            v88 = v109;
            v109 = 0;
            v108 = 0uLL;
            v110[0] = &v108;
            sub_29AB6C500(v110);
            if ((v107 & 7) != 0)
            {
              atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v106 & 7) != 0)
            {
              atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v105 & 7) != 0)
            {
              atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v104 & 7) != 0)
            {
              atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v103 & 7) != 0)
            {
              atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v94 & 7) != 0)
            {
              atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v95 & 7) != 0)
            {
              atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v96 & 7) != 0)
            {
              atomic_fetch_add_explicit((v96 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v97 & 7) != 0)
            {
              atomic_fetch_add_explicit((v97 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            sub_29AB6BB90((v89 + 2), &v102);
            if ((v86 & 7) != 0)
            {
              atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          else
          {
            v62 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            if (!v62)
            {
              v62 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            }

            v63 = *(v62 + 11);
            v101 = v63;
            if ((v63 & 7) != 0 && (atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v101 &= 0xFFFFFFFFFFFFFFF8;
            }

            sub_29AB6BB90((v89 + 4), &v100);
            v98 = 0;
            v99 = 0;
            sub_29AB6BAC8(&v102, 0, 7, &v101, &v100, &v99, &v98);
            v80 = v102;
            v81 = DWORD2(v102);
            if ((v82 & 7) != 0)
            {
              atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v82 = v103;
            v103 = 0;
            if ((v83 & 7) != 0)
            {
              atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v83 = v104;
            v104 = 0;
            if ((v84 & 7) != 0)
            {
              atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v84 = v105;
            v105 = 0;
            if ((v85 & 7) != 0)
            {
              atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v85 = v106;
            v106 = 0;
            if ((v86 & 7) != 0)
            {
              atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v86 = v107;
            v107 = 0;
            sub_29AB6BCD8(&v87);
            v87 = v108;
            v88 = v109;
            v109 = 0;
            v108 = 0uLL;
            v110[0] = &v108;
            sub_29AB6C500(v110);
            if ((v107 & 7) != 0)
            {
              atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v106 & 7) != 0)
            {
              atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v105 & 7) != 0)
            {
              atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v104 & 7) != 0)
            {
              atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v103 & 7) != 0)
            {
              atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v98 & 7) != 0)
            {
              atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v99 & 7) != 0)
            {
              atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v100 & 7) != 0)
            {
              atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v101 & 7) != 0)
            {
              atomic_fetch_add_explicit((v101 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            sub_29AB6BB90((v89 + 2), &v102);
            if ((v86 & 7) != 0)
            {
              atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }
        }

        else
        {
          v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          if (!v45)
          {
            v45 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          }

          v46 = *(v45 + 10);
          v101 = v46;
          if ((v46 & 7) != 0 && (atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v101 &= 0xFFFFFFFFFFFFFFF8;
          }

          sub_29AB6BB90((v89 + 4), &v100);
          v98 = 0;
          v99 = 0;
          sub_29AB6BAC8(&v102, 0, 6, &v101, &v100, &v99, &v98);
          v80 = v102;
          v81 = DWORD2(v102);
          if ((v82 & 7) != 0)
          {
            atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v82 = v103;
          v103 = 0;
          if ((v83 & 7) != 0)
          {
            atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v83 = v104;
          v104 = 0;
          if ((v84 & 7) != 0)
          {
            atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v84 = v105;
          v105 = 0;
          if ((v85 & 7) != 0)
          {
            atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v85 = v106;
          v106 = 0;
          if ((v86 & 7) != 0)
          {
            atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v86 = v107;
          v107 = 0;
          sub_29AB6BCD8(&v87);
          v87 = v108;
          v88 = v109;
          v109 = 0;
          v108 = 0uLL;
          v110[0] = &v108;
          sub_29AB6C500(v110);
          if ((v107 & 7) != 0)
          {
            atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v106 & 7) != 0)
          {
            atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v105 & 7) != 0)
          {
            atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v104 & 7) != 0)
          {
            atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v103 & 7) != 0)
          {
            atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v98 & 7) != 0)
          {
            atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v99 & 7) != 0)
          {
            atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v100 & 7) != 0)
          {
            atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v101 & 7) != 0)
          {
            atomic_fetch_add_explicit((v101 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          sub_29AB6BB90((v89 + 2), &v102);
          if ((v86 & 7) != 0)
          {
            atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

LABEL_545:
        v86 = v102;
        sub_29AB6BDA8(&v89, &v102);
        sub_29AB6BCD8(&v87);
        v87 = v102;
        v88 = v103;
        v103 = 0;
        v102 = 0uLL;
        v110[0] = &v102;
        sub_29AB6C500(v110);
LABEL_546:
        sub_29AB6B8B0(a1, &v80);
LABEL_547:
        *&v102 = &v87;
        sub_29AB6C500(&v102);
        if ((v86 & 7) != 0)
        {
          atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v85 & 7) != 0)
        {
          atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v84 & 7) != 0)
        {
          atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v83 & 7) != 0)
        {
          atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v82 & 7) != 0)
        {
          atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *&v102 = &v89;
        sub_29A1D0D38(&v102);
        v5 += 2;
      }

      *&v102 = v91;
      sub_29A1D0D38(&v102);
      v3 = v75 + 2;
    }

    while (v75 + 2 != v74);
  }

  *&v102 = &v92;
  sub_29A1D0D38(&v102);
}