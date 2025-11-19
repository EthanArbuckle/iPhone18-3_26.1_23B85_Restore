uint64_t sub_298ADC128(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 40;
  *(a1 + 88) = 0;
  *(a1 + 32) = 0x400000000;
  *(a1 + 72) = a1 + 88;
  *(a1 + 80) = 0;
  *(a1 + 96) = 1;
  *(a1 + 296) = 0;
  *(a1 + 304) = a1;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 328) = 1;
  *(a1 + 328) = sub_298B21768(0, 1, "vm-overlap-error");
  return a1;
}

void sub_298ADC1D4(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unsigned __int8 *a4@<X3>, void *a5@<X8>)
{
  v26[8] = *MEMORY[0x29EDCA608];
  v10 = a1 + 104;
  v23 = a1 + 104;
  v24 = v26;
  v25 = 0x400000000;
  if (*(a1 + 296))
  {
    sub_298ADE3BC(&v23, a2);
  }

  else
  {
    v14 = *(a1 + 300);
    if (v14)
    {
      v15 = 0;
      v16 = (a1 + 112);
      while (1)
      {
        v17 = *v16;
        v16 += 2;
        if (v17 > a2)
        {
          break;
        }

        if (v14 == ++v15)
        {
          v15 = *(a1 + 300);
          break;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    sub_298ADE660(&v24, v10, v14, v15);
  }

  if (v25 && v24[3] < v24[2] && *(*&v24[4 * v25 - 4] + 16 * v24[4 * v25 - 1]) < a3)
  {
    if (*(a1 + 328) == 1)
    {
      v11 = std::generic_category();
      v21 = 257;
      v18 = "VM region already mapped.";
      v19 = 259;
      sub_298ADC860(v20, &v18, v22);
      sub_298ADDCA4(45, v11, v22);
    }
  }

  else
  {
    sub_298ADCAC8(v10, a2, a3, *a4);
    v12 = *(a1 + 312);
    if (v12 <= a3)
    {
      v12 = a3;
    }

    *(a1 + 312) = v12;
  }

  *a5 = 0;
  if (v24 != v26)
  {
    free(v24);
  }

  v13 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298ADC6B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  *a1 = 0;
  v14 = v7;
  v15 = 0;
  sub_298ADE6E8(&v15, &v14, &v13);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v8 = v13;
  *a4 = v13;
  v9 = *a2;
  *a2 = 0;
  v14 = v9;
  v15 = v8;
  sub_298ADE6E8(&v15, &v14, &v13);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v10 = v13;
  v11 = *a3;
  *a3 = 0;
  v14 = v11;
  v15 = v10;
  sub_298ADE6E8(&v15, &v14, &v13);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  result = v15;
  if (v15)
  {
    result = (*(*v15 + 8))(v15);
  }

  *a4 = v13;
  return result;
}

uint64_t *sub_298ADC860@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 32);
  if (*(result + 32) && (v4 = *(a2 + 32), *(a2 + 32)))
  {
    if (v3 == 1)
    {
      v5 = *(a2 + 1);
      *a3 = *a2;
      *(a3 + 16) = v5;
      *(a3 + 32) = a2[4];
    }

    else if (v4 == 1)
    {
      v6 = *(result + 1);
      *a3 = *result;
      *(a3 + 16) = v6;
      *(a3 + 32) = result[4];
    }

    else
    {
      v7 = *result;
      v8 = result[1];
      if (*(result + 33) != 1)
      {
        LOBYTE(v3) = 2;
        v7 = result;
      }

      v9 = a2[1];
      if (*(a2 + 33) == 1)
      {
        v10 = *a2;
      }

      else
      {
        LOBYTE(v4) = 2;
        v10 = a2;
      }

      *a3 = v7;
      *(a3 + 8) = v8;
      *(a3 + 16) = v10;
      *(a3 + 24) = v9;
      *(a3 + 32) = v3;
      *(a3 + 33) = v4;
    }
  }

  else
  {
    *(a3 + 32) = 256;
  }

  return result;
}

void sub_298ADC8F4(std::string *a1, unint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  *(&v14.__r_.__value_.__s + 23) = 2;
  strcpy(&v14, "0x");
  if (a2)
  {
    v3 = 16;
    do
    {
      v15[v3--] = a0123456789abcd_1[a2 & 0xF] | 0x20;
      v4 = a2 >= 0x10;
      a2 >>= 4;
    }

    while (v4);
    v5 = v3 + 1;
    v6 = 16 - v3;
    if ((16 - v3) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }
  }

  else
  {
    v15[16] = 48;
    v5 = 16;
    v6 = 1;
  }

  if (v6 > 0x16)
  {
    operator new();
  }

  v13 = v6;
  if (v5 != 17)
  {
    memcpy(__p, &v15[v5], v6);
  }

  *(__p + v6) = 0;
  if ((v13 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v8 = v13;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = std::string::append(&v14, v7, v8);
  *a1 = *v9;
  v9->__r_.__value_.__r.__words[0] = 0;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    operator delete(v14.__r_.__value_.__l.__data_);
    v11 = *MEMORY[0x29EDCA608];
    return;
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  v10 = *MEMORY[0x29EDCA608];
}

void sub_298ADCAC8(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v17[8] = *MEMORY[0x29EDCA608];
  if (*(a1 + 192))
  {
    v14 = a1;
    v15 = v17;
    v16 = 0x400000000;
    sub_298ADE3BC(&v14, a2);
LABEL_3:
    sub_298ADEF7C(&v14, a2, a3, a4);
    if (v15 != v17)
    {
      free(v15);
    }

    goto LABEL_5;
  }

  v8 = *(a1 + 196);
  if (v8 == 11)
  {
    v14 = a1;
    v15 = v17;
    v16 = 0x400000000;
    if (*(a1 + 8) > a2)
    {
      v10 = a1;
      v11 = 0;
    }

    else if (*(a1 + 24) > a2)
    {
      v10 = a1;
      v11 = 1;
    }

    else if (*(a1 + 40) > a2)
    {
      v10 = a1;
      v11 = 2;
    }

    else if (*(a1 + 56) > a2)
    {
      v10 = a1;
      v11 = 3;
    }

    else if (*(a1 + 72) > a2)
    {
      v10 = a1;
      v11 = 4;
    }

    else if (*(a1 + 88) > a2)
    {
      v10 = a1;
      v11 = 5;
    }

    else if (*(a1 + 104) > a2)
    {
      v10 = a1;
      v11 = 6;
    }

    else if (*(a1 + 120) > a2)
    {
      v10 = a1;
      v11 = 7;
    }

    else if (*(a1 + 136) > a2)
    {
      v10 = a1;
      v11 = 8;
    }

    else if (*(a1 + 152) > a2)
    {
      v10 = a1;
      v11 = 9;
    }

    else
    {
      v10 = a1;
      if (*(a1 + 168) > a2)
      {
        v11 = 10;
      }

      else
      {
        v11 = 11;
      }
    }

    sub_298ADE660(&v15, v10, 0xBu, v11);
    goto LABEL_3;
  }

  if (v8)
  {
    v9 = 0;
    v12 = (a1 + 8);
    while (1)
    {
      v13 = *v12;
      v12 += 2;
      if (v13 > a2)
      {
        break;
      }

      if (v8 == ++v9)
      {
        LODWORD(v9) = *(a1 + 196);
        break;
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  LODWORD(v14) = v9;
  *(a1 + 196) = sub_298ADF074(a1, &v14, v8, a2, a3, a4);
LABEL_5:
  v7 = *MEMORY[0x29EDCA608];
}

void sub_298ADCD18(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v29[8] = *MEMORY[0x29EDCA608];
  v10 = a1 + 104;
  v26 = a1 + 104;
  v27 = v29;
  v28 = 0x400000000;
  if (*(a1 + 296))
  {
    sub_298AE2210(&v26, a2);
    v11 = v28;
    if (!v28)
    {
LABEL_6:
      sub_298ADD2D0(v10, a2, a3, *a4);
      v13 = *(a1 + 312);
      if (v13 <= a3)
      {
        v13 = a3;
      }

      *(a1 + 312) = v13;
      goto LABEL_9;
    }

    v12 = v27;
  }

  else
  {
    v15 = *(a1 + 300);
    if (v15)
    {
      v18 = 0;
      v19 = (a1 + 112);
      while (1)
      {
        v20 = *v19;
        v19 += 2;
        if (v20 > a2)
        {
          break;
        }

        if (v15 == ++v18)
        {
          v18 = *(a1 + 300);
          break;
        }
      }

      v16 = v15 | (v18 << 32);
    }

    else
    {
      v16 = 0;
    }

    v29[0] = a1 + 104;
    v29[1] = v16;
    v11 = 1;
    LODWORD(v28) = 1;
    v12 = v29;
  }

  if (*(v12 + 3) >= *(v12 + 2) || *(v12[2 * v11 - 2] + 16 * HIDWORD(v12[2 * v11 - 1])) >= a3)
  {
    goto LABEL_6;
  }

  if (*(a1 + 328) == 1)
  {
    v17 = std::generic_category();
    v24 = 257;
    v21 = "VM region already mapped.";
    v22 = 259;
    sub_298ADC860(v23, &v21, v25);
    sub_298ADDCA4(45, v17, v25);
  }

LABEL_9:
  *a5 = 0;
  if (v27 != v29)
  {
    free(v27);
  }

  v14 = *MEMORY[0x29EDCA608];
}

_DWORD *sub_298ADD264@<X0>(_DWORD *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a3 + 24;
  *(a3 + 16) = 0x400000000;
  if (result[48])
  {
    return sub_298AE2210(a3, a2);
  }

  v3 = result[49];
  if (v3)
  {
    v5 = 0;
    v6 = (result + 2);
    while (1)
    {
      v7 = *v6;
      v6 += 2;
      if (v7 > a2)
      {
        break;
      }

      if (v3 == ++v5)
      {
        v5 = result[49];
        break;
      }
    }

    v4 = v3 | (v5 << 32);
  }

  else
  {
    v4 = 0;
  }

  *(a3 + 24) = result;
  *(a3 + 32) = v4;
  *(a3 + 16) = 1;
  return result;
}

void sub_298ADD2D0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v16[8] = *MEMORY[0x29EDCA608];
  if (*(a1 + 192))
  {
    v13 = a1;
    v14 = v16;
    v15 = 0x400000000;
    sub_298AE2210(&v13, a2);
LABEL_3:
    sub_298AE2384(&v13, a2, a3, a4);
    if (v14 != v16)
    {
      free(v14);
    }

    goto LABEL_5;
  }

  v8 = *(a1 + 196);
  if (v8 == 8)
  {
    v13 = a1;
    v14 = v16;
    HIDWORD(v15) = 4;
    if (*(a1 + 8) > a2)
    {
      v10 = 8;
    }

    else if (*(a1 + 24) > a2)
    {
      v10 = 0x100000008;
    }

    else if (*(a1 + 40) > a2)
    {
      v10 = 0x200000008;
    }

    else if (*(a1 + 56) > a2)
    {
      v10 = 0x300000008;
    }

    else if (*(a1 + 72) > a2)
    {
      v10 = 0x400000008;
    }

    else if (*(a1 + 88) > a2)
    {
      v10 = 0x500000008;
    }

    else if (*(a1 + 104) > a2)
    {
      v10 = 0x600000008;
    }

    else
    {
      v10 = 0x800000008;
      if (*(a1 + 120) > a2)
      {
        v10 = 0x700000008;
      }
    }

    v16[0] = a1;
    v16[1] = v10;
    LODWORD(v15) = 1;
    goto LABEL_3;
  }

  if (v8)
  {
    v9 = 0;
    v11 = (a1 + 8);
    while (1)
    {
      v12 = *v11;
      v11 += 2;
      if (v12 > a2)
      {
        break;
      }

      if (v8 == ++v9)
      {
        LODWORD(v9) = *(a1 + 196);
        break;
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  LODWORD(v13) = v9;
  *(a1 + 196) = sub_298AE247C(a1, &v13, v8, a2, a3, a4);
LABEL_5:
  v7 = *MEMORY[0x29EDCA608];
}

void sub_298ADD4C4(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v25[8] = *MEMORY[0x29EDCA608];
  v21 = *(a1 + 328);
  sub_298ADD264((a1 + 104), a2, &v22);
  if (v24)
  {
    v8 = v23;
    if (*(v23 + 3) < *(v23 + 2))
    {
      v9 = v23 + 16 * v24;
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = (v10 + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      if (*v12 <= a2 && v13 >= a3)
      {
        v18 = *(v10 + 8 * v11 + 128);
        v19 = v22;
        if (*(v22 + 192))
        {
          sub_298AE2C4C(&v22, 1);
          if (v14 == a2)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v20 = *(v22 + 196);
          if (v11 + 1 != v20)
          {
            do
            {
              *(v19 + 16 * v11) = *(v19 + 16 * (v11 + 1));
              *(v19 + 128 + 8 * v11) = *(v19 + 128 + 8 * (v11 + 1));
              LODWORD(v11) = v11 + 1;
            }

            while (v20 - 1 != v11);
            v8 = v23;
          }

          *(v19 + 196) = v20 - 1;
          v8[2] = v20 - 1;
          if (v14 == a2)
          {
LABEL_13:
            if (v13 != a3)
            {
              sub_298ADD2D0(a1 + 104, a3, v13, v18);
            }

            *a4 = 0;
            v16 = v23;
            if (v23 != v25)
            {
              goto LABEL_8;
            }

            goto LABEL_9;
          }
        }

        sub_298ADD2D0(a1 + 104, v14, a2, v18);
        goto LABEL_13;
      }
    }
  }

  sub_298ADD674(&v21, a4);
  v16 = v23;
  if (v23 != v25)
  {
LABEL_8:
    free(v16);
  }

LABEL_9:
  v17 = *MEMORY[0x29EDCA608];
}

_BYTE *sub_298ADD674@<X0>(_BYTE *result@<X0>, void *a2@<X8>)
{
  if (*result == 1)
  {
    std::generic_category();
    v4[0] = "MachOUtilities.h";
    v4[2] = ":";
    v5 = 771;
    v3 = 3;
    LODWORD(__p) = 3160370;
    v6[0] = v4;
    v6[2] = &__p;
    v7 = 1026;
    v8[0] = v6;
    v8[2] = ": ";
    v9 = 770;
    v10[0] = v8;
    v10[2] = "VM region not mapped";
    v11 = 770;
    sub_298B996A4(v10, &v12);
    operator new();
  }

  *a2 = 0;
  return result;
}

char *hwtrace_version_info()
{
  sub_298C3BE18(__s1);
  if ((v4 & 0x80000000) == 0)
  {
    return strdup(__s1);
  }

  v1 = *__s1;
  v2 = strdup(*__s1);
  operator delete(v1);
  return v2;
}

uint64_t hwtrace_version_compatible_decode_format(char *a1, char **a2)
{
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  v10 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 1;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v9 = &unk_2A1F1E040;
  v17 = v18;
  sub_298ADDDB0(&v9);
  v4 = 0;
  if (a1)
  {
    v4 = strlen(a1);
  }

  v5 = sub_298C3CAAC(a1, v4, &v9);
  sub_298B9AE14(&v9);
  v6 = SHIBYTE(v19);
  if (a2)
  {
    if (v19 >= 0)
    {
      v7 = v18;
    }

    else
    {
      v7 = v18[0];
    }

    *a2 = strdup(v7);
  }

  if (v6 < 0)
  {
    operator delete(v18[0]);
  }

  return v5;
}

uint64_t hwtrace_set_logger(unint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong(&qword_2A13C2B78, &v1, a1);
  if (v1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_298ADD988(void **a1)
{
  v26 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v19 = 0;
  LOBYTE(__p[0]) = 0;
  if (v1)
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  v17 = v2;
  *a1 = 0;
  *&buf = &v17;
  *(&buf + 1) = __p;
  v16 = __p;
  if (v1)
  {
    if ((*(*v1 + 48))(v1, &unk_2A13C3652))
    {
      v3 = v1[1];
      v4 = v1[2];
      if (v3 == v4)
      {
        v5 = 0;
      }

      else
      {
        v5 = 0;
        do
        {
          v23 = v5;
          v6 = *v3;
          *v3 = 0;
          v21 = v6;
          sub_298AE4F24(&v22, &v21, &buf, &v16);
          sub_298ADE6E8(&v23, &v22, &v24);
          v5 = v24;
          v24 = 0;
          if (v22)
          {
            (*(*v22 + 8))(v22);
          }

          v7 = v21;
          v21 = 0;
          if (v7)
          {
            (*(*v7 + 8))(v7);
          }

          if (v23)
          {
            (*(*v23 + 8))(v23);
          }

          ++v3;
        }

        while (v3 != v4);
      }

      v20 = v5;
      (*(*v1 + 8))(v1);
    }

    else
    {
      v24 = v1;
      sub_298AE4F24(&v20, &v24, &buf, &v16);
      if (v24)
      {
        (*(*v24 + 8))(v24);
      }
    }
  }

  else
  {
    v20 = 0;
  }

  explicit = atomic_load_explicit(&qword_2A13C2B78, memory_order_acquire);
  if (explicit)
  {
    if (v19 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    explicit(3, v9);
  }

  v10 = sub_298B227A0(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v13 = __p;
    if (v19 < 0)
    {
      v13 = __p[0];
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_298AD8000, v10, OS_LOG_TYPE_ERROR, "%{public}s", &buf, 0xCu);
    result = v17;
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_32:
    v14 = result;
    operator delete(__p[0]);
    result = v14;
    v15 = *MEMORY[0x29EDCA608];
    return result;
  }

  result = v17;
  if (v19 < 0)
  {
    goto LABEL_32;
  }

LABEL_27:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t hwtrace_isa_deinit(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_298ADDDB0(void *a1)
{
  v2 = a1[2];
  if (a1[4] != v2)
  {
    a1[4] = v2;
    v3 = a1;
    sub_298B9BB84(a1);
    a1 = v3;
  }

  return sub_298B9AF84(a1, 0, 0, 0);
}

void sub_298ADDE08(uint64_t a1, void (*a2)(void *, void, uint64_t), uint64_t a3)
{
  v34[4] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 192);
  if (v3)
  {
    v32 = v34;
    v33 = 0x400000000;
    v29 = v31;
    v30 = 0x400000000;
    v6 = *(a1 + 196);
    if (v6)
    {
      v6 = 0;
      v7 = 0;
      v8 = a1 + 8;
      do
      {
        v9 = *(v8 + 8 * v7);
        if (v6 >= HIDWORD(v33))
        {
          v28 = a1;
          sub_298B90A44(&v32, v34, v6 + 1, 8);
          a1 = v28;
          v6 = v33;
        }

        *(v32 + v6) = v9;
        v6 = v33 + 1;
        LODWORD(v33) = v33 + 1;
        ++v7;
      }

      while (v7 != *(a1 + 196));
      v3 = *(a1 + 192);
    }

    v10 = (a1 + (a3 >> 1));
    v11 = (v3 - 1);
    if (v3 != 1)
    {
      if (a3)
      {
        do
        {
          v18 = v33;
          if (v33)
          {
            v19 = 0;
            do
            {
              v20 = 0;
              v21 = v30;
              v22 = 8 * (*(v32 + v19) & 0x3FLL) + 8;
              do
              {
                v23 = *((*(v32 + v19) & 0xFFFFFFFFFFFFFFC0) + v20);
                if (v21 >= HIDWORD(v30))
                {
                  sub_298B90A44(&v29, v31, v21 + 1, 8);
                  v21 = v30;
                }

                *(v29 + v21) = v23;
                v21 = v30 + 1;
                LODWORD(v30) = v30 + 1;
                v20 += 8;
              }

              while (v22 != v20);
              (*(*v10 + a2))(v10, *(v32 + v19++), v11);
            }

            while (v19 != v18);
          }

          LODWORD(v33) = 0;
          sub_298ADE1DC(&v32, &v29);
          v11 = (v11 - 1);
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v33;
          if (v33)
          {
            v13 = 0;
            do
            {
              v14 = 0;
              v15 = v30;
              v16 = 8 * (*(v32 + v13) & 0x3FLL) + 8;
              do
              {
                v17 = *((*(v32 + v13) & 0xFFFFFFFFFFFFFFC0) + v14);
                if (v15 >= HIDWORD(v30))
                {
                  sub_298B90A44(&v29, v31, v15 + 1, 8);
                  v15 = v30;
                }

                *(v29 + v15) = v17;
                v15 = v30 + 1;
                LODWORD(v30) = v30 + 1;
                v14 += 8;
              }

              while (v16 != v14);
              a2(v10, *(v32 + v13++), v11);
            }

            while (v13 != v12);
          }

          LODWORD(v33) = 0;
          sub_298ADE1DC(&v32, &v29);
          v11 = (v11 - 1);
        }

        while (v11);
      }

      v6 = v33;
    }

    if (v6)
    {
      v24 = 0;
      if (a3)
      {
        v26 = 8 * v6;
        do
        {
          (*(*v10 + a2))(v10, *(v32 + v24), 0);
          v24 += 8;
        }

        while (v26 != v24);
      }

      else
      {
        v25 = 8 * v6;
        do
        {
          a2(v10, *(v32 + v24), 0);
          v24 += 8;
        }

        while (v25 != v24);
      }
    }

    if (v29 != v31)
    {
      free(v29);
    }

    if (v32 != v34)
    {
      free(v32);
    }
  }

  v27 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298ADE160(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  *(a2 & 0xFFFFFFFFFFFFFFC0) = *v2;
  *v2 = a2 & 0xFFFFFFFFFFFFFFC0;
  return result;
}

uint64_t sub_298ADE178(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    v3 = a2;
    v4 = result;
    sub_298B90A44(result, (result + 16), v2 + 1, 8);
    a2 = v3;
    result = v4;
    LODWORD(v2) = *(v4 + 8);
  }

  *(*result + 8 * v2) = a2;
  ++*(result + 8);
  return result;
}

uint64_t sub_298ADE1DC(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *result;
    if (*result == result + 16 || *a2 == a2 + 16)
    {
      v5 = *(a2 + 8);
      if (*(result + 12) < v5)
      {
        v18 = result;
        v19 = a2;
        sub_298B90A44(result, (result + 16), v5, 8);
        result = v18;
        a2 = v19;
      }

      v6 = *(result + 8);
      if (*(a2 + 12) < v6)
      {
        v20 = a2;
        v21 = result;
        sub_298B90A44(a2, (a2 + 16), v6, 8);
        result = v21;
        a2 = v20;
        LODWORD(v6) = *(v21 + 8);
      }

      v7 = *(a2 + 8);
      if (v6 >= v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = v6;
      }

      if (v8)
      {
        v15 = 0;
        do
        {
          v16 = *a2;
          v17 = *(*result + v15);
          *(*result + v15) = *(*a2 + v15);
          *(v16 + v15) = v17;
          v15 += 8;
        }

        while (8 * v8 != v15);
        LODWORD(v6) = *(result + 8);
        v7 = *(a2 + 8);
      }

      v9 = v6 - v7;
      if (v6 <= v7)
      {
        v12 = v7 - v6;
        if (v7 > v6)
        {
          if (v8 != v7)
          {
            v13 = result;
            v14 = a2;
            memcpy((*result + 8 * v6), (*a2 + 8 * v8), 8 * (v7 - v8));
            result = v13;
            a2 = v14;
            LODWORD(v6) = *(v13 + 8);
          }

          *(result + 8) = v12 + v6;
          *(a2 + 8) = v8;
        }
      }

      else
      {
        if (v8 != v6)
        {
          v10 = result;
          v11 = a2;
          memcpy((*a2 + 8 * v7), (*result + 8 * v8), 8 * (v6 - v8));
          result = v10;
          a2 = v11;
          v7 = *(v11 + 8);
        }

        *(a2 + 8) = v9 + v7;
        *(result + 8) = v8;
      }
    }

    else
    {
      *result = *a2;
      *a2 = v2;
      v3 = *(result + 8);
      *(result + 8) = *(a2 + 8);
      *(a2 + 8) = v3;
      v4 = *(result + 12);
      *(result + 12) = *(a2 + 12);
      *(a2 + 12) = v4;
    }
  }

  return result;
}

uint64_t sub_298ADE3BC(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 196);
  if (v5)
  {
    v6 = 0;
    while (*(v4 + 96 + 8 * v6) <= a2)
    {
      if (v5 == ++v6)
      {
        v6 = *(*a1 + 196);
        break;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  result = sub_298ADE660(a1 + 8, v4 + 8 * (*(v4 + 192) != 0), v5, v6);
  if (*(a1 + 16) && *(*(a1 + 8) + 12) < *(*(a1 + 8) + 8))
  {

    return sub_298ADE46C(a1, a2);
  }

  return result;
}

uint64_t sub_298ADE46C(uint64_t result, unint64_t a2)
{
  v2 = result + 8;
  v3 = *(result + 16);
  v4 = *(result + 8) + 16 * (v3 - 1);
  v5 = *(*result + 192);
  v6 = *(*v4 + 8 * *(v4 + 12));
  v7 = v5 - v3;
  if (v5 != v3)
  {
    do
    {
      v8 = 0;
      v9 = v6 & 0xFFFFFFFFFFFFFFC0;
      do
      {
        v10 = v8;
        v11 = *((v6 & 0xFFFFFFFFFFFFFFC0) + 0x60 + 8 * v8++);
      }

      while (v11 <= a2);
      if (v3 >= *(result + 20))
      {
        v18 = a2;
        v19 = result;
        sub_298B90A44(v2, (result + 24), v3 + 1, 16);
        a2 = v18;
        result = v19;
        v3 = *(v19 + 16);
      }

      v12 = (*(result + 8) + 16 * v3);
      *v12 = v9;
      v12[1] = (v6 & 0x3F | (v10 << 32)) + 1;
      v3 = *(result + 16) + 1;
      *(result + 16) = v3;
      v6 = *(v9 + 8 * v10);
      --v7;
    }

    while (v7);
  }

  v13 = 0;
  do
  {
    v14 = v13;
    v15 = *((v6 & 0xFFFFFFFFFFFFFFC0) + 16 * v13++ + 8);
  }

  while (v15 <= a2);
  v16 = v14;
  if (v3 >= *(result + 20))
  {
    v20 = result;
    sub_298B90A44(v2, (result + 24), v3 + 1, 16);
    result = v20;
    v3 = *(v20 + 16);
  }

  v17 = (*(result + 8) + 16 * v3);
  *v17 = v6 & 0xFFFFFFFFFFFFFFC0;
  v17[1] = (v6 & 0x3F | (v16 << 32)) + 1;
  ++*(result + 16);
  return result;
}

uint64_t sub_298ADE5DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 8);
  if (v4 >= *(result + 12))
  {
    v6 = a2;
    v7 = result;
    sub_298B90A44(result, (result + 16), v4 + 1, 16);
    a2 = v6;
    result = v7;
    LODWORD(v4) = *(v7 + 8);
  }

  v5 = (*result + 16 * v4);
  *v5 = a2 & 0xFFFFFFFFFFFFFFC0;
  v5[1] = (a2 & 0x3F | (a3 << 32)) + 1;
  ++*(result + 8);
  return result;
}

uint64_t sub_298ADE660(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  *(result + 8) = 0;
  if (*(result + 12))
  {
    v5 = 0;
  }

  else
  {
    v7 = a2;
    v8 = result;
    v9 = a3;
    sub_298B90A44(result, (result + 16), 1uLL, 16);
    a3 = v9;
    a2 = v7;
    result = v8;
    v5 = *(v8 + 8);
  }

  v6 = (*result + 16 * v5);
  *v6 = a2;
  v6[1] = a3 | (a4 << 32);
  ++*(result + 8);
  return result;
}

void sub_298ADE6E8(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  if (!v6)
  {
LABEL_16:
    *a3 = v7;
    *a2 = 0;
    return;
  }

  if (!v7)
  {
    *a3 = v6;
    *a1 = 0;
    return;
  }

  if (!(*(*v6 + 48))(v6, &unk_2A13C3652))
  {
    if (!*a2 || !(*(**a2 + 48))(*a2, &unk_2A13C3652))
    {
      operator new();
    }

    v13 = (*a2 + 8);
    v14 = *v13;
    v17 = *a1;
    *a1 = 0;
    sub_298ADEB1C(v13, v14, &v17);
    v15 = v17;
    v17 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v7 = *a2;
    goto LABEL_16;
  }

  v8 = *a1;
  if (!*a2)
  {
    v10 = 0;
LABEL_19:
    v17 = v10;
    *a2 = 0;
    sub_298ADE9FC(v8 + 8, &v17);
    v16 = v17;
    v17 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    goto LABEL_21;
  }

  v9 = (*(**a2 + 48))(*a2, &unk_2A13C3652);
  v10 = *a2;
  if (!v9)
  {
    goto LABEL_19;
  }

  *a2 = 0;
  v11 = v10[1];
  v12 = v10[2];
  if (v11 == v12)
  {
    goto LABEL_9;
  }

  do
  {
    sub_298ADE9FC(v8 + 8, v11++);
  }

  while (v11 != v12);
  if (v10)
  {
LABEL_9:
    (*(*v10 + 8))(v10);
  }

LABEL_21:
  *a3 = *a1;
  *a1 = 0;
}

void sub_298ADE9FC(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = v8 >> 3;
  v10 = (v8 >> 3) + 1;
  if (v10 >> 61)
  {
    sub_298ADDDA0();
  }

  v11 = v3 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v13 = *a2;
  *a2 = 0;
  *(8 * v9) = v13;
  v6 = 8 * v9 + 8;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t *sub_298ADEB1C(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 < v7)
  {
    if (a2 == v6)
    {
      v15 = *a3;
      *a3 = 0;
      *v6 = v15;
      a1[1] = v6 + 1;
      return v4;
    }

    v8 = a2 + 1;
    v9 = v6 - 1;
    if (v6 < 8)
    {
      a1[1] = v6;
      if (v6 == v8)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v10 = *v9;
      *v9 = 0;
      *v6 = v10;
      a1[1] = v6 + 1;
      if (v6 == v8)
      {
LABEL_24:
        v27 = *a3;
        *a3 = 0;
        v28 = *v4;
        *v4 = v27;
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }

        return v4;
      }
    }

    v23 = a2 - v6 + 8;
    v24 = v6 - 2;
    do
    {
      v25 = *v24;
      *v24 = 0;
      v26 = *v9;
      *v9 = v25;
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      --v9;
      --v24;
      v23 += 8;
    }

    while (v23);
    goto LABEL_24;
  }

  v11 = *a1;
  v12 = ((v6 - *a1) >> 3) + 1;
  if (v12 >> 61)
  {
    sub_298ADDDA0();
  }

  v13 = v7 - v11;
  if (v13 >> 2 > v12)
  {
    v12 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  v33 = a1;
  if (v14)
  {
    if (!(v14 >> 61))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v30 = 0;
  v31 = 8 * ((a2 - v11) >> 3);
  v32 = v31;
  sub_298ADED50(&v30, a3);
  v16 = v31;
  memcpy(v32, v4, a1[1] - v4);
  v17 = *a1;
  v18 = v31;
  *&v32 = v32 + a1[1] - v4;
  a1[1] = v4;
  v19 = v4 - v17;
  v20 = (v18 - (v4 - v17));
  memcpy(v20, v17, v19);
  v21 = *a1;
  *a1 = v20;
  v22 = a1[2];
  *(a1 + 1) = v32;
  *&v32 = v21;
  *(&v32 + 1) = v22;
  v30 = v21;
  v31 = v21;
  if (v21)
  {
    operator delete(v21);
  }

  return v16;
}

void *sub_298ADED50(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = v5 - *result;
    if (v5 <= *result)
    {
      v10 = (v4 - *result) >> 2;
      if (v4 == *result)
      {
        v10 = 1;
      }

      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = &v5[-(((v6 >> 3) + 1) / 2)];
    if (v5 != v4)
    {
      do
      {
        v9 = *v5;
        *v5 = 0;
        result = *v8;
        *v8 = v9;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        ++v5;
        ++v8;
      }

      while (v5 != v4);
      v5 = v3[1];
    }

    v3[1] = &v5[v7];
    v3[2] = v8;
  }

  v11 = v3[2];
  v12 = *a2;
  *a2 = 0;
  *v11 = v12;
  v3[2] = v11 + 1;
  return result;
}

uint64_t sub_298ADEF7C(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *a1;
  if (!*(*a1 + 192))
  {
    v6 = a1;
    v7 = a1 + 8;
    v8 = a2;
    v9 = a3;
    v10 = a4;
    result = sub_298ADF074(*a1, (*(a1 + 8) + 16 * *(a1 + 16) - 4), *(v4 + 196), a2, a3, a4);
    if (result <= 0xB)
    {
      *(v4 + 196) = result;
      *(*v7 + 8) = result;
      return result;
    }

    v11 = sub_298ADF45C(v4, *(*(v6 + 8) + 16 * *(v6 + 16) - 4));
    sub_298B872C4(v7, v4 + 8, *(v4 + 196), v11);
    a1 = v6;
    a2 = v8;
    a3 = v9;
    a4 = v10;
  }

  return sub_298ADF1B0(a1, a2, a3, a4);
}

uint64_t sub_298ADF074(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *a2;
  if (!v6)
  {
LABEL_4:
    if (v6 == a3)
    {
      v9 = (a1 + 16 * a3);
      *v9 = a4;
      v9[1] = a5;
      *(a1 + a3 + 176) = a6;
      return (a3 + 1);
    }

    v14 = a1 + 176;
    if (*(a1 + 176 + v6) == a6)
    {
      v15 = (a1 + 16 * v6);
      if (*v15 == a5)
      {
        *v15 = a4;
        return a3;
      }
    }

    if (a3 != 11)
    {
      v16 = a3;
      do
      {
        *(a1 + 16 * v16) = *(a1 + 16 * (v16 - 1));
        *(v14 + v16) = *(v14 + v16 - 1);
        --v16;
      }

      while (v6 != v16);
      v17 = (a1 + 16 * v6);
      *v17 = a4;
      v17[1] = a5;
      *(v14 + v6) = a6;
      return (a3 + 1);
    }

    return 12;
  }

  v7 = (v6 - 1);
  v8 = a1 + 176;
  if (*(a1 + 176 + v7) != a6 || (v11 = a1 + 16 * v7, v13 = *(v11 + 8), v12 = (v11 + 8), v13 != a4))
  {
    if (v6 == 11)
    {
      return 12;
    }

    goto LABEL_4;
  }

  *a2 = v7;
  if (v6 != a3 && *(v8 + v6) == a6 && *(a1 + 16 * v6) == a5)
  {
    *v12 = *(a1 + 16 * v6 + 8);
    if (v6 + 1 != a3)
    {
      do
      {
        *(a1 + 16 * v6) = *(a1 + 16 * (v6 + 1));
        *(v8 + v6) = *(v8 + (v6 + 1));
        LODWORD(v6) = v6 + 1;
      }

      while (a3 - 1 != v6);
    }

    return (a3 - 1);
  }

  else
  {
    *v12 = a5;
    return a3;
  }
}

uint64_t sub_298ADF1B0(unsigned int *a1, unint64_t a2, unint64_t a3, int a4)
{
  v8 = a1[4];
  if (!v8 || (v9 = *(a1 + 1), *(v9 + 12) >= *(v9 + 8)))
  {
    v10 = *(*a1 + 192);
    sub_298B87398(a1 + 2, *(*a1 + 192));
    v9 = *(a1 + 1);
    ++*(v9 + 16 * v10 + 12);
    v8 = a1[4];
  }

  v11 = v8;
  v12 = v9 + 16 * v8;
  v13 = *(v12 - 4);
  if (!v13)
  {
    v33 = *(v12 - 16);
    if (*v33 <= a2)
    {
      goto LABEL_30;
    }

    v34 = sub_298B8731C(a1 + 1, v11 - 1);
    if (!v34)
    {
      v13 = 0;
      **a1 = a2;
      goto LABEL_5;
    }

    v35 = *(v34 + 176);
    if (v35 != a4 || (v36 = ((v34 & 0xFFFFFFFFFFFFFFC0) + 16 * (v34 & 0x3F) + 8), *((v34 & 0xFFFFFFFFFFFFFFC0) + 16 * (v34 & 0x3F) + 8) != a2))
    {
LABEL_30:
      v13 = 0;
      goto LABEL_5;
    }

    v37 = v34 & 0x3F;
    v38 = v34 & 0xFFFFFFFFFFFFFFC0;
    result = sub_298B87398(a1 + 2, v11 - 1);
    if (*v33 >= a3 && (*v33 != a3 || *(v33 + 176) != v35))
    {
      v40 = a1[4];
      *v36 = a3;
      v41 = v40 - 1;
      if (v40 == 1)
      {
        return result;
      }

      v26 = *(a1 + 1);
      v42 = 16 * v41;
      while (1)
      {
        v43 = v42 - 16;
        if (v42 == 16)
        {
          break;
        }

        v44 = v26 + v42;
        v45 = *(v44 - 16);
        v47 = v44 - 8;
        LODWORD(v44) = *(v44 - 8);
        v46 = *(v47 + 4);
        *(v45 + 8 * v46 + 96) = a3;
        LODWORD(v45) = v44 - 1;
        v42 = v43;
        if (v46 != v45)
        {
          return result;
        }
      }

LABEL_31:
      *(*v26 + 8 * *(v26 + 12) + 88) = a3;
      return result;
    }

    a2 = *(v38 + 16 * v37);
    sub_298ADF6CC(a1, 0);
    v9 = *(a1 + 1);
    v11 = a1[4];
    v13 = *(v9 + 16 * v11 - 4);
  }

LABEL_5:
  v14 = v9 + 16 * v11;
  v15 = *(v14 - 8);
  v16 = v13 == v15;
  result = sub_298ADF074(*(v14 - 16), (v14 - 4), v15, a2, a3, a4);
  if (result >= 0xC)
  {
    sub_298ADF958(a1, a1[4] - 1);
    v18 = (*(a1 + 1) + 16 * a1[4]);
    v19 = *--v18;
    v20 = *(v18 - 1);
    v16 = v19 == v20;
    result = sub_298ADF074(*(v18 - 3), v18, v20, a2, a3, a4);
  }

  v21 = a1[4];
  v22 = *(a1 + 1);
  *(v22 + 16 * (v21 - 1) + 8) = result;
  if (v21 != 1)
  {
    v23 = v22 + 16 * (v21 - 2);
    *(*v23 + 8 * *(v23 + 12)) = *(*v23 + 8 * *(v23 + 12)) & 0xFFFFFFFFFFFFFFC0 | (result - 1);
  }

  if (v16)
  {
    v24 = a1[4];
    v25 = v24 - 1;
    if (v24 != 1)
    {
      v26 = *(a1 + 1);
      v27 = 16 * v25;
      while (1)
      {
        v28 = v27 - 16;
        if (v27 == 16)
        {
          break;
        }

        v29 = v26 + v27;
        v30 = *(v29 - 16);
        v32 = v29 - 8;
        LODWORD(v29) = *(v29 - 8);
        v31 = *(v32 + 4);
        *(v30 + 8 * v31 + 96) = a3;
        LODWORD(v30) = v29 - 1;
        v27 = v28;
        if (v31 != v30)
        {
          return result;
        }
      }

      goto LABEL_31;
    }
  }

  return result;
}

unint64_t sub_298ADF45C(uint64_t a1, unsigned int a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = sub_298B87660(2u, *(a1 + 196), 11, 0, &v21, a2, 1);
  sub_298AE0430(a1);
  v5 = v4;
  v6 = v21;
  if (v21)
  {
    *v4 = *a1;
    *(v4 + 176) = *(a1 + 176);
    if (v6 != 1)
    {
      *(v4 + 16) = *(a1 + 16);
      *(v4 + 177) = *(a1 + 177);
      if (v6 != 2)
      {
        *(v4 + 32) = *(a1 + 32);
        *(v4 + 178) = *(a1 + 178);
        if (v6 != 3)
        {
          v7 = 0;
          v8 = a1 + 179;
          v9 = v4 + 179;
          do
          {
            *(v9 + 16 * v7 - 131) = *(v8 + 16 * v7 - 131);
            *(v9 + v7) = *(v8 + v7);
            ++v7;
          }

          while (v6 - 3 != v7);
        }
      }
    }
  }

  sub_298AE0430(a1);
  v11 = v22;
  if (v22)
  {
    v12 = a1 + 176;
    *v10 = *(a1 + 16 * v6);
    *(v10 + 176) = *(a1 + 176 + v6);
    if (v11 != 1)
    {
      *(v10 + 16) = *(a1 + 16 * (v6 + 1));
      *(v10 + 177) = *(v12 + (v6 + 1));
      if (v11 != 2)
      {
        *(v10 + 32) = *(a1 + 16 * (v6 + 2));
        *(v10 + 178) = *(v12 + (v6 + 2));
        v13 = v11 - 3;
        if (v11 != 3)
        {
          v14 = v6 + 3;
          v15 = (v10 + 179);
          v16 = (v10 + 48);
          do
          {
            *v16++ = *(a1 + 16 * v14);
            *v15++ = *(v12 + v14++);
            --v13;
          }

          while (v13);
        }
      }
    }
  }

  v17 = (v6 - 1);
  v18 = (v11 - 1);
  *(a1 + 176) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 96) = *((v5 & 0xFFFFFFFFFFFFFFC0 | v17 & 0xFFFFFFFFFFFFFFC0) + 16 * v17 + 8);
  *(a1 + 8) = v5 & 0xFFFFFFFFFFFFFFC0 | v17;
  *(a1 + 104) = *((v10 & 0xFFFFFFFFFFFFFFC0 | v18 & 0xFFFFFFFFFFFFFFC0) + 16 * v18 + 8);
  *(a1 + 16) = v10 & 0xFFFFFFFFFFFFFFC0 | v18;
  *a1 = *(v5 & 0xFFFFFFFFFFFFFFC0 | v17 & 0xFFFFFFFFFFFFFFC0);
  *(a1 + 192) = 0x200000001;
  v19 = *MEMORY[0x29EDCA608];
  return v3;
}

unsigned int *sub_298ADF670(unsigned int *result, unsigned int a2)
{
  v3 = result;
  if (!result[2] || *(*result + 12) >= *(*result + 8))
  {
    result = sub_298B87398(result, a2);
    ++*(*v3 + 16 * a2 + 12);
  }

  return result;
}

uint64_t *sub_298ADF6CC(uint64_t *result, int a2)
{
  v3 = result;
  v5 = *result;
  v4 = result[1];
  v6 = *(result + 4);
  v7 = v4 + 16 * v6;
  v8 = *(v7 - 16);
  v9 = *(v7 - 8);
  v10 = v9 - 1;
  if (v9 == 1)
  {
    v11 = *(v5 + 200);
    *v8 = *v11;
    *v11 = v8;
    result = sub_298AE004C(result, *(v5 + 192));
    if (a2)
    {
      if (*(v5 + 192))
      {
        v12 = *(v3 + 4);
        if (v12)
        {
          v13 = v3[1];
          if (*(v13 + 12) < *(v13 + 8))
          {
            v14 = (v13 + 12);
            v15 = *(v3 + 4);
            while (1)
            {
              v16 = *v14;
              v14 += 4;
              if (v16)
              {
                break;
              }

              if (!--v15)
              {
                v17 = v13 + 16 * v12;
                goto LABEL_27;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v18 = *(v7 - 4);
    if (v18 + 1 != v9)
    {
      v19 = v18;
      do
      {
        *&v8[2 * v19] = *&v8[2 * v19 + 2];
        *(v8 + v19 + 176) = *(v8 + v19 + 177);
        ++v19;
      }

      while (v10 != v19);
    }

    v20 = *(v5 + 192);
    *(v4 + 16 * v20 + 8) = v10;
    if (v20)
    {
      v21 = v4 + 16 * (v20 - 1);
      *(*v21 + 8 * *(v21 + 12)) = *(*v21 + 8 * *(v21 + 12)) & 0xFFFFFFFFFFFFFFC0 | (v9 - 2);
      v4 = result[1];
      v6 = *(result + 4);
      v18 = *(v4 + 16 * v6 - 4);
    }

    if (v18 == v10)
    {
      v22 = *(v5 + 192);
      if (v22)
      {
        v23 = v8[2 * (v9 - 2) + 1];
        v24 = 16 * v22;
        while (1)
        {
          v25 = v24 - 16;
          if (v24 == 16)
          {
            break;
          }

          v26 = v4 + v24;
          v27 = *(v26 - 16);
          v29 = v26 - 8;
          LODWORD(v26) = *(v26 - 8);
          v28 = *(v29 + 4);
          *(v27 + 8 * v28 + 96) = v23;
          LODWORD(v27) = v26 - 1;
          v24 = v25;
          if (v28 != v27)
          {
            goto LABEL_30;
          }
        }

        *(*v4 + 8 * *(v4 + 12) + 88) = v23;
      }

LABEL_30:
      v33 = v22 - 1;
      v34 = 1;
      while (1)
      {
        v35 = v34;
        v36 = v33;
        if (!v33)
        {
          break;
        }

        v38 = *(v4 + 16 * v33 + 8);
        v37 = *(v4 + 16 * v33 + 12);
        ++v34;
        --v33;
        if (v37 != v38 - 1)
        {
          v39 = v4 + 16 * v36;
          v40 = v37 + 1;
          *(v39 + 12) = v40;
          if (v40 == v38)
          {
            return result;
          }

          goto LABEL_36;
        }
      }

      v41 = *(v4 + 8);
      v39 = v4;
      v40 = *(v4 + 12) + 1;
      *(v4 + 12) = v40;
      if (v40 == v41)
      {
        return result;
      }

LABEL_36:
      v42 = *(*v39 + 8 * v40);
      if (v35 != 1)
      {
        v43 = v35 - 1;
        v44 = v36 + 1;
        do
        {
          v45 = result[1] + 16 * v44;
          *v45 = v42 & 0xFFFFFFFFFFFFFFC0;
          *(v45 + 8) = (v42 & 0x3F) + 1;
          *(v45 + 12) = 0;
          ++v44;
          v42 = *(v42 & 0xFFFFFFFFFFFFFFC0);
          --v43;
        }

        while (v43);
        v4 = result[1];
      }

      v46 = (v4 + 16 * v22);
      *v46 = v42 & 0xFFFFFFFFFFFFFFC0;
      v46[1] = (v42 & 0x3F) + 1;
    }

    else if (a2)
    {
      if (v6)
      {
        v30 = (v4 + 12);
        v31 = v6;
        while (1)
        {
          v32 = *v30;
          v30 += 4;
          if (v32)
          {
            break;
          }

          if (!--v31)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
LABEL_26:
        v17 = v4 + 16 * v6;
LABEL_27:
        *v5 = **(v17 - 16);
      }
    }
  }

  return result;
}

uint64_t *sub_298ADF958(unsigned int *a1, unsigned int a2)
{
  v2 = a2;
  v97 = *MEMORY[0x29EDCA608];
  v5 = a1 + 2;
  v4 = *(a1 + 1);
  v94 = 0u;
  v95 = 0u;
  v6 = a2;
  v7 = *(v4 + 16 * a2 + 12);
  if (!a2)
  {
    goto LABEL_12;
  }

  v8 = -1;
  while (1)
  {
    v9 = v4 + 16 * (a2 + v8);
    if (!(a2 + v8))
    {
      break;
    }

    --v8;
    if (*(v9 + 12))
    {
      v10 = a2 + v8 + 2;
      goto LABEL_6;
    }
  }

  v10 = 1;
LABEL_6:
  v11 = *(v9 + 12);
  if (v11)
  {
    v12 = *(*v9 + 8 * (v11 - 1));
    if (v10 != a2)
    {
      v13 = a2 - v10;
      do
      {
        v12 = *((v12 & 0xFFFFFFFFFFFFFFC0) + 8 * (v12 & 0x3F));
        --v13;
      }

      while (v13);
    }

    if (v12)
    {
      v14 = 0;
      v15 = (v12 & 0x3F) + 1;
      v96[0] = v15;
      v7 += v15;
      *&v94 = v12 & 0xFFFFFFFFFFFFFFC0;
      LODWORD(v12) = 1;
      goto LABEL_14;
    }

    v15 = 0;
  }

  else
  {
LABEL_12:
    v15 = 0;
    LODWORD(v12) = 0;
  }

  v14 = 1;
LABEL_14:
  v16 = v4 + 16 * a2;
  v17 = *(v16 + 8);
  v96[v12] = v17;
  v18 = v17 + v15;
  v19 = v12 + 1;
  *(&v94 | (8 * v12)) = *v16;
  if (a2)
  {
    v20 = -1;
    while (1)
    {
      v21 = a2 + v20;
      if (!(a2 + v20))
      {
        break;
      }

      v22 = *(v4 + 16 * v21 + 12);
      v23 = *(v4 + 16 * v21 + 8) - 1;
      --v20;
      if (v22 != v23)
      {
        v24 = a2 + v20 + 2;
        goto LABEL_19;
      }
    }

    v22 = *(v4 + 12);
    v23 = *(v4 + 8) - 1;
    v24 = 1;
LABEL_19:
    if (v22 != v23)
    {
      v54 = *(*(v4 + 16 * v21) + 8 * (v22 + 1));
      if (v24 != a2)
      {
        v55 = a2 - v24;
        do
        {
          v54 = *(v54 & 0xFFFFFFFFFFFFFFC0);
          --v55;
        }

        while (v55);
      }

      if (v54)
      {
        v56 = (v54 & 0x3F) + 1;
        v96[v19] = v56;
        v18 += v56;
        *(&v94 + v19) = v54 & 0xFFFFFFFFFFFFFFC0;
        v19 = v12 | 2;
      }
    }
  }

  v25 = v18 + 1;
  if (v18 + 1 <= 11 * v19)
  {
    v26 = 0;
  }

  else
  {
    if (v19 == 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v19 - 1;
    }

    v96[v19] = v96[v26];
    *(&v94 + v19) = *(&v94 + v26);
    v96[v26] = 0;
    v27 = *(*a1 + 200);
    v28 = *v27;
    if (*v27)
    {
      *v27 = *v28;
    }

    else
    {
      v28 = sub_298AE0D6C((v27 + 1), 192, 6);
    }

    *v28 = 0u;
    *(v28 + 16) = 0u;
    *(v28 + 160) = 0u;
    *(v28 + 176) = 0u;
    *(v28 + 128) = 0u;
    *(v28 + 144) = 0u;
    *(v28 + 96) = 0u;
    *(v28 + 112) = 0u;
    *(v28 + 64) = 0u;
    *(v28 + 80) = 0u;
    ++v19;
    *(v28 + 32) = 0u;
    *(v28 + 48) = 0u;
    *(&v94 + v26) = v28;
  }

  v29 = v25 / v19;
  v30 = v25 % v19;
  if (v25 % v19)
  {
    v31 = v29 + 1;
  }

  else
  {
    v31 = v25 / v19;
  }

  v90 = v31;
  if (v7 < v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v19;
  }

  if (v7 < v31)
  {
    v33 = v7;
  }

  else
  {
    v33 = 0;
  }

  if (v19 != 1)
  {
    v34 = v7 - v31;
    v35 = v7 >= v31;
    if (v30 <= 1)
    {
      v36 = v29;
    }

    else
    {
      v36 = v29 + 1;
    }

    v91 = v36;
    v37 = v36 + v31;
    if (v35 && v7 < v37)
    {
      v32 = 1;
      v33 = v34;
    }

    if (v19 != 2)
    {
      if (v30 <= 2)
      {
        v38 = v29;
      }

      else
      {
        v38 = v29 + 1;
      }

      v92 = v38;
      v39 = v38 + v37;
      if (v32 == v19 && v7 < v39)
      {
        v32 = 2;
        v33 = v7 - v37;
      }

      if (v19 != 3)
      {
        if (v30 > 3)
        {
          ++v29;
        }

        v93 = v29;
        if (v32 == v19 && v29 + v39 > v7)
        {
          v32 = 3;
          v33 = v7 - v39;
        }
      }
    }
  }

  --*(&v90 + v32);
  sub_298AE0488(&v94, v19, v96, &v90);
  if ((v14 & 1) == 0)
  {
    sub_298B87398(v5, v2);
  }

  v40 = v90 - 1;
  v41 = *(v94 + 16 * v40 + 8);
  v42 = *v5;
  *(*v5 + 16 * v2 + 8) = v90;
  if (v2)
  {
    *(*(v42 + 16 * (v2 - 1)) + 8 * *(v42 + 16 * (v2 - 1) + 12)) = *(*(v42 + 16 * (v2 - 1)) + 8 * *(v42 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v40;
    v43 = *v5;
    v44 = 16 * v6;
    while (1)
    {
      v45 = v44 - 16;
      if (v44 == 16)
      {
        break;
      }

      v46 = v43 + v44;
      v47 = *(v46 - 16);
      v49 = v46 - 8;
      LODWORD(v46) = *(v46 - 8);
      v48 = *(v49 + 4);
      *(v47 + 8 * v48 + 96) = v41;
      LODWORD(v47) = v46 - 1;
      v44 = v45;
      if (v48 != v47)
      {
        goto LABEL_61;
      }
    }

    *(*v43 + 8 * *(v43 + 12) + 88) = v41;
  }

LABEL_61:
  if (v19 == 1)
  {
    result = 0;
    v51 = 0;
  }

  else
  {
    sub_298B87590(v5, v2);
    v59 = (v91 - 1);
    v60 = *(*(&v94 + 1) + 16 * v59 + 8);
    if (v26 == 1)
    {
      result = sub_298AE0A9C(a1, v2, *(&v94 + 1) & 0xFFFFFFFFFFFFFFC0 | v59, v60);
      v2 += result;
    }

    else
    {
      v61 = *v5;
      *(*v5 + 16 * v2 + 8) = v91;
      if (v2)
      {
        *(*(v61 + 16 * (v2 - 1)) + 8 * *(v61 + 16 * (v2 - 1) + 12)) = *(*(v61 + 16 * (v2 - 1)) + 8 * *(v61 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v59;
        v62 = *v5;
        v63 = 16 * v2;
        while (1)
        {
          v64 = v63 - 16;
          if (v63 == 16)
          {
            break;
          }

          v65 = v62 + v63;
          v66 = *(v65 - 16);
          v68 = v65 - 8;
          LODWORD(v65) = *(v65 - 8);
          v67 = *(v68 + 4);
          *(v66 + 8 * v67 + 96) = v60;
          LODWORD(v66) = v65 - 1;
          v63 = v64;
          if (v67 != v66)
          {
            goto LABEL_81;
          }
        }

        result = 0;
        *(*v62 + 8 * *(v62 + 12) + 88) = v60;
      }

      else
      {
LABEL_81:
        result = 0;
      }
    }

    if (v19 == 2)
    {
      v51 = 1;
    }

    else
    {
      v69 = result;
      sub_298B87590(v5, v2);
      v70 = (v92 - 1);
      v71 = *(v95 + 16 * v70 + 8);
      if (v26 == 2)
      {
        v69 = sub_298AE0A9C(a1, v2, v95 & 0xFFFFFFFFFFFFFFC0 | v70, v71);
        v2 += v69;
      }

      else
      {
        v72 = *v5;
        *(*v5 + 16 * v2 + 8) = v92;
        if (v2)
        {
          *(*(v72 + 16 * (v2 - 1)) + 8 * *(v72 + 16 * (v2 - 1) + 12)) = *(*(v72 + 16 * (v2 - 1)) + 8 * *(v72 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v70;
          v73 = *v5;
          v74 = 16 * v2;
          while (1)
          {
            v75 = v74 - 16;
            if (v74 == 16)
            {
              break;
            }

            v76 = v73 + v74;
            v77 = *(v76 - 16);
            v79 = v76 - 8;
            LODWORD(v76) = *(v76 - 8);
            v78 = *(v79 + 4);
            *(v77 + 8 * v78 + 96) = v71;
            LODWORD(v77) = v76 - 1;
            v74 = v75;
            if (v78 != v77)
            {
              goto LABEL_93;
            }
          }

          *(*v73 + 8 * *(v73 + 12) + 88) = v71;
        }
      }

LABEL_93:
      if (v19 == 3)
      {
        v51 = 2;
      }

      else
      {
        sub_298B87590(v5, v2);
        v80 = (v93 - 1);
        v81 = *(*(&v95 + 1) + 16 * v80 + 8);
        if (v26 == 3)
        {
          v69 = sub_298AE0A9C(a1, v2, *(&v95 + 1) & 0xFFFFFFFFFFFFFFC0 | v80, v81);
          v2 += v69;
        }

        else
        {
          v82 = *v5;
          *(*v5 + 16 * v2 + 8) = v93;
          if (v2)
          {
            *(*(v82 + 16 * (v2 - 1)) + 8 * *(v82 + 16 * (v2 - 1) + 12)) = *(*(v82 + 16 * (v2 - 1)) + 8 * *(v82 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v80;
            v83 = *v5;
            v84 = 16 * v2;
            while (1)
            {
              v85 = v84 - 16;
              if (v84 == 16)
              {
                break;
              }

              v86 = v83 + v84;
              v87 = *(v86 - 16);
              v89 = v86 - 8;
              LODWORD(v86) = *(v86 - 8);
              v88 = *(v89 + 4);
              *(v87 + 8 * v88 + 96) = v81;
              LODWORD(v87) = v86 - 1;
              v84 = v85;
              if (v88 != v87)
              {
                goto LABEL_105;
              }
            }

            *(*v83 + 8 * *(v83 + 12) + 88) = v81;
          }
        }

LABEL_105:
        if (v19 != 4)
        {
          result = sub_298B87590(v5, v2);
          __break(1u);
          return result;
        }

        v51 = 3;
      }

      result = v69;
    }
  }

  v52 = v32 - v51;
  if (v32 != v51)
  {
    do
    {
      v57 = result;
      sub_298B87398(v5, v2);
      result = v57;
    }

    while (!__CFADD__(v52++, 1));
  }

  *(*v5 + 16 * v2 + 12) = v33;
  v53 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *sub_298AE004C(uint64_t *result, unsigned int a2)
{
  v3 = *result;
  v5 = result + 1;
  v4 = result[1];
  v6 = a2 - 1;
  if (a2 != 1)
  {
    v7 = v4 + 16 * v6;
    v8 = *v7;
    v9 = *(v7 + 8);
    if (v9 == 1)
    {
      v10 = *(v3 + 200);
      *v8 = *v10;
      *v10 = v8;
      v11 = result;
      sub_298AE004C();
      result = v11;
    }

    else
    {
      v19 = *(v4 + 16 * v6 + 12);
      if (v19 + 1 != v9)
      {
        do
        {
          v8[v19] = v8[v19 + 1];
          v8[v19 + 12] = v8[v19 + 13];
          ++v19;
        }

        while (v9 - 1 != v19);
        v4 = *v5;
        v9 = *(*v5 + 16 * v6 + 8);
      }

      *(v4 + 16 * v6 + 8) = v9 - 1;
      v20 = a2 - 2;
      v21 = v4 + 16 * (a2 - 2);
      v22 = (v9 - 2);
      *(*v21 + 8 * *(v21 + 12)) = *(*v21 + 8 * *(v21 + 12)) & 0xFFFFFFFFFFFFFFC0 | v22;
      v23 = *v5;
      if (*(*v5 + 16 * v6 + 12) == v9 - 1)
      {
        v24 = v8[v22 + 12];
        v25 = (v23 + 16 * v6 - 8);
        v26 = a2 - 1;
        while (--v26)
        {
          v27 = *(v25 - 1);
          v29 = *v25;
          v28 = v25[1];
          v25 -= 4;
          *(v27 + 8 * v28 + 96) = v24;
          if (v28 != v29 - 1)
          {
            goto LABEL_21;
          }
        }

        *(*v23 + 8 * *(v23 + 12) + 88) = v24;
LABEL_21:
        v31 = 0;
        while (1)
        {
          v32 = v31;
          if (!v20)
          {
            break;
          }

          v33 = v20;
          v34 = v23 + 16 * v20;
          v36 = *(v34 + 8);
          v35 = *(v34 + 12);
          ++v31;
          v20 = v33 - 1;
          if (v35 != v36 - 1)
          {
            v37 = v23 + 16 * v33;
            v38 = v35 + 1;
            *(v37 + 12) = v38;
            if (v38 == v36)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          }
        }

        v39 = *(v23 + 8);
        v37 = v23;
        v38 = *(v23 + 12) + 1;
        *(v23 + 12) = v38;
        if (v38 == v39)
        {
          goto LABEL_46;
        }

LABEL_27:
        v40 = *(*v37 + 8 * v38);
        if (v32)
        {
          v41 = v6 - v32;
          do
          {
            v42 = *v5 + 16 * v41;
            *v42 = v40 & 0xFFFFFFFFFFFFFFC0;
            *(v42 + 8) = (v40 & 0x3F) + 1;
            *(v42 + 12) = 0;
            ++v41;
            v40 = *(v40 & 0xFFFFFFFFFFFFFFC0);
            --v32;
          }

          while (v32);
          v23 = *v5;
        }

        v43 = (v23 + 16 * v6);
        *v43 = v40 & 0xFFFFFFFFFFFFFFC0;
        v43[1] = (v40 & 0x3F) + 1;
      }
    }

    goto LABEL_46;
  }

  v12 = *(v4 + 12);
  v13 = *(v3 + 196);
  v14 = v12 + 1;
  if (v12 + 1 != v13)
  {
    v15 = v3 + 8;
    v16 = v3 + 96;
    v17 = v13 + ~v12;
    if (v17 >= 0x12)
    {
      if (v13 - 2 >= v12 && v13 - 1 >= v14)
      {
        v44 = 8 * (v12 + 1);
        v45 = 8 * v12 - v44;
        if (v45 >= 0x10 && (v44 - 8 * v12 + 88) >= 0x10 && v45 + 88 >= 0x10)
        {
          v14 += v17 & 0xFFFFFFFE;
          v18 = v12 + (v17 & 0xFFFFFFFE);
          v48 = v17 & 0xFFFFFFFE;
          do
          {
            v49 = 8 * (v12 + 1);
            v50 = 8 * v12;
            *(v15 + v50) = *(v15 + v49);
            *(v16 + v50) = *(v16 + v49);
            LODWORD(v12) = v12 + 2;
            v48 -= 2;
          }

          while (v48);
          if (v17 == (v17 & 0xFFFFFFFE))
          {
            goto LABEL_44;
          }
        }

        else
        {
          v18 = v12;
        }
      }

      else
      {
        v18 = v12;
      }
    }

    else
    {
      v18 = v12;
    }

    do
    {
      *(v15 + 8 * v18) = *(v15 + 8 * v14);
      *(v16 + 8 * v18++) = *(v16 + 8 * v14++);
    }

    while (v13 != v14);
LABEL_44:
    v13 = *(v3 + 196);
    v4 = *v5;
  }

  v51 = v13 - 1;
  *(v3 + 196) = v51;
  *(v4 + 8) = v51;
  if (v51)
  {
LABEL_46:
    if (*(result + 4))
    {
      v52 = *v5;
      if (*(*v5 + 12) < *(*v5 + 8))
      {
        v53 = *(*(v52 + 16 * v6) + 8 * *(v52 + 16 * v6 + 12));
        v54 = 16 * a2;
        v55 = v52 + v54;
        *v55 = v53 & 0xFFFFFFFFFFFFFFC0;
        *(v55 + 8) = (v53 & 0x3F) + 1;
        *(*v5 + v54 + 12) = 0;
      }
    }

    return result;
  }

  *(v3 + 192) = 0;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  v56 = *(*result + 196);
  v57 = *result + 8 * (*(*result + 192) != 0);
  *(result + 4) = 0;
  if (*(result + 5))
  {
    v58 = 0;
  }

  else
  {
    v60 = result;
    sub_298B90A44((result + 1), result + 3, 1uLL, 16);
    result = v60;
    v58 = *(v60 + 4);
  }

  v59 = (result[1] + 16 * v58);
  *v59 = v57;
  v59[1] = v56;
  ++*(result + 4);
  return result;
}

double sub_298AE0430(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = *v1;
  if (*v1)
  {
    *v1 = *v2;
  }

  else
  {
    v2 = sub_298AE0D6C((v1 + 1), 192, 6);
  }

  result = 0.0;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return result;
}

uint64_t sub_298AE0488(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 - 1;
  if (a2 != 1)
  {
    v5 = v4;
    do
    {
      v6 = *(a3 + 4 * v5);
      v7 = *(a4 + 4 * v5);
      if (v6 != v7)
      {
        v8 = v5;
        do
        {
          if (!v8)
          {
            break;
          }

          --v8;
          v10 = *(result + 8 * v5);
          v11 = *(result + 8 * v8);
          v12 = *(a3 + 4 * v8);
          v9 = v7 - v6;
          if (v9 >= 1)
          {
            if (v12 < v9)
            {
              v9 = *(a3 + 4 * v8);
            }

            if (11 - v6 < v9)
            {
              v9 = 11 - v6;
            }

            if (v6)
            {
              v29 = v10 + 176;
              v30 = v9 + v6 - 1;
              *(v10 + 16 * v30) = *(v10 + 16 * (v6 - 1));
              *(v10 + 176 + v30) = *(v10 + 176 + v6 - 1);
              if (v6 != 1)
              {
                v31 = v9 + v6 - 2;
                *(v10 + 16 * v31) = *(v10 + 16 * (v6 - 2));
                *(v29 + v31) = *(v29 + v6 - 2);
                if (v6 != 2)
                {
                  v32 = v9 + v6 - 3;
                  *(v10 + 16 * v32) = *(v10 + 16 * (v6 - 3));
                  *(v29 + v32) = *(v29 + v6 - 3);
                  if (v6 != 3)
                  {
                    v33 = v9 + v6 - 4;
                    *(v10 + 16 * v33) = *(v10 + 16 * (v6 - 4));
                    *(v29 + v33) = *(v29 + v6 - 4);
                    if (v6 != 4)
                    {
                      v34 = v6 - 5;
                      v35 = v9 + v6 - 5;
                      *(v10 + 16 * v35) = *(v10 + 16 * (v6 - 5));
                      *(v29 + v35) = *(v29 + v6 - 5);
                      if (v6 != 5)
                      {
                        v36 = v6 - 6;
                        v37 = (v10 + v36 + 176);
                        v38 = (v10 + 16 * v36);
                        v39 = v36 + v9;
                        do
                        {
                          v40 = *v38--;
                          *(v10 + 16 * v39) = v40;
                          LOBYTE(v40) = *v37--;
                          *(v29 + v39--) = v40;
                          --v34;
                        }

                        while (v34);
                      }
                    }
                  }
                }
              }
            }

            if (v9)
            {
              v41 = v12 - v9;
              v42 = v11 + 176;
              *v10 = *(v11 + 16 * (v12 - v9));
              *(v10 + 176) = *(v11 + 176 + (v12 - v9));
              v43 = v12 - v9 + 1;
              if (v43 != v12)
              {
                *(v10 + 16) = *(v11 + 16 * v43);
                *(v10 + 177) = *(v42 + v43);
                v44 = v41 + 2;
                if (v41 + 2 != v12)
                {
                  *(v10 + 32) = *(v11 + 16 * v44);
                  *(v10 + 178) = *(v42 + v44);
                  v45 = v41 + 3;
                  if (v45 != v12)
                  {
                    v46 = (v10 + 179);
                    v47 = (v10 + 48);
                    v48 = v9 - 3;
                    do
                    {
                      *v47++ = *(v11 + 16 * v45);
                      *v46++ = *(v42 + v45++);
                      --v48;
                    }

                    while (v48);
                  }
                }
              }
            }
          }

          else
          {
            v13 = 11 - v12;
            if (-v9 < v6)
            {
              LODWORD(v14) = -v9;
            }

            else
            {
              LODWORD(v14) = v6;
            }

            if (v13 >= v14)
            {
              v14 = v14;
            }

            else
            {
              v14 = v13;
            }

            if (v14)
            {
              v15 = v11 + 176;
              *(v11 + 16 * v12) = *v10;
              *(v11 + 176 + v12) = *(v10 + 176);
              if (v14 != 1)
              {
                v16 = v12 + 1;
                *(v11 + 16 * v16) = *(v10 + 16);
                *(v15 + v16) = *(v10 + 177);
                if (v14 != 2)
                {
                  v17 = v12 + 2;
                  *(v11 + 16 * v17) = *(v10 + 32);
                  *(v15 + v17) = *(v10 + 178);
                  if (v14 != 3)
                  {
                    v18 = v12 + 3;
                    v19 = v14 - 3;
                    v20 = (v10 + 179);
                    v21 = (v10 + 48);
                    do
                    {
                      v22 = *v21++;
                      *(v11 + 16 * v18) = v22;
                      LOBYTE(v22) = *v20++;
                      *(v15 + v18++) = v22;
                      --v19;
                    }

                    while (v19);
                  }
                }
              }
            }

            if (v14 != v6)
            {
              v23 = v10 + 176;
              *v10 = *(v10 + 16 * v14);
              *(v10 + 176) = *(v10 + 176 + v14);
              v24 = v14 + 1;
              if (v14 + 1 != v6)
              {
                *(v10 + 16) = *(v10 + 16 * v24);
                *(v10 + 177) = *(v23 + v24);
                v25 = v14 + 2;
                if (v14 + 2 != v6)
                {
                  *(v10 + 32) = *(v10 + 16 * v25);
                  *(v10 + 178) = *(v23 + v25);
                  v26 = v14 + 3;
                  if (v14 + 3 != v6)
                  {
                    v27 = (v10 + 179);
                    v28 = (v10 + 48);
                    do
                    {
                      *v28++ = *(v10 + 16 * v26);
                      *v27++ = *(v23 + v26++);
                    }

                    while (v6 != v26);
                  }
                }
              }
            }

            v9 = -v14;
          }

          *(a3 + 4 * v8) = v12 - v9;
          v6 = *(a3 + 4 * v5) + v9;
          *(a3 + 4 * v5) = v6;
          v7 = *(a4 + 4 * v5);
        }

        while (v6 < v7);
      }

      --v5;
    }

    while (v5);
    if (a2 >= 2)
    {
      v49 = 0;
      do
      {
        v50 = *(a3 + 4 * v49);
        v51 = *(a4 + 4 * v49);
        if (v50 != v51)
        {
          v52 = v49;
          do
          {
            if (++v52 == a2)
            {
              break;
            }

            v54 = *(result + 8 * v52);
            v55 = *(a3 + 4 * v52);
            v56 = *(result + 8 * v49);
            v53 = v50 - v51;
            if (v53 >= 1)
            {
              if (v50 < v53)
              {
                v53 = v50;
              }

              if (11 - v55 < v53)
              {
                v53 = 11 - v55;
              }

              if (v55)
              {
                v73 = v54 + 176;
                v74 = v53 + v55 - 1;
                *(v54 + 16 * v74) = *(v54 + 16 * (v55 - 1));
                *(v54 + 176 + v74) = *(v54 + 176 + v55 - 1);
                if (v55 != 1)
                {
                  v75 = v53 + v55 - 2;
                  *(v54 + 16 * v75) = *(v54 + 16 * (v55 - 2));
                  *(v73 + v75) = *(v73 + v55 - 2);
                  if (v55 != 2)
                  {
                    v76 = v53 + v55 - 3;
                    *(v54 + 16 * v76) = *(v54 + 16 * (v55 - 3));
                    *(v73 + v76) = *(v73 + v55 - 3);
                    if (v55 != 3)
                    {
                      v77 = v53 + v55 - 4;
                      *(v54 + 16 * v77) = *(v54 + 16 * (v55 - 4));
                      *(v73 + v77) = *(v73 + v55 - 4);
                      if (v55 != 4)
                      {
                        v78 = v55 - 5;
                        v79 = v53 + v55 - 5;
                        *(v54 + 16 * v79) = *(v54 + 16 * (v55 - 5));
                        *(v73 + v79) = *(v73 + v55 - 5);
                        if (v55 != 5)
                        {
                          v80 = v55 - 6;
                          v81 = (v54 + v80 + 176);
                          v82 = (v54 + 16 * v80);
                          v83 = v80 + v53;
                          do
                          {
                            v84 = *v82--;
                            *(v54 + 16 * v83) = v84;
                            LOBYTE(v84) = *v81--;
                            *(v73 + v83--) = v84;
                            --v78;
                          }

                          while (v78);
                        }
                      }
                    }
                  }
                }
              }

              if (v53)
              {
                v85 = v50 - v53;
                v86 = v56 + 176;
                *v54 = *(v56 + 16 * (v50 - v53));
                *(v54 + 176) = *(v56 + 176 + v50 - v53);
                v87 = v50 - v53 + 1;
                if (v87 != v50)
                {
                  *(v54 + 16) = *(v56 + 16 * v87);
                  *(v54 + 177) = *(v86 + v87);
                  v88 = v85 + 2;
                  if (v85 + 2 != v50)
                  {
                    *(v54 + 32) = *(v56 + 16 * v88);
                    *(v54 + 178) = *(v86 + v88);
                    v89 = v85 + 3;
                    if (v89 != v50)
                    {
                      v90 = (v54 + 179);
                      v91 = (v54 + 48);
                      v92 = v53 - 3;
                      do
                      {
                        *v91++ = *(v56 + 16 * v89);
                        *v90++ = *(v86 + v89++);
                        --v92;
                      }

                      while (v92);
                    }
                  }
                }
              }
            }

            else
            {
              v57 = 11 - v50;
              if (-v53 < v55)
              {
                LODWORD(v58) = -v53;
              }

              else
              {
                LODWORD(v58) = *(a3 + 4 * v52);
              }

              if (v57 >= v58)
              {
                v58 = v58;
              }

              else
              {
                v58 = v57;
              }

              if (v58)
              {
                v59 = v56 + 176;
                *(v56 + 16 * v50) = *v54;
                *(v56 + 176 + v50) = *(v54 + 176);
                if (v58 != 1)
                {
                  v60 = v50 + 1;
                  *(v56 + 16 * v60) = *(v54 + 16);
                  *(v59 + v60) = *(v54 + 177);
                  if (v58 != 2)
                  {
                    v61 = v50 + 2;
                    *(v56 + 16 * v61) = *(v54 + 32);
                    *(v59 + v61) = *(v54 + 178);
                    if (v58 != 3)
                    {
                      v62 = v50 + 3;
                      v63 = v58 - 3;
                      v64 = (v54 + 179);
                      v65 = (v54 + 48);
                      do
                      {
                        v66 = *v65++;
                        *(v56 + 16 * v62) = v66;
                        LOBYTE(v66) = *v64++;
                        *(v59 + v62++) = v66;
                        --v63;
                      }

                      while (v63);
                    }
                  }
                }
              }

              if (v58 != v55)
              {
                v67 = v54 + 176;
                *v54 = *(v54 + 16 * v58);
                *(v54 + 176) = *(v54 + 176 + v58);
                v68 = v58 + 1;
                if (v58 + 1 != v55)
                {
                  *(v54 + 16) = *(v54 + 16 * v68);
                  *(v54 + 177) = *(v67 + v68);
                  v69 = v58 + 2;
                  if (v58 + 2 != v55)
                  {
                    *(v54 + 32) = *(v54 + 16 * v69);
                    *(v54 + 178) = *(v67 + v69);
                    v70 = v58 + 3;
                    if (v58 + 3 != v55)
                    {
                      v71 = (v54 + 179);
                      v72 = (v54 + 48);
                      do
                      {
                        *v72++ = *(v54 + 16 * v70);
                        *v71++ = *(v67 + v70++);
                      }

                      while (v55 != v70);
                    }
                  }
                }
              }

              v53 = -v58;
            }

            *(a3 + 4 * v52) = v53 + v55;
            v50 = *(a3 + 4 * v49) - v53;
            *(a3 + 4 * v49) = v50;
            v51 = *(a4 + 4 * v49);
          }

          while (v50 < v51);
        }

        ++v49;
      }

      while (v49 != v4);
    }
  }

  return result;
}

uint64_t *sub_298AE0A9C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = (a1 + 8);
  v8 = *a1;
  v9 = (a2 == 1);
  if (a2 == 1)
  {
    v30 = *(v8 + 196);
    if (v30 <= 0xA)
    {
      v31 = v8 + 8;
      v32 = *(*v7 + 12);
      if (v30 != v32)
      {
        v33 = v32 + ~v32 + v30;
        *(v31 + 8 * v30) = *(v31 + 8 * v33);
        *(v8 + 96 + 8 * v30) = *(v8 + 96 + 8 * v33);
        if (~v32 + v30)
        {
          v40 = v30 - 1;
          do
          {
            *(v31 + 8 * v40) = *(v31 + 8 * (v40 - 1));
            *(v8 + 96 + 8 * v40) = *(v8 + 96 + 8 * (v40 - 1));
            --v40;
          }

          while (v32 != v40);
        }
      }

      v9 = 0;
      v34 = 8 * v32;
      *(v31 + v34) = a3;
      *(v8 + v34 + 96) = a4;
      v35 = *(v8 + 196) + 1;
      *(v8 + 196) = v35;
      v36 = *v7;
      *(v36 + 8) = v35;
      v37 = *(*v36 + 8 * *(v36 + 12));
      *(v36 + 16) = v37 & 0xFFFFFFFFFFFFFFC0;
      *(v36 + 24) = (v37 & 0x3F) + 1;
      return v9;
    }

    v38 = sub_298AE0F38(*a1, *(*v7 + 12));
    sub_298B872C4(v7, v8 + 8, *(v8 + 196), v38);
    a2 = 2;
  }

  v10 = (a2 - 1);
  if (!*(a1 + 16) || (v11 = *v7, *(*v7 + 12) >= *(*v7 + 8)))
  {
    sub_298B87398(v7, a2 - 1);
    v11 = *v7;
    ++*(*v7 + 16 * v10 + 12);
  }

  v12 = v10;
  v13 = *(v11 + 16 * v10 + 8);
  if (v13 == 12)
  {
    v9 = sub_298AE1070(a1, v10);
    v12 = (v10 + v9);
    v11 = *(a1 + 8);
    v13 = *(v11 + 16 * v12 + 8);
    LODWORD(v10) = v10 + v9;
  }

  v14 = (v11 + 16 * v12);
  v15 = *v14;
  v16 = *(v14 + 3);
  if (v13 != v16)
  {
    v17 = v16 + ~v16 + v13;
    *(v15 + 8 * v13) = *(v15 + 8 * v17);
    *(v15 + 96 + 8 * v13) = *(v15 + 96 + 8 * v17);
    if (~v16 + v13)
    {
      v39 = v13 - 1;
      do
      {
        *(v15 + 8 * v39) = *(v15 + 8 * (v39 - 1));
        *(v15 + 96 + 8 * v39) = *(v15 + 96 + 8 * (v39 - 1));
        --v39;
      }

      while (v16 != v39);
    }
  }

  v18 = (v15 + 8 * v16);
  *v18 = a3;
  v18[12] = a4;
  v19 = *v7;
  v20 = *v7 + 16 * v12;
  v21 = *(v20 + 8);
  *(v20 + 8) = v21 + 1;
  if (v10)
  {
    *(*(v19 + 16 * (v10 - 1)) + 8 * *(v19 + 16 * (v10 - 1) + 12)) = *(*(v19 + 16 * (v10 - 1)) + 8 * *(v19 + 16 * (v10 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v21;
    v19 = *v7;
    v20 = *v7 + 16 * v12;
    v22 = *(v20 + 12);
    if (v22 == *(v20 + 8) - 1)
    {
      v23 = (v20 - 8);
      while (--v12)
      {
        v24 = *(v23 - 1);
        v26 = *v23;
        v25 = v23[1];
        v23 -= 4;
        *(v24 + 8 * v25 + 96) = a4;
        if (v25 != v26 - 1)
        {
          goto LABEL_16;
        }
      }

      *(*v19 + 8 * *(v19 + 12) + 88) = a4;
    }
  }

  else
  {
    v22 = *(v20 + 12);
  }

LABEL_16:
  v27 = *(*v20 + 8 * v22);
  v28 = v19 + 16 * (v10 + 1);
  *v28 = v27 & 0xFFFFFFFFFFFFFFC0;
  *(v28 + 8) = (v27 & 0x3F) + 1;
  return v9;
}

unint64_t sub_298AE0D6C(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 80) += a2;
  v3 = (1 << a3) - 1;
  v4 = -(1 << a3);
  if (*a1)
  {
    v5 = ((v3 + *a1) & v4) - *a1 + a2 > *(a1 + 8) - *a1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = v3 + a2;
    if ((v3 + a2) > 0x1000)
    {
      v17 = operator new(v3 + a2, 8uLL);
      sub_298AE0EC0(a1 + 64, v17, v8);
      return (v17 + v3) & v4;
    }

    else
    {
      v10 = *(a1 + 24) >> 7;
      if (v10 >= 0x1E)
      {
        LOBYTE(v10) = 30;
      }

      v11 = 4096 << v10;
      v13 = operator new(4096 << v10, 8uLL);
      v14 = a1;
      v15 = *(a1 + 24);
      if (v15 >= *(a1 + 28))
      {
        v18 = v13;
        sub_298B90A44(a1 + 16, (a1 + 32), v15 + 1, 8);
        v13 = v18;
        v14 = a1;
        LODWORD(v15) = *(a1 + 24);
      }

      *(*(v14 + 16) + 8 * v15) = v13;
      ++*(v14 + 24);
      v6 = &v13[v3] & v4;
      *v14 = v6 + a2;
      *(v14 + 8) = &v13[v11];
    }
  }

  else
  {
    v6 = (v3 + *a1) & v4;
    *a1 = v6 + a2;
  }

  return v6;
}

uint64_t sub_298AE0EC0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3 >= *(result + 12))
  {
    v5 = a2;
    v6 = a3;
    v7 = result;
    sub_298B90A44(result, (result + 16), v3 + 1, 16);
    a2 = v5;
    a3 = v6;
    result = v7;
    LODWORD(v3) = *(v7 + 8);
  }

  v4 = (*result + 16 * v3);
  *v4 = a2;
  v4[1] = a3;
  ++*(result + 8);
  return result;
}

uint64_t sub_298AE0F38(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 196);
  sub_298AE1760(a1);
  if (v4)
  {
    *v5 = *(a1 + 8);
    *(v5 + 96) = *(a1 + 96);
    if (v4 != 1)
    {
      *(v5 + 8) = *(a1 + 16);
      *(v5 + 104) = *(a1 + 104);
      if (v4 != 2)
      {
        *(v5 + 16) = *(a1 + 24);
        *(v5 + 112) = *(a1 + 112);
        if (v4 != 3)
        {
          *(v5 + 24) = *(a1 + 32);
          *(v5 + 120) = *(a1 + 120);
          if (v4 != 4)
          {
            *(v5 + 32) = *(a1 + 40);
            *(v5 + 128) = *(a1 + 128);
            if (v4 != 5)
            {
              *(v5 + 40) = *(a1 + 48);
              *(v5 + 136) = *(a1 + 136);
              if (v4 != 6)
              {
                *(v5 + 48) = *(a1 + 56);
                *(v5 + 144) = *(a1 + 144);
                if (v4 != 7)
                {
                  v6 = v4 - 7;
                  v7 = (v5 + 152);
                  v8 = (a1 + 152);
                  do
                  {
                    *(v7 - 12) = *(v8 - 11);
                    v9 = *v8++;
                    *v7++ = v9;
                    --v6;
                  }

                  while (v6);
                }
              }
            }
          }
        }
      }
    }
  }

  v10 = (v4 - 1);
  *(a1 + 96) = *((v5 & 0xFFFFFFFFFFFFFFC0 | v10 & 0xFFFFFFFFFFFFFFC0) + 8 * v10 + 0x60);
  *(a1 + 8) = v5 & 0xFFFFFFFFFFFFFFC0 | v10;
  ++*(a1 + 192);
  *(a1 + 196) = 1;
  return a2 << 32;
}

uint64_t *sub_298AE1070(unsigned int *a1, uint64_t a2)
{
  v2 = a2;
  v97 = *MEMORY[0x29EDCA608];
  v5 = a1 + 2;
  v4 = *(a1 + 1);
  v94 = 0u;
  v95 = 0u;
  v6 = a2;
  v7 = *(v4 + 16 * a2 + 12);
  if (!a2)
  {
    goto LABEL_12;
  }

  v8 = -1;
  while (1)
  {
    v9 = v4 + 16 * (a2 + v8);
    if (!(a2 + v8))
    {
      break;
    }

    --v8;
    if (*(v9 + 12))
    {
      v10 = a2 + v8 + 2;
      goto LABEL_6;
    }
  }

  v10 = 1;
LABEL_6:
  v11 = *(v9 + 12);
  if (v11)
  {
    v12 = *(*v9 + 8 * (v11 - 1));
    if (v10 != a2)
    {
      v13 = a2 - v10;
      do
      {
        v12 = *((v12 & 0xFFFFFFFFFFFFFFC0) + 8 * (v12 & 0x3F));
        --v13;
      }

      while (v13);
    }

    if (v12)
    {
      v14 = 0;
      v15 = (v12 & 0x3F) + 1;
      v96[0] = v15;
      v7 += v15;
      *&v94 = v12 & 0xFFFFFFFFFFFFFFC0;
      LODWORD(v12) = 1;
      goto LABEL_14;
    }

    v15 = 0;
  }

  else
  {
LABEL_12:
    v15 = 0;
    LODWORD(v12) = 0;
  }

  v14 = 1;
LABEL_14:
  v16 = v4 + 16 * a2;
  v17 = *(v16 + 8);
  v96[v12] = v17;
  v18 = v17 + v15;
  v19 = v12 + 1;
  *(&v94 | (8 * v12)) = *v16;
  if (a2)
  {
    v20 = -1;
    while (1)
    {
      v21 = (a2 + v20);
      if (!(a2 + v20))
      {
        break;
      }

      v22 = *(v4 + 16 * v21 + 12);
      v23 = *(v4 + 16 * v21 + 8) - 1;
      --v20;
      if (v22 != v23)
      {
        v24 = a2 + v20 + 2;
        goto LABEL_19;
      }
    }

    v22 = *(v4 + 12);
    v23 = *(v4 + 8) - 1;
    v24 = 1;
LABEL_19:
    if (v22 != v23)
    {
      v54 = *(*(v4 + 16 * v21) + 8 * (v22 + 1));
      if (v24 != a2)
      {
        v55 = a2 - v24;
        do
        {
          v54 = *(v54 & 0xFFFFFFFFFFFFFFC0);
          --v55;
        }

        while (v55);
      }

      if (v54)
      {
        v56 = (v54 & 0x3F) + 1;
        v96[v19] = v56;
        v18 += v56;
        *(&v94 + v19) = v54 & 0xFFFFFFFFFFFFFFC0;
        v19 = v12 | 2;
      }
    }
  }

  v25 = v18 + 1;
  if (v18 + 1 <= 12 * v19)
  {
    v26 = 0;
  }

  else
  {
    if (v19 == 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v19 - 1;
    }

    v96[v19] = v96[v26];
    *(&v94 + v19) = *(&v94 + v26);
    v96[v26] = 0;
    v27 = *(*a1 + 200);
    v28 = *v27;
    if (*v27)
    {
      *v27 = *v28;
    }

    else
    {
      v28 = sub_298AE0D6C((v27 + 1), 192, 6);
    }

    *v28 = 0u;
    *(v28 + 16) = 0u;
    *(v28 + 160) = 0u;
    *(v28 + 176) = 0u;
    *(v28 + 128) = 0u;
    *(v28 + 144) = 0u;
    *(v28 + 96) = 0u;
    *(v28 + 112) = 0u;
    *(v28 + 64) = 0u;
    *(v28 + 80) = 0u;
    ++v19;
    *(v28 + 32) = 0u;
    *(v28 + 48) = 0u;
    *(&v94 + v26) = v28;
  }

  v29 = v25 / v19;
  v30 = v25 % v19;
  if (v25 % v19)
  {
    v31 = v29 + 1;
  }

  else
  {
    v31 = v25 / v19;
  }

  v90 = v31;
  if (v7 < v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v19;
  }

  if (v7 < v31)
  {
    v33 = v7;
  }

  else
  {
    v33 = 0;
  }

  if (v19 != 1)
  {
    v34 = v7 - v31;
    v35 = v7 >= v31;
    if (v30 <= 1)
    {
      v36 = v29;
    }

    else
    {
      v36 = v29 + 1;
    }

    v91 = v36;
    v37 = v36 + v31;
    if (v35 && v7 < v37)
    {
      v32 = 1;
      v33 = v34;
    }

    if (v19 != 2)
    {
      if (v30 <= 2)
      {
        v38 = v29;
      }

      else
      {
        v38 = v29 + 1;
      }

      v92 = v38;
      v39 = v38 + v37;
      if (v32 == v19 && v7 < v39)
      {
        v32 = 2;
        v33 = v7 - v37;
      }

      if (v19 != 3)
      {
        if (v30 > 3)
        {
          ++v29;
        }

        v93 = v29;
        if (v32 == v19 && v29 + v39 > v7)
        {
          v32 = 3;
          v33 = v7 - v39;
        }
      }
    }
  }

  --*(&v90 + v32);
  sub_298AE17B8(&v94, v19, v96, &v90);
  if ((v14 & 1) == 0)
  {
    sub_298B87398(v5, v2);
  }

  v40 = v90 - 1;
  v41 = *(v94 + 8 * v40 + 96);
  v42 = *v5;
  *(*v5 + 16 * v2 + 8) = v90;
  if (v2)
  {
    *(*(v42 + 16 * (v2 - 1)) + 8 * *(v42 + 16 * (v2 - 1) + 12)) = *(*(v42 + 16 * (v2 - 1)) + 8 * *(v42 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v40;
    v43 = *v5;
    v44 = 16 * v6;
    while (1)
    {
      v45 = v44 - 16;
      if (v44 == 16)
      {
        break;
      }

      v46 = v43 + v44;
      v47 = *(v46 - 16);
      v49 = v46 - 8;
      LODWORD(v46) = *(v46 - 8);
      v48 = *(v49 + 4);
      *(v47 + 8 * v48 + 96) = v41;
      LODWORD(v47) = v46 - 1;
      v44 = v45;
      if (v48 != v47)
      {
        goto LABEL_61;
      }
    }

    *(*v43 + 8 * *(v43 + 12) + 88) = v41;
  }

LABEL_61:
  if (v19 == 1)
  {
    result = 0;
    v51 = 0;
  }

  else
  {
    sub_298B87590(v5, v2);
    v59 = (v91 - 1);
    v60 = *(*(&v94 + 1) + 8 * v59 + 96);
    if (v26 == 1)
    {
      result = sub_298AE0A9C(a1, v2, *(&v94 + 1) & 0xFFFFFFFFFFFFFFC0 | v59, v60);
      v2 = (v2 + result);
    }

    else
    {
      v61 = *v5;
      *(*v5 + 16 * v2 + 8) = v91;
      if (v2)
      {
        *(*(v61 + 16 * (v2 - 1)) + 8 * *(v61 + 16 * (v2 - 1) + 12)) = *(*(v61 + 16 * (v2 - 1)) + 8 * *(v61 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v59;
        v62 = *v5;
        v63 = 16 * v2;
        while (1)
        {
          v64 = v63 - 16;
          if (v63 == 16)
          {
            break;
          }

          v65 = v62 + v63;
          v66 = *(v65 - 16);
          v68 = v65 - 8;
          LODWORD(v65) = *(v65 - 8);
          v67 = *(v68 + 4);
          *(v66 + 8 * v67 + 96) = v60;
          LODWORD(v66) = v65 - 1;
          v63 = v64;
          if (v67 != v66)
          {
            goto LABEL_81;
          }
        }

        result = 0;
        *(*v62 + 8 * *(v62 + 12) + 88) = v60;
      }

      else
      {
LABEL_81:
        result = 0;
      }
    }

    if (v19 == 2)
    {
      v51 = 1;
    }

    else
    {
      v69 = result;
      sub_298B87590(v5, v2);
      v70 = (v92 - 1);
      v71 = *(v95 + 8 * v70 + 96);
      if (v26 == 2)
      {
        v69 = sub_298AE0A9C(a1, v2, v95 & 0xFFFFFFFFFFFFFFC0 | v70, v71);
        v2 = (v2 + v69);
      }

      else
      {
        v72 = *v5;
        *(*v5 + 16 * v2 + 8) = v92;
        if (v2)
        {
          *(*(v72 + 16 * (v2 - 1)) + 8 * *(v72 + 16 * (v2 - 1) + 12)) = *(*(v72 + 16 * (v2 - 1)) + 8 * *(v72 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v70;
          v73 = *v5;
          v74 = 16 * v2;
          while (1)
          {
            v75 = v74 - 16;
            if (v74 == 16)
            {
              break;
            }

            v76 = v73 + v74;
            v77 = *(v76 - 16);
            v79 = v76 - 8;
            LODWORD(v76) = *(v76 - 8);
            v78 = *(v79 + 4);
            *(v77 + 8 * v78 + 96) = v71;
            LODWORD(v77) = v76 - 1;
            v74 = v75;
            if (v78 != v77)
            {
              goto LABEL_93;
            }
          }

          *(*v73 + 8 * *(v73 + 12) + 88) = v71;
        }
      }

LABEL_93:
      if (v19 == 3)
      {
        v51 = 2;
      }

      else
      {
        sub_298B87590(v5, v2);
        v80 = (v93 - 1);
        v81 = *(*(&v95 + 1) + 8 * v80 + 96);
        if (v26 == 3)
        {
          v69 = sub_298AE0A9C(a1, v2, *(&v95 + 1) & 0xFFFFFFFFFFFFFFC0 | v80, v81);
          LODWORD(v2) = v2 + v69;
        }

        else
        {
          v82 = *v5;
          *(*v5 + 16 * v2 + 8) = v93;
          if (v2)
          {
            *(*(v82 + 16 * (v2 - 1)) + 8 * *(v82 + 16 * (v2 - 1) + 12)) = *(*(v82 + 16 * (v2 - 1)) + 8 * *(v82 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v80;
            v83 = *v5;
            v84 = 16 * v2;
            while (1)
            {
              v85 = v84 - 16;
              if (v84 == 16)
              {
                break;
              }

              v86 = v83 + v84;
              v87 = *(v86 - 16);
              v89 = v86 - 8;
              LODWORD(v86) = *(v86 - 8);
              v88 = *(v89 + 4);
              *(v87 + 8 * v88 + 96) = v81;
              LODWORD(v87) = v86 - 1;
              v84 = v85;
              if (v88 != v87)
              {
                goto LABEL_104;
              }
            }

            *(*v83 + 8 * *(v83 + 12) + 88) = v81;
          }
        }

LABEL_104:
        if (v19 != 4)
        {
          result = sub_298B87590(v5, v2);
          __break(1u);
          return result;
        }

        v51 = 3;
      }

      result = v69;
    }
  }

  v52 = v32 - v51;
  if (v32 != v51)
  {
    do
    {
      v57 = result;
      sub_298B87398(v5, v2);
      result = v57;
    }

    while (!__CFADD__(v52++, 1));
  }

  *(*v5 + 16 * v2 + 12) = v33;
  v53 = *MEMORY[0x29EDCA608];
  return result;
}

double sub_298AE1760(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = *v1;
  if (*v1)
  {
    *v1 = *v2;
  }

  else
  {
    v2 = sub_298AE0D6C((v1 + 1), 192, 6);
  }

  result = 0.0;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return result;
}

uint64_t sub_298AE17B8(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 - 1;
  if (a2 != 1)
  {
    v5 = v4;
    do
    {
      v6 = *(a3 + 4 * v5);
      v7 = *(a4 + 4 * v5);
      if (v6 != v7)
      {
        v8 = v5;
        do
        {
          if (!v8)
          {
            break;
          }

          --v8;
          v10 = *(result + 8 * v5);
          v11 = *(result + 8 * v8);
          v12 = *(a3 + 4 * v8);
          v9 = v7 - v6;
          if (v9 >= 1)
          {
            if (v12 < v9)
            {
              v9 = *(a3 + 4 * v8);
            }

            if (12 - v6 < v9)
            {
              v9 = 12 - v6;
            }

            if (v6)
            {
              v33 = v9 + v6 - 1;
              v10[v33] = v10[v6 - 1];
              v10[v33 + 12] = v10[v6 + 11];
              if (v6 != 1)
              {
                v45 = v6 - 2;
                v46 = &v10[v6 - 2];
                v47 = 1 - v6;
                v48 = v45 + v9;
                do
                {
                  v10[v48] = *v46;
                  v10[v48 + 12] = v46[12];
                  --v46;
                  --v48;
                  v49 = __CFADD__(v47++, 1);
                }

                while (!v49);
              }
            }

            if (v9)
            {
              v34 = v12 - v9;
              v35 = v11 + 96;
              *v10 = *(v11 + 8 * (v12 - v9));
              v10[12] = *(v11 + 96 + 8 * (v12 - v9));
              v36 = v12 - v9 + 1;
              if (v36 != v12)
              {
                v10[1] = *(v11 + 8 * v36);
                v10[13] = *(v35 + 8 * v36);
                v37 = v34 + 2;
                if (v34 + 2 != v12)
                {
                  v10[2] = *(v11 + 8 * v37);
                  v10[14] = *(v35 + 8 * v37);
                  v38 = v34 + 3;
                  if (v34 + 3 != v12)
                  {
                    v10[3] = *(v11 + 8 * v38);
                    v10[15] = *(v35 + 8 * v38);
                    v39 = v34 + 4;
                    if (v34 + 4 != v12)
                    {
                      v10[4] = *(v11 + 8 * v39);
                      v10[16] = *(v35 + 8 * v39);
                      v40 = v34 + 5;
                      if (v34 + 5 != v12)
                      {
                        v10[5] = *(v11 + 8 * v40);
                        v10[17] = *(v35 + 8 * v40);
                        v41 = v34 + 6;
                        if (v41 != v12)
                        {
                          v42 = v10 + 18;
                          v43 = v9 - 6;
                          do
                          {
                            *(v42 - 12) = *(v11 + 8 * v41);
                            *v42++ = *(v35 + 8 * v41++);
                            --v43;
                          }

                          while (v43);
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            v13 = 12 - v12;
            if (-v9 < v6)
            {
              LODWORD(v14) = -v9;
            }

            else
            {
              LODWORD(v14) = v6;
            }

            if (v13 >= v14)
            {
              v14 = v14;
            }

            else
            {
              v14 = v13;
            }

            if (v14)
            {
              v15 = v11 + 96;
              *(v11 + 8 * v12) = *v10;
              *(v11 + 96 + 8 * v12) = v10[12];
              if (v14 != 1)
              {
                v16 = v12 + 1;
                *(v11 + 8 * v16) = v10[1];
                *(v15 + 8 * v16) = v10[13];
                if (v14 != 2)
                {
                  v17 = v12 + 2;
                  *(v11 + 8 * v17) = v10[2];
                  *(v15 + 8 * v17) = v10[14];
                  if (v14 != 3)
                  {
                    v18 = v12 + 3;
                    *(v11 + 8 * v18) = v10[3];
                    *(v15 + 8 * v18) = v10[15];
                    if (v14 != 4)
                    {
                      v19 = v12 + 4;
                      *(v11 + 8 * v19) = v10[4];
                      *(v15 + 8 * v19) = v10[16];
                      if (v14 != 5)
                      {
                        v20 = v12 + 5;
                        *(v11 + 8 * v20) = v10[5];
                        *(v15 + 8 * v20) = v10[17];
                        if (v14 != 6)
                        {
                          v21 = v12 + 6;
                          v22 = v14 - 6;
                          v23 = v10 + 18;
                          do
                          {
                            *(v11 + 8 * v21) = *(v23 - 12);
                            v24 = *v23++;
                            *(v15 + 8 * v21++) = v24;
                            --v22;
                          }

                          while (v22);
                        }
                      }
                    }
                  }
                }
              }
            }

            if (v14 != v6)
            {
              v25 = v10 + 12;
              *v10 = v10[v14];
              v10[12] = v10[v14 + 12];
              v26 = v14 + 1;
              if (v14 + 1 != v6)
              {
                v10[1] = v10[v26];
                v10[13] = v25[v26];
                v27 = v14 + 2;
                if (v14 + 2 != v6)
                {
                  v10[2] = v10[v27];
                  v10[14] = v25[v27];
                  v28 = v14 + 3;
                  if (v14 + 3 != v6)
                  {
                    v10[3] = v10[v28];
                    v10[15] = v25[v28];
                    v29 = v14 + 4;
                    if (v14 + 4 != v6)
                    {
                      v10[4] = v10[v29];
                      v10[16] = v25[v29];
                      v30 = v14 + 5;
                      if (v14 + 5 != v6)
                      {
                        v10[5] = v10[v30];
                        v10[17] = v25[v30];
                        v31 = v14 + 6;
                        if (v14 + 6 != v6)
                        {
                          v32 = v10 + 18;
                          do
                          {
                            *(v32 - 12) = v10[v31];
                            *v32++ = v25[v31++];
                          }

                          while (v6 != v31);
                        }
                      }
                    }
                  }
                }
              }
            }

            v9 = -v14;
          }

          *(a3 + 4 * v8) -= v9;
          v6 = *(a3 + 4 * v5) + v9;
          *(a3 + 4 * v5) = v6;
          v7 = *(a4 + 4 * v5);
        }

        while (v6 < v7);
      }

      --v5;
    }

    while (v5);
    if (a2 >= 2)
    {
      v44 = 0;
      do
      {
        v50 = *(a3 + 4 * v44);
        v51 = *(a4 + 4 * v44);
        if (v50 != v51)
        {
          v52 = v44;
          do
          {
            if (++v52 == a2)
            {
              break;
            }

            v54 = *(result + 8 * v52);
            v55 = *(a3 + 4 * v52);
            v56 = *(result + 8 * v44);
            v53 = v50 - v51;
            if (v53 >= 1)
            {
              if (v50 < v53)
              {
                v53 = v50;
              }

              if (12 - v55 < v53)
              {
                v53 = 12 - v55;
              }

              if (v55)
              {
                v77 = v53 + v55 - 1;
                v54[v77] = v54[v55 - 1];
                v54[v77 + 12] = v54[v55 + 11];
                if (v55 != 1)
                {
                  v88 = v55 - 2;
                  v89 = &v54[v55 - 2];
                  v90 = 1 - v55;
                  v91 = v88 + v53;
                  do
                  {
                    v54[v91] = *v89;
                    v54[v91 + 12] = v89[12];
                    --v89;
                    --v91;
                    v49 = __CFADD__(v90++, 1);
                  }

                  while (!v49);
                }
              }

              if (v53)
              {
                v78 = v50 - v53;
                v79 = v56 + 96;
                *v54 = *(v56 + 8 * (v50 - v53));
                v54[12] = *(v56 + 96 + 8 * (v50 - v53));
                v80 = v50 - v53 + 1;
                if (v80 != v50)
                {
                  v54[1] = *(v56 + 8 * v80);
                  v54[13] = *(v79 + 8 * v80);
                  v81 = v78 + 2;
                  if (v78 + 2 != v50)
                  {
                    v54[2] = *(v56 + 8 * v81);
                    v54[14] = *(v79 + 8 * v81);
                    v82 = v78 + 3;
                    if (v78 + 3 != v50)
                    {
                      v54[3] = *(v56 + 8 * v82);
                      v54[15] = *(v79 + 8 * v82);
                      v83 = v78 + 4;
                      if (v78 + 4 != v50)
                      {
                        v54[4] = *(v56 + 8 * v83);
                        v54[16] = *(v79 + 8 * v83);
                        v84 = v78 + 5;
                        if (v78 + 5 != v50)
                        {
                          v54[5] = *(v56 + 8 * v84);
                          v54[17] = *(v79 + 8 * v84);
                          v85 = v78 + 6;
                          if (v85 != v50)
                          {
                            v86 = v54 + 18;
                            v87 = v53 - 6;
                            do
                            {
                              *(v86 - 12) = *(v56 + 8 * v85);
                              *v86++ = *(v79 + 8 * v85++);
                              --v87;
                            }

                            while (v87);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            else
            {
              v57 = 12 - v50;
              if (-v53 < v55)
              {
                LODWORD(v58) = -v53;
              }

              else
              {
                LODWORD(v58) = *(a3 + 4 * v52);
              }

              if (v57 >= v58)
              {
                v58 = v58;
              }

              else
              {
                v58 = v57;
              }

              if (v58)
              {
                v59 = v56 + 96;
                *(v56 + 8 * v50) = *v54;
                *(v56 + 96 + 8 * v50) = v54[12];
                if (v58 != 1)
                {
                  v60 = v50 + 1;
                  *(v56 + 8 * v60) = v54[1];
                  *(v59 + 8 * v60) = v54[13];
                  if (v58 != 2)
                  {
                    v61 = v50 + 2;
                    *(v56 + 8 * v61) = v54[2];
                    *(v59 + 8 * v61) = v54[14];
                    if (v58 != 3)
                    {
                      v62 = v50 + 3;
                      *(v56 + 8 * v62) = v54[3];
                      *(v59 + 8 * v62) = v54[15];
                      if (v58 != 4)
                      {
                        v63 = v50 + 4;
                        *(v56 + 8 * v63) = v54[4];
                        *(v59 + 8 * v63) = v54[16];
                        if (v58 != 5)
                        {
                          v64 = v50 + 5;
                          *(v56 + 8 * v64) = v54[5];
                          *(v59 + 8 * v64) = v54[17];
                          if (v58 != 6)
                          {
                            v65 = v50 + 6;
                            v66 = v58 - 6;
                            v67 = v54 + 18;
                            do
                            {
                              *(v56 + 8 * v65) = *(v67 - 12);
                              v68 = *v67++;
                              *(v59 + 8 * v65++) = v68;
                              --v66;
                            }

                            while (v66);
                          }
                        }
                      }
                    }
                  }
                }
              }

              if (v58 != v55)
              {
                v69 = v54 + 12;
                *v54 = v54[v58];
                v54[12] = v54[v58 + 12];
                v70 = v58 + 1;
                if (v58 + 1 != v55)
                {
                  v54[1] = v54[v70];
                  v54[13] = v69[v70];
                  v71 = v58 + 2;
                  if (v58 + 2 != v55)
                  {
                    v54[2] = v54[v71];
                    v54[14] = v69[v71];
                    v72 = v58 + 3;
                    if (v58 + 3 != v55)
                    {
                      v54[3] = v54[v72];
                      v54[15] = v69[v72];
                      v73 = v58 + 4;
                      if (v58 + 4 != v55)
                      {
                        v54[4] = v54[v73];
                        v54[16] = v69[v73];
                        v74 = v58 + 5;
                        if (v58 + 5 != v55)
                        {
                          v54[5] = v54[v74];
                          v54[17] = v69[v74];
                          v75 = v58 + 6;
                          if (v58 + 6 != v55)
                          {
                            v76 = v54 + 18;
                            do
                            {
                              *(v76 - 12) = v54[v75];
                              *v76++ = v69[v75++];
                            }

                            while (v55 != v75);
                          }
                        }
                      }
                    }
                  }
                }
              }

              v53 = -v58;
            }

            *(a3 + 4 * v52) += v53;
            v50 = *(a3 + 4 * v44) - v53;
            *(a3 + 4 * v44) = v50;
            v51 = *(a4 + 4 * v44);
          }

          while (v50 < v51);
        }

        ++v44;
      }

      while (v44 != v4);
    }
  }

  return result;
}

void sub_298AE1EE0(uint64_t a1, void (*a2)(void *, void, uint64_t), uint64_t a3)
{
  v32[4] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 192);
  if (v3)
  {
    v30 = v32;
    v31 = 0x400000000;
    v27 = v29;
    v28 = 0x400000000;
    if (*(a1 + 196))
    {
      v7 = 0;
      do
      {
        sub_298ADE178(&v30, *(a1 + 8 + 8 * v7++));
      }

      while (v7 != *(a1 + 196));
      v3 = *(a1 + 192);
    }

    v8 = (a1 + (a3 >> 1));
    v9 = (v3 - 1);
    if (v3 != 1)
    {
      if (a3)
      {
        do
        {
          v16 = v31;
          if (v31)
          {
            v17 = 0;
            do
            {
              v18 = 0;
              v19 = v28;
              v20 = 8 * (*(v30 + v17) & 0x3FLL) + 8;
              do
              {
                v21 = *((*(v30 + v17) & 0xFFFFFFFFFFFFFFC0) + v18);
                if (v19 >= HIDWORD(v28))
                {
                  sub_298B90A44(&v27, v29, v19 + 1, 8);
                  v19 = v28;
                }

                *(v27 + v19) = v21;
                v19 = v28 + 1;
                LODWORD(v28) = v28 + 1;
                v18 += 8;
              }

              while (v20 != v18);
              (*(*v8 + a2))(v8, *(v30 + v17++), v9);
            }

            while (v17 != v16);
          }

          LODWORD(v31) = 0;
          sub_298ADE1DC(&v30, &v27);
          v9 = (v9 - 1);
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v31;
          if (v31)
          {
            v11 = 0;
            do
            {
              v12 = 0;
              v13 = v28;
              v14 = 8 * (*(v30 + v11) & 0x3FLL) + 8;
              do
              {
                v15 = *((*(v30 + v11) & 0xFFFFFFFFFFFFFFC0) + v12);
                if (v13 >= HIDWORD(v28))
                {
                  sub_298B90A44(&v27, v29, v13 + 1, 8);
                  v13 = v28;
                }

                *(v27 + v13) = v15;
                v13 = v28 + 1;
                LODWORD(v28) = v28 + 1;
                v12 += 8;
              }

              while (v14 != v12);
              a2(v8, *(v30 + v11++), v9);
            }

            while (v11 != v10);
          }

          LODWORD(v31) = 0;
          sub_298ADE1DC(&v30, &v27);
          v9 = (v9 - 1);
        }

        while (v9);
      }
    }

    if (v31)
    {
      if (a3)
      {
        v24 = 0;
        v25 = 8 * v31;
        do
        {
          (*(*v8 + a2))(v8, *(v30 + v24), 0);
          v24 += 8;
        }

        while (v25 != v24);
      }

      else
      {
        v22 = 0;
        v23 = 8 * v31;
        do
        {
          a2(v8, *(v30 + v22), 0);
          v22 += 8;
        }

        while (v23 != v22);
      }
    }

    if (v27 != v29)
    {
      free(v27);
    }

    if (v30 != v32)
    {
      free(v30);
    }
  }

  v26 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298AE21F8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  *(a2 & 0xFFFFFFFFFFFFFFC0) = *v2;
  *v2 = a2 & 0xFFFFFFFFFFFFFFC0;
  return result;
}

_DWORD *sub_298AE2210(_DWORD *result, unint64_t a2)
{
  v3 = result;
  v4 = *result;
  v5 = *(*result + 196);
  if (v5)
  {
    v6 = 0;
    while (*(v4 + 96 + 8 * v6) <= a2)
    {
      if (v5 == ++v6)
      {
        v6 = *(*result + 196);
        break;
      }
    }

    v7 = v6 << 32;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v4 + 192) != 0;
  result[4] = 0;
  v9 = v4 + 8 * v8;
  if (result[5])
  {
    v10 = 0;
  }

  else
  {
    result = sub_298B90A44((result + 2), result + 6, 1uLL, 16);
    v10 = v3[4];
  }

  v11 = (*(v3 + 1) + 16 * v10);
  *v11 = v9;
  v11[1] = v7 | v5;
  v12 = v3[4];
  v13 = v12 + 1;
  v3[4] = v12 + 1;
  if (v12 != -1)
  {
    v14 = *(v3 + 1);
    if (*(v14 + 12) < *(v14 + 8))
    {
      v15 = *(*v3 + 192);
      v16 = *(*(v14 + 16 * v12) + 8 * *(v14 + 16 * v12 + 12));
      v17 = v15 - v13;
      if (v15 != v13)
      {
        do
        {
          v18 = v16 & 0xFFFFFFFFFFFFFFC0;
          LODWORD(v19) = -1;
          do
          {
            v19 = (v19 + 1);
          }

          while (*((v16 & 0xFFFFFFFFFFFFFFC0) + 0x60 + 8 * v19) <= a2);
          sub_298ADE5DC((v3 + 2), v16, v19);
          v16 = *(v18 + 8 * v19);
          --v17;
        }

        while (v17);
      }

      LODWORD(v20) = -1;
      do
      {
        v20 = (v20 + 1);
      }

      while (*((v16 & 0xFFFFFFFFFFFFFFC0) + 16 * v20 + 8) <= a2);

      return sub_298ADE5DC((v3 + 2), v16, v20);
    }
  }

  return result;
}

uint64_t sub_298AE2384(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (!*(*a1 + 192))
  {
    v6 = a1;
    v7 = a1 + 8;
    v8 = a2;
    v9 = a3;
    v10 = a4;
    result = sub_298AE247C(*a1, (*(a1 + 8) + 16 * *(a1 + 16) - 4), *(v4 + 196), a2, a3, a4);
    if (result <= 8)
    {
      *(v4 + 196) = result;
      *(*v7 + 8) = result;
      return result;
    }

    v11 = sub_298AE2AD8(v4, *(*(v6 + 8) + 16 * *(v6 + 16) - 4));
    sub_298B872C4(v7, v4 + 8, *(v4 + 196), v11);
    a1 = v6;
    a2 = v8;
    a3 = v9;
    a4 = v10;
  }

  return sub_298AE2840(a1, a2, a3, a4);
}

uint64_t sub_298AE247C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  if (v6)
  {
    v7 = (v6 - 1);
    v8 = a1 + 128;
    if (*(a1 + 128 + 8 * v7) == a6)
    {
      v50 = a1 + 16 * v7;
      v52 = *(v50 + 8);
      v51 = (v50 + 8);
      if (v52 == a4)
      {
        *a2 = v7;
        if (a3 != v6 && *(v8 + 8 * v6) == a6 && *(a1 + 16 * v6) == a5)
        {
          *v51 = *(a1 + 16 * v6 + 8);
          v54 = v6 + 1;
          if (v6 + 1 != a3)
          {
            *(a1 + 16 * v6) = *(a1 + 16 * v54);
            *(v8 + 8 * v6) = *(v8 + 8 * v54);
            v55 = v6 + 2;
            if (v6 + 2 != a3)
            {
              v56 = v6 + 1;
              *(a1 + 16 * v56) = *(a1 + 16 * v55);
              *(v8 + 8 * v56) = *(v8 + 8 * v55);
              v57 = v6 + 3;
              if (v6 + 3 != a3)
              {
                v58 = v6 + 2;
                *(a1 + 16 * v58) = *(a1 + 16 * v57);
                *(v8 + 8 * v58) = *(v8 + 8 * v57);
                v59 = v6 + 4;
                if (v6 + 4 != a3)
                {
                  v60 = v6 + 3;
                  *(a1 + 16 * v60) = *(a1 + 16 * v59);
                  *(v8 + 8 * v60) = *(v8 + 8 * v59);
                  for (i = v6 + 5; a3 != i; ++i)
                  {
                    v62 = i - 1;
                    *(a1 + 16 * v62) = *(a1 + 16 * i);
                    *(v8 + 8 * v62) = *(v8 + 8 * i);
                  }
                }
              }
            }
          }

          return (a3 - 1);
        }

        else
        {
          *v51 = a5;
          return a3;
        }
      }
    }

    if (v6 == 8)
    {
      return 9;
    }
  }

  if (a3 == v6)
  {
    v53 = (a1 + 16 * a3);
    *v53 = a4;
    v53[1] = a5;
    *(a1 + 8 * a3 + 128) = a6;
    return (a3 + 1);
  }

  v9 = a1 + 128;
  v10 = (a1 + 16 * v6);
  if (*(a1 + 128 + 8 * v6) == a6 && *v10 == a5)
  {
    *v10 = a4;
    return a3;
  }

  if (a3 == 8)
  {
    return 9;
  }

  v11 = a3 - v6;
  v12 = (~v6 + a3);
  if (v12 < 0x3F)
  {
    goto LABEL_61;
  }

  if (v6 + 1 > a3)
  {
    goto LABEL_61;
  }

  v13 = a3 - 1;
  if (~v6 + a3 > (a3 - 1))
  {
    goto LABEL_61;
  }

  v14 = a1 + 16 * v13;
  v15 = 16 * (~v6 + a3);
  if (v14 - v15 > v14)
  {
    goto LABEL_61;
  }

  v16 = a1 + 16 * a3;
  if (v16 - v15 > v16)
  {
    goto LABEL_61;
  }

  if (v14 + 8 - v15 > v14 + 8)
  {
    goto LABEL_61;
  }

  if (v16 + 8 - v15 > v16 + 8)
  {
    goto LABEL_61;
  }

  v17 = 8 * (~v6 + a3);
  if (a1 + 8 * a3 + 128 - v17 > a1 + 8 * a3 + 128 || a1 + 8 * v13 + 128 - v17 > a1 + 8 * v13 + 128)
  {
    goto LABEL_61;
  }

  v18 = 16 * a3;
  v19 = 16 * (~v6 + a3);
  v20 = a1 + v18 - v19;
  v21 = a1 + (v18 | 8);
  v22 = 16 * (a3 - 1);
  v23 = a1 + v22 - v19;
  v24 = a1 + (v22 | 8);
  v25 = a1 + (v18 | 8) - v19;
  v26 = a1 + v18 + 16;
  v27 = a1 + (v22 | 8) - v19;
  v28 = 8 * a3;
  v29 = 8 * (~v6 + a3);
  v30 = v28 - v29 + a1 + 128;
  v31 = a1 + v28 + 136;
  v32 = 8 * (a3 - 1);
  v33 = v32 - v29 + a1 + 128;
  v34 = a1 + v32 + 136;
  v35 = v25 >= a1 + v22 + 16 || v27 >= v26;
  v36 = !v35;
  v37 = v30 >= v34 || v33 >= v31;
  v38 = !v37;
  if (v23 < v21 && v20 < v24)
  {
    goto LABEL_61;
  }

  if (v36)
  {
    goto LABEL_61;
  }

  if (v38)
  {
    goto LABEL_61;
  }

  v40 = v12 + 1;
  v11 -= v40 & 0xFFFFFFFE;
  v41 = a1 + 120;
  v42 = v40 & 0x1FFFFFFFELL;
  v43 = a3;
  do
  {
    v44 = *(a1 + 16 * (v43 - 1));
    v45 = a1 - 24 + 16 * v43;
    *(v45 + 8) = *(a1 - 16 + 16 * (v43 - 1));
    v46 = *(v41 + 8 * (v43 - 1));
    *(v45 + 24) = v44;
    *(v41 + 8 * v43) = v46;
    v43 -= 2;
    v42 -= 2;
  }

  while (v42);
  if (v40 != (v40 & 0x1FFFFFFFELL))
  {
LABEL_61:
    v47 = v11 - 1;
    v48 = v6 + v11;
    *(a1 + 16 * v48) = *(a1 + 16 * (v6 + v11 - 1));
    *(v9 + 8 * v48) = *(v9 + 8 * (v6 + v11 - 1));
    if (v11 != 1)
    {
      v63 = v6 + v11 - 1;
      do
      {
        *(a1 + 16 * v63) = *(a1 + 16 * (v63 - 1));
        *(v9 + 8 * v63) = *(v9 + 8 * (v63 - 1));
        --v63;
        --v47;
      }

      while (v47);
    }
  }

  *v10 = a4;
  v10[1] = a5;
  *(v9 + 8 * v6) = a6;
  return (a3 + 1);
}

uint64_t sub_298AE2840(unsigned int *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a1[4];
  if (!v8 || (v9 = *(a1 + 1), *(v9 + 12) >= *(v9 + 8)))
  {
    sub_298ADF670(a1 + 2, *(*a1 + 192));
    v9 = *(a1 + 1);
    v8 = a1[4];
  }

  v10 = v8;
  v11 = v9 + 16 * v8;
  v12 = *(v11 - 4);
  if (!v12)
  {
    v32 = *(v11 - 16);
    if (*v32 <= a2)
    {
      goto LABEL_19;
    }

    v33 = sub_298B8731C(a1 + 1, v10 - 1);
    if (!v33)
    {
      v12 = 0;
      **a1 = a2;
      goto LABEL_5;
    }

    if (*((v33 & 0xFFFFFFFFFFFFFFC0) + 8 * (v33 & 0x3F) + 0x80) == a4 && (v44 = v33 & 0x3F, v45 = v33 & 0xFFFFFFFFFFFFFFC0, v34 = ((v33 & 0xFFFFFFFFFFFFFFC0) + 16 * v44 + 8), *((v33 & 0xFFFFFFFFFFFFFFC0) + 16 * v44 + 8) == a2))
    {
      result = sub_298B87398(a1 + 2, v10 - 1);
      if (*v32 >= a3 && (*v32 != a3 || v32[16] != a4))
      {
        v36 = a1[4];
        *v34 = a3;
        v37 = v36 - 1;
        if (v36 == 1)
        {
          return result;
        }

        v25 = *(a1 + 1);
        v38 = 16 * v37;
        while (1)
        {
          v39 = v38 - 16;
          if (v38 == 16)
          {
            break;
          }

          v40 = v25 + v38;
          v41 = *(v40 - 16);
          v43 = v40 - 8;
          LODWORD(v40) = *(v40 - 8);
          v42 = *(v43 + 4);
          *(v41 + 8 * v42 + 96) = a3;
          LODWORD(v41) = v40 - 1;
          v38 = v39;
          if (v42 != v41)
          {
            return result;
          }
        }

        goto LABEL_31;
      }

      a2 = *(v45 + 16 * v44);
      sub_298AE2C4C(a1, 0);
      v9 = *(a1 + 1);
      v10 = a1[4];
      v12 = *(v9 + 16 * v10 - 4);
    }

    else
    {
LABEL_19:
      v12 = 0;
    }
  }

LABEL_5:
  v13 = v9 + 16 * v10;
  v14 = *(v13 - 8);
  v15 = v12 == v14;
  result = sub_298AE247C(*(v13 - 16), (v13 - 4), v14, a2, a3, a4);
  if (result >= 9)
  {
    sub_298AE2EE0(a1, a1[4] - 1);
    v17 = (*(a1 + 1) + 16 * a1[4]);
    v18 = *--v17;
    v19 = *(v17 - 1);
    v15 = v18 == v19;
    result = sub_298AE247C(*(v17 - 3), v17, v19, a2, a3, a4);
  }

  v20 = a1[4];
  v21 = *(a1 + 1);
  *(v21 + 16 * (v20 - 1) + 8) = result;
  if (v20 != 1)
  {
    v22 = v21 + 16 * (v20 - 2);
    *(*v22 + 8 * *(v22 + 12)) = *(*v22 + 8 * *(v22 + 12)) & 0xFFFFFFFFFFFFFFC0 | (result - 1);
  }

  if (v15)
  {
    v23 = a1[4];
    v24 = v23 - 1;
    if (v23 != 1)
    {
      v25 = *(a1 + 1);
      v26 = 16 * v24;
      while (1)
      {
        v27 = v26 - 16;
        if (v26 == 16)
        {
          break;
        }

        v28 = v25 + v26;
        v29 = *(v28 - 16);
        v31 = v28 - 8;
        LODWORD(v28) = *(v28 - 8);
        v30 = *(v31 + 4);
        *(v29 + 8 * v30 + 96) = a3;
        LODWORD(v29) = v28 - 1;
        v26 = v27;
        if (v30 != v29)
        {
          return result;
        }
      }

LABEL_31:
      *(*v25 + 8 * *(v25 + 12) + 88) = a3;
    }
  }

  return result;
}

unint64_t sub_298AE2AD8(uint64_t a1, unsigned int a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = sub_298B87660(2u, *(a1 + 196), 8, 0, &v18, a2, 1);
  sub_298AE1760(a1);
  v5 = v4;
  v6 = v18;
  if (v18)
  {
    v7 = 0;
    do
    {
      *(v4 + 16 * v7) = *(a1 + 16 * v7);
      *(v4 + 8 * v7 + 128) = *(a1 + 8 * v7 + 128);
      ++v7;
    }

    while (v6 != v7);
  }

  sub_298AE1760(a1);
  v9 = v19;
  if (v19)
  {
    v10 = (v8 + 128);
    v11 = v19;
    v12 = v8;
    v13 = v6;
    do
    {
      *v12++ = *(a1 + 16 * v13);
      *v10++ = *(a1 + 128 + 8 * v13++);
      --v11;
    }

    while (v11);
  }

  v14 = (v6 - 1);
  v15 = (v9 - 1);
  *(a1 + 176) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 96) = *((v5 & 0xFFFFFFFFFFFFFFC0 | v14 & 0xFFFFFFFFFFFFFFC0) + 16 * v14 + 8);
  *(a1 + 8) = v5 & 0xFFFFFFFFFFFFFFC0 | v14;
  *(a1 + 104) = *((v8 & 0xFFFFFFFFFFFFFFC0 | v15 & 0xFFFFFFFFFFFFFFC0) + 16 * v15 + 8);
  *(a1 + 16) = v8 & 0xFFFFFFFFFFFFFFC0 | v15;
  *a1 = *(v5 & 0xFFFFFFFFFFFFFFC0 | v14 & 0xFFFFFFFFFFFFFFC0);
  *(a1 + 192) = 0x200000001;
  v16 = *MEMORY[0x29EDCA608];
  return v3;
}

char *sub_298AE2C4C(char *result, int a2)
{
  v3 = result;
  v5 = *result;
  v4 = *(result + 1);
  v6 = *(result + 4);
  v7 = v4 + 16 * v6;
  v8 = *(v7 - 16);
  v9 = *(v7 - 8);
  if (v9 == 1)
  {
    v10 = *(v5 + 200);
    *v8 = *v10;
    *v10 = v8;
    result = sub_298AE35CC(result, *(v5 + 192));
    if (a2)
    {
      if (*(v5 + 192))
      {
        v11 = *(v3 + 4);
        if (v11)
        {
          v12 = *(v3 + 1);
          if (*(v12 + 12) < *(v12 + 8))
          {
            v13 = (v12 + 12);
            v14 = *(v3 + 4);
            while (1)
            {
              v15 = *v13;
              v13 += 4;
              if (v15)
              {
                break;
              }

              if (!--v14)
              {
                v16 = *(v12 + 16 * v11 - 16);
                goto LABEL_27;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v17 = *(v7 - 4);
    if (v17 + 1 != v9)
    {
      do
      {
        *&v8[2 * v17] = *&v8[2 * v17 + 2];
        v8[v17 + 16] = v8[v17 + 17];
        ++v17;
      }

      while (v9 - 1 != v17);
      v4 = *(result + 1);
      v9 = *(v4 + 16 * v6 - 8);
    }

    v18 = *(v5 + 192);
    *(v4 + 16 * v18 + 8) = v9 - 1;
    if (v18)
    {
      v19 = v4 + 16 * (v18 - 1);
      *(*v19 + 8 * *(v19 + 12)) = *(*v19 + 8 * *(v19 + 12)) & 0xFFFFFFFFFFFFFFC0 | (v9 - 2);
      v4 = *(result + 1);
      v6 = *(result + 4);
    }

    v20 = v4 + 16 * v6;
    if (*(v20 - 4) == v9 - 1)
    {
      v21 = *(v5 + 192);
      if (v21)
      {
        v22 = v8[2 * (v9 - 2) + 1];
        v23 = 16 * v21;
        while (1)
        {
          v24 = v23 - 16;
          if (v23 == 16)
          {
            break;
          }

          v25 = v4 + v23;
          v26 = *(v25 - 16);
          v28 = v25 - 8;
          LODWORD(v25) = *(v25 - 8);
          v27 = *(v28 + 4);
          *(v26 + 8 * v27 + 96) = v22;
          LODWORD(v26) = v25 - 1;
          v23 = v24;
          if (v27 != v26)
          {
            goto LABEL_30;
          }
        }

        *(*v4 + 8 * *(v4 + 12) + 88) = v22;
      }

LABEL_30:
      v31 = v21 - 1;
      v32 = 1;
      while (1)
      {
        v33 = v32;
        v34 = v31;
        if (!v31)
        {
          break;
        }

        v36 = *(v4 + 16 * v31 + 8);
        v35 = *(v4 + 16 * v31 + 12);
        ++v32;
        --v31;
        if (v35 != v36 - 1)
        {
          v37 = v4 + 16 * v34;
          v38 = v35 + 1;
          *(v37 + 12) = v38;
          if (v38 == v36)
          {
            return result;
          }

          goto LABEL_36;
        }
      }

      v39 = *(v4 + 8);
      v37 = v4;
      v38 = *(v4 + 12) + 1;
      *(v4 + 12) = v38;
      if (v38 == v39)
      {
        return result;
      }

LABEL_36:
      v40 = *(*v37 + 8 * v38);
      if (v33 != 1)
      {
        v41 = v33 - 1;
        v42 = v34 + 1;
        do
        {
          v43 = *(result + 1) + 16 * v42;
          *v43 = v40 & 0xFFFFFFFFFFFFFFC0;
          *(v43 + 8) = (v40 & 0x3F) + 1;
          *(v43 + 12) = 0;
          ++v42;
          v40 = *(v40 & 0xFFFFFFFFFFFFFFC0);
          --v41;
        }

        while (v41);
        v4 = *(result + 1);
      }

      v44 = (v4 + 16 * v21);
      *v44 = v40 & 0xFFFFFFFFFFFFFFC0;
      v44[1] = (v40 & 0x3F) + 1;
    }

    else if (a2)
    {
      if (v6)
      {
        v29 = (v4 + 12);
        while (1)
        {
          v30 = *v29;
          v29 += 4;
          if (v30)
          {
            break;
          }

          if (!--v6)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
LABEL_26:
        v16 = *(v20 - 16);
LABEL_27:
        *v5 = *v16;
      }
    }
  }

  return result;
}

uint64_t *sub_298AE2EE0(uint64_t *a1, unsigned int a2)
{
  v2 = a2;
  v97 = *MEMORY[0x29EDCA608];
  v5 = (a1 + 1);
  v4 = a1[1];
  v94 = 0u;
  v95 = 0u;
  v6 = a2;
  v7 = *(v4 + 16 * a2 + 12);
  if (!a2)
  {
    goto LABEL_12;
  }

  v8 = -1;
  while (1)
  {
    v9 = v4 + 16 * (a2 + v8);
    if (!(a2 + v8))
    {
      break;
    }

    --v8;
    if (*(v9 + 12))
    {
      v10 = a2 + v8 + 2;
      goto LABEL_6;
    }
  }

  v10 = 1;
LABEL_6:
  v11 = *(v9 + 12);
  if (v11)
  {
    v12 = *(*v9 + 8 * (v11 - 1));
    if (v10 != a2)
    {
      v13 = a2 - v10;
      do
      {
        v12 = *((v12 & 0xFFFFFFFFFFFFFFC0) + 8 * (v12 & 0x3F));
        --v13;
      }

      while (v13);
    }

    if (v12)
    {
      v14 = 0;
      v15 = (v12 & 0x3F) + 1;
      v96[0] = v15;
      v7 += v15;
      *&v94 = v12 & 0xFFFFFFFFFFFFFFC0;
      LODWORD(v12) = 1;
      goto LABEL_14;
    }

    v15 = 0;
  }

  else
  {
LABEL_12:
    v15 = 0;
    LODWORD(v12) = 0;
  }

  v14 = 1;
LABEL_14:
  v16 = v4 + 16 * a2;
  v17 = *(v16 + 8);
  v96[v12] = v17;
  v18 = v17 + v15;
  v19 = v12 + 1;
  *(&v94 | (8 * v12)) = *v16;
  if (a2)
  {
    v20 = -1;
    while (1)
    {
      v21 = a2 + v20;
      if (!(a2 + v20))
      {
        break;
      }

      v22 = *(v4 + 16 * v21 + 12);
      v23 = *(v4 + 16 * v21 + 8) - 1;
      --v20;
      if (v22 != v23)
      {
        v24 = a2 + v20 + 2;
        goto LABEL_19;
      }
    }

    v22 = *(v4 + 12);
    v23 = *(v4 + 8) - 1;
    v24 = 1;
LABEL_19:
    if (v22 != v23)
    {
      v54 = *(*(v4 + 16 * v21) + 8 * (v22 + 1));
      if (v24 != a2)
      {
        v55 = a2 - v24;
        do
        {
          v54 = *(v54 & 0xFFFFFFFFFFFFFFC0);
          --v55;
        }

        while (v55);
      }

      if (v54)
      {
        v56 = (v54 & 0x3F) + 1;
        v96[v19] = v56;
        v18 += v56;
        *(&v94 + v19) = v54 & 0xFFFFFFFFFFFFFFC0;
        v19 = v12 | 2;
      }
    }
  }

  v25 = v18 + 1;
  if (v18 + 1 <= 8 * v19)
  {
    v26 = 0;
  }

  else
  {
    if (v19 == 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v19 - 1;
    }

    v96[v19] = v96[v26];
    *(&v94 + v19) = *(&v94 + v26);
    v96[v26] = 0;
    v27 = *(*a1 + 200);
    v28 = *v27;
    if (*v27)
    {
      *v27 = *v28;
    }

    else
    {
      v28 = sub_298AE0D6C((v27 + 1), 192, 6);
    }

    *v28 = 0u;
    *(v28 + 16) = 0u;
    *(v28 + 160) = 0u;
    *(v28 + 176) = 0u;
    *(v28 + 128) = 0u;
    *(v28 + 144) = 0u;
    *(v28 + 96) = 0u;
    *(v28 + 112) = 0u;
    *(v28 + 64) = 0u;
    *(v28 + 80) = 0u;
    ++v19;
    *(v28 + 32) = 0u;
    *(v28 + 48) = 0u;
    *(&v94 + v26) = v28;
  }

  v29 = v25 / v19;
  v30 = v25 % v19;
  if (v25 % v19)
  {
    v31 = v29 + 1;
  }

  else
  {
    v31 = v25 / v19;
  }

  v90 = v31;
  if (v7 < v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v19;
  }

  if (v7 < v31)
  {
    v33 = v7;
  }

  else
  {
    v33 = 0;
  }

  if (v19 != 1)
  {
    v34 = v7 - v31;
    v35 = v7 >= v31;
    if (v30 <= 1)
    {
      v36 = v29;
    }

    else
    {
      v36 = v29 + 1;
    }

    v91 = v36;
    v37 = v36 + v31;
    if (v35 && v7 < v37)
    {
      v32 = 1;
      v33 = v34;
    }

    if (v19 != 2)
    {
      if (v30 <= 2)
      {
        v38 = v29;
      }

      else
      {
        v38 = v29 + 1;
      }

      v92 = v38;
      v39 = v38 + v37;
      if (v32 == v19 && v7 < v39)
      {
        v32 = 2;
        v33 = v7 - v37;
      }

      if (v19 != 3)
      {
        if (v30 > 3)
        {
          ++v29;
        }

        v93 = v29;
        if (v32 == v19 && v29 + v39 > v7)
        {
          v32 = 3;
          v33 = v7 - v39;
        }
      }
    }
  }

  --*(&v90 + v32);
  sub_298AE39E4(&v94, v19, v96, &v90);
  if ((v14 & 1) == 0)
  {
    sub_298B87398(v5, v2);
  }

  v40 = v90 - 1;
  v41 = *(v94 + 16 * v40 + 8);
  v42 = *v5;
  *(*v5 + 16 * v2 + 8) = v90;
  if (v2)
  {
    *(*(v42 + 16 * (v2 - 1)) + 8 * *(v42 + 16 * (v2 - 1) + 12)) = *(*(v42 + 16 * (v2 - 1)) + 8 * *(v42 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v40;
    v43 = *v5;
    v44 = 16 * v6;
    while (1)
    {
      v45 = v44 - 16;
      if (v44 == 16)
      {
        break;
      }

      v46 = v43 + v44;
      v47 = *(v46 - 16);
      v49 = v46 - 8;
      LODWORD(v46) = *(v46 - 8);
      v48 = *(v49 + 4);
      *(v47 + 8 * v48 + 96) = v41;
      LODWORD(v47) = v46 - 1;
      v44 = v45;
      if (v48 != v47)
      {
        goto LABEL_61;
      }
    }

    *(*v43 + 8 * *(v43 + 12) + 88) = v41;
  }

LABEL_61:
  if (v19 == 1)
  {
    result = 0;
    v51 = 0;
  }

  else
  {
    sub_298B87590(v5, v2);
    v59 = (v91 - 1);
    v60 = *(*(&v94 + 1) + 16 * v59 + 8);
    if (v26 == 1)
    {
      v69 = sub_298AE4288(a1, v2, *(&v94 + 1) & 0xFFFFFFFFFFFFFFC0 | v59, v60);
      v2 += v69;
    }

    else
    {
      v61 = *v5;
      *(*v5 + 16 * v2 + 8) = v91;
      if (v2)
      {
        *(*(v61 + 16 * (v2 - 1)) + 8 * *(v61 + 16 * (v2 - 1) + 12)) = *(*(v61 + 16 * (v2 - 1)) + 8 * *(v61 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v59;
        v62 = *v5;
        v63 = 16 * v2;
        while (1)
        {
          v64 = v63 - 16;
          if (v63 == 16)
          {
            break;
          }

          v65 = v62 + v63;
          v66 = *(v65 - 16);
          v68 = v65 - 8;
          LODWORD(v65) = *(v65 - 8);
          v67 = *(v68 + 4);
          *(v66 + 8 * v67 + 96) = v60;
          LODWORD(v66) = v65 - 1;
          v63 = v64;
          if (v67 != v66)
          {
            goto LABEL_81;
          }
        }

        v69 = 0;
        *(*v62 + 8 * *(v62 + 12) + 88) = v60;
      }

      else
      {
LABEL_81:
        v69 = 0;
      }
    }

    if (v19 == 2)
    {
      v51 = 1;
    }

    else
    {
      sub_298B87590(v5, v2);
      v70 = (v92 - 1);
      v71 = *(v95 + 16 * v70 + 8);
      if (v26 == 2)
      {
        v69 = sub_298AE4288(a1, v2, v95 & 0xFFFFFFFFFFFFFFC0 | v70, v71);
        v2 += v69;
      }

      else
      {
        v72 = *v5;
        *(*v5 + 16 * v2 + 8) = v92;
        if (v2)
        {
          *(*(v72 + 16 * (v2 - 1)) + 8 * *(v72 + 16 * (v2 - 1) + 12)) = *(*(v72 + 16 * (v2 - 1)) + 8 * *(v72 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v70;
          v73 = *v5;
          v74 = 16 * v2;
          while (1)
          {
            v75 = v74 - 16;
            if (v74 == 16)
            {
              break;
            }

            v76 = v73 + v74;
            v77 = *(v76 - 16);
            v79 = v76 - 8;
            LODWORD(v76) = *(v76 - 8);
            v78 = *(v79 + 4);
            *(v77 + 8 * v78 + 96) = v71;
            LODWORD(v77) = v76 - 1;
            v74 = v75;
            if (v78 != v77)
            {
              goto LABEL_94;
            }
          }

          *(*v73 + 8 * *(v73 + 12) + 88) = v71;
        }
      }

LABEL_94:
      if (v19 == 3)
      {
        v51 = 2;
      }

      else
      {
        sub_298B87590(v5, v2);
        v80 = (v93 - 1);
        v81 = *(*(&v95 + 1) + 16 * v80 + 8);
        if (v26 == 3)
        {
          v69 = sub_298AE4288(a1, v2, *(&v95 + 1) & 0xFFFFFFFFFFFFFFC0 | v80, v81);
          v2 += v69;
        }

        else
        {
          v82 = *v5;
          *(*v5 + 16 * v2 + 8) = v93;
          if (v2)
          {
            *(*(v82 + 16 * (v2 - 1)) + 8 * *(v82 + 16 * (v2 - 1) + 12)) = *(*(v82 + 16 * (v2 - 1)) + 8 * *(v82 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v80;
            v83 = *v5;
            v84 = 16 * v2;
            while (1)
            {
              v85 = v84 - 16;
              if (v84 == 16)
              {
                break;
              }

              v86 = v83 + v84;
              v87 = *(v86 - 16);
              v89 = v86 - 8;
              LODWORD(v86) = *(v86 - 8);
              v88 = *(v89 + 4);
              *(v87 + 8 * v88 + 96) = v81;
              LODWORD(v87) = v86 - 1;
              v84 = v85;
              if (v88 != v87)
              {
                goto LABEL_105;
              }
            }

            *(*v83 + 8 * *(v83 + 12) + 88) = v81;
          }
        }

LABEL_105:
        if (v19 != 4)
        {
          result = sub_298B87590(v5, v2);
          __break(1u);
          return result;
        }

        v51 = 3;
      }
    }

    result = v69;
  }

  v52 = v32 - v51;
  if (v32 != v51)
  {
    do
    {
      v57 = result;
      sub_298B87398(v5, v2);
      result = v57;
    }

    while (!__CFADD__(v52++, 1));
  }

  *(*v5 + 16 * v2 + 12) = v33;
  v53 = *MEMORY[0x29EDCA608];
  return result;
}

char *sub_298AE35CC(char *result, unsigned int a2)
{
  v3 = *result;
  v5 = result + 8;
  v4 = *(result + 1);
  v6 = a2 - 1;
  if (a2 != 1)
  {
    v7 = v4 + 16 * v6;
    v8 = *v7;
    v9 = *(v7 + 8);
    if (v9 == 1)
    {
      v10 = *(v3 + 200);
      *v8 = *v10;
      *v10 = v8;
      v11 = result;
      sub_298AE35CC();
      result = v11;
    }

    else
    {
      v19 = *(v4 + 16 * v6 + 12);
      if (v19 + 1 != v9)
      {
        do
        {
          v8[v19] = v8[v19 + 1];
          v8[v19 + 12] = v8[v19 + 13];
          ++v19;
        }

        while (v9 - 1 != v19);
        v4 = *v5;
        v9 = *(*v5 + 16 * v6 + 8);
      }

      *(v4 + 16 * v6 + 8) = v9 - 1;
      v20 = a2 - 2;
      v21 = v4 + 16 * (a2 - 2);
      v22 = (v9 - 2);
      *(*v21 + 8 * *(v21 + 12)) = *(*v21 + 8 * *(v21 + 12)) & 0xFFFFFFFFFFFFFFC0 | v22;
      v23 = *v5;
      if (*(*v5 + 16 * v6 + 12) == v9 - 1)
      {
        v24 = v8[v22 + 12];
        v25 = (v23 + 16 * v6 - 8);
        v26 = a2 - 1;
        while (--v26)
        {
          v27 = *(v25 - 1);
          v29 = *v25;
          v28 = v25[1];
          v25 -= 4;
          *(v27 + 8 * v28 + 96) = v24;
          if (v28 != v29 - 1)
          {
            goto LABEL_21;
          }
        }

        *(*v23 + 8 * *(v23 + 12) + 88) = v24;
LABEL_21:
        v31 = 0;
        while (1)
        {
          v32 = v31;
          if (!v20)
          {
            break;
          }

          v33 = v20;
          v34 = v23 + 16 * v20;
          v36 = *(v34 + 8);
          v35 = *(v34 + 12);
          ++v31;
          v20 = v33 - 1;
          if (v35 != v36 - 1)
          {
            v37 = v23 + 16 * v33;
            v38 = v35 + 1;
            *(v37 + 12) = v38;
            if (v38 == v36)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          }
        }

        v39 = *(v23 + 8);
        v37 = v23;
        v38 = *(v23 + 12) + 1;
        *(v23 + 12) = v38;
        if (v38 == v39)
        {
          goto LABEL_46;
        }

LABEL_27:
        v40 = *(*v37 + 8 * v38);
        if (v32)
        {
          v41 = v6 - v32;
          do
          {
            v42 = *v5 + 16 * v41;
            *v42 = v40 & 0xFFFFFFFFFFFFFFC0;
            *(v42 + 8) = (v40 & 0x3F) + 1;
            *(v42 + 12) = 0;
            ++v41;
            v40 = *(v40 & 0xFFFFFFFFFFFFFFC0);
            --v32;
          }

          while (v32);
          v23 = *v5;
        }

        v43 = (v23 + 16 * v6);
        *v43 = v40 & 0xFFFFFFFFFFFFFFC0;
        v43[1] = (v40 & 0x3F) + 1;
      }
    }

    goto LABEL_46;
  }

  v12 = *(v4 + 12);
  v13 = *(v3 + 196);
  v14 = v12 + 1;
  if (v12 + 1 != v13)
  {
    v15 = v3 + 8;
    v16 = v3 + 96;
    v17 = v13 + ~v12;
    if (v17 >= 0x12)
    {
      if (v13 - 2 >= v12 && v13 - 1 >= v14)
      {
        v44 = 8 * (v12 + 1);
        v45 = 8 * v12 - v44;
        if (v45 >= 0x10 && (v44 - 8 * v12 + 88) >= 0x10 && v45 + 88 >= 0x10)
        {
          v14 += v17 & 0xFFFFFFFE;
          v18 = v12 + (v17 & 0xFFFFFFFE);
          v48 = v17 & 0xFFFFFFFE;
          do
          {
            v49 = 8 * (v12 + 1);
            v50 = 8 * v12;
            *(v15 + v50) = *(v15 + v49);
            *(v16 + v50) = *(v16 + v49);
            LODWORD(v12) = v12 + 2;
            v48 -= 2;
          }

          while (v48);
          if (v17 == (v17 & 0xFFFFFFFE))
          {
            goto LABEL_44;
          }
        }

        else
        {
          v18 = v12;
        }
      }

      else
      {
        v18 = v12;
      }
    }

    else
    {
      v18 = v12;
    }

    do
    {
      *(v15 + 8 * v18) = *(v15 + 8 * v14);
      *(v16 + 8 * v18++) = *(v16 + 8 * v14++);
    }

    while (v13 != v14);
LABEL_44:
    v13 = *(v3 + 196);
    v4 = *v5;
  }

  v51 = v13 - 1;
  *(v3 + 196) = v51;
  *(v4 + 8) = v51;
  if (!v51)
  {
    *(v3 + 192) = 0;
    *(v3 + 160) = 0u;
    *(v3 + 176) = 0u;
    *(v3 + 128) = 0u;
    *(v3 + 144) = 0u;
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
    *(v3 + 64) = 0u;
    *(v3 + 80) = 0u;
    *(v3 + 32) = 0u;
    *(v3 + 48) = 0u;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    v56 = *result;
    if (*(*result + 192))
    {
      v57 = v56 + 8;
      v58 = *(v56 + 196);
      *(result + 4) = 0;
      v59 = result + 16;
      if (*(result + 5))
      {
        v60 = 0;
LABEL_55:
        v61 = (*v5 + 16 * v60);
        *v61 = v57;
        v61[1] = v58;
        ++*v59;
        return result;
      }
    }

    else
    {
      v58 = *(v56 + 196);
      *(result + 4) = 0;
      v59 = result + 16;
      if (*(result + 5))
      {
        v60 = 0;
        v57 = v56;
        goto LABEL_55;
      }

      v57 = v56;
    }

    v62 = result;
    result = sub_298B90A44((result + 8), result + 24, 1uLL, 16);
    v60 = *(v62 + 4);
    goto LABEL_55;
  }

LABEL_46:
  if (*(result + 4))
  {
    v52 = *v5;
    if (*(*v5 + 12) < *(*v5 + 8))
    {
      v53 = *(*(v52 + 16 * v6) + 8 * *(v52 + 16 * v6 + 12));
      v54 = 16 * a2;
      v55 = v52 + v54;
      *v55 = v53 & 0xFFFFFFFFFFFFFFC0;
      *(v55 + 8) = (v53 & 0x3F) + 1;
      *(*v5 + v54 + 12) = 0;
    }
  }

  return result;
}

uint64_t sub_298AE39E4(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 - 1;
  if (a2 == 1)
  {
    return result;
  }

  v5 = v4;
  do
  {
    v6 = *(a3 + 4 * v5);
    v7 = *(a4 + 4 * v5);
    if (v6 != v7)
    {
      v8 = v5;
      while (1)
      {
        if (!v8)
        {
          goto LABEL_83;
        }

        --v8;
        v10 = *(result + 8 * v5);
        v11 = *(result + 8 * v8);
        v12 = *(a3 + 4 * v8);
        v9 = v7 - v6;
        if (v9 >= 1)
        {
          break;
        }

        v13 = 8 - v12;
        if (-v9 < v6)
        {
          LODWORD(v14) = -v9;
        }

        else
        {
          LODWORD(v14) = v6;
        }

        if (v13 >= v14)
        {
          v14 = v14;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          v15 = v11 + 128;
          *(v11 + 16 * v12) = *v10;
          *(v11 + 128 + 8 * v12) = *(v10 + 128);
          if (v14 != 1)
          {
            v16 = v12 + 1;
            *(v11 + 16 * v16) = *(v10 + 16);
            *(v15 + 8 * v16) = *(v10 + 136);
            if (v14 != 2)
            {
              v17 = v12 + 2;
              *(v11 + 16 * v17) = *(v10 + 32);
              *(v15 + 8 * v17) = *(v10 + 144);
              if (v14 != 3)
              {
                v18 = v12 + 3;
                *(v11 + 16 * v18) = *(v10 + 48);
                *(v15 + 8 * v18) = *(v10 + 152);
                if (v14 != 4)
                {
                  v19 = v12 + 4;
                  v20 = v14 - 4;
                  v21 = (v10 + 160);
                  v22 = (v10 + 64);
                  do
                  {
                    v23 = *v22++;
                    *(v11 + 16 * v19) = v23;
                    *&v23 = *v21++;
                    *(v15 + 8 * v19++) = v23;
                    --v20;
                  }

                  while (v20);
                }
              }
            }
          }
        }

        if (v14 != v6)
        {
          v24 = v10 + 128;
          *v10 = *(v10 + 16 * v14);
          *(v10 + 128) = *(v10 + 128 + 8 * v14);
          v25 = v14 + 1;
          if (v14 + 1 != v6)
          {
            *(v10 + 16) = *(v10 + 16 * v25);
            *(v10 + 136) = *(v24 + 8 * v25);
            v26 = v14 + 2;
            if (v14 + 2 != v6)
            {
              *(v10 + 32) = *(v10 + 16 * v26);
              *(v10 + 144) = *(v24 + 8 * v26);
              v27 = v14 + 3;
              if (v14 + 3 != v6)
              {
                *(v10 + 48) = *(v10 + 16 * v27);
                *(v10 + 152) = *(v24 + 8 * v27);
                v28 = v14 + 4;
                if (v14 + 4 != v6)
                {
                  v29 = (v10 + 160);
                  v30 = (v10 + 64);
                  do
                  {
                    *v30++ = *(v10 + 16 * v28);
                    *v29++ = *(v24 + 8 * v28++);
                  }

                  while (v6 != v28);
                }
              }
            }
          }
        }

        v9 = -v14;
LABEL_6:
        *(a3 + 4 * v8) = v12 - v9;
        v6 = *(a3 + 4 * v5) + v9;
        *(a3 + 4 * v5) = v6;
        v7 = *(a4 + 4 * v5);
        if (v6 >= v7)
        {
          goto LABEL_83;
        }
      }

      if (v12 < v9)
      {
        v9 = *(a3 + 4 * v8);
      }

      if (8 - v6 < v9)
      {
        v9 = 8 - v6;
      }

      if (v6)
      {
        v31 = v10 + 128;
        v32 = v6;
        if (v6 < 0x22)
        {
          goto LABEL_82;
        }

        v33 = v6 - 1;
        v34 = v6 - 1 + v9;
        if (__CFADD__(v33, v9))
        {
          goto LABEL_82;
        }

        v35 = 16 * v33;
        if (v10 > v10 + v35)
        {
          goto LABEL_82;
        }

        v36 = 16 * v34;
        v37 = v10 + v36;
        v38 = v10 + v36 - v35;
        v39 = v10 + 8 + v35;
        v40 = v10 + 8 + v36;
        v41 = v40 - v35;
        v42 = v31 + 8 * v34;
        v43 = 8 * v33;
        v44 = v42 - v43;
        v45 = v31 + v43;
        v46 = v38 > v37 || v10 + 8 > v39;
        v47 = v46 || v41 > v40;
        v48 = v47 || v44 > v42;
        if (v48 || v31 > v45)
        {
          goto LABEL_82;
        }

        v50 = 16 * (v33 + v9);
        v51 = 16 * v33;
        v52 = v10 + v50 - v51;
        v53 = v10 + 8 + v50;
        v54 = v10 + 8 + v50 - v51;
        v55 = v10 + 16 + v50;
        v56 = 8 * (v33 + v9);
        v57 = 8 * v33;
        v58 = v10 + v56 - v57 + 128;
        v59 = v10 + 136 + v56;
        v60 = v10 + 136 + v57;
        v61 = v54 >= v10 + 16 + v51 || v10 + 8 >= v55;
        v62 = !v61;
        v63 = v58 >= v60 || v31 >= v59;
        v64 = !v63;
        v65 = v10 >= v53 || v52 >= v10 + 8 + v51;
        if (!v65 || v62 || v64)
        {
LABEL_82:
          v66 = v32;
          goto LABEL_73;
        }

        v66 = v32 & 1;
        v67 = v10 + 120;
        v68 = v32 - 1;
        v69 = v32 & 0xFFFFFFFE;
        do
        {
          v70 = *(v10 - 16 + 16 * v68);
          v71 = v10 - 24 + 16 * v34;
          *(v71 + 24) = *(v10 + 16 * v68);
          v72 = *(v67 + 8 * v68);
          *(v71 + 8) = v70;
          *(v67 + 8 * v34) = v72;
          v34 -= 2;
          v68 -= 2;
          v69 -= 2;
        }

        while (v69);
        if ((v32 & 0xFFFFFFFE) != v32)
        {
LABEL_73:
          v73 = v66 - 1;
          v74 = v9 + v66 - 1;
          *(v10 + 16 * v74) = *(v10 + 16 * (v66 - 1));
          *(v31 + 8 * v74) = *(v31 + 8 * (v66 - 1));
          if (v66 != 1)
          {
            v85 = v66 - 2;
            v86 = (v10 + 8 * (v66 - 2) + 128);
            v87 = (v10 + 16 * (v66 - 2));
            v88 = v85 + v9;
            do
            {
              v89 = *v87--;
              *(v10 + 16 * v88) = v89;
              *&v89 = *v86--;
              *(v31 + 8 * v88--) = v89;
              --v73;
            }

            while (v73);
          }
        }
      }

      if (v9)
      {
        v75 = v12 - v9;
        v76 = v11 + 128;
        *v10 = *(v11 + 16 * (v12 - v9));
        *(v10 + 128) = *(v11 + 128 + 8 * (v12 - v9));
        v77 = v12 - v9 + 1;
        if (v77 != v12)
        {
          *(v10 + 16) = *(v11 + 16 * v77);
          *(v10 + 136) = *(v76 + 8 * v77);
          v78 = v75 + 2;
          if (v75 + 2 != v12)
          {
            *(v10 + 32) = *(v11 + 16 * v78);
            *(v10 + 144) = *(v76 + 8 * v78);
            v79 = v75 + 3;
            if (v75 + 3 != v12)
            {
              *(v10 + 48) = *(v11 + 16 * v79);
              *(v10 + 152) = *(v76 + 8 * v79);
              v80 = v75 + 4;
              if (v80 != v12)
              {
                v81 = (v10 + 160);
                v82 = (v10 + 64);
                v83 = v9 - 4;
                do
                {
                  *v82++ = *(v11 + 16 * v80);
                  *v81++ = *(v76 + 8 * v80++);
                  --v83;
                }

                while (v83);
              }
            }
          }
        }
      }

      goto LABEL_6;
    }

LABEL_83:
    --v5;
  }

  while (v5);
  if (a2 >= 2)
  {
    v84 = 0;
    do
    {
      v90 = *(a3 + 4 * v84);
      v91 = *(a4 + 4 * v84);
      if (v90 != v91)
      {
        v92 = v84;
        do
        {
          if (++v92 == a2)
          {
            break;
          }

          v94 = *(result + 8 * v92);
          v95 = *(a3 + 4 * v92);
          v96 = *(result + 8 * v84);
          v93 = v90 - v91;
          if (v93 >= 1)
          {
            if (v90 < v93)
            {
              v93 = v90;
            }

            if (8 - v95 < v93)
            {
              v93 = 8 - v95;
            }

            if (v95)
            {
              v115 = v94 + 128;
              v116 = *(a3 + 4 * v92);
              if (v95 < 0x28)
              {
                goto LABEL_161;
              }

              v116 = *(a3 + 4 * v92);
              v117 = v95 - 1 + v93;
              if (__CFADD__(v95 - 1, v93))
              {
                goto LABEL_161;
              }

              v118 = 16 * (v95 - 1);
              v116 = *(a3 + 4 * v92);
              if (v94 > v94 + v118)
              {
                goto LABEL_161;
              }

              v119 = 16 * (v95 - 1 + v93);
              v120 = v94 + v119;
              v121 = v94 + v119 - v118;
              v122 = v94 + 8 + v118;
              v123 = v94 + 8 + v119;
              v124 = v123 - v118;
              v125 = v115 + 8 * v117;
              v126 = 8 * (v95 - 1);
              v127 = v125 - v126;
              v128 = v115 + v126;
              v129 = v121 > v120 || v94 + 8 > v122;
              v130 = v129 || v124 > v123;
              v131 = v130 || v127 > v125;
              v132 = v131 || v115 > v128;
              v116 = *(a3 + 4 * v92);
              if (v132)
              {
                goto LABEL_161;
              }

              v133 = 16 * (v95 - 1 + v93);
              v134 = 16 * (v95 - 1);
              v135 = v94 + v133 - v134;
              v136 = v94 + 8 + v133;
              v137 = v94 + 8 + v133 - v134;
              v138 = v94 + 16 + v133;
              v139 = 8 * (v95 - 1 + v93);
              v140 = 8 * (v95 - 1);
              v141 = v94 + v139 - v140 + 128;
              v142 = v94 + 136 + v139;
              v143 = v94 + 136 + v140;
              v144 = v137 >= v94 + 16 + v134 || v94 + 8 >= v138;
              v145 = !v144;
              v146 = v141 >= v143 || v115 >= v142;
              v147 = !v146;
              v148 = v94 >= v136 || v135 >= v94 + 8 + v134;
              v116 = *(a3 + 4 * v92);
              if (!v148)
              {
                goto LABEL_161;
              }

              v116 = *(a3 + 4 * v92);
              if (v145)
              {
                goto LABEL_161;
              }

              v116 = *(a3 + 4 * v92);
              if (v147)
              {
                goto LABEL_161;
              }

              v116 = *(a3 + 4 * v92) & 1;
              v149 = v94 + 120;
              v150 = v95 - 1;
              v151 = v95 & 0xFFFFFFFE;
              do
              {
                v152 = *(v94 - 16 + 16 * v150);
                v153 = v94 - 24 + 16 * v117;
                *(v153 + 24) = *(v94 + 16 * v150);
                v154 = *(v149 + 8 * v150);
                *(v153 + 8) = v152;
                *(v149 + 8 * v117) = v154;
                v117 -= 2;
                v150 -= 2;
                v151 -= 2;
              }

              while (v151);
              if ((v95 & 0xFFFFFFFE) != v95)
              {
LABEL_161:
                v155 = v116 - 1;
                v156 = v93 + v116 - 1;
                *(v94 + 16 * v156) = *(v94 + 16 * (v116 - 1));
                *(v115 + 8 * v156) = *(v115 + 8 * (v116 - 1));
                if (v116 != 1)
                {
                  v166 = v116 - 2;
                  v167 = (v94 + 8 * (v116 - 2) + 128);
                  v168 = (v94 + 16 * v166);
                  v169 = v166 + v93;
                  do
                  {
                    v170 = *v168--;
                    *(v94 + 16 * v169) = v170;
                    *&v170 = *v167--;
                    *(v115 + 8 * v169--) = v170;
                    --v155;
                  }

                  while (v155);
                }
              }
            }

            if (v93)
            {
              v157 = v90 - v93;
              v158 = v96 + 128;
              *v94 = *(v96 + 16 * (v90 - v93));
              *(v94 + 128) = *(v96 + 128 + 8 * (v90 - v93));
              v159 = v90 - v93 + 1;
              if (v159 != v90)
              {
                *(v94 + 16) = *(v96 + 16 * v159);
                *(v94 + 136) = *(v158 + 8 * v159);
                v160 = v157 + 2;
                if (v157 + 2 != v90)
                {
                  *(v94 + 32) = *(v96 + 16 * v160);
                  *(v94 + 144) = *(v158 + 8 * v160);
                  v161 = v157 + 3;
                  if (v157 + 3 != v90)
                  {
                    *(v94 + 48) = *(v96 + 16 * v161);
                    *(v94 + 152) = *(v158 + 8 * v161);
                    v162 = v157 + 4;
                    if (v162 != v90)
                    {
                      v163 = (v94 + 160);
                      v164 = (v94 + 64);
                      v165 = v93 - 4;
                      do
                      {
                        *v164++ = *(v96 + 16 * v162);
                        *v163++ = *(v158 + 8 * v162++);
                        --v165;
                      }

                      while (v165);
                    }
                  }
                }
              }
            }
          }

          else
          {
            v97 = 8 - v90;
            if (-v93 < v95)
            {
              LODWORD(v98) = -v93;
            }

            else
            {
              LODWORD(v98) = *(a3 + 4 * v92);
            }

            if (v97 >= v98)
            {
              v98 = v98;
            }

            else
            {
              v98 = v97;
            }

            if (v98)
            {
              v99 = v96 + 128;
              *(v96 + 16 * v90) = *v94;
              *(v96 + 128 + 8 * v90) = *(v94 + 128);
              if (v98 != 1)
              {
                v100 = v90 + 1;
                *(v96 + 16 * v100) = *(v94 + 16);
                *(v99 + 8 * v100) = *(v94 + 136);
                if (v98 != 2)
                {
                  v101 = v90 + 2;
                  *(v96 + 16 * v101) = *(v94 + 32);
                  *(v99 + 8 * v101) = *(v94 + 144);
                  if (v98 != 3)
                  {
                    v102 = v90 + 3;
                    *(v96 + 16 * v102) = *(v94 + 48);
                    *(v99 + 8 * v102) = *(v94 + 152);
                    if (v98 != 4)
                    {
                      v103 = v90 + 4;
                      v104 = v98 - 4;
                      v105 = (v94 + 160);
                      v106 = (v94 + 64);
                      do
                      {
                        v107 = *v106++;
                        *(v96 + 16 * v103) = v107;
                        *&v107 = *v105++;
                        *(v99 + 8 * v103++) = v107;
                        --v104;
                      }

                      while (v104);
                    }
                  }
                }
              }
            }

            if (v98 != v95)
            {
              v108 = v94 + 128;
              *v94 = *(v94 + 16 * v98);
              *(v94 + 128) = *(v94 + 128 + 8 * v98);
              v109 = v98 + 1;
              if (v98 + 1 != v95)
              {
                *(v94 + 16) = *(v94 + 16 * v109);
                *(v94 + 136) = *(v108 + 8 * v109);
                v110 = v98 + 2;
                if (v98 + 2 != v95)
                {
                  *(v94 + 32) = *(v94 + 16 * v110);
                  *(v94 + 144) = *(v108 + 8 * v110);
                  v111 = v98 + 3;
                  if (v98 + 3 != v95)
                  {
                    *(v94 + 48) = *(v94 + 16 * v111);
                    *(v94 + 152) = *(v108 + 8 * v111);
                    v112 = v98 + 4;
                    if (v98 + 4 != v95)
                    {
                      v113 = (v94 + 160);
                      v114 = (v94 + 64);
                      do
                      {
                        *v114++ = *(v94 + 16 * v112);
                        *v113++ = *(v108 + 8 * v112++);
                      }

                      while (v95 != v112);
                    }
                  }
                }
              }
            }

            v93 = -v98;
          }

          *(a3 + 4 * v92) = v93 + v95;
          v90 = *(a3 + 4 * v84) - v93;
          *(a3 + 4 * v84) = v90;
          v91 = *(a4 + 4 * v84);
        }

        while (v90 < v91);
      }

      ++v84;
    }

    while (v84 != v4);
  }

  return result;
}

uint64_t *sub_298AE4288(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = (a1 + 1);
  v8 = *a1;
  v9 = (a2 == 1);
  if (a2 == 1)
  {
    v30 = *(v8 + 196);
    if (v30 <= 0xA)
    {
      v31 = v8 + 8;
      v32 = *(*v7 + 12);
      if (v30 != v32)
      {
        v33 = v32 + ~v32 + v30;
        *(v31 + 8 * v30) = *(v31 + 8 * v33);
        *(v8 + 96 + 8 * v30) = *(v8 + 96 + 8 * v33);
        if (~v32 + v30)
        {
          v40 = v30 - 1;
          do
          {
            *(v31 + 8 * v40) = *(v31 + 8 * (v40 - 1));
            *(v8 + 96 + 8 * v40) = *(v8 + 96 + 8 * (v40 - 1));
            --v40;
          }

          while (v32 != v40);
        }
      }

      v9 = 0;
      v34 = 8 * v32;
      *(v31 + v34) = a3;
      *(v8 + v34 + 96) = a4;
      v35 = *(v8 + 196) + 1;
      *(v8 + 196) = v35;
      v36 = *v7;
      *(v36 + 8) = v35;
      v37 = *(*v36 + 8 * *(v36 + 12));
      *(v36 + 16) = v37 & 0xFFFFFFFFFFFFFFC0;
      *(v36 + 24) = (v37 & 0x3F) + 1;
      return v9;
    }

    v38 = sub_298AE0F38(*a1, *(*v7 + 12));
    sub_298B872C4(v7, v8 + 8, *(v8 + 196), v38);
    a2 = 2;
  }

  v10 = (a2 - 1);
  sub_298ADF670(v7, a2 - 1);
  v11 = *v7;
  v12 = *(*v7 + 16 * v10 + 8);
  if (v12 == 12)
  {
    v9 = sub_298AE4530(a1, v10);
    v13 = (v10 + v9);
    v11 = a1[1];
    v12 = *(v11 + 16 * v13 + 8);
    LODWORD(v10) = v10 + v9;
  }

  else
  {
    v13 = v10;
  }

  v14 = v11 + 16 * v13;
  v15 = *v14;
  v16 = *(v14 + 12);
  if (v12 != v16)
  {
    v17 = v16 + ~v16 + v12;
    *(v15 + 8 * v12) = *(v15 + 8 * v17);
    *(v15 + 96 + 8 * v12) = *(v15 + 96 + 8 * v17);
    if (~v16 + v12)
    {
      v39 = v12 - 1;
      do
      {
        *(v15 + 8 * v39) = *(v15 + 8 * (v39 - 1));
        *(v15 + 96 + 8 * v39) = *(v15 + 96 + 8 * (v39 - 1));
        --v39;
      }

      while (v16 != v39);
    }
  }

  v18 = (v15 + 8 * v16);
  *v18 = a3;
  v18[12] = a4;
  v19 = *v7;
  v20 = *v7 + 16 * v13;
  v21 = *(v20 + 8);
  *(v20 + 8) = v21 + 1;
  if (v10)
  {
    *(*(v19 + 16 * (v10 - 1)) + 8 * *(v19 + 16 * (v10 - 1) + 12)) = *(*(v19 + 16 * (v10 - 1)) + 8 * *(v19 + 16 * (v10 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v21;
    v19 = *v7;
    v20 = *v7 + 16 * v13;
    v22 = *(v20 + 12);
    if (v22 == *(v20 + 8) - 1)
    {
      v23 = (v20 - 8);
      while (--v13)
      {
        v24 = *(v23 - 1);
        v26 = *v23;
        v25 = v23[1];
        v23 -= 4;
        *(v24 + 8 * v25 + 96) = a4;
        if (v25 != v26 - 1)
        {
          goto LABEL_13;
        }
      }

      *(*v19 + 8 * *(v19 + 12) + 88) = a4;
    }
  }

  else
  {
    v22 = *(v20 + 12);
  }

LABEL_13:
  v27 = *(*v20 + 8 * v22);
  v28 = v19 + 16 * (v10 + 1);
  *v28 = v27 & 0xFFFFFFFFFFFFFFC0;
  *(v28 + 8) = (v27 & 0x3F) + 1;
  return v9;
}

uint64_t *sub_298AE4530(unsigned int *a1, uint64_t a2)
{
  v2 = a2;
  v97 = *MEMORY[0x29EDCA608];
  v5 = a1 + 2;
  v4 = *(a1 + 1);
  v94 = 0u;
  v95 = 0u;
  v6 = a2;
  v7 = *(v4 + 16 * a2 + 12);
  if (!a2)
  {
    goto LABEL_12;
  }

  v8 = -1;
  while (1)
  {
    v9 = v4 + 16 * (a2 + v8);
    if (!(a2 + v8))
    {
      break;
    }

    --v8;
    if (*(v9 + 12))
    {
      v10 = a2 + v8 + 2;
      goto LABEL_6;
    }
  }

  v10 = 1;
LABEL_6:
  v11 = *(v9 + 12);
  if (v11)
  {
    v12 = *(*v9 + 8 * (v11 - 1));
    if (v10 != a2)
    {
      v13 = a2 - v10;
      do
      {
        v12 = *((v12 & 0xFFFFFFFFFFFFFFC0) + 8 * (v12 & 0x3F));
        --v13;
      }

      while (v13);
    }

    if (v12)
    {
      v14 = 0;
      v15 = (v12 & 0x3F) + 1;
      v96[0] = v15;
      v7 += v15;
      *&v94 = v12 & 0xFFFFFFFFFFFFFFC0;
      LODWORD(v12) = 1;
      goto LABEL_14;
    }

    v15 = 0;
  }

  else
  {
LABEL_12:
    v15 = 0;
    LODWORD(v12) = 0;
  }

  v14 = 1;
LABEL_14:
  v16 = v4 + 16 * a2;
  v17 = *(v16 + 8);
  v96[v12] = v17;
  v18 = v17 + v15;
  v19 = v12 + 1;
  *(&v94 | (8 * v12)) = *v16;
  if (a2)
  {
    v20 = -1;
    while (1)
    {
      v21 = (a2 + v20);
      if (!(a2 + v20))
      {
        break;
      }

      v22 = *(v4 + 16 * v21 + 12);
      v23 = *(v4 + 16 * v21 + 8) - 1;
      --v20;
      if (v22 != v23)
      {
        v24 = a2 + v20 + 2;
        goto LABEL_19;
      }
    }

    v22 = *(v4 + 12);
    v23 = *(v4 + 8) - 1;
    v24 = 1;
LABEL_19:
    if (v22 != v23)
    {
      v54 = *(*(v4 + 16 * v21) + 8 * (v22 + 1));
      if (v24 != a2)
      {
        v55 = a2 - v24;
        do
        {
          v54 = *(v54 & 0xFFFFFFFFFFFFFFC0);
          --v55;
        }

        while (v55);
      }

      if (v54)
      {
        v56 = (v54 & 0x3F) + 1;
        v96[v19] = v56;
        v18 += v56;
        *(&v94 + v19) = v54 & 0xFFFFFFFFFFFFFFC0;
        v19 = v12 | 2;
      }
    }
  }

  v25 = v18 + 1;
  if (v18 + 1 <= 12 * v19)
  {
    v26 = 0;
  }

  else
  {
    if (v19 == 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v19 - 1;
    }

    v96[v19] = v96[v26];
    *(&v94 + v19) = *(&v94 + v26);
    v96[v26] = 0;
    v27 = *(*a1 + 200);
    v28 = *v27;
    if (*v27)
    {
      *v27 = *v28;
    }

    else
    {
      v28 = sub_298AE0D6C((v27 + 1), 192, 6);
    }

    *v28 = 0u;
    *(v28 + 16) = 0u;
    *(v28 + 160) = 0u;
    *(v28 + 176) = 0u;
    *(v28 + 128) = 0u;
    *(v28 + 144) = 0u;
    *(v28 + 96) = 0u;
    *(v28 + 112) = 0u;
    *(v28 + 64) = 0u;
    *(v28 + 80) = 0u;
    ++v19;
    *(v28 + 32) = 0u;
    *(v28 + 48) = 0u;
    *(&v94 + v26) = v28;
  }

  v29 = v25 / v19;
  v30 = v25 % v19;
  if (v25 % v19)
  {
    v31 = v29 + 1;
  }

  else
  {
    v31 = v25 / v19;
  }

  v90 = v31;
  if (v7 < v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v19;
  }

  if (v7 < v31)
  {
    v33 = v7;
  }

  else
  {
    v33 = 0;
  }

  if (v19 != 1)
  {
    v34 = v7 - v31;
    v35 = v7 >= v31;
    if (v30 <= 1)
    {
      v36 = v29;
    }

    else
    {
      v36 = v29 + 1;
    }

    v91 = v36;
    v37 = v36 + v31;
    if (v35 && v7 < v37)
    {
      v32 = 1;
      v33 = v34;
    }

    if (v19 != 2)
    {
      if (v30 <= 2)
      {
        v38 = v29;
      }

      else
      {
        v38 = v29 + 1;
      }

      v92 = v38;
      v39 = v38 + v37;
      if (v32 == v19 && v7 < v39)
      {
        v32 = 2;
        v33 = v7 - v37;
      }

      if (v19 != 3)
      {
        if (v30 > 3)
        {
          ++v29;
        }

        v93 = v29;
        if (v32 == v19 && v29 + v39 > v7)
        {
          v32 = 3;
          v33 = v7 - v39;
        }
      }
    }
  }

  --*(&v90 + v32);
  sub_298AE4C20(&v94, v19, v96, &v90);
  if ((v14 & 1) == 0)
  {
    sub_298B87398(v5, v2);
  }

  v40 = v90 - 1;
  v41 = *(v94 + 8 * v40 + 96);
  v42 = *v5;
  *(*v5 + 16 * v2 + 8) = v90;
  if (v2)
  {
    *(*(v42 + 16 * (v2 - 1)) + 8 * *(v42 + 16 * (v2 - 1) + 12)) = *(*(v42 + 16 * (v2 - 1)) + 8 * *(v42 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v40;
    v43 = *v5;
    v44 = 16 * v6;
    while (1)
    {
      v45 = v44 - 16;
      if (v44 == 16)
      {
        break;
      }

      v46 = v43 + v44;
      v47 = *(v46 - 16);
      v49 = v46 - 8;
      LODWORD(v46) = *(v46 - 8);
      v48 = *(v49 + 4);
      *(v47 + 8 * v48 + 96) = v41;
      LODWORD(v47) = v46 - 1;
      v44 = v45;
      if (v48 != v47)
      {
        goto LABEL_61;
      }
    }

    *(*v43 + 8 * *(v43 + 12) + 88) = v41;
  }

LABEL_61:
  if (v19 == 1)
  {
    result = 0;
    v51 = 0;
  }

  else
  {
    sub_298B87590(v5, v2);
    v59 = (v91 - 1);
    v60 = *(*(&v94 + 1) + 8 * v59 + 96);
    if (v26 == 1)
    {
      result = sub_298AE4288(a1, v2, *(&v94 + 1) & 0xFFFFFFFFFFFFFFC0 | v59, v60);
      v2 = (v2 + result);
    }

    else
    {
      v61 = *v5;
      *(*v5 + 16 * v2 + 8) = v91;
      if (v2)
      {
        *(*(v61 + 16 * (v2 - 1)) + 8 * *(v61 + 16 * (v2 - 1) + 12)) = *(*(v61 + 16 * (v2 - 1)) + 8 * *(v61 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v59;
        v62 = *v5;
        v63 = 16 * v2;
        while (1)
        {
          v64 = v63 - 16;
          if (v63 == 16)
          {
            break;
          }

          v65 = v62 + v63;
          v66 = *(v65 - 16);
          v68 = v65 - 8;
          LODWORD(v65) = *(v65 - 8);
          v67 = *(v68 + 4);
          *(v66 + 8 * v67 + 96) = v60;
          LODWORD(v66) = v65 - 1;
          v63 = v64;
          if (v67 != v66)
          {
            goto LABEL_81;
          }
        }

        result = 0;
        *(*v62 + 8 * *(v62 + 12) + 88) = v60;
      }

      else
      {
LABEL_81:
        result = 0;
      }
    }

    if (v19 == 2)
    {
      v51 = 1;
    }

    else
    {
      v69 = result;
      sub_298B87590(v5, v2);
      v70 = (v92 - 1);
      v71 = *(v95 + 8 * v70 + 96);
      if (v26 == 2)
      {
        v69 = sub_298AE4288(a1, v2, v95 & 0xFFFFFFFFFFFFFFC0 | v70, v71);
        v2 = (v2 + v69);
      }

      else
      {
        v72 = *v5;
        *(*v5 + 16 * v2 + 8) = v92;
        if (v2)
        {
          *(*(v72 + 16 * (v2 - 1)) + 8 * *(v72 + 16 * (v2 - 1) + 12)) = *(*(v72 + 16 * (v2 - 1)) + 8 * *(v72 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v70;
          v73 = *v5;
          v74 = 16 * v2;
          while (1)
          {
            v75 = v74 - 16;
            if (v74 == 16)
            {
              break;
            }

            v76 = v73 + v74;
            v77 = *(v76 - 16);
            v79 = v76 - 8;
            LODWORD(v76) = *(v76 - 8);
            v78 = *(v79 + 4);
            *(v77 + 8 * v78 + 96) = v71;
            LODWORD(v77) = v76 - 1;
            v74 = v75;
            if (v78 != v77)
            {
              goto LABEL_93;
            }
          }

          *(*v73 + 8 * *(v73 + 12) + 88) = v71;
        }
      }

LABEL_93:
      if (v19 == 3)
      {
        v51 = 2;
      }

      else
      {
        sub_298B87590(v5, v2);
        v80 = (v93 - 1);
        v81 = *(*(&v95 + 1) + 8 * v80 + 96);
        if (v26 == 3)
        {
          v69 = sub_298AE4288(a1, v2, *(&v95 + 1) & 0xFFFFFFFFFFFFFFC0 | v80, v81);
          LODWORD(v2) = v2 + v69;
        }

        else
        {
          v82 = *v5;
          *(*v5 + 16 * v2 + 8) = v93;
          if (v2)
          {
            *(*(v82 + 16 * (v2 - 1)) + 8 * *(v82 + 16 * (v2 - 1) + 12)) = *(*(v82 + 16 * (v2 - 1)) + 8 * *(v82 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v80;
            v83 = *v5;
            v84 = 16 * v2;
            while (1)
            {
              v85 = v84 - 16;
              if (v84 == 16)
              {
                break;
              }

              v86 = v83 + v84;
              v87 = *(v86 - 16);
              v89 = v86 - 8;
              LODWORD(v86) = *(v86 - 8);
              v88 = *(v89 + 4);
              *(v87 + 8 * v88 + 96) = v81;
              LODWORD(v87) = v86 - 1;
              v84 = v85;
              if (v88 != v87)
              {
                goto LABEL_105;
              }
            }

            *(*v83 + 8 * *(v83 + 12) + 88) = v81;
          }
        }

LABEL_105:
        if (v19 != 4)
        {
          result = sub_298B87590(v5, v2);
          __break(1u);
          return result;
        }

        v51 = 3;
      }

      result = v69;
    }
  }

  v52 = v32 - v51;
  if (v32 != v51)
  {
    do
    {
      v57 = result;
      sub_298B87398(v5, v2);
      result = v57;
    }

    while (!__CFADD__(v52++, 1));
  }

  *(*v5 + 16 * v2 + 12) = v33;
  v53 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298AE4C20(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 - 1;
  if (a2 != 1)
  {
    v5 = v4;
    do
    {
      v6 = *(a3 + 4 * v5);
      v7 = *(a4 + 4 * v5);
      if (v6 != v7)
      {
        v8 = v5;
        do
        {
          if (!v8)
          {
            break;
          }

          --v8;
          v10 = *(result + 8 * v5);
          v11 = *(result + 8 * v8);
          v12 = *(a3 + 4 * v8);
          v9 = v7 - v6;
          if (v9 >= 1)
          {
            if (v12 < v9)
            {
              v9 = *(a3 + 4 * v8);
            }

            if (12 - v6 < v9)
            {
              v9 = 12 - v6;
            }

            if (v6)
            {
              v19 = v6 - 1;
              v20 = &v10[v6 - 1];
              v21 = -v6;
              v22 = v19 + v9;
              do
              {
                v10[v22] = *v20;
                v10[v22 + 12] = v20[12];
                --v20;
                --v22;
                v23 = __CFADD__(v21++, 1);
              }

              while (!v23);
            }

            if (v9)
            {
              v24 = v12 - v9;
              v25 = v9;
              do
              {
                *v10 = *(v11 + 8 * v24);
                v10[12] = *(v11 + 96 + 8 * v24++);
                ++v10;
                --v25;
              }

              while (v25);
            }
          }

          else
          {
            v13 = 12 - v12;
            if (-v9 < v6)
            {
              LODWORD(v14) = -v9;
            }

            else
            {
              LODWORD(v14) = v6;
            }

            if (v13 >= v14)
            {
              v14 = v14;
            }

            else
            {
              v14 = v13;
            }

            if (v14)
            {
              v15 = *(result + 8 * v5);
              v16 = v14;
              do
              {
                *(v11 + 8 * v12) = *v15;
                *(v11 + 96 + 8 * v12++) = v15[12];
                ++v15;
                --v16;
              }

              while (v16);
            }

            if (v14 != v6)
            {
              v17 = v10;
              v18 = v14;
              do
              {
                *v17 = v10[v18];
                v17[12] = v10[v18++ + 12];
                ++v17;
              }

              while (v6 != v18);
            }

            v9 = -v14;
          }

          *(a3 + 4 * v8) -= v9;
          v6 = *(a3 + 4 * v5) + v9;
          *(a3 + 4 * v5) = v6;
          v7 = *(a4 + 4 * v5);
        }

        while (v6 < v7);
      }

      --v5;
    }

    while (v5);
    if (a2 >= 2)
    {
      v26 = 0;
      do
      {
        v27 = *(a3 + 4 * v26);
        v28 = *(a4 + 4 * v26);
        if (v27 != v28)
        {
          v29 = v26;
          do
          {
            if (++v29 == a2)
            {
              break;
            }

            v31 = *(result + 8 * v29);
            v32 = *(a3 + 4 * v29);
            v33 = *(result + 8 * v26);
            v30 = v27 - v28;
            if (v30 >= 1)
            {
              if (v27 < v30)
              {
                v30 = v27;
              }

              if (12 - v32 < v30)
              {
                v30 = 12 - v32;
              }

              if (v32)
              {
                v40 = v32 - 1;
                v41 = &v31[v32 - 1];
                v42 = -v32;
                v43 = v40 + v30;
                do
                {
                  v31[v43] = *v41;
                  v31[v43 + 12] = v41[12];
                  --v41;
                  --v43;
                  v23 = __CFADD__(v42++, 1);
                }

                while (!v23);
              }

              if (v30)
              {
                v44 = v27 - v30;
                v45 = v30;
                do
                {
                  *v31 = *(v33 + 8 * v44);
                  v31[12] = *(v33 + 96 + 8 * v44++);
                  ++v31;
                  --v45;
                }

                while (v45);
              }
            }

            else
            {
              v34 = 12 - v27;
              if (-v30 < v32)
              {
                LODWORD(v35) = -v30;
              }

              else
              {
                LODWORD(v35) = *(a3 + 4 * v29);
              }

              if (v34 >= v35)
              {
                v35 = v35;
              }

              else
              {
                v35 = v34;
              }

              if (v35)
              {
                v36 = *(result + 8 * v29);
                v37 = v35;
                do
                {
                  *(v33 + 8 * v27) = *v36;
                  *(v33 + 96 + 8 * v27++) = v36[12];
                  ++v36;
                  --v37;
                }

                while (v37);
              }

              if (v35 != v32)
              {
                v38 = v31;
                v39 = v35;
                do
                {
                  *v38 = v31[v39];
                  v38[12] = v31[v39++ + 12];
                  ++v38;
                }

                while (v32 != v39);
              }

              v30 = -v35;
            }

            *(a3 + 4 * v29) += v30;
            v27 = *(a3 + 4 * v26) - v30;
            *(a3 + 4 * v26) = v27;
            v28 = *(a4 + 4 * v26);
          }

          while (v27 < v28);
        }

        ++v26;
      }

      while (v26 != v4);
    }
  }

  return result;
}

uint64_t sub_298AE4F24(void *a1, void *a2, uint64_t a3, std::string **a4)
{
  v8 = (*(**a2 + 48))(*a2, &unk_2A13C3620);
  v9 = *a2;
  *a2 = 0;
  if (v8)
  {
    v10 = *(a3 + 8);
    **a3 = *(v9 + 32);
LABEL_5:
    v11 = *(v9 + 31);
    if (v11 >= 0)
    {
      v12 = (v9 + 8);
    }

    else
    {
      v12 = *(v9 + 8);
    }

    if (v11 >= 0)
    {
      v13 = *(v9 + 31);
    }

    else
    {
      v13 = *(v9 + 16);
    }

    std::string::append(v10, v12, v13);
    goto LABEL_12;
  }

  if ((*(*v9 + 48))(v9, &unk_2A13C3651))
  {
    v10 = *a4;
    goto LABEL_5;
  }

  result = (*(*v9 + 48))(v9, &unk_2A13C3653);
  if (!result)
  {
    *a1 = v9;
    return result;
  }

LABEL_12:
  *a1 = 0;
  v14 = *(*v9 + 8);

  return v14(v9);
}

void sub_298AE508C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  *(a1 + 16) = 0u;
  *a1 = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = -1;
  *(a1 + 152) = -1;
  *(a1 + 168) = 0u;
  *(a1 + 160) = 1065353216;
  *(a1 + 184) = 0u;
  *(a1 + 200) = -1;
  *(a1 + 208) = -1;
  *(a1 + 216) = 1065353216;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 248) = a1 + 264;
  *(a1 + 256) = 0;
  *(a1 + 264) = a1 + 272;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = a1 + 296;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 1065353216;
  v4 = sub_298B227A0(2);
  v5 = os_signpost_id_generate(v4);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v6 = *(a3 + 8);
    v9 = *(v6 + 72);
    v7 = (v6 + 72);
    v8 = v9;
    if (v7[23] < 0)
    {
      v7 = v8;
    }

    __p = 136315138;
    __p_4 = v7;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Trace::SystemState", "system=%s", &__p, 0xCu);
  }

  v12 = 0;
  operator new();
}

void *sub_298AE617C(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  sub_298AE729C(&v2);
  result = v2;
  if (v2)
  {
    return (*(*v2 + 8))(v2);
  }

  return result;
}

void *sub_298AE61DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_298AEA88C(a1, a2);
  }

  else
  {
    result = sub_298C094FC(v3, a2) + 3;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_298AE6224(uint64_t a1, uint64_t *a2)
{
  v4 = sub_298AE7634(a1, a2);
  sub_298AE780C(v4 + 56, (a2 + 7));
  sub_298AE7880(a1 + 80, (a2 + 10));
  sub_298AE79CC(a1 + 96, a2 + 12);
  sub_298AE79CC(a1 + 120, a2 + 15);
  sub_298AE7AF4(a1 + 144, a2 + 18);
  return a1;
}

uint64_t sub_298AE628C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(v4 + 144) = 0;
  v5 = *(v4 + 152);
  v6 = *(v4 + 160);
  if (v5 != v6)
  {
    do
    {
      v7 = *v5++;
      v8 = *a1;
      v9 = *(v7 + 8);
      v13[0] = *(*a2 + 16);
      v13[1] = v9;
      v13[2] = v13;
      sub_298AE7F48(v8, v13[0], v9)[4] = v7;
    }

    while (v5 != v6);
    v4 = *a2;
  }

  v10 = *(a1 + 8);
  *a2 = 0;
  v12 = v4;
  sub_298ADE9FC(v10 + 8, &v12);
  result = v12;
  v12 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t sub_298AE63DC(void *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  memset(v10, 0, sizeof(v10));
  v11 = 1065353216;
  v12 = 0;
  v13 = 0;
  v14 = 0x3FC999999999999ALL;
  v4 = sub_298B227A0(2);
  v5 = os_signpost_id_generate(v4);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Trace::load", &unk_298EC00B5, buf, 2u);
  }

  v15[0] = &unk_2A1F1B938;
  v15[1] = v5;
  v15[2] = v4;
  v15[3] = v15;
  sub_298AE98B0(buf, v15);
  v17 = v5;
  sub_298AE893C(v15);
  v6 = *a2;
  *(v6 + 24) = 0;
  v7 = *(v6 + 32);
  if (v7 != *(v6 + 40))
  {
    sub_298BD60CC(*(*v7 + 8));
  }

  *a1 = 0;
  sub_298AE9948(buf);
  result = sub_298AE88F0(v10);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *sub_298AE6830(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v4 = v1;
    v5 = sub_298AEAB60(v2);
    MEMORY[0x29C2945F0](v5, 0x10B0C402291093ALL);
    return v4;
  }

  return v1;
}

uint64_t sub_298AE6918(uint64_t a1, unint64_t a2)
{
  v2 = sub_298AEBF18((a1 + 88), a2);
  if (!v2)
  {
    abort();
  }

  v3 = v2[3];
  *(v3 + 80) = 0;
  result = *(v3 + 88);
  v5 = (*(v3 + 96) - result) >> 3;
  return result;
}

uint64_t sub_298AE6950(int8x8_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[12];
  if (!*&v4)
  {
    goto LABEL_15;
  }

  v7 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = vcnt_s8(v4);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] <= 1uLL)
  {
    v11 = (*&v4 - 1) & v9;
  }

  else
  {
    v11 = v9 < *&v4 ? v9 : v9 % *&v4;
  }

  v12 = *(*&a1[11] + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_15:
    abort();
  }

  if (v10.u32[0] < 2uLL)
  {
    v14 = *&v4 - 1;
    while (1)
    {
      v16 = v13[1];
      if (v9 == v16)
      {
        if (v13[2] == a2)
        {
          goto LABEL_20;
        }
      }

      else if ((v16 & v14) != v11)
      {
        goto LABEL_15;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v15 = v13[1];
    if (v9 == v15)
    {
      break;
    }

    if (v15 >= *&v4)
    {
      v15 %= *&v4;
    }

    if (v15 != v11)
    {
      goto LABEL_15;
    }

LABEL_10:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_15;
    }
  }

  if (v13[2] != a2)
  {
    goto LABEL_10;
  }

LABEL_20:
  v17 = v13[3];
  *v41 = 0u;
  *__p = 0u;
  v43 = *(v17 + 144);
  v44 = *(v17 + 160);
  prime = *(v17 + 120);
  if (prime == 1)
  {
    prime = 2;
    goto LABEL_25;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(v17 + 120));
  }

  if (prime)
  {
LABEL_25:
    sub_298AE8270(v41, prime);
  }

  v19 = *(v17 + 128);
  if (!v19)
  {
    goto LABEL_57;
  }

  while (2)
  {
    v20 = v19[2];
    v21 = (DWORD2(v43) ^ v43);
    if (!v41[1])
    {
LABEL_44:
      operator new();
    }

    v22 = vcnt_s8(v41[1]);
    v22.i16[0] = vaddlv_u8(v22);
    if (v22.u32[0] <= 1uLL)
    {
      v23 = (LODWORD(v41[1]) - 1) & v21;
      v24 = *(v41[0] + v23);
      if (!v24)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v23 = DWORD2(v43) ^ v43;
      if (v21 >= v41[1])
      {
        v23 = (DWORD2(v43) ^ v43) % LODWORD(v41[1]);
      }

      v24 = *(v41[0] + v23);
      if (!v24)
      {
        goto LABEL_44;
      }
    }

    v25 = *v24;
    if (!v25)
    {
      goto LABEL_44;
    }

    v26 = v19[3];
    if (v22.u32[0] < 2uLL)
    {
      while (1)
      {
        v30 = v25[1];
        if (v30 == v21)
        {
          if (v25[2] == v20 && v25[3] == v26)
          {
            goto LABEL_45;
          }
        }

        else if ((v30 & (v41[1] - 1)) != v23)
        {
          goto LABEL_44;
        }

        v25 = *v25;
        if (!v25)
        {
          goto LABEL_44;
        }
      }
    }

    while (2)
    {
      v28 = v25[1];
      if (v28 != v21)
      {
        if (v28 >= v41[1])
        {
          v28 %= v41[1];
        }

        if (v28 != v23)
        {
          goto LABEL_44;
        }

        goto LABEL_39;
      }

      if (v25[2] != v20 || v25[3] != v26)
      {
LABEL_39:
        v25 = *v25;
        if (!v25)
        {
          goto LABEL_44;
        }

        continue;
      }

      break;
    }

LABEL_45:
    v19 = *v19;
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_57:
  v31 = (DWORD2(v43) ^ v43);
  if ((v41[1] & (v41[1] - 1)) != 0)
  {
    v32 = DWORD2(v43) ^ v43;
    if (v31 >= v41[1])
    {
      v32 = (DWORD2(v43) ^ v43) % LODWORD(v41[1]);
    }

    v33 = v41[0];
    v34 = *(v41[0] + v32);
    do
    {
      do
      {
        v34 = *v34;
      }

      while (v34[1] != v31);
    }

    while (v34[2] != a3 || v34[3] != a4);
  }

  else
  {
    v33 = v41[0];
    v34 = *(v41[0] + ((LODWORD(v41[1]) - 1) & v31));
    do
    {
      do
      {
        v34 = *v34;
      }

      while (v34[1] != v31);
    }

    while (v34[2] != a3 || v34[3] != a4);
  }

  v36 = v34[4];
  if (__p[0])
  {
    v37 = __p[0];
    do
    {
      v38 = *v37;
      operator delete(v37);
      v37 = v38;
    }

    while (v38);
    v33 = v41[0];
  }

  v41[0] = 0;
  if (v33)
  {
    operator delete(v33);
  }

  return v36;
}

uint64_t **sub_298AE6FEC(uint64_t **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v4 = v1;
    v5 = sub_298AEC0D4(v2);
    MEMORY[0x29C2945F0](v5, 0x10A0C40A5500B67);
    return v4;
  }

  return v1;
}

void hwtrace_trace_init_from_directory(char *__s)
{
  v3 = *MEMORY[0x29EDCA608];
  if (__s)
  {
    v2 = strlen(__s);
  }

  else
  {
    v2 = 0;
  }

  sub_298B9CDFC();
  sub_298C1E528(__s, v2);
}

uint64_t *sub_298AE71CC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_298AE89BC(v2);
    MEMORY[0x29C2945F0](v3, 0x1060C404A4CFFDFLL);
  }

  return a1;
}

uint64_t hwtrace_load_options_deinit(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x29C2945F0);
  }

  return result;
}

void *sub_298AE729C(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  sub_298AE72FC(&v2, &v3);
  result = v2;
  if (v2)
  {
    return (*(*v2 + 8))(v2);
  }

  return result;
}

void **sub_298AE72FC@<X0>(void **result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v3 + 48))(v3, &unk_2A13C3652))
    {
      v4 = v3[2];
      if (v3[1] == v4)
      {
        v6 = 0;
      }

      else
      {
        v5 = v3[1];
        v6 = 0;
        do
        {
          v13 = v6;
          v7 = *v5;
          v8 = v5;
          *v5 = 0;
          v11 = v7;
          sub_298AE7528(&v11, &v12);
          sub_298ADE6E8(&v13, &v12, &v14);
          v6 = v14;
          v14 = 0;
          if (v12)
          {
            (*(*v12 + 8))(v12);
          }

          v9 = v11;
          v11 = 0;
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          if (v13)
          {
            (*(*v13 + 8))(v13);
          }

          v5 = v8 + 1;
        }

        while (v8 + 1 != v4);
      }

      *a2 = v6;
      return (*(*v3 + 8))(v3);
    }

    else
    {
      result = (*(*v3 + 48))(v3, &unk_2A13C3653);
      if (result)
      {
        *a2 = 0;
        v10 = *(*v3 + 8);

        return v10(v3);
      }

      else
      {
        *a2 = v3;
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_298AE7528@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (*(**a1 + 48))(*a1, &unk_2A13C3653);
  result = *a1;
  *a1 = 0;
  if (v4)
  {
    *a2 = 0;
    if (result)
    {
      v6 = *(*result + 8);

      return v6();
    }
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_298AE75D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    sub_298AE761C();
    return sub_298AE761C();
  }
}

uint64_t sub_298AE7634(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v18 = *v4;
        v19 = v4[4];
        if (v19)
        {
          v20 = v4[5];
          v17 = v4[4];
          if (v20 != v19)
          {
            do
            {
              v22 = *--v20;
              v21 = v22;
              *v20 = 0;
              if (v22)
              {
                (*(*v21 + 8))(v21);
              }
            }

            while (v20 != v19);
            v17 = v4[4];
          }

          v4[5] = v19;
          operator delete(v17);
        }

        operator delete(v4);
        v4 = v18;
      }

      while (v18);
    }

    *(a1 + 16) = 0;
    v5 = *(a1 + 8);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v7 = *a2;
  *a2 = 0;
  v8 = *a1;
  *a1 = v7;
  if (v8)
  {
    operator delete(v8);
  }

  *(a1 + 8) = a2[1];
  a2[1] = 0;
  v9 = a2[3];
  *(a1 + 24) = v9;
  *(a1 + 32) = *(a2 + 2);
  v12 = a2[2];
  v11 = a2 + 2;
  v10 = v12;
  v13 = *(v11 + 8);
  *(a1 + 16) = v12;
  *(a1 + 48) = v13;
  if (v9)
  {
    v14 = *(v10 + 8);
    v15 = *(a1 + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v14 >= v15)
      {
        v14 %= v15;
      }
    }

    else
    {
      v14 &= v15 - 1;
    }

    *(*a1 + 8 * v14) = a1 + 16;
    *v11 = 0;
    v11[1] = 0;
  }

  return a1;
}

void *sub_298AE77A0(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_298AE780C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x29C2945E0](*a1, 8);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *a2 = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = *(a1 + 12);
  *(a1 + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  return a1;
}

uint64_t sub_298AE7880(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    if (*(a2 + 8))
    {
      v2 = result;
      sub_298AE7908(result, a2);
      return v2;
    }

    else
    {
      v3 = *(result + 8);
      if (v3)
      {
        v4 = -32 * v3;
        v5 = *result + 32 * v3 - 32;
        do
        {
          v6 = result;
          sub_298AE798C(v5);
          result = v6;
          v5 -= 32;
          v4 += 32;
        }

        while (v4);
      }

      *(result + 8) = 0;
    }
  }

  return result;
}

double sub_298AE7908(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = -32 * v5;
    v8 = v4 + 32 * v5 - 32;
    do
    {
      v8 = sub_298AE798C(v8) - 32;
      v7 += 32;
    }

    while (v7);
    v4 = *a1;
  }

  if (v4 != (a1 + 16))
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_298AE798C(uint64_t result)
{
  v1 = (result + 8);
  if (*(result + 8))
  {
    v2 = result;
    sub_298AE77A0((result + 8));
    operator delete(*v1);
    return v2;
  }

  return result;
}

void sub_298AE79CC(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  sub_298AE7A38(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void sub_298AE7A38(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_298AE7A38(a1, *a2);
    sub_298AE7A38(a1, a2[1]);
    sub_298AE7A9C((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_298AE7A9C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_298AE7A9C(a1, *a2);
    sub_298AE7A9C(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_298AE7AF4(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    sub_298AE7BD0(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

void sub_298AE7BD0(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4 != v2 + 5)
      {
        free(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_298AE7C28(uint64_t a1)
{
  sub_298AE7C84(a1 + 144);
  sub_298AE7A38(a1 + 120, *(a1 + 128));
  sub_298AE7A38(a1 + 96, *(a1 + 104));
  sub_298AE7CC0(a1 + 56);

  return sub_298AE7D6C(a1);
}

uint64_t sub_298AE7C84(uint64_t a1)
{
  sub_298AE7BD0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_298AE7CC0(uint64_t a1)
{
  sub_298AE7CF8((a1 + 24));
  MEMORY[0x29C2945E0](*a1, 8);
  return a1;
}

void **sub_298AE7CF8(void **a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = *(v1 + 2);
  if (v3)
  {
    v6 = v1;
    v7 = -32 * v3;
    v8 = &v2[4 * v3 - 4];
    do
    {
      v8 = sub_298AE798C(v8) - 32;
      v7 += 32;
    }

    while (v7);
    v1 = v6;
    v2 = *v6;
  }

  if (v2 != v1 + 2)
  {
    v4 = v1;
    free(v2);
    return v4;
  }

  return v1;
}

uint64_t sub_298AE7D6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v6 = *v2;
      v7 = v2[4];
      if (v7)
      {
        v8 = v2[5];
        v5 = v2[4];
        if (v8 != v7)
        {
          do
          {
            v10 = *--v8;
            v9 = v10;
            *v8 = 0;
            if (v10)
            {
              (*(*v9 + 8))(v9);
            }
          }

          while (v8 != v7);
          v5 = v2[4];
        }

        v2[5] = v7;
        operator delete(v5);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_298AE7E30(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_298ADDDA0();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void *sub_298AE7F48(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[5] ^ a1[4];
  v4 = v3;
  v5 = a1[1];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] <= 1uLL)
  {
    v7 = (v5 - 1) & v3;
    v8 = *(*a1 + 8 * v7);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_18:
    operator new();
  }

  v7 = v3;
  if (v3 >= v5)
  {
    v7 = v3 % v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_6:
  result = *v8;
  if (!*v8)
  {
    goto LABEL_18;
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = result[1];
      if (v13 == v4)
      {
        if (result[2] == a2 && result[3] == a3)
        {
          return result;
        }
      }

      else if ((v13 & (v5 - 1)) != v7)
      {
        goto LABEL_18;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
    v11 = result[1];
    if (v11 == v4)
    {
      break;
    }

    if (v11 >= v5)
    {
      v11 %= v5;
    }

    if (v11 != v7)
    {
      goto LABEL_18;
    }

LABEL_13:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != a2 || result[3] != a3)
  {
    goto LABEL_13;
  }

  return result;
}

void sub_298AE8270(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_298AE841C(void *a1)
{
  v2 = a1[3];
  if (v2 != a1 + 5)
  {
    free(v2);
  }

  MEMORY[0x29C2945E0](*a1, 8);
  return a1;
}

uint64_t sub_298AE8460(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_298AE84C0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_298AE85CC(a1, i + 2);
  }

  return a1;
}